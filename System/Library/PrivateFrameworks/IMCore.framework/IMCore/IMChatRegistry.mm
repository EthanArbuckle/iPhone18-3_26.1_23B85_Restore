@interface IMChatRegistry
+ (BOOL)hasInitializedChatFiltering;
+ (Class)messageClass;
+ (IMChatRegistry)sharedRegistry;
+ (IMChatRegistry)sharedRegistryIfAvailable;
+ (id)performanceLogHandle;
+ (void)setHasInitializedChatFiltering:(BOOL)a3;
- (BOOL)_hasChat:(id)a3 forService:(id)a4;
- (BOOL)_nicknameSharingEnabled;
- (BOOL)_shouldShareMeCardForAlwaysAskAudienceWithChat:(id)a3;
- (BOOL)_shouldShareMeCardForContactsOnlyAudienceWithChat:(id)a3;
- (BOOL)_shouldSwitchAccountAddingMessagesToChat:(id)a3 messageItems:(id)a4 removedGUIDs:(id)a5 messagesComingFromStorage:(BOOL)a6 chatProperties:(id)a7;
- (BOOL)_shouldUpdateChatPropertyByRecencyOnChat:(id)a3 incomingDictionary:(id)a4;
- (BOOL)_updateAutoDonationBehavior:(int64_t)a3 forChat:(id)a4 shouldPostNotification:(BOOL)a5;
- (BOOL)_updateChat:(id)a3 chatIdentifierForGroups:(id)a4 shouldPostNotification:(BOOL)a5;
- (IMContactStore)contactStore;
- (IMDaemonProtocol)remoteDaemon;
- (IMDaemonQueryController)daemonQueryController;
- (IMUnreadCountController)unreadCountController;
- (NSArray)allExistingChats;
- (NSArray)cachedChats;
- (TUConversationManager)conversationManager;
- (id)_activeTUConversations;
- (id)_bestChatForHandleIDs:(id)a3;
- (id)_cachedChatForChatDictionary:(id)a3 participants:(id)a4 participantHash:(id)a5;
- (id)_cachedChatWithDisplayName:(id)a3;
- (id)_cachedChatWithGUID:(id)a3;
- (id)_cachedChatWithGroupID:(id)a3;
- (id)_cachedChatWithHandle:(id)a3;
- (id)_cachedChatWithIdentifier:(id)a3;
- (id)_cachedChatWithIdentifier:(id)a3 style:(unsigned __int8)a4;
- (id)_cachedChatWithPersonID:(id)a3;
- (id)_cachedChatsWithDisplayName:(id)a3;
- (id)_cachedChatsWithMessage:(id)a3;
- (id)_cachedChatsWithMessageGUID:(id)a3;
- (id)_cachedGroupChatForGroupChatDictionary:(id)a3 participants:(id)a4 participantHash:(id)a5;
- (id)_cachedOneToOneChatForChatDictionary:(id)a3 participants:(id)a4 participantHash:(id)a5;
- (id)_chatForIdentifiers:(id)a3;
- (id)_chatPredicateForGUIDs:(id)a3;
- (id)_chatsMatchingHandles:(id)a3;
- (id)_chatsMatchingStatusSubscription:(id)a3;
- (id)_copyMergedChatsPairedArrayFromMergedChatsArray:(id)a3;
- (id)_earliestLastMessageDateFromChatDictionaries:(id)a3;
- (id)_eventForMessage:(id)a3;
- (id)_existingChatForHandleUsingPersonID:(id)a3;
- (id)_existingChatForTUConversation:(id)a3;
- (id)_existingChatFromSiblingsForHandle:(id)a3;
- (id)_existingChatWithHandle:(id)a3 fixChatHandle:(BOOL)a4;
- (id)_existingChatWithIdentifier:(id)a3 style:(unsigned __int8)a4 service:(id)a5;
- (id)_inPersonFromIMHandle:(id)a3 isMe:(BOOL)a4;
- (id)_inPersonHandleFromIMHandle:(id)a3 contact:(id)a4;
- (id)_inPersonNameForContact:(id)a3 imHandle:(id)a4;
- (id)_interactionForMessage:(id)a3 inChat:(id)a4;
- (id)_lastMessageDateForQueryFromChatDictionary:(id)a3;
- (id)_lastMessageItemForChatDictionary:(id)a3;
- (id)_mergedChatGUIDsForChatGUIDs:(id)a3;
- (id)_ownerHandleStringsFromSubscription:(id)a3;
- (id)_participantsForChatDictionary:(id)a3;
- (id)_performChatCacheLookupWithBlock:(id)a3 cacheMissQueryKey:(id)a4 queryBlock:(id)a5;
- (id)_performSingleChatCacheLookupWithBlock:(id)a3 cacheMissQueryKey:(id)a4 queryBlock:(id)a5;
- (id)_possiblyUnregisteredCachedChatForRoom:(id)a3 onAccount:(id)a4;
- (id)_possiblyUnregisteredCachedChatWithHandle:(id)a3;
- (id)_possiblyUnregisteredCachedChatWithHandles:(id)a3 style:(unsigned __int8)a4 groupID:(id)a5 displayName:(id)a6 joinedChatsOnly:(BOOL)a7;
- (id)_processLoadedChatDictionaries:(id)a3;
- (id)_sendMessageInteractionForMessage:(id)a3 inChat:(id)a4;
- (id)_sortedParticipantIDHashForParticipants:(id)a3 usesPersonCentricID:(BOOL)a4 fallbackToContactID:(BOOL)a5;
- (id)_unreadCountGUIDsForChat:(id)a3;
- (id)_unsendMessageInteractionForMessage:(id)a3 inChat:(id)a4;
- (id)_winningChatIdentifierForExistingChat:(id)a3 incomingDictionary:(id)a4;
- (id)_winningGroupIDForExistingChat:(id)a3 incomingDictionary:(id)a4;
- (id)_winningParticipantsForExistingChat:(id)a3 incomingDictionary:(id)a4;
- (id)activeCallForConversationUUID:(id)a3;
- (id)allGUIDsForChat:(id)a3;
- (id)allVisibleChatGUIDsForChats:(id)a3;
- (id)brandLogoDataFromChatIdentifier:(id)a3;
- (id)brandLogoUrlFromChatIdentifier:(id)a3;
- (id)cachedChatsWithIdentifier:(id)a3;
- (id)chatForFaceTimeConversation:(id)a3;
- (id)chatForFaceTimeRecipientIDs:(id)a3;
- (id)chatForIMHandles:(id)a3 chatName:(id)a4 lastAddressedHandle:(id)a5 lastAddressedSIMID:(id)a6;
- (id)chatForRoom:(id)a3 onAccount:(id)a4;
- (id)chatForURL:(id)a3 outMessageText:(id *)a4 outRecipientIDs:(id *)a5 outService:(id *)a6 outMessageGUID:(id *)a7 presentOverlay:(BOOL *)a8 outSIMID:(id *)a9;
- (id)chatWithHandle:(id)a3 lastAddressedHandle:(id)a4 lastAddressedSIMID:(id)a5 shouldForceCreate:(BOOL)a6;
- (id)chatsWithMyself;
- (id)existingChatForIMHandles:(id)a3 allowRetargeting:(BOOL)a4 groupID:(id)a5 displayName:(id)a6 ignoresDisplayName:(BOOL)a7 joinedChatsOnly:(BOOL)a8;
- (id)existingChatForRoom:(id)a3 onAccount:(id)a4 allowRetargeting:(BOOL)a5;
- (id)existingChatWithAddresses:(id)a3 allowAlternativeService:(BOOL)a4 bestHandles:(id *)a5;
- (id)existingChatWithChatIdentifier:(id)a3;
- (id)existingChatWithContacts:(id)a3 bestHandles:(id *)a4;
- (id)existingChatWithDeviceIndependentID:(id)a3;
- (id)existingChatWithDisplayName:(id)a3;
- (id)existingChatWithGUID:(id)a3;
- (id)existingChatWithGroupID:(id)a3;
- (id)existingChatWithHandle:(id)a3 allowAlternativeService:(BOOL)a4;
- (id)existingChatWithPersonID:(id)a3;
- (id)existingChatWithPinningIdentifier:(id)a3;
- (id)existingChatsWithGUIDs:(id)a3;
- (id)existingConversationForFaceTimeConversationUUID:(id)a3;
- (id)generateUnusedChatIdentifierForGroupChatWithAccount:(id)a3;
- (id)initAsListener:(BOOL)a3;
- (id)messagesURLWithChat:(id)a3;
- (id)messagesURLWithChat:(id)a3 orHandles:(id)a4 withMessageText:(id)a5;
- (id)messagesURLWithMessageGUID:(id)a3;
- (id)performanceLogHandle;
- (id)unblackholeChatWithHandles:(id)a3;
- (int64_t)_chat_cachedUnreadCount:(id)a3;
- (int64_t)_winningJoinStateForExistingChat:(id)a3 incomingDictionary:(id)a4;
- (unint64_t)_nicknameSharingAudience;
- (unint64_t)numberOfCachedChats;
- (unint64_t)numberOfExistingChats;
- (unint64_t)unreadCount;
- (void)__handleChatReconstructions:(id)a3;
- (void)_addChat:(id)a3 participantSet:(id)a4;
- (void)_asyncSetChatBotUserActivityForChat:(id)a3 message:(id)a4;
- (void)_automation_markAsReadQuery:(id)a3 finishedWithResult:(BOOL)a4;
- (void)_batchFetchRemainingContactsOnLaunch;
- (void)_chat:(id)a3 appendTranslation:(id)a4 toMessageItem:(id)a5 partIndex:(int64_t)a6;
- (void)_chat:(id)a3 cancelScheduledMessageWithGUID:(id)a4 destinations:(id)a5 cancelType:(unint64_t)a6;
- (void)_chat:(id)a3 downloadTranslationAssetsForLanguageCodes:(id)a4 messageItemsToTranslateLocally:(id)a5;
- (void)_chat:(id)a3 editScheduledMessageItem:(id)a4 previousMessageItem:(id)a5 partIndex:(int64_t)a6 editType:(unint64_t)a7;
- (void)_chat:(id)a3 editScheduledMessageItem:(id)a4 previousMessageItem:(id)a5 retractingPartIndexes:(id)a6;
- (void)_chat:(id)a3 inviteParticipants:(id)a4 reason:(id)a5;
- (void)_chat:(id)a3 joinWithProperties:(id)a4;
- (void)_chat:(id)a3 partiallyUpdated:(id)a4;
- (void)_chat:(id)a3 removeParticipants:(id)a4 reason:(id)a5;
- (void)_chat:(id)a3 repositionSticker:(id)a4;
- (void)_chat:(id)a3 resendEditedMessageItem:(id)a4 partIndex:(int64_t)a5 withBackwardCompatabilityText:(id)a6;
- (void)_chat:(id)a3 retryGroupPhotoUpload:(id)a4;
- (void)_chat:(id)a3 retryTranscriptBackgroundUpload:(id)a4 transferID:(id)a5;
- (void)_chat:(id)a3 sendEditedMessageItem:(id)a4 previousMessageItem:(id)a5 partIndex:(int64_t)a6 editType:(unint64_t)a7 backwardCompatabilityText:(id)a8;
- (void)_chat:(id)a3 sendGroupPhotoUpdate:(id)a4;
- (void)_chat:(id)a3 sendHQAttachmentsForMessage:(id)a4;
- (void)_chat:(id)a3 sendMessage:(id)a4;
- (void)_chat:(id)a3 sendMessage:(id)a4 withAccount:(id)a5;
- (void)_chat:(id)a3 sendNotifyRecipientCommandForMessage:(id)a4;
- (void)_chat:(id)a3 sendPlayedReceiptForMessage:(id)a4;
- (void)_chat:(id)a3 sendReadReceiptForMessages:(id)a4;
- (void)_chat:(id)a3 sendSavedReceiptForMessage:(id)a4;
- (void)_chat:(id)a3 sendSyndicationAction:(id)a4;
- (void)_chat:(id)a3 sendUpdatedCollaborationMetadata:(id)a4 forMessageGUID:(id)a5;
- (void)_chat:(id)a3 setPlayedExpressiveSendForMessage:(id)a4;
- (void)_chat:(id)a3 setProperties:(id)a4 ofParticipant:(id)a5;
- (void)_chat:(id)a3 setTranscriptBackgroundAndSendToChat:(id)a4 transferID:(id)a5;
- (void)_chat:(id)a3 setValue:(id)a4 forChatProperty:(id)a5;
- (void)_chat:(id)a3 updateBrandLogo:(id)a4;
- (void)_chat:(id)a3 updateDisplayName:(id)a4;
- (void)_chat:(id)a3 updateIsFiltered:(int64_t)a4 synchronously:(BOOL)a5;
- (void)_chat:(id)a3 updateLastAddressedHandle:(id)a4;
- (void)_chat:(id)a3 updateLastAddressedSIMID:(id)a4;
- (void)_chatDidRecoverFromJunk:(id)a3;
- (void)_chatLoadedWithChatIdentifier:(id)a3 chats:(id)a4;
- (void)_chat_acceptChat:(id)a3;
- (void)_chat_clearCachedUnreadCount:(id)a3;
- (void)_chat_clearHistory:(id)a3 beforeGUID:(id)a4 afterGUID:(id)a5 queryID:(id)a6;
- (void)_chat_declineInvitation:(id)a3;
- (void)_chat_downloadPurgedAttachmentsForChat:(id)a3;
- (void)_chat_fetchHistorySummary:(id)a3 dateInterval:(id)a4 synchronous:(BOOL)a5 queryID:(id)a6 completion:(id)a7;
- (void)_chat_fetchIncomingPendingMessagesOverSatellite:(id)a3;
- (void)_chat_fetchOldestMessageDateForChat:(id)a3 synchronous:(BOOL)a4 queryID:(id)a5 completion:(id)a6;
- (void)_chat_isDownloadingPurgedAssetsForChat:(id)a3 queryID:(id)a4 loadImmediately:(BOOL)a5;
- (void)_chat_leave:(id)a3;
- (void)_chat_loadAttachments:(id)a3 queryID:(id)a4 loadImmediately:(BOOL)a5;
- (void)_chat_loadFrequentReplies:(id)a3 limit:(unint64_t)a4 queryID:(id)a5 loadImmediately:(BOOL)a6;
- (void)_chat_loadHistory:(id)a3 limit:(unint64_t)a4 beforeGUID:(id)a5 afterGUID:(id)a6 threadIdentifier:(id)a7 queryID:(id)a8 synchronous:(BOOL)a9 completion:(id)a10;
- (void)_chat_loadPagedHistory:(id)a3 numberOfMessagesBefore:(unint64_t)a4 numberOfMessagesAfter:(unint64_t)a5 messageGUID:(id)a6 threadIdentifier:(id)a7 queryID:(id)a8 synchronous:(BOOL)a9 completion:(id)a10;
- (void)_chat_loadUncachedAttachmentsCount:(id)a3 queryID:(id)a4 loadImmediately:(BOOL)a5;
- (void)_chat_loadUnreadMessages:(id)a3 limit:(unint64_t)a4 fallbackGUID:(id)a5 queryID:(id)a6 loadImmediately:(BOOL)a7;
- (void)_chat_markLastMessageAsUnread:(id)a3;
- (void)_chat_markMessageAsUnread:(id)a3 message:(id)a4;
- (void)_chat_markRepliedForMessageGUID:(id)a3;
- (void)_chat_recoverFromJunk:(id)a3;
- (void)_chat_remove:(id)a3;
- (void)_chat_sendReadReceiptForAllMessages:(id)a3;
- (void)_chat_storeItem:(id)a3 inChat:(id)a4;
- (void)_checkIfItemIsCorrupt:(id)a3;
- (void)_checkLimitAndSetMessagesToKeepLoadedIfNeeded:(unint64_t)a3 chat:(id)a4;
- (void)_clearExistingTypingIndicatorsWithMessageGUID:(id)a3 excludingChatWithIdentifier:(id)a4;
- (void)_clearMapsUsingChat:(id)a3 guids:(id)a4;
- (void)_completeChatLoadQueryWithChat:(id)a3 queryID:(id)a4;
- (void)_daemonBeganDeferredSetup;
- (void)_daemonCompletedDeferredSetup;
- (void)_daemonMovedChatsToRecentlyDeleted:(id)a3 deletionDate:(id)a4;
- (void)_daemonMovedMessagesWithGUIDsToRecentlyDeleted:(id)a3 chatGUID:(id)a4 deleteDate:(id)a5;
- (void)_enumerateChatGUIDPermutationsForChatIdentifier:(id)a3 includingInstantMessageStyle:(BOOL)a4 includingGroupStyle:(BOOL)a5 includingRoomStyle:(BOOL)a6 usingBlock:(id)a7;
- (void)_fetchInitialBatchOfContactsOnLaunch;
- (void)_handleAddressBookChange:(id)a3;
- (void)_handleAvailabilityChangedNotification:(id)a3;
- (void)_handleAvailabilityInvitationReceivedNotification:(id)a3;
- (void)_handleAvailabilityStateChangedNotification:(id)a3;
- (void)_handleCachingAliasToCNIDMap:(id)a3;
- (void)_handleChatBotPropertiesDidChangeNotification:(id)a3;
- (void)_handleChatParticipantsDidChange:(id)a3;
- (void)_handleChatReconstructions:(id)a3;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)a3;
- (void)_handleMergedChatReconstructions:(id)a3;
- (void)_handleOffGridChangedNotification:(id)a3;
- (void)_handleOffGridInvitationReceivedNotification:(id)a3;
- (void)_handleOffGridStateChangedNotification:(id)a3;
- (void)_handleStatusChangedForSubscription:(id)a3;
- (void)_handleStatusInvitationReceivedForSubscription:(id)a3;
- (void)_handleStatusStateChangedForSubscription:(id)a3;
- (void)_handleTranslationEnabledChangedNotification:(id)a3;
- (void)_handleTranslationLanguageStatusChangedNotification:(id)a3;
- (void)_handleTranslationSupportChangedNotification:(id)a3;
- (void)_loadAllSiblingChatsForGroupChat:(id)a3 waitForReply:(BOOL)a4 completionHandler:(id)a5;
- (void)_loadAllSiblingChatsForHandlesAssociatedWithOneToOneChat:(id)a3 waitForReply:(BOOL)a4 completionHandler:(id)a5;
- (void)_loadChatsFilteredUsingPredicate:(id)a3 lastMessageOlderThan:(id)a4 limit:(unint64_t)a5 waitForReply:(BOOL)a6 completionHandler:(id)a7;
- (void)_loadSiblingsForChatIfNeeded:(id)a3;
- (void)_loadUnreadChatsWithLastMessageOlderThan:(id)a3 waitForReply:(BOOL)a4 predicate:(id)a5 limit:(unint64_t)a6 completionHandler:(id)a7;
- (void)_markHasHadSuccessfulQueryForChat:(id)a3;
- (void)_noteChatDealloc:(id)a3;
- (void)_noteChatInit:(id)a3;
- (void)_postMultiWayStateChangedNotification:(id)a3;
- (void)_previouslyBlackholedChatLoadedWithHandleIDs:(id)a3 chat:(id)a4;
- (void)_processUnreadCountFullReplacement:(id)a3;
- (void)_rebuildUnreadCountController;
- (void)_recalculateServiceNamesForChatIdentifierSearch;
- (void)_refetchLocalTranscriptBackgroundAssetIfNecessaryForChat:(id)a3;
- (void)_registerChatDictionary:(id)a3 forChat:(id)a4 isIncoming:(BOOL)a5 newGUID:(id)a6 shouldPostNotification:(BOOL)a7;
- (void)_removeFromGroupParticipantToChatsMap:(id)a3;
- (void)_resetChatRegistry;
- (void)_setChatHasCommunicatedOveriMessage:(id)a3;
- (void)_setMeCardSharingOnMessage:(id)a3 forChat:(id)a4;
- (void)_setReplyToGuidOnMessage:(id)a3 forChat:(id)a4;
- (void)_setSimulatedChats:(id)a3;
- (void)_trackUsageForMessage:(id)a3;
- (void)_unreadCountControllerUpdated:(id)a3;
- (void)_unregisterChat:(id)a3 deleted:(BOOL)a4 didClearUnreadCount:(BOOL)a5;
- (void)_updateBrandLogoGuid:(id)a3 chatIdentifier:(id)a4;
- (void)_updateChat:(id)a3 groupID:(id)a4 shouldPostNotification:(BOOL)a5;
- (void)_updateChat:(id)a3 originalGroupID:(id)a4 shouldPostNotification:(BOOL)a5;
- (void)_updateChat:(id)a3 updateIsFiltered:(int64_t)a4;
- (void)_updateDomainIdentifiersForChat:(id)a3 incomingDictionary:(id)a4 shouldPostNotification:(BOOL)a5;
- (void)_updateHasCancellableScheduledMessage:(id)a3 shouldPostNotification:(BOOL)a4;
- (void)_updatePendingIncomingSatelliteMessageCount:(id)a3 shouldPostNotification:(BOOL)a4;
- (void)_updatePersonCentricIDForChat:(id)a3;
- (void)_updatePersonCentricIDToChatMapForChat:(id)a3 toNewPersonCentricID:(id)a4;
- (void)_updateReplySuggestions:(id)a3 withInfo:(id)a4;
- (void)_updateTranscriptBackgroundForChat:(id)a3 shouldPostNotification:(BOOL)a4;
- (void)_updateUnreadCountForChat:(id)a3 shouldPostNotification:(BOOL)a4;
- (void)_validateChatQueryResults:(id)a3 matchCurrentCacheResults:(id)a4;
- (void)_verifyChatMergeWithChat:(id)a3 dictionary:(id)a4;
- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 groupID:(id)a7 chatPersonCentricID:(id)a8 messagesReceived:(id)a9 removed:(id)a10 messagesComingFromStorage:(BOOL)a11;
- (void)account:(id)a3 handleID:(id)a4 updatedLastReceivedOnGridMessageDate:(id)a5;
- (void)attachmentQuery:(id)a3 chatID:(id)a4 services:(id)a5 finishedWithResult:(id)a6;
- (void)capabilitiesUpdatedForHandle:(id)a3;
- (void)chat:(id)a3 brandLogoUpdated:(id)a4 transferGuid:(id)a5;
- (void)chat:(id)a3 chatPersonCentricID:(id)a4 displayNameUpdated:(id)a5 sender:(id)a6;
- (void)chat:(id)a3 engramIDUpdated:(id)a4;
- (void)chat:(id)a3 isFilteredUpdated:(int64_t)a4;
- (void)chat:(id)a3 lastAddressedHandleUpdated:(id)a4;
- (void)chat:(id)a3 lastAddressedHandleUpdated:(id)a4 lastAddressedSIMIDUpdated:(id)a5;
- (void)chat:(id)a3 lastAddressedSIMIDUpdated:(id)a4;
- (void)chat:(id)a3 lastMessageTimeStampOnLoadUpdated:(double)a4;
- (void)chat:(id)a3 propertiesUpdated:(id)a4;
- (void)chat:(id)a3 uncachedAttachmentCountUpdated:(id)a4;
- (void)chat:(id)a3 updated:(id)a4;
- (void)chatLoadedWithChatIdentifier:(id)a3 chats:(id)a4;
- (void)chatsNeedRemerging:(id)a3 groupedChats:(id)a4;
- (void)clearHistoryAndReloadLastMessageForChatsWithGUIDs:(id)a3;
- (void)clearHistoryAndReloadLastMessageForMergedFilteredChats;
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 activitySessionsChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 remoteMembersChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)dealloc;
- (void)downloadedPurgedAssetBatchForChatIDs:(id)a3 completedTransferGUIDs:(id)a4;
- (void)engroupParticipantsUpdatedForChat:(id)a3;
- (void)enumerateAllChatsAndAttachmentSizesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)finishedDownloadingPurgedAssetsForChatIDs:(id)a3;
- (void)forcedReloadingChatRegistryWithQueryID:(id)a3;
- (void)frequentRepliesQuery:(id)a3 chatID:(id)a4 services:(id)a5 finishedWithResult:(id)a6 limit:(int64_t)a7;
- (void)historicalMessageGUIDsDeleted:(id)a3 chatGUIDs:(id)a4 queryID:(id)a5;
- (void)historyQuery:(id)a3 chatID:(id)a4 services:(id)a5 finishedWithResult:(id)a6 limit:(int64_t)a7;
- (void)lastFailedMessageDateChanged:(int64_t)a3;
- (void)leftChat:(id)a3;
- (void)loadedChats:(id)a3 queryID:(id)a4;
- (void)loadedRecoverableMessagesMetadata:(id)a3 queryID:(id)a4;
- (void)markAsSpamQuery:(id)a3 chatID:(id)a4 services:(id)a5 finishedWithResult:(id)a6;
- (void)markChatGUIDsAsReviewed:(id)a3;
- (void)markChatsAsReadFilteredUsingPredicate:(id)a3;
- (void)markChatsAsReviewed:(id)a3;
- (void)movedMessageGUIDsToRecentlyDeleted:(id)a3 forChatWithGUID:(id)a4 queryID:(id)a5 deletionDate:(id)a6;
- (void)movedMessagesToRecentlyDeletedForChatsWithGUIDs:(id)a3 queryID:(id)a4 deletionDate:(id)a5;
- (void)pagedHistoryQuery:(id)a3 chatID:(id)a4 services:(id)a5 numberOfMessagesBefore:(int64_t)a6 numberOfMessagesAfter:(int64_t)a7 finishedWithResult:(id)a8 hasMessagesBefore:(BOOL)hasMoreMessagesToLoad hasMessagesAfter:(BOOL)hasMoreRecentMessagesToLoad;
- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)a3;
- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)a3 queryID:(id)a4;
- (void)permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:(id)a3 deletedChatGUIDs:(id)a4;
- (void)previouslyBlackholedChatLoadedWithChatIdentifier:(id)a3 chats:(id)a4;
- (void)previouslyBlackholedChatLoadedWithHandleIDs:(id)a3 chat:(id)a4;
- (void)recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs:(id)a3;
- (void)recoveredMessagesWithChatGUIDs:(id)a3 queryID:(id)a4;
- (void)serviceSwitchRequestReceivedForChatWithIdentifier:(id)a3;
- (void)setUpInitialCallState;
- (void)setUserActivityForChat:(id)a3 message:(id)a4 orHandles:(id)a5;
- (void)setupComplete:(BOOL)a3 info:(id)a4;
- (void)uncachedAttachmentCountQuery:(id)a3 chatID:(id)a4 services:(id)a5 finishedWithResult:(id)a6;
- (void)unreadCountChanged:(int64_t)a3;
- (void)unreadCountReportsUpdated:(id)a3;
- (void)unregisterChat:(id)a3;
- (void)unregisterChatWithGUID:(id)a3;
- (void)updateBrandLogo:(id)a3 transferGuid:(id)a4 chatIdentifier:(id)a5;
- (void)updateChatDictionaryArray:(id)a3 createdChat:(id)a4 joinstate:(int64_t)a5 setHasCommunicatedOveriMessage:(BOOL *)a6;
- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)a3;
- (void)updateChatsUsingMessageGUIDsWithPriority:(id)a3;
- (void)updateEarliestMessageDateForChats:(id)a3 completion:(id)a4;
- (void)updatedPriorityForChatsWithGUIDsAndProperties:(id)a3 chatsAndMessageGUIDs:(id)a4;
- (void)updatedSummariesForChatsWithGUIDsAndProperties:(id)a3;
- (void)verifyFilteringForAllChats;
@end

@implementation IMChatRegistry

+ (IMChatRegistry)sharedRegistry
{
  if (qword_1ED767798 != -1)
  {
    sub_1A8241A08();
  }

  v3 = qword_1ED767790;

  return v3;
}

- (IMUnreadCountController)unreadCountController
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v4, v5, v6);

  if (isUnreadCountRefactorEnabled && !self->_unreadCountController)
  {
    v8 = objc_alloc(MEMORY[0x1E69A8330]);
    v9 = objc_alloc_init(MEMORY[0x1E69A8338]);
    v11 = objc_msgSend_initWithFilteringController_(v8, v10, v9);
    unreadCountController = self->_unreadCountController;
    self->_unreadCountController = v11;

    v15 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v13, v14);
    objc_msgSend_addObserver_selector_name_object_(v15, v16, self, sel__unreadCountControllerUpdated_, *MEMORY[0x1E69A7DD0], self->_unreadCountController);
  }

  v17 = self->_unreadCountController;

  return v17;
}

- (void)_daemonBeganDeferredSetup
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    isFirstLoad = objc_msgSend_isFirstLoad(self, v4, v5);
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "Daemon began deferred setup (firstLoad is: %{BOOL}d)", buf, 8u);
  }

  objc_msgSend__recalculateServiceNamesForChatIdentifierSearch(self, v6, v7);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83C3D1C;
  aBlock[3] = &unk_1E780FCB0;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  if (IMIsRunningInMessagesUIProcess())
  {
    v11 = objc_msgSend_networkMonitor(self, v9, v10);

    if (!v11)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_recalculateServiceNamesForChatIdentifierSearch
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_servicesWithCapabilityName_(IMServiceImpl, a2, *MEMORY[0x1E69A79B0]);
  v5 = objc_msgSend_sortedArrayUsingComparator_(v3, v4, &unk_1F1B6F3E0);
  v7 = objc_msgSend_arrayByApplyingSelector_(v5, v6, sel_internalName);
  objc_msgSend_setServiceNamesForChatIdentifierSearch_(self, v8, v7);

  v9 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_msgSend_serviceNamesForChatIdentifierSearch(self, v10, v11);
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "Ranked service names for chat resolution: %{public}@", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NSArray)cachedChats
{
  v4 = objc_msgSend_simulatedChats(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v9 = objc_msgSend_cachedChatsInThreadNameMap(self, v5, v6);
    v8 = objc_msgSend_copy(v9, v10, v11);
  }

  return v8;
}

- (void)_daemonCompletedDeferredSetup
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = objc_msgSend_isFirstLoad(self, v4, v5);
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "Daemon completed deferred setup (firstLoad was: %{BOOL}d)", v8, 8u);
  }

  objc_msgSend_setFirstLoad_(self, v6, 0);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_resetChatRegistry
{
  objc_msgSend_removeAllObjects(self->_chatGUIDToCurrentThreadMap, a2, v2);
  objc_msgSend_removeAllObjects(self->_chatGUIDToInfoMap, v4, v5);
  objc_msgSend_removeAllObjects(self->_chatGUIDToChatMap, v6, v7);
  objc_msgSend_removeAllObjects(self->_chatGUIDToiMessageSentOrReceivedMap, v8, v9);
  objc_msgSend_removeAllObjects(self->_allChatsInProcess, v10, v11);
  objc_msgSend_removeAllObjects(self->_chatPersonIDToChatMap, v12, v13);
  objc_msgSend_removeAllObjects(self->_cachedChatsInThreadNameMap, v14, v15);
  objc_msgSend_removeAllObjects(self->_threadNameToChatMap, v16, v17);
  objc_msgSend_removeAllObjects(self->_groupIDToChatMap, v18, v19);

  objc_msgSend__resetChatReconstructionGroupMaps(self, v20, v21);
}

- (IMContactStore)contactStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A8259C00;
  v10 = sub_1A825AF2C;
  v11 = 0;
  contactStoreQueue = self->_contactStoreQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A825230C;
  v5[3] = &unk_1E78133A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(contactStoreQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_fetchInitialBatchOfContactsOnLaunch
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "ChatRegistry: Fetching the initial batch of Contacts", v20, 2u);
    }
  }

  v6 = objc_msgSend_sharedInstance(IMHandleRegistrar, v3, v4);
  v9 = objc_msgSend_getIDsForInitialBatch(v6, v7, v8);

  v12 = objc_msgSend_count(v9, v10, v11);
  if (v12)
  {
    v15 = v12 < 0x1A;
    v16 = objc_msgSend_contactStore(self, v13, v14);
    objc_msgSend_fetchCNContactsForHandlesWithIDs_isFinalBatch_(v16, v17, v9, v15);
  }

  else
  {
    v16 = objc_msgSend_contactStore(self, v13, v14);
    objc_msgSend_setBatchFetchingCompleted(v16, v18, v19);
  }
}

- (void)_batchFetchRemainingContactsOnLaunch
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83C14FC;
  aBlock[3] = &unk_1E780FCB0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = dispatch_time(0, 2000000000);
  v4 = dispatch_get_global_queue(25, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83C15EC;
  v6[3] = &unk_1E780FE90;
  v7 = v2;
  v5 = v2;
  dispatch_after(v3, v4, v6);
}

- (void)setUpInitialCallState
{
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v3 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "Setting up initial state of calls", buf, 2u);
    }

    v6 = objc_msgSend_conversationManager(self, v4, v5);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A8255B88;
    v8[3] = &unk_1E780FCB0;
    v8[4] = self;
    objc_msgSend_registerWithCompletionHandler_(v6, v7, v8);
  }
}

- (IMDaemonQueryController)daemonQueryController
{
  v3 = objc_msgSend_daemonController(self, a2, v2);
  v6 = objc_msgSend_queryController(v3, v4, v5);

  return v6;
}

+ (Class)messageClass
{
  v2 = qword_1ED7676B8;
  if (!qword_1ED7676B8)
  {
    v2 = objc_opt_class();
    qword_1ED7676B8 = v2;
  }

  return v2;
}

+ (BOOL)hasInitializedChatFiltering
{
  if (qword_1EB2E9FD0 != -1)
  {
    sub_1A84DF1A4();
  }

  return byte_1EB2FEFF0;
}

+ (void)setHasInitializedChatFiltering:(BOOL)a3
{
  if (byte_1EB2FEFF0 != a3)
  {
    byte_1EB2FEFF0 = a3;
    IMSetDomainBoolForKey();
  }
}

- (void)verifyFilteringForAllChats
{
  if ((IMIsRunningInFullClient() & 1) != 0 || IMIsRunningInUnitTesting())
  {
    v5 = objc_msgSend_cachedChats(self, v3, v4);
    objc_msgSend_enumerateObjectsUsingBlock_(v5, v6, &unk_1F1B6DD00);

    v7 = objc_opt_class();

    MEMORY[0x1EEE66B58](v7, sel_setHasInitializedChatFiltering_, 1);
  }
}

- (TUConversationManager)conversationManager
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], a2, v2);
  v6 = objc_msgSend_conversationManager(v3, v4, v5);

  return v6;
}

- (id)existingConversationForFaceTimeConversationUUID:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Existing TUConversation with UUID: %@", buf, 0xCu);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = objc_msgSend_conversationManager(self, v5, v6);
  v11 = objc_msgSend_activeConversations(v8, v9, v10);

  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v32, v36, 16);
  if (v13)
  {
    v15 = *v33;
    *&v14 = 138412290;
    v31 = v14;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v23 = objc_msgSend_UUID(v17, v21, v22);
            *buf = v31;
            v38 = v23;
            _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Active TUConversation UUID: %@", buf, 0xCu);
          }
        }

        v24 = objc_msgSend_UUID(v17, v18, v19, v31);
        isEqual = objc_msgSend_isEqual_(v24, v25, v4);

        if (isEqual)
        {
          v28 = v17;
          goto LABEL_19;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v27, &v32, v36, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0;
LABEL_19:

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)chatForFaceTimeConversation:(id)a3
{
  v4 = objc_msgSend_remoteMemberHandleStrings(a3, a2, a3);
  v6 = objc_msgSend_chatForFaceTimeRecipientIDs_(self, v5, v4);

  return v6;
}

- (id)chatForFaceTimeRecipientIDs:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_sharedInstance(IMAccountController, v4, v5);
  v9 = objc_msgSend_activeIMessageAccount(v6, v7, v8);

  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v3;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v32, v36, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v20 = [IMHandle alloc];
        v22 = objc_msgSend_initWithAccount_ID_alreadyCanonical_(v20, v21, v9, v19, 0, v32);
        objc_msgSend_addObject_(v12, v23, v22);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v24, &v32, v36, 16);
    }

    while (v16);
  }

  v27 = objc_msgSend_sharedRegistry(IMChatRegistry, v25, v26);
  v29 = objc_msgSend_chatWithHandles_(v27, v28, v12);

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)allGUIDsForChat:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_msgSend_chatGUIDToChatMap(self, v6, v7);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A82B9EB8;
    v19[3] = &unk_1E7810F78;
    v9 = v4;
    v20 = v9;
    v21 = v5;
    v10 = v5;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v11, v19);

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A82B9ED4;
    v17[3] = &unk_1E78104A0;
    v18 = v9;
    objc_msgSend_sortUsingComparator_(v10, v12, v17);
    v15 = objc_msgSend_copy(v10, v13, v14);
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (id)existingChatWithGUID:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    if (objc_msgSend___im_isWellFormedChatGUID(v4, v7, v8))
    {
      v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
      isOneChatEnabled = objc_msgSend_isOneChatEnabled(v11, v12, v13);

      if (isOneChatEnabled)
      {
        v15 = IMAnyServiceGUIDFromLegacyChatGUID();

        v4 = v15;
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1A82BA190;
      v24[3] = &unk_1E7810FA0;
      v24[4] = self;
      v25 = v4;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1A82BA19C;
      v22[3] = &unk_1E7810FF0;
      v22[4] = self;
      v4 = v25;
      v23 = v4;
      v17 = objc_msgSend__performSingleChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v16, v24, @"ChatCache-LoadWithGUID", v22);
    }

    else
    {
      v18 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v4;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Existing chat with GUID given malformed guid (%@), only checking cache", buf, 0xCu);
      }

      v17 = objc_msgSend__cachedChatWithGUID_(self, v19, v4);
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)a3
{
  v4 = a3;
  if (objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], v5, v6))
  {
    v7 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting to update messages with summaries.", v15, 2u);
    }

    v10 = objc_msgSend_daemonController(self, v8, v9);
    v13 = objc_msgSend_remoteDaemon(v10, v11, v12);
    objc_msgSend_updateChatsUsingMessageGUIDsAndSummaries_(v13, v14, v4);
  }
}

- (void)updateChatsUsingMessageGUIDsWithPriority:(id)a3
{
  v4 = a3;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting to update messages with priority.", v13, 2u);
  }

  v8 = objc_msgSend_daemonController(self, v6, v7);
  v11 = objc_msgSend_remoteDaemon(v8, v9, v10);
  objc_msgSend_updateChatsUsingMessageGUIDsWithPriority_(v11, v12, v4);
}

- (void)markChatGUIDsAsReviewed:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134217984;
    v23 = objc_msgSend_count(v4, v6, v7);
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting to mark %ld chat GUIDs as reviewed.", &v22, 0xCu);
  }

  if (objc_msgSend_count(v4, v8, v9))
  {
    v12 = objc_msgSend_unreadCountController(self, v10, v11);
    objc_msgSend_updatePendingReviewForChatsWithGUIDs_pendingReview_(v12, v13, v4, 0);

    v16 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
    v19 = objc_msgSend_remoteDaemon(v16, v17, v18);
    objc_msgSend_markChatGUIDsAsReviewedAndReflectToPeers_(v19, v20, v4);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)markChatsAsReviewed:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v30 = objc_msgSend_count(v4, v6, v7);
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Marking %ld chats as reviewed.", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v4;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v28, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = objc_msgSend__guids(*(*(&v24 + 1) + 8 * v16), v12, v13, v24);
        v20 = objc_msgSend_allObjects(v17, v18, v19);
        objc_msgSend_addObjectsFromArray_(v8, v21, v20);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v24, v28, 16);
    }

    while (v14);
  }

  objc_msgSend_markChatGUIDsAsReviewed_(self, v22, v8);
  v23 = *MEMORY[0x1E69E9840];
}

- (id)existingChatsWithGUIDs:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A82BA7D0;
    v13[3] = &unk_1E7811018;
    v14 = v4;
    v15 = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A82BA9A0;
    v10[3] = &unk_1E7811068;
    v11 = v14;
    v12 = self;
    v8 = objc_msgSend__performChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v7, v13, @"ChatCache-LoadWithGUID", v10);
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)_chatPredicateForGUIDs:(id)a3
{
  v3 = objc_msgSend___imArrayByApplyingBlock_(a3, a2, &unk_1F1B6E180);
  v5 = objc_msgSend_orPredicateWithSubpredicates_(MEMORY[0x1E696AB28], v4, v3);

  return v5;
}

- (id)existingChatWithHandle:(id)a3 allowAlternativeService:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v11 = objc_msgSend_ID(v6, v7, v8);
  if (v4)
  {
    v12 = objc_msgSend_existingChatWithChatIdentifier_(self, v9, v11);
  }

  else
  {
    v13 = objc_msgSend_service(v6, v9, v10);
    v16 = objc_msgSend_internalName(v13, v14, v15);
    v12 = objc_msgSend__existingChatWithIdentifier_style_service_(self, v17, v11, 45, v16);
  }

  if (v12 && objc_msgSend_chatStyle(v12, v18, v19) != 45)
  {

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v25 = 138412802;
        v26 = v6;
        v27 = 1024;
        v28 = objc_msgSend_chatStyle(0, v21, v22);
        v29 = 2112;
        v30 = 0;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Looked up existing chat for handle %@ but got chat style %c, returning nil chat (found %@)", &v25, 0x1Cu);
      }
    }

    v12 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)existingChatWithChatIdentifier:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6) && (objc_msgSend_isEqualToString_(v4, v7, @"-1") & 1) == 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A82BB314;
    v14[3] = &unk_1E7810FA0;
    v14[4] = self;
    v15 = v4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A82BB3DC;
    v11[3] = &unk_1E7810FF0;
    v12 = v15;
    v13 = self;
    v8 = objc_msgSend__performSingleChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v9, v14, @"ChatCache-LoadWithIdentifier", v11);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)existingChatWithGroupID:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A82BB668;
    v12[3] = &unk_1E7810FA0;
    v12[4] = self;
    v13 = v4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A82BB674;
    v10[3] = &unk_1E7810FF0;
    v10[4] = self;
    v11 = v13;
    v8 = objc_msgSend__performSingleChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v7, v12, @"ChatCache-LoadWithGroupID", v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)existingChatWithDeviceIndependentID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_existingChatWithGroupID_(self, v5, v4);
  if (!v7)
  {
    v7 = objc_msgSend_existingChatWithChatIdentifier_(self, v6, v4);
  }

  return v7;
}

- (id)existingChatWithDisplayName:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A82BB8E0;
  v12[3] = &unk_1E7810FA0;
  v12[4] = self;
  v13 = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82BB8EC;
  v9[3] = &unk_1E7810FF0;
  v10 = v13;
  v11 = self;
  v5 = v13;
  v7 = objc_msgSend__performSingleChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v6, v12, @"ChatCache-LoadWithGroupID", v9);

  return v7;
}

- (id)existingChatWithPinningIdentifier:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_1A8259B10;
    v54 = sub_1A825AEB4;
    v44 = v4;
    v55 = objc_msgSend_existingChatWithDeviceIndependentID_(self, v7, v4);
    if (!v51[5])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v10 = objc_msgSend_cachedChats(self, v8, v9);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v46, v58, 16);
      if (v14)
      {
        v15 = *v47;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v46 + 1) + 8 * i);
            if (objc_msgSend_chatStyle(v17, v12, v13) != 45)
            {
              v18 = objc_msgSend_displayName(v17, v12, v13);
              if (objc_msgSend_length(v18, v19, v20))
              {
              }

              else
              {
                v23 = objc_msgSend_participants(v17, v21, v22);
                v25 = objc_msgSend__sortedParticipantIDHashForParticipants_usesPersonCentricID_(self, v24, v23, 0);
                isEqualToString = objc_msgSend_isEqualToString_(v25, v26, v44);

                if (isEqualToString)
                {
                  objc_storeStrong(v51 + 5, v17);
                  goto LABEL_17;
                }
              }
            }
          }

          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v46, v58, 16);
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    v29 = objc_msgSend_daemonController(self, v8, v9);
    v32 = objc_msgSend_processCapabilities(v29, v30, v31);

    v33 = v51[5];
    if (!v33 && (v32 & 4) != 0)
    {
      v34 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v44;
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_DEFAULT, "Cache miss for existingChatWithPinningIdentifier %@", buf, 0xCu);
      }

      v37 = objc_msgSend_daemonController(self, v35, v36);
      v40 = objc_msgSend_synchronousRemoteDaemon(v37, v38, v39);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = sub_1A82BBD70;
      v45[3] = &unk_1E7811120;
      v45[4] = self;
      v45[5] = &v50;
      objc_msgSend_loadChatsWithPinningIdentifier_reply_(v40, v41, v44, v45);

      v33 = v51[5];
    }

    v28 = v33;
    _Block_object_dispose(&v50, 8);

    v4 = v44;
  }

  else
  {
    v28 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)existingChatWithPersonID:(id)a3
{
  v4 = a3;
  if (IMSharedHelperPersonCentricMergingEnabled() && objc_msgSend_length(v4, v5, v6))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A82BBF0C;
    v13[3] = &unk_1E7810FA0;
    v13[4] = self;
    v14 = v4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A82BBF18;
    v10[3] = &unk_1E7810FF0;
    v11 = v14;
    v12 = self;
    v8 = objc_msgSend__performSingleChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v7, v13, @"ChatCache-LoadWithGroupID", v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)existingChatWithAddresses:(id)a3 allowAlternativeService:(BOOL)a4 bestHandles:(id *)a5
{
  v6 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v11 = v8;
  if (v6)
  {
    v42 = a5;
    v12 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v11;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "allowAlternativeService is YES, attempting to find better handles for addresses: %@", buf, 0xCu);
    }

    v13 = objc_alloc(MEMORY[0x1E695DFA8]);
    v16 = objc_msgSend_count(v11, v14, v15);
    v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = v11;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v43, v47, 16);
    if (v21)
    {
      v23 = v21;
      v24 = *v44;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = objc_msgSend_validateAndCleanupID_(MEMORY[0x1E69A7FD0], v22, *(*(&v43 + 1) + 8 * i), v42);
          v29 = objc_msgSend_contactStore(self, v27, v28);
          v31 = objc_msgSend_fetchCNContactForHandleWithID_(v29, v30, v26);

          if (v31)
          {
            objc_msgSend_addObject_(v18, v32, v31);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v43, v47, 16);
      }

      while (v23);
    }

    v34 = objc_msgSend_existingChatWithContacts_bestHandles_(self, v33, v18, v42);
  }

  else
  {
    v35 = objc_msgSend_count(v8, v9, v10);
    v36 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v11;
      _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_DEFAULT, "existingChatWithAddresses: %@", buf, 0xCu);
    }

    v37 = IMFindExistingChatForAddresses(v11, 0, v35 > 1, 1);
    v34 = v37;
    if (a5)
    {
      *a5 = objc_msgSend_participants(v37, v38, v39);
    }
  }

  v40 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)existingChatWithContacts:(id)a3 bestHandles:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "Finding existing chat for contacts: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x3032000000;
  v18 = sub_1A8259B10;
  v19 = sub_1A825AEB4;
  v20 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A82BC4B8;
  v12[3] = &unk_1E7811148;
  v7 = v5;
  p_buf = &buf;
  v15 = a4;
  v13 = v7;
  objc_msgSend_bestHandlesForContacts_useExtendedAsyncLookup_completion_(IMHandle, v8, v7, 0, v12);
  v9 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_mergedChatGUIDsForChatGUIDs:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AD18]);
  v8 = objc_msgSend_count(v4, v6, v7);
  v10 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v5, v9, 512, 0, v8);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v11 = v4;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v67, v72, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v68;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v68 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend__cachedChatWithGUID_(self, v14, *(*(&v67 + 1) + 8 * i));
        if (v18)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
          objc_msgSend_setObject_forKey_(v10, v20, v19, v18);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v67, v72, 16);
    }

    while (v15);
  }

  if (objc_msgSend_count(v10, v21, v22))
  {
    v25 = objc_msgSend_currentMessageFilterMode(self, v23, v24);
    v28 = objc_msgSend_chatGUIDToChatMap(self, v26, v27);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = sub_1A82BD0F0;
    v63[3] = &unk_1E7811170;
    v29 = v10;
    v65 = self;
    v66 = v25;
    v64 = v29;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v28, v30, v63);

    v31 = MEMORY[0x1E695DF90];
    v34 = objc_msgSend_count(v29, v32, v33);
    v36 = objc_msgSend_dictionaryWithCapacity_(v31, v35, v34);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v37 = v29;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v59, v71, 16);
    if (v39)
    {
      v41 = v39;
      v42 = *v60;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v60 != v42)
          {
            objc_enumerationMutation(v37);
          }

          v44 = *(*(&v59 + 1) + 8 * j);
          v45 = objc_msgSend_objectForKey_(v37, v40, v44, v59);
          v48 = v45;
          if (v45)
          {
            v49 = objc_msgSend_copy(v45, v46, v47);
            v52 = objc_msgSend_guid(v44, v50, v51);
            objc_msgSend_setObject_forKeyedSubscript_(v36, v53, v49, v52);
          }
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v59, v71, 16);
      }

      while (v41);
    }

    v56 = objc_msgSend_copy(v36, v54, v55);
  }

  else
  {
    v56 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v23, v24);
  }

  v57 = *MEMORY[0x1E69E9840];

  return v56;
}

- (void)clearHistoryAndReloadLastMessageForChatsWithGUIDs:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1A8259B10;
  v22 = sub_1A825AEB4;
  v23 = 0;
  v7 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  v10 = objc_msgSend_synchronousRemoteDaemon(v7, v8, v9);
  v12 = objc_msgSend__mergedChatGUIDsForChatGUIDs_(self, v11, v4);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A82BD38C;
  v17[3] = &unk_1E7811198;
  v17[4] = &v18;
  objc_msgSend_loadLastMessageItemsForMergedChatsWithGUIDs_completionHandler_(v10, v13, v12, v17);

  v14 = v19[5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A82BD39C;
  v16[3] = &unk_1E78109A0;
  v16[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v14, v15, v16);
  _Block_object_dispose(&v18, 8);
}

- (void)clearHistoryAndReloadLastMessageForMergedFilteredChats
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = objc_msgSend_cachedChats(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (objc_msgSend_supportsMergingFilteredThreads(v14, v9, v10))
        {
          v15 = objc_msgSend_guid(v14, v9, v10);
          objc_msgSend_addObject_(v3, v16, v15);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
    }

    while (v11);
  }

  objc_msgSend_clearHistoryAndReloadLastMessageForChatsWithGUIDs_(self, v17, v3);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_loadUnreadChatsWithLastMessageOlderThan:(id)a3 waitForReply:(BOOL)a4 predicate:(id)a5 limit:(unint64_t)a6 completionHandler:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v17 = objc_msgSend_daemonController(self, v15, v16);
  v20 = v17;
  if (v10)
  {
    objc_msgSend_synchronousRemoteDaemon(v17, v18, v19);
  }

  else
  {
    objc_msgSend_remoteDaemon(v17, v18, v19);
  }
  v21 = ;

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1A8259B10;
  v36 = sub_1A825AEB4;
  v37 = MEMORY[0x1E695E0F0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A82BD8FC;
  aBlock[3] = &unk_1E78101B8;
  aBlock[4] = self;
  v22 = v14;
  v31 = v22;
  v23 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1A82BD998;
  v26[3] = &unk_1E78111C0;
  v29 = v10;
  v28 = &v32;
  v24 = v23;
  v27 = v24;
  objc_msgSend_loadUnreadChatsWithLastMessageOlderThan_predicate_limit_reply_(v21, v25, v12, v13, a6, v26);
  if (v10)
  {
    (*(v24 + 2))(v24, v33[5]);
  }

  _Block_object_dispose(&v32, 8);
}

- (void)_loadChatsFilteredUsingPredicate:(id)a3 lastMessageOlderThan:(id)a4 limit:(unint64_t)a5 waitForReply:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v17 = objc_msgSend_daemonController(self, v15, v16);
  v20 = v17;
  if (a6)
  {
    objc_msgSend_synchronousRemoteDaemon(v17, v18, v19);
  }

  else
  {
    objc_msgSend_remoteDaemon(v17, v18, v19);
  }
  v21 = ;

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A82BDBA4;
  v24[3] = &unk_1E78111E8;
  v24[4] = self;
  v25 = v12;
  v26 = a6;
  v22 = v12;
  objc_msgSend_loadChatsFilteredUsingPredicate_lastMessageOlderThan_limit_reply_(v21, v23, v14, v13, a5, v24);
}

- (id)_earliestLastMessageDateFromChatDictionaries:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1A8259B10;
  v23 = sub_1A825AEB4;
  v24 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v25, 16);
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = sub_1A82BDF6C;
        v14[3] = &unk_1E7811210;
        v14[4] = self;
        v14[5] = v10;
        v14[6] = &v19;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v10, v6, v14);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v25, 16);
    }

    while (v7);
  }

  v11 = v20[5];
  _Block_object_dispose(&v19, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_lastMessageDateForQueryFromChatDictionary:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"lastMessageRecordDateForQuery");
  if (!v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(v3, v5, *MEMORY[0x1E69A6C08]);
    v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"time");
    v12 = v9;
    if (v9 && (objc_msgSend_doubleValue(v9, v10, v11), v15 > 10.0))
    {
      v16 = MEMORY[0x1E695DF00];
      objc_msgSend_doubleValue(v12, v13, v14);
      v6 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v16, v17, v18);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)updateEarliestMessageDateForChats:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF70];
  v10 = objc_msgSend_count(v5, v8, v9);
  v12 = objc_msgSend_arrayWithCapacity_(v7, v11, v10);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1A82BE254;
  v25[3] = &unk_1E7811238;
  v13 = v12;
  v26 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v14, v25);
  v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
  v20 = objc_msgSend_synchronousRemoteDaemon(v17, v18, v19);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A82BE2AC;
  v23[3] = &unk_1E78100B8;
  v24 = v5;
  v21 = v5;
  objc_msgSend_fetchEarliestMessageDateForChatsWithGUIDs_completion_(v20, v22, v13, v23);

  if (v6)
  {
    v6[2](v6);
  }
}

- (id)chatWithHandle:(id)a3 lastAddressedHandle:(id)a4 lastAddressedSIMID:(id)a5 shouldForceCreate:(BOOL)a6
{
  v6 = a6;
  v76 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v69 = v10;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "handle: %@", buf, 0xCu);
    }
  }

  if (!v10)
  {
    isDeletingIncomingMessages = 0;
    goto LABEL_32;
  }

  isDeletingIncomingMessages = objc_msgSend_existingChatWithHandle_(self, v13, v10);
  if (isDeletingIncomingMessages)
  {
LABEL_7:
    if (!v6)
    {
      v16 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v69 = isDeletingIncomingMessages;
        v70 = 2112;
        v71 = v10;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "Redirecting chat %@ to handle: %@", buf, 0x16u);
      }

      objc_msgSend_setRecipient_(isDeletingIncomingMessages, v17, v10);
      v20 = objc_msgSend_account(v10, v18, v19);
      objc_msgSend__setAccount_(isDeletingIncomingMessages, v21, v20);

      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (!IMSharedHelperContactsBasedMergingEnabled())
  {
    isDeletingIncomingMessages = 0;
    goto LABEL_17;
  }

  isDeletingIncomingMessages = objc_msgSend__existingChatForHandleUsingPersonID_(self, v22, v10);
  if (isDeletingIncomingMessages)
  {
    v23 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = isDeletingIncomingMessages;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Found a chat using PersonID: %@ ", buf, 0xCu);
    }

    objc_msgSend_setRecipient_(isDeletingIncomingMessages, v24, v10);
    goto LABEL_7;
  }

LABEL_17:
  v25 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_DEFAULT, "No chat found", buf, 2u);
  }

  v27 = objc_msgSend__possiblyUnregisteredCachedChatWithHandle_(self, v26, v10);

  if (!v27 || v6)
  {
    v34 = [IMChat alloc];
    v37 = objc_msgSend_account(v10, v35, v36);
    v38 = IMSingleObjectArray();
    BYTE2(v67) = 0;
    LOWORD(v67) = 0;
    isDeletingIncomingMessages = objc_msgSend__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_(v34, v39, 0, v37, 45, 0, 0, v11, v12, 0, v38, 1, v67);

    objc_msgSend__setupObservation(isDeletingIncomingMessages, v40, v41);
    v32 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_msgSend_lastAddressedHandleID(isDeletingIncomingMessages, v42, v43);
      v47 = objc_msgSend_lastAddressedSIMID(isDeletingIncomingMessages, v45, v46);
      *buf = 138412802;
      v69 = isDeletingIncomingMessages;
      v70 = 2112;
      v71 = v44;
      v72 = 2112;
      v73 = v47;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_DEFAULT, "Created chat: %@ lastaddressed handle %@ last addressed simID %@", buf, 0x20u);
    }
  }

  else
  {
    v28 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v27;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "Found created chat: %@", buf, 0xCu);
    }

    objc_msgSend_setRecipient_(v27, v29, v10);
    v32 = objc_msgSend_account(v10, v30, v31);
    objc_msgSend__setAccount_(v27, v33, v32);
    isDeletingIncomingMessages = v27;
  }

  v48 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_DEFAULT, "registering outgoing chat.", buf, 2u);
  }

  objc_msgSend__registerChat_isIncoming_guid_(self, v49, isDeletingIncomingMessages, 0, 0);
  v50 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v53 = objc_msgSend_guid(isDeletingIncomingMessages, v51, v52);
    v56 = objc_msgSend_chatIdentifier(isDeletingIncomingMessages, v54, v55);
    v59 = objc_msgSend_joinState(isDeletingIncomingMessages, v57, v58);
    v62 = objc_msgSend_personCentricID(isDeletingIncomingMessages, v60, v61);
    *buf = 138413058;
    v69 = v53;
    v70 = 2112;
    v71 = v56;
    v72 = 2048;
    v73 = v59;
    v74 = 2112;
    v75 = v62;
    _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_DEFAULT, "Joining chat: [IMChat guid: %@  chat identifier: %@  state: %lu  person centric ID: %@]", buf, 0x2Au);
  }

  objc_msgSend_join(isDeletingIncomingMessages, v63, v64);
LABEL_32:

  v65 = *MEMORY[0x1E69E9840];

  return isDeletingIncomingMessages;
}

- (void)_validateChatQueryResults:(id)a3 matchCurrentCacheResults:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!objc_msgSend_count(v5, v7, v8) && !objc_msgSend_count(v6, v9, v10))
  {
    goto LABEL_23;
  }

  if (!objc_msgSend_count(v5, v9, v10) && objc_msgSend_count(v6, v11, v12))
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = v6;
        v30 = 2112;
        v31 = v5;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Chat cache now has chats, but query didn't explictly populate it, cache: %@ query: %@", buf, 0x16u);
      }
    }

    goto LABEL_23;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v5;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v23, v27, 16);
  if (!v16)
  {

LABEL_19:
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = v6;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Chat cache does not have results returned from daemon in cache miss query, cache: %@ query: %@", buf, 0x16u);
      }
    }

    goto LABEL_23;
  }

  v17 = 0;
  v18 = *v24;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v24 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v17 |= objc_msgSend_containsObjectIdenticalTo_(v6, v15, *(*(&v23 + 1) + 8 * i), v23);
    }

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v23, v27, 16);
  }

  while (v16);

  if ((v17 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_23:

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_performSingleChatCacheLookupWithBlock:(id)a3 cacheMissQueryKey:(id)a4 queryBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A82BECB4;
  v23[3] = &unk_1E7811260;
  v24 = v8;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_1A82BED7C;
  v21 = &unk_1E7811288;
  v22 = v9;
  v10 = v9;
  v11 = v8;
  v13 = objc_msgSend__performChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v12, v23, a4, &v18);
  v16 = objc_msgSend_firstObject(v13, v14, v15, v18, v19, v20, v21);

  return v16;
}

- (id)_performChatCacheLookupWithBlock:(id)a3 cacheMissQueryKey:(id)a4 queryBlock:(id)a5
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v10)
  {
    v57 = 0;
    *&v62 = 0;
    *(&v62 + 1) = &v62;
    v63 = 0x3032000000;
    v64 = sub_1A8259B10;
    v65 = sub_1A825AEB4;
    v66 = v8[2](v8, &v57);
    if (objc_msgSend_processingChatCacheMiss(self, v12, v13))
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v19 = objc_msgSend_count(*(*(&v62 + 1) + 40), v17, v18);
          *buf = 134217984;
          v59 = v19;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Attempting a nested chat cache lookup, returning early with %llu cache results only", buf, 0xCu);
        }
      }
    }

    else
    {
      v22 = objc_msgSend_daemonController(self, v14, v15);
      v25 = (objc_msgSend_processCapabilities(v22, v23, v24) & 4) == 0;

      if (v25)
      {
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v29 = objc_msgSend_daemonController(self, v27, v28);
            objc_msgSend_processCapabilities(v29, v30, v31);
            v32 = IMStringFromClientCapabilities();
            v35 = objc_msgSend_count(*(*(&v62 + 1) + 40), v33, v34);
            *buf = 138412546;
            v59 = v32;
            v60 = 2048;
            v61 = v35;
            _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Attempting a chat cache lookup without chats capability (has %@), returning early with %llu cache results only", buf, 0x16u);
          }
        }
      }

      else if (v57 == 1)
      {
        v36 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v59 = v9;
          _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_DEFAULT, "Chat cache miss for key %@", buf, 0xCu);
        }

        v37 = MEMORY[0x1E695DFD8];
        v39 = objc_msgSend___imArrayByApplyingBlock_(*(*(&v62 + 1) + 40), v38, &unk_1F1B6E1C0);
        v41 = objc_msgSend_setWithArray_(v37, v40, v39);

        v44 = objc_msgSend_daemonQueryController(self, v42, v43);
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = sub_1A82BF298;
        v54[3] = &unk_1E78112D0;
        v54[4] = self;
        v56 = v11;
        v45 = v41;
        v55 = v45;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = sub_1A82BF338;
        v49[3] = &unk_1E78112F8;
        v53 = &v62;
        v52 = v8;
        v50 = v9;
        v51 = self;
        objc_msgSend_performQueryWithKey_expectsSynchronousResult_block_completionHandler_(v44, v46, v50, 1, v54, v49);
      }
    }

    v21 = *(*(&v62 + 1) + 40);
    _Block_object_dispose(&v62, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        LODWORD(v62) = 136315138;
        *(&v62 + 4) = "[IMChatRegistry(Queries_Internal) _performChatCacheLookupWithBlock:cacheMissQueryKey:queryBlock:]";
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Sent nil block to %s", &v62, 0xCu);
      }
    }

    v21 = MEMORY[0x1E695E0F0];
  }

  v47 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_existingChatWithIdentifier:(id)a3 style:(unsigned __int8)a4 service:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v11, v12, v13);

  if (isOneChatEnabled)
  {
    v16 = objc_msgSend_existingChatWithChatIdentifier_(self, v15, v7);
  }

  else
  {
    v16 = 0;
    if (v7 && v8)
    {
      v17 = IMCopyAnyServiceGUIDForChat();
      v16 = objc_msgSend_existingChatWithGUID_(self, v18, v17);
    }
  }

  return v16;
}

- (id)_existingChatForHandleUsingPersonID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_contactStore(self, v5, v6);
  isBatchFetchingForLaunchCompleted = objc_msgSend_isBatchFetchingForLaunchCompleted(v7, v8, v9);

  if (isBatchFetchingForLaunchCompleted)
  {
    v12 = objc_msgSend_cnContactWithKeys_(v4, v11, MEMORY[0x1E695E0F0]);
    v15 = objc_msgSend_identifier(v12, v13, v14);

    v18 = objc_msgSend_length(v15, v16, v17);
    if (v18)
    {
      v19 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v15;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "Attempting to look up chat using PersonID: %@", &v24, 0xCu);
      }

      v18 = objc_msgSend_existingChatWithPersonID_(self, v20, v15);
    }

    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_existingChatFromSiblingsForHandle:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend__chatSiblingsArray(v4, v5, v6);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v7;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, " => siblings: %@", buf, 0xCu);
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v28, v32, 16);
  if (v13)
  {
    v14 = *v29;
LABEL_7:
    v15 = 0;
    while (1)
    {
      if (*v29 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v28 + 1) + 8 * v15);
      v17 = objc_msgSend_ID(v16, v11, v12, v28);
      v20 = objc_msgSend_service(v16, v18, v19);
      v23 = objc_msgSend_internalName(v20, v21, v22);
      v25 = objc_msgSend__existingChatWithIdentifier_style_service_(self, v24, v17, 45, v23);

      if (v25)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v28, v32, 16);
        if (v13)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)_existingChatWithHandle:(id)a3 fixChatHandle:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (qword_1EB2EA1D8 != -1)
  {
    sub_1A84DF928();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = qword_1EB2EA1D0;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v33, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v28;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = objc_msgSend_ID(v6, v10, v11, v27);
        v19 = objc_msgSend_internalName(v15, v17, v18);
        v21 = objc_msgSend__existingChatWithIdentifier_style_service_(self, v20, v16, 45, v19);

        if (v21)
        {

          goto LABEL_19;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v27, v33, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    v21 = objc_msgSend__existingChatForHandleUsingPersonID_(self, v22, v6);
    if (v21 && v4)
    {
      v23 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v21;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Found a chat using PersonID: %@ ", buf, 0xCu);
      }

      objc_msgSend_setRecipient_(v21, v24, v6);
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_19:

  v25 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)_loadAllSiblingChatsForHandlesAssociatedWithOneToOneChat:(id)a3 waitForReply:(BOOL)a4 completionHandler:(id)a5
{
  v105 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (objc_msgSend_chatStyle(v8, v11, v12) == 45)
  {
    v74 = self;
    v75 = a4;
    v76 = v9;
    v77 = v8;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = objc_msgSend_participants(v8, v13, v14);
    v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v95, v104, 16);
    if (v82)
    {
      v80 = *MEMORY[0x1E695C330];
      v81 = *v96;
      v79 = *MEMORY[0x1E695C208];
      do
      {
        for (i = 0; i != v82; ++i)
        {
          if (*v96 != v81)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v95 + 1) + 8 * i);
          v103[0] = v80;
          v103[1] = v79;
          v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v103, 2);
          v83 = v18;
          v21 = objc_msgSend_cnContactWithKeys_(v18, v20, v19);

          v93 = 0u;
          v94 = 0u;
          v92 = 0u;
          v91 = 0u;
          v24 = objc_msgSend_emailAddresses(v21, v22, v23);
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v91, v102, 16);
          if (v26)
          {
            v29 = v26;
            v30 = *v92;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v92 != v30)
                {
                  objc_enumerationMutation(v24);
                }

                v32 = objc_msgSend_value(*(*(&v91 + 1) + 8 * j), v27, v28);
                v33 = IMCanonicalFormForEmail();

                if (v33)
                {
                  objc_msgSend_addObject_(v10, v34, v33);
                }
              }

              v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v91, v102, 16);
            }

            while (v29);
          }

          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v37 = objc_msgSend_phoneNumbers(v21, v35, v36);
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v87, v101, 16);
          if (v39)
          {
            v42 = v39;
            v43 = *v88;
            do
            {
              for (k = 0; k != v42; ++k)
              {
                if (*v88 != v43)
                {
                  objc_enumerationMutation(v37);
                }

                v45 = objc_msgSend_value(*(*(&v87 + 1) + 8 * k), v40, v41);
                v48 = objc_msgSend_stringValue(v45, v46, v47);
                v49 = IMFormatPhoneNumber();

                if (v49)
                {
                  objc_msgSend_addObject_(v10, v50, v49);
                  v51 = IMChatCanonicalIDSIDsForAddress();
                  v54 = objc_msgSend__stripFZIDPrefix(v51, v52, v53);

                  if (v54 && (objc_msgSend_isEqualToString_(v49, v55, v54) & 1) == 0)
                  {
                    objc_msgSend_addObject_(v10, v56, v54);
                  }
                }
              }

              v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v87, v101, 16);
            }

            while (v42);
          }

          v59 = objc_msgSend_ID(v83, v57, v58);
          objc_msgSend_addObject_(v10, v60, v59);
        }

        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v95, v104, 16);
      }

      while (v82);
    }

    v61 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v100 = v10;
      _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_DEFAULT, "Fetching sibling chats with handles %@", buf, 0xCu);
    }

    v64 = objc_msgSend_daemonController(v74, v62, v63);
    v67 = v64;
    v9 = v76;
    if (v75)
    {
      objc_msgSend_synchronousRemoteDaemon(v64, v65, v66);
    }

    else
    {
      objc_msgSend_remoteDaemon(v64, v65, v66);
    }
    v68 = ;
    v8 = v77;

    v71 = objc_msgSend_allObjects(v10, v69, v70);
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = sub_1A82C0388;
    v84[3] = &unk_1E78111E8;
    v86 = v75;
    v84[4] = v74;
    v85 = v76;
    objc_msgSend_loadAnyChatsContainingHandleIDsIn_reply_(v68, v72, v71, v84);
  }

  else
  {
    (*(v9 + 2))(v9, MEMORY[0x1E695E0F0]);
  }

  v73 = *MEMORY[0x1E69E9840];
}

- (void)_loadAllSiblingChatsForGroupChat:(id)a3 waitForReply:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (objc_msgSend_chatStyle(v8, v10, v11) == 43)
  {
    v14 = objc_msgSend_participants(v8, v12, v13);
    v16 = objc_msgSend___imArrayByApplyingBlock_(v14, v15, &unk_1F1B6E200);

    v19 = objc_msgSend_daemonController(self, v17, v18);
    v22 = objc_msgSend_synchronousRemoteDaemon(v19, v20, v21);
    v25 = objc_msgSend_displayName(v8, v23, v24);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A82C0658;
    v27[3] = &unk_1E78111E8;
    v29 = a4;
    v27[4] = self;
    v28 = v9;
    objc_msgSend_loadChatsWithHandleIDs_groupID_displayName_style_reply_(v22, v26, v16, 0, v25, 43, v27);
  }

  else
  {
    (*(v9 + 2))(v9, MEMORY[0x1E695E0F0]);
  }
}

- (id)allVisibleChatGUIDsForChats:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v9 = objc_msgSend_currentMessageFilterMode(self, v7, v8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A82C1EAC;
  v15[3] = &unk_1E7811488;
  v15[4] = self;
  v17 = v9;
  v10 = v6;
  v16 = v10;
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v11, v15);

  v12 = v16;
  v13 = v10;

  return v10;
}

- (void)enumerateAllChatsAndAttachmentSizesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v8 = objc_msgSend_sharedRegistry(IMChatRegistry, v6, v7);
  v11 = objc_msgSend_numberOfCachedChats(v8, v9, v10);

  if (v11)
  {
    v12 = IMDAttachmentFindLargestConversations();
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v12;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Found dbLargestConversations: %@", buf, 0xCu);
      }
    }

    v16 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14);
    v17 = objc_autoreleasePoolPush();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1A8303F50;
    v30[3] = &unk_1E7812120;
    v30[4] = self;
    v18 = v16;
    v31 = v18;
    objc_msgSend_enumerateObjectsUsingBlock_(v12, v19, v30);

    objc_autoreleasePoolPop(v17);
    v20 = objc_autoreleasePoolPush();
    v22 = objc_msgSend_keysSortedByValueUsingComparator_(v18, v21, &unk_1F1B6E620);
    objc_autoreleasePoolPop(v20);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A8304114;
    v27[3] = &unk_1E7812168;
    v27[4] = self;
    v28 = v18;
    v29 = v5;
    v23 = v18;
    objc_msgSend_enumerateObjectsUsingBlock_(v22, v24, v27);
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "No cached chats are loaded -- client has likely not received setup. Skipping largest conversation load.", buf, 2u);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)chatForIMHandles:(id)a3 chatName:(id)a4 lastAddressedHandle:(id)a5 lastAddressedSIMID:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v53 = v10;
      v54 = 2112;
      v55 = v11;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEBUG, "handles: %@  name: %@", buf, 0x16u);
    }
  }

  v17 = objc_msgSend_lastObject(v10, v14, v15);
  v20 = objc_msgSend_service(v17, v18, v19);

  v22 = objc_msgSend_maxChatParticipantsForHandle_simID_(v20, v21, v12, v13);
  v25 = v22;
  if (v22 < 1 || (v26 = objc_msgSend_count(v10, v23, v24), v26 <= objc_msgSend_maxChatParticipantsForHandle_simID_(v20, v27, v12, v13)))
  {
    isDeletingIncomingMessages = objc_msgSend_existingChatForIMHandles_(self, v23, v10);
    v30 = IMChatRegistryLogHandle();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (isDeletingIncomingMessages)
    {
      if (v31)
      {
        *buf = 138412290;
        v53 = isDeletingIncomingMessages;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
      }

LABEL_28:

      goto LABEL_29;
    }

    if (v31)
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEFAULT, "No chat found", buf, 2u);
    }

    v34 = objc_msgSend_lastObject(v10, v32, v33);
    v30 = objc_msgSend_account(v34, v35, v36);

    isDeletingIncomingMessages = objc_msgSend__possiblyUnregisteredCachedChatWithHandles_style_groupID_displayName_joinedChatsOnly_(self, v37, v10, 43, 0, 0, 0);
    if (isDeletingIncomingMessages)
    {
      v38 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = isDeletingIncomingMessages;
        v39 = "Found created chat: %@";
LABEL_22:
        _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
      }
    }

    else
    {
      v40 = [IMChat alloc];
      BYTE2(v51) = 0;
      LOWORD(v51) = 0;
      isDeletingIncomingMessages = objc_msgSend__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_(v40, v41, 0, v30, 43, 0, 0, v12, v13, 0, v10, 1, v51);
      objc_msgSend__setupObservation(isDeletingIncomingMessages, v42, v43);
      v38 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = isDeletingIncomingMessages;
        v39 = "Created chat: %@";
        goto LABEL_22;
      }
    }

    v44 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = isDeletingIncomingMessages;
      _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_DEFAULT, "Registering outgoing chat: %@", buf, 0xCu);
    }

    objc_msgSend__registerChat_isIncoming_guid_(self, v45, isDeletingIncomingMessages, 0, 0);
    v46 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = isDeletingIncomingMessages;
      _os_log_impl(&dword_1A823F000, v46, OS_LOG_TYPE_DEFAULT, "Joining chat: %@", buf, 0xCu);
    }

    objc_msgSend_join(isDeletingIncomingMessages, v47, v48);
    goto LABEL_28;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v53) = v25;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Failing to invite participants that would put us over our max size of: %d", buf, 8u);
    }
  }

  isDeletingIncomingMessages = 0;
LABEL_29:

  v49 = *MEMORY[0x1E69E9840];

  return isDeletingIncomingMessages;
}

- (id)chatForRoom:(id)a3 onAccount:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "roomName: %@  account: %@", buf, 0x16u);
    }
  }

  if (v7)
  {
    v10 = objc_msgSend_chatIDForRoomName_(v7, v8, v6);

    v11 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v10;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Account pushed room name to: %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = v6;
  }

  isDeletingIncomingMessages = objc_msgSend_existingChatForRoom_onAccount_(self, v8, v10, v7);
  if (isDeletingIncomingMessages)
  {
    v14 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = isDeletingIncomingMessages;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  isDeletingIncomingMessages = objc_msgSend__possiblyUnregisteredCachedChatForRoom_onAccount_(self, v12, v10, v7);
  if (isDeletingIncomingMessages)
  {
    v15 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = isDeletingIncomingMessages;
      v16 = "Found created chat: %@";
LABEL_19:
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    }
  }

  else
  {
    v17 = [IMChat alloc];
    BYTE2(v25) = 0;
    LOWORD(v25) = 0;
    isDeletingIncomingMessages = objc_msgSend__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_(v17, v18, 0, v7, 35, v10, 0, 0, 0, 0, 0, 1, v25);
    objc_msgSend__setupObservation(isDeletingIncomingMessages, v19, v20);
    v15 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = isDeletingIncomingMessages;
      v16 = "Created chat: %@";
      goto LABEL_19;
    }
  }

  v21 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = isDeletingIncomingMessages;
    _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEFAULT, "Registering chat: %@", buf, 0xCu);
  }

  objc_msgSend__registerChat_isIncoming_guid_(self, v22, isDeletingIncomingMessages, 0, 0);
LABEL_23:

  v23 = *MEMORY[0x1E69E9840];

  return isDeletingIncomingMessages;
}

- (unint64_t)numberOfExistingChats
{
  v6 = objc_msgSend_simulatedChats(self, a2, v2);
  if (v6)
  {
    objc_msgSend_simulatedChats(self, v4, v5);
  }

  else
  {
    objc_msgSend_cachedChatsInThreadNameMap(self, v4, v5);
  }
  v7 = ;
  v10 = objc_msgSend_count(v7, v8, v9);

  return v10;
}

- (NSArray)allExistingChats
{
  v4 = objc_msgSend_simulatedChats(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend_cachedChatsInThreadNameMap(self, v5, v6);
  }

  v9 = v8;

  return v9;
}

- (id)existingChatForRoom:(id)a3 onAccount:(id)a4 allowRetargeting:(BOOL)a5
{
  v7 = a3;
  v10 = objc_msgSend_uniqueID(a4, v8, v9);
  v12 = objc_msgSend__existingChatWithIdentifier_style_account_(self, v11, v7, 35, v10);

  return v12;
}

- (id)existingChatForIMHandles:(id)a3 allowRetargeting:(BOOL)a4 groupID:(id)a5 displayName:(id)a6 ignoresDisplayName:(BOOL)a7 joinedChatsOnly:(BOOL)a8
{
  v55 = a8;
  v70 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v56 = a5;
  v11 = a6;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_msgSend_arrayByApplyingSelector_(v54, v15, "ID");
      v17 = @"NO";
      *buf = 138413058;
      v63 = v16;
      if (v55)
      {
        v17 = @"YES";
      }

      v64 = 2112;
      v65 = v56;
      v66 = 2112;
      v67 = v11;
      v68 = 2112;
      v69 = v17;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "existingChatForHandles: %@  groupID: %@ displayName %@ isJoined %@ ", buf, 0x2Au);
    }
  }

  if (objc_msgSend_count(v54, v12, v13))
  {
    if (objc_msgSend_length(v11, v18, v19))
    {
      v20 = v11;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v24 = objc_msgSend_cachedChatsInThreadNameMap(self, v22, v23);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v57, v61, 16);
    if (v28)
    {
      v29 = *v58;
LABEL_13:
      v30 = 0;
      while (1)
      {
        if (*v58 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v57 + 1) + 8 * v30);
        if (objc_msgSend_chatStyle(v31, v26, v27) != 43)
        {
          goto LABEL_33;
        }

        v32 = objc_msgSend_displayName(v31, v26, v27);
        if (objc_msgSend_length(v32, v33, v34))
        {
          v35 = v32;
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;

        if (!objc_msgSend_length(v56, v37, v38))
        {
          goto LABEL_23;
        }

        if (!(v36 | v21))
        {
          goto LABEL_28;
        }

        v41 = objc_msgSend_groupID(v31, v39, v40);
        isEqualToString = objc_msgSend_isEqualToString_(v56, v42, v41);

        if (isEqualToString)
        {
LABEL_23:
          if (a7)
          {
            goto LABEL_28;
          }

          if (v36)
          {
            if (objc_msgSend_isEqualToString_(v36, v39, v21))
            {
              goto LABEL_28;
            }
          }

          else if (!v21)
          {
LABEL_28:
            if (!v55 || objc_msgSend_joinState(v31, v39, v40) >= 2)
            {
              v44 = objc_autoreleasePoolPush();
              v47 = objc_msgSend_participants(v31, v45, v46);
              v49 = objc_msgSend_equivalentToRecipients_(v54, v48, v47);

              if (v49)
              {
                v50 = v31;
                objc_autoreleasePoolPop(v44);

                goto LABEL_38;
              }

              objc_autoreleasePoolPop(v44);
            }
          }
        }

LABEL_33:
        if (v28 == ++v30)
        {
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v57, v61, 16);
          if (v28)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    v50 = 0;
LABEL_38:

    v11 = v21;
  }

  else
  {
    v50 = 0;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

+ (id)performanceLogHandle
{
  if (qword_1EB2E90E0 != -1)
  {
    sub_1A84E1B94();
  }

  v3 = qword_1EB2E90D8;

  return v3;
}

- (id)performanceLogHandle
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v2, sel_performanceLogHandle, v3);
}

+ (IMChatRegistry)sharedRegistryIfAvailable
{
  if (IMIsRunningInIMDPersistenceAgent())
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_msgSend_sharedRegistry(a1, v3, v4);
  }

  return v5;
}

- (void)_noteChatInit:(id)a3
{
  v8 = a3;
  if (objc_msgSend__shouldRegisterChat(v8, v4, v5) && (objc_msgSend_containsObjectIdenticalTo_(self->_allChatsInProcess, v6, v8) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_allChatsInProcess, v7, v8);
  }
}

- (void)_noteChatDealloc:(id)a3
{
  v7 = a3;
  if (objc_msgSend__shouldRegisterChat(v7, v4, v5))
  {
    objc_msgSend_removeObjectIdenticalTo_(self->_allChatsInProcess, v6, v7);
  }
}

- (id)initAsListener:(BOOL)a3
{
  v3 = a3;
  v109.receiver = self;
  v109.super_class = IMChatRegistry;
  v6 = [(IMChatRegistry *)&v109 init];
  if (v6)
  {
    v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
    objc_msgSend_addObserver_selector_name_object_(v7, v8, v6, sel__handleChatParticipantsDidChange_, @"__kIMChatParticipantsDidChangeNotification", 0);

    v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
    objc_msgSend_addObserver_selector_name_object_(v11, v12, v6, sel__handleAddressBookChange_, *MEMORY[0x1E69A6838], 0);

    v15 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v13, v14);
    objc_msgSend_addObserver_selector_name_object_(v15, v16, v6, sel__handleAddressBookChange_, *MEMORY[0x1E69A6828], 0);

    v19 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v17, v18);
    objc_msgSend_addObserver_selector_name_object_(v19, v20, v6, sel__handleAvailabilityChangedNotification_, IMHandleAvailabilityChangedNotification, 0);

    v23 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v21, v22);
    objc_msgSend_addObserver_selector_name_object_(v23, v24, v6, sel__handleAvailabilityInvitationReceivedNotification_, IMHandleAvailabilityInvitationReceivedNotification, 0);

    v27 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v25, v26);
    objc_msgSend_addObserver_selector_name_object_(v27, v28, v6, sel__handleAvailabilityStateChangedNotification_, IMHandleAvailabilityStateChangedNotification, 0);

    v31 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v29, v30);
    objc_msgSend_addObserver_selector_name_object_(v31, v32, v6, sel__handleOffGridChangedNotification_, *MEMORY[0x1E69A7038], 0);

    v35 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v33, v34);
    objc_msgSend_addObserver_selector_name_object_(v35, v36, v6, sel__handleOffGridInvitationReceivedNotification_, *MEMORY[0x1E69A7048], 0);

    v39 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v37, v38);
    objc_msgSend_addObserver_selector_name_object_(v39, v40, v6, sel__handleOffGridStateChangedNotification_, *MEMORY[0x1E69A7050], 0);

    if (IMIsRunningInMessages())
    {
      v43 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v41, v42);
      objc_msgSend_addObserver_selector_name_object_(v43, v44, v6, sel__handleTranslationSupportChangedNotification_, *MEMORY[0x1E69A6AC0], 0);

      v47 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v45, v46);
      objc_msgSend_addObserver_selector_name_object_(v47, v48, v6, sel__handleTranslationEnabledChangedNotification_, @"__kIMChatAutomaticTranslationChangedNotification", 0);

      v51 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v49, v50);
      objc_msgSend_addObserver_selector_name_object_(v51, v52, v6, sel__handleTranslationLanguageStatusChangedNotification_, *MEMORY[0x1E69A7DB8], 0);
    }

    v53 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v41, v42);
    objc_msgSend_addObserver_selector_name_object_(v53, v54, v6, sel__handleKeyTransparencyStatusChangedNotification_, @"__kIMChatKeyTransparencyStatusChangedNotification", 0);

    v57 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v55, v56);
    objc_msgSend_addObserver_selector_name_object_(v57, v58, v6, sel__handleChatBotPropertiesDidChangeNotification_, *MEMORY[0x1E69A6AD0], 0);

    *(v6 + 16) = 1;
    v59 = *(v6 + 13);
    *(v6 + 13) = 0;

    *(v6 + 12) = 1;
    v60 = *(v6 + 14);
    *(v6 + 14) = 0;

    *(v6 + 15) = 0;
    v61 = *(v6 + 17);
    *(v6 + 17) = 0;

    v62 = *(v6 + 33);
    *(v6 + 33) = 0;

    v63 = *(v6 + 32);
    *(v6 + 32) = 0;

    v66 = objc_msgSend_nonRetainingArray(MEMORY[0x1E695DF70], v64, v65);
    v67 = *(v6 + 20);
    *(v6 + 20) = v66;

    v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v69 = *(v6 + 24);
    *(v6 + 24) = v68;

    v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v71 = *(v6 + 22);
    *(v6 + 22) = v70;

    v72 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v73 = *(v6 + 23);
    *(v6 + 23) = v72;

    v74 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v75 = *(v6 + 27);
    *(v6 + 27) = v74;

    v76 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v77 = *(v6 + 18);
    *(v6 + 18) = v76;

    v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v79 = *(v6 + 29);
    *(v6 + 29) = v78;

    v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v81 = *(v6 + 30);
    *(v6 + 30) = v80;

    v82 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v83 = *(v6 + 25);
    *(v6 + 25) = v82;

    v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v85 = *(v6 + 21);
    *(v6 + 21) = v84;

    v88 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v86, v87);
    *(v6 + 13) = objc_msgSend_isInternalInstall(v88, v89, v90);

    *(v6 + 15) = 0;
    if (v3)
    {
      v93 = objc_msgSend_sharedController(IMDaemonController, v91, v92);
      v96 = objc_msgSend_listener(v93, v94, v95);
      objc_msgSend_addHandler_(v96, v97, v6);

      v100 = objc_msgSend_sharedInstance(MEMORY[0x1E69A6160], v98, v99);
      objc_msgSend_addListener_(v100, v101, v6);
    }

    v102 = objc_msgSend_sharedInstance(IMChatHistoryController, v91, v92);
    v103 = dispatch_queue_create("IMChatRegistry.contactStoreQueue", 0);
    v104 = *(v6 + 7);
    *(v6 + 7) = v103;

    v105 = *(v6 + 7);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A834E3BC;
    block[3] = &unk_1E780FCB0;
    v108 = v6;
    dispatch_async(v105, block);
  }

  return v6;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, 0, 0);

  v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  v11 = objc_msgSend_listener(v8, v9, v10);
  objc_msgSend_removeHandler_(v11, v12, self);

  v13.receiver = self;
  v13.super_class = IMChatRegistry;
  [(IMChatRegistry *)&v13 dealloc];
}

- (IMDaemonProtocol)remoteDaemon
{
  v3 = objc_msgSend_daemonController(self, a2, v2);
  v6 = objc_msgSend_remoteDaemon(v3, v4, v5);

  return v6;
}

- (void)_verifyChatMergeWithChat:(id)a3 dictionary:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v8 = v6;
  if (v5 && v6)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"style");
    v12 = objc_msgSend_intValue(v9, v10, v11);

    v15 = objc_msgSend_chatStyle(v5, v13, v14);
    v17 = v15 != v12;
    if (v15 == v12)
    {
      v29 = 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v21 = objc_msgSend_guid(v5, v19, v20);
          *buf = 138412802;
          v80 = v21;
          v81 = 1024;
          *v82 = objc_msgSend_chatStyle(v5, v22, v23);
          *&v82[4] = 1024;
          *&v82[6] = v12;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "**WARNING** Incorrectly attempting to register dictionary to chat %@ with style %c (expected %c)", buf, 0x18u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v27 = objc_msgSend___im_copyChatDictionaryWithRedactedMessageContent(v8, v25, v26);
          *buf = 138412290;
          v80 = v27;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Dictionary: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v80 = v5;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Registering with chat: %@", buf, 0xCu);
        }
      }

      v29 = @"Mismatched chat style";
    }

    v30 = objc_msgSend_objectForKeyedSubscript_(v8, v16, @"participants");
    v33 = objc_msgSend_participants(v5, v31, v32);
    v36 = objc_msgSend_count(v33, v34, v35);
    LOBYTE(v36) = v36 == objc_msgSend_count(v30, v37, v38);

    if ((v36 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v44 = objc_msgSend_guid(v5, v42, v43);
          v47 = objc_msgSend_participants(v5, v45, v46);
          *buf = 138412802;
          v80 = v44;
          v81 = 2112;
          *v82 = v47;
          *&v82[8] = 2112;
          v83 = v30;
          _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "**WARNING** Incorrectly attempting to register dictionary to chat %@ with participants %@ (expected %@)", buf, 0x20u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v51 = objc_msgSend___im_copyChatDictionaryWithRedactedMessageContent(v8, v49, v50);
          *buf = 138412290;
          v80 = v51;
          _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "Dictionary: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v80 = v5;
          _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "Registering with chat: %@", buf, 0xCu);
        }
      }

      v17 = 1;
      v29 = @"Mismatched participant count";
    }

    v53 = objc_msgSend_participants(v5, v39, v40);
    v56 = objc_msgSend_count(v53, v54, v55) == 0;

    if (v56)
    {
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v62 = objc_msgSend_guid(v5, v60, v61);
          *buf = 138412546;
          v80 = v62;
          v81 = 2112;
          *v82 = v30;
          _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, "**WARNING** Zero participants in chat %@ (dictionary has %@)", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v66 = objc_msgSend___im_copyChatDictionaryWithRedactedMessageContent(v8, v64, v65);
          *buf = 138412290;
          v80 = v66;
          _os_log_impl(&dword_1A823F000, v63, OS_LOG_TYPE_INFO, "Dictionary: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v67 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v80 = v5;
          _os_log_impl(&dword_1A823F000, v67, OS_LOG_TYPE_INFO, "Registering with chat: %@", buf, 0xCu);
        }
      }

      v29 = @"Zero participants";
    }

    else if (!v17)
    {
LABEL_52:

      goto LABEL_53;
    }

    v69 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v57, v58);
    v70 = MEMORY[0x1E696ABC0];
    if (v29)
    {
      v71 = v29;
    }

    else
    {
      v71 = @"Generic merge error";
    }

    v77 = *MEMORY[0x1E696A278];
    v78 = v71;
    v72 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v68, &v78, &v77, 1);
    v74 = objc_msgSend_errorWithDomain_code_userInfo_(v70, v73, @"com.apple.Messages.IMChatRegistryErrorDomain", 2, v72);
    objc_msgSend_forceAutoBugCaptureWithSubType_errorPayload_(v69, v75, @"Invalid Chat Merge", v74);

    goto LABEL_52;
  }

LABEL_53:

  v76 = *MEMORY[0x1E69E9840];
}

- (void)_registerChatDictionary:(id)a3 forChat:(id)a4 isIncoming:(BOOL)a5 newGUID:(id)a6 shouldPostNotification:(BOOL)a7
{
  v7 = a7;
  v171 = a5;
  v199 = *MEMORY[0x1E69E9840];
  v179 = a3;
  v11 = a4;
  v12 = a6;
  if (!objc_msgSend__shouldRegisterChat(v11, v13, v14))
  {
    goto LABEL_109;
  }

  v169 = v7;
  v177 = v12;
  if ((IMAdditionalChatRegistryLoggingEnabled() & 1) != 0 || !self->_firstLoad)
  {
    v17 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v191 = v177;
      v192 = 1024;
      *v193 = v171;
      *&v193[4] = 1024;
      *&v193[6] = v7;
      *v194 = 2112;
      *&v194[2] = v11;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Registering dictionary for with newGUID: %@ isIncoming: %{BOOL}d shouldPostNotification: %{BOOL}d chat: %@", buf, 0x22u);
    }
  }

  v18 = objc_msgSend_account(v11, v15, v16);
  v175 = objc_msgSend_uniqueID(v18, v19, v20);

  v178 = objc_msgSend_chatIdentifier(v11, v21, v22);
  v174 = objc_msgSend_chatStyle(v11, v23, v24);
  if (v177)
  {
    v176 = v177;
  }

  else
  {
    v176 = objc_msgSend_guid(v11, v25, v26);
  }

  key = objc_msgSend_groupID(v11, v27, v28);
  if (v179)
  {
    v30 = objc_msgSend_objectForKey_(v179, v29, @"accountID");

    if (!v176)
    {
      v176 = objc_msgSend_objectForKey_(v179, v31, @"guid");
    }

    v32 = objc_msgSend_objectForKey_(v179, v31, @"chatIdentifier");

    v34 = objc_msgSend_objectForKey_(v179, v33, @"style");
    v174 = objc_msgSend_intValue(v34, v35, v36);

    v178 = v32;
    v175 = v30;
  }

  objc_msgSend__verifyChatMergeWithChat_dictionary_(self, v29, v11);
  if (v177)
  {
    v188 = 0;
    IMComponentsFromChatGUID();
    v37 = 0;
    if (objc_msgSend_length(v37, v38, v39))
    {
      v40 = v37;

      v178 = v40;
    }
  }

  v173 = IMCopyThreadNameForChat();
  if (!v173)
  {
    v48 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v51 = objc_msgSend_guid(v11, v49, v50);
      *buf = 138412290;
      v191 = v51;
      _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_DEFAULT, " => empty thread name for guid %@", buf, 0xCu);
    }

    goto LABEL_105;
  }

  v170 = objc_msgSend_objectForKey_(self->_chatGUIDToChatMap, v41, v176);

  if (v11)
  {
    chatGUIDToChatMap = self->_chatGUIDToChatMap;
    v45 = objc_msgSend_guid(v11, v42, v43);
    v47 = objc_msgSend_objectForKey_(chatGUIDToChatMap, v46, v45);
    v168 = v47 != 0;
  }

  else
  {
    v168 = 0;
  }

  if (v174 == 43)
  {
    if (objc_msgSend_length(key, v42, v43))
    {
      v54 = objc_msgSend_objectForKey_(self->_groupIDToChatMap, v52, key);
      v55 = v54 == 0;

      if (v55)
      {
        v56 = v11;
        if (v11)
        {
          CFDictionarySetValue(self->_groupIDToChatMap, key, v56);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A84E1BEC();
        }
      }
    }

    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v57 = objc_msgSend_domainIdentifiers(v11, v52, v53);
    v60 = objc_msgSend_allIdentifiers(v57, v58, v59);

    v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v184, v198, 16);
    if (v63)
    {
      v64 = *v185;
      v65 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v185 != v64)
          {
            objc_enumerationMutation(v60);
          }

          v67 = *(*(&v184 + 1) + 8 * i);
          v68 = objc_msgSend_objectForKey_(self->_groupIDToChatMap, v62, v67);
          v69 = v68 == 0;

          if (v69)
          {
            v70 = v11;
            if (v11)
            {
              CFDictionarySetValue(self->_groupIDToChatMap, v67, v70);
            }

            else
            {
              v71 = v65;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v191 = v67;
                v192 = 2080;
                *v193 = "_groupIDToChatMap";
                _os_log_error_impl(&dword_1A823F000, v65, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
              }
            }
          }
        }

        v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v62, &v184, v198, 16);
      }

      while (v63);
    }
  }

  if (v170)
  {
    goto LABEL_106;
  }

  v72 = objc_msgSend_guid(v11, v42, v43);
  if (objc_msgSend_isEqualToString_(v72, v73, v176))
  {
    isInternalInstall = 0;
  }

  else
  {
    v77 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v74, v75);
    isInternalInstall = objc_msgSend_isInternalInstall(v77, v78, v79);
  }

  v82 = objc_msgSend_chatIdentifier(v11, v80, v81);
  v83 = v82 == 0;

  if (v83)
  {
    v89 = 0;
  }

  else
  {
    v86 = objc_msgSend_chatIdentifier(v11, v84, v85);
    v88 = objc_msgSend_containsString_(v176, v87, v86);

    v89 = v88 ^ 1;
  }

  v90 = isInternalInstall ^ 1;
  if (v174 != 43)
  {
    v90 = 1;
  }

  if (v90)
  {
    if (v174 == 45)
    {
      v125 = isInternalInstall;
    }

    else
    {
      v125 = 0;
    }

    if (v125 != 1)
    {
      goto LABEL_84;
    }

    v106 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v127 = objc_msgSend_objectForKey_(v179, v126, *MEMORY[0x1E69A6C68]);
      v130 = objc_msgSend_guid(v11, v128, v129);
      v133 = objc_msgSend_personCentricID(v11, v131, v132);
      *buf = 138413314;
      v191 = v176;
      v192 = 2112;
      *v193 = v127;
      *&v193[8] = 2048;
      *v194 = v11;
      *&v194[8] = 2112;
      v195 = v130;
      v196 = 2112;
      v197 = v133;
      _os_log_impl(&dword_1A823F000, v106, OS_LOG_TYPE_DEFAULT, "Registering chat with guid: %@ and personID %@ for chat %p with guid %@ and personID %@", buf, 0x34u);
    }
  }

  else
  {
    v91 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v94 = objc_msgSend_guid(v11, v92, v93);
      v97 = objc_msgSend_groupID(v11, v95, v96);
      *buf = 138413314;
      v191 = v176;
      v192 = 2112;
      *v193 = key;
      *&v193[8] = 2048;
      *v194 = v11;
      *&v194[8] = 2112;
      v195 = v94;
      v196 = 2112;
      v197 = v97;
      _os_log_impl(&dword_1A823F000, v91, OS_LOG_TYPE_DEFAULT, "Registering chat with guid: %@ groupID: %@ for chat %p with guid %@ groupID: %@ ", buf, 0x34u);
    }

    if (!v89)
    {
      goto LABEL_84;
    }

    v99 = objc_msgSend_objectForKey_(v179, v98, @"participants");
    v100 = objc_alloc(MEMORY[0x1E695DF70]);
    v103 = objc_msgSend_count(v99, v101, v102);
    v105 = objc_msgSend_initWithCapacity_(v100, v104, v103);
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v106 = v99;
    v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v107, &v180, v189, 16);
    if (v109)
    {
      v110 = *v181;
      v111 = *MEMORY[0x1E69A6310];
      do
      {
        for (j = 0; j != v109; ++j)
        {
          if (*v181 != v110)
          {
            objc_enumerationMutation(v106);
          }

          v113 = objc_msgSend_objectForKey_(*(*(&v180 + 1) + 8 * j), v108, v111);
          if (objc_msgSend_length(v113, v114, v115))
          {
            objc_msgSend_addObject_(v105, v116, v113);
          }

          else
          {
            v117 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v117, OS_LOG_TYPE_DEFAULT, "Skipping an participant with empty ID!", buf, 2u);
            }
          }
        }

        v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v108, &v180, v189, 16);
      }

      while (v109);
    }

    v118 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v191 = v105;
      _os_log_impl(&dword_1A823F000, v118, OS_LOG_TYPE_DEFAULT, "participants of chat we are registering %@", buf, 0xCu);
    }

    v119 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v122 = objc_msgSend_participants(v11, v120, v121);
      v124 = objc_msgSend_arrayByApplyingSelector_(v122, v123, "ID");
      *buf = 138412290;
      v191 = v124;
      _os_log_impl(&dword_1A823F000, v119, OS_LOG_TYPE_DEFAULT, "participants of existing chat %@", buf, 0xCu);
    }
  }

LABEL_84:
  v134 = v11;
  if (v11)
  {
    CFDictionarySetValue(self->_chatGUIDToChatMap, v176, v134);
  }

  else
  {
    v135 = MEMORY[0x1E69E9C10];
    v136 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1C68();
    }
  }

  v137 = v173;
  CFDictionarySetValue(self->_chatGUIDToCurrentThreadMap, v176, v137);

  v138 = v134;
  if (v11)
  {
    CFDictionarySetValue(self->_threadNameToChatMap, v137, v138);
  }

  else
  {
    v139 = MEMORY[0x1E69E9C10];
    v140 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1CE4();
    }
  }

  v143 = objc_msgSend_personCentricID(v138, v141, v142);
  v144 = v143 == 0;

  if (v144)
  {
    objc_msgSend__updatePersonCentricIDForChat_(self, v145, v138);
  }

  if ((objc_msgSend_containsObjectIdenticalTo_(self->_cachedChatsInThreadNameMap, v145, v138) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_cachedChatsInThreadNameMap, v146, v138);
  }

  if (v171)
  {
    v148 = objc_alloc(MEMORY[0x1E696AD98]);
    v48 = objc_msgSend_initWithBool_(v148, v149, 1);

    v150 = objc_alloc(MEMORY[0x1E695DF20]);
    v152 = objc_msgSend_initWithObjectsAndKeys_(v150, v151, v48, @"__kIMChatRegistryIsIncomingKey", 0);
  }

  else
  {
    v152 = 0;
    v48 = 0;
  }

  if (!v168 && ((objc_msgSend_isFirstLoad(self, v146, v147) | !v169) & 1) == 0)
  {
    v153 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v146, v147);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v153, v154, @"__kIMChatRegistryDidRegisterChatNotification", v138, v152);
  }

  objc_msgSend_verifyFiltering(v138, v146, v147);
  v157 = objc_msgSend__guids(v138, v155, v156);
  objc_msgSend_addObject_(v157, v158, v176);

  objc_msgSend_fetchBrandInfoIfNecessary(v138, v159, v160);
LABEL_105:

LABEL_106:
  if (objc_msgSend_chatStyle(v11, v42, v43) != 45)
  {
    v163 = objc_msgSend_participants(v11, v161, v162);
    v165 = objc_msgSend__sortedParticipantIDHashForParticipants_(self, v164, v163);
    objc_msgSend__addChat_participantSet_(self, v166, v11, v165);
  }

  v12 = v177;
LABEL_109:

  v167 = *MEMORY[0x1E69E9840];
}

- (void)unregisterChat:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "This call is deprecated, and doesn't do anything anymore, please file bugs if you need some behavior here", v5, 2u);
    }
  }
}

- (void)unregisterChatWithGUID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "This call is deprecated, and doesn't do anything anymore, please file bugs if you need some behavior here", v5, 2u);
    }
  }
}

- (void)_unregisterChat:(id)a3 deleted:(BOOL)a4 didClearUnreadCount:(BOOL)a5
{
  v6 = a4;
  v45[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (v10)
  {
    if (v6 && !a5)
    {
      v11 = objc_msgSend_unreadCountController(self, v8, v9);
      v14 = objc_msgSend_guid(v10, v12, v13);
      v45[0] = v14;
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v45, 1);
      objc_msgSend_chatsDeletedWithGUIDs_(v11, v17, v16);
    }

    v18 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v10;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Unregistering chat: %@", buf, 0xCu);
    }

    v21 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v19, v20);
    objc_msgSend___mainThreadPostNotificationName_object_(v21, v22, @"__kIMChatRegistryWillUnregisterChatNotification", v10);

    v24 = objc_msgSend_allGUIDsForChat_(self, v23, v10);
    objc_msgSend__clearMapsUsingChat_guids_(self, v25, v10, v24);
    objc_msgSend_didUnregisterFromRegistry_(v10, v26, self);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = v24;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v38, v42, 16);
    if (v31)
    {
      v32 = *v39;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(v27);
          }

          v34 = *(*(&v38 + 1) + 8 * i);
          v35 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v29, v30);
          objc_msgSend___mainThreadPostNotificationName_object_(v35, v36, @"__kIMChatRegistryDidUnregisterChatNotification", v34);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v38, v42, 16);
      }

      while (v31);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_clearMapsUsingChat:(id)a3 guids:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v35, v39, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        objc_msgSend_removeObjectForKey_(self->_chatGUIDToCurrentThreadMap, v10, v14);
        objc_msgSend_removeObjectForKey_(self->_chatGUIDToChatMap, v15, v14);
        objc_msgSend_removeObjectForKey_(self->_chatGUIDToiMessageSentOrReceivedMap, v16, v14);
        objc_msgSend_removeObjectForKey_(self->_chatGUIDToInfoMap, v17, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v35, v39, 16);
    }

    while (v11);
  }

  objc_msgSend_removeObjectIdenticalTo_(self->_allChatsInProcess, v10, v6);
  objc_msgSend_removeObjectIdenticalTo_(self->_cachedChatsInThreadNameMap, v18, v6);
  v20 = objc_msgSend_allKeysForObject_(self->_threadNameToChatMap, v19, v6);
  if (objc_msgSend_count(v20, v21, v22))
  {
    objc_msgSend_removeObjectsForKeys_(self->_threadNameToChatMap, v23, v20);
  }

  v24 = objc_msgSend_allKeysForObject_(self->_chatPersonIDToChatMap, v23, v6);
  if (objc_msgSend_count(v24, v25, v26))
  {
    objc_msgSend_removeObjectsForKeys_(self->_chatPersonIDToChatMap, v27, v24);
  }

  if (objc_msgSend_chatStyle(v6, v27, v28) == 43)
  {
    v30 = objc_msgSend_allKeysForObject_(self->_groupIDToChatMap, v29, v6);
    if (objc_msgSend_count(v30, v31, v32))
    {
      objc_msgSend_removeObjectsForKeys_(self->_groupIDToChatMap, v33, v30);
    }

    objc_msgSend__removeFromGroupParticipantToChatsMap_(self, v33, v6);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)generateUnusedChatIdentifierForGroupChatWithAccount:(id)a3
{
  v4 = MEMORY[0x1E69A7F78];
  v5 = objc_msgSend_service(a3, a2, a3);
  v8 = objc_msgSend_internalName(v5, v6, v7);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A83503E8;
  v12[3] = &unk_1E7811040;
  v12[4] = self;
  v10 = objc_msgSend_generateUnusedChatIdentifierForGroupChatWithServiceName_chatWithChatIdentifierExists_(v4, v9, v8, v12);

  return v10;
}

- (BOOL)_hasChat:(id)a3 forService:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_chatIdentifier(v6, v8, v9);
  v13 = objc_msgSend_internalName(v7, v11, v12);
  objc_msgSend_chatStyle(v6, v14, v15);
  v16 = IMCopyAnyServiceGUIDForChat();

  v18 = objc_msgSend_objectForKey_(self->_chatGUIDToChatMap, v17, v16);
  v19 = v18 != 0;

  v22 = objc_msgSend_iMessageService(IMServiceImpl, v20, v21);

  if (v22 == v7 && v18)
  {
    chatGUIDToiMessageSentOrReceivedMap = self->_chatGUIDToiMessageSentOrReceivedMap;
    v26 = objc_msgSend_guid(v6, v23, v24);
    v28 = objc_msgSend_objectForKey_(chatGUIDToiMessageSentOrReceivedMap, v27, v26);
    v19 = v28 != 0;

    v29 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = v6;
      _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEFAULT, "iMessage map had entry for %@", &v32, 0xCu);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)_setChatHasCommunicatedOveriMessage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    chatGUIDToiMessageSentOrReceivedMap = self->_chatGUIDToiMessageSentOrReceivedMap;
    v16 = v4;
    v8 = objc_msgSend_guid(v4, v5, v6);
    v10 = objc_msgSend_objectForKey_(chatGUIDToiMessageSentOrReceivedMap, v9, v8);

    v4 = v16;
    if (!v10)
    {
      v13 = self->_chatGUIDToiMessageSentOrReceivedMap;
      v14 = objc_msgSend_guid(v16, v11, v12);
      objc_msgSend_setObject_forKey_(v13, v15, v16, v14);

      v4 = v16;
    }
  }
}

- (void)_setSimulatedChats:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_simulatedChats, a3);
  if (!self->_simulatedChatGUIDToChatMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    simulatedChatGUIDToChatMap = self->_simulatedChatGUIDToChatMap;
    self->_simulatedChatGUIDToChatMap = Mutable;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A835073C;
  v9[3] = &unk_1E78133D0;
  v9[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v6, v9);
}

- (void)_removeFromGroupParticipantToChatsMap:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = objc_msgSend_allKeys(self->_groupParticipantToChatsMap, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v29, v37, 16);
  if (v10)
  {
    v12 = v10;
    v13 = 0;
    v14 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = objc_msgSend_objectForKey_(self->_groupParticipantToChatsMap, v11, v16);
        if (objc_msgSend_containsObject_(v17, v18, v4))
        {
          objc_msgSend_removeObject_(v17, v19, v4);
          ++v13;
          if (!objc_msgSend_count(v17, v20, v21))
          {
            objc_msgSend_addObject_(v5, v22, v16);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v29, v37, 16);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v23 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_msgSend_count(v5, v24, v25);
    *buf = 134218240;
    v34 = v13;
    v35 = 2048;
    v36 = v26;
    _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Removed chat from %lu entries, and clearing %lu keys, from Group Participants cache", buf, 0x16u);
  }

  objc_msgSend_removeObjectsForKeys_(self->_groupParticipantToChatsMap, v27, v5);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)_addChat:(id)a3 participantSet:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = a4;
  if (v8)
  {
    v11 = objc_msgSend_objectForKey_(self->_groupParticipantToChatsMap, v7, v8);
    if (!v11)
    {
      v11 = objc_msgSend_set(MEMORY[0x1E695DFA8], v9, v10);
      objc_msgSend_setObject_forKey_(self->_groupParticipantToChatsMap, v12, v11, v8);
    }

    objc_msgSend_addObject_(v11, v9, v6);
    if (!self->_firstLoad)
    {
      v13 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_msgSend_guid(v6, v14, v15);
        v18 = 138412802;
        v19 = v16;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Added chat %@ to chatsForParticipant[%@], now %@", &v18, 0x20u);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_sortedParticipantIDHashForParticipants:(id)a3 usesPersonCentricID:(BOOL)a4 fallbackToContactID:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (IMAdditionalChatRegistryLoggingEnabled())
  {
    v8 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v7;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Incoming list of participants to get sorted and hashed: %@", buf, 0xCu);
    }
  }

  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v12 = objc_msgSend_count(v7, v10, v11);
  v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = v7;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v45, v49, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v46;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v45 + 1) + 8 * i);
        v24 = objc_msgSend_personCentricID(v23, v18, v19, v45);
        v27 = objc_msgSend_length(v24, v25, v26);

        if (v27)
        {
          v30 = !v6;
        }

        else
        {
          v30 = 1;
        }

        if (v30)
        {
          v31 = objc_msgSend__contactID(v23, v28, v29);
          v34 = objc_msgSend_length(v31, v32, v33);

          if (v34)
          {
            v37 = !v5;
          }

          else
          {
            v37 = 1;
          }

          if (v37)
          {
            v38 = objc_msgSend_ID(v23, v35, v36);

            if (!v38)
            {
              continue;
            }

            v39 = objc_msgSend_ID(v23, v18, v19);
          }

          else
          {
            v39 = objc_msgSend__contactID(v23, v35, v36);
          }
        }

        else
        {
          v39 = objc_msgSend_personCentricID(v23, v28, v29);
        }

        v41 = v39;
        objc_msgSend_addObject_(v14, v40, v39);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v45, v49, 16);
    }

    while (v20);
  }

  v42 = IMSHA1HashFromStrings();

  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

- (void)_handleTranslationEnabledChangedNotification:(id)a3
{
  v23 = a3;
  v6 = objc_msgSend_loading(self, v4, v5);
  if ((v6 & 1) == 0)
  {
    v8 = objc_msgSend_object(v23, v23, v7);
    v11 = v8;
    if (v8)
    {
      objc_msgSend__reloadChatItemsForTranslationEnabledChange(v8, v9, v10);
      v13 = objc_msgSend_participantsWithState_(v11, v12, 16);
      v15 = objc_msgSend___imArrayByApplyingBlock_(v13, v14, &unk_1F1B6EF40);

      v18 = objc_msgSend_sharedMetrics(MEMORY[0x1E69A8310], v16, v17);
      v21 = objc_msgSend_translationLanguageCode(v11, v19, v20);
      objc_msgSend_logLanguageCode_forHandles_(v18, v22, v21, v15);
    }
  }

  MEMORY[0x1EEE66BB8](v6);
}

- (void)_handleTranslationLanguageStatusChangedNotification:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = objc_msgSend_chatGUIDToChatMap(self, a2, a3, 0);
  v6 = objc_msgSend_allValues(v3, v4, v5);

  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v20, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_isAutomaticTranslationEnabled(v14, v9, v10))
        {
          objc_msgSend__reloadChatItemsForTranslationLanguageStatusChange(v14, v9, v10);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v16, v20, 16);
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_handleTranslationSupportChangedNotification:(id)a3
{
  v3 = objc_msgSend_object(a3, a2, a3);
  if (v3)
  {
    v6 = v3;
    objc_msgSend__reloadChatItemsForTranslationEnabledChange(v3, v4, v5);
    v3 = v6;
  }
}

- (void)_handleChatParticipantsDidChange:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_object(v4, v5, v6);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v72 = 138412290;
      v73 = v7;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Participants changed in [%@]", &v72, 0xCu);
    }
  }

  if (v7)
  {
    objc_msgSend_invalidateHasKnownParticipantsCache(v7, v8, v9);
    chatGUIDToChatMap = self->_chatGUIDToChatMap;
    v14 = objc_msgSend_guid(v7, v12, v13);
    v16 = objc_msgSend_objectForKey_(chatGUIDToChatMap, v15, v14);
    LOBYTE(chatGUIDToChatMap) = v16 == 0;

    if ((chatGUIDToChatMap & 1) == 0)
    {
      if (objc_msgSend_chatStyle(v7, v17, v18) == 45)
      {
        v21 = objc_msgSend_recipient(v7, v19, v20);
        v24 = objc_msgSend_ID(v21, v22, v23);
        v27 = objc_msgSend_account(v7, v25, v26);
        v30 = objc_msgSend_uniqueID(v27, v28, v29);
        v31 = IMCopyThreadNameForChat();

        chatGUIDToCurrentThreadMap = self->_chatGUIDToCurrentThreadMap;
        v35 = objc_msgSend_guid(v7, v33, v34);
        v37 = objc_msgSend_objectForKey_(chatGUIDToCurrentThreadMap, v36, v35);

        isEqualToString = objc_msgSend_isEqualToString_(v31, v38, v37);
        if (v31)
        {
          v41 = isEqualToString;
        }

        else
        {
          v41 = 1;
        }

        if ((v41 & 1) == 0)
        {
          objc_msgSend_setObject_forKey_(self->_threadNameToChatMap, v40, v7, v31);
          if ((objc_msgSend_containsObjectIdenticalTo_(self->_cachedChatsInThreadNameMap, v42, v7) & 1) == 0)
          {
            objc_msgSend_addObject_(self->_cachedChatsInThreadNameMap, v43, v7);
          }

          v45 = self->_chatGUIDToCurrentThreadMap;
          v46 = objc_msgSend_guid(v7, v43, v44);
          objc_msgSend_setObject_forKey_(v45, v47, v31, v46);

          v48 = self->_chatGUIDToChatMap;
          v51 = objc_msgSend_guid(v7, v49, v50);
          objc_msgSend_setObject_forKey_(v48, v52, v7, v51);
        }
      }

      else
      {
        objc_msgSend__removeFromGroupParticipantToChatsMap_(self, v19, v7);
        v55 = objc_msgSend_participants(v7, v53, v54);
        v31 = objc_msgSend__sortedParticipantIDHashForParticipants_(self, v56, v55);

        objc_msgSend__addChat_participantSet_(self, v57, v7, v31);
        v58 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v61 = objc_msgSend_participants(v7, v59, v60);
          v72 = 138412546;
          v73 = v31;
          v74 = 2112;
          v75 = v61;
          _os_log_impl(&dword_1A823F000, v58, OS_LOG_TYPE_DEFAULT, "New participantIDHash %@ based on %@", &v72, 0x16u);
        }

        v64 = objc_msgSend_personCentricID(v7, v62, v63);
        v65 = v64 == 0;

        if (!v65)
        {
          objc_msgSend__updatePersonCentricIDForChat_(self, v66, v7);
        }
      }

      v69 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v67, v68);
      objc_msgSend_postNotificationName_object_userInfo_(v69, v70, @"__kIMChatMultiWayStateChangedNotification", v7, 0);
    }
  }

  v71 = *MEMORY[0x1E69E9840];
}

- (void)_updatePersonCentricIDForChat:(id)a3
{
  v14 = a3;
  v6 = objc_msgSend_contactStore(self, v4, v5);
  isBatchFetchingForLaunchCompleted = objc_msgSend_isBatchFetchingForLaunchCompleted(v6, v7, v8);

  if (isBatchFetchingForLaunchCompleted)
  {
    v12 = objc_msgSend__generatePersonCentricID(v14, v10, v11);
    objc_msgSend__updatePersonCentricIDToChatMapForChat_toNewPersonCentricID_(self, v13, v14, v12);
  }
}

- (void)_updatePersonCentricIDToChatMapForChat:(id)a3 toNewPersonCentricID:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_personCentricID(v6, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_chatPersonIDToChatMap(self, v10, v11);
    objc_msgSend_removeObjectForKey_(v13, v14, v12);
  }

  objc_msgSend_setPersonCentricID_(v6, v10, v7);
  v17 = v6;
  if (v17)
  {
    v18 = objc_msgSend_chatPersonIDToChatMap(self, v15, v16);
    CFDictionarySetValue(v18, v7, v17);
  }

  v19 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = v12;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "Updated personCentricID from %@ to %@ for chat %@", &v21, 0x20u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_handleAddressBookChange:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_userInfo(a3, a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, *MEMORY[0x1E69A6868]);

  v9 = objc_msgSend_cachedChats(self, v7, v8);
  v12 = objc_msgSend_copy(v9, v10, v11);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v12;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v24, v28, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v24 + 1) + 8 * i);
        objc_msgSend_invalidateHasKnownParticipantsCache(v21, v16, v17, v24);
        objc_msgSend__handleAddressBookChangeForRecipientUID_(v21, v22, v6);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v24, v28, 16);
    }

    while (v18);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_ownerHandleStringsFromSubscription:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_ownerHandles(a3, a2, a3);
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v22, v26, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_handleString(*(*(&v22 + 1) + 8 * i), v8, v9, v22);
        if (objc_msgSend_length(v13, v14, v15))
        {
          objc_msgSend_addObject_(v4, v16, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v22, v26, 16);
    }

    while (v10);
  }

  v19 = objc_msgSend_array(v4, v17, v18);

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)chatsWithMyself
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = objc_msgSend_sharedInstance(IMAccountController, v3, v4, 0);
  v8 = objc_msgSend_accounts(v5, v6, v7);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v42, v46, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v43;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = objc_msgSend_sharedRegistry(IMChatRegistry, v11, v12);
        v20 = objc_msgSend_loginIMHandle(v16, v18, v19);
        v22 = objc_msgSend__cachedChatWithHandle_(v17, v21, v20);

        if (objc_msgSend_chatStyle(v22, v23, v24) == 45)
        {
          v27 = objc_msgSend_participants(v22, v25, v26);
          v30 = objc_msgSend_count(v27, v28, v29);

          if (v30 <= 1)
          {
            v33 = objc_msgSend_recipient(v22, v31, v32);
            if (objc_msgSend_matchesLoginHandleForAnyAccount(v33, v34, v35))
            {
              objc_msgSend_addObject_(v2, v36, v22);
            }
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v42, v46, 16);
    }

    while (v13);
  }

  v39 = objc_msgSend_copy(v2, v37, v38);
  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)_chatsMatchingHandles:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v36, v45, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v37;
    v12 = 0x1E695D000uLL;
    *&v9 = 138412290;
    v33 = v9;
    do
    {
      v13 = 0;
      v34 = v10;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v44 = v14;
        v15 = objc_msgSend_arrayWithObjects_count_(*(v12 + 3784), v8, &v44, 1, v33);
        v17 = objc_msgSend_existingChatWithAddresses_allowAlternativeService_bestHandles_(self, v16, v15, 0, 0);
        v18 = IMChatRegistryLogHandle();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v19)
          {
            objc_msgSend_guid(v17, v20, v21);
            v22 = v11;
            v23 = self;
            v24 = v5;
            v26 = v25 = v12;
            *buf = 138412546;
            v41 = v26;
            v42 = 2112;
            v43 = v14;
            _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "_chatsMatchingHandles: Found existing 1-1 chat %@ matching owner handle: %@", buf, 0x16u);

            v12 = v25;
            v5 = v24;
            self = v23;
            v11 = v22;
            v10 = v34;
          }

          objc_msgSend_addObject_(v5, v27, v17);
        }

        else
        {
          if (v19)
          {
            *buf = v33;
            v41 = v14;
            _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "_chatsMatchingHandles: Did not find any existing 1-1 chat matching owner handle: %@", buf, 0xCu);
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v36, v45, 16);
    }

    while (v10);
  }

  v30 = objc_msgSend_copy(v5, v28, v29);
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (void)_handleKeyTransparencyStatusChangedNotification:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isKeyTransparencyEnabled = objc_msgSend_isKeyTransparencyEnabled(v7, v8, v9);

  if (isKeyTransparencyEnabled)
  {
    v13 = objc_msgSend_userInfo(v4, v11, v12);
    v15 = objc_msgSend_objectForKey_(v13, v14, @"__kIMChatKTStatusChangedAffectedHandlesKey");
    v18 = objc_msgSend_copy(v15, v16, v17);

    if (!objc_msgSend_count(v18, v19, v20))
    {
      v31 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_DEFAULT, "Received handle key transparency status changed notification with no information about impacted handles", v44, 2u);
      }

      goto LABEL_14;
    }

    v23 = objc_msgSend_object(v4, v21, v22);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v27 = objc_msgSend_object(v4, v25, v26);
    v30 = v27;
    if (isKindOfClass)
    {
      if (!v27)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v34 = objc_msgSend_count(v18, v32, v33);

      if (v34 != 1)
      {
        goto LABEL_14;
      }

      v37 = objc_msgSend_object(v4, v35, v36);
      v40 = objc_msgSend_firstObject(v18, v38, v39);
      v42 = objc_msgSend_existingIMHandleWithID_(v37, v41, v40);

      v30 = objc_msgSend_existingChatWithHandle_(self, v43, v42);

      if (!v30)
      {
        goto LABEL_14;
      }
    }

    objc_msgSend__reloadChatItemsForKeyTransparencyStatusChange(v30, v28, v29);
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_handleChatBotPropertiesDidChangeNotification:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v6 = objc_msgSend_userInfo(v39, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"brandInfo");

  if (v8)
  {
    v11 = objc_msgSend_brandURI(v8, v9, v10);
    v14 = objc_msgSend___im_stripSip(v11, v12, v13);
    v16 = objc_msgSend_cachedChatsWithIdentifier_(self, v15, v14);

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = v16;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v40, v46, 16);
    if (v21)
    {
      v22 = *v41;
      v23 = *MEMORY[0x1E69A6A60];
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v25 = *(*(&v40 + 1) + 8 * i);
          v26 = objc_msgSend_brandInfo(v25, v19, v20);
          v27 = v26 == 0;

          if (v27)
          {
            if (IMOSLoggingEnabled())
            {
              v30 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v33 = objc_msgSend_chatIdentifier(v25, v31, v32);
                *buf = 138412290;
                v45 = v33;
                _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "ChatBot Brand - Caching chatbot brand for %@", buf, 0xCu);
              }
            }

            v34 = objc_msgSend_dictionaryRepresentation(v8, v28, v29);
            v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, v23);
            objc_msgSend_setValue_forChatProperty_(v25, v37, v36, v23);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v40, v46, 16);
      }

      while (v21);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)updateBrandLogo:(id)a3 transferGuid:(id)a4 chatIdentifier:(id)a5
{
  v90 = *MEMORY[0x1E69E9840];
  v73 = a3;
  v78 = a4;
  v72 = a5;
  if ((IMIsRunningInMessagesUIProcess() & 1) == 0 && (IMIsRunningInMessagesAssistantExtension() & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_42;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v86 = v72;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "ChatBot Logo - Client is not a UI process, skip saving logo data for %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (v73 && (objc_msgSend_brandLogoDataFromChatIdentifier_(self, v7, v72), v8 = objc_claimAutoreleasedReturnValue(), isEqualToData = objc_msgSend_isEqualToData_(v73, v9, v8), v8, (isEqualToData & 1) == 0))
  {
    v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v11, v12);
    v18 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v16, v17, *MEMORY[0x1E69A6FF8]);
    v71 = objc_msgSend_path(v18, v19, v20);

    v22 = v71;
    if (v71)
    {
      objc_msgSend_writeToFile_atomically_(v73, v21, v71, 1);
      v70 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v23, v71, 0);
      v26 = objc_msgSend_sharedInstance(IMFileTransferCenter, v24, v25);
      v28 = v26;
      if (v78)
      {
        objc_msgSend_createNewOutgoingFileTransferWithTransferGUID_localFileURL_(v26, v27, v78, v70);

        v75 = v78;
        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v86 = v78;
            _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "ChatBot Logo - Existing transferGuid %@ from relay", buf, 0xCu);
          }

          v75 = v78;
        }
      }

      else
      {
        v75 = objc_msgSend_createNewOutgoingGroupPhotoTransferWithLocalFileURL_(v26, v27, v70);

        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v86 = v75;
            _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "ChatBot Logo - Generating a new transferGuid %@", buf, 0xCu);
          }
        }
      }

      v33 = objc_msgSend_sharedInstance(IMFileTransferCenter, v29, v30);
      v69 = objc_msgSend_transferForGUID_(v33, v34, v75);

      if (v69)
      {
        v37 = objc_msgSend_sharedInstance(IMFileTransferCenter, v35, v36);
        objc_msgSend_registerTransferWithDaemon_(v37, v38, v75);

        objc_msgSend__updateBrandLogoGuid_chatIdentifier_(self, v39, v75, v72);
      }

      obj = objc_msgSend_cachedChatsWithIdentifier_(self, v35, v72);
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v79, v89, 16);
      if (v42)
      {
        v43 = *v80;
        v74 = *MEMORY[0x1E696A278];
        v44 = MEMORY[0x1E69A7A00];
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v80 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v79 + 1) + 8 * i);
            if (objc_msgSend__serviceSupportsCapability_(v46, v41, *v44))
            {
              objc_msgSend__chat_updateBrandLogo_(self, v47, v46, v75);
            }

            else
            {
              v49 = IMLogHandleForCategory();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v61 = objc_msgSend_account(v46, v50, v51);
                v64 = objc_msgSend_service(v61, v62, v63);
                v67 = objc_msgSend_name(v64, v65, v66);
                *buf = 138412546;
                v86 = v67;
                v87 = 2112;
                v88 = v46;
                _os_log_error_impl(&dword_1A823F000, v49, OS_LOG_TYPE_ERROR, "Chatbot is on an unexpected service: %@, chat: %@", buf, 0x16u);
              }

              v52 = MEMORY[0x1E696ABC0];
              v83 = v74;
              v84 = @"Chatbot is on an unexpected service.";
              v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v53, &v84, &v83, 1);
              v56 = objc_msgSend_errorWithDomain_code_userInfo_(v52, v55, @"UnexpectedServiceForChatBot", 5, v54);

              v59 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v57, v58);
              objc_msgSend_forceAutoBugCaptureWithSubType_errorPayload_(v59, v60, @"UnexpectedServiceForChatBot", v56);
            }

            if (v78)
            {
              objc_msgSend_fetchBrandInfoIfNecessary(v46, v41, v48);
            }
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v79, v89, 16);
        }

        while (v42);
      }

      v22 = v71;
    }

    else
    {
      v75 = v78;
    }

    v78 = v75;
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v86 = objc_msgSend_length(v73, v14, v15);
      v87 = 2112;
      v88 = v72;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "ChatBot Logo - Same data %lu is already stored, no need to update for %@", buf, 0x16u);
    }

LABEL_8:
  }

LABEL_42:

  v68 = *MEMORY[0x1E69E9840];
}

- (id)brandLogoDataFromChatIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_cachedChatsWithIdentifier_(self, a2, a3);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v18 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v15, v19, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = objc_msgSend_brandLogoData(*(*(&v15 + 1) + 8 * i), v6, v7, v15);
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v15, v19, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)brandLogoUrlFromChatIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_cachedChatsWithIdentifier_(self, a2, a3);
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v14 = objc_msgSend_brandLogoURL(*(*(&v17 + 1) + 8 * i), v8, v9, v17);
        if (v14)
        {
          objc_msgSend_addObject_(v4, v13, v14);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v17, v21, 16);
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_updateBrandLogoGuid:(id)a3 chatIdentifier:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v37 = a4;
  objc_msgSend_cachedChatsWithIdentifier_(self, v7, v37);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v8 = v40 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v39, v49, 16);
  if (v12)
  {
    v38 = *v40;
    v13 = *MEMORY[0x1E69A6A60];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v38)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v16 = objc_msgSend_brandInfo(v15, v10, v11);
        v19 = objc_msgSend_brandLogoGuid(v16, v17, v18);
        isEqualToString = objc_msgSend_isEqualToString_(v19, v20, v6);

        if ((isEqualToString & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v26 = objc_msgSend_guid(v15, v24, v25);
              v29 = objc_msgSend_brandLogoGuid(v16, v27, v28);
              *buf = 138412802;
              v44 = v26;
              v45 = 2112;
              v46 = v29;
              v47 = 2112;
              v48 = v6;
              _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "ChatBot Logo - Updated chatbot brand logo GUID in %@ properties, from %@ to %@", buf, 0x20u);
            }
          }

          objc_msgSend_setBrandLogoGuid_(v16, v22, v6);
          v32 = objc_msgSend_dictionaryRepresentation(v16, v30, v31);
          v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, v13);
          objc_msgSend_setValue_forChatProperty_(v15, v35, v34, v13);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v39, v49, 16);
    }

    while (v12);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 updateBrandLogo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = objc_msgSend_account(v6, v7, v8);
  v10 = IMCopyGUIDForChatOnAccount(v6, v9);

  IMComponentsFromChatGUID();
  v11 = 0;
  v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
  v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
  v20 = objc_msgSend_chatStyle(v6, v18, v19);
  v23 = objc_msgSend_account(v6, v21, v22);

  v26 = objc_msgSend_uniqueID(v23, v24, v25);
  objc_msgSend_sendBrandLogoUpdate_toChatID_identifier_style_account_(v17, v27, v5, v10, v11, v20, v26);
}

- (void)_handleOffGridChangedNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(a3, a2, a3);
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle off grid changed notification for subscription: %@", &v8, 0xCu);
  }

  objc_msgSend__handleStatusChangedForSubscription_(self, v6, v4);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleOffGridInvitationReceivedNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(a3, a2, a3);
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle off grid invitation received notification for subscription: %@", &v8, 0xCu);
  }

  objc_msgSend__handleStatusInvitationReceivedForSubscription_(self, v6, v4);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleOffGridStateChangedNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(a3, a2, a3);
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle off grid state changed notification for subscription: %@", &v8, 0xCu);
  }

  objc_msgSend__handleStatusStateChangedForSubscription_(self, v6, v4);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleAvailabilityChangedNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(a3, a2, a3);
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle availability changed notification for subscription: %@", &v8, 0xCu);
  }

  objc_msgSend__handleStatusChangedForSubscription_(self, v6, v4);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleAvailabilityInvitationReceivedNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(a3, a2, a3);
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle availability invitation received notification for subscription: %@", &v8, 0xCu);
  }

  objc_msgSend__handleStatusInvitationReceivedForSubscription_(self, v6, v4);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleAvailabilityStateChangedNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(a3, a2, a3);
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Received handle availability state changed notification for subscription: %@", &v8, 0xCu);
  }

  objc_msgSend__handleStatusStateChangedForSubscription_(self, v6, v4);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleStatusChangedForSubscription:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__chatsMatchingStatusSubscription_(self, a2, a3);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        isDisplayingUnavailabilityIndicator = objc_msgSend_isDisplayingUnavailabilityIndicator(v11, v6, v7);
        if (isDisplayingUnavailabilityIndicator != objc_msgSend_shouldDisplayUnavailabilityIndicator(v11, v13, v14))
        {
          objc_msgSend__reloadChatItemsForHandleAvailabilityChange(v11, v6, v7);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v16, v20, 16);
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_handleStatusInvitationReceivedForSubscription:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__chatsMatchingStatusSubscription_(self, a2, a3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend__reloadChatItemsForHandleAvailabilityChange(*(*(&v12 + 1) + 8 * v10++), v6, v7);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v12, v16, 16);
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleStatusStateChangedForSubscription:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__chatsMatchingStatusSubscription_(self, a2, a3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend__reloadChatItemsForHandleAvailabilityChange(*(*(&v12 + 1) + 8 * v10++), v6, v7);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v12, v16, 16);
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_chatsMatchingStatusSubscription:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_isPersonalStatusSubscription(v4, v5, v6))
  {
    v9 = objc_msgSend_chatsWithMyself(self, v7, v8);
    v10 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v9;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Status update is for personal channel. Found matching chats: %@", buf, 0xCu);
    }
  }

  else
  {
    v36 = v4;
    v11 = objc_msgSend__ownerHandleStringsFromSubscription_(self, v7, v4);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = v11;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v38, v47, 16);
    if (v37)
    {
      v15 = *v39;
      v16 = 0x1E695D000uLL;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v38 + 1) + 8 * i);
          v46 = v18;
          v19 = objc_msgSend_arrayWithObjects_count_(*(v16 + 3784), v14, &v46, 1);
          v21 = objc_msgSend_existingChatWithAddresses_allowAlternativeService_bestHandles_(self, v20, v19, 0, 0);
          v22 = IMChatRegistryLogHandle();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            if (v23)
            {
              objc_msgSend_guid(v21, v24, v25);
              v26 = v15;
              v27 = self;
              v28 = v12;
              v30 = v29 = v10;
              *buf = 138412546;
              v43 = v30;
              v44 = 2112;
              v45 = v18;
              _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "_chatsMatchingStatusSubscription: Found existing 1-1 chat %@ matching owner handle: %@", buf, 0x16u);

              v10 = v29;
              v12 = v28;
              self = v27;
              v15 = v26;
              v16 = 0x1E695D000;
            }

            objc_msgSend_addObject_(v12, v31, v21);
          }

          else
          {
            if (v23)
            {
              *buf = 138412290;
              v43 = v18;
              _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "_chatsMatchingStatusSubscription: Did not find any existing 1-1 chat matching owner handle: %@", buf, 0xCu);
            }
          }
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v14, &v38, v47, 16);
      }

      while (v37);
    }

    v9 = objc_msgSend_copy(v12, v32, v33);
    v4 = v36;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_unreadCountControllerUpdated:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v7, v8, v9);

  if (isUnreadCountRefactorEnabled)
  {
    v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
    objc_msgSend___mainThreadPostNotificationName_object_(v13, v14, @"__kIMChatRegistryUnreadCountChangedNotification", 0);

    v17 = objc_msgSend_userInfo(v4, v15, v16);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, *MEMORY[0x1E69A7DD8]);

    if (v19)
    {
      v22 = objc_msgSend_updatedReports(v19, v20, v21);
      v24 = objc_msgSend_arrayByApplyingSelector_(v22, v23, sel_guid);
      v27 = objc_msgSend_deletedGUIDs(v19, v25, v26);
      v29 = objc_msgSend_arrayByAddingObjectsFromArray_(v24, v28, v27);

      v32 = objc_msgSend_set(MEMORY[0x1E695DFA8], v30, v31);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v33 = v29;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v55, v60, 16);
      if (v35)
      {
        v37 = v35;
        v38 = *v56;
        do
        {
          v39 = 0;
          do
          {
            if (*v56 != v38)
            {
              objc_enumerationMutation(v33);
            }

            v41 = objc_msgSend__cachedChatWithGUID_(self, v36, *(*(&v55 + 1) + 8 * v39));
            if (v41)
            {
              objc_msgSend_addObject_(v32, v40, v41);
            }

            ++v39;
          }

          while (v37 != v39);
          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v55, v60, 16);
        }

        while (v37);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v42 = v32;
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v51, v59, 16);
      if (v44)
      {
        v47 = v44;
        v48 = *v52;
        do
        {
          v49 = 0;
          do
          {
            if (*v52 != v48)
            {
              objc_enumerationMutation(v42);
            }

            objc_msgSend__postNewUnreadCount(*(*(&v51 + 1) + 8 * v49++), v45, v46, v51);
          }

          while (v47 != v49);
          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v51, v59, 16);
        }

        while (v47);
      }
    }
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (unint64_t)unreadCount
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v4, v5, v6);

  if (!isUnreadCountRefactorEnabled)
  {
    return self->_unreadCount;
  }

  v10 = objc_msgSend_unreadCountController(self, v8, v9);
  v13 = objc_msgSend_unreadCount(v10, v11, v12);

  return v13;
}

- (id)activeCallForConversationUUID:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v4, v5, 0);
  v9 = objc_msgSend_currentVideoCalls(v6, v7, v8);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v30, v34, 16);
  if (v11)
  {
    v14 = v11;
    v15 = 0;
    v16 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v12, v13);
        v21 = objc_msgSend_activeConversationForCall_(v19, v20, v18);

        v24 = objc_msgSend_UUID(v21, v22, v23);
        isEqual = objc_msgSend_isEqual_(v24, v25, v3);

        if (isEqual)
        {
          v27 = v18;

          v15 = v27;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v30, v34, 16);
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_activeTUConversations
{
  v3 = objc_msgSend_conversationManager(self, a2, v2);
  v6 = objc_msgSend_activeConversations(v3, v4, v5);

  return v6;
}

- (id)_existingChatForTUConversation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = objc_msgSend_cachedChats(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v27, 16);
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (objc_msgSend_chatStyle(v14, v9, v10) == 43 && objc_msgSend_mapsToTUConversation_(v14, v9, v4))
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v24 = v14;
              v25 = 2112;
              v26 = v4;
              _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Found chat %@ for TUConversation %@", buf, 0x16u);
            }
          }

          v15 = v14;
          goto LABEL_16;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v19, v27, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_16:

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "stateChangedForConversation %@", &v11, 0xCu);
    }
  }

  objc_msgSend__postMultiWayStateChangedNotification_(self, v8, v7);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[IMChatRegistry(IMChatRegistry_CallManagement) conversationManager:activeRemoteParticipantsChangedForConversation:]";
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "activeRemoteParticipantsChangedForConversation %s", &v11, 0xCu);
    }
  }

  objc_msgSend__postMultiWayStateChangedNotification_(self, v8, v7);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "removedActiveConversation %@", &v11, 0xCu);
    }
  }

  objc_msgSend__postMultiWayStateChangedNotification_(self, v8, v7);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)conversationManager:(id)a3 activitySessionsChangedForConversation:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "activitySessionsChangedForConversation %@", &v11, 0xCu);
    }
  }

  objc_msgSend__postMultiWayStateChangedNotification_(self, v8, v7);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)conversationManager:(id)a3 remoteMembersChangedForConversation:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "remoteMembersChangedForConversation %@", &v11, 0xCu);
    }
  }

  objc_msgSend__postMultiWayStateChangedNotification_(self, v8, v7);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_postMultiWayStateChangedNotification:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_messagesGroupUUID(v3, v4, v5);
  v9 = objc_msgSend_UUIDString(v6, v7, v8);

  if (v9)
  {
    v28[0] = v9;
    v27[0] = @"__kIMChatMultiWayMessagesGroupID";
    v27[1] = @"__kIMChatMultiWayMessagesConversationUUID";
    v12 = objc_msgSend_UUID(v3, v10, v11);
    v28[1] = v12;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v28, v27, 2);
  }

  else
  {
    v14 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v21 = 138412802;
      v22 = @"__kIMChatMultiWayStateChangedNotification";
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "posting notification %@ for chat with groupID %@ and userInfo %@", &v21, 0x20u);
    }
  }

  v18 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
  objc_msgSend_postNotificationName_object_userInfo_(v18, v19, @"__kIMChatMultiWayStateChangedNotification", 0, v14);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)markChatsAsReadFilteredUsingPredicate:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_daemonController(self, v5, v6);
  v9 = objc_msgSend_synchronousRemoteDaemon(v11, v7, v8);
  objc_msgSend_markChatsAsReadFilteredUsingPredicate_(v9, v10, v4);
}

- (unint64_t)numberOfCachedChats
{
  v4 = objc_msgSend_simulatedChats(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    objc_msgSend_simulatedChats(self, v8, v9);
  }

  else
  {
    objc_msgSend_cachedChatsInThreadNameMap(self, v8, v9);
  }
  v10 = ;
  v13 = objc_msgSend_count(v10, v11, v12);

  return v13;
}

- (id)cachedChatsWithIdentifier:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1A8259C60;
  v13 = sub_1A825AF5C;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A83981C4;
  v8[3] = &unk_1E7813E38;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend__enumerateChatGUIDPermutationsForChatIdentifier_includingInstantMessageStyle_includingGroupStyle_includingRoomStyle_usingBlock_(self, v5, v4, 1, 0, 0, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_enumerateChatGUIDPermutationsForChatIdentifier:(id)a3 includingInstantMessageStyle:(BOOL)a4 includingGroupStyle:(BOOL)a5 includingRoomStyle:(BOOL)a6 usingBlock:(id)a7
{
  v40 = a6;
  v8 = a5;
  v9 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a7;
  v15 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v13, v14);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v15, v16, v17);

  if (isOneChatEnabled)
  {
    v45 = 0;
    if (!v9 || (v21 = *MEMORY[0x1E69A7AC8], v22 = IMCopyAnyServiceGUIDForChat(), v12[2](v12, v22, &v45), v22, (v45 & 1) == 0))
    {
      if (!v8 || (v23 = *MEMORY[0x1E69A7AC8], v24 = IMCopyAnyServiceGUIDForChat(), v12[2](v12, v24, &v45), v24, (v45 & 1) == 0))
      {
        if (v40)
        {
          v25 = *MEMORY[0x1E69A7AC8];
          v26 = IMCopyAnyServiceGUIDForChat();
          v12[2](v12, v26, &v45);
        }
      }
    }
  }

  else
  {
    v45 = 0;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = objc_msgSend_serviceNamesForChatIdentifierSearch(self, v19, v20);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v41, v46, 16);
    if (v28)
    {
      v30 = v28;
      v31 = *v42;
LABEL_10:
      v32 = 0;
      while (1)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v41 + 1) + 8 * v32);
        if (v9)
        {
          v34 = *(*(&v41 + 1) + 8 * v32);
          v35 = IMCopyGUIDForChat();
          v12[2](v12, v35, &v45);

          if (v45)
          {
            break;
          }
        }

        if (v8)
        {
          v36 = IMCopyGUIDForChat();
          v12[2](v12, v36, &v45);

          if (v45)
          {
            break;
          }
        }

        if (v40)
        {
          v37 = IMCopyGUIDForChat();
          v12[2](v12, v37, &v45);

          if (v45)
          {
            break;
          }
        }

        if (v30 == ++v32)
        {
          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v41, v46, 16);
          if (v30)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (id)_possiblyUnregisteredCachedChatWithHandle:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_ID(v4, v5, v6);
  v10 = objc_msgSend_account(v4, v8, v9);
  v13 = objc_msgSend_uniqueID(v10, v11, v12);
  v15 = objc_msgSend__possiblyUnregisteredCachedChatWithIdentifier_style_account_(self, v14, v7, 45, v13);

  if (!v15)
  {
    v18 = objc_msgSend__chatSiblings(v4, v16, v17);
    if (objc_msgSend_count(v18, v19, v20))
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v21 = v18;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v41, v45, 16);
      if (v23)
      {
        v26 = v23;
        v40 = v18;
        v27 = *v42;
LABEL_5:
        v28 = 0;
        while (1)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v41 + 1) + 8 * v28);
          v30 = objc_msgSend_ID(v29, v24, v25);
          v33 = objc_msgSend_account(v29, v31, v32);
          v36 = objc_msgSend_uniqueID(v33, v34, v35);
          v15 = objc_msgSend__possiblyUnregisteredCachedChatWithIdentifier_style_account_(self, v37, v30, 45, v36);

          if (v15)
          {
            break;
          }

          if (v26 == ++v28)
          {
            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v41, v45, 16);
            if (v26)
            {
              goto LABEL_5;
            }

            v15 = 0;
            break;
          }
        }

        v18 = v40;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  v38 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_possiblyUnregisteredCachedChatWithHandles:(id)a3 style:(unsigned __int8)a4 groupID:(id)a5 displayName:(id)a6 joinedChatsOnly:(BOOL)a7
{
  v60 = a7;
  v9 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v62 = a5;
  v12 = a6;
  v59 = v11;
  if (objc_msgSend_count(v11, v13, v14))
  {
    v17 = objc_msgSend_allChatsInProcess(self, v15, v16);
    if (objc_msgSend_length(v12, v18, v19))
    {
      v20 = v12;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v17;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v63, v67, 16);
    if (v23)
    {
      v26 = v23;
      v27 = *v64;
LABEL_7:
      v28 = 0;
      while (1)
      {
        if (*v64 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v63 + 1) + 8 * v28);
        if (objc_msgSend_chatStyle(v29, v24, v25) != v9)
        {
          goto LABEL_28;
        }

        v30 = objc_msgSend_displayName(v29, v24, v25);
        v33 = objc_msgSend_length(v30, v31, v32);
        if (v62 && v33 && (objc_msgSend_groupID(v29, v34, v35), (v36 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v39 = v36;
          v40 = objc_msgSend_groupID(v29, v37, v38);
          isEqualToString = objc_msgSend_isEqualToString_(v62, v41, v40);

          if (isEqualToString)
          {
            v56 = v29;
            goto LABEL_33;
          }
        }

        else
        {
        }

        v45 = objc_msgSend_displayName(v29, v43, v44);
        if (!objc_msgSend_length(v45, v46, v47))
        {
          break;
        }

        v50 = objc_msgSend_displayName(v29, v48, v49);

        if (!v50)
        {
          goto LABEL_23;
        }

        if (v21 && (objc_msgSend_isEqualToString_(v50, v51, v21) & 1) != 0)
        {
LABEL_24:
          if (!v60 || objc_msgSend_joinState(v29, v51, v52) >= 2)
          {
            v53 = objc_msgSend_participants(v29, v51, v52);
            hasSameMembers = objc_msgSend__hasSameMembers_(v53, v54, v59);

            if (hasSameMembers)
            {
              v56 = v29;

              goto LABEL_33;
            }
          }
        }

LABEL_27:

LABEL_28:
        if (v26 == ++v28)
        {
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v63, v67, 16);
          if (v26)
          {
            goto LABEL_7;
          }

          goto LABEL_30;
        }
      }

LABEL_23:
      v50 = 0;
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

LABEL_30:
    v56 = 0;
LABEL_33:
  }

  else
  {
    v56 = 0;
    v21 = v12;
  }

  v57 = *MEMORY[0x1E69E9840];

  return v56;
}

- (id)_possiblyUnregisteredCachedChatForRoom:(id)a3 onAccount:(id)a4
{
  v6 = a3;
  v9 = objc_msgSend_uniqueID(a4, v7, v8);
  v11 = objc_msgSend__possiblyUnregisteredCachedChatWithIdentifier_style_account_(self, v10, v6, 35, v9);

  return v11;
}

- (id)_cachedChatWithGUID:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v11 = objc_msgSend_simulatedChats(self, v7, v8);
    if (v11)
    {
      objc_msgSend_simulatedChatGUIDToChatMap(self, v9, v10);
    }

    else
    {
      objc_msgSend_chatGUIDToChatMap(self, v9, v10);
    }
    v13 = ;
    v12 = objc_msgSend_objectForKey_(v13, v14, v4);

    v15 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v4;
      v20 = 1024;
      v21 = v12 != 0;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Getting cached chat with GUID: %@ found chat: %{BOOL}d", &v18, 0x12u);
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_cachedChatWithIdentifier:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1A8259C60;
  v13 = sub_1A825AF5C;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8398E9C;
  v8[3] = &unk_1E7813E80;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend__enumerateChatGUIDPermutationsForChatIdentifier_includingInstantMessageStyle_includingGroupStyle_includingRoomStyle_usingBlock_(self, v5, v4, 1, 1, 0, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_cachedChatWithIdentifier:(id)a3 style:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1A8259C60;
  v15 = sub_1A825AF5C;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A8399038;
  v10[3] = &unk_1E7813E80;
  v10[4] = self;
  v10[5] = &v11;
  objc_msgSend__enumerateChatGUIDPermutationsForChatIdentifier_includingInstantMessageStyle_includingGroupStyle_includingRoomStyle_usingBlock_(self, v7, v6, v4 == 45, v4 == 43, v4 == 35, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)_cachedChatWithHandle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_ID(v4, v5, v6);
  v9 = objc_msgSend__cachedChatWithIdentifier_style_(self, v8, v7, 45);

  if (!v9)
  {
    v12 = objc_msgSend_ID(v4, v10, v11);
    v9 = objc_msgSend__cachedChatWithPersonID_(self, v13, v12);

    if (objc_msgSend_chatStyle(v9, v14, v15) == 45)
    {
      objc_msgSend_setRecipient_(v9, v16, v4);
    }

    else
    {

      v9 = 0;
    }
  }

  return v9;
}

- (id)_cachedChatWithGroupID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_groupIDToChatMap(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  if (v9)
  {
    v12 = objc_msgSend_groupID(v9, v10, v11);
    isEqualToString = objc_msgSend_isEqualToString_(v12, v13, v4);

    if ((isEqualToString & 1) == 0)
    {
      v15 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2764(v4, v9, v15);
      }

      v18 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v16, v17);
      objc_msgSend_forceAutoBugCaptureWithSubType_errorPayload_type_context_(v18, v19, @"GroupIDMismatch", 0, @"ChatProperties", @"GroupIDDoesNotMatch");
    }
  }

  return v9;
}

- (id)_cachedChatWithDisplayName:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_cachedChats(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = objc_msgSend_displayName(v14, v9, v10);
        isEqualToString = objc_msgSend_isEqualToString_(v15, v16, v4);

        if (isEqualToString)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v24, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_cachedChatsWithDisplayName:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = objc_msgSend_cachedChats(self, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = objc_msgSend_displayName(v16, v11, v12);
        isEqualToString = objc_msgSend_isEqualToString_(v17, v18, v4);

        if (isEqualToString)
        {
          objc_msgSend_addObject_(v5, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_cachedChatWithPersonID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_chatPersonIDToChatMap(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  return v9;
}

- (id)_cachedChatsWithMessage:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = objc_msgSend_cachedChats(self, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = objc_msgSend_guid(v4, v11, v12);
        v19 = objc_msgSend_messageForGUID_(v16, v18, v17);

        if (v19)
        {
          objc_msgSend_addObject_(v5, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_cachedChatsWithMessageGUID:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = objc_msgSend_cachedChats(self, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = objc_msgSend_messageForGUID_(v15, v11, v4);

        if (v16)
        {
          objc_msgSend_addObject_(v5, v11, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v23, 16);
    }

    while (v12);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)unblackholeChatWithHandles:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_count(v3, v7, v8);
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Request to load chat with handleIDs array %@ of count %lu", buf, 0x16u);
    }
  }

  if (v3)
  {
    v41 = v3;
    if (objc_msgSend_count(v3, v4, v5))
    {
      v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v12 = v3;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v44, v52, 16);
      if (v16)
      {
        v17 = *v45;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v45 != v17)
            {
              objc_enumerationMutation(v12);
            }

            v19 = *(*(&v44 + 1) + 8 * i);
            v20 = objc_msgSend_ID(v19, v14, v15);
            if (objc_msgSend__appearsToBePhoneNumber(v20, v21, v22))
            {
              v23 = IMInternationalForPhoneNumberWithOptions();

              v20 = v23;
            }

            v24 = IMStripFormattingFromAddress();
            objc_msgSend_addObject_(v11, v25, v24);

            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                *&buf[4] = v19;
                *&buf[12] = 2112;
                *&buf[14] = v20;
                _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Adding IMHandle: %@ into rawAddresses set as ID string %@", buf, 0x16u);
              }
            }
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v44, v52, 16);
        }

        while (v16);
      }

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v32 = objc_msgSend_count(v11, v30, v31);
          *buf = 138412546;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = v32;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "No exisiting chat. Calling out to daemon to find potential chat rawAddressSet set %@ of count %lu", buf, 0x16u);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v49 = sub_1A8259C80;
      v50 = sub_1A825AF6C;
      v51 = 0;
      v33 = objc_msgSend_daemonController(self, v27, v28);
      v36 = objc_msgSend_synchronousRemoteDaemon(v33, v34, v35);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = sub_1A839BA78;
      v43[3] = &unk_1E7811120;
      v43[4] = self;
      v43[5] = buf;
      objc_msgSend_unblackholeAndLoadChatWithHandleIDs_reply_(v36, v37, v11, v43);

      v38 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v38 = 0;
    }

    v3 = v41;
  }

  else
  {
    v38 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (void)_chat:(id)a3 sendReadReceiptForMessages:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v51 = v6;
      v52 = 2112;
      v53 = v7;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@  messages: %@", buf, 0x16u);
    }
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
  {
    v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) == 0)
    {
      v45 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
      v47 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v45, v46, 0)) == 0;

      if (v47)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v23 = objc_msgSend_account(v6, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(v6, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      if (objc_msgSend_count(v7, v26, v27))
      {
        v48 = 0;
        v49 = 0;
        sub_1A839DC70(self, v6, &v49, &v48);
        v28 = v49;
        v29 = v48;
        v30 = IMCreateSerializedItemsFromArray();
        v33 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v36 = objc_msgSend_remoteDaemon(v33, v34, v35);
        v39 = objc_msgSend_chatStyle(v6, v37, v38);
        v42 = objc_msgSend_unreadMessageCount(v6, v40, v41);
        objc_msgSend_markReadForIDs_style_onServices_messages_clientUnreadCount_(v36, v43, v28, v39, v29, v30, v42);
      }
    }
  }

LABEL_13:

  v44 = *MEMORY[0x1E69E9840];
}

- (void)_chat_sendReadReceiptForAllMessages:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v49 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v8 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v8, v9, 0)) == 0)
  {
    v12 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v12, v13, 0)) == 0)
    {
      v43 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
      v45 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v43, v44, 0)) == 0;

      if (v45)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v20 = objc_msgSend_account(v4, v16, v17);
  if (v20)
  {
    v21 = objc_msgSend_chatIdentifier(v4, v18, v19);
    v22 = v21 == 0;

    if (!v22)
    {
      v23 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_msgSend_account(v4, v24, v25);
        *buf = 138412546;
        v49 = v4;
        v50 = 2112;
        v51 = v26;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Sending read receipt for all messages in chat: %@   for account: %@", buf, 0x16u);
      }

      v46 = 0;
      v47 = 0;
      sub_1A839DC70(self, v4, &v47, &v46);
      v27 = v47;
      v28 = v46;
      v31 = objc_msgSend_sharedController(IMDaemonController, v29, v30);
      v34 = objc_msgSend_remoteDaemon(v31, v32, v33);
      v37 = objc_msgSend_chatStyle(v4, v35, v36);
      v40 = objc_msgSend_unreadMessageCount(v4, v38, v39);
      objc_msgSend_markReadForIDs_style_onServices_messages_clientUnreadCount_setUnreadCountToZero_(v34, v41, v27, v37, v28, 0, v40, 1);
    }
  }

LABEL_14:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_chat_markLastMessageAsUnread:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v47 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v8 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v8, v9, 0)) == 0)
  {
    v12 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v12, v13, 0)) == 0)
    {
      v41 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
      v43 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v41, v42, 0)) == 0;

      if (v43)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v20 = objc_msgSend_lastIncomingFinishedMessage(v4, v16, v17);
  if (!v20)
  {
    v21 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v47 = "[IMChatRegistry(IMChatRegistry_Sending) _chat_markLastMessageAsUnread:]";
      v48 = 2112;
      v49 = v4;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", buf, 0x16u);
    }

    v20 = objc_msgSend_lastFinishedMessage(v4, v22, v23);
  }

  v24 = objc_msgSend_guid(v20, v18, v19);
  if (objc_msgSend_isFromMe(v20, v25, v26))
  {

    v24 = 0;
  }

  else
  {
    objc_msgSend_setMarkingUnread_(v4, v27, 1);
  }

  v44 = 0;
  v45 = 0;
  sub_1A839DC70(self, v4, &v45, &v44);
  v28 = v45;
  v29 = v44;
  v32 = objc_msgSend_sharedController(IMDaemonController, v30, v31);
  v35 = objc_msgSend_remoteDaemon(v32, v33, v34);
  v38 = objc_msgSend_chatStyle(v4, v36, v37);
  objc_msgSend_markUnreadForMessageGUID_IDs_style_services_(v35, v39, v24, v28, v38, v29);

LABEL_17:
  v40 = *MEMORY[0x1E69E9840];
}

- (void)_chat_markMessageAsUnread:(id)a3 message:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v47 = v6;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) != 0)
  {
    goto LABEL_8;
  }

  v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
  if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) != 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v41 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
  v43 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v41, v42, 0)) == 0;

  if (v43)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (v7)
  {
    if (objc_msgSend_isFromMe(v7, v19, v20))
    {
      v23 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = "Message is outgoing";
LABEL_19:
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
      }
    }

    else if (objc_msgSend_isRead(v7, v21, v22))
    {
      objc_msgSend_setMarkingUnread_(v6, v25, 1);
      v23 = objc_msgSend_guid(v7, v26, v27);
      v44 = 0;
      v45 = 0;
      sub_1A839DC70(self, v6, &v45, &v44);
      v28 = v45;
      v29 = v44;
      v32 = objc_msgSend_sharedController(IMDaemonController, v30, v31);
      v35 = objc_msgSend_remoteDaemon(v32, v33, v34);
      v38 = objc_msgSend_chatStyle(v6, v36, v37);
      objc_msgSend_markUnreadForMessageGUID_IDs_style_services_(v35, v39, v23, v28, v38, v29);
    }

    else
    {
      v23 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = "Message is already unread";
        goto LABEL_19;
      }
    }
  }

  else
  {
    v23 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "No message to mark as unread";
      goto LABEL_19;
    }
  }

LABEL_21:
  v40 = *MEMORY[0x1E69E9840];
}

- (void)_chat_recoverFromJunk:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v35 = 138412290;
      v36 = v3;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEBUG, "chat: %@", &v35, 0xCu);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v7, v8, 0)) == 0)
  {
    v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
    {
      v32 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
      v34 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v32, v33, 0)) == 0;

      if (v34)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v19 = objc_msgSend_lastIncomingFinishedMessage(v3, v15, v16);
  if (!v19)
  {
    v20 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136315394;
      v36 = "[IMChatRegistry(IMChatRegistry_Sending) _chat_recoverFromJunk:]";
      v37 = 2112;
      v38 = v3;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", &v35, 0x16u);
    }

    v19 = objc_msgSend_lastFinishedMessage(v3, v21, v22);
  }

  v25 = objc_msgSend_guid(v19, v17, v18);
  if (v25)
  {
    v26 = objc_msgSend_sharedController(IMDaemonController, v23, v24);
    v29 = objc_msgSend_remoteDaemon(v26, v27, v28);
    objc_msgSend_recoverChatsFromJunkContainingMessageWithGUID_(v29, v30, v25);
  }

  else
  {
    v26 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2ABC();
    }
  }

LABEL_18:
  v31 = *MEMORY[0x1E69E9840];
}

- (void)_chatDidRecoverFromJunk:(id)a3
{
  v3 = a3;
  v13 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = objc_msgSend_remoteDaemon(v13, v6, v7);
  v11 = objc_msgSend_guid(v3, v9, v10);

  objc_msgSend_chatDidRecoverFromJunk_(v8, v12, v11);
}

- (void)_chat_acceptChat:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v35 = 138412290;
      v36 = v3;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEBUG, "chat: %@", &v35, 0xCu);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v7, v8, 0)) == 0)
  {
    v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
    {
      v32 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
      v34 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v32, v33, 0)) == 0;

      if (v34)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v19 = objc_msgSend_lastIncomingFinishedMessage(v3, v15, v16);
  if (!v19)
  {
    v20 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136315394;
      v36 = "[IMChatRegistry(IMChatRegistry_Sending) _chat_acceptChat:]";
      v37 = 2112;
      v38 = v3;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", &v35, 0x16u);
    }

    v19 = objc_msgSend_lastFinishedMessage(v3, v21, v22);
  }

  v25 = objc_msgSend_guid(v19, v17, v18);
  if (v25)
  {
    v26 = objc_msgSend_sharedController(IMDaemonController, v23, v24);
    v29 = objc_msgSend_remoteDaemon(v26, v27, v28);
    objc_msgSend_acceptChatContainingMessageWithGUID_(v29, v30, v25);
  }

  else
  {
    v26 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2AF0();
    }
  }

LABEL_18:
  v31 = *MEMORY[0x1E69E9840];
}

- (void)_chat_storeItem:(id)a3 inChat:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || !v6)
  {
    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v41 = 138412546;
      v42 = v7;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@  item: %@", &v41, 0x16u);
    }
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
  {
    v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) == 0)
    {
      v38 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
      v40 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v38, v39, 0)) == 0;

      if (v40)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

LABEL_11:
  v23 = objc_msgSend_account(v7, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(v7, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 138412546;
        v42 = v5;
        v43 = 2112;
        v44 = v7;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Storing item: %@ in chat: %@", &v41, 0x16u);
      }

      v29 = objc_msgSend_sharedController(IMDaemonController, v27, v28);
      v32 = objc_msgSend_remoteDaemon(v29, v30, v31);
      v35 = objc_msgSend_guid(v7, v33, v34);
      objc_msgSend_storeItem_inChatGUID_(v32, v36, v5, v35);
    }
  }

LABEL_16:

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 sendPlayedReceiptForMessage:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v49 = v6;
      v50 = 2112;
      v51 = v7;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@ message: %@", buf, 0x16u);
    }
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
  {
    v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) == 0)
    {
      v43 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
      v45 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v43, v44, 0)) == 0;

      if (v45)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v23 = objc_msgSend_account(v6, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(v6, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_msgSend_account(v6, v27, v28);
        *buf = 138412802;
        v49 = v7;
        v50 = 2112;
        v51 = v6;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Sending played receipt for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v46 = 0;
      v47 = 0;
      sub_1A839DC70(self, v6, &v47, &v46);
      v30 = v47;
      v33 = v46;
      if (v7)
      {
        v34 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v37 = objc_msgSend_remoteDaemon(v34, v35, v36);
        v40 = objc_msgSend_chatStyle(v6, v38, v39);
        objc_msgSend_markPlayedForIDs_style_onServices_message_(v37, v41, v30, v40, v33, v7);
      }
    }
  }

LABEL_16:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 setPlayedExpressiveSendForMessage:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v49 = v6;
      v50 = 2112;
      v51 = v7;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@ message: %@", buf, 0x16u);
    }
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
  {
    v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) == 0)
    {
      v43 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
      v45 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v43, v44, 0)) == 0;

      if (v45)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v23 = objc_msgSend_account(v6, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(v6, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_msgSend_account(v6, v27, v28);
        *buf = 138412802;
        v49 = v7;
        v50 = 2112;
        v51 = v6;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Setting played expressive send for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v46 = 0;
      v47 = 0;
      sub_1A839DC70(self, v6, &v47, &v46);
      v30 = v47;
      v33 = v46;
      if (v7)
      {
        v34 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v37 = objc_msgSend_remoteDaemon(v34, v35, v36);
        v40 = objc_msgSend_chatStyle(v6, v38, v39);
        objc_msgSend_markPlayedExpressiveSendForIDs_style_onServices_message_(v37, v41, v30, v40, v33, v7);
      }
    }
  }

LABEL_16:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 sendSavedReceiptForMessage:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v49 = v6;
      v50 = 2112;
      v51 = v7;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@ message: %@", buf, 0x16u);
    }
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
  {
    v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) == 0)
    {
      v43 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
      v45 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v43, v44, 0)) == 0;

      if (v45)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v23 = objc_msgSend_account(v6, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(v6, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_msgSend_account(v6, v27, v28);
        *buf = 138412802;
        v49 = v7;
        v50 = 2112;
        v51 = v6;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Sending saved receipt for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v46 = 0;
      v47 = 0;
      sub_1A839DC70(self, v6, &v47, &v46);
      v30 = v47;
      v33 = v46;
      if (v7)
      {
        v34 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v37 = objc_msgSend_remoteDaemon(v34, v35, v36);
        v40 = objc_msgSend_chatStyle(v6, v38, v39);
        objc_msgSend_markSavedForIDs_style_onServices_message_(v37, v41, v30, v40, v33, v7);
      }
    }
  }

LABEL_16:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 sendNotifyRecipientCommandForMessage:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v49 = v6;
      v50 = 2112;
      v51 = v7;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@ message: %@", buf, 0x16u);
    }
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
  {
    v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) == 0)
    {
      v43 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
      v45 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v43, v44, 0)) == 0;

      if (v45)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v23 = objc_msgSend_account(v6, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(v6, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_msgSend_account(v6, v27, v28);
        *buf = 138412802;
        v49 = v7;
        v50 = 2112;
        v51 = v6;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Sending notify recipient commadn for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v46 = 0;
      v47 = 0;
      sub_1A839DC70(self, v6, &v47, &v46);
      v30 = v47;
      v33 = v46;
      if (v7)
      {
        v34 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v37 = objc_msgSend_remoteDaemon(v34, v35, v36);
        v40 = objc_msgSend_chatStyle(v6, v38, v39);
        objc_msgSend_sendNotifyRecipientCommandForIDs_style_onServices_message_(v37, v41, v30, v40, v33, v7);
      }
    }
  }

LABEL_16:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_markHasHadSuccessfulQueryForChat:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v46 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v8 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v8, v9, 0)) == 0)
  {
    v12 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v12, v13, 0)) == 0)
    {
      v40 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
      v42 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v40, v41, 0)) == 0;

      if (v42)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v20 = objc_msgSend_account(v4, v16, v17);
  if (v20)
  {
    v21 = objc_msgSend_chatIdentifier(v4, v18, v19);
    v22 = v21 == 0;

    if (!v22)
    {
      v23 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_msgSend_account(v4, v24, v25);
        *buf = 138412546;
        v46 = v4;
        v47 = 2112;
        v48 = v26;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Marking chat as had successful ID query in chat: %@   for account: %@", buf, 0x16u);
      }

      v43 = 0;
      v44 = 0;
      sub_1A839DC70(self, v4, &v44, &v43);
      v27 = v44;
      v28 = v43;
      v31 = objc_msgSend_sharedController(IMDaemonController, v29, v30);
      v34 = objc_msgSend_remoteDaemon(v31, v32, v33);
      v37 = objc_msgSend_chatStyle(v4, v35, v36);
      objc_msgSend_markHasHadSuccessfulQueryForIDs_style_onServices_(v34, v38, v27, v37, v28);
    }
  }

LABEL_14:

  v39 = *MEMORY[0x1E69E9840];
}

- (id)_eventForMessage:(id)a3
{
  v3 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v3 || (objc_msgSend_isTypingMessage(v3, v4, v5) & 1) != 0)
  {
    goto LABEL_35;
  }

  v9 = objc_msgSend_balloonBundleID(v3, v7, v8);
  v11 = objc_msgSend_containsString_(v9, v10, *MEMORY[0x1E69A69F0]);

  if (v11)
  {
    if (v6)
    {
      v12 = *MEMORY[0x1E69A72E8];
      if (*MEMORY[0x1E69A72E8])
      {
        CFArrayAppendValue(v6, v12);
      }
    }
  }

  v14 = objc_msgSend_balloonBundleID(v3, v12, v13);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v15, *MEMORY[0x1E69A69E0]);

  if (isEqualToString)
  {
    if (v6)
    {
      v17 = *MEMORY[0x1E69A73F0];
      if (*MEMORY[0x1E69A73F0])
      {
        CFArrayAppendValue(v6, v17);
      }
    }
  }

  v19 = objc_msgSend_balloonBundleID(v3, v17, v18);
  v21 = objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x1E69A6A18]);

  if (v21)
  {
    if (v6)
    {
      v22 = *MEMORY[0x1E69A7590];
      if (*MEMORY[0x1E69A7590])
      {
        CFArrayAppendValue(v6, v22);
      }
    }
  }

  v24 = objc_msgSend_balloonBundleID(v3, v22, v23);
  v26 = objc_msgSend_isEqualToString_(v24, v25, *MEMORY[0x1E69A69A8]);

  if (v26)
  {
    if (v6)
    {
      v27 = *MEMORY[0x1E69A7398];
      if (*MEMORY[0x1E69A7398])
      {
        CFArrayAppendValue(v6, v27);
      }
    }
  }

  v29 = objc_msgSend_expressiveSendStyleID(v3, v27, v28);
  if (objc_msgSend_length(v29, v30, v31))
  {
    v34 = objc_msgSend_expressiveSendStyleID(v3, v32, v33);
    v36 = objc_msgSend_rangeOfString_(v34, v35, *MEMORY[0x1E69A7028]);

    if (v36 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v6)
      {
        v37 = *MEMORY[0x1E69A73D8];
        if (*MEMORY[0x1E69A73D8])
        {
          CFArrayAppendValue(v6, v37);
        }
      }
    }
  }

  else
  {
  }

  v39 = objc_msgSend_expressiveSendStyleID(v3, v37, v38);
  v41 = objc_msgSend_isEqualToString_(v39, v40, *MEMORY[0x1E69A7088]);

  if (v41)
  {
    if (!v6)
    {
      goto LABEL_35;
    }

    v44 = MEMORY[0x1E69A7410];
    goto LABEL_32;
  }

  v45 = objc_msgSend_expressiveSendStyleID(v3, v42, v43);
  if (!objc_msgSend_length(v45, v46, v47))
  {

    goto LABEL_35;
  }

  v50 = objc_msgSend_expressiveSendStyleID(v3, v48, v49);
  v52 = objc_msgSend_rangeOfString_(v50, v51, *MEMORY[0x1E69A7080]);

  if (v52 != 0x7FFFFFFFFFFFFFFFLL && v6)
  {
    v44 = MEMORY[0x1E69A7330];
LABEL_32:
    if (*v44)
    {
      CFArrayAppendValue(v6, *v44);
    }
  }

LABEL_35:

  return v6;
}

- (void)_trackUsageForMessage:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__eventForMessage_(self, a2, a3);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v15, v19, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v6, v7);
        objc_msgSend_trackEvent_(v12, v13, v11);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v15, v19, 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_setReplyToGuidOnMessage:(id)a3 forChat:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = objc_msgSend_lastFinishedMessageItem(a4, v6, v7);
  v11 = objc_msgSend_guid(v8, v9, v10);

  objc_msgSend_setReplyToGUID_(v5, v12, v11);
  v13 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_msgSend_guid(v5, v14, v15);
    v18 = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Setting %@ as the reply to guid for %@", &v18, 0x16u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)_nicknameSharingEnabled
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8108], a2, v2);
  v6 = objc_msgSend_sharingEnabled(v3, v4, v5);

  return v6;
}

- (unint64_t)_nicknameSharingAudience
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8108], a2, v2);
  v6 = objc_msgSend_sharingAudience(v3, v4, v5);

  return v6;
}

- (void)_setMeCardSharingOnMessage:(id)a3 forChat:(id)a4
{
  *&v24[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend__nicknameSharingAudience(self, v8, v9);
  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    *v24 = v10;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Current me card sharing audience is %lu", &v23, 0xCu);
  }

  if (objc_msgSend__nicknameSharingEnabled(self, v12, v13))
  {
    if (v10 > 1)
    {
      shouldShareMeCardForAlwaysAskAudienceWithChat = objc_msgSend__shouldShareMeCardForAlwaysAskAudienceWithChat_(self, v14, v7);
    }

    else
    {
      shouldShareMeCardForAlwaysAskAudienceWithChat = objc_msgSend__shouldShareMeCardForContactsOnlyAudienceWithChat_(self, v14, v7);
    }

    v16 = shouldShareMeCardForAlwaysAskAudienceWithChat;
  }

  else
  {
    v16 = 0;
  }

  v17 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_msgSend_guid(v6, v18, v19);
    v23 = 67109378;
    v24[0] = v16;
    LOWORD(v24[1]) = 2112;
    *(&v24[1] + 2) = v20;
    _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Setting meCard sharing preference %d on message %@", &v23, 0x12u);
  }

  objc_msgSend_setShouldSendMeCard_(v6, v21, v16);
  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldShareMeCardForContactsOnlyAudienceWithChat:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (objc_msgSend_allParticipantsAreContacts(v3, v4, v5))
  {
    v8 = 1;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = objc_msgSend_participants(v3, v6, v7, 0);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
    if (v11)
    {
      v14 = v11;
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = objc_msgSend_sharedInstance(IMNicknameController, v12, v13);
          if (objc_msgSend_handleIsAllowedForSharing_(v18, v19, v17))
          {
          }

          else
          {
            isContact = objc_msgSend_isContact(v17, v20, v21);

            if ((isContact & 1) == 0)
            {
              v8 = 0;
              goto LABEL_15;
            }
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v25, v29, 16);
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_15:
  }

  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_shouldShareMeCardForAlwaysAskAudienceWithChat:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = objc_msgSend_participants(a3, a2, a3, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v17, v21, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_msgSend_sharedInstance(IMNicknameController, v6, v7);
        LODWORD(v11) = objc_msgSend_handleIsAllowedForSharing_(v12, v13, v11);

        if (!v11)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v17, v21, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_chat:(id)a3 sendMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_account(v7, v8, v9);
  objc_msgSend__chat_sendMessage_withAccount_(self, v10, v7, v6, v11);
}

- (void)_chat:(id)a3 sendMessage:(id)a4 withAccount:(id)a5
{
  v173 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v170 = v7;
      v171 = 2112;
      v172 = v8;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "chat: %@  message: %@", buf, 0x16u);
    }
  }

  v13 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v13, v14, 0)) != 0)
  {
    v17 = 0;
  }

  else
  {
    v18 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v18, v19, 0)) != 0)
    {
      v17 = 0;
    }

    else
    {
      v22 = objc_msgSend_sharedController(IMDaemonController, v20, v21);
      v17 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v22, v23, 0)) == 0;
    }
  }

  if (v8)
  {
    v26 = v17;
  }

  else
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    if ((objc_msgSend_supportsSendingTypingIndicators(v7, v24, v25) & 1) == 0 && objc_msgSend_isTypingMessage(v8, v27, v28))
    {
      v29 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEFAULT, "Bailing sending message as its a typing message and service does not support typing", buf, 2u);
      }

      goto LABEL_63;
    }

    v29 = IMCopyGUIDForChatOnAccount(v7, v9);
    IMComponentsFromChatGUID();
    v30 = 0;
    if (!v9 || !v30)
    {
LABEL_62:

LABEL_63:
      goto LABEL_64;
    }

    v166 = v30;
    v33 = objc_msgSend_copy(v8, v31, v32);
    objc_msgSend__updateError_(v33, v34, 0);
    v37 = objc_msgSend_loginIMHandle(v9, v35, v36);
    objc_msgSend__updateSender_(v33, v38, v37);

    if (objc_msgSend_scheduleType(v33, v39, v40) != 2)
    {
      v43 = objc_msgSend_flags(v8, v41, v42);
      objc_msgSend__updateFlags_(v33, v44, v43 & 0xFFFFFFFFFFFF4FFFLL);
    }

    if (!objc_msgSend_scheduleType(v33, v41, v42))
    {
      objc_msgSend__updateTime_(v33, v45, 0);
    }

    objc_msgSend__updateTimeRead_(v33, v45, 0);
    objc_msgSend__updateTimeDelivered_(v33, v46, 0);
    objc_msgSend__updateTimePlayed_(v33, v47, 0);
    v50 = objc_msgSend__imMessageItem(v33, v48, v49);
    v53 = objc_msgSend_supportsEncryption(v7, v51, v52);
    objc_msgSend_setEncrypted_(v50, v54, v53);
    objc_msgSend__setMeCardSharingOnMessage_forChat_(self, v55, v50, v7);
    if (objc_msgSend_isTypingMessage(v50, v56, v57))
    {
      v60 = objc_msgSend_customTypingIndicatorIcon(v8, v58, v59);
      objc_msgSend_setTypingIndicatorIcon_(v50, v61, v60);
    }

    if (!v50)
    {
LABEL_61:

      v30 = v166;
      goto LABEL_62;
    }

    objc_msgSend__trackUsageForMessage_(self, v58, v50);
    v64 = objc_msgSend_tapback(v50, v62, v63);
    v65 = v64 == 0;

    if (!v65)
    {
      v68 = objc_msgSend_sharedInstance(MEMORY[0x1E69A82F0], v66, v67);
      objc_msgSend_sendTapbackSendEvent(v68, v69, v70);
    }

    v167 = objc_msgSend_notificationIDSTokenURI(v8, v66, v67);
    v71 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v170 = v167;
      _os_log_impl(&dword_1A823F000, v71, OS_LOG_TYPE_DEFAULT, "Before Siri passed in following notificationIDSTokenURI %@ so setting it on immessageitem", buf, 0xCu);
    }

    if (objc_msgSend_length(v167, v72, v73))
    {
      v76 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v170 = v167;
        _os_log_impl(&dword_1A823F000, v76, OS_LOG_TYPE_DEFAULT, "Siri passed in following notificationIDSTokenURI %@ so setting it on immessageitem", buf, 0xCu);
      }

      objc_msgSend_setNotificationIDSTokenURI_(v50, v77, v167);
      v78 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v81 = objc_msgSend_notificationIDSTokenURI(v50, v79, v80);
        *buf = 138412290;
        v170 = v81;
        _os_log_impl(&dword_1A823F000, v78, OS_LOG_TYPE_DEFAULT, "now it is set to %@", buf, 0xCu);
      }
    }

    v82 = objc_msgSend_balloonBundleID(v50, v74, v75);
    if (objc_msgSend_isEqualToString_(v82, v83, *MEMORY[0x1E69A6A18]))
    {
      v86 = objc_msgSend_fileTransferGUIDs(v50, v84, v85);
      v89 = objc_msgSend_count(v86, v87, v88) == 0;

      if (v89)
      {
LABEL_42:
        v97 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v90, v91);
        isInternalInstall = objc_msgSend_isInternalInstall(v97, v98, v99);

        if (isInternalInstall)
        {
          v103 = objc_msgSend_expressiveSendStyleID(v50, v101, v102);
          if (v103 || !IMGetCachedDomainBoolForKey())
          {
          }

          else if ((objc_msgSend_isTypingMessage(v50, v104, v105) & 1) == 0)
          {
            v106 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v106, OS_LOG_TYPE_DEFAULT, "Forcing laser due to defaults com.apple.MobileSMS AlwaysSendLasers", buf, 2u);
            }

            objc_msgSend_setExpressiveSendStyleID_(v50, v107, @"com.apple.messages.effect.CKLasersEffect");
          }
        }

        if (objc_msgSend_isAssociatedMessageItem(v50, v101, v102))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v109 = v50;
            v112 = objc_msgSend_associatedMessageGUID(v109, v110, v111);
            v165 = IMAssociatedMessageDecodeGUID();

            v114 = objc_msgSend_messageItemForGUID_(v7, v113, v165);
            v117 = objc_msgSend_expressiveSendStyleID(v114, v115, v116);
            objc_msgSend_setAssociatedMessageEffect_(v109, v118, v117);
          }
        }

        objc_msgSend__setReplyToGuidOnMessage_forChat_(self, v108, v50, v7);
        v121 = objc_msgSend_sharedController(IMDaemonController, v119, v120);
        v124 = objc_msgSend_remoteDaemon(v121, v122, v123);

        v125 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v128 = v124 != 0;
          v129 = objc_msgSend_guid(v50, v126, v127);
          *buf = 138412546;
          v170 = v129;
          v171 = 1024;
          LODWORD(v172) = v128;
          _os_log_impl(&dword_1A823F000, v125, OS_LOG_TYPE_DEFAULT, "Sending message: %@ to remote daemon proxy: %{BOOL}d", buf, 0x12u);
        }

        v132 = objc_msgSend_sharedController(IMDaemonController, v130, v131);
        v135 = objc_msgSend_remoteDaemon(v132, v133, v134);
        v138 = objc_msgSend_chatStyle(v7, v136, v137);
        v141 = objc_msgSend_uniqueID(v9, v139, v140);
        objc_msgSend_sendMessage_toChatID_identifier_style_account_(v135, v142, v50, v29, v166, v138, v141);

        if (objc_msgSend_isChatBot(v7, v143, v144) && (objc_msgSend_cachedBusinessName(v7, v145, v146), v147 = objc_claimAutoreleasedReturnValue(), v148 = v147 == 0, v147, v148))
        {
          objc_msgSend__asyncSetChatBotUserActivityForChat_message_(self, v145, v7, v8);
        }

        else
        {
          objc_msgSend_setUserActivityForChat_message_orHandles_(self, v145, v7, v8, 0);
        }

        v151 = objc_msgSend_service(v50, v149, v150);
        v154 = objc_msgSend_iMessageService(IMServiceImpl, v152, v153);
        v157 = objc_msgSend_internalName(v154, v155, v156);
        isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v151, v158, v157);

        if (isEqualToIgnoringCase)
        {
          v162 = objc_msgSend_sharedRegistry(IMChatRegistry, v160, v161);
          objc_msgSend__setChatHasCommunicatedOveriMessage_(v162, v163, v7);
        }

        goto LABEL_61;
      }

      v92 = objc_msgSend_body(v50, v90, v91);
      v82 = objc_msgSend_mutableCopy(v92, v93, v94);

      objc_msgSend_removeCharactersWithAttribute_(v82, v95, *MEMORY[0x1E69A5F68]);
      objc_msgSend_setBody_(v50, v96, v82);
    }

    goto LABEL_42;
  }

LABEL_64:

  v164 = *MEMORY[0x1E69E9840];
}

- (void)_asyncSetChatBotUserActivityForChat:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v10 = objc_msgSend_businessHandle(v6, v8, v9);
  v13 = objc_msgSend_normalizedID(v10, v11, v12);

  v16 = objc_msgSend_sharedInstance(IMHandleRegistrar, v14, v15);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1A83A103C;
  v28[3] = &unk_1E7813F50;
  v31 = v32;
  v28[4] = self;
  v17 = v6;
  v29 = v17;
  v18 = v7;
  v30 = v18;
  v20 = objc_msgSend_businessNameForUID_updateHandler_(v16, v19, v13, v28);

  v21 = dispatch_time(0, 3000000000);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A83A1068;
  v24[3] = &unk_1E7813F78;
  v24[4] = self;
  v25 = v17;
  v26 = v18;
  v27 = v32;
  v22 = v18;
  v23 = v17;
  dispatch_after(v21, MEMORY[0x1E69E96A0], v24);

  _Block_object_dispose(v32, 8);
}

- (void)_chat:(id)a3 sendEditedMessageItem:(id)a4 previousMessageItem:(id)a5 partIndex:(int64_t)a6 editType:(unint64_t)a7 backwardCompatabilityText:(id)a8
{
  v11 = a3;
  v12 = a4;
  v13 = a8;
  v14 = a5;
  v17 = objc_msgSend_account(v11, v15, v16);
  v18 = IMCopyGUIDForChatOnAccount(v11, v17);

  v46 = 0;
  v43 = v18;
  IMComponentsFromChatGUID();
  v19 = 0;
  v22 = objc_msgSend_chatStyle(v11, v20, v21);
  v25 = objc_msgSend_account(v11, v23, v24);
  v28 = objc_msgSend_uniqueID(v25, v26, v27);

  v29 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEFAULT, "Asking daemon to send edited message", buf, 2u);
  }

  v32 = objc_msgSend_sharedController(IMDaemonController, v30, v31);
  v35 = objc_msgSend_remoteDaemon(v32, v33, v34);
  objc_msgSend_sendEditedMessage_previousMessage_partIndex_editType_toChatIdentifier_style_account_backwardCompatabilityText_(v35, v36, v12, v14, a6, a7, v19, v22, v28, v13);

  if (a7 == 2)
  {
    v39 = objc_msgSend_message(v12, v37, v38);
    objc_msgSend_setUserActivityForChat_message_orHandles_(self, v40, v11, v39, 0);
  }
}

- (void)_chat:(id)a3 resendEditedMessageItem:(id)a4 partIndex:(int64_t)a5 withBackwardCompatabilityText:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a3;
  v14 = objc_msgSend_account(v11, v12, v13);
  v15 = IMCopyGUIDForChatOnAccount(v11, v14);

  v41 = 0;
  IMComponentsFromChatGUID();
  v16 = 0;
  v19 = objc_msgSend_chatStyle(v11, v17, v18);
  v22 = objc_msgSend_account(v11, v20, v21);

  v25 = objc_msgSend_uniqueID(v22, v23, v24);

  v28 = objc_msgSend_retractedPartIndexes(v9, v26, v27);
  v30 = objc_msgSend_containsIndex_(v28, v29, a5);

  v31 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_DEFAULT, "Asking daemon to resend edited message", buf, 2u);
  }

  if (v30)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  v35 = objc_msgSend_sharedController(IMDaemonController, v33, v34);
  v38 = objc_msgSend_remoteDaemon(v35, v36, v37);
  objc_msgSend_sendEditedMessage_previousMessage_partIndex_editType_toChatIdentifier_style_account_backwardCompatabilityText_(v38, v39, v9, v9, a5, v32, v16, v19, v25, v10);
}

- (void)_chat:(id)a3 cancelScheduledMessageWithGUID:(id)a4 destinations:(id)a5 cancelType:(unint64_t)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v13 = objc_msgSend_account(v10, v11, v12);
  v14 = IMCopyGUIDForChatOnAccount(v10, v13);

  IMComponentsFromChatGUID();
  v17 = objc_msgSend_account(v10, v15, v16);
}

- (void)_chat:(id)a3 editScheduledMessageItem:(id)a4 previousMessageItem:(id)a5 partIndex:(int64_t)a6 editType:(unint64_t)a7
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v16 = objc_msgSend_account(v13, v14, v15);
  v17 = IMCopyGUIDForChatOnAccount(v13, v16);

  v37 = 0;
  IMComponentsFromChatGUID();
  v18 = 0;
  v21 = objc_msgSend_chatStyle(v13, v19, v20);
  v24 = objc_msgSend_account(v13, v22, v23);

  v27 = objc_msgSend_uniqueID(v24, v25, v26);

  v28 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "Asking daemon to send edited scheduled message", buf, 2u);
  }

  v31 = objc_msgSend_sharedController(IMDaemonController, v29, v30);
  v34 = objc_msgSend_remoteDaemon(v31, v32, v33);
  objc_msgSend_sendEditedScheduledMessage_previousMessage_partIndex_editType_toChatIdentifier_style_account_(v34, v35, v12, v11, a6, a7, v18, v21, v27);
}

- (void)_chat:(id)a3 editScheduledMessageItem:(id)a4 previousMessageItem:(id)a5 retractingPartIndexes:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v15 = objc_msgSend_account(v12, v13, v14);
  v16 = IMCopyGUIDForChatOnAccount(v12, v15);

  v36 = 0;
  IMComponentsFromChatGUID();
  v17 = 0;
  v20 = objc_msgSend_chatStyle(v12, v18, v19);
  v23 = objc_msgSend_account(v12, v21, v22);

  v26 = objc_msgSend_uniqueID(v23, v24, v25);

  v27 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_DEFAULT, "Asking daemon to send edited scheduled message retracting part indexes", v35, 2u);
  }

  v30 = objc_msgSend_sharedController(IMDaemonController, v28, v29);
  v33 = objc_msgSend_remoteDaemon(v30, v31, v32);
  objc_msgSend_sendEditedScheduledMessage_previousMessage_retractingPartIndexes_toChatIdentifier_style_account_(v33, v34, v11, v10, v9, v17, v20, v26);
}

- (void)_chat:(id)a3 repositionSticker:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_account(v5, v7, v8);
  v10 = IMCopyGUIDForChatOnAccount(v5, v9);

  v30 = 0;
  IMComponentsFromChatGUID();
  v11 = 0;
  v14 = objc_msgSend_account(v5, v12, v13);
  v17 = objc_msgSend_uniqueID(v14, v15, v16);

  v18 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Asking daemon to send sticker reposition message", v29, 2u);
  }

  v21 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
  v24 = objc_msgSend_remoteDaemon(v21, v22, v23);
  v27 = objc_msgSend_chatStyle(v5, v25, v26);
  objc_msgSend_sendRepositionStickerMessage_chatIdentifier_accountID_style_(v24, v28, v6, v11, v17, v27);
}

- (void)_chat:(id)a3 sendGroupPhotoUpdate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = objc_msgSend_account(v6, v7, v8);
  v10 = IMCopyGUIDForChatOnAccount(v6, v9);

  IMComponentsFromChatGUID();
  v11 = 0;
  v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
  v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
  v20 = objc_msgSend_chatStyle(v6, v18, v19);
  v23 = objc_msgSend_account(v6, v21, v22);

  v26 = objc_msgSend_uniqueID(v23, v24, v25);
  objc_msgSend_sendGroupPhotoUpdate_toChatID_identifier_style_account_(v17, v27, v5, v10, v11, v20, v26);
}

- (void)_chat:(id)a3 setTranscriptBackgroundAndSendToChat:(id)a4 transferID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v10, v11);
  isTranscriptBackgroundsEnabled = objc_msgSend_isTranscriptBackgroundsEnabled(v12, v13, v14);

  if (isTranscriptBackgroundsEnabled)
  {
    v18 = objc_msgSend_account(v7, v16, v17);
    v19 = IMCopyGUIDForChatOnAccount(v7, v18);

    v20 = v19;
    IMComponentsFromChatGUID();
    v21 = 0;
    v42 = objc_msgSend_sharedController(IMDaemonController, v22, v23);
    v26 = objc_msgSend_remoteDaemon(v42, v24, v25);
    v28 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v27, v8);
    v31 = v9;
    v32 = objc_msgSend_chatStyle(v7, v29, v30);
    v35 = objc_msgSend_account(v7, v33, v34);
    objc_msgSend_uniqueID(v35, v36, v37);
    v39 = v38 = v8;
    v40 = v32;
    v9 = v31;
    objc_msgSend_setTranscriptBackgroundAndSendToChat_toChatID_identifier_style_transferID_account_completion_(v26, v41, v28, v20, v21, v40, v31, v39, &unk_1F1B6F4A0);

    v8 = v38;
  }
}

- (void)_chat:(id)a3 retryGroupPhotoUpload:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = objc_msgSend_account(v6, v7, v8);
  v10 = IMCopyGUIDForChatOnAccount(v6, v9);

  IMComponentsFromChatGUID();
  v11 = 0;
  v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
  v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
  v20 = objc_msgSend_chatStyle(v6, v18, v19);
  v23 = objc_msgSend_account(v6, v21, v22);

  v26 = objc_msgSend_uniqueID(v23, v24, v25);
  objc_msgSend_retryGroupPhotoUpload_toChatID_identifier_style_account_(v17, v27, v5, v10, v11, v20, v26);
}

- (void)_chat:(id)a3 retryTranscriptBackgroundUpload:(id)a4 transferID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = objc_msgSend_account(v9, v10, v11);
  v13 = IMCopyGUIDForChatOnAccount(v9, v12);

  IMComponentsFromChatGUID();
  v14 = 0;
  v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
  v20 = objc_msgSend_remoteDaemon(v17, v18, v19);
  v23 = objc_msgSend_chatStyle(v9, v21, v22);
  v26 = objc_msgSend_account(v9, v24, v25);

  v29 = objc_msgSend_uniqueID(v26, v27, v28);
  objc_msgSend_retryTranscriptBackgroundUpload_toChatID_identifier_style_transferID_account_(v20, v30, v8, v13, v14, v23, v7, v29);
}

- (void)_refetchLocalTranscriptBackgroundAssetIfNecessaryForChat:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_account(v3, v4, v5);
  v7 = IMCopyGUIDForChatOnAccount(v3, v6);

  IMComponentsFromChatGUID();
  v8 = 0;
  v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  v14 = objc_msgSend_remoteDaemon(v11, v12, v13);
  v17 = objc_msgSend_chatStyle(v3, v15, v16);
  v20 = objc_msgSend_account(v3, v18, v19);

  v23 = objc_msgSend_uniqueID(v20, v21, v22);
  objc_msgSend_refetchChatBackgroundIfNeededForChatIdentifier_style_account_(v14, v24, v8, v17, v23);
}

- (void)_chat:(id)a3 sendSyndicationAction:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = a4;
  if (!v9)
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2B24();
    }

    goto LABEL_15;
  }

  v10 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0)) != 0)
  {
    goto LABEL_5;
  }

  v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
  if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v14, v15, 0)) != 0)
  {

LABEL_5:
    goto LABEL_6;
  }

  v38 = objc_msgSend_sharedController(IMDaemonController, v16, v17);
  v40 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v38, v39, 0);

  if (!v40)
  {
    goto LABEL_16;
  }

LABEL_6:
  v22 = objc_msgSend_account(v6, v18, v19);
  if (v22)
  {
    v23 = objc_msgSend_chatIdentifier(v6, v20, v21);

    if (v23)
    {
      v41 = 0;
      v42 = 0;
      sub_1A839DC70(self, v6, &v42, &v41);
      v24 = v42;
      v25 = v41;
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v31 = objc_msgSend_count(v24, v29, v30);
          *buf = 134218498;
          v44 = v31;
          v45 = 2112;
          v46 = v9;
          v47 = 2112;
          v48 = v24;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Found %lu chats to send Syndication Action %@ to. chatIDs: %@", buf, 0x20u);
        }
      }

      v32 = objc_msgSend_sharedController(IMDaemonController, v26, v27);
      v35 = objc_msgSend_remoteDaemon(v32, v33, v34);
      objc_msgSend_sendSyndicationAction_toChatsWithIdentifiers_(v35, v36, v9, v24);

LABEL_15:
    }
  }

LABEL_16:

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 sendUpdatedCollaborationMetadata:(id)a4 forMessageGUID:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12 = a5;
  if (!v9)
  {
    v27 = IMLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2B58();
    }

    goto LABEL_15;
  }

  v13 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v13, v14, 0)) != 0)
  {
    goto LABEL_5;
  }

  v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
  if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v17, v18, 0)) != 0)
  {

LABEL_5:
    goto LABEL_6;
  }

  v41 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
  v43 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v41, v42, 0);

  if (!v43)
  {
    goto LABEL_16;
  }

LABEL_6:
  v25 = objc_msgSend_account(v8, v21, v22);
  if (v25)
  {
    v26 = objc_msgSend_chatIdentifier(v8, v23, v24);

    if (v26)
    {
      v44 = 0;
      v45 = 0;
      sub_1A839DC70(self, v8, &v45, &v44);
      v27 = v45;
      v28 = v44;
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v34 = objc_msgSend_count(v27, v32, v33);
          *buf = 134218498;
          v47 = v34;
          v48 = 2112;
          v49 = v9;
          v50 = 2112;
          v51 = v27;
          _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Found %lu chats to send updated collaboration metadata %@ to. chatIDs: %@", buf, 0x20u);
        }
      }

      v35 = objc_msgSend_sharedController(IMDaemonController, v29, v30);
      v38 = objc_msgSend_remoteDaemon(v35, v36, v37);
      objc_msgSend_sendUpdatedCollaborationMetadata_toChatsWithIdentifiers_forMessageGUID_(v38, v39, v9, v27, v12);

LABEL_15:
    }
  }

LABEL_16:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 sendHQAttachmentsForMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_account(v5, v7, v8);
  v10 = IMCopyGUIDForChatOnAccount(v5, v9);

  v30 = 0;
  IMComponentsFromChatGUID();
  v11 = 0;
  v14 = objc_msgSend_account(v5, v12, v13);
  v17 = objc_msgSend_uniqueID(v14, v15, v16);

  v18 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Asking daemon to send HQ Attachments", v29, 2u);
  }

  v21 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
  v24 = objc_msgSend_remoteDaemon(v21, v22, v23);
  v27 = objc_msgSend_chatStyle(v5, v25, v26);
  objc_msgSend_sendHQAttachmentsForMessage_toChatID_style_account_(v24, v28, v6, v11, v27, v17);
}

- (void)_chat:(id)a3 inviteParticipants:(id)a4 reason:(id)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v68 = a3;
  v66 = a4;
  v61 = a5;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v76 = v68;
      v77 = 2112;
      v78 = v66;
      v79 = 2112;
      v80 = v61;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "chat: %@  participants: %@  reason: %@", buf, 0x20u);
    }
  }

  v10 = objc_msgSend_sharedController(IMDaemonController, v7, v8, v61);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0)) == 0)
  {
    v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v14, v15, 0)) == 0)
    {
      v58 = objc_msgSend_sharedController(IMDaemonController, v16, v17);
      v60 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v58, v59, 0)) == 0;

      if (v60)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  if (IMMergeNamedGroups())
  {
    v20 = objc_msgSend_sharedRegistry(IMChatRegistry, v18, v19);
    v22 = objc_msgSend_allGUIDsForChat_(v20, v21, v68);
  }

  else
  {
    v20 = objc_msgSend_account(v68, v18, v19);
    v23 = IMCopyGUIDForChatOnAccount(v68, v20);
    v74 = v23;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, &v74, 1);
  }

  v27 = objc_msgSend_account(v68, v25, v26);
  v30 = objc_msgSend_loginIMHandle(v27, v28, v29);
  objc_msgSend__updateSender_(v62, v31, v30);

  v65 = objc_msgSend__imMessageItem(v62, v32, v33);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v22;
  v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v69, v73, 16);
  if (v67)
  {
    v64 = *v70;
    do
    {
      v35 = 0;
      do
      {
        if (*v70 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v69 + 1) + 8 * v35);
        IMComponentsFromChatGUID();
        v37 = 0;
        v40 = objc_msgSend_sharedController(IMDaemonController, v38, v39);
        v43 = objc_msgSend_remoteDaemon(v40, v41, v42);
        v45 = objc_msgSend_arrayByApplyingSelector_(v66, v44, sel__handleInfo);
        v48 = objc_msgSend_chatStyle(v68, v46, v47);
        v51 = objc_msgSend_account(v68, v49, v50);
        v54 = objc_msgSend_uniqueID(v51, v52, v53);
        objc_msgSend_invitePersonInfo_withMessage_toChatID_identifier_style_account_(v43, v55, v45, v65, v36, v37, v48, v54);

        ++v35;
      }

      while (v67 != v35);
      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, &v69, v73, 16);
    }

    while (v67);
  }

LABEL_20:
  v57 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 removeParticipants:(id)a4 reason:(id)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v55 = a4;
  v52 = a5;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v65 = v57;
      v66 = 2112;
      v67 = v55;
      v68 = 2112;
      v69 = v52;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "chat: %@  participants: %@  reason: %@", buf, 0x20u);
    }
  }

  v10 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0)) == 0)
  {
    v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v14, v15, 0)) == 0)
    {
      v49 = objc_msgSend_sharedController(IMDaemonController, v16, v17);
      v51 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v49, v50, 0)) == 0;

      if (v51)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  if (IMMergeNamedGroups())
  {
    v20 = objc_msgSend_sharedRegistry(IMChatRegistry, v18, v19);
    v22 = objc_msgSend_allGUIDsForChat_(v20, v21, v57);
  }

  else
  {
    v20 = objc_msgSend_account(v57, v18, v19);
    v23 = IMCopyGUIDForChatOnAccount(v57, v20);
    v63 = v23;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, &v63, 1);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v22;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v58, v62, 16);
  if (v56)
  {
    v54 = *v59;
    do
    {
      v26 = 0;
      do
      {
        if (*v59 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v58 + 1) + 8 * v26);
        IMComponentsFromChatGUID();
        v28 = 0;
        v31 = objc_msgSend_sharedController(IMDaemonController, v29, v30);
        v34 = objc_msgSend_remoteDaemon(v31, v32, v33);
        v36 = objc_msgSend_arrayByApplyingSelector_(v55, v35, sel__handleInfo);
        v39 = objc_msgSend_chatStyle(v57, v37, v38);
        v42 = objc_msgSend_account(v57, v40, v41);
        v45 = objc_msgSend_uniqueID(v42, v43, v44);
        objc_msgSend_removePersonInfo_chatID_identifier_style_account_(v34, v46, v36, v27, v28, v39, v45);

        ++v26;
      }

      while (v56 != v26);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v58, v62, 16);
    }

    while (v56);
  }

LABEL_20:
  v48 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 joinWithProperties:(id)a4
{
  v109 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v100 = v6;
    v101 = 2112;
    v102 = v7;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@  joinProperties: %@", buf, 0x16u);
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) != 0)
  {
    goto LABEL_6;
  }

  v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
  if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) != 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v69 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
  v71 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v69, v70, 0);

  if (!v71)
  {
    goto LABEL_28;
  }

LABEL_7:
  v21 = objc_msgSend_chatIdentifier(v6, v19, v20);
  v24 = objc_msgSend_chatIdentifier(v6, v22, v23);
  v25 = *MEMORY[0x1E69A7AC8];
  objc_msgSend_chatStyle(v6, v26, v27);
  v28 = IMCopyAnyServiceGUIDForChat();

  v31 = objc_msgSend_chatGUIDToChatMap(self, v29, v30);
  v33 = objc_msgSend_objectForKey_(v31, v32, v28);
  if (!v33)
  {

LABEL_12:
    objc_msgSend__registerChat_isIncoming_guid_(self, v40, v6, 0, v28);
    v43 = objc_msgSend_chatStyle(v6, v41, v42);
    v46 = objc_msgSend_account(v6, v44, v45);

    if (!v46 || !v21)
    {
      goto LABEL_27;
    }

    v47 = IMChatRegistryLogHandle();
    v97 = v7;
    v98 = v43;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v50 = objc_msgSend_account(v6, v48, v49);
      v53 = objc_msgSend_guid(v6, v51, v52);
      v56 = objc_msgSend_chatIdentifier(v6, v54, v55);
      v59 = objc_msgSend_joinState(v6, v57, v58);
      v62 = objc_msgSend_personCentricID(v6, v60, v61);
      *buf = 138413314;
      v100 = v50;
      v101 = 2112;
      v102 = v53;
      v103 = 2112;
      v104 = v56;
      v105 = 2048;
      v106 = v59;
      v107 = 2112;
      v108 = v62;
      _os_log_impl(&dword_1A823F000, v47, OS_LOG_TYPE_DEFAULT, "Forwarding join chat to account %@ for: [IMChat guid: %@  chat identifier: %@  state: %lu  pcid: %@]", buf, 0x34u);

      v43 = v98;
    }

    if (v43 == 45)
    {
      v65 = objc_msgSend_recipient(v6, v63, v64);
      v68 = objc_msgSend__handleInfo(v65, v66, v67);
      v31 = IMSingleObjectArray();
    }

    else
    {
      v65 = objc_msgSend_participantsWithState_(v6, v63, 21);
      v31 = objc_msgSend_arrayByApplyingSelector_(v65, v72, sel__handleInfo);
    }

    v36 = objc_msgSend_groupID(v6, v73, v74);
    if (!v36)
    {
      v36 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v75, v76);
      objc_msgSend_setGroupID_(v6, v77, v36);
      v78 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v100 = v21;
        v101 = 2112;
        v102 = v36;
        _os_log_impl(&dword_1A823F000, v78, OS_LOG_TYPE_DEFAULT, "Chat with chat identifier %@ had no groupID. A new groupID was created: %@", buf, 0x16u);
      }
    }

    v96 = objc_msgSend_sharedController(IMDaemonController, v75, v76);
    v81 = objc_msgSend_remoteDaemon(v96, v79, v80);
    v95 = objc_msgSend_lastAddressedHandleID(v6, v82, v83);
    v94 = objc_msgSend_lastAddressedSIMID(v6, v84, v85);
    v88 = objc_msgSend_account(v6, v86, v87);
    v91 = objc_msgSend_uniqueID(v88, v89, v90);
    v7 = v97;
    objc_msgSend_joinChatID_handleInfo_identifier_style_groupID_lastAddressedHandle_lastAddressedSIMID_joinProperties_account_(v81, v92, v28, v31, v21, v98, v36, v95, v94, v97, v91);

    goto LABEL_26;
  }

  v36 = v33;
  if (objc_msgSend_joinState(v6, v34, v35) != 3)
  {
    v39 = objc_msgSend_joinState(v6, v37, v38);

    if (v39 == 4)
    {
      goto LABEL_27;
    }

    goto LABEL_12;
  }

LABEL_26:

LABEL_27:
LABEL_28:

  v93 = *MEMORY[0x1E69E9840];
}

- (void)_chat_leave:(id)a3
{
  v76[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v73 = v3;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v7, v8, 0)) == 0)
  {
    v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
    {
      v63 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
      v65 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v63, v64, 0)) == 0;

      if (v65)
      {
        goto LABEL_37;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v66 = objc_msgSend_chatStyle(v3, v15, v16);
  if (v66 == 45)
  {
    v17 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v3;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Not allowed to leave 1:1 chat: %@", buf, 0xCu);
    }
  }

  else
  {
    if (IMMergeNamedGroups())
    {
      v20 = objc_msgSend_sharedRegistry(IMChatRegistry, v18, v19);
      v22 = objc_msgSend_allGUIDsForChat_(v20, v21, v3);
    }

    else
    {
      v20 = objc_msgSend_account(v3, v18, v19);
      v23 = IMCopyGUIDForChatOnAccount(v3, v20);
      v76[0] = v23;
      v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, v76, 1);
    }

    v25 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_msgSend_account(v3, v26, v27);
      v31 = objc_msgSend_uniqueID(v28, v29, v30);
      *buf = 138412546;
      v73 = v3;
      v74 = 2112;
      v75 = v31;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_DEFAULT, "Leaving chat %@ with account ID %@", buf, 0x16u);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v17 = v22;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v32, &v67, v71, 16);
    if (v33)
    {
      v34 = *v68;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v68 != v34)
          {
            objc_enumerationMutation(v17);
          }

          v36 = *(*(&v67 + 1) + 8 * i);
          IMComponentsFromChatGUID();
          v39 = 0;
          if (v39)
          {
            v40 = objc_msgSend_account(v3, v37, v38);

            if (v40)
            {
              v41 = IMChatRegistryLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v73 = v39;
                _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_DEFAULT, "Forwarding leave chat for: %@", buf, 0xCu);
              }

              v44 = objc_msgSend_sharedController(IMDaemonController, v42, v43);
              v47 = objc_msgSend_remoteDaemon(v44, v45, v46);
              v50 = objc_msgSend_account(v3, v48, v49);
              v53 = objc_msgSend_uniqueID(v50, v51, v52);
              objc_msgSend_leaveChatID_style_account_(v47, v54, v39, v66, v53);
            }
          }
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v55, &v67, v71, 16);
      }

      while (v33);
    }

    v56 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v59 = objc_msgSend_guid(v3, v57, v58);
      *buf = 138412290;
      v73 = v59;
      _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_DEFAULT, "Unjoining chat locally: %@", buf, 0xCu);
    }

    if (v3)
    {
      objc_msgSend__setJoinState_(v3, v60, 0);
    }

    v61 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_DEFAULT, "Done", buf, 2u);
    }
  }

LABEL_37:
  v62 = *MEMORY[0x1E69E9840];
}

- (void)_chat_remove:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v48 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v55 = v48;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v7, v8, 0)) == 0)
  {
    v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
    {
      v45 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
      v47 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v45, v46, 0)) == 0;

      if (v47)
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v16 = objc_msgSend_allGUIDsForChat_(self, v15, v48);
  v17 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v16;
    _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Removing chat from the agent too: %@", buf, 0xCu);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v18 = v16;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v49, v53, 16);
  if (v20)
  {
    v21 = *v50;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v50 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v49 + 1) + 8 * i);
        v24 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v55 = v23;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_DEFAULT, "   Found guid to remove: %@", buf, 0xCu);
        }

        v27 = objc_msgSend_sharedController(IMDaemonController, v25, v26);
        v30 = objc_msgSend_remoteDaemon(v27, v28, v29);
        objc_msgSend_removeChat_(v30, v31, v23);

        objc_msgSend__unregisterChatWithGUID_deleted_(self, v32, v23, 1);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v33, &v49, v53, 16);
    }

    while (v20);
  }

  v36 = objc_msgSend_personCentricID(v48, v34, v35);

  if (v36)
  {
    v39 = objc_msgSend_chatPersonIDToChatMap(self, v37, v38);
    v42 = objc_msgSend_personCentricID(v48, v40, v41);
    objc_msgSend_removeObjectForKey_(v39, v43, v42);
  }

LABEL_23:
  v44 = *MEMORY[0x1E69E9840];
}

- (void)_chat_declineInvitation:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v50 = v3;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEBUG, "chat: %@", buf, 0xCu);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v7, v8, 0)) == 0)
  {
    v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
    {
      v46 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
      v48 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v46, v47, 0)) == 0;

      if (v48)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v17 = objc_msgSend_chatStyle(v3, v15, v16);
  v20 = objc_msgSend_account(v3, v18, v19);
  v21 = IMCopyGUIDForChatOnAccount(v3, v20);

  IMComponentsFromChatGUID();
  v22 = 0;
  v25 = objc_msgSend_account(v3, v23, v24);
  if (v25)
  {
    v26 = v22 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;

  if (v27)
  {
    v28 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_msgSend_account(v3, v29, v30);
      *buf = 138412546;
      v50 = v3;
      v51 = 2112;
      v52 = v31;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "Forwarding decline chat for: %@   to account: %@", buf, 0x16u);
    }

    v34 = objc_msgSend_sharedController(IMDaemonController, v32, v33);
    v37 = objc_msgSend_remoteDaemon(v34, v35, v36);
    v40 = objc_msgSend_account(v3, v38, v39);
    v43 = objc_msgSend_uniqueID(v40, v41, v42);
    objc_msgSend_declineInvitationToChatID_identifier_style_account_(v37, v44, v21, v22, v17, v43);
  }

LABEL_20:
  v45 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 setProperties:(id)a4 ofParticipant:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v57 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v60 = v8;
      v61 = 2112;
      v62 = v57;
      v63 = 2112;
      v64 = v9;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "chat: %@  properties: %@  participant: %@", buf, 0x20u);
    }
  }

  v13 = objc_msgSend_sharedController(IMDaemonController, v10, v11, v57);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v13, v14, 0)) == 0)
  {
    v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v17, v18, 0)) == 0)
    {
      v54 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
      v56 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v54, v55, 0)) == 0;

      if (v56)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v23 = objc_msgSend_account(v8, v21, v22);
  v24 = IMCopyGUIDForChatOnAccount(v8, v23);

  buf[0] = 0;
  IMComponentsFromChatGUID();
  v25 = 0;
  v28 = objc_msgSend_chatGUIDToChatMap(self, v26, v27);
  v30 = objc_msgSend_objectForKey_(v28, v29, v24);
  LODWORD(v23) = v30 == 0;

  if (v23)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v31, v8, 0, v24);
  }

  v33 = objc_msgSend_account(v8, v31, v32);
  if (v33)
  {
    v34 = v25 == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;

  if (v35)
  {
    v38 = objc_msgSend_sharedController(IMDaemonController, v36, v37);
    v41 = objc_msgSend_remoteDaemon(v38, v39, v40);
    v44 = objc_msgSend_ID(v9, v42, v43);
    v45 = buf[0];
    v48 = objc_msgSend_account(v8, v46, v47);
    v51 = objc_msgSend_uniqueID(v48, v49, v50);
    objc_msgSend_setProperties_ofParticipant_inChatID_identifier_style_account_(v41, v52, v58, v44, v24, v25, v45, v51);
  }

LABEL_20:
  v53 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 setValue:(id)a4 forChatProperty:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v52 = a4;
  v53 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v61 = v54;
      v62 = 2112;
      v63 = v53;
      v64 = 2112;
      v65 = v52;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@  property: %@  value: %@", buf, 0x20u);
    }
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
  {
    v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) == 0)
    {
      v49 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
      v51 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v49, v50, 0)) == 0;

      if (v51)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v21 = objc_msgSend_account(v54, v19, v20);
  v22 = IMCopyGUIDForChatOnAccount(v54, v21);

  v25 = objc_msgSend_chatGUIDToChatMap(self, v23, v24);
  v27 = objc_msgSend_objectForKey_(v25, v26, v22);
  v28 = v27 == 0;

  if (v28)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v29, v54, 0, v22);
  }

  if (v53)
  {
    v30 = MEMORY[0x1E695DF20];
    if (v52)
    {
      v32 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF20], v29, v52, v53);
    }

    else
    {
      v33 = objc_msgSend_null(MEMORY[0x1E695DFB0], v29, 0);
      v32 = objc_msgSend_dictionaryWithObject_forKey_(v30, v34, v33, v53);
    }

    v35 = objc_msgSend_allGUIDsForChat_(self, v31, v54);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v55, v59, 16);
    if (v39)
    {
      v40 = *v56;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v56 != v40)
          {
            objc_enumerationMutation(v35);
          }

          v42 = *(*(&v55 + 1) + 8 * i);
          v43 = objc_msgSend_sharedController(IMDaemonController, v37, v38);
          v46 = objc_msgSend_remoteDaemon(v43, v44, v45);
          objc_msgSend_chat_updateProperties_(v46, v47, v42, v32);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v55, v59, 16);
      }

      while (v39);
    }
  }

LABEL_24:
  v48 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 updateDisplayName:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v59 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v66 = v6;
      v67 = 2112;
      v68 = v59;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "chat: %@  update display name: %@", buf, 0x16u);
    }
  }

  v10 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0)) == 0)
  {
    v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v14, v15, 0)) == 0)
    {
      v55 = objc_msgSend_sharedController(IMDaemonController, v16, v17);
      v57 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v55, v56, 0)) == 0;

      if (v57)
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v20 = objc_msgSend_account(v6, v18, v19);
  v58 = IMCopyGUIDForChatOnAccount(v6, v20);

  v23 = objc_msgSend_chatGUIDToChatMap(self, v21, v22);
  v25 = objc_msgSend_objectForKey_(v23, v24, v58);
  v26 = v25 == 0;

  if (v26)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v27, v6, 0, v58);
  }

  v28 = objc_msgSend_allGUIDsForChat_(self, v27, v6);
  v31 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v29, v30);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v32 = v28;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v60, v64, 16);
  if (v36)
  {
    v37 = *v61;
    do
    {
      v38 = 0;
      do
      {
        if (*v61 != v37)
        {
          objc_enumerationMutation(v32);
        }

        v39 = *(*(&v60 + 1) + 8 * v38);
        if (!objc_msgSend_shouldIgnoreiMessageSiblingGroupIdentityUpdates(v6, v34, v35) || (IMComponentsFromChatGUID(), v40 = 0, isEqualToString = objc_msgSend_isEqualToString_(v40, v41, *MEMORY[0x1E69A7AF0]), v40, (isEqualToString & 1) == 0))
        {
          v43 = objc_msgSend_sharedController(IMDaemonController, v34, v35);
          v46 = objc_msgSend_remoteDaemon(v43, v44, v45);
          objc_msgSend_chat_updateDisplayName_messageID_(v46, v47, v39, v59, v31);

          v50 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v48, v49);
          LODWORD(v43) = objc_msgSend_isOneChatEnabled(v50, v51, v52);

          if (v43)
          {
            v53 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v34, v35);

            v31 = v53;
          }
        }

        ++v38;
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v60, v64, 16);
    }

    while (v36);
  }

LABEL_23:
  v54 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 updateLastAddressedHandle:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v53 = v46;
      v54 = 2112;
      v55 = v6;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "chat: %@  update last address handle: %@", buf, 0x16u);
    }
  }

  v10 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0)) == 0)
  {
    v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v14, v15, 0)) == 0)
    {
      v43 = objc_msgSend_sharedController(IMDaemonController, v16, v17);
      v45 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v43, v44, 0)) == 0;

      if (v45)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v20 = objc_msgSend_account(v46, v18, v19);
  v21 = IMCopyGUIDForChatOnAccount(v46, v20);

  v24 = objc_msgSend_chatGUIDToChatMap(self, v22, v23);
  v26 = objc_msgSend_objectForKey_(v24, v25, v21);
  v27 = v26 == 0;

  if (v27)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v28, v46, 0, v21);
  }

  v29 = objc_msgSend_allGUIDsForChat_(self, v28, v46);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v47, v51, 16);
  if (v33)
  {
    v34 = *v48;
    do
    {
      v35 = 0;
      do
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(v29);
        }

        v36 = *(*(&v47 + 1) + 8 * v35);
        v37 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v40 = objc_msgSend_remoteDaemon(v37, v38, v39);
        objc_msgSend_chat_updateLastAddressHandle_(v40, v41, v36, v6);

        ++v35;
      }

      while (v33 != v35);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v47, v51, 16);
    }

    while (v33);
  }

LABEL_19:
  v42 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 updateLastAddressedSIMID:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v53 = v46;
      v54 = 2112;
      v55 = v6;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "chat: %@  update last address uniqueID: %@", buf, 0x16u);
    }
  }

  v10 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0)) == 0)
  {
    v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v14, v15, 0)) == 0)
    {
      v43 = objc_msgSend_sharedController(IMDaemonController, v16, v17);
      v45 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v43, v44, 0)) == 0;

      if (v45)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v20 = objc_msgSend_account(v46, v18, v19);
  v21 = IMCopyGUIDForChatOnAccount(v46, v20);

  v24 = objc_msgSend_chatGUIDToChatMap(self, v22, v23);
  v26 = objc_msgSend_objectForKey_(v24, v25, v21);
  v27 = v26 == 0;

  if (v27)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v28, v46, 0, v21);
  }

  v29 = objc_msgSend_allGUIDsForChat_(self, v28, v46);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v47, v51, 16);
  if (v33)
  {
    v34 = *v48;
    do
    {
      v35 = 0;
      do
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(v29);
        }

        v36 = *(*(&v47 + 1) + 8 * v35);
        v37 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v40 = objc_msgSend_remoteDaemon(v37, v38, v39);
        objc_msgSend_chat_updateLastAddressedSIMID_(v40, v41, v36, v6);

        ++v35;
      }

      while (v33 != v35);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v47, v51, 16);
    }

    while (v33);
  }

LABEL_19:
  v42 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 updateIsFiltered:(int64_t)a4 synchronously:(BOOL)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v71 = v8;
      v72 = 1024;
      LODWORD(v73) = a4;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "chat: %@  update is filtered: %d", buf, 0x12u);
    }
  }

  v12 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v12, v13, 0)) == 0)
  {
    v16 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v16, v17, 0)) == 0)
    {
      v61 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
      v63 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v61, v62, 0)) == 0;

      if (v63)
      {
        goto LABEL_36;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v22 = objc_msgSend_account(v8, v20, v21);
  v23 = IMCopyGUIDForChatOnAccount(v8, v22);

  v26 = objc_msgSend_chatGUIDToChatMap(self, v24, v25);
  v28 = objc_msgSend_objectForKey_(v26, v27, v23);
  v29 = v28 == 0;

  if (v29)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v30, v8, 0, v23);
  }

  v32 = objc_msgSend_sharedController(IMDaemonController, v30, v31);
  v35 = v32;
  if (a5)
  {
    objc_msgSend_synchronousRemoteDaemon(v32, v33, v34);
  }

  else
  {
    objc_msgSend_remoteDaemon(v32, v33, v34);
  }
  v36 = ;

  v38 = objc_msgSend_allGUIDsForChat_(self, v37, v8);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v66, v74, 16);
  if (v42)
  {
    v43 = *v67;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v67 != v43)
        {
          objc_enumerationMutation(v38);
        }

        objc_msgSend_chat_updateIsFiltered_(v36, v40, *(*(&v66 + 1) + 8 * i), a4);
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v40, &v66, v74, 16);
    }

    while (v42);
  }

  v45 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v40, v41);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v45, v46, v47);

  if (isIntroductionsEnabled && objc_msgSend_isFiltered(v8, v49, v50) == 2)
  {
    v55 = objc_msgSend_lastIncomingFinishedMessage(v8, v51, v52);
    if (!v55)
    {
      v56 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v71 = "[IMChatRegistry(IMChatRegistry_Sending) _chat:updateIsFiltered:synchronously:]";
        v72 = 2112;
        v73 = v8;
        _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", buf, 0x16u);
      }

      v55 = objc_msgSend_lastFinishedMessage(v8, v57, v58);
    }

    v60 = objc_msgSend_guid(v55, v53, v54);
    if (v60)
    {
      objc_msgSend_junkChatContainingMessageWithGUID_(v36, v59, v60);
    }

    else
    {
      v64 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2B8C();
      }
    }
  }

LABEL_36:
  v65 = *MEMORY[0x1E69E9840];
}

- (void)_chat_fetchIncomingPendingMessagesOverSatellite:(id)a3
{
  v13 = 0;
  v14 = 0;
  sub_1A839DC70(self, a3, &v14, &v13);
  v4 = v14;
  v5 = v13;
  v8 = objc_msgSend_daemonController(self, v6, v7);
  v11 = objc_msgSend_remoteDaemon(v8, v9, v10);
  objc_msgSend_fetchIncomingPendingMessagesOverSatelliteForChatsWithIDs_services_(v11, v12, v4, v5);
}

- (void)_loadSiblingsForChatIfNeeded:(id)a3
{
  v8 = a3;
  if ((objc_msgSend_hasQueriedForSiblingChats(v8, v4, v5) & 1) == 0)
  {
    objc_msgSend__loadPossibleSiblingChatsForHandlesAssociatedWithChat_waitForReply_completionHandler_(self, v6, v8, 1, 0);
    objc_msgSend_setHasQueriedForSiblingChats_(v8, v7, 1);
  }
}

- (void)_chat_loadHistory:(id)a3 limit:(unint64_t)a4 beforeGUID:(id)a5 afterGUID:(id)a6 threadIdentifier:(id)a7 queryID:(id)a8 synchronous:(BOOL)a9 completion:(id)a10
{
  v96 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v71 = a6;
  v68 = a7;
  v72 = a8;
  v69 = a10;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v87 = v15;
      v88 = 1024;
      v89 = a4;
      v90 = 2112;
      v91 = v16;
      v92 = 2112;
      v93 = v71;
      v94 = 2112;
      v95 = v72;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEBUG, "chat: %@ limit: %d beforeGUID: %@ afterGUID: %@ queryID: %@", buf, 0x30u);
    }
  }

  v20 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v20, v21, 0)) == 0)
  {
    v24 = objc_msgSend_sharedController(IMDaemonController, v22, v23);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v24, v25, 0)) == 0)
    {
      v63 = objc_msgSend_sharedController(IMDaemonController, v26, v27);
      v65 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v63, v64, 0)) == 0;

      if (v65)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  objc_msgSend__loadSiblingsForChatIfNeeded_(self, v28, v15);
  v84 = 0;
  v85 = 0;
  sub_1A839DC70(self, v15, &v85, &v84);
  v66 = v85;
  v29 = v84;
  v32 = objc_msgSend_daemonController(self, v30, v31);
  v35 = v32;
  if (a9)
  {
    objc_msgSend_synchronousRemoteDaemon(v32, v33, v34);
  }

  else
  {
    objc_msgSend_remoteDaemon(v32, v33, v34);
  }
  v67 = ;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83A61E4;
  aBlock[3] = &unk_1E7813FA0;
  aBlock[4] = self;
  v80 = v72;
  v36 = v15;
  v81 = v36;
  v37 = v29;
  v82 = v37;
  v83 = a4;
  v38 = _Block_copy(aBlock);
  v39 = IMLogHandleForCategory();
  v40 = os_signpost_id_generate(v39);
  v41 = v39;
  v42 = v41;
  if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v40, "loadHistoryForChatWithGUID", "", buf, 2u);
  }

  v45 = objc_msgSend_guid(v36, v43, v44);
  v48 = objc_msgSend_chatStyle(v36, v46, v47);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = sub_1A83A6294;
  v73[3] = &unk_1E7813FF0;
  v77 = v40;
  v74 = v42;
  v75 = v38;
  v78 = a9;
  v76 = v69;
  v49 = v38;
  v50 = v42;
  objc_msgSend_loadHistoryForChatWithGUID_chatIdentifiers_style_services_limit_beforeGUID_afterGUID_threadIdentifier_reply_(v67, v51, v45, v66, v48, v37, a4, v16, v71, v68, v73);

  if (objc_msgSend_isFiltered(v36, v52, v53))
  {
    if ((objc_msgSend_supportsFilteringExtensions(v36, v54, v55) & 1) == 0)
    {
      v57 = objc_msgSend_valueForChatProperty_(v36, v56, @"hasViewedPotentialSpamChat");
      v60 = objc_msgSend_BOOLValue(v57, v58, v59);

      if ((v60 & 1) == 0)
      {
        objc_msgSend_setValue_forChatProperty_(v36, v61, MEMORY[0x1E695E118], @"hasViewedPotentialSpamChat");
      }
    }
  }

LABEL_20:
  v62 = *MEMORY[0x1E69E9840];
}

- (void)_chat_loadPagedHistory:(id)a3 numberOfMessagesBefore:(unint64_t)a4 numberOfMessagesAfter:(unint64_t)a5 messageGUID:(id)a6 threadIdentifier:(id)a7 queryID:(id)a8 synchronous:(BOOL)a9 completion:(id)a10
{
  v82 = *MEMORY[0x1E69E9840];
  v58 = a3;
  v56 = a6;
  v54 = a7;
  v57 = a8;
  v55 = a10;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v73 = v58;
      v74 = 1024;
      v75 = a4;
      v76 = 1024;
      v77 = a5;
      v78 = 2112;
      v79 = v56;
      v80 = 2112;
      v81 = v57;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEBUG, "_chat_loadPagedHistory chat: %@ numberOfMessagesBefore: %d numberOfMessagesAfter: %d messageGUID: %@ queryID: %@", buf, 0x2Cu);
    }
  }

  v19 = objc_msgSend_sharedController(IMDaemonController, v16, v17);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v19, v20, 0)) == 0)
  {
    v23 = objc_msgSend_sharedController(IMDaemonController, v21, v22);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v23, v24, 0)) == 0)
    {
      v50 = objc_msgSend_sharedController(IMDaemonController, v25, v26);
      v52 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v50, v51, 0)) == 0;

      if (v52)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  objc_msgSend__loadSiblingsForChatIfNeeded_(self, v27, v58);
  v70 = 0;
  v71 = 0;
  sub_1A839DC70(self, v58, &v71, &v70);
  v53 = v71;
  v28 = v70;
  v29 = IMLogHandleForCategory();
  v30 = os_signpost_id_generate(v29);
  v31 = v29;
  v32 = v31;
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "loadPagedHistoryAroundMessageWithGUID", "", buf, 2u);
  }

  v35 = objc_msgSend_daemonController(self, v33, v34);
  v38 = v35;
  if (a9)
  {
    objc_msgSend_synchronousRemoteDaemon(v35, v36, v37);
  }

  else
  {
    objc_msgSend_remoteDaemon(v35, v36, v37);
  }
  v39 = ;

  v42 = objc_msgSend_guid(v58, v40, v41);
  v45 = objc_msgSend_chatStyle(v58, v43, v44);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = sub_1A83A68C8;
  v59[3] = &unk_1E7814040;
  v66 = v30;
  v60 = v32;
  v61 = self;
  v62 = v57;
  v63 = v58;
  v64 = v28;
  v67 = a4;
  v68 = a5;
  v69 = a9;
  v65 = v55;
  v46 = v28;
  v47 = v32;
  objc_msgSend_loadPagedHistoryAroundMessageWithGUID_chatGUID_chatIdentifiers_style_services_numberOfMessagesBefore_numberOfMessagesAfter_threadIdentifier_reply_(v39, v48, v56, v42, v53, v45, v46, a4, a5, v54, v59);

LABEL_16:
  v49 = *MEMORY[0x1E69E9840];
}

- (void)_chat_fetchHistorySummary:(id)a3 dateInterval:(id)a4 synchronous:(BOOL)a5 queryID:(id)a6 completion:(id)a7
{
  v9 = a5;
  v59 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v52 = v12;
      v53 = 2112;
      v54 = v13;
      v55 = 1024;
      v56 = v9;
      v57 = 2112;
      v58 = v14;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEBUG, "_chat_fetchHistorySummary chat: %@ dateInterval: %@ synchronous: %d queryID: %@", buf, 0x26u);
    }
  }

  v19 = objc_msgSend_sharedController(IMDaemonController, v16, v17);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v19, v20, 0)) == 0)
  {
    v23 = objc_msgSend_sharedController(IMDaemonController, v21, v22);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v23, v24, 0)) == 0)
    {
      v42 = objc_msgSend_sharedController(IMDaemonController, v25, v26);
      v44 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v42, v43, 0)) == 0;

      if (v44)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  objc_msgSend__loadSiblingsForChatIfNeeded_(self, v27, v12);
  v49 = 0;
  v50 = 0;
  sub_1A839DC70(self, v12, &v50, &v49);
  v28 = v50;
  v29 = v49;
  v32 = objc_msgSend_chatStyle(v12, v30, v31);
  v35 = objc_msgSend_daemonController(self, v33, v34);
  v38 = v35;
  if (v9)
  {
    objc_msgSend_synchronousRemoteDaemon(v35, v36, v37);
  }

  else
  {
    objc_msgSend_remoteDaemon(v35, v36, v37);
  }
  v39 = ;

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_1A83A6EA8;
  v45[3] = &unk_1E7814068;
  v48 = v9;
  v47 = v15;
  v46 = v14;
  objc_msgSend_fetchMessageHistorySummaryForDateInterval_chatIdentifiers_chatStyle_services_reply_(v39, v40, v13, v28, v32, v29, v45);

LABEL_13:
  v41 = *MEMORY[0x1E69E9840];
}

- (void)_chat_fetchOldestMessageDateForChat:(id)a3 synchronous:(BOOL)a4 queryID:(id)a5 completion:(id)a6
{
  v8 = a4;
  v54 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v49 = v10;
      v50 = 1024;
      v51 = v8;
      v52 = 2112;
      v53 = v11;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEBUG, "_chat_fetchOldestMessageDateForChat chat: %@ synchronous: %d queryID: %@", buf, 0x1Cu);
    }
  }

  v16 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v16, v17, 0)) == 0)
  {
    v20 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v20, v21, 0)) == 0)
    {
      v39 = objc_msgSend_sharedController(IMDaemonController, v22, v23);
      v41 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v39, v40, 0)) == 0;

      if (v41)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  objc_msgSend__loadSiblingsForChatIfNeeded_(self, v24, v10);
  v46 = 0;
  v47 = 0;
  sub_1A839DC70(self, v10, &v47, &v46);
  v25 = v47;
  v26 = v46;
  v29 = objc_msgSend_chatStyle(v10, v27, v28);
  v32 = objc_msgSend_daemonController(self, v30, v31);
  v35 = v32;
  if (v8)
  {
    objc_msgSend_synchronousRemoteDaemon(v32, v33, v34);
  }

  else
  {
    objc_msgSend_remoteDaemon(v32, v33, v34);
  }
  v36 = ;

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A83A7284;
  v42[3] = &unk_1E7814090;
  v45 = v8;
  v44 = v12;
  v43 = v11;
  objc_msgSend_fetchOldestMessageDateForChatIdentifiers_chatStyle_services_reply_(v36, v37, v25, v29, v26, v42);

LABEL_13:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_chat_clearHistory:(id)a3 beforeGUID:(id)a4 afterGUID:(id)a5 queryID:(id)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v47 = v10;
      v48 = 2112;
      v49 = v11;
      v50 = 2112;
      v51 = v12;
      v52 = 2112;
      v53 = v13;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEBUG, "chat: %@ beforeGUID: %@ afterGUID: %@ queryID: %@", buf, 0x2Au);
    }
  }

  v17 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v17, v18, 0)) == 0)
  {
    v21 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v21, v22, 0)) == 0)
    {
      v41 = objc_msgSend_sharedController(IMDaemonController, v23, v24);
      v43 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v41, v42, 0)) == 0;

      if (v43)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v44 = 0;
  v45 = 0;
  sub_1A839DC70(self, v10, &v45, &v44);
  v25 = v45;
  v26 = v44;
  v29 = objc_msgSend_sharedController(IMDaemonController, v27, v28);
  v32 = objc_msgSend_remoteDaemon(v29, v30, v31);
  v35 = objc_msgSend_chatStyle(v10, v33, v34);
  v38 = objc_msgSend_guid(v10, v36, v37);
  objc_msgSend_clearHistoryForIDs_style_onServices_beforeGUID_afterGUID_chatID_queryID_(v32, v39, v25, v35, v26, v11, v12, v38, v13);

LABEL_10:
  v40 = *MEMORY[0x1E69E9840];
}

- (void)_chat_loadFrequentReplies:(id)a3 limit:(unint64_t)a4 queryID:(id)a5 loadImmediately:(BOOL)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v43 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v53 = v10;
      v54 = 1024;
      v55 = a4;
      v56 = 2112;
      v57 = v43;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEBUG, "chat: %@ limit:%d queryID: %@", buf, 0x1Cu);
    }
  }

  v14 = objc_msgSend_sharedController(IMDaemonController, v11, v12);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v14, v15, 0)) == 0)
  {
    v18 = objc_msgSend_sharedController(IMDaemonController, v16, v17);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v18, v19, 0)) == 0)
    {
      v40 = objc_msgSend_sharedController(IMDaemonController, v20, v21);
      v42 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v40, v41, 0)) == 0;

      if (v42)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v50 = 0;
  v51 = 0;
  sub_1A839DC70(self, v10, &v51, &v50);
  v22 = v51;
  v23 = v50;
  v26 = objc_msgSend_daemonController(self, v24, v25);
  v29 = v26;
  if (a6)
  {
    objc_msgSend_synchronousRemoteDaemon(v26, v27, v28);
  }

  else
  {
    objc_msgSend_remoteDaemon(v26, v27, v28);
  }
  v30 = ;

  v33 = objc_msgSend_guid(v10, v31, v32);
  v36 = objc_msgSend_chatStyle(v10, v34, v35);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_1A83A7D44;
  v44[3] = &unk_1E7814108;
  v49 = a6;
  v44[4] = self;
  v45 = v43;
  v46 = v10;
  v47 = v23;
  v48 = a4;
  v37 = v23;
  objc_msgSend_loadFrequentRepliesForChatWithGUID_chatIdentifiers_style_services_limit_reply_(v30, v38, v33, v22, v36, v37, a4, v44);

LABEL_13:
  v39 = *MEMORY[0x1E69E9840];
}

- (void)_chat_loadUnreadMessages:(id)a3 limit:(unint64_t)a4 fallbackGUID:(id)a5 queryID:(id)a6 loadImmediately:(BOOL)a7
{
  v66 = *MEMORY[0x1E69E9840];
  v49 = a3;
  v47 = a5;
  v48 = a6;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v61 = v49;
      v62 = 2048;
      v63 = a4;
      v64 = 2112;
      v65 = v48;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "chat: %@ limit:%lu queryID: %@", buf, 0x20u);
    }
  }

  v15 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) == 0)
  {
    v19 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v19, v20, 0)) == 0)
    {
      v44 = objc_msgSend_sharedController(IMDaemonController, v21, v22);
      v46 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v44, v45, 0)) == 0;

      if (v46)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v58 = 0;
  v59 = 0;
  sub_1A839DC70(self, v49, &v59, &v58);
  v23 = v59;
  v24 = v58;
  v27 = objc_msgSend_daemonController(self, v25, v26);
  v30 = v27;
  if (a7)
  {
    objc_msgSend_synchronousRemoteDaemon(v27, v28, v29);
  }

  else
  {
    objc_msgSend_remoteDaemon(v27, v28, v29);
  }
  v31 = ;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83A8288;
  aBlock[3] = &unk_1E7813FA0;
  aBlock[4] = self;
  v54 = v48;
  v32 = v49;
  v55 = v32;
  v56 = v24;
  v57 = a4;
  v33 = v24;
  v34 = _Block_copy(aBlock);
  v37 = objc_msgSend_guid(v32, v35, v36);
  v40 = objc_msgSend_chatStyle(v32, v38, v39);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_1A83A8338;
  v50[3] = &unk_1E7814130;
  v52 = a7;
  v51 = v34;
  v41 = v34;
  objc_msgSend_loadUnreadHistoryForChatWithGUID_chatIdentifiers_style_services_limit_fallbackMessageGUID_reply_(v31, v42, v37, v23, v40, v33, a4, v47, v50);

LABEL_13:
  v43 = *MEMORY[0x1E69E9840];
}

- (void)_chat_loadAttachments:(id)a3 queryID:(id)a4 loadImmediately:(BOOL)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v50 = v8;
      v51 = 2112;
      v52 = v9;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "chat: %@ queryID: %@", buf, 0x16u);
    }
  }

  v13 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v13, v14, 0)) == 0)
  {
    v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v17, v18, 0)) == 0)
    {
      v39 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
      v41 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v39, v40, 0)) == 0;

      if (v41)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v47 = 0;
  v48 = 0;
  sub_1A839DC70(self, v8, &v48, &v47);
  v21 = v48;
  v22 = v47;
  v25 = objc_msgSend_daemonController(self, v23, v24);
  v28 = v25;
  if (a5)
  {
    objc_msgSend_synchronousRemoteDaemon(v25, v26, v27);
  }

  else
  {
    objc_msgSend_remoteDaemon(v25, v26, v27);
  }
  v29 = ;

  v32 = objc_msgSend_guid(v8, v30, v31);
  v35 = objc_msgSend_chatStyle(v8, v33, v34);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A83A8730;
  v42[3] = &unk_1E7814158;
  v46 = a5;
  v42[4] = self;
  v43 = v9;
  v44 = v8;
  v45 = v22;
  v36 = v22;
  objc_msgSend_loadAttachmentsForChatWithGUID_chatIdentifiers_style_services_reply_(v29, v37, v32, v21, v35, v36, v42);

LABEL_13:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_chat_loadUncachedAttachmentsCount:(id)a3 queryID:(id)a4 loadImmediately:(BOOL)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v50 = v8;
      v51 = 2112;
      v52 = v9;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "chat: %@ queryID: %@", buf, 0x16u);
    }
  }

  v13 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v13, v14, 0)) == 0)
  {
    v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v17, v18, 0)) == 0)
    {
      v39 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
      v41 = (*MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v39, v40, 0)) == 0;

      if (v41)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v47 = 0;
  v48 = 0;
  sub_1A839DC70(self, v8, &v48, &v47);
  v21 = v48;
  v22 = v47;
  v25 = objc_msgSend_daemonController(self, v23, v24);
  v28 = v25;
  if (a5)
  {
    objc_msgSend_synchronousRemoteDaemon(v25, v26, v27);
  }

  else
  {
    objc_msgSend_remoteDaemon(v25, v26, v27);
  }
  v29 = ;

  v32 = objc_msgSend_guid(v8, v30, v31);
  v35 = objc_msgSend_chatStyle(v8, v33, v34);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A83A8BB8;
  v42[3] = &unk_1E78140B8;
  v46 = a5;
  v42[4] = self;
  v43 = v9;
  v44 = v8;
  v45 = v22;
  v36 = v22;
  objc_msgSend_loadUncachedAttachmentCountForChatWithGUID_chatIdentifiers_style_services_reply_(v29, v37, v32, v21, v35, v36, v42);

LABEL_13:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_chat_downloadPurgedAttachmentsForChat:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Download purged attachments for chat %@", buf, 0xCu);
  }

  v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v8, v9, 0)) == 0)
  {
    v12 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v12, v13, 0)) == 0)
    {
      v32 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
      v34 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v32, v33, 0);

      if (!v34)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v35 = 0;
  v36 = 0;
  sub_1A839DC70(self, v4, &v36, &v35);
  v16 = v36;
  v17 = v35;
  v20 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
  v23 = objc_msgSend_remoteDaemon(v20, v21, v22);
  v26 = objc_msgSend_chatStyle(v4, v24, v25);
  v29 = objc_msgSend_guid(v4, v27, v28);
  objc_msgSend_downloadPurgedAttachmentsForIDs_style_onServices_chatID_(v23, v30, v16, v26, v17, v29);

LABEL_8:
  v31 = *MEMORY[0x1E69E9840];
}

- (void)_chat_isDownloadingPurgedAssetsForChat:(id)a3 queryID:(id)a4 loadImmediately:(BOOL)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v8;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Getting isDownloadingPurgedAssets for chat %@", buf, 0xCu);
  }

  v13 = objc_msgSend_sharedController(IMDaemonController, v11, v12);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v13, v14, 0)) == 0)
  {
    v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v17, v18, 0)) == 0)
    {
      v39 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
      v41 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v39, v40, 0);

      if (!v41)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v47 = 0;
  v48 = 0;
  sub_1A839DC70(self, v8, &v48, &v47);
  v21 = v48;
  v22 = v47;
  v25 = objc_msgSend_daemonController(self, v23, v24);
  v28 = v25;
  if (a5)
  {
    objc_msgSend_synchronousReplyingRemoteDaemon(v25, v26, v27);
  }

  else
  {
    objc_msgSend_replyingRemoteDaemon(v25, v26, v27);
  }
  v29 = ;

  v32 = objc_msgSend_guid(v8, v30, v31);
  v35 = objc_msgSend_chatStyle(v8, v33, v34);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A83A9240;
  v42[3] = &unk_1E78141D0;
  v46 = a5;
  v42[4] = self;
  v43 = v9;
  v44 = v8;
  v45 = v22;
  v36 = v22;
  objc_msgSend_loadIsDownloadingPurgedAttachmentsForChatWithGUID_chatIdentifiers_style_services_reply_(v29, v37, v32, v21, v35, v36, v42);

LABEL_11:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_chat_markRepliedForMessageGUID:(id)a3
{
  v3 = a3;
  v10 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = objc_msgSend_remoteDaemon(v10, v6, v7);
  objc_msgSend_markRepliedForMessageGUID_(v8, v9, v3);
}

- (id)_unreadCountGUIDsForChat:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = 0;
  sub_1A839DC70(self, v4, &v28, &v27);
  v5 = v28;
  v6 = v27;
  v7 = MEMORY[0x1E695DF70];
  v10 = objc_msgSend_count(v5, v8, v9);
  v12 = objc_msgSend_arrayWithCapacity_(v7, v11, v10);
  if (objc_msgSend_count(v5, v13, v14))
  {
    v16 = 0;
    do
    {
      v17 = objc_msgSend_objectAtIndex_(v5, v15, v16);
      v19 = objc_msgSend_objectAtIndex_(v6, v18, v16);
      objc_msgSend_chatStyle(v4, v20, v21);
      v22 = IMCopyAnyServiceGUIDForChat();
      objc_msgSend_addObject_(v12, v23, v22);

      ++v16;
    }

    while (v16 < objc_msgSend_count(v5, v24, v25));
  }

  return v12;
}

- (int64_t)_chat_cachedUnreadCount:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v7, v8, v9);

  if (isUnreadCountRefactorEnabled)
  {
    v13 = objc_msgSend_unreadCountController(self, v11, v12);
    v15 = objc_msgSend__unreadCountGUIDsForChat_(self, v14, v4);
    v17 = objc_msgSend_unreadCountForChatsWithGUIDs_(v13, v16, v15);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_chat_clearCachedUnreadCount:(id)a3
{
  v16 = a3;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v6, v7, v8);

  if (isUnreadCountRefactorEnabled)
  {
    v12 = objc_msgSend_unreadCountController(self, v10, v11);
    v14 = objc_msgSend__unreadCountGUIDsForChat_(self, v13, v16);
    objc_msgSend_clearUnreadCountForChatsWithGUIDs_(v12, v15, v14);
  }
}

- (void)_chat:(id)a3 appendTranslation:(id)a4 toMessageItem:(id)a5 partIndex:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v14 = objc_msgSend_account(v11, v12, v13);
  v15 = IMCopyGUIDForChatOnAccount(v11, v14);

  IMComponentsFromChatGUID();
  v16 = 0;
  v19 = objc_msgSend_chatStyle(v11, v17, v18);
  v22 = objc_msgSend_account(v11, v20, v21);

  v25 = objc_msgSend_uniqueID(v22, v23, v24);

  v28 = objc_msgSend_sharedController(IMDaemonController, v26, v27);
  v31 = objc_msgSend_remoteDaemon(v28, v29, v30);
  objc_msgSend_appendTranslation_toMessageItem_partIndex_toChatIdentifier_style_account_(v31, v32, v10, v9, a6, v16, v19, v25);
}

- (void)_chat:(id)a3 downloadTranslationAssetsForLanguageCodes:(id)a4 messageItemsToTranslateLocally:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = objc_msgSend_account(v9, v10, v11);
  v13 = IMCopyGUIDForChatOnAccount(v9, v12);

  IMComponentsFromChatGUID();
  v14 = 0;
  v17 = objc_msgSend_chatStyle(v9, v15, v16);
  v20 = objc_msgSend_account(v9, v18, v19);

  v23 = objc_msgSend_uniqueID(v20, v21, v22);

  v26 = objc_msgSend_sharedController(IMDaemonController, v24, v25);
  v29 = objc_msgSend_remoteDaemon(v26, v27, v28);
  objc_msgSend_downloadTranslationAssetsForLanguageCodes_messageItemsToTranslateLocally_chatIdentifier_style_account_(v29, v30, v8, v7, v14, v17, v23);
}

- (id)_lastMessageItemForChatDictionary:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *MEMORY[0x1E69A6C08]);
  v7 = v6;
  if (!v6)
  {
    IMMessageFromIMMessageItemDictionary = 0;
    goto LABEL_18;
  }

  v8 = v6;
  v9 = v4;
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, *MEMORY[0x1E69A6BC0]);
  v14 = objc_msgSend_integerValue(v11, v12, v13);

  if (v14 >= 1)
  {
    v17 = objc_msgSend_sharedRegistry(IMChatRegistry, v15, v16);
    if (objc_msgSend_currentMessageFilterMode(v17, v18, v19) <= 0)
    {
    }

    else
    {
      v22 = MEMORY[0x1E69A8210];
      v23 = objc_msgSend_sharedRegistry(IMChatRegistry, v20, v21);
      v26 = objc_msgSend_currentMessageFilterMode(v23, v24, v25);
      isFilterMode_subsetOf = objc_msgSend_isFilterMode_subsetOf_(v22, v27, v14, v26);

      if (!isFilterMode_subsetOf)
      {
        goto LABEL_15;
      }
    }
  }

  if (!objc_msgSend_count(v8, v15, v16))
  {
LABEL_15:
    IMMessageFromIMMessageItemDictionary = 0;
    goto LABEL_16;
  }

  v31 = objc_msgSend_objectForKey_(v8, v30, @"accountID");
  v33 = objc_msgSend_objectForKey_(v8, v32, @"account");
  v36 = objc_msgSend_objectForKey_(v8, v34, @"serviceName");
  if (v31)
  {
    if (v33)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v31 = objc_msgSend_objectForKey_(v9, v35, @"accountID");
    if (v33)
    {
      goto LABEL_11;
    }
  }

  v33 = objc_msgSend_objectForKey_(v9, v35, @"account");
LABEL_11:
  v44 = self;
  if (v36 || (objc_msgSend_objectForKey_(v9, v35, @"serviceName"), (v36 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v38 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v35, v36);
  }

  else
  {
    v38 = 0;
  }

  v39 = objc_msgSend_sharedInstance(IMAccountController, v35, v37);
  v41 = objc_msgSend_bestAccountForService_login_guid_(v39, v40, v38, v33, v31);

  IMMessageFromIMMessageItemDictionary = _CreateIMMessageFromIMMessageItemDictionary(v8, v41, 1);
  self = v44;
LABEL_16:

  if (IMMessageFromIMMessageItemDictionary)
  {
    objc_msgSend__checkIfItemIsCorrupt_(self, v42, IMMessageFromIMMessageItemDictionary);
  }

LABEL_18:

  return IMMessageFromIMMessageItemDictionary;
}

- (id)_processLoadedChatDictionaries:(id)a3
{
  v183 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v132 = objc_msgSend_count(v3, v5, v6);
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Loaded %llu chats from daemon", buf, 0xCu);
  }

  v7 = objc_alloc(MEMORY[0x1E695DFA0]);
  v10 = objc_msgSend_count(v3, v8, v9);
  v97 = objc_msgSend_initWithCapacity_(v7, v11, v10);
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = v3;
  v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v127, v182, 16);
  if (v105)
  {
    v104 = *v128;
    do
    {
      v13 = 0;
      do
      {
        if (*v128 != v104)
        {
          v14 = v13;
          objc_enumerationMutation(obj);
          v13 = v14;
        }

        v120 = v13;
        v15 = *(*(&v127 + 1) + 8 * v13);
        context = objc_autoreleasePoolPush();
        v126 = 0;
        v17 = objc_msgSend__lastMessageItemForChatDictionary_(self, v16, v15);
        v123 = v17;
        v19 = v17;
        if (v17)
        {
          v181 = v17;
          v119 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, &v181, 1);
          v20 = v119;
          v19 = v123;
        }

        else
        {
          v20 = 0;
        }

        v21 = v19 == 0;
        v125 = 0;
        v22 = sub_1A84E342C(self, v15, v20, 1, &v126, &v125);
        v124 = v125;
        if (!v21)
        {
        }

        if (v22)
        {
          objc_msgSend__registerChatDictionary_forChat_isIncoming_newGUID_shouldPostNotification_(self, v23, v15, v22, 1, v124, 1);
          objc_msgSend__updateInfo_forGUID_updatingUnreadCount_(self, v24, v15, v124, 1);
          objc_msgSend_addObject_(v97, v25, v22);
        }

        else if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v28 = objc_msgSend_objectForKeyedSubscript_(v15, v27, @"guid");
            *buf = 138412546;
            *v132 = v124;
            *&v132[8] = 2112;
            *&v132[10] = v28;
            _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Failed to reconstruct chat for chatGUID: %@ chatInfo[guid]: %@", buf, 0x16u);
          }
        }

        v29 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v103 = v126;
          v114 = objc_msgSend_chatIdentifier(v22, v30, v31);
          v113 = objc_msgSend_guid(v22, v32, v33);
          v115 = objc_msgSend_persistentID(v22, v34, v35);
          v118 = objc_msgSend_account(v22, v36, v37);
          v112 = objc_msgSend_uniqueID(v118, v38, v39);
          v102 = objc_msgSend_chatStyle(v22, v40, v41);
          v101 = objc_msgSend_joinState(v22, v42, v43);
          v117 = objc_msgSend_participants(v22, v44, v45);
          v116 = objc_msgSend_participants(v22, v46, v47);
          v100 = objc_msgSend_count(v116, v48, v49);
          v107 = objc_msgSend_roomName(v22, v50, v51);
          v111 = objc_msgSend_displayName(v22, v52, v53);
          v109 = objc_msgSend_lastAddressedHandleID(v22, v54, v55);
          v108 = objc_msgSend_lastAddressedSIMID(v22, v56, v57);
          v110 = objc_msgSend_groupID(v22, v58, v59);
          v99 = objc_msgSend_unreadMessageCount(v22, v60, v61);
          v98 = objc_msgSend_messageFailureCount(v22, v62, v63);
          isFiltered = objc_msgSend_isFiltered(v22, v64, v65);
          v106 = objc_msgSend_mergedThreadFilterModes(v22, v67, v68);
          hasHadSuccessfulQuery = objc_msgSend_hasHadSuccessfulQuery(v22, v69, v70);
          v74 = objc_msgSend_bizIntent(v22, v72, v73);
          v77 = objc_msgSend_personCentricID(v22, v75, v76);
          isRecovered = objc_msgSend_isRecovered(v22, v78, v79);
          isDeletingIncomingMessages = objc_msgSend_isDeletingIncomingMessages(v22, v81, v82);
          isPendingReview = objc_msgSend_isPendingReview(v22, v84, v85);
          v89 = objc_msgSend_mergedPinningIdentifiers(v22, v87, v88);
          *buf = 67115778;
          *v132 = v103;
          *&v132[4] = 2112;
          *&v132[6] = v124;
          *&v132[14] = 2048;
          *&v132[16] = v22;
          v133 = 2112;
          v134 = v114;
          v135 = 2112;
          v136 = v113;
          v137 = 2112;
          v138 = v115;
          v139 = 2112;
          v140 = v112;
          v141 = 1024;
          v142 = v102;
          v143 = 1024;
          v144 = v101;
          v145 = 1024;
          v146 = v117 != 0;
          v147 = 2048;
          v148 = v100;
          v149 = 2112;
          v150 = v107;
          v151 = 2112;
          v152 = v111;
          v153 = 2112;
          v154 = v109;
          v155 = 2112;
          v156 = v108;
          v157 = 2112;
          v158 = v110;
          v159 = 1024;
          v160 = v99;
          v161 = 1024;
          v162 = v98;
          v163 = 1024;
          v164 = isFiltered;
          v165 = 2112;
          v166 = v106;
          v167 = 1024;
          v168 = hasHadSuccessfulQuery;
          v169 = 2112;
          v170 = v74;
          v171 = 2112;
          v172 = v77;
          v173 = 1024;
          v174 = isRecovered;
          v175 = 1024;
          v176 = isDeletingIncomingMessages;
          v177 = 1024;
          v178 = isPendingReview;
          v179 = 2112;
          v180 = v89;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEFAULT, "Loaded chat was created: %{BOOL}d guid: %@ chat: <IMChat %p> [Identifier: %@  GUID: %@  Persistent ID: %@  Account: %@  Style: %c  State: %d  hasParticipants: %{BOOL}d  Participants: %lu  Room Name: %@  Display Name: %@  Last Addressed Handle: %@ Last Addressed SIMID: %@  Group ID: %@  Unread Count: %u  Failure Count: %u  isFiltered: %d  filterModes: %@  hasHadSuccessfulQuery: %{BOOL}d  bizIntent: %@  personCentricID: %@  isRecovered: %{BOOL}d  isDeletingIncomingMessages: %{BOOL}d  isPendingReview: %{BOOL}d  mergedPinningIdentifiers: %@]", buf, 0xE4u);
        }

        objc_autoreleasePoolPop(context);
        v13 = v120 + 1;
      }

      while (v105 != v120 + 1);
      v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v90, &v127, v182, 16);
    }

    while (v105);
  }

  v93 = objc_msgSend_array(v97, v91, v92);

  v94 = *MEMORY[0x1E69E9840];

  return v93;
}

- (void)loadedChats:(id)a3 queryID:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v8 = objc_msgSend__processLoadedChatDictionaries_(self, v7, a3);
  v11 = objc_msgSend_daemonQueryController(self, v9, v10);
  v16 = @"chats";
  v17[0] = v8;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v17, &v16, 1);
  objc_msgSend_completeQuery_userInfo_(v11, v14, v6, v13);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)forcedReloadingChatRegistryWithQueryID:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_daemonQueryController(self, v5, v6);
  objc_msgSend_completeQuery_userInfo_(v8, v7, v4, 0);
}

- (BOOL)_shouldUpdateChatPropertyByRecencyOnChat:(id)a3 incomingDictionary:(id)a4
{
  v5 = *MEMORY[0x1E69A6C38];
  v6 = a3;
  v8 = objc_msgSend_objectForKeyedSubscript_(a4, v7, v5);
  objc_msgSend_doubleValue(v8, v9, v10);
  v12 = v11;
  v15 = objc_msgSend_lastMessage(v6, v13, v14);

  v18 = objc_msgSend_time(v15, v16, v17);
  objc_msgSend_timeIntervalSince1970(v18, v19, v20);
  v22 = v12 > v21;

  return v22;
}

- (id)_winningChatIdentifierForExistingChat:(id)a3 incomingDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_chatStyle(v6, v8, v9);
  v14 = objc_msgSend_chatIdentifier(v6, v11, v12);
  if (v10 == 43)
  {
    v15 = *MEMORY[0x1E69A6B18];
    v16 = objc_msgSend_objectForKeyedSubscript_(v7, v13, *MEMORY[0x1E69A6B18]);
    isEqualToString = objc_msgSend_isEqualToString_(v14, v17, v16);

    if (isEqualToString || !objc_msgSend__shouldUpdateChatPropertyByRecencyOnChat_incomingDictionary_(self, v19, v6, v7))
    {
      v21 = objc_msgSend_chatIdentifier(v6, v19, v20);
    }

    else
    {
      v21 = objc_msgSend_objectForKeyedSubscript_(v7, v19, v15);
    }

    v14 = v21;
  }

  return v14;
}

- (id)_winningParticipantsForExistingChat:(id)a3 incomingDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_chatStyle(v6, v8, v9) == 43 && objc_msgSend__shouldUpdateChatPropertyByRecencyOnChat_incomingDictionary_(self, v10, v6, v7))
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v7, v10, *MEMORY[0x1E69A6C58]);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A83B4F34;
    v18[3] = &unk_1E78144E8;
    v19 = v6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A83B4FC4;
    v16[3] = &unk_1E7814510;
    v17 = v19;
    v14 = objc_msgSend___imArrayByApplyingBlock_filter_(v12, v13, v18, v16);
  }

  else
  {
    v14 = objc_msgSend_participants(v6, v10, v11);
  }

  return v14;
}

- (id)_winningGroupIDForExistingChat:(id)a3 incomingDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_chatStyle(v6, v8, v9);
  v14 = objc_msgSend_groupID(v6, v11, v12);
  if (v10 == 43)
  {
    v15 = *MEMORY[0x1E69A6B78];
    v16 = objc_msgSend_objectForKeyedSubscript_(v7, v13, *MEMORY[0x1E69A6B78]);
    isEqualToString = objc_msgSend_isEqualToString_(v14, v17, v16);

    if (isEqualToString || !objc_msgSend__shouldUpdateChatPropertyByRecencyOnChat_incomingDictionary_(self, v19, v6, v7))
    {
      v21 = objc_msgSend_groupID(v6, v19, v20);
    }

    else
    {
      v21 = objc_msgSend_objectForKeyedSubscript_(v7, v19, v15);
    }

    v14 = v21;
  }

  return v14;
}

- (BOOL)_shouldSwitchAccountAddingMessagesToChat:(id)a3 messageItems:(id)a4 removedGUIDs:(id)a5 messagesComingFromStorage:(BOOL)a6 chatProperties:(id)a7
{
  v8 = a6;
  v103 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v86 = a4;
  v13 = a5;
  v84 = a7;
  v85 = v13;
  if (v8)
  {
    v83 = self;
    v16 = objc_msgSend__items(v12, v14, v15);
    v19 = objc_msgSend__items(v12, v17, v18);
    v22 = objc_msgSend_mutableCopy(v19, v20, v21);

    v23 = objc_alloc(MEMORY[0x1E695DFA8]);
    v26 = objc_msgSend__items(v12, v24, v25);
    v28 = objc_msgSend_arrayByApplyingSelector_(v26, v27, sel_guid);
    v30 = objc_msgSend_initWithArray_(v23, v29, v28);

    v31 = objc_alloc(MEMORY[0x1E695DFA8]);
    v33 = objc_msgSend_arrayByApplyingSelector_(v86, v32, sel_guid);
    v35 = objc_msgSend_initWithArray_(v31, v34, v33);

    v82 = v35;
    objc_msgSend_minusSet_(v30, v36, v35);
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v37 = v16;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v96, v102, 16);
    if (v41)
    {
      v42 = *v97;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v97 != v42)
          {
            objc_enumerationMutation(v37);
          }

          v44 = *(*(&v96 + 1) + 8 * i);
          v45 = objc_msgSend_guid(v44, v39, v40);
          v47 = objc_msgSend_containsObject_(v30, v46, v45);

          if ((v47 & 1) == 0)
          {
            objc_msgSend_removeObject_(v22, v39, v44);
          }
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v96, v102, 16);
      }

      while (v41);
    }

    v49 = objc_msgSend_arrayByAddingObjectsFromArray_(v22, v48, v86);
    v51 = objc_msgSend_sortedArrayUsingFunction_context_(v49, v50, sub_1A83B5638, 0);

    if (IMOSLoggingEnabled())
    {
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "We received messages from storage so we are appending current items with items from storage", buf, 2u);
      }
    }

    objc_msgSend_beginHoldingChatItemsUpdatesForReason_(v12, v52, @"IMItemsChanged");
    if (objc_msgSend_count(v85, v54, v55))
    {
      objc_msgSend__removeItemsForGuids_(v12, v56, v85);
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v57 = v51;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v91, v101, 16);
    if (v60)
    {
      v61 = *v92;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v92 != v61)
          {
            objc_enumerationMutation(v57);
          }

          objc_msgSend__handleIncomingItem_updateRecipient_suppressNotification_updateReplyCounts_messageComingFromStorage_(v12, v59, *(*(&v91 + 1) + 8 * j), 1, 0, 1, 1);
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v59, &v91, v101, 16);
      }

      while (v60);
    }

    objc_msgSend_endHoldingChatItemsUpdatesForReason_(v12, v63, @"IMItemsChanged");
    v66 = objc_msgSend_guid(v12, v64, v65);
    objc_msgSend__updateInfo_forGUID_updatingUnreadCount_(v83, v67, v84, v66, 1);

    v68 = 1;
  }

  else
  {
    objc_msgSend_beginHoldingChatItemsUpdatesForReason_(v12, v14, @"IMItemsChanged");
    if (objc_msgSend_count(v13, v69, v70))
    {
      objc_msgSend__removeItemsForGuids_(v12, v71, v13);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v72 = v86;
    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v87, v100, 16);
    if (v75)
    {
      v76 = *v88;
      do
      {
        for (k = 0; k != v75; ++k)
        {
          if (*v88 != v76)
          {
            objc_enumerationMutation(v72);
          }

          updated = objc_msgSend__handleIncomingItem_updateRecipient_suppressNotification_updateReplyCounts_messageComingFromStorage_(v12, v74, *(*(&v87 + 1) + 8 * k), 1, 0, 1, 0);
        }

        v68 = updated;
        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v74, &v87, v100, 16);
      }

      while (v75);
    }

    else
    {
      v68 = 1;
    }

    objc_msgSend_endHoldingChatItemsUpdatesForReason_(v12, v79, @"IMItemsChanged");
  }

  v80 = *MEMORY[0x1E69E9840];
  return v68;
}

- (void)_clearExistingTypingIndicatorsWithMessageGUID:(id)a3 excludingChatWithIdentifier:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend__cachedChatsWithMessageGUID_(self, v8, v6);
  v10 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v48 = objc_msgSend_count(v9, v11, v12);
    v49 = 2112;
    v50 = v6;
    v51 = 2112;
    v52 = v7;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Found %llu chats with message matching GUID: %@ (will exclude chat %@)", buf, 0x20u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = v9;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v42, v46, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v43;
    v21 = 0x1E69A8000uLL;
    *&v18 = 138412802;
    v41 = v18;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v23 = *(*(&v42 + 1) + 8 * i);
        v24 = objc_msgSend_chatIdentifier(v23, v16, v17, v41, v42);
        isEqualToString = objc_msgSend_isEqualToString_(v24, v25, v7);

        if ((isEqualToString & 1) == 0)
        {
          v27 = objc_msgSend__itemForGUID_(v23, v16, v6);
          v28 = *(v21 + 312);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isTypingMessage(v27, v29, v30))
          {
            v31 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v34 = objc_msgSend_guid(v23, v32, v33);
              *buf = v41;
              v48 = v6;
              v49 = 2112;
              v50 = v34;
              v51 = 2112;
              v52 = v27;
              _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_DEFAULT, "Removing typing indicator %@ from chat %@, existing item: %@", buf, 0x20u);

              v21 = 0x1E69A8000;
            }

            objc_msgSend__removeItem_(v23, v35, v27);
          }

          else
          {
            v36 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v39 = objc_msgSend_guid(v23, v37, v38);
              *buf = v41;
              v48 = v6;
              v49 = 2112;
              v50 = v39;
              v51 = 2112;
              v52 = v27;
              _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_DEFAULT, "Message %@ in chat %@ is not a typing indicator: %@", buf, 0x20u);

              v21 = 0x1E69A8000;
            }
          }
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v42, v46, 16);
    }

    while (v19);
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 groupID:(id)a7 chatPersonCentricID:(id)a8 messagesReceived:(id)a9 removed:(id)a10 messagesComingFromStorage:(BOOL)a11
{
  v32 = a5;
  v39 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v16 = a4;
  v31 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v34, v38, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v35;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v19);
        }

        v28 = objc_msgSend_guid(*(*(&v34 + 1) + 8 * i), v23, v24);
        objc_msgSend__clearExistingTypingIndicatorsWithMessageGUID_excludingChatWithIdentifier_(self, v29, v28, v16);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v23, &v34, v38, 16);
    }

    while (v25);
  }

  objc_msgSend__processMessagesForAccount_chat_style_chatProperties_groupID_chatPersonCentricID_messages_removed_messagesComingFromStorage_(self, v23, v33, v16, v32, v31, v17, v18, v19, v20, a11);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)leftChat:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Leaving chat with GUID: %@", &v12, 0xCu);
  }

  v7 = objc_msgSend_existingChatWithGUID_(self, v6, v4);
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Found chat: %@", &v12, 0xCu);
  }

  if (v7)
  {
    objc_msgSend__setJoinState_(v7, v9, 0);
    objc_msgSend__unregisterChat_deleted_(self, v10, v7, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)a3 handleID:(id)a4 updatedLastReceivedOnGridMessageDate:(id)a5
{
  if (a5)
  {
    v6 = MEMORY[0x1E69A80A8];
    v7 = a5;
    v8 = a4;
    v12 = objc_msgSend_sharedInstance(v6, v9, v10);
    objc_msgSend_overrideStatusForHandleWithID_publishedBeforeDate_(v12, v11, v8, v7);
  }
}

- (void)chat:(id)a3 propertiesUpdated:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@  propertiesUpdated: %@", &v23, 0x16u);
  }

  v12 = objc_msgSend__cachedChatWithGUID_(self, v9, v6);
  if (!v12)
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3B04(v6, v7, v13);
    }
  }

  v14 = objc_msgSend_chatIdentifier(v12, v10, v11);
  v15 = *MEMORY[0x1E69A7AC8];
  objc_msgSend_chatStyle(v12, v16, v17);
  v18 = IMCopyGUIDForChat();
  isEqualToString = objc_msgSend_isEqualToString_(v18, v19, v6);
  objc_msgSend__setChatProperties_isCurrentGUID_(v12, v21, v7, isEqualToString);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)a3 brandLogoUpdated:(id)a4 transferGuid:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    v25 = 2048;
    v26 = objc_msgSend_length(v9, v12, v13);
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "chat: %@  brandLogoUpdated: %@, %lu bytes", &v21, 0x20u);
  }

  v15 = objc_msgSend__cachedChatWithGUID_(self, v14, v8);
  v18 = objc_msgSend_chatIdentifier(v15, v16, v17);
  objc_msgSend_updateBrandLogo_transferGuid_chatIdentifier_(self, v19, v9, v10, v18);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)a3 chatPersonCentricID:(id)a4 displayNameUpdated:(id)a5 sender:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "chat: %@  displayName: %@", &v22, 0x16u);
  }

  v16 = objc_msgSend_existingChatWithGUID_(self, v15, v10);
  objc_msgSend__updateDisplayName_sender_(v16, v17, v12, v13);

  if (objc_msgSend_canHaveMultipleParticipants(v16, v18, v19))
  {
    objc_msgSend__updatePersonCentricIDToChatMapForChat_toNewPersonCentricID_(self, v20, v16, v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)a3 lastAddressedHandleUpdated:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ lastAddressedHandleUpdated: %@", &v15, 0x16u);
  }

  v10 = objc_msgSend__cachedChatWithGUID_(self, v9, v6);
  v12 = v10;
  if (v10)
  {
    objc_msgSend__updateLastAddressedHandleID_(v10, v11, v7);
  }

  else
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring last addressed handle update", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)a3 lastAddressedSIMIDUpdated:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ lastAddressedSIMIDUpdated: %@", &v15, 0x16u);
  }

  v10 = objc_msgSend__cachedChatWithGUID_(self, v9, v6);
  v12 = v10;
  if (v10)
  {
    objc_msgSend__updateLastAddressedSIMID_(v10, v11, v7);
  }

  else
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring last addressed SIM ID update", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)a3 lastAddressedHandleUpdated:(id)a4 lastAddressedSIMIDUpdated:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "chat: %@ lastAddressedHandleUpdated: %@ lastAddressedSIMIDUpdated: %@", &v18, 0x20u);
  }

  v13 = objc_msgSend__cachedChatWithGUID_(self, v12, v8);
  v15 = v13;
  if (v13)
  {
    objc_msgSend__updateLastAddressedHandleID_lastAddressedSIMID_(v13, v14, v9, v10);
  }

  else
  {
    v16 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring last addressed handle and last addressed SIM ID update", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)a3 partiallyUpdated:(id)a4
{
  v20 = a3;
  v6 = a4;
  v9 = objc_msgSend_chatGUIDToInfoMap(self, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v20);
  v14 = objc_msgSend_copy(v11, v12, v13);

  if (v14)
  {
    objc_msgSend_updateWithChatDictionary_(v14, v15, v6);
    v18 = objc_msgSend_chatGUIDToInfoMap(self, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, v14, v20);
  }
}

- (void)chat:(id)a3 isFilteredUpdated:(int64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v6;
    v22 = 1024;
    v23 = a4;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "chat: %@ isFilteredUpdated: %d", buf, 0x12u);
  }

  v10 = objc_msgSend__cachedChatWithGUID_(self, v8, v6);
  if (v10)
  {
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, a4, *MEMORY[0x1E69A6BC0]);
    v19 = v11;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, &v19, &v18, 1);
    objc_msgSend__chat_partiallyUpdated_(self, v14, v6, v13);

    objc_msgSend_setIsFiltered_(v10, v15, a4);
  }

  else
  {
    v16 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring is filtered update", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)a3 engramIDUpdated:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ engramIDUpdated: %@", &v15, 0x16u);
  }

  v10 = objc_msgSend__cachedChatWithGUID_(self, v9, v6);
  v12 = v10;
  if (v10)
  {
    objc_msgSend__updateEngramID_(v10, v11, v7);
  }

  else
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring engram ID update", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)engroupParticipantsUpdatedForChat:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "chat: %@ finished updating group chat", &v13, 0xCu);
  }

  v7 = objc_msgSend__cachedChatWithGUID_(self, v6, v4);
  v10 = v7;
  if (v7)
  {
    objc_msgSend__engroupParticipantsUpdated(v7, v8, v9);
  }

  else
  {
    v11 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring engroup update", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updatedSummariesForChatsWithGUIDsAndProperties:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], v5, v6))
  {
    objc_msgSend_allKeys(v4, v7, v8);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v46 = 0u;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v43, v49, 16);
    if (v42)
    {
      v41 = *v44;
      v11 = *MEMORY[0x1E69A6B28];
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v44 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v43 + 1) + 8 * i);
          v14 = v4;
          v15 = objc_msgSend_objectForKey_(v4, v10, v13);
          v17 = objc_msgSend__cachedChatWithGUID_(self, v16, v13);
          v20 = objc_msgSend_allChatProperties(v17, v18, v19);
          v23 = objc_msgSend_mutableCopy(v20, v21, v22);

          v25 = objc_msgSend_valueForKey_(v15, v24, v11);
          v28 = objc_msgSend_null(MEMORY[0x1E695DFB0], v26, v27);

          if (v25 == v28)
          {
            objc_msgSend_removeObjectForKey_(v23, v29, v11);
          }

          else
          {
            objc_msgSend_setValue_forKey_(v23, v29, v25, v11);
          }

          v32 = objc_msgSend_copy(v23, v30, v31);
          objc_msgSend_chat_propertiesUpdated_(self, v33, v13, v32);

          v4 = v14;
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v43, v49, 16);
      }

      while (v42);
    }

    v47 = @"__kIMChatRegistrySummaryDictionaryKey";
    v48 = obj;
    v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v48, &v47, 1);
    v37 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v35, v36);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v37, v38, @"__kIMChatRegistryDidUpdateMessagesWithSummaryNotification", 0, v34);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)updatedPriorityForChatsWithGUIDsAndProperties:(id)a3 chatsAndMessageGUIDs:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v54 = a4;
  v55 = v6;
  objc_msgSend_allKeys(v6, v7, v8);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v64 = 0u;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v61, v68, 16);
  if (v56)
  {
    v52 = *v62;
    v11 = *MEMORY[0x1E69A6CB8];
    v51 = *MEMORY[0x1E69A6CB8];
    v53 = self;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v62 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v61 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKey_(v55, v10, v13);
        v16 = objc_msgSend__cachedChatWithGUID_(self, v15, v13);
        v19 = objc_msgSend_allChatProperties(v16, v17, v18);
        v22 = objc_msgSend_mutableCopy(v19, v20, v21);

        v24 = objc_msgSend_objectForKey_(v14, v23, v11);
        v27 = objc_msgSend_null(MEMORY[0x1E695DFB0], v25, v26);

        if (v24 == v27)
        {
          objc_msgSend_removeObjectForKey_(v22, v28, v11);
        }

        else
        {
          objc_msgSend_setObject_forKey_(v22, v28, v24, v11);
        }

        v31 = objc_msgSend_copy(v22, v29, v30);
        objc_msgSend_chat_propertiesUpdated_(self, v32, v13, v31);

        v34 = objc_msgSend_objectForKeyedSubscript_(v54, v33, v13);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v57, v67, 16);
        if (v36)
        {
          v38 = v36;
          v39 = *v58;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v58 != v39)
              {
                objc_enumerationMutation(v34);
              }

              v41 = objc_msgSend_messageItemForGUID_(v16, v37, *(*(&v57 + 1) + 8 * j));
              v43 = v41;
              if (v41)
              {
                objc_msgSend_setIsTimeSensitive_(v41, v42, 1);
              }
            }

            v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v57, v67, 16);
          }

          while (v38);
        }

        self = v53;
        v11 = v51;
      }

      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v61, v68, 16);
    }

    while (v56);
  }

  v65 = @"__kIMChatRegistryPriorityChatsAndMessagesDictionaryKey";
  v66 = v54;
  v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v66, &v65, 1);
  v47 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v45, v46);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v47, v48, @"__kIMChatRegistryDidUpdateMessagesWithPriorityNotification", 0, v44);

  v49 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)a3 uncachedAttachmentCountUpdated:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ uncachedAttachmentCountUpdated: %lu", &v15, 0x16u);
  }

  v10 = objc_msgSend__cachedChatWithGUID_(self, v9, v6);
  v12 = v10;
  if (v10)
  {
    objc_msgSend__setCountOfAttachmentsNotCachedLocally_(v10, v11, v7);
  }

  else
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring attachment count update", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_updateChat:(id)a3 updateIsFiltered:(int64_t)a4
{
  v8 = a3;
  objc_msgSend_updateIsFiltered_(v8, v5, a4);
  objc_msgSend_verifyFiltering(v8, v6, v7);
}

- (void)_updateUnreadCountForChat:(id)a3 shouldPostNotification:(BOOL)a4
{
  v4 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = v6;
  if (v6)
  {
    v39 = v4;
    v40 = v6;
    v10 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v7, v8);
    isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v10, v11, v12);

    if (isUnreadCountRefactorEnabled)
    {
      v9 = v40;
      if (v39)
      {
        objc_msgSend__postNewUnreadCount(v40, v14, v15);
      }
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v16 = objc_msgSend__guids(v40, v14, v15);
      v18 = 0;
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v41, v49, 16);
      if (v21)
      {
        v22 = *v42;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v42 != v22)
            {
              objc_enumerationMutation(v16);
            }

            v24 = *(*(&v41 + 1) + 8 * i);
            v25 = objc_msgSend_chatGUIDToInfoMap(self, v19, v20);
            v27 = objc_msgSend_objectForKey_(v25, v26, v24);

            v30 = objc_msgSend_unreadMessageCount(v27, v28, v29);
            if (v30)
            {
              v31 = IMChatRegistryLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v46 = v24;
                v47 = 1024;
                v48 = v30;
                _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_DEFAULT, "Chat [%@] info dictionary has [Unread: %d]", buf, 0x12u);
              }

              v18 += v30;
            }

            else if (IMOSLoggingEnabled())
            {
              v32 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v46 = v24;
                v47 = 1024;
                v48 = 0;
                _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_DEBUG, "Chat [%@] info dictionary has [Unread: %d]", buf, 0x12u);
              }
            }
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v41, v49, 16);
        }

        while (v21);
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v37 = objc_msgSend_guid(v40, v35, v36);
          *buf = 138412546;
          v46 = v37;
          v47 = 1024;
          v48 = v18;
          _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_DEBUG, "Chat [%@] _setDBUnreadCount to %d", buf, 0x12u);
        }
      }

      objc_msgSend__setDBUnreadCount_postNotification_(v40, v33, v18, v39);
      v9 = v40;
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_updateHasCancellableScheduledMessage:(id)a3 shouldPostNotification:(BOOL)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = v5;
    v9 = objc_msgSend__guids(v5, v6, v7);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v33, v41, 16);
    if (v11)
    {
      v14 = v11;
      v15 = 0;
      v16 = *v34;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v33 + 1) + 8 * v17);
        v19 = objc_msgSend_chatGUIDToInfoMap(self, v12, v13);
        v21 = objc_msgSend_objectForKey_(v19, v20, v18);

        hasCancellableScheduledMessage = objc_msgSend_hasCancellableScheduledMessage(v21, v22, v23);
        v25 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v38 = v18;
          v39 = 1024;
          v40 = hasCancellableScheduledMessage;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_DEFAULT, "Chat [%@] info dictionary has [hasCancellableScheduledMessage: %{BOOL}d]", buf, 0x12u);
        }

        v15 |= hasCancellableScheduledMessage;
        if (hasCancellableScheduledMessage)
        {
          break;
        }

        if (v14 == ++v17)
        {
          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v33, v41, 16);
          if (v14)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v26 = IMChatRegistryLogHandle();
    v8 = v32;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_msgSend_guid(v32, v27, v28);
      *buf = 138412546;
      v38 = v29;
      v39 = 1024;
      v40 = v15 & 1;
      _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Chat [%@] hasCancellableScheduledMessage to %{BOOL}d", buf, 0x12u);
    }

    objc_msgSend_setHasCancellableScheduledMessage_(v32, v30, v15 & 1);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_updatePendingIncomingSatelliteMessageCount:(id)a3 shouldPostNotification:(BOOL)a4
{
  v4 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = v6;
  if (v6)
  {
    v35 = v4;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = v6;
    v10 = objc_msgSend__guids(v6, v7, v8);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v36, v44, 16);
    if (v12)
    {
      v15 = v12;
      v16 = 0;
      v17 = *v37;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v36 + 1) + 8 * i);
          v20 = objc_msgSend_chatGUIDToInfoMap(self, v13, v14);
          v22 = objc_msgSend_objectForKey_(v20, v21, v19);

          v25 = objc_msgSend_pendingIncomingSatelliteMessageCount(v22, v23, v24);
          v26 = IMChatRegistryLogHandle();
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (v25)
          {
            if (v27)
            {
              *buf = 138412546;
              v41 = v19;
              v42 = 1024;
              v43 = v25;
              _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Chat [%@] info dictionary has [pendingSatelliteCount: %d]", buf, 0x12u);
            }

            v16 += v25;
          }

          else
          {
            if (v27)
            {
              *buf = 138412546;
              v41 = v19;
              v42 = 1024;
              v43 = v16;
              _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Chat [%@] info dictionary has [pendingSatelliteCount: %d]", buf, 0x12u);
            }
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v36, v44, 16);
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v28 = IMChatRegistryLogHandle();
    v9 = v34;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_msgSend_guid(v34, v29, v30);
      *buf = 138412546;
      v41 = v31;
      v42 = 1024;
      v43 = v16;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "Chat [%@] _updatePendingSatelliteCount to %d", buf, 0x12u);
    }

    objc_msgSend__setPendingIncomingSatelliteMessageCount_postNotification_(v34, v32, v16, v35);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_updateTranscriptBackgroundForChat:(id)a3 shouldPostNotification:(BOOL)a4
{
  v4 = a4;
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = objc_msgSend_transcriptBackgroundVersion(v5, v6, v7);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v11 = objc_msgSend__guids(v5, v9, v10);
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v53, v65, 16);
  if (!v52)
  {
    v15 = 0;
    goto LABEL_20;
  }

  v47 = v4;
  v15 = 0;
  v50 = *v54;
  v49 = *MEMORY[0x1E69A7D40];
  v48 = v11;
  do
  {
    for (i = 0; i != v52; ++i)
    {
      if (*v54 != v50)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v53 + 1) + 8 * i);
      v18 = objc_msgSend_chatGUIDToInfoMap(self, v13, v14);
      v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v17);

      v23 = objc_msgSend_transcriptBackgroundDetails(v20, v21, v22);
      v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v49);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v8 || (v28 = objc_msgSend_unsignedLongLongValue(v8, v26, v27), v28 < objc_msgSend_unsignedLongLongValue(v25, v29, v30)))
        {
          v31 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            objc_msgSend_guid(v5, v32, v33);
            v34 = v15;
            v36 = v35 = v5;
            *buf = 138413058;
            v58 = v36;
            v59 = 2112;
            v60 = v8;
            v61 = 2112;
            v62 = v17;
            v63 = 2112;
            v64 = v25;
            _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_DEFAULT, "Chat %@ (background set %@) has merged chat info with newer background (%@ at %@), will switch", buf, 0x2Au);

            v5 = v35;
            v15 = v34;
            v11 = v48;
          }

          v37 = v23;
          v15 = v37;
        }
      }
    }

    v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v53, v65, 16);
  }

  while (v52);

  if (v15)
  {
    v38 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_msgSend_guid(v5, v39, v40);
      *buf = 138412546;
      v58 = v41;
      v59 = 1024;
      LODWORD(v60) = v47;
      _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_DEFAULT, "Chat %@ required updated transcript background details (notify: %{BOOL}d)", buf, 0x12u);
    }

    objc_msgSend_setTranscriptBackgroundDetails_(v5, v42, v15);
    if (v47)
    {
      v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v43, v44);
      objc_msgSend_postNotificationName_object_userInfo_(v11, v45, @"__kIMChatTranscriptBackgroundChangedNotification", v5, 0);
LABEL_20:
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateChat:(id)a3 chatIdentifierForGroups:(id)a4 shouldPostNotification:(BOOL)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend__chatIdentifierForGroups(v6, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, v7);
  if ((isEqualToString & 1) == 0)
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Updating chat identifier from %@ to %@", &v17, 0x16u);
    }

    objc_msgSend___setChatIdentifierForGroups_(v6, v14, v7);
  }

  v15 = *MEMORY[0x1E69E9840];
  return isEqualToString ^ 1;
}

- (void)_updateChat:(id)a3 originalGroupID:(id)a4 shouldPostNotification:(BOOL)a5
{
  v5 = a5;
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_originalGroupID(v7, v9, v10);
  if ((IMAreObjectsLogicallySame() & 1) == 0)
  {
    v14 = objc_msgSend_chatStyle(v7, v12, v13);
    v15 = IMChatRegistryLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14 != 43)
    {
      if (!v16)
      {
LABEL_16:

        goto LABEL_17;
      }

      v26 = objc_msgSend_chatIdentifier(v7, v17, v18);
      v31 = 138413058;
      v32 = v11;
      v33 = 2112;
      v34 = v8;
      v35 = 2112;
      v36 = v26;
      v37 = 1024;
      v38 = objc_msgSend_chatStyle(v7, v28, v29);
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring original groupID update (%@ -> %@) because chat is not group chat: [IMChat chat identifier: %@  style: %c]", &v31, 0x26u);
LABEL_15:

      goto LABEL_16;
    }

    if (v16)
    {
      v19 = objc_msgSend_guid(v7, v17, v18);
      v31 = 138412802;
      v32 = v19;
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Updating original groupID of chat %@ from %@ to %@", &v31, 0x20u);
    }

    if (v8)
    {
      objc_msgSend_setOriginalGroupID_(v7, v20, v8);
    }

    if (v5)
    {
      v21 = objc_alloc(MEMORY[0x1E695DF90]);
      v23 = objc_msgSend_initWithCapacity_(v21, v22, 2);
      v15 = v23;
      if (v11)
      {
        objc_msgSend_setObject_forKey_(v23, v24, v11, @"__kIMChatRegistryPreviousOriginalGroupIDKey");
      }

      if (v8)
      {
        objc_msgSend_setObject_forKey_(v15, v24, v8, @"__kIMChatRegistryUpdatedOriginalGroupIDKey");
      }

      v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
      objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v26, v27, @"__kIMChatRegistryOriginalGroupIDChangedNotification", v7, v15);
      goto LABEL_15;
    }
  }

LABEL_17:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_updateDomainIdentifiersForChat:(id)a3 incomingDictionary:(id)a4 shouldPostNotification:(BOOL)a5
{
  v61[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x1E69A6B50]);
  v11 = objc_msgSend_objectForKey_(v7, v10, *MEMORY[0x1E69A6B18]);
  if (objc_msgSend_count(v9, v12, v13) || (objc_msgSend_domainIdentifiers(v6, v14, v15), v55 = objc_claimAutoreleasedReturnValue(), isEmpty = objc_msgSend_isEmpty(v55, v56, v57), v55, !isEmpty) || !v11)
  {
    if (objc_msgSend_chatStyle(v6, v14, v15) == 43)
    {
      if (v11)
      {
        v18 = objc_msgSend_domainIdentifiers(v6, v16, v17);
        v19 = *MEMORY[0x1E69A7AC8];
        objc_msgSend_chatStyle(v6, v20, v21);
        v22 = IMCopyGUIDForChat();
        v24 = objc_msgSend_domainIdentifiersForChatGUID_(v18, v23, v22);
        v27 = objc_msgSend_copy(v24, v25, v26);

        if (!v27)
        {
          v27 = objc_alloc_init(MEMORY[0x1E695DF20]);
        }

        v32 = objc_msgSend_groupID(v6, v28, v29);
        if (!v32)
        {
          v33 = IMLogHandleForCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_1A84E3B8C(v6, v33, v34);
          }

          v32 = &stru_1F1B76F98;
        }

        v37 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v30, v31);
        v38 = *MEMORY[0x1E69A8380];
        v39 = *MEMORY[0x1E69A8390];
        v60[0] = *MEMORY[0x1E69A8388];
        v60[1] = v39;
        v61[0] = v32;
        v61[1] = v32;
        v40 = *MEMORY[0x1E69A8398];
        v41 = MEMORY[0x1E695E0F8];
        if (v27)
        {
          v42 = v27;
        }

        else
        {
          v42 = MEMORY[0x1E695E0F8];
        }

        v61[2] = v42;
        v43 = *MEMORY[0x1E69A83A0];
        v60[2] = v40;
        v60[3] = v43;
        v44 = objc_msgSend_copy(v9, v35, v36);
        v46 = v44;
        if (v44)
        {
          v47 = v44;
        }

        else
        {
          v47 = v41;
        }

        v60[4] = *MEMORY[0x1E69A8378];
        v61[3] = v47;
        v61[4] = v11;
        v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v45, v61, v60, 5);
        objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v37, v49, v38, 0, v48);
      }

      v50 = objc_msgSend_domainIdentifiers(v6, v16, v17);
      v52 = objc_msgSend_objectForKey_(v7, v51, *MEMORY[0x1E69A6B70]);
      objc_msgSend_setDomainIdentifiers_forChatGUID_(v50, v53, v9, v52);
    }

    else
    {
      v50 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v59 = 0;
        _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "Ignoring domain identifier update because chat is not a group chat", &v59, 2u);
      }
    }
  }

  v54 = *MEMORY[0x1E69E9840];
}

- (void)_updateChat:(id)a3 groupID:(id)a4 shouldPostNotification:(BOOL)a5
{
  v5 = a5;
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_groupID(v8, v10, v11);
  if ((IMAreObjectsLogicallySame() & 1) == 0)
  {
    if (objc_msgSend_chatStyle(v8, v13, v14) == 43)
    {
      if (v9)
      {
        v17 = objc_msgSend_groupIDToChatMap(self, v15, v16);
        v19 = objc_msgSend_objectForKey_(v17, v18, v9);

        if (v19 && objc_msgSend_chatStyle(v19, v20, v21) == 43)
        {
          v22 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v25 = objc_msgSend_guid(v8, v23, v24);
            *buf = 138413058;
            v63 = v12;
            v64 = 2112;
            v65 = v9;
            v66 = 2112;
            v67 = v25;
            v68 = 2112;
            v69 = v19;
            _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "Ignoring groupID update (%@ -> %@) for %@ because existing group chat is in groupID map: %@", buf, 0x2Au);
LABEL_27:
          }

LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        v19 = 0;
      }

      v30 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_msgSend_guid(v8, v31, v32);
        *buf = 138412802;
        v63 = v33;
        v64 = 2112;
        v65 = v12;
        v66 = 2112;
        v67 = v9;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEFAULT, "Updating groupID of chat %@ from %@ to %@", buf, 0x20u);
      }

      if (!v9)
      {
        v52 = v12 != 0;
        if (!v5)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }

      objc_msgSend_setGroupID_(v8, v34, v9);
      v37 = objc_msgSend_groupIDToChatMap(self, v35, v36);
      objc_msgSend_setObject_forKey_(v37, v38, v8, v9);

      if (v12)
      {
        v41 = objc_msgSend_chatIdentifier(v8, v39, v40);

        if (v41)
        {
          v44 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v42, v43);
          v45 = *MEMORY[0x1E69A8380];
          v48 = objc_msgSend_chatIdentifier(v8, v46, v47, *MEMORY[0x1E69A8388], *MEMORY[0x1E69A8390], *MEMORY[0x1E69A8378], v12, v9);
          v61[2] = v48;
          v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v49, v61, &v60, 3);
          objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v44, v51, v45, 0, v50);
        }

        v52 = 1;
        if (!v5)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }

      v52 = 0;
      if (v5)
      {
LABEL_22:
        v53 = objc_alloc(MEMORY[0x1E695DF90]);
        v55 = objc_msgSend_initWithCapacity_(v53, v54, 2);
        v22 = v55;
        if (v52)
        {
          objc_msgSend_setObject_forKey_(v55, v56, v12, @"__kIMChatRegistryPreviousGroupIDKey");
        }

        if (v9)
        {
          objc_msgSend_setObject_forKey_(v22, v56, v9, @"__kIMChatRegistryUpdatedGroupIDKey");
        }

        v25 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v56, v57);
        objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v25, v58, @"__kIMChatRegistryGroupIDChangedNotification", v8, v22);
        goto LABEL_27;
      }
    }

    else
    {
      v19 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_msgSend_chatIdentifier(v8, v26, v27);
        *buf = 138413058;
        v63 = v12;
        v64 = 2112;
        v65 = v9;
        v66 = 2112;
        v67 = v22;
        v68 = 1024;
        LODWORD(v69) = objc_msgSend_chatStyle(v8, v28, v29);
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring groupID update (%@ -> %@) because chat is not group chat: [IMChat chat identifier: %@  style: %c]", buf, 0x26u);
        goto LABEL_28;
      }
    }

LABEL_29:
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateAutoDonationBehavior:(int64_t)a3 forChat:(id)a4 shouldPostNotification:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v11 = objc_msgSend_autoDonationBehavior(v7, v8, v9);
  if (v11 != a3)
  {
    objc_msgSend_setAutoDonationBehavior_(v7, v10, a3);
    if (v5)
    {
      if (objc_msgSend_isSharedWithYouEnabled(MEMORY[0x1E69A8288], v12, v13))
      {
        v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
        objc_msgSend___mainThreadPostNotificationName_object_(v16, v17, @"__kIMChatRegistryChatMarkedForAutoDonatingChangedNotification", v7);
      }
    }
  }

  return v11 != a3;
}

- (void)_updateReplySuggestions:(id)a3 withInfo:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_lastFinishedMessageItem(v5, v7, v8);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_isTypingMessage(v9, v10, v11))
  {
    v12 = objc_msgSend_objectForKey_(v6, v10, *MEMORY[0x1E69A6C80]);
    if (!v12)
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_39:

        goto LABEL_40;
      }

      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v49 = objc_msgSend_guid(v5, v47, v48);
        v74 = 138412290;
        v75 = v49;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "[%@] no smart replies in info dictionary", &v74, 0xCu);
      }

LABEL_38:

      goto LABEL_39;
    }

    v17 = objc_msgSend_objectForKey_(v6, v16, *MEMORY[0x1E69A6B70]);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v23 = objc_msgSend_guid(v5, v21, v22);
        v74 = 138412546;
        v75 = v23;
        v76 = 2112;
        v77 = v17;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "[%@] infoGuid = %@", &v74, 0x16u);
      }
    }

    v24 = objc_msgSend_guid(v5, v18, v19);
    isEqualToString = objc_msgSend_isEqualToString_(v24, v25, v17);

    if ((isEqualToString & 1) == 0)
    {
      v29 = objc_msgSend_lastFinishedMessage(v5, v27, v28);
      v30 = v29 == 0;

      if (v30)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_38;
        }

        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v52 = objc_msgSend_guid(v5, v50, v51);
          v74 = 138412546;
          v75 = v52;
          v76 = 2112;
          v77 = v17;
          _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "[%@] returning because last finished message is nil, can't get finished message time with info guid = %@", &v74, 0x16u);
        }

        goto LABEL_19;
      }

      v33 = objc_msgSend_lastFinishedMessageDate(v5, v31, v32);
      v36 = objc_msgSend___im_nanosecondTimeInterval(v33, v34, v35);

      v38 = objc_msgSend_objectForKey_(v6, v37, *MEMORY[0x1E69A6C10]);
      v41 = objc_msgSend_longLongValue(v38, v39, v40);
      v42 = IMOSLoggingEnabled();
      if (v41 < v36)
      {
        if (v42)
        {
          v43 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v46 = objc_msgSend_guid(v5, v44, v45);
            v74 = 138413058;
            v75 = v46;
            v76 = 2048;
            v77 = v41;
            v78 = 2048;
            v79 = v36;
            v80 = 2112;
            v81 = v17;
            _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "[%@] returning, info timestamp = %lld < chat timestamp = %lld, info guid = %@", &v74, 0x2Au);
          }
        }

LABEL_19:

        goto LABEL_38;
      }

      if (v42)
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v56 = objc_msgSend_guid(v5, v54, v55);
          v74 = 138413058;
          v75 = v56;
          v76 = 2048;
          v77 = v41;
          v78 = 2048;
          v79 = v36;
          v80 = 2112;
          v81 = v17;
          _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "[%@] info timestamp = %lld > chat timestamp = %lld, info guid = %@", &v74, 0x2Au);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v58 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v61 = objc_msgSend_guid(v5, v59, v60);
        v64 = objc_msgSend_replySuggestions(v5, v62, v63);
        v67 = objc_msgSend_count(v64, v65, v66);
        v70 = objc_msgSend_count(v12, v68, v69);
        v74 = 138412802;
        v75 = v61;
        v76 = 2048;
        v77 = v67;
        v78 = 2048;
        v79 = v70;
        _os_log_impl(&dword_1A823F000, v58, OS_LOG_TYPE_INFO, "[%@] Updating smart replies from %tu to %tu", &v74, 0x20u);
      }
    }

    objc_msgSend_setReplySuggestions_(v5, v57, v12);
    objc_msgSend_updateReplySuggestions(v5, v71, v72);
    goto LABEL_38;
  }

  objc_msgSend_setReplySuggestions_(v5, v10, 0);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = objc_msgSend_guid(v5, v13, v14);
      v74 = 138412290;
      v75 = v15;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "[%@] removing replies for typing indicator", &v74, 0xCu);
    }

    goto LABEL_39;
  }

LABEL_40:

  v73 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)a3 updated:(id)a4
{
  v253[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v170 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *MEMORY[0x1E69A6C08]);
  if (v170)
  {
    v168 = objc_msgSend_objectForKey_(v170, v9, @"guid");
  }

  else
  {
    v168 = 0;
  }

  v253[0] = 0;
  v253[1] = 0;
  v252[0] = 0;
  v252[1] = 0;
  v251[0] = 0;
  v251[1] = 0;
  v10 = objc_msgSend_objectForKeyedSubscript_(v7, v9, *MEMORY[0x1E69A6AF0]);
  IMUUIDForUUIDString();

  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v11, *MEMORY[0x1E69A6BF8]);
  IMUUIDForUUIDString();

  v13 = *MEMORY[0x1E69A6C70];
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, *MEMORY[0x1E69A6C70]);
  v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, *MEMORY[0x1E69A6C20]);
  IMUUIDForUUIDString();

  log = IMChatRegistryLogHandle();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v167 = objc_msgSend_objectForKeyedSubscript_(v7, v18, *MEMORY[0x1E69A6B18]);
    v166 = objc_msgSend_objectForKeyedSubscript_(v7, v19, *MEMORY[0x1E69A6B78]);
    v157 = objc_msgSend_objectForKeyedSubscript_(v7, v20, *MEMORY[0x1E69A6B70]);
    v164 = objc_msgSend_objectForKeyedSubscript_(v7, v21, *MEMORY[0x1E69A6B90]);
    v145 = objc_msgSend_BOOLValue(v164, v22, v23);
    v163 = objc_msgSend_objectForKeyedSubscript_(v7, v24, *MEMORY[0x1E69A6BA8]);
    v143 = objc_msgSend_BOOLValue(v163, v25, v26);
    v162 = objc_msgSend_objectForKeyedSubscript_(v7, v27, *MEMORY[0x1E69A6BB0]);
    v142 = objc_msgSend_BOOLValue(v162, v28, v29);
    v161 = objc_msgSend_objectForKeyedSubscript_(v7, v30, *MEMORY[0x1E69A6BC0]);
    v140 = objc_msgSend_BOOLValue(v161, v31, v32);
    v160 = objc_msgSend_objectForKeyedSubscript_(v7, v33, *MEMORY[0x1E69A6BD8]);
    v139 = objc_msgSend_BOOLValue(v160, v34, v35);
    v153 = objc_msgSend_objectForKeyedSubscript_(v7, v36, *MEMORY[0x1E69A6BF0]);
    v152 = objc_msgSend_objectForKeyedSubscript_(v7, v37, *MEMORY[0x1E69A6C10]);
    v151 = objc_msgSend_objectForKeyedSubscript_(v7, v38, *MEMORY[0x1E69A6C18]);
    v159 = objc_msgSend_objectForKeyedSubscript_(v7, v39, *MEMORY[0x1E69A6B00]);
    v136 = objc_msgSend_longValue(v159, v40, v41);
    v158 = objc_msgSend_objectForKeyedSubscript_(v7, v42, *MEMORY[0x1E69A6C38]);
    objc_msgSend_doubleValue(v158, v43, v44);
    v46 = v45;
    v120 = objc_msgSend_objectForKeyedSubscript_(v7, v47, *MEMORY[0x1E69A6C50]);
    v147 = objc_msgSend_objectForKeyedSubscript_(v7, v48, *MEMORY[0x1E69A6C68]);
    v118 = objc_msgSend_objectForKeyedSubscript_(v7, v49, *MEMORY[0x1E69A6C88]);
    v156 = objc_msgSend_objectForKeyedSubscript_(v7, v50, *MEMORY[0x1E69A6C90]);
    v132 = objc_msgSend_intValue(v156, v51, v52);
    v117 = objc_msgSend_objectForKeyedSubscript_(v7, v53, *MEMORY[0x1E69A6C98]);
    v155 = objc_msgSend_objectForKeyedSubscript_(v7, v54, *MEMORY[0x1E69A6BE0]);
    v129 = objc_msgSend_longValue(v155, v55, v56);
    v154 = objc_msgSend_objectForKeyedSubscript_(v7, v57, *MEMORY[0x1E69A6CA8]);
    v127 = objc_msgSend_longValue(v154, v58, v59);
    v150 = objc_msgSend_objectForKeyedSubscript_(v7, v60, *MEMORY[0x1E69A6CD0]);
    v125 = objc_msgSend_unsignedLongValue(v150, v61, v62);
    v149 = objc_msgSend_objectForKeyedSubscript_(v7, v63, v13);
    v148 = objc_msgSend_objectForKeyedSubscript_(v149, v64, @"LSMD");
    objc_msgSend_timeIntervalSince1970(v148, v65, v66);
    v68 = v67;
    v146 = objc_msgSend_objectForKeyedSubscript_(v7, v69, v13);
    v144 = objc_msgSend_objectForKeyedSubscript_(v146, v70, @"RCSGroupIdentityVersion");
    v122 = objc_msgSend_intValue(v144, v71, v72);
    v141 = objc_msgSend_objectForKeyedSubscript_(v7, v73, v13);
    v130 = objc_msgSend_objectForKeyedSubscript_(v141, v74, @"RCSGroupURI");
    v138 = objc_msgSend_objectForKeyedSubscript_(v7, v75, v13);
    v137 = objc_msgSend_objectForKeyedSubscript_(v138, v76, @"hasViewedPotentialSpamChat");
    v116 = objc_msgSend_BOOLValue(v137, v77, v78);
    v135 = objc_msgSend_objectForKeyedSubscript_(v7, v79, v13);
    v134 = objc_msgSend_objectForKeyedSubscript_(v135, v80, *MEMORY[0x1E69A6C40]);
    objc_msgSend_timeIntervalSince1970(v134, v81, v82);
    v84 = v83;
    v133 = objc_msgSend_objectForKeyedSubscript_(v7, v85, v13);
    v131 = objc_msgSend_objectForKeyedSubscript_(v133, v86, @"messageHandshakeState");
    v114 = objc_msgSend_longValue(v131, v87, v88);
    v128 = objc_msgSend_objectForKeyedSubscript_(v7, v89, v13);
    v126 = objc_msgSend_objectForKeyedSubscript_(v128, v90, @"numberOfTimesRespondedtoThread");
    v113 = objc_msgSend_intValue(v126, v91, v92);
    v124 = objc_msgSend_objectForKeyedSubscript_(v7, v93, v13);
    v123 = objc_msgSend_objectForKeyedSubscript_(v124, v94, @"pv");
    v112 = objc_msgSend_longValue(v123, v95, v96);
    v121 = objc_msgSend_objectForKeyedSubscript_(v7, v97, v13);
    objc_msgSend_objectForKeyedSubscript_(v121, v98, @"shouldForceToSMS");
    v119 = v165 = self;
    v101 = objc_msgSend_BOOLValue(v119, v99, v100);
    v115 = objc_msgSend_objectForKeyedSubscript_(v7, v102, v13);
    v104 = objc_msgSend_objectForKeyedSubscript_(v115, v103, @"supportsEncryption");
    v107 = objc_msgSend_BOOLValue(v104, v105, v106);
    v109 = objc_msgSend_objectForKeyedSubscript_(v7, v108, *MEMORY[0x1E69A6C58]);
    v178 = v253;
    v186 = v145;
    v188 = v143;
    v190 = v142;
    v192 = v140;
    v194 = v139;
    v200 = v252;
    v206 = v136;
    v216 = v132;
    v220 = v129;
    v222 = v127;
    v224 = v125;
    v208 = v46;
    v210 = v120;
    v214 = v118;
    v218 = v117;
    v226 = v68;
    v228 = v122;
    v232 = v116;
    v175 = 1040;
    v197 = 1040;
    v233 = 1040;
    v176 = 16;
    v198 = 16;
    v234 = 16;
    v177 = 2096;
    v199 = 2096;
    v235 = 2096;
    v236 = v251;
    v240 = v114;
    v242 = v113;
    v205 = 2048;
    v207 = 2048;
    v219 = 2048;
    v221 = 2048;
    v223 = 2048;
    v225 = 2048;
    v237 = 2048;
    v239 = 2048;
    v243 = 2048;
    v244 = v112;
    v246 = v101;
    v185 = 1024;
    v187 = 1024;
    v189 = 1024;
    v191 = 1024;
    v193 = 1024;
    v215 = 1024;
    v227 = 1024;
    v231 = 1024;
    v241 = 1024;
    v245 = 1024;
    v247 = 1024;
    v248 = v107;
    v173 = 2112;
    v179 = 2112;
    v181 = 2112;
    v183 = 2112;
    v195 = 2112;
    v201 = 2112;
    v203 = 2112;
    v209 = 2112;
    v211 = 2112;
    v213 = 2112;
    v217 = 2112;
    v229 = 2112;
    v249 = 2112;
    v230 = v130;
    v238 = v84;
    v250 = v109;
    *buf = 138422274;
    v172 = v6;
    v174 = v168;
    v180 = v167;
    v182 = v166;
    v184 = v157;
    v196 = v153;
    v202 = v152;
    v204 = v151;
    v212 = v147;
    _os_log_impl(&dword_1A823F000, log, OS_LOG_TYPE_DEFAULT, "chat: %@  last message guid %@ updated: [\n     accountID = %{uuid_t}.16P\n     chatIdentifier = %@\n     groupID = %@\n     guid = %@\n     hasHadSuccessfulQuery = %{BOOL}d\n     isBlackholed = %{BOOL}d\n     isDeletingIncomingMessages = %{BOOL}d\n     isFiltered = %{BOOL}d\n     isRecovered = %{BOOL}d\n     lastAddressedLocalHandle = %@\n     lastAddressedSIMID = %{uuid_t}.16P\n     lastMessageTimeStampOnLoad = %@\n     lastReadMessageTimeStamp = %@\n     autoDonationBehavior = %ld\n     latestMessageDate = %f\n     originalGroupID = %@\n     pcmid = %@\n     roomName = %@\n     rowID = %i\n     serviceName = %@\n     state = %ld\n     style = %ld\n     unreadCount = %lu\n     properties = [\n         LSMD = %f\n         RCSGroupIdentityVersion = %i\n         RCSGroupURI = %@\n         hasViewedPotentialSpamChat = %{BOOL}d\n         lastSeenMessageGuid = %{uuid_t}.16P\n         markedAsKnownDate = %f\n         messageHandshakeState = %ld\n         numberOfTimesRespondedtoThread = %i\n         participantVersion = %ld\n         shouldForceToSMS = %{BOOL}d\n         supportsEncryption = %{BOOL}d\n     ]\n     participants = %@\n]", buf, 0x15Au);

    self = v165;
  }

  objc_msgSend__updateInfo_forGUID_updatingUnreadCount_(self, v110, v7, v6, 1);
  v111 = *MEMORY[0x1E69E9840];
}

- (void)unreadCountChanged:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v5, v6, v7);

  if ((isUnreadCountRefactorEnabled & 1) == 0 && objc_msgSend_unreadCount(self, v9, v10) != a3)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20[0] = 67109376;
        v20[1] = objc_msgSend_unreadCount(self, v13, v14);
        v21 = 1024;
        v22 = a3;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Unread count changed from %d to %d", v20, 0xEu);
      }
    }

    objc_msgSend_setUnreadCount_(self, v11, a3);
    v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
    objc_msgSend___mainThreadPostNotificationName_object_(v17, v18, @"__kIMChatRegistryUnreadCountChangedNotification", 0);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_processUnreadCountFullReplacement:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_msgSend_setUnreadCountReplacementState_(self, v4, 0);
    v8 = objc_msgSend_unreadCountController(self, v6, v7);
    objc_msgSend_processDelta_(v8, v9, v5);

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Failed to fetch full replacement from daemon", buf, 2u);
    }
  }

  v13 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
  isConnected = objc_msgSend_isConnected(v13, v14, v15);

  if ((isConnected & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v29 = 0;
        v23 = "Disconencted from daemon, giving up fetching unread count replacement";
        v24 = v29;
        goto LABEL_15;
      }

LABEL_16:
    }

LABEL_17:
    objc_msgSend_setUnreadCountReplacementState_(self, v21, 0);
    goto LABEL_23;
  }

  v19 = objc_msgSend_unreadCountReplacementState(self, v17, v18);
  v20 = IMOSLoggingEnabled();
  if (v19 == 3)
  {
    if (v20)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v28 = 0;
        v23 = "Retry attempt failed, giving up fetching unread count replacement";
        v24 = &v28;
LABEL_15:
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, v23, v24, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v20)
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Retrying fetch for unread count replacement", v27, 2u);
    }
  }

  objc_msgSend_setUnreadCountReplacementState_(self, v21, 2);
  objc_msgSend_performSelector_withObject_afterDelay_(self, v26, sel__rebuildUnreadCountController, self, 0.0);
LABEL_23:
}

- (void)_rebuildUnreadCountController
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel__rebuildUnreadCountController, 0);
  if (objc_msgSend_unreadCountReplacementState(self, v3, v4) == 1 || objc_msgSend_unreadCountReplacementState(self, v5, v6) == 3)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Not sending another request to rebuild unread count controller when one is in flight", buf, 2u);
      }
    }
  }

  else
  {
    v10 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
    isConnected = objc_msgSend_isConnected(v10, v11, v12);

    if (isConnected)
    {
      if (objc_msgSend_unreadCountReplacementState(self, v14, v15) == 2)
      {
        objc_msgSend_setUnreadCountReplacementState_(self, v16, 3);
      }

      else
      {
        objc_msgSend_setUnreadCountReplacementState_(self, v16, 1);
      }

      *buf = 0;
      v29 = buf;
      v30 = 0x2020000000;
      v31 = 0;
      v19 = objc_msgSend_daemonController(self, v17, v18);
      v22 = objc_msgSend_synchronousRemoteDaemon(v19, v20, v21);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1A83BCC2C;
      v27[3] = &unk_1E7814560;
      v27[4] = self;
      v27[5] = buf;
      objc_msgSend_unreadCountFullReplacementWithCompletion_(v22, v23, v27);

      if ((v29[24] & 1) == 0)
      {
        objc_msgSend__processUnreadCountFullReplacement_(self, v24, 0);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Not sending request to rebuild unread count because we are disconnected", buf, 2u);
        }
      }

      objc_msgSend_setUnreadCountReplacementState_(self, v25, 0);
    }
  }
}

- (void)unreadCountReportsUpdated:(id)a3
{
  v17 = a3;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v6, v7, v8);

  if (isUnreadCountRefactorEnabled)
  {
    if ((objc_msgSend_isReplacement(v17, v10, v11) & 1) == 0 && !IMGetDomainBoolForKeyWithDefaultValue() || (objc_msgSend_unreadCountController(self, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend_processDelta_(v14, v15, v17), v14, (v16 & 1) == 0))
    {
      objc_msgSend__rebuildUnreadCountController(self, v12, v13);
    }
  }
}

- (void)lastFailedMessageDateChanged:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_lastFailedMessageDate(self, a2, a3) != a3)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v14 = 134218240;
        FailedMessageDate = objc_msgSend_lastFailedMessageDate(self, v7, v8);
        v16 = 2048;
        v17 = a3;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Failed message date changed from %lld to %lld", &v14, 0x16u);
      }
    }

    objc_msgSend_setLastFailedMessageDate_(self, v5, a3);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
    objc_msgSend___mainThreadPostNotificationName_object_(v11, v12, @"__kIMChatRegistryLastFailedMessageDateChangedNotification", 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)historicalMessageGUIDsDeleted:(id)a3 chatGUIDs:(id)a4 queryID:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v48 = v8;
      v49 = 2112;
      v50 = v10;
      v51 = 2112;
      v52 = v9;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "deletedGUIDs: %@  queryID: %@  chatGUIDs: %@", buf, 0x20u);
    }
  }

  if (objc_msgSend_count(v9, v11, v12))
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = v9;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v42, v46, 16);
    if (v20)
    {
      v21 = *v43;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v24 = objc_msgSend_existingChatWithGUID_(self, v19, *(*(&v42 + 1) + 8 * i));
          if (v24 && (objc_msgSend_containsObjectIdenticalTo_(v16, v23, v24) & 1) == 0)
          {
            objc_msgSend__handleMessageGUIDDeletions_(v24, v25, v8);
            objc_msgSend_addObject_(v16, v26, v24);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v42, v46, 16);
      }

      while (v20);
    }
  }

  else
  {
    v27 = objc_msgSend_chatGUIDToChatMap(self, v14, v15);
    v16 = objc_msgSend_copy(v27, v28, v29);

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1A83BD118;
    v40[3] = &unk_1E7814588;
    v41 = v8;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v16, v30, v40);
    v17 = v41;
  }

  v33 = objc_msgSend_daemonQueryController(self, v31, v32);
  objc_msgSend_completeQuery_(v33, v34, v10);

  v37 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v35, v36);
  objc_msgSend___mainThreadPostNotificationName_object_(v37, v38, @"__kIMChatRegistryDidMoveMessagesInChatsToRecentlyDeletedNotification", v8);

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_checkLimitAndSetMessagesToKeepLoadedIfNeeded:(unint64_t)a3 chat:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (objc_msgSend_numberOfMessagesToKeepLoaded(v5, v6, v7) < a3)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 134218240;
        v14 = a3;
        v15 = 2048;
        v16 = objc_msgSend_numberOfMessagesToKeepLoaded(v5, v10, v11);
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "The limit (%lu) of number of messages we loaded is higher than our capacity (%lu), bumping our capactity to the new limit", &v13, 0x16u);
      }
    }

    objc_msgSend_setNumberOfMessagesToKeepLoaded_(v5, v8, a3);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_checkIfItemIsCorrupt:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v7 = objc_msgSend_guid(v4, v5, v6);
    if (objc_msgSend_isGUIDInAttemptingListInScrutinyMode_(IMChat, v8, v7))
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v19 = v7;
          v20 = 2112;
          v21 = v4;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Found attempted guid %@. Marking message as corrupt %@", buf, 0x16u);
        }
      }

      isCorrupt = objc_msgSend_isCorrupt(v4, v9, v10);
      objc_msgSend_setIsCorrupt_(v4, v13, 1);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A83BD3EC;
      v15[3] = &unk_1E78145B0;
      v16 = v7;
      v17 = isCorrupt;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_completeChatLoadQueryWithChat:(id)a3 queryID:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = a4;
  if (v9)
  {
    if (v6)
    {
      v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
      v22 = @"__kIMChatQueryIDKey";
      v23[0] = v9;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v23, &v22, 1);
      objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v10, v13, @"__kIMChatLoadRequestDidCompleteNotification", v6, v12);

      v16 = objc_msgSend_daemonQueryController(self, v14, v15);
      objc_msgSend_completeQuery_(v16, v17, v9);
    }

    else
    {
      v16 = objc_msgSend_daemonQueryController(self, v7, v8);
      v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v18, @"com.apple.Messages.IMChatRegistryErrorDomain", 1, 0);
      objc_msgSend_failQuery_error_(v16, v20, v9, v19);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)historyQuery:(id)a3 chatID:(id)a4 services:(id)a5 finishedWithResult:(id)a6 limit:(int64_t)a7
{
  v83 = *MEMORY[0x1E69E9840];
  v67 = a3;
  v66 = a4;
  v64 = a5;
  v65 = a6;
  v12 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v12, v13, 0)) == 0)
  {
    v16 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v16, v17, 0)) == 0)
    {
      v60 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
      v62 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v60, v61, 0);

      if (!v62)
      {
        goto LABEL_38;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v75 = v67;
      v76 = 2112;
      v77 = v66;
      v78 = 2112;
      v79 = v64;
      v80 = 1024;
      v81 = objc_msgSend_count(v65, v22, v23);
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "History query ID: %@   chatID: %@  service: %@  finished with results (%d)", buf, 0x26u);
    }
  }

  v24 = objc_msgSend_existingChatWithGUID_(self, v20, v66);
  v25 = IMOSLoggingEnabled();
  if (v24)
  {
    if (v25)
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v75 = v24;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Found chat: %@", buf, 0xCu);
      }
    }

    v29 = objc_msgSend_sharedInstance(IMAccountController, v26, v27);
    objc_msgSend__enableCache(v29, v30, v31);

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v32 = v65;
    v34 = 0;
    v35 = 0;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v70, v82, 16);
    if (v36)
    {
      v37 = *v71;
      do
      {
        v38 = 0;
        v39 = v35;
        do
        {
          if (*v71 != v37)
          {
            objc_enumerationMutation(v32);
          }

          v40 = *(*(&v70 + 1) + 8 * v38);
          v69 = v39;
          v41 = _IMBestAccountForIMMessageItemDictionary(v40, v24, 0, v39, &v69);
          v35 = v69;

          IMMessageFromIMMessageItemDictionary = _CreateIMMessageFromIMMessageItemDictionary(v40, v41, 1);
          if (IMMessageFromIMMessageItemDictionary)
          {
            if (IMOSLoggingEnabled())
            {
              v44 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v75 = IMMessageFromIMMessageItemDictionary;
                _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_DEBUG, "   => Created IMItem: %@", buf, 0xCu);
              }
            }

            if (!v34)
            {
              v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            objc_msgSend__checkIfItemIsCorrupt_(self, v43, IMMessageFromIMMessageItemDictionary);
            if (!objc_msgSend_type(IMMessageFromIMMessageItemDictionary, v45, v46))
            {
              v49 = objc_msgSend_message(IMMessageFromIMMessageItemDictionary, v47, v48);
              _IMCheckMessageForDDResults(v49);
            }

            objc_msgSend_addObject_(v34, v47, IMMessageFromIMMessageItemDictionary);
          }

          ++v38;
          v39 = v35;
        }

        while (v36 != v38);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v50, &v70, v82, 16);
      }

      while (v36);
    }

    objc_msgSend__checkLimitAndSetMessagesToKeepLoadedIfNeeded_chat_(self, v51, a7, v24);
    objc_msgSend__insertHistoricalMessages_queryID_isRefresh_isHistoryQuery_limit_(v24, v52, v34, v67, 0, 1, a7);
    v55 = objc_msgSend_sharedInstance(IMAccountController, v53, v54);
    objc_msgSend__disableCache(v55, v56, v57);
  }

  else
  {
    if (v25)
    {
      v58 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v75 = v67;
        v76 = 2112;
        v77 = v66;
        _os_log_impl(&dword_1A823F000, v58, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", buf, 0x16u);
      }
    }

    v35 = 0;
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v26, v24, v67);
  kdebug_trace();

LABEL_38:
  v59 = *MEMORY[0x1E69E9840];
}

- (void)pagedHistoryQuery:(id)a3 chatID:(id)a4 services:(id)a5 numberOfMessagesBefore:(int64_t)a6 numberOfMessagesAfter:(int64_t)a7 finishedWithResult:(id)a8 hasMessagesBefore:(BOOL)hasMoreMessagesToLoad hasMessagesAfter:(BOOL)hasMoreRecentMessagesToLoad
{
  v95 = *MEMORY[0x1E69E9840];
  v76 = a3;
  v75 = a4;
  v72 = a5;
  v74 = a8;
  v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v15, v16, 0)) == 0)
  {
    v19 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v19, v20, 0)) == 0)
    {
      v67 = objc_msgSend_sharedController(IMDaemonController, v21, v22);
      v69 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v67, v68, 0);

      if (!v69)
      {
        goto LABEL_43;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138413570;
      *v84 = v76;
      *&v84[8] = 2112;
      v85 = v75;
      v86 = 2112;
      v87 = v72;
      v88 = 1024;
      v89 = objc_msgSend_count(v74, v25, v26);
      v90 = 1024;
      v91 = a6;
      v92 = 1024;
      v93 = a7;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Paged history query ID: %@ chatID: %@ service: %@ finished with results count: %d numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0x32u);
    }
  }

  v29 = objc_msgSend_existingChatWithGUID_(self, v23, v75);
  if (v29)
  {
    v30 = objc_msgSend_sharedInstance(IMAccountController, v27, v28);
    objc_msgSend__enableCache(v30, v31, v32);

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v33 = v74;
    v35 = 0;
    v36 = 0;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v79, v94, 16);
    if (v37)
    {
      v38 = *v80;
      do
      {
        v39 = 0;
        v40 = v36;
        do
        {
          if (*v80 != v38)
          {
            objc_enumerationMutation(v33);
          }

          v41 = *(*(&v79 + 1) + 8 * v39);
          v78 = v40;
          v42 = _IMBestAccountForIMMessageItemDictionary(v41, v29, 0, v40, &v78);
          v36 = v78;

          IMMessageFromIMMessageItemDictionary = _CreateIMMessageFromIMMessageItemDictionary(v41, v42, 1);
          if (IMMessageFromIMMessageItemDictionary)
          {
            if (!v35)
            {
              v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            objc_msgSend__checkIfItemIsCorrupt_(self, v43, IMMessageFromIMMessageItemDictionary);
            if (!objc_msgSend_type(IMMessageFromIMMessageItemDictionary, v45, v46))
            {
              v49 = objc_msgSend_message(IMMessageFromIMMessageItemDictionary, v47, v48);
              _IMCheckMessageForDDResults(v49);
            }

            objc_msgSend_addObject_(v35, v47, IMMessageFromIMMessageItemDictionary);
          }

          ++v39;
          v40 = v36;
        }

        while (v37 != v39);
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v50, &v79, v94, 16);
      }

      while (v37);
    }

    if (IMOSLoggingEnabled())
    {
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *v84 = a6;
        *&v84[4] = 1024;
        *&v84[6] = a7;
        _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "Paged history about to call insert historicalMessages numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0xEu);
      }
    }

    v54 = a7 > 0 && a6 > 0;
    if (a6 <= 0)
    {
      hasMoreMessagesToLoad = objc_msgSend_hasMoreMessagesToLoad(v29, v51, v52);
    }

    if (a7 <= 0)
    {
      hasMoreRecentMessagesToLoad = objc_msgSend_hasMoreRecentMessagesToLoad(v29, v51, v52);
    }

    v59 = objc_msgSend_count(v35, v51, v52);
    HIBYTE(v70) = hasMoreRecentMessagesToLoad;
    LOBYTE(v70) = hasMoreMessagesToLoad;
    objc_msgSend__insertHistoricalMessages_queryID_isRefresh_isHistoryQuery_isReplacingItems_limit_hasMessagesBefore_hasMessagesAfter_(v29, v60, v35, v76, 0, 1, v54, v59, v70);
    v63 = objc_msgSend_sharedInstance(IMAccountController, v61, v62);
    objc_msgSend__disableCache(v63, v64, v65);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v57 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v84 = v76;
        *&v84[8] = 2112;
        v85 = v75;
        _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "Found no chat object for query: %@  chat ID: %@", buf, 0x16u);
      }
    }

    v36 = 0;
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v56, v29, v76);

LABEL_43:
  v66 = *MEMORY[0x1E69E9840];
}

- (void)attachmentQuery:(id)a3 chatID:(id)a4 services:(id)a5 finishedWithResult:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v16, v17, 0)) == 0)
  {
    v20 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v20, v21, 0)) == 0)
    {
      v43 = objc_msgSend_sharedController(IMDaemonController, v22, v23);
      v45 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v43, v44, 0);

      if (!v45)
      {
        goto LABEL_20;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v49 = v10;
      v50 = 2112;
      v51 = v11;
      v52 = 2112;
      v53 = v12;
      v54 = 1024;
      v55 = objc_msgSend_count(v13, v26, v27);
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Media attachment filenames query ID: %@   chatID: %@  service: %@  finished with results (%d)", buf, 0x26u);
    }
  }

  v28 = objc_msgSend_existingChatWithGUID_(self, v24, v11);
  v29 = IMOSLoggingEnabled();
  if (v28)
  {
    if (v29)
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = v28;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Found chat: %@", buf, 0xCu);
      }
    }

    v32 = objc_alloc(MEMORY[0x1E695DF70]);
    v35 = objc_msgSend_count(v13, v33, v34);
    v37 = objc_msgSend_initWithCapacity_(v32, v36, v35);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = sub_1A83BE754;
    v46[3] = &unk_1E78145D8;
    v47 = v37;
    v38 = v37;
    objc_msgSend_enumerateObjectsUsingBlock_(v13, v39, v46);
    objc_msgSend__setAttachments_(v28, v40, v38);
  }

  else if (v29)
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v49 = v10;
      v50 = 2112;
      v51 = v11;
      _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", buf, 0x16u);
    }
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v30, v28, v10);

LABEL_20:
  v42 = *MEMORY[0x1E69E9840];
}

- (void)uncachedAttachmentCountQuery:(id)a3 chatID:(id)a4 services:(id)a5 finishedWithResult:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v16, v17, 0)) == 0)
  {
    v20 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v20, v21, 0)) == 0)
    {
      v34 = objc_msgSend_sharedController(IMDaemonController, v22, v23);
      v36 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v34, v35, 0);

      if (!v36)
      {
        goto LABEL_20;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v37 = 138413058;
      v38 = v10;
      v39 = 2112;
      v40 = v11;
      v41 = 2112;
      v42 = v12;
      v43 = 2048;
      v44 = objc_msgSend_unsignedLongValue(v13, v26, v27);
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Media attachment uncached count query ID: %@   chatID: %@  service: %@  finished with results (%lu)", &v37, 0x2Au);
    }
  }

  v28 = objc_msgSend_existingChatWithGUID_(self, v24, v11);
  v29 = IMOSLoggingEnabled();
  if (v28)
  {
    if (v29)
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v37 = 138412290;
        v38 = v28;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Found chat: %@", &v37, 0xCu);
      }
    }

    objc_msgSend__setCountOfAttachmentsNotCachedLocally_(v28, v30, v13);
  }

  else if (v29)
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v37 = 138412546;
      v38 = v10;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", &v37, 0x16u);
    }
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v30, v28, v10);

LABEL_20:
  v33 = *MEMORY[0x1E69E9840];
}

- (id)_chatForIdentifiers:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1A8259C90;
  v13 = sub_1A825AF74;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A83BECD8;
  v8[3] = &unk_1E7814600;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v5, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)finishedDownloadingPurgedAssetsForChatIDs:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v7, v8, 0)) == 0)
  {
    v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) == 0)
    {
      v23 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
      v25 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v23, v24, 0);

      if (!v25)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      v27 = v4;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Media attachment download purged assets for chatIDs: %@  finished.", &v26, 0xCu);
    }
  }

  v19 = objc_msgSend__chatForIdentifiers_(self, v15, v4);
  if (v19)
  {
    v20 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v17, v18);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v20, v21, @"__kIMChatPurgedAttachmentsDownloadCompleteNotification", v19, 0);
  }

LABEL_12:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)downloadedPurgedAssetBatchForChatIDs:(id)a3 completedTransferGUIDs:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0)) == 0)
  {
    v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v14, v15, 0)) == 0)
    {
      v29 = objc_msgSend_sharedController(IMDaemonController, v16, v17);
      v31 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v29, v30, 0);

      if (!v31)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v6;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Media attachment download purged assets batch for chatIDs: %@  finished.", buf, 0xCu);
    }
  }

  v21 = objc_msgSend__chatForIdentifiers_(self, v18, v6);
  if (v21)
  {
    if (v7)
    {
      v22 = v7;
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    v32 = @"completedTransferGUIDs";
    v33 = v22;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, &v33, &v32, 1);
    v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v26, v27, @"__kIMChatPurgedAttachmentsDownloadBatchCompleteNotification", v21, v23);
  }

LABEL_15:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)markAsSpamQuery:(id)a3 chatID:(id)a4 services:(id)a5 finishedWithResult:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v16, v17, 0)) == 0)
  {
    v20 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v20, v21, 0)) == 0)
    {
      v32 = objc_msgSend_sharedController(IMDaemonController, v22, v23);
      v34 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v32, v33, 0);

      if (!v34)
      {
        goto LABEL_20;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v35 = 138413058;
      v36 = v10;
      v37 = 2112;
      v38 = v11;
      v39 = 2112;
      v40 = v12;
      v41 = 2112;
      v42 = v13;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Mark as Spam query ID: %@   chatID: %@  service: %@  finished with results (%@)", &v35, 0x2Au);
    }
  }

  v26 = objc_msgSend_existingChatWithGUID_(self, v24, v11);
  v27 = IMOSLoggingEnabled();
  if (v26)
  {
    if (v27)
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v35 = 138412290;
        v36 = v26;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Found chat: %@", &v35, 0xCu);
      }
    }

    objc_msgSend__setCountOfMessagesMarkedAsSpam_(v26, v28, v13);
  }

  else if (v27)
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v35 = 138412546;
      v36 = v10;
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", &v35, 0x16u);
    }
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v28, v26, v10);

LABEL_20:
  v31 = *MEMORY[0x1E69E9840];
}

- (void)frequentRepliesQuery:(id)a3 chatID:(id)a4 services:(id)a5 finishedWithResult:(id)a6 limit:(int64_t)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v17, v18, 0)) == 0)
  {
    v21 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
    if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v21, v22, 0)) == 0)
    {
      v41 = objc_msgSend_sharedController(IMDaemonController, v23, v24);
      v43 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v41, v42, 0);

      if (!v43)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v28 = objc_msgSend_existingChatWithGUID_(self, v25, v12);
  if (v28)
  {
    v29 = objc_msgSend_sharedInstance(IMAccountController, v26, v27);
    objc_msgSend__enableCache(v29, v30, v31);

    objc_msgSend_setFrequentReplies_(v28, v32, v14);
    v35 = objc_msgSend_sharedInstance(IMAccountController, v33, v34);
    objc_msgSend__disableCache(v35, v36, v37);
  }

  else if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v44 = 138412546;
      v45 = v11;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_INFO, "Found no chat object for frequent replies query: %@   chat ID: %@", &v44, 0x16u);
    }
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v38, v28, v11);

LABEL_12:
  v40 = *MEMORY[0x1E69E9840];
}

- (void)_automation_markAsReadQuery:(id)a3 finishedWithResult:(BOOL)a4
{
  v22 = a3;
  v7 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v7, v8, 0)) != 0)
  {
    goto LABEL_4;
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0)) != 0)
  {

LABEL_4:
LABEL_5:
    v17 = objc_msgSend_daemonQueryController(self, v15, v16);
    objc_msgSend_completeQuery_(v17, v18, v22);

    goto LABEL_6;
  }

  v19 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
  v21 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v19, v20, 0);

  if (v21)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)chatsNeedRemerging:(id)a3 groupedChats:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Chats need re-merging notification", buf, 2u);
  }

  if (objc_msgSend_count(v6, v9, v10) < 2)
  {
    if (objc_msgSend_count(v6, v11, v12) == 1)
    {
      v42 = objc_msgSend_lastObject(v6, v40, v41);
      v44 = objc_msgSend_existingChatWithGUID_(self, v43, v42);
      v47 = objc_msgSend_firstObject(v7, v45, v46);
      v49 = objc_msgSend_objectForKey_(v47, v48, *MEMORY[0x1E69A6C68]);
      objc_msgSend__updatePersonCentricIDToChatMapForChat_toNewPersonCentricID_(self, v50, v44, v49);
    }

    v32 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_DEFAULT, "One GUID presented to merge, not remerging!", buf, 2u);
    }
  }

  else
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = v6;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Asked to remerge %@", buf, 0xCu);
    }

    v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
    if (v6)
    {
      v18 = v6;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    v61 = @"__kIMChatRegistryGUIDListKey";
    v62 = v18;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v62, &v61, 1, v7);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v17, v20, @"__kIMChatRegistryWillRemergeChatsNotification", self, v19);

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = v6;
    v21 = v6;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v54, v60, 16);
    if (v23)
    {
      v24 = v23;
      v25 = *v55;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v55 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v54 + 1) + 8 * i);
          v28 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v64 = v27;
            _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "Unregistering chat guid %@", buf, 0xCu);
          }

          objc_msgSend__unregisterChatWithGUID_deleted_(self, v29, v27, 0);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v30, &v54, v60, 16);
      }

      while (v24);
    }

    v7 = v52;
    v32 = objc_msgSend__copyMergedChatsPairedArrayFromMergedChatsArray_(self, v31, v52);
    sub_1A83BFED0(self, v32, 0);
    v36 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v33, v34);
    v58 = @"__kIMChatRegistryMergedPairsListKey";
    v37 = MEMORY[0x1E695E0F0];
    if (v32)
    {
      v37 = v32;
    }

    v59 = v37;
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v35, &v59, &v58, 1);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v36, v39, @"__kIMChatRegistryDidRemergeChatsNotification", self, v38);

    v6 = v53;
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (id)_copyMergedChatsPairedArrayFromMergedChatsArray:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = objc_msgSend_count(v3, v5, v6);
  v45 = objc_msgSend_initWithCapacity_(v4, v8, v7);
  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v11 = objc_msgSend_initWithCapacity_(v9, v10, 10);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = v3;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v47, v51, 16);
  if (v14)
  {
    v16 = v14;
    v17 = 0;
    v18 = *v48;
    v19 = *MEMORY[0x1E69A6C68];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(*(&v47 + 1) + 8 * i);
        v22 = objc_msgSend_objectForKey_(v21, v15, v19);
        if ((objc_msgSend_isEqualToString_(v17, v23, v22) & 1) == 0)
        {
          if (objc_msgSend_count(v11, v24, v25) && objc_msgSend_length(v17, v26, v27))
          {
            v29 = objc_msgSend_pairWithFirst_second_(MEMORY[0x1E69A6128], v28, v11, v17);
            objc_msgSend_addObject_(v45, v30, v29);

            v31 = objc_alloc(MEMORY[0x1E695DF70]);
            v11 = objc_msgSend_initWithCapacity_(v31, v32, 10);
          }

          v33 = v22;

          v17 = v33;
        }

        objc_msgSend_addObject_(v11, v24, v21);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v47, v51, 16);
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  if (objc_msgSend_count(v11, v34, v35) && objc_msgSend_length(v17, v36, v37))
  {
    v39 = objc_msgSend_pairWithFirst_second_(MEMORY[0x1E69A6128], v38, v11, v17);
    objc_msgSend_addObject_(v45, v40, v39);
  }

  v41 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_DEFAULT, "Completed re-constructing merged chat paired array", buf, 2u);
  }

  v42 = v45;
  v43 = *MEMORY[0x1E69E9840];
  return v42;
}

- (void)_handleMergedChatReconstructions:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v6 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v9 = objc_msgSend_processCapabilities(v6, v7, v8);

  if ((v9 & 0x2400000) != 0)
  {
    v49 = objc_msgSend__copyMergedChatsPairedArrayFromMergedChatsArray_(self, v10, v50);
    v13 = objc_msgSend_sharedController(IMDaemonController, v11, v12);
    if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v13, v14, 0)) != 0)
    {
    }

    else
    {
      v19 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
      v21 = *MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v19, v20, 0);

      if (!v21)
      {
        v26 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Clearing chat registry", buf, 2u);
        }

        v29 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v27, v28);
        objc_msgSend___mainThreadPostNotificationName_object_(v29, v30, @"__kIMChatRegistryWillLoadNotification", 0);

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v33 = objc_msgSend_cachedChats(self, v31, v32);
        v36 = objc_msgSend_copy(v33, v34, v35);

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v51, v55, 16);
        if (v38)
        {
          v39 = *v52;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v52 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v51 + 1) + 8 * i);
              v42 = IMChatRegistryLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v57 = v41;
                _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_DEFAULT, " => Unregistering chat: %@", buf, 0xCu);
              }

              objc_msgSend__unregisterChat_deleted_(self, v43, v41, 0);
            }

            v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v44, &v51, v55, 16);
          }

          while (v38);
        }

        v47 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v45, v46);
        objc_msgSend___mainThreadPostNotificationName_object_(v47, v48, @"__kIMChatRegistryDidLoadNotification", 0);

        v22 = v49;
        goto LABEL_10;
      }
    }

    v22 = v49;
    objc_msgSend___handleMergedChatReconstructions_(self, v17, v49);
    objc_msgSend_setUpInitialCallState(self, v23, v24);
LABEL_10:

    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Bailing out of _handleMergedChatReconstructions as no precached chats are expected.", buf, 2u);
    }
  }

LABEL_11:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)updateChatDictionaryArray:(id)a3 createdChat:(id)a4 joinstate:(int64_t)a5 setHasCommunicatedOveriMessage:(BOOL *)a6
{
  v49 = a5;
  v56 = a3;
  v8 = a4;
  if (objc_msgSend_count(v56, v9, v10) >= 2)
  {
    v54 = *MEMORY[0x1E69A6B70];
    v53 = *MEMORY[0x1E69A6BE0];
    v52 = *MEMORY[0x1E69A6BC0];
    v51 = *MEMORY[0x1E69A6C08];
    v50 = *MEMORY[0x1E69A6B50];
    v12 = 1;
    do
    {
      v13 = objc_msgSend_objectAtIndex_(v56, v11, v12, v49);
      v15 = objc_msgSend_objectForKey_(v13, v14, v54);
      v17 = objc_msgSend_objectForKey_(v13, v16, v53);
      v20 = objc_msgSend_intValue(v17, v18, v19);

      objc_msgSend__registerChatDictionary_forChat_isIncoming_newGUID_shouldPostNotification_(self, v21, v13, v8, 0, v15, 0);
      objc_msgSend__updateInfo_forGUID_updatingUnreadCount_shouldPostNotifications_(self, v22, v13, v15, 1, 0);
      v24 = objc_msgSend_objectForKeyedSubscript_(v13, v23, v52);
      v27 = objc_msgSend_longLongValue(v24, v25, v26);

      if (!v27)
      {
        objc_msgSend_setIsFiltered_(v8, v28, 0);
      }

      v29 = objc_msgSend_objectForKey_(v13, v28, v51);
      v31 = objc_msgSend_objectForKey_(v29, v30, @"service");
      v33 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v32, v31);
      v36 = v33;
      if (!*a6)
      {
        if (v33)
        {
          v37 = objc_msgSend_iMessageService(IMServiceImpl, v34, v35);

          if (v36 == v37)
          {
            v38 = objc_msgSend_sharedRegistry(IMChatRegistry, v34, v35);
            objc_msgSend__setChatHasCommunicatedOveriMessage_(v38, v39, v8);

            *a6 = 1;
          }
        }
      }

      if (objc_msgSend_supportsMutatingGroupMembers(v36, v34, v35))
      {
        isDiscontinued = objc_msgSend_isDiscontinued(v36, v40, v41);
        if (v49 == 3 && (isDiscontinued & 1) == 0)
        {
          objc_msgSend__setJoinState_(v8, v40, v20);
        }
      }

      v43 = objc_msgSend_domainIdentifiers(v8, v40, v41);
      v45 = objc_msgSend_objectForKey_(v13, v44, v50);
      objc_msgSend_setDomainIdentifiers_forChatGUID_(v43, v46, v45, v15);

      ++v12;
    }

    while (v12 < objc_msgSend_count(v56, v47, v48));
  }
}

- (void)_handleCachingAliasToCNIDMap:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v5, v6, @"_handleCachingAliasToCNIDMap");
  v9 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  v11 = *MEMORY[0x1E69A6298] & objc_msgSend_capabilitiesForListenerID_(v9, v10, 0);

  if (!v11)
  {
    v15 = objc_msgSend_contactStore(self, v12, v13);
    objc_msgSend_setHandleIDToCNIDMap_(v15, v16, v4);

    objc_msgSend_stopTimingForKey_(v5, v17, @"_handleCachingAliasToCNIDMap");
    v14 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      objc_msgSend_totalTimeForKey_(v5, v18, @"_handleCachingAliasToCNIDMap");
      v21 = 134217984;
      v22 = v19;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Caching AliasToCNIDMap completed. Took %f seconds", &v21, 0xCu);
    }

    goto LABEL_8;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Bailing out of handle Contacts cache construction due to kFZListenerCapPaginatedChatRegistry", &v21, 2u);
    }

LABEL_8:
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_handleChatReconstructions:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v6 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = *MEMORY[0x1E69A6298] & objc_msgSend_capabilitiesForListenerID_(v6, v7, 0);

  if (!v8)
  {
    v12 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
    if ((*MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v12, v13, 0)) == 0)
    {
      v16 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
      if ((*MEMORY[0x1E69A62B0] & objc_msgSend_capabilitiesForListenerID_(v16, v17, 0)) == 0)
      {
        v31 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
        v33 = *MEMORY[0x1E69A6258] & objc_msgSend_capabilitiesForListenerID_(v31, v32, 0);

        if (!v33)
        {
          v34 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_DEFAULT, "Clearing chat registry", buf, 2u);
          }

          v37 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v35, v36);
          objc_msgSend___mainThreadPostNotificationName_object_(v37, v38, @"__kIMChatRegistryWillLoadNotification", 0);

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v41 = objc_msgSend_cachedChats(self, v39, v40);
          v44 = objc_msgSend_copy(v41, v42, v43);

          v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v58, v62, 16);
          if (v46)
          {
            v47 = *v59;
            do
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v59 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v58 + 1) + 8 * i);
                v50 = IMChatRegistryLogHandle();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v64 = v49;
                  _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_DEFAULT, " => Unregistering chat: %@", buf, 0xCu);
                }

                objc_msgSend__unregisterChat_deleted_(self, v51, v49, 0);
              }

              v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v52, &v58, v62, 16);
            }

            while (v46);
          }

          v55 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v53, v54);
          objc_msgSend___mainThreadPostNotificationName_object_(v55, v56, @"__kIMChatRegistryDidLoadNotification", 0);

          goto LABEL_13;
        }

LABEL_10:
        v22 = objc_msgSend_cachedChats(self, v20, v21);
        objc_msgSend_setPreExistingAllChats_(self, v23, v22);

        v26 = objc_msgSend_chatGUIDToInfoMap(self, v24, v25);
        objc_msgSend_removeAllObjects(v26, v27, v28);

        objc_msgSend___handleChatReconstructions_(self, v29, v57);
        v11 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Not doing 2 step chat registry load", buf, 2u);
        }

        goto LABEL_12;
      }
    }

    goto LABEL_10;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Bailing out of handle chat reconstructions due to kFZListenerCapPaginatedChatRegistry", buf, 2u);
    }

LABEL_12:
  }

LABEL_13:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)__handleChatReconstructions:(id)a3
{
  buf[7] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Restoring chats", buf, 2u);
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = MarcoLoggingStringForMessageData();
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, " => chats: %@", buf, 0xCu);
    }
  }

  v237 = objc_msgSend_IMCoreSetupTimingCollection(MEMORY[0x1E69A6170], v5, v6);
  objc_msgSend_startTimingForKey_(v237, v9, @"IMCoreSetup: ChatReconstruction");
  objc_msgSend_setLoading_(self, v10, 1);
  isFirstLoad = objc_msgSend_isFirstLoad(self, v11, v12);
  v241 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v236 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v242 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = objc_msgSend_cachedChats(self, v13, v14);
  objc_msgSend_addObjectsFromArray_(v241, v16, v15);

  objc_msgSend__resetChatReconstructionGroupMaps(self, v17, v18);
  v21 = objc_msgSend_groupIDToChatMap(self, v19, v20);
  objc_msgSend_removeAllObjects(v21, v22, v23);

  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  obj = v3;
  v245 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v270, v277, 16);
  if (!v245)
  {
    v249 = 0;
    goto LABEL_101;
  }

  v249 = 0;
  v243 = *MEMORY[0x1E69A6C08];
  v244 = *v271;
  v240 = *MEMORY[0x1E69A6BC0];
  do
  {
    v26 = 0;
    do
    {
      if (*v271 != v244)
      {
        objc_enumerationMutation(obj);
      }

      v252 = *(*(&v270 + 1) + 8 * v26);
      v253 = objc_msgSend_objectForKey_(v252, v25, @"guid");
      v28 = objc_msgSend__cachedChatWithGUID_(self, v27, v253);
      v251 = objc_msgSend_objectForKey_(v252, v29, v243);
      if (!v28)
      {
        v62 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1A823F000, v62, OS_LOG_TYPE_DEFAULT, " => no existing chat, we'll create one", buf, 2u);
        }

        v63 = v251;
        v64 = v252;
        v66 = objc_msgSend_objectForKeyedSubscript_(v64, v65, v240);
        v69 = objc_msgSend_integerValue(v66, v67, v68);

        if (v69 >= 1)
        {
          v72 = objc_msgSend_sharedRegistry(IMChatRegistry, v70, v71);
          if (objc_msgSend_currentMessageFilterMode(v72, v73, v74) <= 0)
          {
          }

          else
          {
            v77 = MEMORY[0x1E69A8210];
            v78 = objc_msgSend_sharedRegistry(IMChatRegistry, v75, v76);
            v81 = objc_msgSend_currentMessageFilterMode(v78, v79, v80);
            isFilterMode_subsetOf = objc_msgSend_isFilterMode_subsetOf_(v77, v82, v69, v81);

            if (!isFilterMode_subsetOf)
            {
              v61 = 0;
              goto LABEL_31;
            }
          }
        }

        sub_1A84E3C24(v63, v64, buf);
        v61 = buf[0];
LABEL_31:

        if (v61)
        {
          objc_msgSend__checkIfItemIsCorrupt_(self, v89, v61);
          v247 = objc_alloc_init(MEMORY[0x1E695DF70]);
          objc_msgSend_addObject_(v247, v90, v61);
        }

        else
        {
          v247 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v269 = 0;
        v268 = 0;
        v28 = sub_1A84E342C(self, v64, v247, 1, &v269, &v268);
        log = v268;
        if (v269 == 1)
        {
          objc_msgSend__startTiming_(v28, v91, v237);
          objc_msgSend_addObject_(v236, v92, v28);
          v93 = self;
          if ((v249 & 1) == 0)
          {
            v94 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(&dword_1A823F000, v94, OS_LOG_TYPE_DEFAULT, "** Posting will load notification", buf, 2u);
            }

            v97 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v95, v96);
            objc_msgSend___mainThreadPostNotificationName_object_(v97, v98, @"__kIMChatRegistryWillLoadNotification", v93);
          }

          if (IMOSLoggingEnabled())
          {
            v100 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
            {
              v103 = objc_msgSend_guid(v28, v101, v102);
              LODWORD(buf[0]) = 138412290;
              *(buf + 4) = v103;
              _os_log_impl(&dword_1A823F000, v100, OS_LOG_TYPE_DEBUG, "   Loaded chat: %@", buf, 0xCu);
            }
          }

          objc_msgSend__registerChatDictionary_forChat_isIncoming_newGUID_shouldPostNotification_(v93, v99, v64, v28, 0, log, 0);
          v249 = 1;
          goto LABEL_88;
        }

        v105 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          v108 = objc_msgSend_guid(v28, v106, v107);
          LODWORD(buf[0]) = 138412290;
          *(buf + 4) = v108;
          _os_log_impl(&dword_1A823F000, v105, OS_LOG_TYPE_DEFAULT, "Not registering: %@, already existing", buf, 0xCu);
        }

        objc_msgSend__registerChatDictionary_forChat_isIncoming_newGUID_shouldPostNotification_(self, v109, v64, v28, 0, log, 0);
        objc_msgSend_removeObjectIdenticalTo_(v241, v110, v28);
        v111 = v61;
        v112 = v28;
        v115 = objc_msgSend__lastMessage(v112, v113, v114);
        v118 = v115;
        if (v115)
        {
          if (objc_msgSend_messageID(v115, v116, v117) && objc_msgSend_messageID(v111, v119, v120))
          {
            v121 = objc_msgSend_time(v111, v119, v120);
            v124 = objc_msgSend_time(v118, v122, v123);
            v126 = objc_msgSend_compare_(v121, v125, v124) == 1;

            if (!v126)
            {
LABEL_88:
              objc_msgSend__updateInfo_forGUID_updatingUnreadCount_(self, v104, v64, v253, 1);
              if (v28 && (objc_msgSend_containsObjectIdenticalTo_(v242, v171, v28) & 1) == 0)
              {
                objc_msgSend_addObject_(v242, v172, v28);
              }

              goto LABEL_92;
            }

LABEL_87:
            objc_msgSend__insertHistoricalMessages_queryID_isRefresh_isHistoryQuery_(v112, v104, v247, @"Reconstruction", isFirstLoad ^ 1u, 0);
            goto LABEL_88;
          }

          if (objc_msgSend_messageID(v118, v119, v120) || !objc_msgSend_messageID(v111, v135, v136))
          {
            if (objc_msgSend_messageID(v118, v135, v136))
            {
              objc_msgSend_messageID(v111, v137, v138);
            }

            goto LABEL_88;
          }
        }

        goto LABEL_87;
      }

      if (!objc_msgSend_wantsHistoryReload(self, v30, v31))
      {
        objc_msgSend__registerChatDictionary_forChat_isIncoming_newGUID_shouldPostNotification_(self, v32, v252, v28, 0, v253, 0);
        objc_msgSend__updateInfo_forGUID_updatingUnreadCount_(self, v84, v252, v253, 1);
        objc_msgSend_removeObjectIdenticalTo_(v241, v85, v28);
        v61 = 0;
        objc_msgSend__checkIfItemIsCorrupt_(self, v86, 0);
        goto LABEL_93;
      }

      v33 = self;
      if ((v249 & 1) == 0)
      {
        v34 = v33;
        v35 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_DEFAULT, "** Posting will load notification", buf, 2u);
        }

        v38 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v36, v37);
        objc_msgSend___mainThreadPostNotificationName_object_(v38, v39, @"__kIMChatRegistryWillLoadNotification", v34);

        v33 = v34;
      }

      v250 = v33;

      v40 = v251;
      v41 = v252;
      v43 = objc_msgSend_objectForKeyedSubscript_(v41, v42, v240);
      v46 = objc_msgSend_integerValue(v43, v44, v45);

      if (v46 >= 1)
      {
        v49 = objc_msgSend_sharedRegistry(IMChatRegistry, v47, v48);
        if (objc_msgSend_currentMessageFilterMode(v49, v50, v51) <= 0)
        {
        }

        else
        {
          v54 = MEMORY[0x1E69A8210];
          v55 = objc_msgSend_sharedRegistry(IMChatRegistry, v52, v53);
          v58 = objc_msgSend_currentMessageFilterMode(v55, v56, v57);
          v60 = objc_msgSend_isFilterMode_subsetOf_(v54, v59, v46, v58);

          if (!v60)
          {
            v61 = 0;
            goto LABEL_68;
          }
        }
      }

      if (objc_msgSend_count(v40, v47, v48))
      {
        v128 = objc_msgSend_objectForKey_(v40, v127, @"accountID");
        v130 = objc_msgSend_objectForKey_(v40, v129, @"account");
        v133 = objc_msgSend_objectForKey_(v40, v131, @"serviceName");
        if (v128)
        {
          if (v130)
          {
            goto LABEL_55;
          }

LABEL_63:
          v130 = objc_msgSend_objectForKey_(v41, v132, @"account");
          if (!v133)
          {
            goto LABEL_64;
          }

LABEL_65:
          v140 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v132, v133);
        }

        else
        {
          v128 = objc_msgSend_objectForKey_(v41, v132, @"accountID");
          if (!v130)
          {
            goto LABEL_63;
          }

LABEL_55:
          if (v133)
          {
            goto LABEL_65;
          }

LABEL_64:
          v133 = objc_msgSend_objectForKey_(v41, v132, @"serviceName");
          if (v133)
          {
            goto LABEL_65;
          }

          v140 = 0;
        }

        v141 = objc_msgSend_sharedInstance(IMAccountController, v132, v139);
        v143 = objc_msgSend_bestAccountForService_login_guid_(v141, v142, v140, v130, v128);

        IMMessageFromIMMessageItemDictionary = _CreateIMMessageFromIMMessageItemDictionary(v40, v143, 1);
        goto LABEL_67;
      }

      IMMessageFromIMMessageItemDictionary = 0;
LABEL_67:
      v61 = IMMessageFromIMMessageItemDictionary;

LABEL_68:
      if (v61)
      {
        objc_msgSend__checkIfItemIsCorrupt_(v250, v144, v61);
        v145 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_msgSend_addObject_(v145, v146, v61);
        v147 = v61;
        v148 = v28;
        v151 = objc_msgSend__lastMessage(v148, v149, v150);
        v154 = v151;
        if (v151)
        {
          if (objc_msgSend_messageID(v151, v152, v153) && objc_msgSend_messageID(v147, v155, v156))
          {
            v157 = objc_msgSend_time(v147, v155, v156);
            v160 = objc_msgSend_time(v154, v158, v159);
            v248 = objc_msgSend_compare_(v157, v161, v160) == 1;

            if (!v248)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          }

          if (objc_msgSend_messageID(v154, v155, v156) || !objc_msgSend_messageID(v147, v163, v164))
          {
            if (objc_msgSend_messageID(v154, v163, v164))
            {
              objc_msgSend_messageID(v147, v165, v166);
            }

            goto LABEL_81;
          }
        }

LABEL_80:
        objc_msgSend__insertHistoricalMessages_queryID_isRefresh_isHistoryQuery_(v148, v162, v145, @"Reconstruction", isFirstLoad ^ 1u, 0);
LABEL_81:
      }

      objc_msgSend__registerChatDictionary_forChat_isIncoming_newGUID_shouldPostNotification_(v250, v144, v41, v28, 0, v253, 0);
      objc_msgSend__updateInfo_forGUID_updatingUnreadCount_(v250, v167, v41, v253, 1);
      if ((objc_msgSend_containsObjectIdenticalTo_(v242, v168, v28) & 1) == 0)
      {
        objc_msgSend_addObject_(v242, v169, v28);
      }

      objc_msgSend_removeObjectIdenticalTo_(v241, v169, v28);
      v249 = 1;
LABEL_92:
      objc_msgSend__checkIfItemIsCorrupt_(self, v170, v61);
LABEL_93:
      v173 = objc_msgSend_service(v61, v87, v88);
      v176 = objc_msgSend_iMessageService(IMServiceImpl, v174, v175);
      v179 = objc_msgSend_internalName(v176, v177, v178);
      isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v173, v180, v179);

      if (isEqualToIgnoringCase)
      {
        objc_msgSend__setChatHasCommunicatedOveriMessage_(self, v182, v28);
      }

      v183 = objc_msgSend__winningJoinStateForExistingChat_incomingDictionary_(self, v182, v28, v252);
      objc_msgSend__setJoinState_(v28, v184, v183);

      ++v26;
    }

    while (v245 != v26);
    v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v270, v277, 16);
    v245 = v185;
  }

  while (v185);
LABEL_101:

  objc_msgSend_startTimingForKey_(v237, v186, @"IMCoreSetup: Updating unread counts");
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v187 = v242;
  v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v188, &v264, v276, 16);
  if (v190)
  {
    v191 = *v265;
    do
    {
      for (i = 0; i != v190; ++i)
      {
        if (*v265 != v191)
        {
          objc_enumerationMutation(v187);
        }

        objc_msgSend__updateUnreadCountForChat_(self, v189, *(*(&v264 + 1) + 8 * i));
      }

      v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v189, &v264, v276, 16);
    }

    while (v190);
  }

  objc_msgSend_stopTimingForKey_(v237, v193, @"IMCoreSetup: Updating unread counts");
  v194 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v241;
    _os_log_impl(&dword_1A823F000, v194, OS_LOG_TYPE_DEFAULT, "Removing stale chats: %@", buf, 0xCu);
  }

  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v195 = v241;
  v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v195, v196, &v260, v275, 16);
  if (v199)
  {
    v200 = *v261;
    do
    {
      for (j = 0; j != v199; ++j)
      {
        if (*v261 != v200)
        {
          objc_enumerationMutation(v195);
        }

        v202 = *(*(&v260 + 1) + 8 * j);
        if (objc_msgSend_joinState(v202, v197, v198) == 2)
        {
          v203 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_1A823F000, v203, OS_LOG_TYPE_DEFAULT, "We're in process of joining, let's keep this around", buf, 2u);
          }
        }

        else
        {
          v204 = self;
          if ((v249 & 1) == 0)
          {
            v205 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(&dword_1A823F000, v205, OS_LOG_TYPE_DEFAULT, "** Posting will load notification", buf, 2u);
            }

            v208 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v206, v207);
            objc_msgSend___mainThreadPostNotificationName_object_(v208, v209, @"__kIMChatRegistryWillLoadNotification", v204);
          }

          v210 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 138412290;
            *(buf + 4) = v202;
            _os_log_impl(&dword_1A823F000, v210, OS_LOG_TYPE_DEFAULT, " => Unregistering chat: %@", buf, 0xCu);
          }

          objc_msgSend__unregisterChat_deleted_(v204, v211, v202, 0);
          v249 = 1;
        }
      }

      v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v195, v197, &v260, v275, 16);
    }

    while (v199);
  }

  v212 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A823F000, v212, OS_LOG_TYPE_DEFAULT, "Done restoring chats", buf, 2u);
  }

  if (v237)
  {
    v258 = 0u;
    v259 = 0u;
    v256 = 0u;
    v257 = 0u;
    v215 = objc_msgSend_cachedChats(self, v213, v214);
    v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(v215, v216, &v256, v274, 16);
    if (v219)
    {
      v220 = *v257;
      do
      {
        for (k = 0; k != v219; ++k)
        {
          if (*v257 != v220)
          {
            objc_enumerationMutation(v215);
          }

          objc_msgSend__endTiming(*(*(&v256 + 1) + 8 * k), v217, v218);
        }

        v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(v215, v217, &v256, v274, 16);
      }

      while (v219);
    }
  }

  objc_msgSend_stopTimingForKey_(v237, v213, @"IMCoreSetup: ChatReconstruction");
  if (v249)
  {
    v223 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A823F000, v223, OS_LOG_TYPE_DEFAULT, "** Posting did load notification", buf, 2u);
    }

    if (isFirstLoad)
    {
      v226 = 0;
    }

    else
    {
      v227 = MEMORY[0x1E695DF20];
      v228 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v224, 1);
      v226 = objc_msgSend_dictionaryWithObjectsAndKeys_(v227, v229, v228, @"__kIMChatRegistryDidLoadIsRefreshKey", 0);
    }

    v230 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v224, v225);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v230, v231, @"__kIMChatRegistryDidLoadNotification", self, v226);
  }

  objc_msgSend_setLoading_(self, v222, 0);
  objc_msgSend_setFirstLoad_(self, v232, 0);
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v255 = v236;
    im_dispatch_after();
  }

  objc_msgSend_setUpInitialCallState(self, v233, v234);

  v235 = *MEMORY[0x1E69E9840];
}

- (void)setupComplete:(BOOL)a3 info:(id)a4
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v84 = "[IMChatRegistry(IMChatRegistry_DaemonIncoming) setupComplete:info:]";
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v9 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  v12 = objc_msgSend_listener(v9, v10, v11);
  v14 = objc_msgSend__stampForContext_(v12, v13, @"DBModificationStamp");

  v15 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v84 = v14;
    _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Noting the modification stamp: %@", buf, 0xCu);
  }

  v18 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v16, v17);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v18, v19, v20);

  if (isUnreadCountRefactorEnabled)
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(v5, v22, *MEMORY[0x1E69A7C18]);
    v24 = MEMORY[0x1E695DF70];
    v27 = objc_msgSend_count(v23, v25, v26);
    v29 = objc_msgSend_arrayWithCapacity_(v24, v28, v27);
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v30 = v23;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v79, v87, 16);
    if (v32)
    {
      v33 = *v80;
      do
      {
        v34 = 0;
        do
        {
          if (*v80 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v79 + 1) + 8 * v34);
          v36 = objc_alloc(MEMORY[0x1E69A8340]);
          v38 = objc_msgSend_initWithDictionary_(v36, v37, v35, v79);
          objc_msgSend_addObject_(v29, v39, v38);

          ++v34;
        }

        while (v32 != v34);
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v40, &v79, v87, 16);
      }

      while (v32);
    }

    v42 = objc_msgSend_objectForKeyedSubscript_(v5, v41, *MEMORY[0x1E69A7C20]);
    v44 = objc_msgSend_objectForKeyedSubscript_(v5, v43, *MEMORY[0x1E69A7C10]);
    if (objc_msgSend_count(v30, v45, v46) || v42 || v44)
    {
      v47 = objc_alloc(MEMORY[0x1E69A8348]);
      isReplacement_fromStamp_toStamp = objc_msgSend_initWithDeletedGUIDs_updatedReports_isReplacement_fromStamp_toStamp_(v47, v48, 0, v29, 1, v42, v44);
      objc_msgSend_unreadCountReportsUpdated_(self, v50, isReplacement_fromStamp_toStamp);
    }
  }

  else
  {
    v29 = objc_msgSend_objectForKey_(v5, v22, *MEMORY[0x1E69A7C08]);
    v53 = objc_msgSend_integerValue(v29, v51, v52);
    objc_msgSend_unreadCountChanged_(self, v54, v53);
  }

  v56 = objc_msgSend_objectForKey_(v5, v55, *MEMORY[0x1E69A7BD0]);
  v59 = objc_msgSend_longLongValue(v56, v57, v58);
  objc_msgSend_lastFailedMessageDateChanged_(self, v60, v59);

  if (IMOSLoggingEnabled())
  {
    v61 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v64 = objc_msgSend_unreadCount(self, v62, v63);
      *buf = 67109120;
      LODWORD(v84) = v64;
      _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, "Unread count is %d", buf, 8u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v65 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      FailedMessageDate = objc_msgSend_lastFailedMessageDate(self, v66, v67);
      *buf = 134217984;
      v84 = FailedMessageDate;
      _os_log_impl(&dword_1A823F000, v65, OS_LOG_TYPE_INFO, "Last failed message date is %lld", buf, 0xCu);
    }
  }

  v69 = IMChatRegistryLogHandle();
  v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v70)
    {
      v73 = objc_msgSend_historyModificationStamp(self, v71, v72);
      *buf = 138412546;
      v84 = v14;
      v85 = 2112;
      v86 = v73;
      _os_log_impl(&dword_1A823F000, v69, OS_LOG_TYPE_DEFAULT, "Updating modification stamp to: %@     old was: %@", buf, 0x16u);
    }

    objc_msgSend_setHistoryModificationStamp_(self, v74, v14);
  }

  else
  {
    if (v70)
    {
      v75 = objc_msgSend_historyModificationStamp(self, v71, v72);
      *buf = 138412290;
      v84 = v75;
      _os_log_impl(&dword_1A823F000, v69, OS_LOG_TYPE_DEFAULT, "No modification stamp to update, old is: %@", buf, 0xCu);
    }
  }

  v76 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v76, OS_LOG_TYPE_DEFAULT, "   history may by out of date at this point, queries will all be non cached", buf, 2u);
  }

  objc_msgSend_setWantsHistoryReload_(self, v77, 1);
  v78 = *MEMORY[0x1E69E9840];
}

- (void)_chatLoadedWithChatIdentifier:(id)a3 chats:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v66 = a3;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = a4;
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v70, v77, 16);
  if (v65)
  {
    v64 = *v71;
    v60 = *MEMORY[0x1E69A6BC0];
    v61 = *MEMORY[0x1E69A6C08];
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v71 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v70 + 1) + 8 * i);
        v9 = objc_msgSend_objectForKey_(v8, v6, @"guid");
        v11 = objc_msgSend_objectForKey_(v8, v10, @"chatIdentifier");
        if (objc_msgSend_isEqualToIgnoringCase_(v11, v12, v66))
        {
          v67 = objc_msgSend_objectForKey_(v8, v13, v61);
          v14 = v8;
          v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v60);
          v19 = objc_msgSend_integerValue(v16, v17, v18);

          if (v19 < 1 || (sub_1A84E3F50(v19, v20, v21)) && objc_msgSend_count(v67, v20, v21))
          {
            sub_1A84E3DF0(v67, v14, buf);
            v22 = *buf;
          }

          else
          {
            v22 = 0;
          }

          if (v22)
          {
            objc_msgSend__checkIfItemIsCorrupt_(self, v24, v22);
          }

          v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v26 = v25;
          v27 = v22 == 0;
          if (!v25)
          {
            v27 = 1;
          }

          if (!v27)
          {
            CFArrayAppendValue(v25, v22);
          }

          buf[0] = 0;
          v69 = 0;
          v28 = sub_1A84E342C(self, v14, v26, 1, buf, &v69);
          v29 = v69;
          objc_msgSend__registerChatDictionary_forChat_isIncoming_newGUID_(self, v30, v14, v28, 0, v29);
          objc_msgSend__updateInfo_forGUID_updatingUnreadCount_(self, v31, v14, v9, 1);
          if (buf[0])
          {
            goto LABEL_35;
          }

          v63 = v22;
          v35 = objc_msgSend__lastMessage(v28, v33, v34);
          v38 = v35;
          if (v35)
          {
            if (objc_msgSend_messageID(v35, v36, v37) && objc_msgSend_messageID(v63, v39, v40))
            {
              v59 = objc_msgSend_time(v63, v39, v40);
              v43 = objc_msgSend_time(v38, v41, v42);
              v58 = objc_msgSend_compare_(v59, v44, v43) == 1;

              if (!v58)
              {
                goto LABEL_35;
              }

              goto LABEL_34;
            }

            if (objc_msgSend_messageID(v38, v39, v40) || !objc_msgSend_messageID(v63, v45, v46))
            {
              if (objc_msgSend_messageID(v38, v45, v46))
              {
                objc_msgSend_messageID(v63, v47, v48);
              }

              goto LABEL_35;
            }
          }

LABEL_34:
          objc_msgSend__insertHistoricalMessages_queryID_isRefresh_isHistoryQuery_(v28, v32, v26, @"Reconstruction", 0, 0);
LABEL_35:
          v49 = objc_msgSend__winningJoinStateForExistingChat_incomingDictionary_(self, v32, v28, v14);
          objc_msgSend__setJoinState_(v28, v50, v49);

          goto LABEL_36;
        }

        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v66;
            v75 = 2112;
            v76 = v11;
            _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "We got back up the wrong chat. Expected %@, got %@", buf, 0x16u);
          }
        }

LABEL_36:
      }

      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v70, v77, 16);
    }

    while (v65);
  }

  v53 = objc_msgSend_chatsBeingLoadedMap(self, v51, v52);
  objc_msgSend_removeObjectForKey_(v53, v54, v66);

  objc_msgSend_setLoading_(self, v55, 0);
  objc_msgSend_setFirstLoad_(self, v56, 0);

  v57 = *MEMORY[0x1E69E9840];
}

- (void)_previouslyBlackholedChatLoadedWithHandleIDs:(id)a3 chat:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  v10 = objc_msgSend_initWithArray_(v8, v9, v6);
  v12 = objc_msgSend_objectForKey_(v7, v11, @"participants");
  v13 = objc_alloc(MEMORY[0x1E695DFA8]);
  v16 = objc_msgSend_count(v12, v14, v15);
  v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1A83C4578;
  v39[3] = &unk_1E78133D0;
  v19 = v18;
  v40 = v19;
  objc_msgSend_enumerateObjectsUsingBlock_(v12, v20, v39);
  v21 = MEMORY[0x1E696AEC0];
  v24 = objc_msgSend_hash(v10, v22, v23);
  v26 = objc_msgSend_stringWithFormat_(v21, v25, @"%lu", v24);
  if (objc_msgSend_isEqualToSet_(v19, v27, v10))
  {
    v41 = v7;
    v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, &v41, 1);
    objc_msgSend__chatLoadedWithChatIdentifier_chats_(self, v30, v26, v29);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v43 = v10;
        v44 = 2112;
        v45 = v19;
        _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "We got back up the wrong chat. Expected %@, got %@", buf, 0x16u);
      }
    }

    v34 = objc_msgSend_chatsBeingLoadedMap(self, v31, v32);
    objc_msgSend_removeObjectForKey_(v34, v35, v26);

    objc_msgSend_setLoading_(self, v36, 0);
    objc_msgSend_setFirstLoad_(self, v37, 0);
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)chatLoadedWithChatIdentifier:(id)a3 chats:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v12 = (*MEMORY[0x1E69A6258] | *MEMORY[0x1E69A6298] | *MEMORY[0x1E69A6260]) & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0);

  if (v12)
  {
    objc_msgSend__chatLoadedWithChatIdentifier_chats_(self, v13, v6, v7);
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Bailing out of handle chatLoadedWithChatIdentifier due to kFZListenerCapOnDemandChatRegistry cap not being present", v15, 2u);
    }
  }
}

- (void)previouslyBlackholedChatLoadedWithChatIdentifier:(id)a3 chats:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v12 = (*MEMORY[0x1E69A6258] | *MEMORY[0x1E69A6298] | *MEMORY[0x1E69A6260]) & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0);

  if (v12)
  {
    objc_msgSend__chatLoadedWithChatIdentifier_chats_(self, v13, v6, v7);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__kIMChatPreviouslyBlackholedChatHasBeenLoaded", 0, 0, 1u);
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Bailing out of handle chatLoadedWithChatIdentifier due to kFZListenerCapOnDemandChatRegistry cap not being present", v16, 2u);
    }
  }
}

- (void)previouslyBlackholedChatLoadedWithHandleIDs:(id)a3 chat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v12 = *MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0);

  if (v12)
  {
    objc_msgSend__previouslyBlackholedChatLoadedWithHandleIDs_chat_(self, v13, v6, v7);
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Bailing out of handle chatLoadedWithChatIdentifier due to kFZListenerCapChats cap not being present", v15, 2u);
    }
  }
}

- (id)_participantsForChatDictionary:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"accountID");
  v8 = objc_msgSend_sharedInstance(IMAccountController, v6, v7);
  v39 = v5;
  v10 = objc_msgSend_accountForUniqueID_(v8, v9, v5);

  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v40 = v3;
  obj = objc_msgSend_objectForKeyedSubscript_(v3, v11, @"participants");
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v47, v59, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v48;
    v17 = *MEMORY[0x1E69A6310];
    v45 = *MEMORY[0x1E69A62E8];
    v46 = *MEMORY[0x1E69A6390];
    v44 = *MEMORY[0x1E69A6350];
    do
    {
      v18 = 0;
      v41 = v15;
      do
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v47 + 1) + 8 * v18);
        v20 = objc_msgSend_objectForKeyedSubscript_(v19, v14, v17);
        v22 = objc_msgSend_objectForKeyedSubscript_(v19, v21, v46);
        v24 = objc_msgSend_objectForKeyedSubscript_(v19, v23, v45);
        v26 = objc_msgSend_objectForKeyedSubscript_(v19, v25, v44);
        v28 = objc_msgSend_imHandleWithID_alreadyCanonical_(v10, v27, v20, 1);
        v30 = v28;
        if (v28)
        {
          objc_msgSend_setPersonCentricID_(v28, v29, v26);
          objc_msgSend_addObject_(v43, v31, v30);
          objc_msgSend__setOriginalID_countryCode_updateSiblings_(v30, v32, v22, v24, 1);
        }

        else
        {
          v33 = v17;
          v34 = v16;
          v35 = v10;
          v36 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v52 = v20;
            v53 = 2112;
            v54 = v22;
            v55 = 2112;
            v56 = v24;
            v57 = 2112;
            v58 = v26;
            _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_DEFAULT, "Failed to find handle for participant id: %@ unformatted: %@ countryCode: %@ personCentricID: %@", buf, 0x2Au);
          }

          v10 = v35;
          v16 = v34;
          v17 = v33;
          v15 = v41;
        }

        ++v18;
      }

      while (v15 != v18);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v47, v59, 16);
    }

    while (v15);
  }

  v37 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)_cachedChatForChatDictionary:(id)a3 participants:(id)a4 participantHash:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = objc_msgSend_objectForKeyedSubscript_(v8, v11, @"style");
  v15 = objc_msgSend_intValue(v12, v13, v14);

  v17 = objc_msgSend_objectForKeyedSubscript_(v8, v16, @"guid");
  v19 = objc_msgSend__cachedChatWithGUID_(self, v18, v17);

  if (!v19)
  {
    switch(v15)
    {
      case '#':
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            LOWORD(v29[0]) = 0;
            _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Room style chats are no longer supported", v29, 2u);
          }
        }

        v24 = objc_msgSend_objectForKeyedSubscript_(v8, v22, @"roomName");
        v19 = objc_msgSend__cachedChatWithIdentifier_style_(self, v25, v24, 35);

        break;
      case '+':
        v21 = objc_msgSend__cachedGroupChatForGroupChatDictionary_participants_participantHash_(self, v20, v8, v9, v10);
        goto LABEL_7;
      case '-':
        v21 = objc_msgSend__cachedOneToOneChatForChatDictionary_participants_participantHash_(self, v20, v8, v9, v10);
LABEL_7:
        v19 = v21;
        break;
      default:
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v29[0] = 67109120;
            v29[1] = v15;
            _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Unknown chat style %d", v29, 8u);
          }
        }

        v19 = 0;
        break;
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_cachedOneToOneChatForChatDictionary:(id)a3 participants:(id)a4 participantHash:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v10 = objc_msgSend_objectForKeyedSubscript_(v7, v9, *MEMORY[0x1E69A6C68]);
  if (objc_msgSend_count(v8, v11, v12) != 1)
  {
    v15 = IMChatRegistryLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      v20 = 0;
      goto LABEL_14;
    }

    v20 = objc_msgSend___im_copyChatDictionaryWithRedactedMessageContent(v7, v22, v23);
    v32 = 138412546;
    v33 = v8;
    v34 = 2112;
    v35 = v20;
    _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Chat has 1-1 chat style but incorrect count of participants: %@ dictionary: %@", &v32, 0x16u);
LABEL_12:

    goto LABEL_13;
  }

  v15 = objc_msgSend_lastObject(v8, v13, v14);
  v17 = objc_msgSend__cachedChatWithHandle_(self, v16, v15);
  if (v17)
  {
    v20 = v17;
    v21 = objc_msgSend_chatStyle(v17, v18, v19);
  }

  else
  {
    v20 = objc_msgSend__cachedChatWithPersonID_(self, v18, v10);
    if (!v20)
    {
      goto LABEL_14;
    }

    v21 = objc_msgSend_chatStyle(v20, v24, v25);
  }

  if (v21 != 45)
  {
    v26 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_msgSend___im_copyChatDictionaryWithRedactedMessageContent(v7, v27, v28);
      v32 = 138413058;
      v33 = v15;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v20;
      v38 = 2112;
      v39 = v29;
      _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Found chat with handle %@ (pcID: %@) but rejecting as style is not instant message style, chat: %@ dictionary: %@", &v32, 0x2Au);
    }

    goto LABEL_12;
  }

LABEL_14:

  v30 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_cachedGroupChatForGroupChatDictionary:(id)a3 participants:(id)a4 participantHash:(id)a5
{
  v228 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v209 = a5;
  v11 = objc_msgSend_objectForKeyedSubscript_(v8, v10, *MEMORY[0x1E69A6B18]);
  v14 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v12, v13);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v14, v15, v16);

  if (isTranscriptSharingEnabled && (objc_msgSend_hasPrefix_(v11, v18, *MEMORY[0x1E69A7DB0]) & 1) != 0)
  {
    v19 = 0;
    goto LABEL_89;
  }

  v203 = v11;
  v20 = objc_msgSend_objectForKeyedSubscript_(v8, v18, *MEMORY[0x1E69A6CA8]);
  v201 = objc_msgSend_intValue(v20, v21, v22);

  v24 = objc_msgSend_objectForKeyedSubscript_(v8, v23, *MEMORY[0x1E69A6B78]);
  v26 = objc_msgSend_objectForKeyedSubscript_(v8, v25, *MEMORY[0x1E69A6B48]);
  v205 = objc_msgSend_objectForKeyedSubscript_(v8, v27, *MEMORY[0x1E69A6C68]);
  v204 = objc_msgSend_objectForKeyedSubscript_(v8, v28, *MEMORY[0x1E69A6C88]);
  v30 = objc_msgSend_objectForKeyedSubscript_(v8, v29, *MEMORY[0x1E69A6AF0]);
  v33 = objc_msgSend_sharedInstance(IMAccountController, v31, v32);
  v200 = v30;
  v208 = objc_msgSend_accountForUniqueID_(v33, v34, v30);

  v202 = v24;
  v36 = objc_msgSend__cachedChatWithGroupID_(self, v35, v24);
  v197 = v36 != 0;
  v206 = v36;
  v207 = v26;
  if (!v36)
  {
    goto LABEL_24;
  }

  v39 = v36;
  v40 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_msgSend_guid(v39, v41, v42);
    v45 = objc_msgSend_displayName(v39, v43, v44);
    v48 = objc_msgSend_personCentricID(v206, v46, v47);
    *buf = 138413314;
    v221 = v30;
    v222 = 2112;
    *v223 = v24;
    *&v223[8] = 2112;
    v224 = v45;
    *v225 = 2112;
    *&v225[2] = v26;
    v226 = 2112;
    v227 = v48;
    _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_DEFAULT, "Found existing candidate chat guid: %@ with groupID: %@ ec displayName %@ displayName %@ existing pcmid %@", buf, 0x34u);

    v39 = v206;
  }

  v51 = objc_msgSend_participants(v39, v49, v50);
  v53 = objc_msgSend__sortedParticipantIDHashForParticipants_(self, v52, v51);

  v195 = v53;
  isEqualToString = objc_msgSend_isEqualToString_(v209, v54, v53);
  v59 = objc_msgSend_length(v26, v55, v56);
  if (v59 || (objc_msgSend_displayName(v39, v57, v58), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend_length(v30, v60, v61)))
  {
    objc_msgSend_displayName(v39, v57, v58);
    v65 = v62 = v26;
    if (v62 == v65)
    {
      v68 = 1;
    }

    else
    {
      v66 = objc_msgSend_displayName(v39, v63, v64);
      v68 = objc_msgSend_isEqualToString_(v62, v67, v66);

      v39 = v206;
    }

    if (v59)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v68 = 1;
  }

LABEL_16:
  v73 = objc_msgSend_personCentricID(v39, v69, v70);
  v198 = v9;
  if (v205 == v73)
  {
    v76 = 1;
  }

  else
  {
    v74 = objc_msgSend_personCentricID(v39, v71, v72);
    v76 = objc_msgSend_isEqualToString_(v205, v75, v74);

    v39 = v206;
  }

  objc_msgSend_chatIdentifier(v39, v77, v78);
  v80 = v79 = v39;
  v82 = objc_msgSend_isEqualToString_(v203, v81, v80);

  v85 = objc_msgSend_service(v208, v83, v84);
  v88 = objc_msgSend_groupsMergeDisplayNames(v85, v86, v87);

  v91 = objc_msgSend_account(v79, v89, v90);
  v94 = objc_msgSend_service(v91, v92, v93);
  v97 = objc_msgSend_groupsMergeDisplayNames(v94, v95, v96);

  v98 = v97 | v88 | v68;
  if (isEqualToString & (v98 & v76 | v82))
  {
    v19 = v79;

    v9 = v198;
    v26 = v207;
    v99 = v79;
    v102 = objc_msgSend_count(v198, v100, v101);
    goto LABEL_65;
  }

  v105 = IMChatRegistryLogHandle();
  v26 = v207;
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v108 = objc_msgSend_guid(v206, v106, v107);
    v110 = objc_msgSend_objectForKeyedSubscript_(v8, v109, @"guid");
    *buf = 138413314;
    v221 = v108;
    v222 = 1024;
    *v223 = isEqualToString;
    *&v223[4] = 1024;
    *&v223[6] = v98 & 1;
    LOWORD(v224) = 1024;
    *(&v224 + 2) = v76;
    HIWORD(v224) = 2112;
    *v225 = v110;
    _os_log_impl(&dword_1A823F000, v105, OS_LOG_TYPE_DEFAULT, "Found candidate chat %@ but rejected matchingParticipantHash: %{BOOL}d matchingDisplayName: %{BOOL}d matchingPersonCentricID: %{BOOL}d dictionary guid: %@", buf, 0x28u);
  }

  v9 = v198;
LABEL_24:
  v111 = objc_msgSend_service(v208, v37, v38);
  if ((objc_msgSend_groupsMergeDisplayNames(v111, v112, v113) & 1) == 0)
  {
LABEL_36:

    v99 = v206;
    goto LABEL_37;
  }

  v116 = objc_msgSend_length(v26, v114, v115);

  v99 = v206;
  if (v116)
  {
    v199 = v9;
    v196 = v8;
    objc_msgSend__cachedChatsWithDisplayName_(self, v117, v26);
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v111 = v217 = 0u;
    v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v118, &v214, v219, 16);
    if (v119)
    {
      v122 = v119;
      v123 = *v215;
LABEL_28:
      v124 = 0;
      while (1)
      {
        if (*v215 != v123)
        {
          objc_enumerationMutation(v111);
        }

        v125 = *(*(&v214 + 1) + 8 * v124);
        v126 = objc_msgSend_participants(v125, v120, v121);
        v128 = objc_msgSend__sortedParticipantIDHashForParticipants_(self, v127, v126);

        v131 = objc_msgSend_account(v125, v129, v130);
        v134 = objc_msgSend_serviceName(v131, v132, v133);

        if (objc_msgSend_isEqualToString_(v209, v135, v128))
        {
          v138 = objc_msgSend_serviceName(v208, v136, v137);
          v140 = objc_msgSend_isEqualToString_(v134, v139, v138);

          if (v140)
          {
            break;
          }
        }

        if (v122 == ++v124)
        {
          v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v120, &v214, v219, 16);
          if (v122)
          {
            goto LABEL_28;
          }

          goto LABEL_35;
        }
      }

      v19 = v125;

      v8 = v196;
      v9 = v199;
      v99 = v206;
      v26 = v207;
      if (v19)
      {
        goto LABEL_54;
      }

      goto LABEL_37;
    }

LABEL_35:

    v8 = v196;
    v9 = v199;
    v26 = v207;
    goto LABEL_36;
  }

LABEL_37:
  if (((IMMergeNamedGroups() & 1) != 0 || !v26) && objc_msgSend_count(v9, v103, v104))
  {
    v141 = objc_msgSend_groupParticipantToChatsMap(self, v103, v104);
    v143 = objc_msgSend_objectForKeyedSubscript_(v141, v142, v209);

    if (objc_msgSend_count(v143, v144, v145))
    {
      v146 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v221 = v9;
        _os_log_impl(&dword_1A823F000, v146, OS_LOG_TYPE_DEFAULT, "Existing chats for unnamed group with same participants, participants to match %@", buf, 0xCu);
      }

      v197 = 1;
    }

    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v147 = v143;
    v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v148, &v210, v218, 16);
    if (v149)
    {
      v152 = v149;
      v153 = v9;
      v154 = *v211;
      while (2)
      {
        for (i = 0; i != v152; ++i)
        {
          if (*v211 != v154)
          {
            objc_enumerationMutation(v147);
          }

          v156 = *(*(&v210 + 1) + 8 * i);
          v157 = objc_msgSend_displayName(v156, v150, v151);
          v159 = objc_msgSend_isEqualToString_(v157, v158, v207);

          if (v159)
          {
            v160 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
            {
              v163 = objc_msgSend_participants(v156, v161, v162);
              v166 = objc_msgSend_personCentricID(v156, v164, v165);
              *buf = 138412546;
              v221 = v163;
              v222 = 2112;
              *v223 = v166;
              _os_log_impl(&dword_1A823F000, v160, OS_LOG_TYPE_DEFAULT, "Matched chat with participants %@ pcmid %@", buf, 0x16u);
            }

            v19 = v156;
            goto LABEL_61;
          }
        }

        v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v150, &v210, v218, 16);
        if (v152)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_61:
      v9 = v153;
      v26 = v207;
    }

    else
    {
      v19 = 0;
    }

    v99 = v206;
    if (!v197)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v19 = 0;
LABEL_54:
    if (!v99)
    {
      goto LABEL_67;
    }
  }

  v102 = objc_msgSend_count(v9, v103, v104);
LABEL_65:
  if (v102 > 1 || v201 == 43)
  {
    v167 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
    {
      v170 = objc_msgSend_guid(v19, v168, v169);
      v172 = objc_msgSend_arrayByApplyingSelector_(v9, v171, "ID");
      *buf = 138413314;
      v221 = v170;
      v222 = 2112;
      *v223 = v26;
      *&v223[8] = 2112;
      v224 = v202;
      *v225 = 2112;
      *&v225[2] = v205;
      v226 = 2112;
      v227 = v172;
      _os_log_impl(&dword_1A823F000, v167, OS_LOG_TYPE_DEFAULT, " ==>  chatForChatDictionary info for chat we matched guid %@ displayName %@ groupID: %@ pcmid %@ participants %@", buf, 0x34u);
    }

    if (v19)
    {
      goto LABEL_88;
    }

    goto LABEL_72;
  }

LABEL_67:
  if (!v19)
  {
LABEL_72:
    v173 = objc_msgSend_serviceName(v208, v103, v104);
    v174 = IMCopyAnyServiceGUIDForChat();
    if (IMAdditionalChatRegistryLoggingEnabled())
    {
      v176 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v221 = v173;
        v222 = 2112;
        *v223 = v204;
        *&v223[8] = 2112;
        v224 = v174;
        _os_log_impl(&dword_1A823F000, v176, OS_LOG_TYPE_DEFAULT, "Looking up chat based on service name [%@] and roomName [%@] [%@]", buf, 0x20u);
      }
    }

    v19 = objc_msgSend__cachedChatWithGUID_(self, v175, v174);
    v179 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v177, v178);
    isOneChatEnabled = objc_msgSend_isOneChatEnabled(v179, v180, v181);

    if ((isOneChatEnabled & 1) == 0 && !v19)
    {
      v184 = MEMORY[0x1E69A7AE0];
      v185 = objc_msgSend_isEqualToString_(v173, v183, *MEMORY[0x1E69A7AE0]);
      v186 = MEMORY[0x1E69A7AF0];
      if (!v185)
      {
        v186 = v184;
      }

      v187 = *v186;
      v188 = IMCopyGUIDForChat();

      v19 = objc_msgSend__cachedChatWithGUID_(self, v189, v188);
      v174 = v188;
    }

    if (v26)
    {
      if (IMAdditionalChatRegistryLoggingEnabled())
      {
        v191 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v221 = v26;
          _os_log_impl(&dword_1A823F000, v191, OS_LOG_TYPE_DEFAULT, "Updating chat's display name:%@", buf, 0xCu);
        }
      }

      objc_msgSend__updateDisplayName_(v19, v190, v26);
    }

    v99 = v206;
  }

LABEL_88:

  v11 = v203;
LABEL_89:

  v192 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)movedMessageGUIDsToRecentlyDeleted:(id)a3 forChatWithGUID:(id)a4 queryID:(id)a5 deletionDate:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = v12;
    _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: moved messages to recently deleted for query: %@", &v28, 0xCu);
  }

  if (!v12)
  {
    goto LABEL_5;
  }

  v17 = objc_msgSend_daemonQueryController(self, v15, v16);
  v20 = objc_msgSend_queries(v17, v18, v19);
  v22 = objc_msgSend_objectForKey_(v20, v21, v12);

  v25 = objc_msgSend_daemonQueryController(self, v23, v24);
  objc_msgSend_completeQuery_(v25, v26, v12);

  if (!v22)
  {
LABEL_5:
    objc_msgSend__daemonMovedMessagesWithGUIDsToRecentlyDeleted_chatGUID_deleteDate_(self, v15, v10, v11, v13);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)movedMessagesToRecentlyDeletedForChatsWithGUIDs:(id)a3 queryID:(id)a4 deletionDate:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v9;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: moved messages from chats to recently deleted for query: %@", buf, 0xCu);
  }

  if (!v9)
  {
    goto LABEL_5;
  }

  v14 = objc_msgSend_daemonQueryController(self, v12, v13);
  v17 = objc_msgSend_queries(v14, v15, v16);
  v19 = objc_msgSend_objectForKey_(v17, v18, v9);

  v22 = objc_msgSend_daemonQueryController(self, v20, v21);
  objc_msgSend_completeQuery_(v22, v23, v9);

  if (!v19)
  {
LABEL_5:
    v24 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13);
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = sub_1A83C6738;
    v34 = &unk_1E7811580;
    v35 = self;
    v36 = v24;
    v25 = v24;
    objc_msgSend_enumerateObjectsUsingBlock_(v8, v26, &v31);
    objc_msgSend__daemonMovedChatsToRecentlyDeleted_deletionDate_(self, v27, v25, v10, v31, v32, v33, v34, v35);
  }

  v28 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
  objc_msgSend___mainThreadPostNotificationName_object_(v28, v29, @"__kIMChatRegistryDidMoveMessagesInChatsToRecentlyDeletedNotification", v8);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_daemonMovedMessagesWithGUIDsToRecentlyDeleted:(id)a3 chatGUID:(id)a4 deleteDate:(id)a5
{
  v7 = a4;
  v8 = a3;
  objc_msgSend_updateRecoverableMessagesMetadataSynchronously_completionHandler_(self, v9, 0, 0);
  v12 = objc_msgSend_sharedRegistry(IMChatRegistry, v10, v11);
  v15 = objc_msgSend_existingChatWithGUID_(v12, v13, v7);

  objc_msgSend_handleDaemonDidDeleteMessageGUIDs_(v15, v14, v8);
}

- (void)_daemonMovedChatsToRecentlyDeleted:(id)a3 deletionDate:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A83C68D4;
  v8[3] = &unk_1E7811238;
  v9 = v5;
  v6 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(a3, v7, v8);
}

- (void)recoveredMessagesWithChatGUIDs:(id)a3 queryID:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v7;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: recovered messages for query: %@", buf, 0xCu);
  }

  if (!v7)
  {
    goto LABEL_5;
  }

  v11 = objc_msgSend_daemonQueryController(self, v9, v10);
  v14 = objc_msgSend_queries(v11, v12, v13);
  v16 = objc_msgSend_objectForKey_(v14, v15, v7);

  v19 = objc_msgSend_daemonQueryController(self, v17, v18);
  objc_msgSend_completeQuery_(v19, v20, v7);

  if (!v16)
  {
LABEL_5:
    v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10);
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = sub_1A83C6B10;
    v29 = &unk_1E7811580;
    v30 = self;
    v31 = v21;
    v22 = v21;
    objc_msgSend_enumerateObjectsUsingBlock_(v6, v23, &v26);
    objc_msgSend__completedRecoveringChatsFromRecentlyDeleted_(self, v24, v22, v26, v27, v28, v29, v30);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)loadedRecoverableMessagesMetadata:(id)a3 queryID:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v7;
    v22 = 1024;
    v23 = objc_msgSend_count(v6, v9, v10) != 0;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: Loaded recoverableMessagesMetadata for query: %@, hasRecoverableMessages: %{BOOL}d", buf, 0x12u);
  }

  v13 = objc_msgSend_daemonQueryController(self, v11, v12);
  v18 = @"recoverableMessagesMetadata";
  v19 = v6;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, &v19, &v18, 1);
  objc_msgSend_completeQuery_userInfo_(v13, v16, v7, v15);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Fully deleted chats with GUIDs: %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend__unregisterChatWithGUID_deleted_(self, v9, *(*(&v14 + 1) + 8 * v12++), 1, v14);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v14, v18, 16);
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)a3 queryID:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: permanently deleted messages in recently deleted from chats for query: %@", &v15, 0xCu);
  }

  objc_msgSend_permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs_(self, v9, v7);
  v12 = objc_msgSend_daemonQueryController(self, v10, v11);
  objc_msgSend_completeQuery_(v12, v13, v6);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:(id)a3 deletedChatGUIDs:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend__unregisterChatWithGUID_deleted_(self, v10, *(*(&v20 + 1) + 8 * v13++), 1);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
    }

    while (v11);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A83C7114;
  v19[3] = &unk_1E7810C68;
  v19[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(v6, v10, v19);
  v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
  objc_msgSend___mainThreadPostNotificationName_object_(v16, v17, @"__kIMChatRegistryDidPermanentlyDeleteRecoverableMessagesInChatsNotification", v6);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs:(id)a3
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A83C7230;
  v9[3] = &unk_1E7810C68;
  v9[4] = self;
  v3 = a3;
  objc_msgSend_enumerateObjectsUsingBlock_(v3, v4, v9);
  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend___mainThreadPostNotificationName_object_(v7, v8, @"__kIMChatRegistryDidRecoverMessagesInChatsNotification", v3);
}

- (void)chat:(id)a3 lastMessageTimeStampOnLoadUpdated:(double)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v9, v10, a4);
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Recently Deleted | IMChat: %@, updated last message timestamp on load: %@", &v17, 0x16u);
    }
  }

  v12 = objc_msgSend_sharedRegistry(IMChatRegistry, v6, v7);
  v14 = objc_msgSend_existingChatWithGUID_(v12, v13, v5);

  objc_msgSend_setLastMessageTimeStampOnLoad_(v14, v15, a4);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)serviceSwitchRequestReceivedForChatWithIdentifier:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_sharedRegistry(IMChatRegistry, v4, v5);
  v13 = objc_msgSend__cachedChatWithIdentifier_(v6, v7, v3);

  if (v13)
  {
    objc_msgSend_setServiceSwitchRequested_(v13, v8, 1);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v11, v12, @"__kIMChatServiceSwitchRequestedNotification", v13, 0);
  }
}

- (void)capabilitiesUpdatedForHandle:(id)a3
{
  v3 = a3;
  v4 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "capabilitiesUpdatedForHandle: Posting notification", v9, 2u);
  }

  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend___mainThreadPostNotificationName_object_(v7, v8, @"__kIMChatHandleLazuliCapabilitiesUpdatedNotification", v3);
}

- (int64_t)_winningJoinStateForExistingChat:(id)a3 incomingDictionary:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v8 = objc_msgSend_valueForKey_(v6, v7, *MEMORY[0x1E69A6BE0]);
  v11 = objc_msgSend_intValue(v8, v9, v10);

  v14 = objc_msgSend_joinState(v5, v12, v13);
  if (v14 == v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v14;
    v17 = objc_msgSend_objectForKeyedSubscript_(v6, v15, *MEMORY[0x1E69A6C98]);
    v19 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v18, v17);
    v22 = objc_msgSend_supportsMutatingGroupMembers(v19, v20, v21);

    if (v22)
    {
      v16 = v11;
    }

    else
    {
      v25 = objc_msgSend_guid(v5, v23, v24);
      IMComponentsFromChatGUID();
      v26 = 0;

      v28 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v27, v26);
      v31 = objc_msgSend_supportsMutatingGroupMembers(v28, v29, v30);

      if (v31)
      {
        v33 = objc_msgSend_objectForKeyedSubscript_(v6, v32, *MEMORY[0x1E69A6B70]);
        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v37 = objc_msgSend_guid(v5, v35, v36);
            *buf = 138413058;
            v41 = v37;
            v42 = 2048;
            v43 = v16;
            v44 = 2112;
            v45 = v33;
            v46 = 2048;
            v47 = v11;
            _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Join state inconsistency detected. Existing chat %@ join state %lu incoming chat %@ join state %lu", buf, 0x2Au);
          }
        }
      }

      else
      {
        v16 = v11;
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)messagesURLWithChat:(id)a3 orHandles:(id)a4 withMessageText:(id)a5
{
  v132 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v11 = a5;
  if (v7)
  {
    v12 = objc_msgSend_account(v7, v9, v10);
    v15 = objc_msgSend_service(v12, v13, v14);
    v18 = objc_msgSend_shortName(v15, v16, v17);

    if (objc_msgSend_chatStyle(v7, v19, v20) == 45)
    {
      v23 = objc_msgSend_recipient(v7, v21, v22);
      v26 = v23;
      if (v23)
      {
        v27 = MEMORY[0x1E695DEC8];
        v28 = objc_msgSend_ID(v23, v24, v25);
        v31 = objc_msgSend_URLPathAllowedCharacterSet(MEMORY[0x1E696AB08], v29, v30);
        v33 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v28, v32, v31);

        v35 = objc_msgSend_arrayWithObject_(v27, v34, v33);

        v36 = 0;
      }

      else
      {
        v36 = 0;
        v35 = 0;
      }
    }

    else
    {
      v36 = objc_msgSend_groupID(v7, v21, v22);
      objc_msgSend_participants(v7, v49, v50);
      v35 = 0;
      v8 = v26 = v8;
    }

    v48 = v18;
  }

  else
  {
    if (!objc_msgSend_count(v8, v9, v10))
    {
      v51 = 0;
      goto LABEL_34;
    }

    v26 = objc_msgSend_firstObject(v8, v37, v38);
    v41 = objc_msgSend_account(v26, v39, v40);
    v44 = objc_msgSend_service(v41, v42, v43);
    v47 = objc_msgSend_shortName(v44, v45, v46);

    v48 = v47;
    v36 = 0;
    v35 = 0;
  }

  v126 = v36;
  if (objc_msgSend_count(v35, v52, v53) || !objc_msgSend_count(v8, v54, v55))
  {
    v56 = v35;
  }

  else
  {
    v123 = v11;
    v125 = v7;
    v59 = MEMORY[0x1E695DF70];
    v60 = objc_msgSend_count(v8, v57, v58);
    v56 = objc_msgSend_arrayWithCapacity_(v59, v61, v60);
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v124 = v8;
    v62 = v8;
    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v127, v131, 16);
    if (v64)
    {
      v67 = v64;
      v68 = *v128;
      do
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v128 != v68)
          {
            objc_enumerationMutation(v62);
          }

          v70 = objc_msgSend_ID(*(*(&v127 + 1) + 8 * i), v65, v66);
          v73 = objc_msgSend_URLPathAllowedCharacterSet(MEMORY[0x1E696AB08], v71, v72);
          v75 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v70, v74, v73);

          objc_msgSend_addObject_(v56, v76, v75);
        }

        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v65, &v127, v131, 16);
      }

      while (v67);
    }

    v8 = v124;
    v7 = v125;
    v11 = v123;
    v36 = v126;
  }

  v77 = objc_alloc(MEMORY[0x1E696AD60]);
  v81 = objc_msgSend_initWithFormat_(v77, v78, @"messages://open?service=%@", v48);
  v82 = v11;
  if (v36)
  {
    v83 = MEMORY[0x1E696AB08];
    v84 = v36;
    v87 = objc_msgSend_URLPathAllowedCharacterSet(v83, v85, v86);
    v89 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v84, v88, v87);

    v11 = v82;
    objc_msgSend_appendFormat_(v81, v90, @"&groupid=%@", v89);
  }

  v91 = objc_msgSend_displayName(v7, v79, v80);
  if (objc_msgSend_length(v91, v92, v93))
  {
    v96 = MEMORY[0x1E696AB08];
    v97 = v91;
    v100 = objc_msgSend_URLPathAllowedCharacterSet(v96, v98, v99);
    v102 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v97, v101, v100);

    v11 = v82;
    objc_msgSend_appendFormat_(v81, v103, @"&displayname=%@", v102);
  }

  if (objc_msgSend_length(v11, v94, v95))
  {
    v106 = MEMORY[0x1E696AB08];
    v107 = v11;
    v110 = objc_msgSend_URLPathAllowedCharacterSet(v106, v108, v109);
    v112 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v107, v111, v110);

    v11 = v82;
    objc_msgSend_appendFormat_(v81, v113, @"&body=%@", v112);
  }

  if (objc_msgSend_count(v56, v104, v105) >= 2)
  {
    v116 = objc_msgSend_componentsJoinedByString_(v56, v114, @",");
    objc_msgSend_appendFormat_(v81, v117, @"&recipients=%@", v116);
LABEL_32:

    goto LABEL_33;
  }

  if (objc_msgSend_count(v56, v114, v115) == 1)
  {
    v116 = objc_msgSend_firstObject(v56, v118, v119);
    objc_msgSend_appendFormat_(v81, v120, @"&recipient=%@", v116);
    goto LABEL_32;
  }

LABEL_33:
  v51 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v118, v81);

LABEL_34:
  v121 = *MEMORY[0x1E69E9840];

  return v51;
}

- (id)messagesURLWithChat:(id)a3
{
  v3 = MEMORY[0x1E696AD60];
  v4 = a3;
  v5 = [v3 alloc];
  v7 = objc_msgSend_initWithString_(v5, v6, @"messages://open?");
  v10 = objc_msgSend_chatIdentifier(v4, v8, v9);

  v13 = objc_msgSend_URLPathAllowedCharacterSet(MEMORY[0x1E696AB08], v11, v12);
  v15 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v10, v14, v13);

  objc_msgSend_appendFormat_(v7, v16, @"groupid=%@", v15);
  v18 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v17, v7);

  return v18;
}

- (id)messagesURLWithMessageGUID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = objc_msgSend_initWithString_(v4, v5, @"messages://open?");
  v7 = MEMORY[0x1E696AB08];
  v8 = v3;
  v11 = objc_msgSend_URLPathAllowedCharacterSet(v7, v9, v10);
  v13 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v8, v12, v11);

  objc_msgSend_appendFormat_(v6, v14, @"message-guid=%@", v13);
  v16 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v15, v6);

  return v16;
}

- (id)chatForURL:(id)a3 outMessageText:(id *)a4 outRecipientIDs:(id *)a5 outService:(id *)a6 outMessageGUID:(id *)a7 presentOverlay:(BOOL *)a8 outSIMID:(id *)a9
{
  v146 = *MEMORY[0x1E69E9840];
  v136 = a3;
  v17 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14);
  if (a7)
  {
    *a7 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  v18 = objc_msgSend_resourceSpecifier(v136, v15, v16);
  if (objc_msgSend_rangeOfString_(v18, v19, @"open?groupid") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(v18, v20, @"open?address") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(v18, v21, @"open?addresses") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(v18, v22, @"open?message-guid") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(v18, v23, @"open?recipients") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(v18, v24, @"open?recipient") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = v18;
LABEL_27:
    v129 = v18;

    goto LABEL_28;
  }

  v26 = objc_msgSend_rangeOfString_(v18, v25, @"open?service");

  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = objc_msgSend_scheme(v136, v27, v28);
    v30 = v29;
    v31 = @"sms";
    if (v29)
    {
      v31 = v29;
    }

    v32 = v31;

    v33 = v18;
    if (objc_msgSend_hasPrefix_(v18, v34, @"//"))
    {
      v33 = objc_msgSend_substringFromIndex_(v18, v35, 2);
    }

    v36 = v33;
    v38 = objc_msgSend_rangeOfString_(v36, v37, @"?");
    v40 = 0x1E696A000;
    v128 = v36;
    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = &stru_1F1B76F98;
      v42 = v36;
    }

    else
    {
      v116 = v38;
      v135 = objc_msgSend_substringToIndex_(v36, v39, v38);

      v117 = MEMORY[0x1E696AEC0];
      v119 = objc_msgSend_substringFromIndex_(v36, v118, v116 + 1);
      v41 = objc_msgSend_stringWithFormat_(v117, v120, @"&%@", v119);

      v42 = v135;
      v40 = 0x1E696A000uLL;
    }

    v121 = MEMORY[0x1E695DFF8];
    v122 = v42;
    v123 = objc_msgSend_stringWithFormat_(*(v40 + 3776), v39, @"%@://open?address=%@%@", v32, v42, v41);
    v125 = objc_msgSend_URLWithString_(v121, v124, v123);

    v136 = v125;
    v18 = v128;
    goto LABEL_27;
  }

  v129 = v18;
LABEL_28:
  v43 = objc_msgSend_absoluteString(v136, v27, v28);
  v44 = ExtractURLQueries();

  v46 = objc_msgSend_objectForKey_(v17, v45, @"body");
  *&v133 = objc_msgSend_objectForKey_(v17, v47, @"bot-name");
  *(&v133 + 1) = objc_msgSend_objectForKey_(v17, v48, @"service_id");
  if (v133 != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "> Incoming messagesURL is detected as a chatbot based on its query parameters.", buf, 2u);
      }
    }

    v52 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v46, v50, @"+", @"%20");

    v46 = objc_msgSend_stringByRemovingPercentEncoding(v52, v53, v54);
  }

  if (a4 && v46)
  {
    v55 = v46;
    *a4 = v46;
  }

  v131 = objc_msgSend_objectForKey_(v17, v49, @"groupid");
  v132 = objc_msgSend_objectForKey_(v17, v56, @"chatguid");
  v58 = objc_msgSend_objectForKey_(v17, v57, @"recipient");
  v60 = objc_msgSend_objectForKeyedSubscript_(v17, v59, @"best-match");
  v126 = objc_msgSend_BOOLValue(v60, v61, v62);

  v134 = objc_msgSend_objectForKey_(v17, v63, @"simid");
  if (v134)
  {
    v66 = a9 != 0;
  }

  else
  {
    v66 = 0;
  }

  if (v66)
  {
    *a9 = objc_msgSend_copy(v134, v64, v65);
  }

  if (!v58)
  {
    if (*(&v133 + 1))
    {
      v67 = *(&v133 + 1);
    }

    else
    {
      v67 = objc_msgSend_objectForKey_(v17, v64, @"address");
    }

    v58 = v67;
  }

  v69 = objc_msgSend_objectForKey_(v17, v64, @"recipients");
  if (!v69)
  {
    v69 = objc_msgSend_objectForKey_(v17, v68, @"addresses");
  }

  v70 = objc_msgSend_objectForKey_(v17, v68, @"overlay");
  v71 = v70 != 0;

  if (a8 != 0 && v71)
  {
    *a8 = 1;
  }

  v73 = objc_msgSend_objectForKey_(v17, v72, @"message-guid");
  if (objc_msgSend_length(v73, v74, v75))
  {
    if (a7)
    {
      v76 = v73;
      v77 = 0;
      *a7 = v73;
    }

    else
    {
      v77 = 0;
    }

    goto LABEL_118;
  }

  if (IMOSLoggingEnabled())
  {
    v79 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v143 = v136;
      _os_log_impl(&dword_1A823F000, v79, OS_LOG_TYPE_INFO, "finding chat for URL: %@", buf, 0xCu);
    }
  }

  if (v132)
  {
    if (IMOSLoggingEnabled())
    {
      v81 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v143 = v132;
        _os_log_impl(&dword_1A823F000, v81, OS_LOG_TYPE_INFO, "didn't find chat, lets look for it as chatGUID: %@", buf, 0xCu);
      }
    }

    v77 = objc_msgSend_existingChatWithGUID_(self, v80, v132);
    if (v77)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_118;
      }

      v82 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v143 = v77;
        v144 = 2112;
        v145 = v132;
        _os_log_impl(&dword_1A823F000, v82, OS_LOG_TYPE_INFO, "    => found chat: %@ for chatGUID: %@", buf, 0x16u);
      }

      goto LABEL_67;
    }
  }

  if (v131)
  {
    v77 = objc_msgSend_existingChatWithGroupID_(self, v78, v131);
    if (v77)
    {
      goto LABEL_76;
    }

    if (IMOSLoggingEnabled())
    {
      v84 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v84, OS_LOG_TYPE_INFO, "didn't find chat, lets look for it as a chat identifier", buf, 2u);
      }
    }

    v77 = objc_msgSend_existingChatWithChatIdentifier_(self, v83, v131);
    if (v77)
    {
LABEL_76:
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_118;
      }

      v82 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v143 = v77;
        _os_log_impl(&dword_1A823F000, v82, OS_LOG_TYPE_INFO, "    => found chat: %@", buf, 0xCu);
      }

LABEL_67:

      goto LABEL_118;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v87 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v87, OS_LOG_TYPE_INFO, "didn't find it, going through participant logic and others", buf, 2u);
    }
  }

  if (v58)
  {
    v88 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v85, v58);
    v91 = objc_msgSend_count(v88, v89, v90);
  }

  else if (v69)
  {
    v93 = objc_msgSend_array(MEMORY[0x1E695DF70], v85, v86);
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v95 = objc_msgSend_componentsSeparatedByString_(v69, v94, @",");
    v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v137, v141, 16);
    if (v98)
    {
      v99 = *v138;
      do
      {
        for (i = 0; i != v98; ++i)
        {
          if (*v138 != v99)
          {
            objc_enumerationMutation(v95);
          }

          objc_msgSend_addObject_(v93, v97, *(*(&v137 + 1) + 8 * i));
        }

        v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v97, &v137, v141, 16);
      }

      while (v98);
    }

    v88 = v93;
    v91 = objc_msgSend_count(v88, v101, v102);
  }

  else
  {
    v88 = 0;
    v91 = objc_msgSend_count(0, v85, v86);
  }

  if (!v91)
  {
    goto LABEL_114;
  }

  if (a5)
  {
    v103 = v88;
    *a5 = v88;
  }

  if (!v126)
  {
LABEL_114:
    v112 = objc_msgSend_objectForKey_(v17, v92, @"displayname");
    if (((v69 == 0) & ~(v58 != 0)) != 0)
    {
      v77 = 0;
    }

    else
    {
      v113 = objc_msgSend_count(v88, v110, v111) > 1;
      v77 = IMFindExistingChatForAddresses(v88, v112, v113, 1);
    }

    goto LABEL_118;
  }

  if (IMOSLoggingEnabled())
  {
    v105 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v143 = v88;
      _os_log_impl(&dword_1A823F000, v105, OS_LOG_TYPE_INFO, "URL expects best contacts match for handle IDs %@", buf, 0xCu);
    }
  }

  v106 = objc_msgSend__bestChatForHandleIDs_(self, v104, v88);
  v107 = IMOSLoggingEnabled();
  if (!v106)
  {
    if (v107)
    {
      v109 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v143 = v88;
        _os_log_impl(&dword_1A823F000, v109, OS_LOG_TYPE_INFO, "    => didn't find existing chat with contacts from handle IDs %@", buf, 0xCu);
      }
    }

    goto LABEL_114;
  }

  if (v107)
  {
    v108 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v143 = v106;
      _os_log_impl(&dword_1A823F000, v108, OS_LOG_TYPE_INFO, "    => Found chat based on recipientIDs: %@", buf, 0xCu);
    }
  }

  v77 = v106;

LABEL_118:
  v114 = *MEMORY[0x1E69E9840];

  return v77;
}

- (id)_bestChatForHandleIDs:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v26, v34, 16);
  if (v9)
  {
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v7, v8);
        v15 = objc_msgSend_fetchCNContactForHandleWithID_(v13, v14, v12);

        v16 = IMOSLoggingEnabled();
        if (!v15)
        {
          if (v16)
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v31 = v12;
              _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "    => could not find contact for handle %@, not searching for chat by contacts", buf, 0xCu);
            }
          }

          v20 = 0;
          goto LABEL_22;
        }

        if (v16)
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v31 = v15;
            v32 = 2112;
            v33 = v12;
            _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "    => adding contact %@ for handle %@", buf, 0x16u);
          }
        }

        objc_msgSend_addObject_(v4, v17, v15);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v26, v34, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v20 = objc_msgSend_existingChatWithContacts_bestHandles_(self, v19, v4, 0);
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v20;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "    => found best chat with contacts: %@", buf, 0xCu);
    }
  }

LABEL_22:

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_inPersonHandleFromIMHandle:(id)a3 contact:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v8 = objc_msgSend_normalizedID(a3, v6, v7);
  if (!MEMORY[0x1AC56C3C0]())
  {
    if (!IMStringIsEmail())
    {
      v18 = 0;
      v25 = 0;
      goto LABEL_41;
    }

    if (!v5)
    {
      v18 = 0;
      v25 = 1;
      goto LABEL_41;
    }

    v13 = IMNormalizeFormattedString();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = objc_msgSend_emailAddresses(v5, v26, v27);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v28, &v44, v52, 16);
    if (v18)
    {
      v42 = v8;
      v43 = v5;
      v31 = *v45;
      while (2)
      {
        v32 = 0;
        do
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(v14);
          }

          v33 = *(*(&v44 + 1) + 8 * v32);
          v34 = objc_msgSend_value(v33, v29, v30, v42, v43);
          v35 = IMNormalizeFormattedString();

          if (objc_msgSend_isEqual_(v35, v36, v13))
          {
            if (qword_1EB2EA6A0[0] != -1)
            {
              sub_1A84E50B8();
            }

            if (off_1EB2EA698)
            {
              v18 = (off_1EB2EA698)(v33);

              v25 = 1;
LABEL_38:
              v8 = v42;
              v5 = v43;
              goto LABEL_39;
            }
          }

          v32 = v32 + 1;
        }

        while (v18 != v32);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v29, &v44, v52, 16);
        if (v18)
        {
          continue;
        }

        break;
      }

      v8 = v42;
      v5 = v43;
    }

    v25 = 1;
    goto LABEL_39;
  }

  if (!v5)
  {
    v18 = 0;
    v25 = 2;
    goto LABEL_41;
  }

  v9 = objc_alloc(MEMORY[0x1AC56C550](@"CNPhoneNumber", @"Contacts"));
  v13 = objc_msgSend_initWithStringValue_(v9, v10, v8);
  if (v13)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = objc_msgSend_phoneNumbers(v5, v11, v12);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v48, v53, 16);
    if (v18)
    {
      v42 = v8;
      v43 = v5;
      v19 = *v49;
      while (2)
      {
        v20 = 0;
        do
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v48 + 1) + 8 * v20);
          v22 = objc_msgSend_value(v21, v16, v17, v42, v43);
          isLikePhoneNumber = objc_msgSend_isLikePhoneNumber_(v22, v23, v13);

          if (isLikePhoneNumber)
          {
            if (qword_1EB2EA690 != -1)
            {
              sub_1A84E50E0();
            }

            if (off_1EB2EA688)
            {
              v18 = (off_1EB2EA688)(v21);
              v25 = 2;
              goto LABEL_38;
            }
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v48, v53, 16);
        if (v18)
        {
          continue;
        }

        break;
      }

      v8 = v42;
      v5 = v43;
    }

    v25 = 2;
LABEL_39:

    goto LABEL_40;
  }

  v18 = 0;
  v25 = 2;
LABEL_40:

LABEL_41:
  v37 = [qword_1EB2EA040 alloc];
  v39 = objc_msgSend_initWithValue_type_label_(v37, v38, v8, v25, v18);

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)_inPersonNameForContact:(id)a3 imHandle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_normalizedID(v6, v7, v8);
  if (objc_msgSend_isBusiness(v6, v10, v11))
  {
    v14 = MEMORY[0x1E69A7F28];
    v15 = objc_msgSend_ID(v6, v12, v13);
    v17 = objc_msgSend_placeholderNameForBrandURI_(v14, v16, v15);

    v18 = dispatch_semaphore_create(0);
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_1A8259CD0;
    v54 = sub_1A825AF94;
    v55 = 0;
    v21 = objc_msgSend_sharedInstance(IMHandleRegistrar, v19, v20);
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = sub_1A83E540C;
    v47 = &unk_1E7811E08;
    v49 = &v50;
    v22 = v18;
    v48 = v22;
    v24 = objc_msgSend_businessNameForUID_updateHandler_(v21, v23, v9, &v44);

    v27 = objc_msgSend_length(v24, v25, v26, v44, v45, v46, v47);
    v30 = v24;
    if (!v27)
    {
      if ((objc_msgSend_isChatBot(v6, v28, v29) & 1) == 0)
      {
        v33 = dispatch_time(0, 3000000000);
        dispatch_semaphore_wait(v22, v33);
      }

      if (!objc_msgSend_length(v51[5], v31, v32))
      {
        goto LABEL_8;
      }

      v30 = v51[5];
    }

    v34 = v30;

    v17 = v34;
LABEL_8:
    v35 = v17;

    _Block_object_dispose(&v50, 8);
    goto LABEL_16;
  }

  if (v5)
  {
    v36 = objc_msgSend_nickname(v5, v12, v13);
    if (objc_msgSend_length(v36, v37, v38))
    {
      v35 = v36;
      goto LABEL_16;
    }

    v39 = MEMORY[0x1AC56C550](@"CNContactFormatter", @"Contacts");
    v35 = objc_msgSend_stringFromContact_style_(v39, v40, v5, 0);
    if (objc_msgSend_length(v35, v41, v42))
    {

      goto LABEL_16;
    }
  }

  v35 = objc_msgSend_displayID(v6, v12, v13);
LABEL_16:

  return v35;
}

- (id)_inPersonFromIMHandle:(id)a3 isMe:(BOOL)a4
{
  v40[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *MEMORY[0x1AC56C560]("CNContactPhoneNumbersKey", @"Contacts");
  v8 = *MEMORY[0x1AC56C560]("CNContactEmailAddressesKey", @"Contacts");
  v10 = v8;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v40[0] = v8;
    v40[1] = v7;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v40, 2);
    v14 = objc_msgSend_arrayByAddingObjectsFromArray_(MEMORY[0x1E695E0F0], v13, v12);
  }

  v15 = MEMORY[0x1AC56C550](@"CNContactFormatter", @"Contacts");
  if (v15)
  {
    v18 = objc_msgSend_descriptorForRequiredKeysForStyle_(v15, v16, 0);
    v20 = objc_msgSend_arrayByAddingObject_(v14, v19, v18);

    v14 = v20;
  }

  v21 = objc_msgSend_descriptorForUsedKeys(MEMORY[0x1E696ADF0], v16, v17);
  v23 = objc_msgSend_arrayByAddingObject_(v14, v22, v21);

  v25 = objc_msgSend_cnContactWithKeys_(v6, v24, v23);
  v27 = objc_msgSend__inPersonHandleFromIMHandle_contact_(self, v26, v6, v25);
  v29 = objc_msgSend__inPersonNameForContact_imHandle_(self, v28, v25, v6);

  v31 = objc_msgSend_componentsForContact_(MEMORY[0x1E696ADF0], v30, v25);
  v34 = objc_msgSend_identifier(v25, v32, v33);
  v35 = [qword_1EB2EA048 alloc];
  isMe = objc_msgSend_initWithPersonHandle_nameComponents_displayName_image_contactIdentifier_customIdentifier_isMe_(v35, v36, v27, v31, v29, 0, v34, 0, a4);

  v38 = *MEMORY[0x1E69E9840];

  return isMe;
}

- (id)_interactionForMessage:(id)a3 inChat:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (qword_1EB2EA010 != -1)
  {
    sub_1A84E50A4();
  }

  v10 = objc_msgSend_retractedPartIndexes(v6, v7, v8);
  v13 = objc_msgSend_count(v10, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend__unsendMessageInteractionForMessage_inChat_(self, v14, v6, v9);
LABEL_5:
    v17 = v16;
    goto LABEL_14;
  }

  if (objc_msgSend_isFinished(v6, v14, v15) && (objc_msgSend_isTypingMessage(v6, v18, v19) & 1) == 0)
  {
    v22 = objc_msgSend_plainBody(v6, v20, v21);
    if (objc_msgSend_length(v22, v23, v24) || (objc_msgSend_hasInlineAttachments(v6, v25, v26) & 1) != 0)
    {
      v27 = objc_msgSend_associatedMessageType(v6, v25, v26);

      if (!v27)
      {
        v16 = objc_msgSend__sendMessageInteractionForMessage_inChat_(self, v28, v6, v9);
        goto LABEL_5;
      }
    }

    else
    {
    }
  }

  v17 = 0;
LABEL_14:

  return v17;
}

- (id)_sendMessageInteractionForMessage:(id)a3 inChat:(id)a4
{
  v154 = *MEMORY[0x1E69E9840];
  v143 = a3;
  v6 = a4;
  v7 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_guid(v143, v8, v9);
    v13 = objc_msgSend_guid(v6, v11, v12);
    *buf = 138412546;
    v151 = v10;
    v152 = 2112;
    v153 = v13;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Donating send message interaction for message %@ in chat %@", buf, 0x16u);
  }

  v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15);
  v18 = objc_msgSend_participantsWithState_(v6, v17, 16);
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v144, v149, 16);
  if (v20)
  {
    v23 = v20;
    v24 = *v145;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v145 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v26 = objc_msgSend__inPersonFromIMHandle_isMe_(self, v21, *(*(&v144 + 1) + 8 * i), 0);
        objc_msgSend_addObject_(v16, v27, v26);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v144, v149, 16);
    }

    while (v23);
  }

  v28 = objc_msgSend_account(v6, v21, v22);
  v31 = objc_msgSend_service(v28, v29, v30);

  v142 = objc_msgSend_name(v31, v32, v33);
  v36 = objc_msgSend_sender(v143, v34, v35);
  v141 = objc_msgSend__inPersonFromIMHandle_isMe_(self, v37, v36, 1);

  v139 = v31;
  if (objc_msgSend_isGroupChat(v6, v38, v39) && (objc_msgSend_displayName(v6, v40, v41), v42 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend_length(v42, v43, v44), v42, v45))
  {
    v46 = [qword_1EB2EA028 alloc];
    v49 = objc_msgSend_guid(v6, v47, v48);
    v52 = objc_msgSend_displayName(v6, v50, v51);
    v54 = objc_msgSend_initWithVocabularyIdentifier_spokenPhrase_pronunciationHint_(v46, v53, v49, v52, 0);
  }

  else
  {
    v54 = 0;
  }

  v55 = [qword_1EB2EA038 alloc];
  v58 = objc_msgSend_plainBody(v143, v56, v57);
  v61 = objc_msgSend_guid(v6, v59, v60);
  v63 = objc_msgSend_initWithRecipients_content_speakableGroupName_conversationIdentifier_serviceName_sender_(v55, v62, v16, v58, v54, v61, v142, v141);

  objc_msgSend__setLaunchId_(v63, v64, @"com.apple.MobileSMS");
  v67 = objc_msgSend_allChatProperties(v6, v65, v66);
  v69 = objc_msgSend_objectForKey_(v67, v68, *MEMORY[0x1E69A6B80]);

  v72 = objc_msgSend_sharedInstance(IMFileTransferCenter, v70, v71);
  v137 = v69;
  v74 = objc_msgSend_transferForGUID_(v72, v73, v69);
  v77 = objc_msgSend_filename(v74, v75, v76);
  v80 = objc_msgSend_im_lastPathComponent(v77, v78, v79);

  v83 = objc_msgSend_guid(v6, v81, v82);
  v136 = v80;
  v84 = IMSharedHelperExternalLocationForFile();

  if (objc_msgSend_length(v84, v85, v86))
  {
    v88 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v87, v84);
  }

  else
  {
    v88 = 0;
  }

  v134 = v88;
  v135 = v84;
  v140 = v54;
  v90 = objc_msgSend_imageWithURL_(qword_1EB2EA060, v87, v88);
  if (v90)
  {
    objc_msgSend_setImage_forParameterNamed_(v63, v89, v90, @"speakableGroupName");
  }

  v133 = v90;
  v91 = [qword_1EB2EA030 alloc];
  v93 = objc_msgSend_initWithCode_userActivity_(v91, v92, 3, 0);
  v96 = objc_msgSend_guid(v143, v94, v95);
  v99 = objc_msgSend_time(v143, v97, v98);
  v102 = objc_msgSend_guid(v6, v100, v101);
  v103 = [qword_1EB2EA050 alloc];
  v106 = objc_msgSend_plainBody(v143, v104, v105);
  v108 = objc_msgSend_initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName_(v103, v107, v96, v102, v106, v99, v141, v16, v140, 1, v142);

  v148 = v108;
  v110 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v109, &v148, 1);
  objc_msgSend_setSentMessages_(v93, v111, v110);

  v112 = [qword_1EB2EA058 alloc];
  v138 = v63;
  v113 = v63;
  v114 = v93;
  v116 = objc_msgSend_initWithIntent_response_(v112, v115, v113, v93);
  if (IMIsRunningInMessagesComposeViewService())
  {
    v118 = objc_opt_new();
    objc_msgSend__setContextExtensionUUID_(v116, v119, v118);
  }

  objc_msgSend_setIdentifier_(v116, v117, v96);
  objc_msgSend_setGroupIdentifier_(v116, v120, v102);
  if (objc_msgSend_isFromMe(v143, v121, v122))
  {
    objc_msgSend_setDirection_(v116, v123, 1);
  }

  else
  {
    objc_msgSend_setDirection_(v116, v123, 2);
  }

  if (v99)
  {
    v126 = objc_alloc(MEMORY[0x1E696AB80]);
    started = objc_msgSend_initWithStartDate_duration_(v126, v127, v99, 0.0);
    objc_msgSend_setDateInterval_(v116, v129, started);
  }

  if (objc_msgSend_isFinished(v143, v124, v125))
  {
    objc_msgSend_notifyInteractionWithPeople_(IMRemindersIntegration, v130, v16);
  }

  objc_msgSend_setIntentHandlingStatus_(v116, v130, 3);

  v131 = *MEMORY[0x1E69E9840];

  return v116;
}

- (id)_unsendMessageInteractionForMessage:(id)a3 inChat:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_guid(v5, v8, v9);
    v13 = objc_msgSend_guid(v6, v11, v12);
    *buf = 138412546;
    v43 = v10;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Donating unsend message interaction for message %@ in chat %@", buf, 0x16u);
  }

  v16 = objc_msgSend_guid(v5, v14, v15);
  if (objc_msgSend_length(v16, v17, v18))
  {
    v41 = v16;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, &v41, 1);
  }

  else
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  v21 = [qword_1EB2E9218 alloc];
  v23 = objc_msgSend_initWithMessageIdentifiers_(v21, v22, v20);
  objc_msgSend__setLaunchId_(v23, v24, @"com.apple.MobileSMS");
  v25 = [qword_1EB2E9210 alloc];
  v27 = objc_msgSend_initWithCode_userActivity_(v25, v26, 3, 0);
  v28 = [qword_1EB2EA058 alloc];
  v30 = objc_msgSend_initWithIntent_response_(v28, v29, v23, v27);
  v34 = objc_msgSend_dateEdited(v5, v31, v32);
  if (v34)
  {
    v35 = objc_alloc(MEMORY[0x1E696AB80]);
    started = objc_msgSend_initWithStartDate_duration_(v35, v36, v34, 0.0);
    objc_msgSend_setDateInterval_(v30, v38, started);
  }

  objc_msgSend_setIntentHandlingStatus_(v30, v33, 3);

  v39 = *MEMORY[0x1E69E9840];

  return v30;
}

- (void)setUserActivityForChat:(id)a3 message:(id)a4 orHandles:(id)a5
{
  v115 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_msgSend_guid(v8, v12, v13);
    v17 = objc_msgSend_guid(v9, v15, v16);
    *buf = 138412802;
    v110 = v14;
    v111 = 2112;
    v112 = v17;
    v113 = 2112;
    v114 = v10;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Updating user activity with chat: %@ message: %@ handles: %@", buf, 0x20u);
  }

  if (!v8 && !objc_msgSend_count(v10, v18, v19))
  {
    v84 = v9;
    v104 = objc_msgSend_userActivity(self, v18, v19);
    objc_msgSend_invalidate(v104, v105, v106);

    objc_msgSend_setUserActivity_(self, v107, 0);
    goto LABEL_25;
  }

  v20 = objc_msgSend_userActivity(self, v18, v19);

  if (v20)
  {
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E696B090]);
    v25 = objc_msgSend_initWithActivityType_(v23, v24, @"com.apple.Messages");
    objc_msgSend_setUserActivity_(self, v26, v25);

    if (!v8)
    {
LABEL_10:
      v27 = 0;
      v28 = objc_msgSend_length(0, v21, v22);
      goto LABEL_12;
    }
  }

  if (objc_msgSend_length(0, v21, v22))
  {
    goto LABEL_10;
  }

  v27 = objc_msgSend_displayName(v8, v21, v22);
  v28 = objc_msgSend_length(v27, v31, v32);
LABEL_12:
  if (!v28)
  {
    isTextMessageExtensionEnabled = objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v29, v30);
    v35 = objc_msgSend_displayNameWithRawAddress_isSpamFilteringEnabled_(v8, v34, 0, isTextMessageExtensionEnabled);

    v27 = v35;
  }

  v36 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v29, v30);
  v39 = objc_msgSend_lastIncomingFinishedMessageWithTextContent(v8, v37, v38);
  v42 = objc_msgSend_text(v39, v40, v41);
  v45 = objc_msgSend_string(v42, v43, v44);

  if (v45)
  {
    objc_msgSend_setObject_forKey_(v36, v46, v45, @"__kIMChatRegistryUserActivityLastMessageKey");
  }

  v108 = v10;
  v47 = objc_msgSend_messagesURLWithChat_orHandles_withMessageText_(self, v46, v8, v10, 0);
  v50 = v47;
  if (v47)
  {
    v51 = objc_msgSend_absoluteString(v47, v48, v49);
    objc_msgSend_setObject_forKey_(v36, v52, v51, @"__kIMChatRegistryContinuityURLKey");

    v55 = objc_msgSend_userActivity(self, v53, v54);
    v56 = objc_opt_respondsToSelector();

    if (v56)
    {
      v57 = objc_msgSend_userActivity(self, v48, v49);
      v60 = objc_msgSend_absoluteString(v50, v58, v59);
      objc_msgSend_setTargetContentIdentifier_(v57, v61, v60);
    }
  }

  v62 = objc_msgSend_userActivity(self, v48, v49);
  v65 = objc_msgSend_copy(v36, v63, v64);
  objc_msgSend_setUserInfo_(v62, v66, v65);

  v69 = objc_msgSend_userActivity(self, v67, v68);
  objc_msgSend_setTitle_(v69, v70, v27);

  v73 = objc_msgSend_userActivity(self, v71, v72);
  objc_msgSend_setNeedsSave_(v73, v74, 1);

  v78 = objc_msgSend__interactionForMessage_inChat_(self, v75, v9, v8);
  if (v78)
  {
    v79 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v79, OS_LOG_TYPE_DEFAULT, "Donating user activity with interaction", buf, 2u);
    }

    v82 = objc_msgSend_userActivity(self, v80, v81);
    objc_msgSend_setInteraction_(v82, v83, v78);
  }

  else
  {
    if (!objc_msgSend_isFinished(v9, v76, v77))
    {
      v84 = v9;
      v87 = 1;
      goto LABEL_24;
    }

    v82 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v82, OS_LOG_TYPE_DEFAULT, "Setting user activity for sent message, with no interaction", buf, 2u);
    }
  }

  v84 = v9;

  v87 = 0;
LABEL_24:
  v88 = objc_msgSend_userActivity(self, v85, v86);
  objc_msgSend_setEligibleForHandoff_(v88, v89, v87);

  v92 = objc_msgSend_userActivity(self, v90, v91);
  objc_msgSend_setEligibleForSearch_(v92, v93, 0);

  v96 = objc_msgSend_userActivity(self, v94, v95);
  objc_msgSend_setEligibleForPublicIndexing_(v96, v97, 0);

  v100 = objc_msgSend_userActivity(self, v98, v99);
  objc_msgSend_becomeCurrent(v100, v101, v102);

  v10 = v108;
LABEL_25:

  v103 = *MEMORY[0x1E69E9840];
}

@end
@interface IMChatRegistry
+ (BOOL)hasInitializedChatFiltering;
+ (Class)messageClass;
+ (IMChatRegistry)sharedRegistry;
+ (IMChatRegistry)sharedRegistryIfAvailable;
+ (id)performanceLogHandle;
+ (void)setHasInitializedChatFiltering:(BOOL)filtering;
- (BOOL)_hasChat:(id)chat forService:(id)service;
- (BOOL)_nicknameSharingEnabled;
- (BOOL)_shouldShareMeCardForAlwaysAskAudienceWithChat:(id)chat;
- (BOOL)_shouldShareMeCardForContactsOnlyAudienceWithChat:(id)chat;
- (BOOL)_shouldSwitchAccountAddingMessagesToChat:(id)chat messageItems:(id)items removedGUIDs:(id)ds messagesComingFromStorage:(BOOL)storage chatProperties:(id)properties;
- (BOOL)_shouldUpdateChatPropertyByRecencyOnChat:(id)chat incomingDictionary:(id)dictionary;
- (BOOL)_updateAutoDonationBehavior:(int64_t)behavior forChat:(id)chat shouldPostNotification:(BOOL)notification;
- (BOOL)_updateChat:(id)chat chatIdentifierForGroups:(id)groups shouldPostNotification:(BOOL)notification;
- (IMContactStore)contactStore;
- (IMDaemonProtocol)remoteDaemon;
- (IMDaemonQueryController)daemonQueryController;
- (IMUnreadCountController)unreadCountController;
- (NSArray)allExistingChats;
- (NSArray)cachedChats;
- (TUConversationManager)conversationManager;
- (id)_activeTUConversations;
- (id)_bestChatForHandleIDs:(id)ds;
- (id)_cachedChatForChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash;
- (id)_cachedChatWithDisplayName:(id)name;
- (id)_cachedChatWithGUID:(id)d;
- (id)_cachedChatWithGroupID:(id)d;
- (id)_cachedChatWithHandle:(id)handle;
- (id)_cachedChatWithIdentifier:(id)identifier;
- (id)_cachedChatWithIdentifier:(id)identifier style:(unsigned __int8)style;
- (id)_cachedChatWithPersonID:(id)d;
- (id)_cachedChatsWithDisplayName:(id)name;
- (id)_cachedChatsWithMessage:(id)message;
- (id)_cachedChatsWithMessageGUID:(id)d;
- (id)_cachedGroupChatForGroupChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash;
- (id)_cachedOneToOneChatForChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash;
- (id)_chatForIdentifiers:(id)identifiers;
- (id)_chatPredicateForGUIDs:(id)ds;
- (id)_chatsMatchingHandles:(id)handles;
- (id)_chatsMatchingStatusSubscription:(id)subscription;
- (id)_copyMergedChatsPairedArrayFromMergedChatsArray:(id)array;
- (id)_earliestLastMessageDateFromChatDictionaries:(id)dictionaries;
- (id)_eventForMessage:(id)message;
- (id)_existingChatForHandleUsingPersonID:(id)d;
- (id)_existingChatForTUConversation:(id)conversation;
- (id)_existingChatFromSiblingsForHandle:(id)handle;
- (id)_existingChatWithHandle:(id)handle fixChatHandle:(BOOL)chatHandle;
- (id)_existingChatWithIdentifier:(id)identifier style:(unsigned __int8)style service:(id)service;
- (id)_inPersonFromIMHandle:(id)handle isMe:(BOOL)me;
- (id)_inPersonHandleFromIMHandle:(id)handle contact:(id)contact;
- (id)_inPersonNameForContact:(id)contact imHandle:(id)handle;
- (id)_interactionForMessage:(id)message inChat:(id)chat;
- (id)_lastMessageDateForQueryFromChatDictionary:(id)dictionary;
- (id)_lastMessageItemForChatDictionary:(id)dictionary;
- (id)_mergedChatGUIDsForChatGUIDs:(id)ds;
- (id)_ownerHandleStringsFromSubscription:(id)subscription;
- (id)_participantsForChatDictionary:(id)dictionary;
- (id)_performChatCacheLookupWithBlock:(id)block cacheMissQueryKey:(id)key queryBlock:(id)queryBlock;
- (id)_performSingleChatCacheLookupWithBlock:(id)block cacheMissQueryKey:(id)key queryBlock:(id)queryBlock;
- (id)_possiblyUnregisteredCachedChatForRoom:(id)room onAccount:(id)account;
- (id)_possiblyUnregisteredCachedChatWithHandle:(id)handle;
- (id)_possiblyUnregisteredCachedChatWithHandles:(id)handles style:(unsigned __int8)style groupID:(id)d displayName:(id)name joinedChatsOnly:(BOOL)only;
- (id)_processLoadedChatDictionaries:(id)dictionaries;
- (id)_sendMessageInteractionForMessage:(id)message inChat:(id)chat;
- (id)_sortedParticipantIDHashForParticipants:(id)participants usesPersonCentricID:(BOOL)d fallbackToContactID:(BOOL)iD;
- (id)_unreadCountGUIDsForChat:(id)chat;
- (id)_unsendMessageInteractionForMessage:(id)message inChat:(id)chat;
- (id)_winningChatIdentifierForExistingChat:(id)chat incomingDictionary:(id)dictionary;
- (id)_winningGroupIDForExistingChat:(id)chat incomingDictionary:(id)dictionary;
- (id)_winningParticipantsForExistingChat:(id)chat incomingDictionary:(id)dictionary;
- (id)activeCallForConversationUUID:(id)d;
- (id)allGUIDsForChat:(id)chat;
- (id)allVisibleChatGUIDsForChats:(id)chats;
- (id)brandLogoDataFromChatIdentifier:(id)identifier;
- (id)brandLogoUrlFromChatIdentifier:(id)identifier;
- (id)cachedChatsWithIdentifier:(id)identifier;
- (id)chatForFaceTimeConversation:(id)conversation;
- (id)chatForFaceTimeRecipientIDs:(id)ds;
- (id)chatForIMHandles:(id)handles chatName:(id)name lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d;
- (id)chatForRoom:(id)room onAccount:(id)account;
- (id)chatForURL:(id)l outMessageText:(id *)text outRecipientIDs:(id *)ds outService:(id *)service outMessageGUID:(id *)d presentOverlay:(BOOL *)overlay outSIMID:(id *)iD;
- (id)chatWithHandle:(id)handle lastAddressedHandle:(id)addressedHandle lastAddressedSIMID:(id)d shouldForceCreate:(BOOL)create;
- (id)chatsWithMyself;
- (id)existingChatForIMHandles:(id)handles allowRetargeting:(BOOL)retargeting groupID:(id)d displayName:(id)name ignoresDisplayName:(BOOL)displayName joinedChatsOnly:(BOOL)only;
- (id)existingChatForRoom:(id)room onAccount:(id)account allowRetargeting:(BOOL)retargeting;
- (id)existingChatWithAddresses:(id)addresses allowAlternativeService:(BOOL)service bestHandles:(id *)handles;
- (id)existingChatWithChatIdentifier:(id)identifier;
- (id)existingChatWithContacts:(id)contacts bestHandles:(id *)handles;
- (id)existingChatWithDeviceIndependentID:(id)d;
- (id)existingChatWithDisplayName:(id)name;
- (id)existingChatWithGUID:(id)d;
- (id)existingChatWithGroupID:(id)d;
- (id)existingChatWithHandle:(id)handle allowAlternativeService:(BOOL)service;
- (id)existingChatWithPersonID:(id)d;
- (id)existingChatWithPinningIdentifier:(id)identifier;
- (id)existingChatsWithGUIDs:(id)ds;
- (id)existingConversationForFaceTimeConversationUUID:(id)d;
- (id)generateUnusedChatIdentifierForGroupChatWithAccount:(id)account;
- (id)initAsListener:(BOOL)listener;
- (id)messagesURLWithChat:(id)chat;
- (id)messagesURLWithChat:(id)chat orHandles:(id)handles withMessageText:(id)text;
- (id)messagesURLWithMessageGUID:(id)d;
- (id)performanceLogHandle;
- (id)unblackholeChatWithHandles:(id)handles;
- (int64_t)_chat_cachedUnreadCount:(id)count;
- (int64_t)_winningJoinStateForExistingChat:(id)chat incomingDictionary:(id)dictionary;
- (unint64_t)_nicknameSharingAudience;
- (unint64_t)numberOfCachedChats;
- (unint64_t)numberOfExistingChats;
- (unint64_t)unreadCount;
- (void)__handleChatReconstructions:(id)reconstructions;
- (void)_addChat:(id)chat participantSet:(id)set;
- (void)_asyncSetChatBotUserActivityForChat:(id)chat message:(id)message;
- (void)_automation_markAsReadQuery:(id)query finishedWithResult:(BOOL)result;
- (void)_batchFetchRemainingContactsOnLaunch;
- (void)_chat:(id)_chat appendTranslation:(id)translation toMessageItem:(id)item partIndex:(int64_t)index;
- (void)_chat:(id)_chat cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type;
- (void)_chat:(id)_chat downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally;
- (void)_chat:(id)_chat editScheduledMessageItem:(id)item previousMessageItem:(id)messageItem partIndex:(int64_t)index editType:(unint64_t)type;
- (void)_chat:(id)_chat editScheduledMessageItem:(id)item previousMessageItem:(id)messageItem retractingPartIndexes:(id)indexes;
- (void)_chat:(id)_chat inviteParticipants:(id)participants reason:(id)reason;
- (void)_chat:(id)_chat joinWithProperties:(id)properties;
- (void)_chat:(id)_chat partiallyUpdated:(id)updated;
- (void)_chat:(id)_chat removeParticipants:(id)participants reason:(id)reason;
- (void)_chat:(id)_chat repositionSticker:(id)sticker;
- (void)_chat:(id)_chat resendEditedMessageItem:(id)item partIndex:(int64_t)index withBackwardCompatabilityText:(id)text;
- (void)_chat:(id)_chat retryGroupPhotoUpload:(id)upload;
- (void)_chat:(id)_chat retryTranscriptBackgroundUpload:(id)upload transferID:(id)d;
- (void)_chat:(id)_chat sendEditedMessageItem:(id)item previousMessageItem:(id)messageItem partIndex:(int64_t)index editType:(unint64_t)type backwardCompatabilityText:(id)text;
- (void)_chat:(id)_chat sendGroupPhotoUpdate:(id)update;
- (void)_chat:(id)_chat sendHQAttachmentsForMessage:(id)message;
- (void)_chat:(id)_chat sendMessage:(id)message;
- (void)_chat:(id)_chat sendMessage:(id)message withAccount:(id)account;
- (void)_chat:(id)_chat sendNotifyRecipientCommandForMessage:(id)message;
- (void)_chat:(id)_chat sendPlayedReceiptForMessage:(id)message;
- (void)_chat:(id)_chat sendReadReceiptForMessages:(id)messages;
- (void)_chat:(id)_chat sendSavedReceiptForMessage:(id)message;
- (void)_chat:(id)_chat sendSyndicationAction:(id)action;
- (void)_chat:(id)_chat sendUpdatedCollaborationMetadata:(id)metadata forMessageGUID:(id)d;
- (void)_chat:(id)_chat setPlayedExpressiveSendForMessage:(id)message;
- (void)_chat:(id)_chat setProperties:(id)properties ofParticipant:(id)participant;
- (void)_chat:(id)_chat setTranscriptBackgroundAndSendToChat:(id)chat transferID:(id)d;
- (void)_chat:(id)_chat setValue:(id)value forChatProperty:(id)property;
- (void)_chat:(id)_chat updateBrandLogo:(id)logo;
- (void)_chat:(id)_chat updateDisplayName:(id)name;
- (void)_chat:(id)_chat updateIsFiltered:(int64_t)filtered synchronously:(BOOL)synchronously;
- (void)_chat:(id)_chat updateLastAddressedHandle:(id)handle;
- (void)_chat:(id)_chat updateLastAddressedSIMID:(id)d;
- (void)_chatDidRecoverFromJunk:(id)junk;
- (void)_chatLoadedWithChatIdentifier:(id)identifier chats:(id)chats;
- (void)_chat_acceptChat:(id)chat;
- (void)_chat_clearCachedUnreadCount:(id)count;
- (void)_chat_clearHistory:(id)history beforeGUID:(id)d afterGUID:(id)iD queryID:(id)queryID;
- (void)_chat_declineInvitation:(id)invitation;
- (void)_chat_downloadPurgedAttachmentsForChat:(id)chat;
- (void)_chat_fetchHistorySummary:(id)summary dateInterval:(id)interval synchronous:(BOOL)synchronous queryID:(id)d completion:(id)completion;
- (void)_chat_fetchIncomingPendingMessagesOverSatellite:(id)satellite;
- (void)_chat_fetchOldestMessageDateForChat:(id)chat synchronous:(BOOL)synchronous queryID:(id)d completion:(id)completion;
- (void)_chat_isDownloadingPurgedAssetsForChat:(id)chat queryID:(id)d loadImmediately:(BOOL)immediately;
- (void)_chat_leave:(id)_chat_leave;
- (void)_chat_loadAttachments:(id)attachments queryID:(id)d loadImmediately:(BOOL)immediately;
- (void)_chat_loadFrequentReplies:(id)replies limit:(unint64_t)limit queryID:(id)d loadImmediately:(BOOL)immediately;
- (void)_chat_loadHistory:(id)history limit:(unint64_t)limit beforeGUID:(id)d afterGUID:(id)iD threadIdentifier:(id)identifier queryID:(id)queryID synchronous:(BOOL)synchronous completion:(id)self0;
- (void)_chat_loadPagedHistory:(id)history numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after messageGUID:(id)d threadIdentifier:(id)identifier queryID:(id)iD synchronous:(BOOL)synchronous completion:(id)self0;
- (void)_chat_loadUncachedAttachmentsCount:(id)count queryID:(id)d loadImmediately:(BOOL)immediately;
- (void)_chat_loadUnreadMessages:(id)messages limit:(unint64_t)limit fallbackGUID:(id)d queryID:(id)iD loadImmediately:(BOOL)immediately;
- (void)_chat_markLastMessageAsUnread:(id)unread;
- (void)_chat_markMessageAsUnread:(id)unread message:(id)message;
- (void)_chat_markRepliedForMessageGUID:(id)d;
- (void)_chat_recoverFromJunk:(id)junk;
- (void)_chat_remove:(id)_chat_remove;
- (void)_chat_sendReadReceiptForAllMessages:(id)messages;
- (void)_chat_storeItem:(id)item inChat:(id)chat;
- (void)_checkIfItemIsCorrupt:(id)corrupt;
- (void)_checkLimitAndSetMessagesToKeepLoadedIfNeeded:(unint64_t)needed chat:(id)chat;
- (void)_clearExistingTypingIndicatorsWithMessageGUID:(id)d excludingChatWithIdentifier:(id)identifier;
- (void)_clearMapsUsingChat:(id)chat guids:(id)guids;
- (void)_completeChatLoadQueryWithChat:(id)chat queryID:(id)d;
- (void)_daemonBeganDeferredSetup;
- (void)_daemonCompletedDeferredSetup;
- (void)_daemonMovedChatsToRecentlyDeleted:(id)deleted deletionDate:(id)date;
- (void)_daemonMovedMessagesWithGUIDsToRecentlyDeleted:(id)deleted chatGUID:(id)d deleteDate:(id)date;
- (void)_enumerateChatGUIDPermutationsForChatIdentifier:(id)identifier includingInstantMessageStyle:(BOOL)style includingGroupStyle:(BOOL)groupStyle includingRoomStyle:(BOOL)roomStyle usingBlock:(id)block;
- (void)_fetchInitialBatchOfContactsOnLaunch;
- (void)_handleAddressBookChange:(id)change;
- (void)_handleAvailabilityChangedNotification:(id)notification;
- (void)_handleAvailabilityInvitationReceivedNotification:(id)notification;
- (void)_handleAvailabilityStateChangedNotification:(id)notification;
- (void)_handleCachingAliasToCNIDMap:(id)map;
- (void)_handleChatBotPropertiesDidChangeNotification:(id)notification;
- (void)_handleChatParticipantsDidChange:(id)change;
- (void)_handleChatReconstructions:(id)reconstructions;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification;
- (void)_handleMergedChatReconstructions:(id)reconstructions;
- (void)_handleOffGridChangedNotification:(id)notification;
- (void)_handleOffGridInvitationReceivedNotification:(id)notification;
- (void)_handleOffGridStateChangedNotification:(id)notification;
- (void)_handleStatusChangedForSubscription:(id)subscription;
- (void)_handleStatusInvitationReceivedForSubscription:(id)subscription;
- (void)_handleStatusStateChangedForSubscription:(id)subscription;
- (void)_handleTranslationEnabledChangedNotification:(id)notification;
- (void)_handleTranslationLanguageStatusChangedNotification:(id)notification;
- (void)_handleTranslationSupportChangedNotification:(id)notification;
- (void)_loadAllSiblingChatsForGroupChat:(id)chat waitForReply:(BOOL)reply completionHandler:(id)handler;
- (void)_loadAllSiblingChatsForHandlesAssociatedWithOneToOneChat:(id)chat waitForReply:(BOOL)reply completionHandler:(id)handler;
- (void)_loadChatsFilteredUsingPredicate:(id)predicate lastMessageOlderThan:(id)than limit:(unint64_t)limit waitForReply:(BOOL)reply completionHandler:(id)handler;
- (void)_loadSiblingsForChatIfNeeded:(id)needed;
- (void)_loadUnreadChatsWithLastMessageOlderThan:(id)than waitForReply:(BOOL)reply predicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)_markHasHadSuccessfulQueryForChat:(id)chat;
- (void)_noteChatDealloc:(id)dealloc;
- (void)_noteChatInit:(id)init;
- (void)_postMultiWayStateChangedNotification:(id)notification;
- (void)_previouslyBlackholedChatLoadedWithHandleIDs:(id)ds chat:(id)chat;
- (void)_processUnreadCountFullReplacement:(id)replacement;
- (void)_rebuildUnreadCountController;
- (void)_recalculateServiceNamesForChatIdentifierSearch;
- (void)_refetchLocalTranscriptBackgroundAssetIfNecessaryForChat:(id)chat;
- (void)_registerChatDictionary:(id)dictionary forChat:(id)chat isIncoming:(BOOL)incoming newGUID:(id)d shouldPostNotification:(BOOL)notification;
- (void)_removeFromGroupParticipantToChatsMap:(id)map;
- (void)_resetChatRegistry;
- (void)_setChatHasCommunicatedOveriMessage:(id)message;
- (void)_setMeCardSharingOnMessage:(id)message forChat:(id)chat;
- (void)_setReplyToGuidOnMessage:(id)message forChat:(id)chat;
- (void)_setSimulatedChats:(id)chats;
- (void)_trackUsageForMessage:(id)message;
- (void)_unreadCountControllerUpdated:(id)updated;
- (void)_unregisterChat:(id)chat deleted:(BOOL)deleted didClearUnreadCount:(BOOL)count;
- (void)_updateBrandLogoGuid:(id)guid chatIdentifier:(id)identifier;
- (void)_updateChat:(id)chat groupID:(id)d shouldPostNotification:(BOOL)notification;
- (void)_updateChat:(id)chat originalGroupID:(id)d shouldPostNotification:(BOOL)notification;
- (void)_updateChat:(id)chat updateIsFiltered:(int64_t)filtered;
- (void)_updateDomainIdentifiersForChat:(id)chat incomingDictionary:(id)dictionary shouldPostNotification:(BOOL)notification;
- (void)_updateHasCancellableScheduledMessage:(id)message shouldPostNotification:(BOOL)notification;
- (void)_updatePendingIncomingSatelliteMessageCount:(id)count shouldPostNotification:(BOOL)notification;
- (void)_updatePersonCentricIDForChat:(id)chat;
- (void)_updatePersonCentricIDToChatMapForChat:(id)chat toNewPersonCentricID:(id)d;
- (void)_updateReplySuggestions:(id)suggestions withInfo:(id)info;
- (void)_updateTranscriptBackgroundForChat:(id)chat shouldPostNotification:(BOOL)notification;
- (void)_updateUnreadCountForChat:(id)chat shouldPostNotification:(BOOL)notification;
- (void)_validateChatQueryResults:(id)results matchCurrentCacheResults:(id)cacheResults;
- (void)_verifyChatMergeWithChat:(id)chat dictionary:(id)dictionary;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messagesReceived:(id)received removed:(id)self0 messagesComingFromStorage:(BOOL)self1;
- (void)account:(id)account handleID:(id)d updatedLastReceivedOnGridMessageDate:(id)date;
- (void)attachmentQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result;
- (void)capabilitiesUpdatedForHandle:(id)handle;
- (void)chat:(id)chat brandLogoUpdated:(id)updated transferGuid:(id)guid;
- (void)chat:(id)chat chatPersonCentricID:(id)d displayNameUpdated:(id)updated sender:(id)sender;
- (void)chat:(id)chat engramIDUpdated:(id)updated;
- (void)chat:(id)chat isFilteredUpdated:(int64_t)updated;
- (void)chat:(id)chat lastAddressedHandleUpdated:(id)updated;
- (void)chat:(id)chat lastAddressedHandleUpdated:(id)updated lastAddressedSIMIDUpdated:(id)dUpdated;
- (void)chat:(id)chat lastAddressedSIMIDUpdated:(id)updated;
- (void)chat:(id)chat lastMessageTimeStampOnLoadUpdated:(double)updated;
- (void)chat:(id)chat propertiesUpdated:(id)updated;
- (void)chat:(id)chat uncachedAttachmentCountUpdated:(id)updated;
- (void)chat:(id)chat updated:(id)updated;
- (void)chatLoadedWithChatIdentifier:(id)identifier chats:(id)chats;
- (void)chatsNeedRemerging:(id)remerging groupedChats:(id)chats;
- (void)clearHistoryAndReloadLastMessageForChatsWithGUIDs:(id)ds;
- (void)clearHistoryAndReloadLastMessageForMergedFilteredChats;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager activitySessionsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)dealloc;
- (void)downloadedPurgedAssetBatchForChatIDs:(id)ds completedTransferGUIDs:(id)iDs;
- (void)engroupParticipantsUpdatedForChat:(id)chat;
- (void)enumerateAllChatsAndAttachmentSizesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)finishedDownloadingPurgedAssetsForChatIDs:(id)ds;
- (void)forcedReloadingChatRegistryWithQueryID:(id)d;
- (void)frequentRepliesQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result limit:(int64_t)limit;
- (void)historicalMessageGUIDsDeleted:(id)deleted chatGUIDs:(id)ds queryID:(id)d;
- (void)historyQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result limit:(int64_t)limit;
- (void)lastFailedMessageDateChanged:(int64_t)changed;
- (void)leftChat:(id)chat;
- (void)loadedChats:(id)chats queryID:(id)d;
- (void)loadedRecoverableMessagesMetadata:(id)metadata queryID:(id)d;
- (void)markAsSpamQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result;
- (void)markChatGUIDsAsReviewed:(id)reviewed;
- (void)markChatsAsReadFilteredUsingPredicate:(id)predicate;
- (void)markChatsAsReviewed:(id)reviewed;
- (void)movedMessageGUIDsToRecentlyDeleted:(id)deleted forChatWithGUID:(id)d queryID:(id)iD deletionDate:(id)date;
- (void)movedMessagesToRecentlyDeletedForChatsWithGUIDs:(id)ds queryID:(id)d deletionDate:(id)date;
- (void)pagedHistoryQuery:(id)query chatID:(id)d services:(id)services numberOfMessagesBefore:(int64_t)before numberOfMessagesAfter:(int64_t)after finishedWithResult:(id)result hasMessagesBefore:(BOOL)hasMoreMessagesToLoad hasMessagesAfter:(BOOL)hasMoreRecentMessagesToLoad;
- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)ds;
- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)ds queryID:(id)d;
- (void)permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:(id)ds deletedChatGUIDs:(id)iDs;
- (void)previouslyBlackholedChatLoadedWithChatIdentifier:(id)identifier chats:(id)chats;
- (void)previouslyBlackholedChatLoadedWithHandleIDs:(id)ds chat:(id)chat;
- (void)recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs:(id)ds;
- (void)recoveredMessagesWithChatGUIDs:(id)ds queryID:(id)d;
- (void)serviceSwitchRequestReceivedForChatWithIdentifier:(id)identifier;
- (void)setUpInitialCallState;
- (void)setUserActivityForChat:(id)chat message:(id)message orHandles:(id)handles;
- (void)setupComplete:(BOOL)complete info:(id)info;
- (void)uncachedAttachmentCountQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result;
- (void)unreadCountChanged:(int64_t)changed;
- (void)unreadCountReportsUpdated:(id)updated;
- (void)unregisterChat:(id)chat;
- (void)unregisterChatWithGUID:(id)d;
- (void)updateBrandLogo:(id)logo transferGuid:(id)guid chatIdentifier:(id)identifier;
- (void)updateChatDictionaryArray:(id)array createdChat:(id)chat joinstate:(int64_t)joinstate setHasCommunicatedOveriMessage:(BOOL *)message;
- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)summaries;
- (void)updateChatsUsingMessageGUIDsWithPriority:(id)priority;
- (void)updateEarliestMessageDateForChats:(id)chats completion:(id)completion;
- (void)updatedPriorityForChatsWithGUIDsAndProperties:(id)properties chatsAndMessageGUIDs:(id)ds;
- (void)updatedSummariesForChatsWithGUIDsAndProperties:(id)properties;
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

+ (void)setHasInitializedChatFiltering:(BOOL)filtering
{
  if (byte_1EB2FEFF0 != filtering)
  {
    byte_1EB2FEFF0 = filtering;
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

- (id)existingConversationForFaceTimeConversationUUID:(id)d
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = dCopy;
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
        isEqual = objc_msgSend_isEqual_(v24, v25, dCopy);

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

- (id)chatForFaceTimeConversation:(id)conversation
{
  v4 = objc_msgSend_remoteMemberHandleStrings(conversation, a2, conversation);
  v6 = objc_msgSend_chatForFaceTimeRecipientIDs_(self, v5, v4);

  return v6;
}

- (id)chatForFaceTimeRecipientIDs:(id)ds
{
  v37 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v6 = objc_msgSend_sharedInstance(IMAccountController, v4, v5);
  v9 = objc_msgSend_activeIMessageAccount(v6, v7, v8);

  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = dsCopy;
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

- (id)allGUIDsForChat:(id)chat
{
  chatCopy = chat;
  if (chatCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_msgSend_chatGUIDToChatMap(self, v6, v7);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A82B9EB8;
    v19[3] = &unk_1E7810F78;
    v9 = chatCopy;
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

- (id)existingChatWithGUID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (objc_msgSend_length(dCopy, v5, v6))
  {
    if (objc_msgSend___im_isWellFormedChatGUID(dCopy, v7, v8))
    {
      v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
      isOneChatEnabled = objc_msgSend_isOneChatEnabled(v11, v12, v13);

      if (isOneChatEnabled)
      {
        v15 = IMAnyServiceGUIDFromLegacyChatGUID();

        dCopy = v15;
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1A82BA190;
      v24[3] = &unk_1E7810FA0;
      v24[4] = self;
      v25 = dCopy;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1A82BA19C;
      v22[3] = &unk_1E7810FF0;
      v22[4] = self;
      dCopy = v25;
      v23 = dCopy;
      v17 = objc_msgSend__performSingleChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v16, v24, @"ChatCache-LoadWithGUID", v22);
    }

    else
    {
      v18 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = dCopy;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Existing chat with GUID given malformed guid (%@), only checking cache", buf, 0xCu);
      }

      v17 = objc_msgSend__cachedChatWithGUID_(self, v19, dCopy);
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)summaries
{
  summariesCopy = summaries;
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
    objc_msgSend_updateChatsUsingMessageGUIDsAndSummaries_(v13, v14, summariesCopy);
  }
}

- (void)updateChatsUsingMessageGUIDsWithPriority:(id)priority
{
  priorityCopy = priority;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting to update messages with priority.", v13, 2u);
  }

  v8 = objc_msgSend_daemonController(self, v6, v7);
  v11 = objc_msgSend_remoteDaemon(v8, v9, v10);
  objc_msgSend_updateChatsUsingMessageGUIDsWithPriority_(v11, v12, priorityCopy);
}

- (void)markChatGUIDsAsReviewed:(id)reviewed
{
  v24 = *MEMORY[0x1E69E9840];
  reviewedCopy = reviewed;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134217984;
    v23 = objc_msgSend_count(reviewedCopy, v6, v7);
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Requesting to mark %ld chat GUIDs as reviewed.", &v22, 0xCu);
  }

  if (objc_msgSend_count(reviewedCopy, v8, v9))
  {
    v12 = objc_msgSend_unreadCountController(self, v10, v11);
    objc_msgSend_updatePendingReviewForChatsWithGUIDs_pendingReview_(v12, v13, reviewedCopy, 0);

    v16 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
    v19 = objc_msgSend_remoteDaemon(v16, v17, v18);
    objc_msgSend_markChatGUIDsAsReviewedAndReflectToPeers_(v19, v20, reviewedCopy);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)markChatsAsReviewed:(id)reviewed
{
  v31 = *MEMORY[0x1E69E9840];
  reviewedCopy = reviewed;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v30 = objc_msgSend_count(reviewedCopy, v6, v7);
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Marking %ld chats as reviewed.", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = reviewedCopy;
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

- (id)existingChatsWithGUIDs:(id)ds
{
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v5, v6))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A82BA7D0;
    v13[3] = &unk_1E7811018;
    v14 = dsCopy;
    selfCopy = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A82BA9A0;
    v10[3] = &unk_1E7811068;
    v11 = v14;
    selfCopy2 = self;
    v8 = objc_msgSend__performChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v7, v13, @"ChatCache-LoadWithGUID", v10);
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)_chatPredicateForGUIDs:(id)ds
{
  v3 = objc_msgSend___imArrayByApplyingBlock_(ds, a2, &unk_1F1B6E180);
  v5 = objc_msgSend_orPredicateWithSubpredicates_(MEMORY[0x1E696AB28], v4, v3);

  return v5;
}

- (id)existingChatWithHandle:(id)handle allowAlternativeService:(BOOL)service
{
  serviceCopy = service;
  v31 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v11 = objc_msgSend_ID(handleCopy, v7, v8);
  if (serviceCopy)
  {
    v12 = objc_msgSend_existingChatWithChatIdentifier_(self, v9, v11);
  }

  else
  {
    v13 = objc_msgSend_service(handleCopy, v9, v10);
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
        v26 = handleCopy;
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

- (id)existingChatWithChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (objc_msgSend_length(identifierCopy, v5, v6) && (objc_msgSend_isEqualToString_(identifierCopy, v7, @"-1") & 1) == 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A82BB314;
    v14[3] = &unk_1E7810FA0;
    v14[4] = self;
    v15 = identifierCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A82BB3DC;
    v11[3] = &unk_1E7810FF0;
    v12 = v15;
    selfCopy = self;
    v8 = objc_msgSend__performSingleChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v9, v14, @"ChatCache-LoadWithIdentifier", v11);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)existingChatWithGroupID:(id)d
{
  dCopy = d;
  if (objc_msgSend_length(dCopy, v5, v6))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A82BB668;
    v12[3] = &unk_1E7810FA0;
    v12[4] = self;
    v13 = dCopy;
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

- (id)existingChatWithDeviceIndependentID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_existingChatWithGroupID_(self, v5, dCopy);
  if (!v7)
  {
    v7 = objc_msgSend_existingChatWithChatIdentifier_(self, v6, dCopy);
  }

  return v7;
}

- (id)existingChatWithDisplayName:(id)name
{
  nameCopy = name;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A82BB8E0;
  v12[3] = &unk_1E7810FA0;
  v12[4] = self;
  v13 = nameCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82BB8EC;
  v9[3] = &unk_1E7810FF0;
  v10 = v13;
  selfCopy = self;
  v5 = v13;
  v7 = objc_msgSend__performSingleChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v6, v12, @"ChatCache-LoadWithGroupID", v9);

  return v7;
}

- (id)existingChatWithPinningIdentifier:(id)identifier
{
  v59 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (objc_msgSend_length(identifierCopy, v5, v6))
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_1A8259B10;
    v54 = sub_1A825AEB4;
    v44 = identifierCopy;
    v55 = objc_msgSend_existingChatWithDeviceIndependentID_(self, v7, identifierCopy);
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

    identifierCopy = v44;
  }

  else
  {
    v28 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)existingChatWithPersonID:(id)d
{
  dCopy = d;
  if (IMSharedHelperPersonCentricMergingEnabled() && objc_msgSend_length(dCopy, v5, v6))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A82BBF0C;
    v13[3] = &unk_1E7810FA0;
    v13[4] = self;
    v14 = dCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A82BBF18;
    v10[3] = &unk_1E7810FF0;
    v11 = v14;
    selfCopy = self;
    v8 = objc_msgSend__performSingleChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v7, v13, @"ChatCache-LoadWithGroupID", v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)existingChatWithAddresses:(id)addresses allowAlternativeService:(BOOL)service bestHandles:(id *)handles
{
  serviceCopy = service;
  v50 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  v11 = addressesCopy;
  if (serviceCopy)
  {
    handlesCopy = handles;
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

          v26 = objc_msgSend_validateAndCleanupID_(MEMORY[0x1E69A7FD0], v22, *(*(&v43 + 1) + 8 * i), handlesCopy);
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

    v34 = objc_msgSend_existingChatWithContacts_bestHandles_(self, v33, v18, handlesCopy);
  }

  else
  {
    v35 = objc_msgSend_count(addressesCopy, v9, v10);
    v36 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v11;
      _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_DEFAULT, "existingChatWithAddresses: %@", buf, 0xCu);
    }

    v37 = IMFindExistingChatForAddresses(v11, 0, v35 > 1, 1);
    v34 = v37;
    if (handles)
    {
      *handles = objc_msgSend_participants(v37, v38, v39);
    }
  }

  v40 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)existingChatWithContacts:(id)contacts bestHandles:(id *)handles
{
  v21 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v6 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = contactsCopy;
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
  v7 = contactsCopy;
  p_buf = &buf;
  handlesCopy = handles;
  v13 = v7;
  objc_msgSend_bestHandlesForContacts_useExtendedAsyncLookup_completion_(IMHandle, v8, v7, 0, v12);
  v9 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_mergedChatGUIDsForChatGUIDs:(id)ds
{
  v73 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_alloc(MEMORY[0x1E696AD18]);
  v8 = objc_msgSend_count(dsCopy, v6, v7);
  v10 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v5, v9, 512, 0, v8);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v11 = dsCopy;
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
    selfCopy = self;
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

- (void)clearHistoryAndReloadLastMessageForChatsWithGUIDs:(id)ds
{
  dsCopy = ds;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1A8259B10;
  v22 = sub_1A825AEB4;
  v23 = 0;
  v7 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  v10 = objc_msgSend_synchronousRemoteDaemon(v7, v8, v9);
  v12 = objc_msgSend__mergedChatGUIDsForChatGUIDs_(self, v11, dsCopy);
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

- (void)_loadUnreadChatsWithLastMessageOlderThan:(id)than waitForReply:(BOOL)reply predicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler
{
  replyCopy = reply;
  thanCopy = than;
  predicateCopy = predicate;
  handlerCopy = handler;
  v17 = objc_msgSend_daemonController(self, v15, v16);
  v20 = v17;
  if (replyCopy)
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
  v22 = handlerCopy;
  v31 = v22;
  v23 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1A82BD998;
  v26[3] = &unk_1E78111C0;
  v29 = replyCopy;
  v28 = &v32;
  v24 = v23;
  v27 = v24;
  objc_msgSend_loadUnreadChatsWithLastMessageOlderThan_predicate_limit_reply_(v21, v25, thanCopy, predicateCopy, limit, v26);
  if (replyCopy)
  {
    (*(v24 + 2))(v24, v33[5]);
  }

  _Block_object_dispose(&v32, 8);
}

- (void)_loadChatsFilteredUsingPredicate:(id)predicate lastMessageOlderThan:(id)than limit:(unint64_t)limit waitForReply:(BOOL)reply completionHandler:(id)handler
{
  handlerCopy = handler;
  thanCopy = than;
  predicateCopy = predicate;
  v17 = objc_msgSend_daemonController(self, v15, v16);
  v20 = v17;
  if (reply)
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
  v25 = handlerCopy;
  replyCopy = reply;
  v22 = handlerCopy;
  objc_msgSend_loadChatsFilteredUsingPredicate_lastMessageOlderThan_limit_reply_(v21, v23, predicateCopy, thanCopy, limit, v24);
}

- (id)_earliestLastMessageDateFromChatDictionaries:(id)dictionaries
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
  dictionariesCopy = dictionaries;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(dictionariesCopy, v5, &v15, v25, 16);
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(dictionariesCopy);
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

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(dictionariesCopy, v6, &v15, v25, 16);
    }

    while (v7);
  }

  v11 = v20[5];
  _Block_object_dispose(&v19, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_lastMessageDateForQueryFromChatDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v4, @"lastMessageRecordDateForQuery");
  if (!v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, *MEMORY[0x1E69A6C08]);
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

- (void)updateEarliestMessageDateForChats:(id)chats completion:(id)completion
{
  chatsCopy = chats;
  completionCopy = completion;
  v7 = MEMORY[0x1E695DF70];
  v10 = objc_msgSend_count(chatsCopy, v8, v9);
  v12 = objc_msgSend_arrayWithCapacity_(v7, v11, v10);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1A82BE254;
  v25[3] = &unk_1E7811238;
  v13 = v12;
  v26 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(chatsCopy, v14, v25);
  v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
  v20 = objc_msgSend_synchronousRemoteDaemon(v17, v18, v19);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A82BE2AC;
  v23[3] = &unk_1E78100B8;
  v24 = chatsCopy;
  v21 = chatsCopy;
  objc_msgSend_fetchEarliestMessageDateForChatsWithGUIDs_completion_(v20, v22, v13, v23);

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (id)chatWithHandle:(id)handle lastAddressedHandle:(id)addressedHandle lastAddressedSIMID:(id)d shouldForceCreate:(BOOL)create
{
  createCopy = create;
  v76 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  addressedHandleCopy = addressedHandle;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v69 = handleCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "handle: %@", buf, 0xCu);
    }
  }

  if (!handleCopy)
  {
    isDeletingIncomingMessages = 0;
    goto LABEL_32;
  }

  isDeletingIncomingMessages = objc_msgSend_existingChatWithHandle_(self, v13, handleCopy);
  if (isDeletingIncomingMessages)
  {
LABEL_7:
    if (!createCopy)
    {
      v16 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v69 = isDeletingIncomingMessages;
        v70 = 2112;
        v71 = handleCopy;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "Redirecting chat %@ to handle: %@", buf, 0x16u);
      }

      objc_msgSend_setRecipient_(isDeletingIncomingMessages, v17, handleCopy);
      v20 = objc_msgSend_account(handleCopy, v18, v19);
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

  isDeletingIncomingMessages = objc_msgSend__existingChatForHandleUsingPersonID_(self, v22, handleCopy);
  if (isDeletingIncomingMessages)
  {
    v23 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = isDeletingIncomingMessages;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Found a chat using PersonID: %@ ", buf, 0xCu);
    }

    objc_msgSend_setRecipient_(isDeletingIncomingMessages, v24, handleCopy);
    goto LABEL_7;
  }

LABEL_17:
  v25 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_DEFAULT, "No chat found", buf, 2u);
  }

  v27 = objc_msgSend__possiblyUnregisteredCachedChatWithHandle_(self, v26, handleCopy);

  if (!v27 || createCopy)
  {
    v34 = [IMChat alloc];
    v37 = objc_msgSend_account(handleCopy, v35, v36);
    v38 = IMSingleObjectArray();
    BYTE2(v67) = 0;
    LOWORD(v67) = 0;
    isDeletingIncomingMessages = objc_msgSend__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_(v34, v39, 0, v37, 45, 0, 0, addressedHandleCopy, dCopy, 0, v38, 1, v67);

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

    objc_msgSend_setRecipient_(v27, v29, handleCopy);
    v32 = objc_msgSend_account(handleCopy, v30, v31);
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

- (void)_validateChatQueryResults:(id)results matchCurrentCacheResults:(id)cacheResults
{
  v32 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  cacheResultsCopy = cacheResults;
  if (!objc_msgSend_count(resultsCopy, v7, v8) && !objc_msgSend_count(cacheResultsCopy, v9, v10))
  {
    goto LABEL_23;
  }

  if (!objc_msgSend_count(resultsCopy, v9, v10) && objc_msgSend_count(cacheResultsCopy, v11, v12))
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = cacheResultsCopy;
        v30 = 2112;
        v31 = resultsCopy;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Chat cache now has chats, but query didn't explictly populate it, cache: %@ query: %@", buf, 0x16u);
      }
    }

    goto LABEL_23;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = resultsCopy;
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
        v29 = cacheResultsCopy;
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

      v17 |= objc_msgSend_containsObjectIdenticalTo_(cacheResultsCopy, v15, *(*(&v23 + 1) + 8 * i), v23);
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

- (id)_performSingleChatCacheLookupWithBlock:(id)block cacheMissQueryKey:(id)key queryBlock:(id)queryBlock
{
  blockCopy = block;
  queryBlockCopy = queryBlock;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A82BECB4;
  v23[3] = &unk_1E7811260;
  v24 = blockCopy;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_1A82BED7C;
  v21 = &unk_1E7811288;
  v22 = queryBlockCopy;
  v10 = queryBlockCopy;
  v11 = blockCopy;
  v13 = objc_msgSend__performChatCacheLookupWithBlock_cacheMissQueryKey_queryBlock_(self, v12, v23, key, &v18);
  v16 = objc_msgSend_firstObject(v13, v14, v15, v18, v19, v20, v21);

  return v16;
}

- (id)_performChatCacheLookupWithBlock:(id)block cacheMissQueryKey:(id)key queryBlock:(id)queryBlock
{
  v67 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  keyCopy = key;
  queryBlockCopy = queryBlock;
  v11 = queryBlockCopy;
  if (blockCopy && queryBlockCopy)
  {
    v57 = 0;
    *&v62 = 0;
    *(&v62 + 1) = &v62;
    v63 = 0x3032000000;
    v64 = sub_1A8259B10;
    v65 = sub_1A825AEB4;
    v66 = blockCopy[2](blockCopy, &v57);
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
          v59 = keyCopy;
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
        v52 = blockCopy;
        v50 = keyCopy;
        selfCopy = self;
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

- (id)_existingChatWithIdentifier:(id)identifier style:(unsigned __int8)style service:(id)service
{
  identifierCopy = identifier;
  serviceCopy = service;
  v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v11, v12, v13);

  if (isOneChatEnabled)
  {
    v16 = objc_msgSend_existingChatWithChatIdentifier_(self, v15, identifierCopy);
  }

  else
  {
    v16 = 0;
    if (identifierCopy && serviceCopy)
    {
      v17 = IMCopyAnyServiceGUIDForChat();
      v16 = objc_msgSend_existingChatWithGUID_(self, v18, v17);
    }
  }

  return v16;
}

- (id)_existingChatForHandleUsingPersonID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = objc_msgSend_contactStore(self, v5, v6);
  isBatchFetchingForLaunchCompleted = objc_msgSend_isBatchFetchingForLaunchCompleted(v7, v8, v9);

  if (isBatchFetchingForLaunchCompleted)
  {
    v12 = objc_msgSend_cnContactWithKeys_(dCopy, v11, MEMORY[0x1E695E0F0]);
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

- (id)_existingChatFromSiblingsForHandle:(id)handle
{
  v35 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v7 = objc_msgSend__chatSiblingsArray(handleCopy, v5, v6);
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

- (id)_existingChatWithHandle:(id)handle fixChatHandle:(BOOL)chatHandle
{
  chatHandleCopy = chatHandle;
  v34 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
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
        v16 = objc_msgSend_ID(handleCopy, v10, v11, v27);
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
    v21 = objc_msgSend__existingChatForHandleUsingPersonID_(self, v22, handleCopy);
    if (v21 && chatHandleCopy)
    {
      v23 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v21;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Found a chat using PersonID: %@ ", buf, 0xCu);
      }

      objc_msgSend_setRecipient_(v21, v24, handleCopy);
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

- (void)_loadAllSiblingChatsForHandlesAssociatedWithOneToOneChat:(id)chat waitForReply:(BOOL)reply completionHandler:(id)handler
{
  v105 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  handlerCopy = handler;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (objc_msgSend_chatStyle(chatCopy, v11, v12) == 45)
  {
    selfCopy = self;
    replyCopy = reply;
    v76 = handlerCopy;
    v77 = chatCopy;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = objc_msgSend_participants(chatCopy, v13, v14);
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

    v64 = objc_msgSend_daemonController(selfCopy, v62, v63);
    v67 = v64;
    handlerCopy = v76;
    if (replyCopy)
    {
      objc_msgSend_synchronousRemoteDaemon(v64, v65, v66);
    }

    else
    {
      objc_msgSend_remoteDaemon(v64, v65, v66);
    }
    v68 = ;
    chatCopy = v77;

    v71 = objc_msgSend_allObjects(v10, v69, v70);
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = sub_1A82C0388;
    v84[3] = &unk_1E78111E8;
    v86 = replyCopy;
    v84[4] = selfCopy;
    v85 = v76;
    objc_msgSend_loadAnyChatsContainingHandleIDsIn_reply_(v68, v72, v71, v84);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }

  v73 = *MEMORY[0x1E69E9840];
}

- (void)_loadAllSiblingChatsForGroupChat:(id)chat waitForReply:(BOOL)reply completionHandler:(id)handler
{
  chatCopy = chat;
  handlerCopy = handler;
  if (objc_msgSend_chatStyle(chatCopy, v10, v11) == 43)
  {
    v14 = objc_msgSend_participants(chatCopy, v12, v13);
    v16 = objc_msgSend___imArrayByApplyingBlock_(v14, v15, &unk_1F1B6E200);

    v19 = objc_msgSend_daemonController(self, v17, v18);
    v22 = objc_msgSend_synchronousRemoteDaemon(v19, v20, v21);
    v25 = objc_msgSend_displayName(chatCopy, v23, v24);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A82C0658;
    v27[3] = &unk_1E78111E8;
    replyCopy = reply;
    v27[4] = self;
    v28 = handlerCopy;
    objc_msgSend_loadChatsWithHandleIDs_groupID_displayName_style_reply_(v22, v26, v16, 0, v25, 43, v27);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

- (id)allVisibleChatGUIDsForChats:(id)chats
{
  v4 = MEMORY[0x1E695DFA8];
  chatsCopy = chats;
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
  objc_msgSend_enumerateObjectsUsingBlock_(chatsCopy, v11, v15);

  v12 = v16;
  v13 = v10;

  return v10;
}

- (void)enumerateAllChatsAndAttachmentSizesWithOptions:(unint64_t)options usingBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
    v29 = blockCopy;
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

- (id)chatForIMHandles:(id)handles chatName:(id)name lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d
{
  v56 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  nameCopy = name;
  handleCopy = handle;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v53 = handlesCopy;
      v54 = 2112;
      v55 = nameCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEBUG, "handles: %@  name: %@", buf, 0x16u);
    }
  }

  v17 = objc_msgSend_lastObject(handlesCopy, v14, v15);
  v20 = objc_msgSend_service(v17, v18, v19);

  v22 = objc_msgSend_maxChatParticipantsForHandle_simID_(v20, v21, handleCopy, dCopy);
  v25 = v22;
  if (v22 < 1 || (v26 = objc_msgSend_count(handlesCopy, v23, v24), v26 <= objc_msgSend_maxChatParticipantsForHandle_simID_(v20, v27, handleCopy, dCopy)))
  {
    isDeletingIncomingMessages = objc_msgSend_existingChatForIMHandles_(self, v23, handlesCopy);
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

    v34 = objc_msgSend_lastObject(handlesCopy, v32, v33);
    v30 = objc_msgSend_account(v34, v35, v36);

    isDeletingIncomingMessages = objc_msgSend__possiblyUnregisteredCachedChatWithHandles_style_groupID_displayName_joinedChatsOnly_(self, v37, handlesCopy, 43, 0, 0, 0);
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
      isDeletingIncomingMessages = objc_msgSend__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_(v40, v41, 0, v30, 43, 0, 0, handleCopy, dCopy, 0, handlesCopy, 1, v51);
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

- (id)chatForRoom:(id)room onAccount:(id)account
{
  v30 = *MEMORY[0x1E69E9840];
  roomCopy = room;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v27 = roomCopy;
      v28 = 2112;
      v29 = accountCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "roomName: %@  account: %@", buf, 0x16u);
    }
  }

  if (accountCopy)
  {
    v10 = objc_msgSend_chatIDForRoomName_(accountCopy, v8, roomCopy);

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
    v10 = roomCopy;
  }

  isDeletingIncomingMessages = objc_msgSend_existingChatForRoom_onAccount_(self, v8, v10, accountCopy);
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

  isDeletingIncomingMessages = objc_msgSend__possiblyUnregisteredCachedChatForRoom_onAccount_(self, v12, v10, accountCopy);
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
    isDeletingIncomingMessages = objc_msgSend__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_(v17, v18, 0, accountCopy, 35, v10, 0, 0, 0, 0, 0, 1, v25);
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

- (id)existingChatForRoom:(id)room onAccount:(id)account allowRetargeting:(BOOL)retargeting
{
  roomCopy = room;
  v10 = objc_msgSend_uniqueID(account, v8, v9);
  v12 = objc_msgSend__existingChatWithIdentifier_style_account_(self, v11, roomCopy, 35, v10);

  return v12;
}

- (id)existingChatForIMHandles:(id)handles allowRetargeting:(BOOL)retargeting groupID:(id)d displayName:(id)name ignoresDisplayName:(BOOL)displayName joinedChatsOnly:(BOOL)only
{
  onlyCopy = only;
  v70 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  dCopy = d;
  nameCopy = name;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_msgSend_arrayByApplyingSelector_(handlesCopy, v15, "ID");
      v17 = @"NO";
      *buf = 138413058;
      v63 = v16;
      if (onlyCopy)
      {
        v17 = @"YES";
      }

      v64 = 2112;
      v65 = dCopy;
      v66 = 2112;
      v67 = nameCopy;
      v68 = 2112;
      v69 = v17;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "existingChatForHandles: %@  groupID: %@ displayName %@ isJoined %@ ", buf, 0x2Au);
    }
  }

  if (objc_msgSend_count(handlesCopy, v12, v13))
  {
    if (objc_msgSend_length(nameCopy, v18, v19))
    {
      v20 = nameCopy;
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

        if (!objc_msgSend_length(dCopy, v37, v38))
        {
          goto LABEL_23;
        }

        if (!(v36 | v21))
        {
          goto LABEL_28;
        }

        v41 = objc_msgSend_groupID(v31, v39, v40);
        isEqualToString = objc_msgSend_isEqualToString_(dCopy, v42, v41);

        if (isEqualToString)
        {
LABEL_23:
          if (displayName)
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
            if (!onlyCopy || objc_msgSend_joinState(v31, v39, v40) >= 2)
            {
              v44 = objc_autoreleasePoolPush();
              v47 = objc_msgSend_participants(v31, v45, v46);
              v49 = objc_msgSend_equivalentToRecipients_(handlesCopy, v48, v47);

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

    nameCopy = v21;
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
    v5 = objc_msgSend_sharedRegistry(self, v3, v4);
  }

  return v5;
}

- (void)_noteChatInit:(id)init
{
  initCopy = init;
  if (objc_msgSend__shouldRegisterChat(initCopy, v4, v5) && (objc_msgSend_containsObjectIdenticalTo_(self->_allChatsInProcess, v6, initCopy) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_allChatsInProcess, v7, initCopy);
  }
}

- (void)_noteChatDealloc:(id)dealloc
{
  deallocCopy = dealloc;
  if (objc_msgSend__shouldRegisterChat(deallocCopy, v4, v5))
  {
    objc_msgSend_removeObjectIdenticalTo_(self->_allChatsInProcess, v6, deallocCopy);
  }
}

- (id)initAsListener:(BOOL)listener
{
  listenerCopy = listener;
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
    if (listenerCopy)
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

- (void)_verifyChatMergeWithChat:(id)chat dictionary:(id)dictionary
{
  v84 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dictionaryCopy = dictionary;
  v8 = dictionaryCopy;
  if (chatCopy && dictionaryCopy)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v7, @"style");
    v12 = objc_msgSend_intValue(v9, v10, v11);

    v15 = objc_msgSend_chatStyle(chatCopy, v13, v14);
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
          v21 = objc_msgSend_guid(chatCopy, v19, v20);
          *buf = 138412802;
          v80 = v21;
          v81 = 1024;
          *v82 = objc_msgSend_chatStyle(chatCopy, v22, v23);
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
          v80 = chatCopy;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Registering with chat: %@", buf, 0xCu);
        }
      }

      v29 = @"Mismatched chat style";
    }

    v30 = objc_msgSend_objectForKeyedSubscript_(v8, v16, @"participants");
    v33 = objc_msgSend_participants(chatCopy, v31, v32);
    v36 = objc_msgSend_count(v33, v34, v35);
    LOBYTE(v36) = v36 == objc_msgSend_count(v30, v37, v38);

    if ((v36 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v44 = objc_msgSend_guid(chatCopy, v42, v43);
          v47 = objc_msgSend_participants(chatCopy, v45, v46);
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
          v80 = chatCopy;
          _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "Registering with chat: %@", buf, 0xCu);
        }
      }

      v17 = 1;
      v29 = @"Mismatched participant count";
    }

    v53 = objc_msgSend_participants(chatCopy, v39, v40);
    v56 = objc_msgSend_count(v53, v54, v55) == 0;

    if (v56)
    {
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v62 = objc_msgSend_guid(chatCopy, v60, v61);
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
          v80 = chatCopy;
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

- (void)_registerChatDictionary:(id)dictionary forChat:(id)chat isIncoming:(BOOL)incoming newGUID:(id)d shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  incomingCopy = incoming;
  v199 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  chatCopy = chat;
  dCopy = d;
  if (!objc_msgSend__shouldRegisterChat(chatCopy, v13, v14))
  {
    goto LABEL_109;
  }

  v169 = notificationCopy;
  v177 = dCopy;
  if ((IMAdditionalChatRegistryLoggingEnabled() & 1) != 0 || !self->_firstLoad)
  {
    v17 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v191 = v177;
      v192 = 1024;
      *v193 = incomingCopy;
      *&v193[4] = 1024;
      *&v193[6] = notificationCopy;
      *v194 = 2112;
      *&v194[2] = chatCopy;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Registering dictionary for with newGUID: %@ isIncoming: %{BOOL}d shouldPostNotification: %{BOOL}d chat: %@", buf, 0x22u);
    }
  }

  v18 = objc_msgSend_account(chatCopy, v15, v16);
  v175 = objc_msgSend_uniqueID(v18, v19, v20);

  v178 = objc_msgSend_chatIdentifier(chatCopy, v21, v22);
  v174 = objc_msgSend_chatStyle(chatCopy, v23, v24);
  if (v177)
  {
    v176 = v177;
  }

  else
  {
    v176 = objc_msgSend_guid(chatCopy, v25, v26);
  }

  key = objc_msgSend_groupID(chatCopy, v27, v28);
  if (dictionaryCopy)
  {
    v30 = objc_msgSend_objectForKey_(dictionaryCopy, v29, @"accountID");

    if (!v176)
    {
      v176 = objc_msgSend_objectForKey_(dictionaryCopy, v31, @"guid");
    }

    v32 = objc_msgSend_objectForKey_(dictionaryCopy, v31, @"chatIdentifier");

    v34 = objc_msgSend_objectForKey_(dictionaryCopy, v33, @"style");
    v174 = objc_msgSend_intValue(v34, v35, v36);

    v178 = v32;
    v175 = v30;
  }

  objc_msgSend__verifyChatMergeWithChat_dictionary_(self, v29, chatCopy);
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
      v51 = objc_msgSend_guid(chatCopy, v49, v50);
      *buf = 138412290;
      v191 = v51;
      _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_DEFAULT, " => empty thread name for guid %@", buf, 0xCu);
    }

    goto LABEL_105;
  }

  v170 = objc_msgSend_objectForKey_(self->_chatGUIDToChatMap, v41, v176);

  if (chatCopy)
  {
    chatGUIDToChatMap = self->_chatGUIDToChatMap;
    v45 = objc_msgSend_guid(chatCopy, v42, v43);
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
        v56 = chatCopy;
        if (chatCopy)
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
    v57 = objc_msgSend_domainIdentifiers(chatCopy, v52, v53);
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
            v70 = chatCopy;
            if (chatCopy)
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

  v72 = objc_msgSend_guid(chatCopy, v42, v43);
  if (objc_msgSend_isEqualToString_(v72, v73, v176))
  {
    isInternalInstall = 0;
  }

  else
  {
    v77 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v74, v75);
    isInternalInstall = objc_msgSend_isInternalInstall(v77, v78, v79);
  }

  v82 = objc_msgSend_chatIdentifier(chatCopy, v80, v81);
  v83 = v82 == 0;

  if (v83)
  {
    v89 = 0;
  }

  else
  {
    v86 = objc_msgSend_chatIdentifier(chatCopy, v84, v85);
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
      v127 = objc_msgSend_objectForKey_(dictionaryCopy, v126, *MEMORY[0x1E69A6C68]);
      v130 = objc_msgSend_guid(chatCopy, v128, v129);
      v133 = objc_msgSend_personCentricID(chatCopy, v131, v132);
      *buf = 138413314;
      v191 = v176;
      v192 = 2112;
      *v193 = v127;
      *&v193[8] = 2048;
      *v194 = chatCopy;
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
      v94 = objc_msgSend_guid(chatCopy, v92, v93);
      v97 = objc_msgSend_groupID(chatCopy, v95, v96);
      *buf = 138413314;
      v191 = v176;
      v192 = 2112;
      *v193 = key;
      *&v193[8] = 2048;
      *v194 = chatCopy;
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

    v99 = objc_msgSend_objectForKey_(dictionaryCopy, v98, @"participants");
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
      v122 = objc_msgSend_participants(chatCopy, v120, v121);
      v124 = objc_msgSend_arrayByApplyingSelector_(v122, v123, "ID");
      *buf = 138412290;
      v191 = v124;
      _os_log_impl(&dword_1A823F000, v119, OS_LOG_TYPE_DEFAULT, "participants of existing chat %@", buf, 0xCu);
    }
  }

LABEL_84:
  v134 = chatCopy;
  if (chatCopy)
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
  if (chatCopy)
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

  if (incomingCopy)
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
  if (objc_msgSend_chatStyle(chatCopy, v42, v43) != 45)
  {
    v163 = objc_msgSend_participants(chatCopy, v161, v162);
    v165 = objc_msgSend__sortedParticipantIDHashForParticipants_(self, v164, v163);
    objc_msgSend__addChat_participantSet_(self, v166, chatCopy, v165);
  }

  dCopy = v177;
LABEL_109:

  v167 = *MEMORY[0x1E69E9840];
}

- (void)unregisterChat:(id)chat
{
  chatCopy = chat;
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

- (void)unregisterChatWithGUID:(id)d
{
  dCopy = d;
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

- (void)_unregisterChat:(id)chat deleted:(BOOL)deleted didClearUnreadCount:(BOOL)count
{
  deletedCopy = deleted;
  v45[1] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if (chatCopy)
  {
    if (deletedCopy && !count)
    {
      v11 = objc_msgSend_unreadCountController(self, v8, v9);
      v14 = objc_msgSend_guid(chatCopy, v12, v13);
      v45[0] = v14;
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v45, 1);
      objc_msgSend_chatsDeletedWithGUIDs_(v11, v17, v16);
    }

    v18 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = chatCopy;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Unregistering chat: %@", buf, 0xCu);
    }

    v21 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v19, v20);
    objc_msgSend___mainThreadPostNotificationName_object_(v21, v22, @"__kIMChatRegistryWillUnregisterChatNotification", chatCopy);

    v24 = objc_msgSend_allGUIDsForChat_(self, v23, chatCopy);
    objc_msgSend__clearMapsUsingChat_guids_(self, v25, chatCopy, v24);
    objc_msgSend_didUnregisterFromRegistry_(chatCopy, v26, self);
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

- (void)_clearMapsUsingChat:(id)chat guids:(id)guids
{
  v40 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  guidsCopy = guids;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(guidsCopy, v8, &v35, v39, 16);
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
          objc_enumerationMutation(guidsCopy);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        objc_msgSend_removeObjectForKey_(self->_chatGUIDToCurrentThreadMap, v10, v14);
        objc_msgSend_removeObjectForKey_(self->_chatGUIDToChatMap, v15, v14);
        objc_msgSend_removeObjectForKey_(self->_chatGUIDToiMessageSentOrReceivedMap, v16, v14);
        objc_msgSend_removeObjectForKey_(self->_chatGUIDToInfoMap, v17, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(guidsCopy, v10, &v35, v39, 16);
    }

    while (v11);
  }

  objc_msgSend_removeObjectIdenticalTo_(self->_allChatsInProcess, v10, chatCopy);
  objc_msgSend_removeObjectIdenticalTo_(self->_cachedChatsInThreadNameMap, v18, chatCopy);
  v20 = objc_msgSend_allKeysForObject_(self->_threadNameToChatMap, v19, chatCopy);
  if (objc_msgSend_count(v20, v21, v22))
  {
    objc_msgSend_removeObjectsForKeys_(self->_threadNameToChatMap, v23, v20);
  }

  v24 = objc_msgSend_allKeysForObject_(self->_chatPersonIDToChatMap, v23, chatCopy);
  if (objc_msgSend_count(v24, v25, v26))
  {
    objc_msgSend_removeObjectsForKeys_(self->_chatPersonIDToChatMap, v27, v24);
  }

  if (objc_msgSend_chatStyle(chatCopy, v27, v28) == 43)
  {
    v30 = objc_msgSend_allKeysForObject_(self->_groupIDToChatMap, v29, chatCopy);
    if (objc_msgSend_count(v30, v31, v32))
    {
      objc_msgSend_removeObjectsForKeys_(self->_groupIDToChatMap, v33, v30);
    }

    objc_msgSend__removeFromGroupParticipantToChatsMap_(self, v33, chatCopy);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)generateUnusedChatIdentifierForGroupChatWithAccount:(id)account
{
  v4 = MEMORY[0x1E69A7F78];
  v5 = objc_msgSend_service(account, a2, account);
  v8 = objc_msgSend_internalName(v5, v6, v7);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A83503E8;
  v12[3] = &unk_1E7811040;
  v12[4] = self;
  v10 = objc_msgSend_generateUnusedChatIdentifierForGroupChatWithServiceName_chatWithChatIdentifierExists_(v4, v9, v8, v12);

  return v10;
}

- (BOOL)_hasChat:(id)chat forService:(id)service
{
  v34 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  serviceCopy = service;
  v10 = objc_msgSend_chatIdentifier(chatCopy, v8, v9);
  v13 = objc_msgSend_internalName(serviceCopy, v11, v12);
  objc_msgSend_chatStyle(chatCopy, v14, v15);
  v16 = IMCopyAnyServiceGUIDForChat();

  v18 = objc_msgSend_objectForKey_(self->_chatGUIDToChatMap, v17, v16);
  v19 = v18 != 0;

  v22 = objc_msgSend_iMessageService(IMServiceImpl, v20, v21);

  if (v22 == serviceCopy && v18)
  {
    chatGUIDToiMessageSentOrReceivedMap = self->_chatGUIDToiMessageSentOrReceivedMap;
    v26 = objc_msgSend_guid(chatCopy, v23, v24);
    v28 = objc_msgSend_objectForKey_(chatGUIDToiMessageSentOrReceivedMap, v27, v26);
    v19 = v28 != 0;

    v29 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = chatCopy;
      _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEFAULT, "iMessage map had entry for %@", &v32, 0xCu);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)_setChatHasCommunicatedOveriMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    chatGUIDToiMessageSentOrReceivedMap = self->_chatGUIDToiMessageSentOrReceivedMap;
    v16 = messageCopy;
    v8 = objc_msgSend_guid(messageCopy, v5, v6);
    v10 = objc_msgSend_objectForKey_(chatGUIDToiMessageSentOrReceivedMap, v9, v8);

    messageCopy = v16;
    if (!v10)
    {
      v13 = self->_chatGUIDToiMessageSentOrReceivedMap;
      v14 = objc_msgSend_guid(v16, v11, v12);
      objc_msgSend_setObject_forKey_(v13, v15, v16, v14);

      messageCopy = v16;
    }
  }
}

- (void)_setSimulatedChats:(id)chats
{
  chatsCopy = chats;
  objc_storeStrong(&self->_simulatedChats, chats);
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
  objc_msgSend_enumerateObjectsUsingBlock_(chatsCopy, v6, v9);
}

- (void)_removeFromGroupParticipantToChatsMap:(id)map
{
  v38 = *MEMORY[0x1E69E9840];
  mapCopy = map;
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
        if (objc_msgSend_containsObject_(v17, v18, mapCopy))
        {
          objc_msgSend_removeObject_(v17, v19, mapCopy);
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

- (void)_addChat:(id)chat participantSet:(id)set
{
  v24 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  setCopy = set;
  if (setCopy)
  {
    v11 = objc_msgSend_objectForKey_(self->_groupParticipantToChatsMap, v7, setCopy);
    if (!v11)
    {
      v11 = objc_msgSend_set(MEMORY[0x1E695DFA8], v9, v10);
      objc_msgSend_setObject_forKey_(self->_groupParticipantToChatsMap, v12, v11, setCopy);
    }

    objc_msgSend_addObject_(v11, v9, chatCopy);
    if (!self->_firstLoad)
    {
      v13 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_msgSend_guid(chatCopy, v14, v15);
        v18 = 138412802;
        v19 = v16;
        v20 = 2112;
        v21 = setCopy;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Added chat %@ to chatsForParticipant[%@], now %@", &v18, 0x20u);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_sortedParticipantIDHashForParticipants:(id)participants usesPersonCentricID:(BOOL)d fallbackToContactID:(BOOL)iD
{
  iDCopy = iD;
  dCopy = d;
  v52 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  if (IMAdditionalChatRegistryLoggingEnabled())
  {
    v8 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = participantsCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Incoming list of participants to get sorted and hashed: %@", buf, 0xCu);
    }
  }

  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v12 = objc_msgSend_count(participantsCopy, v10, v11);
  v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = participantsCopy;
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
          v30 = !dCopy;
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
            v37 = !iDCopy;
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

- (void)_handleTranslationEnabledChangedNotification:(id)notification
{
  notificationCopy = notification;
  v6 = objc_msgSend_loading(self, v4, v5);
  if ((v6 & 1) == 0)
  {
    v8 = objc_msgSend_object(notificationCopy, notificationCopy, v7);
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

- (void)_handleTranslationLanguageStatusChangedNotification:(id)notification
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = objc_msgSend_chatGUIDToChatMap(self, a2, notification, 0);
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

- (void)_handleTranslationSupportChangedNotification:(id)notification
{
  v3 = objc_msgSend_object(notification, a2, notification);
  if (v3)
  {
    v6 = v3;
    objc_msgSend__reloadChatItemsForTranslationEnabledChange(v3, v4, v5);
    v3 = v6;
  }
}

- (void)_handleChatParticipantsDidChange:(id)change
{
  v76 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v7 = objc_msgSend_object(changeCopy, v5, v6);
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

- (void)_updatePersonCentricIDForChat:(id)chat
{
  chatCopy = chat;
  v6 = objc_msgSend_contactStore(self, v4, v5);
  isBatchFetchingForLaunchCompleted = objc_msgSend_isBatchFetchingForLaunchCompleted(v6, v7, v8);

  if (isBatchFetchingForLaunchCompleted)
  {
    v12 = objc_msgSend__generatePersonCentricID(chatCopy, v10, v11);
    objc_msgSend__updatePersonCentricIDToChatMapForChat_toNewPersonCentricID_(self, v13, chatCopy, v12);
  }
}

- (void)_updatePersonCentricIDToChatMapForChat:(id)chat toNewPersonCentricID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  v12 = objc_msgSend_personCentricID(chatCopy, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_chatPersonIDToChatMap(self, v10, v11);
    objc_msgSend_removeObjectForKey_(v13, v14, v12);
  }

  objc_msgSend_setPersonCentricID_(chatCopy, v10, dCopy);
  v17 = chatCopy;
  if (v17)
  {
    v18 = objc_msgSend_chatPersonIDToChatMap(self, v15, v16);
    CFDictionarySetValue(v18, dCopy, v17);
  }

  v19 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = v12;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "Updated personCentricID from %@ to %@ for chat %@", &v21, 0x20u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_handleAddressBookChange:(id)change
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_userInfo(change, a2, change);
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

- (id)_ownerHandleStringsFromSubscription:(id)subscription
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_ownerHandles(subscription, a2, subscription);
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

- (id)_chatsMatchingHandles:(id)handles
{
  v46 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = handlesCopy;
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
            selfCopy = self;
            v24 = v5;
            v26 = v25 = v12;
            *buf = 138412546;
            v41 = v26;
            v42 = 2112;
            v43 = v14;
            _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "_chatsMatchingHandles: Found existing 1-1 chat %@ matching owner handle: %@", buf, 0x16u);

            v12 = v25;
            v5 = v24;
            self = selfCopy;
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

- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isKeyTransparencyEnabled = objc_msgSend_isKeyTransparencyEnabled(v7, v8, v9);

  if (isKeyTransparencyEnabled)
  {
    v13 = objc_msgSend_userInfo(notificationCopy, v11, v12);
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

    v23 = objc_msgSend_object(notificationCopy, v21, v22);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v27 = objc_msgSend_object(notificationCopy, v25, v26);
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

      v37 = objc_msgSend_object(notificationCopy, v35, v36);
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

- (void)_handleChatBotPropertiesDidChangeNotification:(id)notification
{
  v47 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v6 = objc_msgSend_userInfo(notificationCopy, v4, v5);
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

- (void)updateBrandLogo:(id)logo transferGuid:(id)guid chatIdentifier:(id)identifier
{
  v90 = *MEMORY[0x1E69E9840];
  logoCopy = logo;
  guidCopy = guid;
  identifierCopy = identifier;
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
      v86 = identifierCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "ChatBot Logo - Client is not a UI process, skip saving logo data for %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (logoCopy && (objc_msgSend_brandLogoDataFromChatIdentifier_(self, v7, identifierCopy), v8 = objc_claimAutoreleasedReturnValue(), isEqualToData = objc_msgSend_isEqualToData_(logoCopy, v9, v8), v8, (isEqualToData & 1) == 0))
  {
    v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v11, v12);
    v18 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v16, v17, *MEMORY[0x1E69A6FF8]);
    v71 = objc_msgSend_path(v18, v19, v20);

    v22 = v71;
    if (v71)
    {
      objc_msgSend_writeToFile_atomically_(logoCopy, v21, v71, 1);
      v70 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v23, v71, 0);
      v26 = objc_msgSend_sharedInstance(IMFileTransferCenter, v24, v25);
      v28 = v26;
      if (guidCopy)
      {
        objc_msgSend_createNewOutgoingFileTransferWithTransferGUID_localFileURL_(v26, v27, guidCopy, v70);

        v75 = guidCopy;
        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v86 = guidCopy;
            _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "ChatBot Logo - Existing transferGuid %@ from relay", buf, 0xCu);
          }

          v75 = guidCopy;
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

        objc_msgSend__updateBrandLogoGuid_chatIdentifier_(self, v39, v75, identifierCopy);
      }

      obj = objc_msgSend_cachedChatsWithIdentifier_(self, v35, identifierCopy);
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

            if (guidCopy)
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
      v75 = guidCopy;
    }

    guidCopy = v75;
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v86 = objc_msgSend_length(logoCopy, v14, v15);
      v87 = 2112;
      v88 = identifierCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "ChatBot Logo - Same data %lu is already stored, no need to update for %@", buf, 0x16u);
    }

LABEL_8:
  }

LABEL_42:

  v68 = *MEMORY[0x1E69E9840];
}

- (id)brandLogoDataFromChatIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_cachedChatsWithIdentifier_(self, a2, identifier);
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

- (id)brandLogoUrlFromChatIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_cachedChatsWithIdentifier_(self, a2, identifier);
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

- (void)_updateBrandLogoGuid:(id)guid chatIdentifier:(id)identifier
{
  v50 = *MEMORY[0x1E69E9840];
  guidCopy = guid;
  identifierCopy = identifier;
  objc_msgSend_cachedChatsWithIdentifier_(self, v7, identifierCopy);
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
        isEqualToString = objc_msgSend_isEqualToString_(v19, v20, guidCopy);

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
              v48 = guidCopy;
              _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "ChatBot Logo - Updated chatbot brand logo GUID in %@ properties, from %@ to %@", buf, 0x20u);
            }
          }

          objc_msgSend_setBrandLogoGuid_(v16, v22, guidCopy);
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

- (void)_chat:(id)_chat updateBrandLogo:(id)logo
{
  logoCopy = logo;
  _chatCopy = _chat;
  v9 = objc_msgSend_account(_chatCopy, v7, v8);
  v10 = IMCopyGUIDForChatOnAccount(_chatCopy, v9);

  IMComponentsFromChatGUID();
  v11 = 0;
  v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
  v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
  v20 = objc_msgSend_chatStyle(_chatCopy, v18, v19);
  v23 = objc_msgSend_account(_chatCopy, v21, v22);

  v26 = objc_msgSend_uniqueID(v23, v24, v25);
  objc_msgSend_sendBrandLogoUpdate_toChatID_identifier_style_account_(v17, v27, logoCopy, v10, v11, v20, v26);
}

- (void)_handleOffGridChangedNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(notification, a2, notification);
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

- (void)_handleOffGridInvitationReceivedNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(notification, a2, notification);
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

- (void)_handleOffGridStateChangedNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(notification, a2, notification);
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

- (void)_handleAvailabilityChangedNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(notification, a2, notification);
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

- (void)_handleAvailabilityInvitationReceivedNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(notification, a2, notification);
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

- (void)_handleAvailabilityStateChangedNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(notification, a2, notification);
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

- (void)_handleStatusChangedForSubscription:(id)subscription
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__chatsMatchingStatusSubscription_(self, a2, subscription);
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

- (void)_handleStatusInvitationReceivedForSubscription:(id)subscription
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__chatsMatchingStatusSubscription_(self, a2, subscription);
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

- (void)_handleStatusStateChangedForSubscription:(id)subscription
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__chatsMatchingStatusSubscription_(self, a2, subscription);
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

- (id)_chatsMatchingStatusSubscription:(id)subscription
{
  v48 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  if (objc_msgSend_isPersonalStatusSubscription(subscriptionCopy, v5, v6))
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
    v36 = subscriptionCopy;
    v11 = objc_msgSend__ownerHandleStringsFromSubscription_(self, v7, subscriptionCopy);
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
              selfCopy = self;
              v28 = v12;
              v30 = v29 = v10;
              *buf = 138412546;
              v43 = v30;
              v44 = 2112;
              v45 = v18;
              _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "_chatsMatchingStatusSubscription: Found existing 1-1 chat %@ matching owner handle: %@", buf, 0x16u);

              v10 = v29;
              v12 = v28;
              self = selfCopy;
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
    subscriptionCopy = v36;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_unreadCountControllerUpdated:(id)updated
{
  v61 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v7, v8, v9);

  if (isUnreadCountRefactorEnabled)
  {
    v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
    objc_msgSend___mainThreadPostNotificationName_object_(v13, v14, @"__kIMChatRegistryUnreadCountChangedNotification", 0);

    v17 = objc_msgSend_userInfo(updatedCopy, v15, v16);
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

- (id)activeCallForConversationUUID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
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
        isEqual = objc_msgSend_isEqual_(v24, v25, dCopy);

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

- (id)_existingChatForTUConversation:(id)conversation
{
  v28 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
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
        if (objc_msgSend_chatStyle(v14, v9, v10) == 43 && objc_msgSend_mapsToTUConversation_(v14, v9, conversationCopy))
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v24 = v14;
              v25 = 2112;
              v26 = conversationCopy;
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

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = conversationCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "stateChangedForConversation %@", &v11, 0xCu);
    }
  }

  objc_msgSend__postMultiWayStateChangedNotification_(self, v8, conversationCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  conversationCopy = conversation;
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

  objc_msgSend__postMultiWayStateChangedNotification_(self, v8, conversationCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = conversationCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "removedActiveConversation %@", &v11, 0xCu);
    }
  }

  objc_msgSend__postMultiWayStateChangedNotification_(self, v8, conversationCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)conversationManager:(id)manager activitySessionsChangedForConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = conversationCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "activitySessionsChangedForConversation %@", &v11, 0xCu);
    }
  }

  objc_msgSend__postMultiWayStateChangedNotification_(self, v8, conversationCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = conversationCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "remoteMembersChangedForConversation %@", &v11, 0xCu);
    }
  }

  objc_msgSend__postMultiWayStateChangedNotification_(self, v8, conversationCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_postMultiWayStateChangedNotification:(id)notification
{
  v28[2] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v6 = objc_msgSend_messagesGroupUUID(notificationCopy, v4, v5);
  v9 = objc_msgSend_UUIDString(v6, v7, v8);

  if (v9)
  {
    v28[0] = v9;
    v27[0] = @"__kIMChatMultiWayMessagesGroupID";
    v27[1] = @"__kIMChatMultiWayMessagesConversationUUID";
    v12 = objc_msgSend_UUID(notificationCopy, v10, v11);
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

- (void)markChatsAsReadFilteredUsingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v11 = objc_msgSend_daemonController(self, v5, v6);
  v9 = objc_msgSend_synchronousRemoteDaemon(v11, v7, v8);
  objc_msgSend_markChatsAsReadFilteredUsingPredicate_(v9, v10, predicateCopy);
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

- (id)cachedChatsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  objc_msgSend__enumerateChatGUIDPermutationsForChatIdentifier_includingInstantMessageStyle_includingGroupStyle_includingRoomStyle_usingBlock_(self, v5, identifierCopy, 1, 0, 0, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_enumerateChatGUIDPermutationsForChatIdentifier:(id)identifier includingInstantMessageStyle:(BOOL)style includingGroupStyle:(BOOL)groupStyle includingRoomStyle:(BOOL)roomStyle usingBlock:(id)block
{
  roomStyleCopy = roomStyle;
  groupStyleCopy = groupStyle;
  styleCopy = style;
  v47 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  blockCopy = block;
  v15 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v13, v14);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v15, v16, v17);

  if (isOneChatEnabled)
  {
    v45 = 0;
    if (!styleCopy || (v21 = *MEMORY[0x1E69A7AC8], v22 = IMCopyAnyServiceGUIDForChat(), blockCopy[2](blockCopy, v22, &v45), v22, (v45 & 1) == 0))
    {
      if (!groupStyleCopy || (v23 = *MEMORY[0x1E69A7AC8], v24 = IMCopyAnyServiceGUIDForChat(), blockCopy[2](blockCopy, v24, &v45), v24, (v45 & 1) == 0))
      {
        if (roomStyleCopy)
        {
          v25 = *MEMORY[0x1E69A7AC8];
          v26 = IMCopyAnyServiceGUIDForChat();
          blockCopy[2](blockCopy, v26, &v45);
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
        if (styleCopy)
        {
          v34 = *(*(&v41 + 1) + 8 * v32);
          v35 = IMCopyGUIDForChat();
          blockCopy[2](blockCopy, v35, &v45);

          if (v45)
          {
            break;
          }
        }

        if (groupStyleCopy)
        {
          v36 = IMCopyGUIDForChat();
          blockCopy[2](blockCopy, v36, &v45);

          if (v45)
          {
            break;
          }
        }

        if (roomStyleCopy)
        {
          v37 = IMCopyGUIDForChat();
          blockCopy[2](blockCopy, v37, &v45);

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

- (id)_possiblyUnregisteredCachedChatWithHandle:(id)handle
{
  v46 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v7 = objc_msgSend_ID(handleCopy, v5, v6);
  v10 = objc_msgSend_account(handleCopy, v8, v9);
  v13 = objc_msgSend_uniqueID(v10, v11, v12);
  v15 = objc_msgSend__possiblyUnregisteredCachedChatWithIdentifier_style_account_(self, v14, v7, 45, v13);

  if (!v15)
  {
    v18 = objc_msgSend__chatSiblings(handleCopy, v16, v17);
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

- (id)_possiblyUnregisteredCachedChatWithHandles:(id)handles style:(unsigned __int8)style groupID:(id)d displayName:(id)name joinedChatsOnly:(BOOL)only
{
  onlyCopy = only;
  styleCopy = style;
  v68 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  dCopy = d;
  nameCopy = name;
  v59 = handlesCopy;
  if (objc_msgSend_count(handlesCopy, v13, v14))
  {
    v17 = objc_msgSend_allChatsInProcess(self, v15, v16);
    if (objc_msgSend_length(nameCopy, v18, v19))
    {
      v20 = nameCopy;
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
        if (objc_msgSend_chatStyle(v29, v24, v25) != styleCopy)
        {
          goto LABEL_28;
        }

        v30 = objc_msgSend_displayName(v29, v24, v25);
        v33 = objc_msgSend_length(v30, v31, v32);
        if (dCopy && v33 && (objc_msgSend_groupID(v29, v34, v35), (v36 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v39 = v36;
          v40 = objc_msgSend_groupID(v29, v37, v38);
          isEqualToString = objc_msgSend_isEqualToString_(dCopy, v41, v40);

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
          if (!onlyCopy || objc_msgSend_joinState(v29, v51, v52) >= 2)
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
    v21 = nameCopy;
  }

  v57 = *MEMORY[0x1E69E9840];

  return v56;
}

- (id)_possiblyUnregisteredCachedChatForRoom:(id)room onAccount:(id)account
{
  roomCopy = room;
  v9 = objc_msgSend_uniqueID(account, v7, v8);
  v11 = objc_msgSend__possiblyUnregisteredCachedChatWithIdentifier_style_account_(self, v10, roomCopy, 35, v9);

  return v11;
}

- (id)_cachedChatWithGUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (objc_msgSend_length(dCopy, v5, v6))
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
    v12 = objc_msgSend_objectForKey_(v13, v14, dCopy);

    v15 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = dCopy;
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

- (id)_cachedChatWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  objc_msgSend__enumerateChatGUIDPermutationsForChatIdentifier_includingInstantMessageStyle_includingGroupStyle_includingRoomStyle_usingBlock_(self, v5, identifierCopy, 1, 1, 0, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_cachedChatWithIdentifier:(id)identifier style:(unsigned __int8)style
{
  styleCopy = style;
  identifierCopy = identifier;
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
  objc_msgSend__enumerateChatGUIDPermutationsForChatIdentifier_includingInstantMessageStyle_includingGroupStyle_includingRoomStyle_usingBlock_(self, v7, identifierCopy, styleCopy == 45, styleCopy == 43, styleCopy == 35, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)_cachedChatWithHandle:(id)handle
{
  handleCopy = handle;
  v7 = objc_msgSend_ID(handleCopy, v5, v6);
  v9 = objc_msgSend__cachedChatWithIdentifier_style_(self, v8, v7, 45);

  if (!v9)
  {
    v12 = objc_msgSend_ID(handleCopy, v10, v11);
    v9 = objc_msgSend__cachedChatWithPersonID_(self, v13, v12);

    if (objc_msgSend_chatStyle(v9, v14, v15) == 45)
    {
      objc_msgSend_setRecipient_(v9, v16, handleCopy);
    }

    else
    {

      v9 = 0;
    }
  }

  return v9;
}

- (id)_cachedChatWithGroupID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_groupIDToChatMap(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, dCopy);

  if (v9)
  {
    v12 = objc_msgSend_groupID(v9, v10, v11);
    isEqualToString = objc_msgSend_isEqualToString_(v12, v13, dCopy);

    if ((isEqualToString & 1) == 0)
    {
      v15 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2764(dCopy, v9, v15);
      }

      v18 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v16, v17);
      objc_msgSend_forceAutoBugCaptureWithSubType_errorPayload_type_context_(v18, v19, @"GroupIDMismatch", 0, @"ChatProperties", @"GroupIDDoesNotMatch");
    }
  }

  return v9;
}

- (id)_cachedChatWithDisplayName:(id)name
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
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
        isEqualToString = objc_msgSend_isEqualToString_(v15, v16, nameCopy);

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

- (id)_cachedChatsWithDisplayName:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  nameCopy = name;
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
        isEqualToString = objc_msgSend_isEqualToString_(v17, v18, nameCopy);

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

- (id)_cachedChatWithPersonID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_chatPersonIDToChatMap(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, dCopy);

  return v9;
}

- (id)_cachedChatsWithMessage:(id)message
{
  v27 = *MEMORY[0x1E69E9840];
  messageCopy = message;
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
        v17 = objc_msgSend_guid(messageCopy, v11, v12);
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

- (id)_cachedChatsWithMessageGUID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
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
        v16 = objc_msgSend_messageForGUID_(v15, v11, dCopy);

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

- (id)unblackholeChatWithHandles:(id)handles
{
  v53 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = handlesCopy;
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_count(handlesCopy, v7, v8);
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Request to load chat with handleIDs array %@ of count %lu", buf, 0x16u);
    }
  }

  if (handlesCopy)
  {
    v41 = handlesCopy;
    if (objc_msgSend_count(handlesCopy, v4, v5))
    {
      v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v12 = handlesCopy;
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

    handlesCopy = v41;
  }

  else
  {
    v38 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (void)_chat:(id)_chat sendReadReceiptForMessages:(id)messages
{
  v54 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messagesCopy = messages;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v51 = _chatCopy;
      v52 = 2112;
      v53 = messagesCopy;
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
  v23 = objc_msgSend_account(_chatCopy, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(_chatCopy, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      if (objc_msgSend_count(messagesCopy, v26, v27))
      {
        v48 = 0;
        v49 = 0;
        sub_1A839DC70(self, _chatCopy, &v49, &v48);
        v28 = v49;
        v29 = v48;
        v30 = IMCreateSerializedItemsFromArray();
        v33 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v36 = objc_msgSend_remoteDaemon(v33, v34, v35);
        v39 = objc_msgSend_chatStyle(_chatCopy, v37, v38);
        v42 = objc_msgSend_unreadMessageCount(_chatCopy, v40, v41);
        objc_msgSend_markReadForIDs_style_onServices_messages_clientUnreadCount_(v36, v43, v28, v39, v29, v30, v42);
      }
    }
  }

LABEL_13:

  v44 = *MEMORY[0x1E69E9840];
}

- (void)_chat_sendReadReceiptForAllMessages:(id)messages
{
  v52 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v49 = messagesCopy;
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
  v20 = objc_msgSend_account(messagesCopy, v16, v17);
  if (v20)
  {
    v21 = objc_msgSend_chatIdentifier(messagesCopy, v18, v19);
    v22 = v21 == 0;

    if (!v22)
    {
      v23 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_msgSend_account(messagesCopy, v24, v25);
        *buf = 138412546;
        v49 = messagesCopy;
        v50 = 2112;
        v51 = v26;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Sending read receipt for all messages in chat: %@   for account: %@", buf, 0x16u);
      }

      v46 = 0;
      v47 = 0;
      sub_1A839DC70(self, messagesCopy, &v47, &v46);
      v27 = v47;
      v28 = v46;
      v31 = objc_msgSend_sharedController(IMDaemonController, v29, v30);
      v34 = objc_msgSend_remoteDaemon(v31, v32, v33);
      v37 = objc_msgSend_chatStyle(messagesCopy, v35, v36);
      v40 = objc_msgSend_unreadMessageCount(messagesCopy, v38, v39);
      objc_msgSend_markReadForIDs_style_onServices_messages_clientUnreadCount_setUnreadCountToZero_(v34, v41, v27, v37, v28, 0, v40, 1);
    }
  }

LABEL_14:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_chat_markLastMessageAsUnread:(id)unread
{
  v50 = *MEMORY[0x1E69E9840];
  unreadCopy = unread;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v47 = unreadCopy;
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
  v20 = objc_msgSend_lastIncomingFinishedMessage(unreadCopy, v16, v17);
  if (!v20)
  {
    v21 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v47 = "[IMChatRegistry(IMChatRegistry_Sending) _chat_markLastMessageAsUnread:]";
      v48 = 2112;
      v49 = unreadCopy;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", buf, 0x16u);
    }

    v20 = objc_msgSend_lastFinishedMessage(unreadCopy, v22, v23);
  }

  v24 = objc_msgSend_guid(v20, v18, v19);
  if (objc_msgSend_isFromMe(v20, v25, v26))
  {

    v24 = 0;
  }

  else
  {
    objc_msgSend_setMarkingUnread_(unreadCopy, v27, 1);
  }

  v44 = 0;
  v45 = 0;
  sub_1A839DC70(self, unreadCopy, &v45, &v44);
  v28 = v45;
  v29 = v44;
  v32 = objc_msgSend_sharedController(IMDaemonController, v30, v31);
  v35 = objc_msgSend_remoteDaemon(v32, v33, v34);
  v38 = objc_msgSend_chatStyle(unreadCopy, v36, v37);
  objc_msgSend_markUnreadForMessageGUID_IDs_style_services_(v35, v39, v24, v28, v38, v29);

LABEL_17:
  v40 = *MEMORY[0x1E69E9840];
}

- (void)_chat_markMessageAsUnread:(id)unread message:(id)message
{
  v48 = *MEMORY[0x1E69E9840];
  unreadCopy = unread;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v47 = unreadCopy;
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
  if (messageCopy)
  {
    if (objc_msgSend_isFromMe(messageCopy, v19, v20))
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

    else if (objc_msgSend_isRead(messageCopy, v21, v22))
    {
      objc_msgSend_setMarkingUnread_(unreadCopy, v25, 1);
      v23 = objc_msgSend_guid(messageCopy, v26, v27);
      v44 = 0;
      v45 = 0;
      sub_1A839DC70(self, unreadCopy, &v45, &v44);
      v28 = v45;
      v29 = v44;
      v32 = objc_msgSend_sharedController(IMDaemonController, v30, v31);
      v35 = objc_msgSend_remoteDaemon(v32, v33, v34);
      v38 = objc_msgSend_chatStyle(unreadCopy, v36, v37);
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

- (void)_chat_recoverFromJunk:(id)junk
{
  v39 = *MEMORY[0x1E69E9840];
  junkCopy = junk;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v35 = 138412290;
      v36 = junkCopy;
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
  v19 = objc_msgSend_lastIncomingFinishedMessage(junkCopy, v15, v16);
  if (!v19)
  {
    v20 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136315394;
      v36 = "[IMChatRegistry(IMChatRegistry_Sending) _chat_recoverFromJunk:]";
      v37 = 2112;
      v38 = junkCopy;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", &v35, 0x16u);
    }

    v19 = objc_msgSend_lastFinishedMessage(junkCopy, v21, v22);
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

- (void)_chatDidRecoverFromJunk:(id)junk
{
  junkCopy = junk;
  v13 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = objc_msgSend_remoteDaemon(v13, v6, v7);
  v11 = objc_msgSend_guid(junkCopy, v9, v10);

  objc_msgSend_chatDidRecoverFromJunk_(v8, v12, v11);
}

- (void)_chat_acceptChat:(id)chat
{
  v39 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v35 = 138412290;
      v36 = chatCopy;
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
  v19 = objc_msgSend_lastIncomingFinishedMessage(chatCopy, v15, v16);
  if (!v19)
  {
    v20 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136315394;
      v36 = "[IMChatRegistry(IMChatRegistry_Sending) _chat_acceptChat:]";
      v37 = 2112;
      v38 = chatCopy;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", &v35, 0x16u);
    }

    v19 = objc_msgSend_lastFinishedMessage(chatCopy, v21, v22);
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

- (void)_chat_storeItem:(id)item inChat:(id)chat
{
  v45 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  v7 = chatCopy;
  if (!itemCopy || !chatCopy)
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
      v44 = itemCopy;
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
        v42 = itemCopy;
        v43 = 2112;
        v44 = v7;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Storing item: %@ in chat: %@", &v41, 0x16u);
      }

      v29 = objc_msgSend_sharedController(IMDaemonController, v27, v28);
      v32 = objc_msgSend_remoteDaemon(v29, v30, v31);
      v35 = objc_msgSend_guid(v7, v33, v34);
      objc_msgSend_storeItem_inChatGUID_(v32, v36, itemCopy, v35);
    }
  }

LABEL_16:

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)_chat sendPlayedReceiptForMessage:(id)message
{
  v54 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v49 = _chatCopy;
      v50 = 2112;
      v51 = messageCopy;
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
  v23 = objc_msgSend_account(_chatCopy, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(_chatCopy, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_msgSend_account(_chatCopy, v27, v28);
        *buf = 138412802;
        v49 = messageCopy;
        v50 = 2112;
        v51 = _chatCopy;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Sending played receipt for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v46 = 0;
      v47 = 0;
      sub_1A839DC70(self, _chatCopy, &v47, &v46);
      v30 = v47;
      v33 = v46;
      if (messageCopy)
      {
        v34 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v37 = objc_msgSend_remoteDaemon(v34, v35, v36);
        v40 = objc_msgSend_chatStyle(_chatCopy, v38, v39);
        objc_msgSend_markPlayedForIDs_style_onServices_message_(v37, v41, v30, v40, v33, messageCopy);
      }
    }
  }

LABEL_16:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)_chat setPlayedExpressiveSendForMessage:(id)message
{
  v54 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v49 = _chatCopy;
      v50 = 2112;
      v51 = messageCopy;
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
  v23 = objc_msgSend_account(_chatCopy, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(_chatCopy, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_msgSend_account(_chatCopy, v27, v28);
        *buf = 138412802;
        v49 = messageCopy;
        v50 = 2112;
        v51 = _chatCopy;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Setting played expressive send for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v46 = 0;
      v47 = 0;
      sub_1A839DC70(self, _chatCopy, &v47, &v46);
      v30 = v47;
      v33 = v46;
      if (messageCopy)
      {
        v34 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v37 = objc_msgSend_remoteDaemon(v34, v35, v36);
        v40 = objc_msgSend_chatStyle(_chatCopy, v38, v39);
        objc_msgSend_markPlayedExpressiveSendForIDs_style_onServices_message_(v37, v41, v30, v40, v33, messageCopy);
      }
    }
  }

LABEL_16:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)_chat sendSavedReceiptForMessage:(id)message
{
  v54 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v49 = _chatCopy;
      v50 = 2112;
      v51 = messageCopy;
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
  v23 = objc_msgSend_account(_chatCopy, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(_chatCopy, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_msgSend_account(_chatCopy, v27, v28);
        *buf = 138412802;
        v49 = messageCopy;
        v50 = 2112;
        v51 = _chatCopy;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Sending saved receipt for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v46 = 0;
      v47 = 0;
      sub_1A839DC70(self, _chatCopy, &v47, &v46);
      v30 = v47;
      v33 = v46;
      if (messageCopy)
      {
        v34 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v37 = objc_msgSend_remoteDaemon(v34, v35, v36);
        v40 = objc_msgSend_chatStyle(_chatCopy, v38, v39);
        objc_msgSend_markSavedForIDs_style_onServices_message_(v37, v41, v30, v40, v33, messageCopy);
      }
    }
  }

LABEL_16:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)_chat sendNotifyRecipientCommandForMessage:(id)message
{
  v54 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v49 = _chatCopy;
      v50 = 2112;
      v51 = messageCopy;
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
  v23 = objc_msgSend_account(_chatCopy, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_chatIdentifier(_chatCopy, v21, v22);
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_msgSend_account(_chatCopy, v27, v28);
        *buf = 138412802;
        v49 = messageCopy;
        v50 = 2112;
        v51 = _chatCopy;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "Sending notify recipient commadn for message %@ in chat: %@   for account: %@", buf, 0x20u);
      }

      v46 = 0;
      v47 = 0;
      sub_1A839DC70(self, _chatCopy, &v47, &v46);
      v30 = v47;
      v33 = v46;
      if (messageCopy)
      {
        v34 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v37 = objc_msgSend_remoteDaemon(v34, v35, v36);
        v40 = objc_msgSend_chatStyle(_chatCopy, v38, v39);
        objc_msgSend_sendNotifyRecipientCommandForIDs_style_onServices_message_(v37, v41, v30, v40, v33, messageCopy);
      }
    }
  }

LABEL_16:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_markHasHadSuccessfulQueryForChat:(id)chat
{
  v49 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v46 = chatCopy;
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
  v20 = objc_msgSend_account(chatCopy, v16, v17);
  if (v20)
  {
    v21 = objc_msgSend_chatIdentifier(chatCopy, v18, v19);
    v22 = v21 == 0;

    if (!v22)
    {
      v23 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_msgSend_account(chatCopy, v24, v25);
        *buf = 138412546;
        v46 = chatCopy;
        v47 = 2112;
        v48 = v26;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "Marking chat as had successful ID query in chat: %@   for account: %@", buf, 0x16u);
      }

      v43 = 0;
      v44 = 0;
      sub_1A839DC70(self, chatCopy, &v44, &v43);
      v27 = v44;
      v28 = v43;
      v31 = objc_msgSend_sharedController(IMDaemonController, v29, v30);
      v34 = objc_msgSend_remoteDaemon(v31, v32, v33);
      v37 = objc_msgSend_chatStyle(chatCopy, v35, v36);
      objc_msgSend_markHasHadSuccessfulQueryForIDs_style_onServices_(v34, v38, v27, v37, v28);
    }
  }

LABEL_14:

  v39 = *MEMORY[0x1E69E9840];
}

- (id)_eventForMessage:(id)message
{
  messageCopy = message;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!messageCopy || (objc_msgSend_isTypingMessage(messageCopy, v4, v5) & 1) != 0)
  {
    goto LABEL_35;
  }

  v9 = objc_msgSend_balloonBundleID(messageCopy, v7, v8);
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

  v14 = objc_msgSend_balloonBundleID(messageCopy, v12, v13);
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

  v19 = objc_msgSend_balloonBundleID(messageCopy, v17, v18);
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

  v24 = objc_msgSend_balloonBundleID(messageCopy, v22, v23);
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

  v29 = objc_msgSend_expressiveSendStyleID(messageCopy, v27, v28);
  if (objc_msgSend_length(v29, v30, v31))
  {
    v34 = objc_msgSend_expressiveSendStyleID(messageCopy, v32, v33);
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

  v39 = objc_msgSend_expressiveSendStyleID(messageCopy, v37, v38);
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

  v45 = objc_msgSend_expressiveSendStyleID(messageCopy, v42, v43);
  if (!objc_msgSend_length(v45, v46, v47))
  {

    goto LABEL_35;
  }

  v50 = objc_msgSend_expressiveSendStyleID(messageCopy, v48, v49);
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

- (void)_trackUsageForMessage:(id)message
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__eventForMessage_(self, a2, message);
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

- (void)_setReplyToGuidOnMessage:(id)message forChat:(id)chat
{
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v8 = objc_msgSend_lastFinishedMessageItem(chat, v6, v7);
  v11 = objc_msgSend_guid(v8, v9, v10);

  objc_msgSend_setReplyToGUID_(messageCopy, v12, v11);
  v13 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_msgSend_guid(messageCopy, v14, v15);
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

- (void)_setMeCardSharingOnMessage:(id)message forChat:(id)chat
{
  *&v24[5] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  chatCopy = chat;
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
      shouldShareMeCardForAlwaysAskAudienceWithChat = objc_msgSend__shouldShareMeCardForAlwaysAskAudienceWithChat_(self, v14, chatCopy);
    }

    else
    {
      shouldShareMeCardForAlwaysAskAudienceWithChat = objc_msgSend__shouldShareMeCardForContactsOnlyAudienceWithChat_(self, v14, chatCopy);
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
    v20 = objc_msgSend_guid(messageCopy, v18, v19);
    v23 = 67109378;
    v24[0] = v16;
    LOWORD(v24[1]) = 2112;
    *(&v24[1] + 2) = v20;
    _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Setting meCard sharing preference %d on message %@", &v23, 0x12u);
  }

  objc_msgSend_setShouldSendMeCard_(messageCopy, v21, v16);
  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldShareMeCardForContactsOnlyAudienceWithChat:(id)chat
{
  v30 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if (objc_msgSend_allParticipantsAreContacts(chatCopy, v4, v5))
  {
    v8 = 1;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = objc_msgSend_participants(chatCopy, v6, v7, 0);
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

- (BOOL)_shouldShareMeCardForAlwaysAskAudienceWithChat:(id)chat
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = objc_msgSend_participants(chat, a2, chat, 0);
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

- (void)_chat:(id)_chat sendMessage:(id)message
{
  messageCopy = message;
  _chatCopy = _chat;
  v11 = objc_msgSend_account(_chatCopy, v8, v9);
  objc_msgSend__chat_sendMessage_withAccount_(self, v10, _chatCopy, messageCopy, v11);
}

- (void)_chat:(id)_chat sendMessage:(id)message withAccount:(id)account
{
  v173 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  messageCopy = message;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v170 = _chatCopy;
      v171 = 2112;
      v172 = messageCopy;
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

  if (messageCopy)
  {
    v26 = v17;
  }

  else
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    if ((objc_msgSend_supportsSendingTypingIndicators(_chatCopy, v24, v25) & 1) == 0 && objc_msgSend_isTypingMessage(messageCopy, v27, v28))
    {
      v29 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEFAULT, "Bailing sending message as its a typing message and service does not support typing", buf, 2u);
      }

      goto LABEL_63;
    }

    v29 = IMCopyGUIDForChatOnAccount(_chatCopy, accountCopy);
    IMComponentsFromChatGUID();
    v30 = 0;
    if (!accountCopy || !v30)
    {
LABEL_62:

LABEL_63:
      goto LABEL_64;
    }

    v166 = v30;
    v33 = objc_msgSend_copy(messageCopy, v31, v32);
    objc_msgSend__updateError_(v33, v34, 0);
    v37 = objc_msgSend_loginIMHandle(accountCopy, v35, v36);
    objc_msgSend__updateSender_(v33, v38, v37);

    if (objc_msgSend_scheduleType(v33, v39, v40) != 2)
    {
      v43 = objc_msgSend_flags(messageCopy, v41, v42);
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
    v53 = objc_msgSend_supportsEncryption(_chatCopy, v51, v52);
    objc_msgSend_setEncrypted_(v50, v54, v53);
    objc_msgSend__setMeCardSharingOnMessage_forChat_(self, v55, v50, _chatCopy);
    if (objc_msgSend_isTypingMessage(v50, v56, v57))
    {
      v60 = objc_msgSend_customTypingIndicatorIcon(messageCopy, v58, v59);
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

    v167 = objc_msgSend_notificationIDSTokenURI(messageCopy, v66, v67);
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

            v114 = objc_msgSend_messageItemForGUID_(_chatCopy, v113, v165);
            v117 = objc_msgSend_expressiveSendStyleID(v114, v115, v116);
            objc_msgSend_setAssociatedMessageEffect_(v109, v118, v117);
          }
        }

        objc_msgSend__setReplyToGuidOnMessage_forChat_(self, v108, v50, _chatCopy);
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
        v138 = objc_msgSend_chatStyle(_chatCopy, v136, v137);
        v141 = objc_msgSend_uniqueID(accountCopy, v139, v140);
        objc_msgSend_sendMessage_toChatID_identifier_style_account_(v135, v142, v50, v29, v166, v138, v141);

        if (objc_msgSend_isChatBot(_chatCopy, v143, v144) && (objc_msgSend_cachedBusinessName(_chatCopy, v145, v146), v147 = objc_claimAutoreleasedReturnValue(), v148 = v147 == 0, v147, v148))
        {
          objc_msgSend__asyncSetChatBotUserActivityForChat_message_(self, v145, _chatCopy, messageCopy);
        }

        else
        {
          objc_msgSend_setUserActivityForChat_message_orHandles_(self, v145, _chatCopy, messageCopy, 0);
        }

        v151 = objc_msgSend_service(v50, v149, v150);
        v154 = objc_msgSend_iMessageService(IMServiceImpl, v152, v153);
        v157 = objc_msgSend_internalName(v154, v155, v156);
        isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v151, v158, v157);

        if (isEqualToIgnoringCase)
        {
          v162 = objc_msgSend_sharedRegistry(IMChatRegistry, v160, v161);
          objc_msgSend__setChatHasCommunicatedOveriMessage_(v162, v163, _chatCopy);
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

- (void)_asyncSetChatBotUserActivityForChat:(id)chat message:(id)message
{
  chatCopy = chat;
  messageCopy = message;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v10 = objc_msgSend_businessHandle(chatCopy, v8, v9);
  v13 = objc_msgSend_normalizedID(v10, v11, v12);

  v16 = objc_msgSend_sharedInstance(IMHandleRegistrar, v14, v15);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1A83A103C;
  v28[3] = &unk_1E7813F50;
  v31 = v32;
  v28[4] = self;
  v17 = chatCopy;
  v29 = v17;
  v18 = messageCopy;
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

- (void)_chat:(id)_chat sendEditedMessageItem:(id)item previousMessageItem:(id)messageItem partIndex:(int64_t)index editType:(unint64_t)type backwardCompatabilityText:(id)text
{
  _chatCopy = _chat;
  itemCopy = item;
  textCopy = text;
  messageItemCopy = messageItem;
  v17 = objc_msgSend_account(_chatCopy, v15, v16);
  v18 = IMCopyGUIDForChatOnAccount(_chatCopy, v17);

  v46 = 0;
  v43 = v18;
  IMComponentsFromChatGUID();
  v19 = 0;
  v22 = objc_msgSend_chatStyle(_chatCopy, v20, v21);
  v25 = objc_msgSend_account(_chatCopy, v23, v24);
  v28 = objc_msgSend_uniqueID(v25, v26, v27);

  v29 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_DEFAULT, "Asking daemon to send edited message", buf, 2u);
  }

  v32 = objc_msgSend_sharedController(IMDaemonController, v30, v31);
  v35 = objc_msgSend_remoteDaemon(v32, v33, v34);
  objc_msgSend_sendEditedMessage_previousMessage_partIndex_editType_toChatIdentifier_style_account_backwardCompatabilityText_(v35, v36, itemCopy, messageItemCopy, index, type, v19, v22, v28, textCopy);

  if (type == 2)
  {
    v39 = objc_msgSend_message(itemCopy, v37, v38);
    objc_msgSend_setUserActivityForChat_message_orHandles_(self, v40, _chatCopy, v39, 0);
  }
}

- (void)_chat:(id)_chat resendEditedMessageItem:(id)item partIndex:(int64_t)index withBackwardCompatabilityText:(id)text
{
  itemCopy = item;
  textCopy = text;
  _chatCopy = _chat;
  v14 = objc_msgSend_account(_chatCopy, v12, v13);
  v15 = IMCopyGUIDForChatOnAccount(_chatCopy, v14);

  v41 = 0;
  IMComponentsFromChatGUID();
  v16 = 0;
  v19 = objc_msgSend_chatStyle(_chatCopy, v17, v18);
  v22 = objc_msgSend_account(_chatCopy, v20, v21);

  v25 = objc_msgSend_uniqueID(v22, v23, v24);

  v28 = objc_msgSend_retractedPartIndexes(itemCopy, v26, v27);
  v30 = objc_msgSend_containsIndex_(v28, v29, index);

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
  objc_msgSend_sendEditedMessage_previousMessage_partIndex_editType_toChatIdentifier_style_account_backwardCompatabilityText_(v38, v39, itemCopy, itemCopy, index, v32, v16, v19, v25, textCopy);
}

- (void)_chat:(id)_chat cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type
{
  dCopy = d;
  destinationsCopy = destinations;
  _chatCopy = _chat;
  v13 = objc_msgSend_account(_chatCopy, v11, v12);
  v14 = IMCopyGUIDForChatOnAccount(_chatCopy, v13);

  IMComponentsFromChatGUID();
  v17 = objc_msgSend_account(_chatCopy, v15, v16);
}

- (void)_chat:(id)_chat editScheduledMessageItem:(id)item previousMessageItem:(id)messageItem partIndex:(int64_t)index editType:(unint64_t)type
{
  messageItemCopy = messageItem;
  itemCopy = item;
  _chatCopy = _chat;
  v16 = objc_msgSend_account(_chatCopy, v14, v15);
  v17 = IMCopyGUIDForChatOnAccount(_chatCopy, v16);

  v37 = 0;
  IMComponentsFromChatGUID();
  v18 = 0;
  v21 = objc_msgSend_chatStyle(_chatCopy, v19, v20);
  v24 = objc_msgSend_account(_chatCopy, v22, v23);

  v27 = objc_msgSend_uniqueID(v24, v25, v26);

  v28 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "Asking daemon to send edited scheduled message", buf, 2u);
  }

  v31 = objc_msgSend_sharedController(IMDaemonController, v29, v30);
  v34 = objc_msgSend_remoteDaemon(v31, v32, v33);
  objc_msgSend_sendEditedScheduledMessage_previousMessage_partIndex_editType_toChatIdentifier_style_account_(v34, v35, itemCopy, messageItemCopy, index, type, v18, v21, v27);
}

- (void)_chat:(id)_chat editScheduledMessageItem:(id)item previousMessageItem:(id)messageItem retractingPartIndexes:(id)indexes
{
  indexesCopy = indexes;
  messageItemCopy = messageItem;
  itemCopy = item;
  _chatCopy = _chat;
  v15 = objc_msgSend_account(_chatCopy, v13, v14);
  v16 = IMCopyGUIDForChatOnAccount(_chatCopy, v15);

  v36 = 0;
  IMComponentsFromChatGUID();
  v17 = 0;
  v20 = objc_msgSend_chatStyle(_chatCopy, v18, v19);
  v23 = objc_msgSend_account(_chatCopy, v21, v22);

  v26 = objc_msgSend_uniqueID(v23, v24, v25);

  v27 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_DEFAULT, "Asking daemon to send edited scheduled message retracting part indexes", v35, 2u);
  }

  v30 = objc_msgSend_sharedController(IMDaemonController, v28, v29);
  v33 = objc_msgSend_remoteDaemon(v30, v31, v32);
  objc_msgSend_sendEditedScheduledMessage_previousMessage_retractingPartIndexes_toChatIdentifier_style_account_(v33, v34, itemCopy, messageItemCopy, indexesCopy, v17, v20, v26);
}

- (void)_chat:(id)_chat repositionSticker:(id)sticker
{
  _chatCopy = _chat;
  stickerCopy = sticker;
  v9 = objc_msgSend_account(_chatCopy, v7, v8);
  v10 = IMCopyGUIDForChatOnAccount(_chatCopy, v9);

  v30 = 0;
  IMComponentsFromChatGUID();
  v11 = 0;
  v14 = objc_msgSend_account(_chatCopy, v12, v13);
  v17 = objc_msgSend_uniqueID(v14, v15, v16);

  v18 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Asking daemon to send sticker reposition message", v29, 2u);
  }

  v21 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
  v24 = objc_msgSend_remoteDaemon(v21, v22, v23);
  v27 = objc_msgSend_chatStyle(_chatCopy, v25, v26);
  objc_msgSend_sendRepositionStickerMessage_chatIdentifier_accountID_style_(v24, v28, stickerCopy, v11, v17, v27);
}

- (void)_chat:(id)_chat sendGroupPhotoUpdate:(id)update
{
  updateCopy = update;
  _chatCopy = _chat;
  v9 = objc_msgSend_account(_chatCopy, v7, v8);
  v10 = IMCopyGUIDForChatOnAccount(_chatCopy, v9);

  IMComponentsFromChatGUID();
  v11 = 0;
  v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
  v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
  v20 = objc_msgSend_chatStyle(_chatCopy, v18, v19);
  v23 = objc_msgSend_account(_chatCopy, v21, v22);

  v26 = objc_msgSend_uniqueID(v23, v24, v25);
  objc_msgSend_sendGroupPhotoUpdate_toChatID_identifier_style_account_(v17, v27, updateCopy, v10, v11, v20, v26);
}

- (void)_chat:(id)_chat setTranscriptBackgroundAndSendToChat:(id)chat transferID:(id)d
{
  _chatCopy = _chat;
  chatCopy = chat;
  dCopy = d;
  v12 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v10, v11);
  isTranscriptBackgroundsEnabled = objc_msgSend_isTranscriptBackgroundsEnabled(v12, v13, v14);

  if (isTranscriptBackgroundsEnabled)
  {
    v18 = objc_msgSend_account(_chatCopy, v16, v17);
    v19 = IMCopyGUIDForChatOnAccount(_chatCopy, v18);

    v20 = v19;
    IMComponentsFromChatGUID();
    v21 = 0;
    v42 = objc_msgSend_sharedController(IMDaemonController, v22, v23);
    v26 = objc_msgSend_remoteDaemon(v42, v24, v25);
    v28 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v27, chatCopy);
    v31 = dCopy;
    v32 = objc_msgSend_chatStyle(_chatCopy, v29, v30);
    v35 = objc_msgSend_account(_chatCopy, v33, v34);
    objc_msgSend_uniqueID(v35, v36, v37);
    v39 = v38 = chatCopy;
    v40 = v32;
    dCopy = v31;
    objc_msgSend_setTranscriptBackgroundAndSendToChat_toChatID_identifier_style_transferID_account_completion_(v26, v41, v28, v20, v21, v40, v31, v39, &unk_1F1B6F4A0);

    chatCopy = v38;
  }
}

- (void)_chat:(id)_chat retryGroupPhotoUpload:(id)upload
{
  uploadCopy = upload;
  _chatCopy = _chat;
  v9 = objc_msgSend_account(_chatCopy, v7, v8);
  v10 = IMCopyGUIDForChatOnAccount(_chatCopy, v9);

  IMComponentsFromChatGUID();
  v11 = 0;
  v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
  v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
  v20 = objc_msgSend_chatStyle(_chatCopy, v18, v19);
  v23 = objc_msgSend_account(_chatCopy, v21, v22);

  v26 = objc_msgSend_uniqueID(v23, v24, v25);
  objc_msgSend_retryGroupPhotoUpload_toChatID_identifier_style_account_(v17, v27, uploadCopy, v10, v11, v20, v26);
}

- (void)_chat:(id)_chat retryTranscriptBackgroundUpload:(id)upload transferID:(id)d
{
  dCopy = d;
  uploadCopy = upload;
  _chatCopy = _chat;
  v12 = objc_msgSend_account(_chatCopy, v10, v11);
  v13 = IMCopyGUIDForChatOnAccount(_chatCopy, v12);

  IMComponentsFromChatGUID();
  v14 = 0;
  v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
  v20 = objc_msgSend_remoteDaemon(v17, v18, v19);
  v23 = objc_msgSend_chatStyle(_chatCopy, v21, v22);
  v26 = objc_msgSend_account(_chatCopy, v24, v25);

  v29 = objc_msgSend_uniqueID(v26, v27, v28);
  objc_msgSend_retryTranscriptBackgroundUpload_toChatID_identifier_style_transferID_account_(v20, v30, uploadCopy, v13, v14, v23, dCopy, v29);
}

- (void)_refetchLocalTranscriptBackgroundAssetIfNecessaryForChat:(id)chat
{
  chatCopy = chat;
  v6 = objc_msgSend_account(chatCopy, v4, v5);
  v7 = IMCopyGUIDForChatOnAccount(chatCopy, v6);

  IMComponentsFromChatGUID();
  v8 = 0;
  v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  v14 = objc_msgSend_remoteDaemon(v11, v12, v13);
  v17 = objc_msgSend_chatStyle(chatCopy, v15, v16);
  v20 = objc_msgSend_account(chatCopy, v18, v19);

  v23 = objc_msgSend_uniqueID(v20, v21, v22);
  objc_msgSend_refetchChatBackgroundIfNeededForChatIdentifier_style_account_(v14, v24, v8, v17, v23);
}

- (void)_chat:(id)_chat sendSyndicationAction:(id)action
{
  v49 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  actionCopy = action;
  if (!actionCopy)
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
  v22 = objc_msgSend_account(_chatCopy, v18, v19);
  if (v22)
  {
    v23 = objc_msgSend_chatIdentifier(_chatCopy, v20, v21);

    if (v23)
    {
      v41 = 0;
      v42 = 0;
      sub_1A839DC70(self, _chatCopy, &v42, &v41);
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
          v46 = actionCopy;
          v47 = 2112;
          v48 = v24;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Found %lu chats to send Syndication Action %@ to. chatIDs: %@", buf, 0x20u);
        }
      }

      v32 = objc_msgSend_sharedController(IMDaemonController, v26, v27);
      v35 = objc_msgSend_remoteDaemon(v32, v33, v34);
      objc_msgSend_sendSyndicationAction_toChatsWithIdentifiers_(v35, v36, actionCopy, v24);

LABEL_15:
    }
  }

LABEL_16:

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)_chat sendUpdatedCollaborationMetadata:(id)metadata forMessageGUID:(id)d
{
  v52 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  metadataCopy = metadata;
  dCopy = d;
  if (!metadataCopy)
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
  v25 = objc_msgSend_account(_chatCopy, v21, v22);
  if (v25)
  {
    v26 = objc_msgSend_chatIdentifier(_chatCopy, v23, v24);

    if (v26)
    {
      v44 = 0;
      v45 = 0;
      sub_1A839DC70(self, _chatCopy, &v45, &v44);
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
          v49 = metadataCopy;
          v50 = 2112;
          v51 = v27;
          _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Found %lu chats to send updated collaboration metadata %@ to. chatIDs: %@", buf, 0x20u);
        }
      }

      v35 = objc_msgSend_sharedController(IMDaemonController, v29, v30);
      v38 = objc_msgSend_remoteDaemon(v35, v36, v37);
      objc_msgSend_sendUpdatedCollaborationMetadata_toChatsWithIdentifiers_forMessageGUID_(v38, v39, metadataCopy, v27, dCopy);

LABEL_15:
    }
  }

LABEL_16:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)_chat sendHQAttachmentsForMessage:(id)message
{
  _chatCopy = _chat;
  messageCopy = message;
  v9 = objc_msgSend_account(_chatCopy, v7, v8);
  v10 = IMCopyGUIDForChatOnAccount(_chatCopy, v9);

  v30 = 0;
  IMComponentsFromChatGUID();
  v11 = 0;
  v14 = objc_msgSend_account(_chatCopy, v12, v13);
  v17 = objc_msgSend_uniqueID(v14, v15, v16);

  v18 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Asking daemon to send HQ Attachments", v29, 2u);
  }

  v21 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
  v24 = objc_msgSend_remoteDaemon(v21, v22, v23);
  v27 = objc_msgSend_chatStyle(_chatCopy, v25, v26);
  objc_msgSend_sendHQAttachmentsForMessage_toChatID_style_account_(v24, v28, messageCopy, v11, v27, v17);
}

- (void)_chat:(id)_chat inviteParticipants:(id)participants reason:(id)reason
{
  v81 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  participantsCopy = participants;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v76 = _chatCopy;
      v77 = 2112;
      v78 = participantsCopy;
      v79 = 2112;
      v80 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "chat: %@  participants: %@  reason: %@", buf, 0x20u);
    }
  }

  v10 = objc_msgSend_sharedController(IMDaemonController, v7, v8, reasonCopy);
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
    v22 = objc_msgSend_allGUIDsForChat_(v20, v21, _chatCopy);
  }

  else
  {
    v20 = objc_msgSend_account(_chatCopy, v18, v19);
    v23 = IMCopyGUIDForChatOnAccount(_chatCopy, v20);
    v74 = v23;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, &v74, 1);
  }

  v27 = objc_msgSend_account(_chatCopy, v25, v26);
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
        v45 = objc_msgSend_arrayByApplyingSelector_(participantsCopy, v44, sel__handleInfo);
        v48 = objc_msgSend_chatStyle(_chatCopy, v46, v47);
        v51 = objc_msgSend_account(_chatCopy, v49, v50);
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

- (void)_chat:(id)_chat removeParticipants:(id)participants reason:(id)reason
{
  v70 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  participantsCopy = participants;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v65 = _chatCopy;
      v66 = 2112;
      v67 = participantsCopy;
      v68 = 2112;
      v69 = reasonCopy;
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
    v22 = objc_msgSend_allGUIDsForChat_(v20, v21, _chatCopy);
  }

  else
  {
    v20 = objc_msgSend_account(_chatCopy, v18, v19);
    v23 = IMCopyGUIDForChatOnAccount(_chatCopy, v20);
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
        v36 = objc_msgSend_arrayByApplyingSelector_(participantsCopy, v35, sel__handleInfo);
        v39 = objc_msgSend_chatStyle(_chatCopy, v37, v38);
        v42 = objc_msgSend_account(_chatCopy, v40, v41);
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

- (void)_chat:(id)_chat joinWithProperties:(id)properties
{
  v109 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  propertiesCopy = properties;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v100 = _chatCopy;
    v101 = 2112;
    v102 = propertiesCopy;
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
  v21 = objc_msgSend_chatIdentifier(_chatCopy, v19, v20);
  v24 = objc_msgSend_chatIdentifier(_chatCopy, v22, v23);
  v25 = *MEMORY[0x1E69A7AC8];
  objc_msgSend_chatStyle(_chatCopy, v26, v27);
  v28 = IMCopyAnyServiceGUIDForChat();

  v31 = objc_msgSend_chatGUIDToChatMap(self, v29, v30);
  v33 = objc_msgSend_objectForKey_(v31, v32, v28);
  if (!v33)
  {

LABEL_12:
    objc_msgSend__registerChat_isIncoming_guid_(self, v40, _chatCopy, 0, v28);
    v43 = objc_msgSend_chatStyle(_chatCopy, v41, v42);
    v46 = objc_msgSend_account(_chatCopy, v44, v45);

    if (!v46 || !v21)
    {
      goto LABEL_27;
    }

    v47 = IMChatRegistryLogHandle();
    v97 = propertiesCopy;
    v98 = v43;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v50 = objc_msgSend_account(_chatCopy, v48, v49);
      v53 = objc_msgSend_guid(_chatCopy, v51, v52);
      v56 = objc_msgSend_chatIdentifier(_chatCopy, v54, v55);
      v59 = objc_msgSend_joinState(_chatCopy, v57, v58);
      v62 = objc_msgSend_personCentricID(_chatCopy, v60, v61);
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
      v65 = objc_msgSend_recipient(_chatCopy, v63, v64);
      v68 = objc_msgSend__handleInfo(v65, v66, v67);
      v31 = IMSingleObjectArray();
    }

    else
    {
      v65 = objc_msgSend_participantsWithState_(_chatCopy, v63, 21);
      v31 = objc_msgSend_arrayByApplyingSelector_(v65, v72, sel__handleInfo);
    }

    v36 = objc_msgSend_groupID(_chatCopy, v73, v74);
    if (!v36)
    {
      v36 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v75, v76);
      objc_msgSend_setGroupID_(_chatCopy, v77, v36);
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
    v95 = objc_msgSend_lastAddressedHandleID(_chatCopy, v82, v83);
    v94 = objc_msgSend_lastAddressedSIMID(_chatCopy, v84, v85);
    v88 = objc_msgSend_account(_chatCopy, v86, v87);
    v91 = objc_msgSend_uniqueID(v88, v89, v90);
    propertiesCopy = v97;
    objc_msgSend_joinChatID_handleInfo_identifier_style_groupID_lastAddressedHandle_lastAddressedSIMID_joinProperties_account_(v81, v92, v28, v31, v21, v98, v36, v95, v94, v97, v91);

    goto LABEL_26;
  }

  v36 = v33;
  if (objc_msgSend_joinState(_chatCopy, v34, v35) != 3)
  {
    v39 = objc_msgSend_joinState(_chatCopy, v37, v38);

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

- (void)_chat_leave:(id)_chat_leave
{
  v76[1] = *MEMORY[0x1E69E9840];
  _chat_leaveCopy = _chat_leave;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v73 = _chat_leaveCopy;
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
  v66 = objc_msgSend_chatStyle(_chat_leaveCopy, v15, v16);
  if (v66 == 45)
  {
    v17 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = _chat_leaveCopy;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "Not allowed to leave 1:1 chat: %@", buf, 0xCu);
    }
  }

  else
  {
    if (IMMergeNamedGroups())
    {
      v20 = objc_msgSend_sharedRegistry(IMChatRegistry, v18, v19);
      v22 = objc_msgSend_allGUIDsForChat_(v20, v21, _chat_leaveCopy);
    }

    else
    {
      v20 = objc_msgSend_account(_chat_leaveCopy, v18, v19);
      v23 = IMCopyGUIDForChatOnAccount(_chat_leaveCopy, v20);
      v76[0] = v23;
      v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, v76, 1);
    }

    v25 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_msgSend_account(_chat_leaveCopy, v26, v27);
      v31 = objc_msgSend_uniqueID(v28, v29, v30);
      *buf = 138412546;
      v73 = _chat_leaveCopy;
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
            v40 = objc_msgSend_account(_chat_leaveCopy, v37, v38);

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
              v50 = objc_msgSend_account(_chat_leaveCopy, v48, v49);
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
      v59 = objc_msgSend_guid(_chat_leaveCopy, v57, v58);
      *buf = 138412290;
      v73 = v59;
      _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_DEFAULT, "Unjoining chat locally: %@", buf, 0xCu);
    }

    if (_chat_leaveCopy)
    {
      objc_msgSend__setJoinState_(_chat_leaveCopy, v60, 0);
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

- (void)_chat_remove:(id)_chat_remove
{
  v56 = *MEMORY[0x1E69E9840];
  _chat_removeCopy = _chat_remove;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v55 = _chat_removeCopy;
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
  v16 = objc_msgSend_allGUIDsForChat_(self, v15, _chat_removeCopy);
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

  v36 = objc_msgSend_personCentricID(_chat_removeCopy, v34, v35);

  if (v36)
  {
    v39 = objc_msgSend_chatPersonIDToChatMap(self, v37, v38);
    v42 = objc_msgSend_personCentricID(_chat_removeCopy, v40, v41);
    objc_msgSend_removeObjectForKey_(v39, v43, v42);
  }

LABEL_23:
  v44 = *MEMORY[0x1E69E9840];
}

- (void)_chat_declineInvitation:(id)invitation
{
  v53 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v50 = invitationCopy;
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
  v17 = objc_msgSend_chatStyle(invitationCopy, v15, v16);
  v20 = objc_msgSend_account(invitationCopy, v18, v19);
  v21 = IMCopyGUIDForChatOnAccount(invitationCopy, v20);

  IMComponentsFromChatGUID();
  v22 = 0;
  v25 = objc_msgSend_account(invitationCopy, v23, v24);
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
      v31 = objc_msgSend_account(invitationCopy, v29, v30);
      *buf = 138412546;
      v50 = invitationCopy;
      v51 = 2112;
      v52 = v31;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "Forwarding decline chat for: %@   to account: %@", buf, 0x16u);
    }

    v34 = objc_msgSend_sharedController(IMDaemonController, v32, v33);
    v37 = objc_msgSend_remoteDaemon(v34, v35, v36);
    v40 = objc_msgSend_account(invitationCopy, v38, v39);
    v43 = objc_msgSend_uniqueID(v40, v41, v42);
    objc_msgSend_declineInvitationToChatID_identifier_style_account_(v37, v44, v21, v22, v17, v43);
  }

LABEL_20:
  v45 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)_chat setProperties:(id)properties ofParticipant:(id)participant
{
  v65 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  propertiesCopy = properties;
  participantCopy = participant;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v60 = _chatCopy;
      v61 = 2112;
      v62 = propertiesCopy;
      v63 = 2112;
      v64 = participantCopy;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "chat: %@  properties: %@  participant: %@", buf, 0x20u);
    }
  }

  v13 = objc_msgSend_sharedController(IMDaemonController, v10, v11, propertiesCopy);
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
  v23 = objc_msgSend_account(_chatCopy, v21, v22);
  v24 = IMCopyGUIDForChatOnAccount(_chatCopy, v23);

  buf[0] = 0;
  IMComponentsFromChatGUID();
  v25 = 0;
  v28 = objc_msgSend_chatGUIDToChatMap(self, v26, v27);
  v30 = objc_msgSend_objectForKey_(v28, v29, v24);
  LODWORD(v23) = v30 == 0;

  if (v23)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v31, _chatCopy, 0, v24);
  }

  v33 = objc_msgSend_account(_chatCopy, v31, v32);
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
    v44 = objc_msgSend_ID(participantCopy, v42, v43);
    v45 = buf[0];
    v48 = objc_msgSend_account(_chatCopy, v46, v47);
    v51 = objc_msgSend_uniqueID(v48, v49, v50);
    objc_msgSend_setProperties_ofParticipant_inChatID_identifier_style_account_(v41, v52, v58, v44, v24, v25, v45, v51);
  }

LABEL_20:
  v53 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)_chat setValue:(id)value forChatProperty:(id)property
{
  v66 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  valueCopy = value;
  propertyCopy = property;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v61 = _chatCopy;
      v62 = 2112;
      v63 = propertyCopy;
      v64 = 2112;
      v65 = valueCopy;
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
  v21 = objc_msgSend_account(_chatCopy, v19, v20);
  v22 = IMCopyGUIDForChatOnAccount(_chatCopy, v21);

  v25 = objc_msgSend_chatGUIDToChatMap(self, v23, v24);
  v27 = objc_msgSend_objectForKey_(v25, v26, v22);
  v28 = v27 == 0;

  if (v28)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v29, _chatCopy, 0, v22);
  }

  if (propertyCopy)
  {
    v30 = MEMORY[0x1E695DF20];
    if (valueCopy)
    {
      v32 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF20], v29, valueCopy, propertyCopy);
    }

    else
    {
      v33 = objc_msgSend_null(MEMORY[0x1E695DFB0], v29, 0);
      v32 = objc_msgSend_dictionaryWithObject_forKey_(v30, v34, v33, propertyCopy);
    }

    v35 = objc_msgSend_allGUIDsForChat_(self, v31, _chatCopy);
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

- (void)_chat:(id)_chat updateDisplayName:(id)name
{
  v69 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  nameCopy = name;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v66 = _chatCopy;
      v67 = 2112;
      v68 = nameCopy;
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
  v20 = objc_msgSend_account(_chatCopy, v18, v19);
  v58 = IMCopyGUIDForChatOnAccount(_chatCopy, v20);

  v23 = objc_msgSend_chatGUIDToChatMap(self, v21, v22);
  v25 = objc_msgSend_objectForKey_(v23, v24, v58);
  v26 = v25 == 0;

  if (v26)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v27, _chatCopy, 0, v58);
  }

  v28 = objc_msgSend_allGUIDsForChat_(self, v27, _chatCopy);
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
        if (!objc_msgSend_shouldIgnoreiMessageSiblingGroupIdentityUpdates(_chatCopy, v34, v35) || (IMComponentsFromChatGUID(), v40 = 0, isEqualToString = objc_msgSend_isEqualToString_(v40, v41, *MEMORY[0x1E69A7AF0]), v40, (isEqualToString & 1) == 0))
        {
          v43 = objc_msgSend_sharedController(IMDaemonController, v34, v35);
          v46 = objc_msgSend_remoteDaemon(v43, v44, v45);
          objc_msgSend_chat_updateDisplayName_messageID_(v46, v47, v39, nameCopy, v31);

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

- (void)_chat:(id)_chat updateLastAddressedHandle:(id)handle
{
  v56 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v53 = _chatCopy;
      v54 = 2112;
      v55 = handleCopy;
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
  v20 = objc_msgSend_account(_chatCopy, v18, v19);
  v21 = IMCopyGUIDForChatOnAccount(_chatCopy, v20);

  v24 = objc_msgSend_chatGUIDToChatMap(self, v22, v23);
  v26 = objc_msgSend_objectForKey_(v24, v25, v21);
  v27 = v26 == 0;

  if (v27)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v28, _chatCopy, 0, v21);
  }

  v29 = objc_msgSend_allGUIDsForChat_(self, v28, _chatCopy);
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
        objc_msgSend_chat_updateLastAddressHandle_(v40, v41, v36, handleCopy);

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

- (void)_chat:(id)_chat updateLastAddressedSIMID:(id)d
{
  v56 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v53 = _chatCopy;
      v54 = 2112;
      v55 = dCopy;
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
  v20 = objc_msgSend_account(_chatCopy, v18, v19);
  v21 = IMCopyGUIDForChatOnAccount(_chatCopy, v20);

  v24 = objc_msgSend_chatGUIDToChatMap(self, v22, v23);
  v26 = objc_msgSend_objectForKey_(v24, v25, v21);
  v27 = v26 == 0;

  if (v27)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v28, _chatCopy, 0, v21);
  }

  v29 = objc_msgSend_allGUIDsForChat_(self, v28, _chatCopy);
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
        objc_msgSend_chat_updateLastAddressedSIMID_(v40, v41, v36, dCopy);

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

- (void)_chat:(id)_chat updateIsFiltered:(int64_t)filtered synchronously:(BOOL)synchronously
{
  v75 = *MEMORY[0x1E69E9840];
  _chatCopy = _chat;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v71 = _chatCopy;
      v72 = 1024;
      LODWORD(v73) = filtered;
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
  v22 = objc_msgSend_account(_chatCopy, v20, v21);
  v23 = IMCopyGUIDForChatOnAccount(_chatCopy, v22);

  v26 = objc_msgSend_chatGUIDToChatMap(self, v24, v25);
  v28 = objc_msgSend_objectForKey_(v26, v27, v23);
  v29 = v28 == 0;

  if (v29)
  {
    objc_msgSend__registerChat_isIncoming_guid_(self, v30, _chatCopy, 0, v23);
  }

  v32 = objc_msgSend_sharedController(IMDaemonController, v30, v31);
  v35 = v32;
  if (synchronously)
  {
    objc_msgSend_synchronousRemoteDaemon(v32, v33, v34);
  }

  else
  {
    objc_msgSend_remoteDaemon(v32, v33, v34);
  }
  v36 = ;

  v38 = objc_msgSend_allGUIDsForChat_(self, v37, _chatCopy);
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

        objc_msgSend_chat_updateIsFiltered_(v36, v40, *(*(&v66 + 1) + 8 * i), filtered);
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v40, &v66, v74, 16);
    }

    while (v42);
  }

  v45 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v40, v41);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v45, v46, v47);

  if (isIntroductionsEnabled && objc_msgSend_isFiltered(_chatCopy, v49, v50) == 2)
  {
    v55 = objc_msgSend_lastIncomingFinishedMessage(_chatCopy, v51, v52);
    if (!v55)
    {
      v56 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v71 = "[IMChatRegistry(IMChatRegistry_Sending) _chat:updateIsFiltered:synchronously:]";
        v72 = 2112;
        v73 = _chatCopy;
        _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_DEFAULT, "%s Unable to get lastIncomingFinishedMessage, falling back to lastFinishedMessage. chat: %@", buf, 0x16u);
      }

      v55 = objc_msgSend_lastFinishedMessage(_chatCopy, v57, v58);
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

- (void)_chat_fetchIncomingPendingMessagesOverSatellite:(id)satellite
{
  v13 = 0;
  v14 = 0;
  sub_1A839DC70(self, satellite, &v14, &v13);
  v4 = v14;
  v5 = v13;
  v8 = objc_msgSend_daemonController(self, v6, v7);
  v11 = objc_msgSend_remoteDaemon(v8, v9, v10);
  objc_msgSend_fetchIncomingPendingMessagesOverSatelliteForChatsWithIDs_services_(v11, v12, v4, v5);
}

- (void)_loadSiblingsForChatIfNeeded:(id)needed
{
  neededCopy = needed;
  if ((objc_msgSend_hasQueriedForSiblingChats(neededCopy, v4, v5) & 1) == 0)
  {
    objc_msgSend__loadPossibleSiblingChatsForHandlesAssociatedWithChat_waitForReply_completionHandler_(self, v6, neededCopy, 1, 0);
    objc_msgSend_setHasQueriedForSiblingChats_(neededCopy, v7, 1);
  }
}

- (void)_chat_loadHistory:(id)history limit:(unint64_t)limit beforeGUID:(id)d afterGUID:(id)iD threadIdentifier:(id)identifier queryID:(id)queryID synchronous:(BOOL)synchronous completion:(id)self0
{
  v96 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  queryIDCopy = queryID;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v87 = historyCopy;
      v88 = 1024;
      limitCopy = limit;
      v90 = 2112;
      v91 = dCopy;
      v92 = 2112;
      v93 = iDCopy;
      v94 = 2112;
      v95 = queryIDCopy;
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
  objc_msgSend__loadSiblingsForChatIfNeeded_(self, v28, historyCopy);
  v84 = 0;
  v85 = 0;
  sub_1A839DC70(self, historyCopy, &v85, &v84);
  v66 = v85;
  v29 = v84;
  v32 = objc_msgSend_daemonController(self, v30, v31);
  v35 = v32;
  if (synchronous)
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
  v80 = queryIDCopy;
  v36 = historyCopy;
  v81 = v36;
  v37 = v29;
  v82 = v37;
  limitCopy2 = limit;
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
  synchronousCopy = synchronous;
  v76 = completionCopy;
  v49 = v38;
  v50 = v42;
  objc_msgSend_loadHistoryForChatWithGUID_chatIdentifiers_style_services_limit_beforeGUID_afterGUID_threadIdentifier_reply_(v67, v51, v45, v66, v48, v37, limit, dCopy, iDCopy, identifierCopy, v73);

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

- (void)_chat_loadPagedHistory:(id)history numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after messageGUID:(id)d threadIdentifier:(id)identifier queryID:(id)iD synchronous:(BOOL)synchronous completion:(id)self0
{
  v82 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v73 = historyCopy;
      v74 = 1024;
      beforeCopy = before;
      v76 = 1024;
      afterCopy = after;
      v78 = 2112;
      v79 = dCopy;
      v80 = 2112;
      v81 = iDCopy;
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
  objc_msgSend__loadSiblingsForChatIfNeeded_(self, v27, historyCopy);
  v70 = 0;
  v71 = 0;
  sub_1A839DC70(self, historyCopy, &v71, &v70);
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
  if (synchronous)
  {
    objc_msgSend_synchronousRemoteDaemon(v35, v36, v37);
  }

  else
  {
    objc_msgSend_remoteDaemon(v35, v36, v37);
  }
  v39 = ;

  v42 = objc_msgSend_guid(historyCopy, v40, v41);
  v45 = objc_msgSend_chatStyle(historyCopy, v43, v44);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = sub_1A83A68C8;
  v59[3] = &unk_1E7814040;
  v66 = v30;
  v60 = v32;
  selfCopy = self;
  v62 = iDCopy;
  v63 = historyCopy;
  v64 = v28;
  beforeCopy2 = before;
  afterCopy2 = after;
  synchronousCopy = synchronous;
  v65 = completionCopy;
  v46 = v28;
  v47 = v32;
  objc_msgSend_loadPagedHistoryAroundMessageWithGUID_chatGUID_chatIdentifiers_style_services_numberOfMessagesBefore_numberOfMessagesAfter_threadIdentifier_reply_(v39, v48, dCopy, v42, v53, v45, v46, before, after, identifierCopy, v59);

LABEL_16:
  v49 = *MEMORY[0x1E69E9840];
}

- (void)_chat_fetchHistorySummary:(id)summary dateInterval:(id)interval synchronous:(BOOL)synchronous queryID:(id)d completion:(id)completion
{
  synchronousCopy = synchronous;
  v59 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  intervalCopy = interval;
  dCopy = d;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v52 = summaryCopy;
      v53 = 2112;
      v54 = intervalCopy;
      v55 = 1024;
      v56 = synchronousCopy;
      v57 = 2112;
      v58 = dCopy;
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
  objc_msgSend__loadSiblingsForChatIfNeeded_(self, v27, summaryCopy);
  v49 = 0;
  v50 = 0;
  sub_1A839DC70(self, summaryCopy, &v50, &v49);
  v28 = v50;
  v29 = v49;
  v32 = objc_msgSend_chatStyle(summaryCopy, v30, v31);
  v35 = objc_msgSend_daemonController(self, v33, v34);
  v38 = v35;
  if (synchronousCopy)
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
  v48 = synchronousCopy;
  v47 = completionCopy;
  v46 = dCopy;
  objc_msgSend_fetchMessageHistorySummaryForDateInterval_chatIdentifiers_chatStyle_services_reply_(v39, v40, intervalCopy, v28, v32, v29, v45);

LABEL_13:
  v41 = *MEMORY[0x1E69E9840];
}

- (void)_chat_fetchOldestMessageDateForChat:(id)chat synchronous:(BOOL)synchronous queryID:(id)d completion:(id)completion
{
  synchronousCopy = synchronous;
  v54 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v49 = chatCopy;
      v50 = 1024;
      v51 = synchronousCopy;
      v52 = 2112;
      v53 = dCopy;
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
  objc_msgSend__loadSiblingsForChatIfNeeded_(self, v24, chatCopy);
  v46 = 0;
  v47 = 0;
  sub_1A839DC70(self, chatCopy, &v47, &v46);
  v25 = v47;
  v26 = v46;
  v29 = objc_msgSend_chatStyle(chatCopy, v27, v28);
  v32 = objc_msgSend_daemonController(self, v30, v31);
  v35 = v32;
  if (synchronousCopy)
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
  v45 = synchronousCopy;
  v44 = completionCopy;
  v43 = dCopy;
  objc_msgSend_fetchOldestMessageDateForChatIdentifiers_chatStyle_services_reply_(v36, v37, v25, v29, v26, v42);

LABEL_13:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_chat_clearHistory:(id)history beforeGUID:(id)d afterGUID:(id)iD queryID:(id)queryID
{
  v54 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  dCopy = d;
  iDCopy = iD;
  queryIDCopy = queryID;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v47 = historyCopy;
      v48 = 2112;
      v49 = dCopy;
      v50 = 2112;
      v51 = iDCopy;
      v52 = 2112;
      v53 = queryIDCopy;
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
  sub_1A839DC70(self, historyCopy, &v45, &v44);
  v25 = v45;
  v26 = v44;
  v29 = objc_msgSend_sharedController(IMDaemonController, v27, v28);
  v32 = objc_msgSend_remoteDaemon(v29, v30, v31);
  v35 = objc_msgSend_chatStyle(historyCopy, v33, v34);
  v38 = objc_msgSend_guid(historyCopy, v36, v37);
  objc_msgSend_clearHistoryForIDs_style_onServices_beforeGUID_afterGUID_chatID_queryID_(v32, v39, v25, v35, v26, dCopy, iDCopy, v38, queryIDCopy);

LABEL_10:
  v40 = *MEMORY[0x1E69E9840];
}

- (void)_chat_loadFrequentReplies:(id)replies limit:(unint64_t)limit queryID:(id)d loadImmediately:(BOOL)immediately
{
  v58 = *MEMORY[0x1E69E9840];
  repliesCopy = replies;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v53 = repliesCopy;
      v54 = 1024;
      limitCopy = limit;
      v56 = 2112;
      v57 = dCopy;
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
  sub_1A839DC70(self, repliesCopy, &v51, &v50);
  v22 = v51;
  v23 = v50;
  v26 = objc_msgSend_daemonController(self, v24, v25);
  v29 = v26;
  if (immediately)
  {
    objc_msgSend_synchronousRemoteDaemon(v26, v27, v28);
  }

  else
  {
    objc_msgSend_remoteDaemon(v26, v27, v28);
  }
  v30 = ;

  v33 = objc_msgSend_guid(repliesCopy, v31, v32);
  v36 = objc_msgSend_chatStyle(repliesCopy, v34, v35);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_1A83A7D44;
  v44[3] = &unk_1E7814108;
  immediatelyCopy = immediately;
  v44[4] = self;
  v45 = dCopy;
  v46 = repliesCopy;
  v47 = v23;
  limitCopy2 = limit;
  v37 = v23;
  objc_msgSend_loadFrequentRepliesForChatWithGUID_chatIdentifiers_style_services_limit_reply_(v30, v38, v33, v22, v36, v37, limit, v44);

LABEL_13:
  v39 = *MEMORY[0x1E69E9840];
}

- (void)_chat_loadUnreadMessages:(id)messages limit:(unint64_t)limit fallbackGUID:(id)d queryID:(id)iD loadImmediately:(BOOL)immediately
{
  v66 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dCopy = d;
  iDCopy = iD;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v61 = messagesCopy;
      v62 = 2048;
      limitCopy = limit;
      v64 = 2112;
      v65 = iDCopy;
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
  sub_1A839DC70(self, messagesCopy, &v59, &v58);
  v23 = v59;
  v24 = v58;
  v27 = objc_msgSend_daemonController(self, v25, v26);
  v30 = v27;
  if (immediately)
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
  v54 = iDCopy;
  v32 = messagesCopy;
  v55 = v32;
  v56 = v24;
  limitCopy2 = limit;
  v33 = v24;
  v34 = _Block_copy(aBlock);
  v37 = objc_msgSend_guid(v32, v35, v36);
  v40 = objc_msgSend_chatStyle(v32, v38, v39);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_1A83A8338;
  v50[3] = &unk_1E7814130;
  immediatelyCopy = immediately;
  v51 = v34;
  v41 = v34;
  objc_msgSend_loadUnreadHistoryForChatWithGUID_chatIdentifiers_style_services_limit_fallbackMessageGUID_reply_(v31, v42, v37, v23, v40, v33, limit, dCopy, v50);

LABEL_13:
  v43 = *MEMORY[0x1E69E9840];
}

- (void)_chat_loadAttachments:(id)attachments queryID:(id)d loadImmediately:(BOOL)immediately
{
  v53 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v50 = attachmentsCopy;
      v51 = 2112;
      v52 = dCopy;
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
  sub_1A839DC70(self, attachmentsCopy, &v48, &v47);
  v21 = v48;
  v22 = v47;
  v25 = objc_msgSend_daemonController(self, v23, v24);
  v28 = v25;
  if (immediately)
  {
    objc_msgSend_synchronousRemoteDaemon(v25, v26, v27);
  }

  else
  {
    objc_msgSend_remoteDaemon(v25, v26, v27);
  }
  v29 = ;

  v32 = objc_msgSend_guid(attachmentsCopy, v30, v31);
  v35 = objc_msgSend_chatStyle(attachmentsCopy, v33, v34);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A83A8730;
  v42[3] = &unk_1E7814158;
  immediatelyCopy = immediately;
  v42[4] = self;
  v43 = dCopy;
  v44 = attachmentsCopy;
  v45 = v22;
  v36 = v22;
  objc_msgSend_loadAttachmentsForChatWithGUID_chatIdentifiers_style_services_reply_(v29, v37, v32, v21, v35, v36, v42);

LABEL_13:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_chat_loadUncachedAttachmentsCount:(id)count queryID:(id)d loadImmediately:(BOOL)immediately
{
  v53 = *MEMORY[0x1E69E9840];
  countCopy = count;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v50 = countCopy;
      v51 = 2112;
      v52 = dCopy;
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
  sub_1A839DC70(self, countCopy, &v48, &v47);
  v21 = v48;
  v22 = v47;
  v25 = objc_msgSend_daemonController(self, v23, v24);
  v28 = v25;
  if (immediately)
  {
    objc_msgSend_synchronousRemoteDaemon(v25, v26, v27);
  }

  else
  {
    objc_msgSend_remoteDaemon(v25, v26, v27);
  }
  v29 = ;

  v32 = objc_msgSend_guid(countCopy, v30, v31);
  v35 = objc_msgSend_chatStyle(countCopy, v33, v34);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A83A8BB8;
  v42[3] = &unk_1E78140B8;
  immediatelyCopy = immediately;
  v42[4] = self;
  v43 = dCopy;
  v44 = countCopy;
  v45 = v22;
  v36 = v22;
  objc_msgSend_loadUncachedAttachmentCountForChatWithGUID_chatIdentifiers_style_services_reply_(v29, v37, v32, v21, v35, v36, v42);

LABEL_13:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_chat_downloadPurgedAttachmentsForChat:(id)chat
{
  v39 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = chatCopy;
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
  sub_1A839DC70(self, chatCopy, &v36, &v35);
  v16 = v36;
  v17 = v35;
  v20 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
  v23 = objc_msgSend_remoteDaemon(v20, v21, v22);
  v26 = objc_msgSend_chatStyle(chatCopy, v24, v25);
  v29 = objc_msgSend_guid(chatCopy, v27, v28);
  objc_msgSend_downloadPurgedAttachmentsForIDs_style_onServices_chatID_(v23, v30, v16, v26, v17, v29);

LABEL_8:
  v31 = *MEMORY[0x1E69E9840];
}

- (void)_chat_isDownloadingPurgedAssetsForChat:(id)chat queryID:(id)d loadImmediately:(BOOL)immediately
{
  v51 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  v10 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = chatCopy;
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
  sub_1A839DC70(self, chatCopy, &v48, &v47);
  v21 = v48;
  v22 = v47;
  v25 = objc_msgSend_daemonController(self, v23, v24);
  v28 = v25;
  if (immediately)
  {
    objc_msgSend_synchronousReplyingRemoteDaemon(v25, v26, v27);
  }

  else
  {
    objc_msgSend_replyingRemoteDaemon(v25, v26, v27);
  }
  v29 = ;

  v32 = objc_msgSend_guid(chatCopy, v30, v31);
  v35 = objc_msgSend_chatStyle(chatCopy, v33, v34);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A83A9240;
  v42[3] = &unk_1E78141D0;
  immediatelyCopy = immediately;
  v42[4] = self;
  v43 = dCopy;
  v44 = chatCopy;
  v45 = v22;
  v36 = v22;
  objc_msgSend_loadIsDownloadingPurgedAttachmentsForChatWithGUID_chatIdentifiers_style_services_reply_(v29, v37, v32, v21, v35, v36, v42);

LABEL_11:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_chat_markRepliedForMessageGUID:(id)d
{
  dCopy = d;
  v10 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = objc_msgSend_remoteDaemon(v10, v6, v7);
  objc_msgSend_markRepliedForMessageGUID_(v8, v9, dCopy);
}

- (id)_unreadCountGUIDsForChat:(id)chat
{
  chatCopy = chat;
  v27 = 0;
  v28 = 0;
  sub_1A839DC70(self, chatCopy, &v28, &v27);
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
      objc_msgSend_chatStyle(chatCopy, v20, v21);
      v22 = IMCopyAnyServiceGUIDForChat();
      objc_msgSend_addObject_(v12, v23, v22);

      ++v16;
    }

    while (v16 < objc_msgSend_count(v5, v24, v25));
  }

  return v12;
}

- (int64_t)_chat_cachedUnreadCount:(id)count
{
  countCopy = count;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v7, v8, v9);

  if (isUnreadCountRefactorEnabled)
  {
    v13 = objc_msgSend_unreadCountController(self, v11, v12);
    v15 = objc_msgSend__unreadCountGUIDsForChat_(self, v14, countCopy);
    v17 = objc_msgSend_unreadCountForChatsWithGUIDs_(v13, v16, v15);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_chat_clearCachedUnreadCount:(id)count
{
  countCopy = count;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v6, v7, v8);

  if (isUnreadCountRefactorEnabled)
  {
    v12 = objc_msgSend_unreadCountController(self, v10, v11);
    v14 = objc_msgSend__unreadCountGUIDsForChat_(self, v13, countCopy);
    objc_msgSend_clearUnreadCountForChatsWithGUIDs_(v12, v15, v14);
  }
}

- (void)_chat:(id)_chat appendTranslation:(id)translation toMessageItem:(id)item partIndex:(int64_t)index
{
  itemCopy = item;
  translationCopy = translation;
  _chatCopy = _chat;
  v14 = objc_msgSend_account(_chatCopy, v12, v13);
  v15 = IMCopyGUIDForChatOnAccount(_chatCopy, v14);

  IMComponentsFromChatGUID();
  v16 = 0;
  v19 = objc_msgSend_chatStyle(_chatCopy, v17, v18);
  v22 = objc_msgSend_account(_chatCopy, v20, v21);

  v25 = objc_msgSend_uniqueID(v22, v23, v24);

  v28 = objc_msgSend_sharedController(IMDaemonController, v26, v27);
  v31 = objc_msgSend_remoteDaemon(v28, v29, v30);
  objc_msgSend_appendTranslation_toMessageItem_partIndex_toChatIdentifier_style_account_(v31, v32, translationCopy, itemCopy, index, v16, v19, v25);
}

- (void)_chat:(id)_chat downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally
{
  locallyCopy = locally;
  codesCopy = codes;
  _chatCopy = _chat;
  v12 = objc_msgSend_account(_chatCopy, v10, v11);
  v13 = IMCopyGUIDForChatOnAccount(_chatCopy, v12);

  IMComponentsFromChatGUID();
  v14 = 0;
  v17 = objc_msgSend_chatStyle(_chatCopy, v15, v16);
  v20 = objc_msgSend_account(_chatCopy, v18, v19);

  v23 = objc_msgSend_uniqueID(v20, v21, v22);

  v26 = objc_msgSend_sharedController(IMDaemonController, v24, v25);
  v29 = objc_msgSend_remoteDaemon(v26, v27, v28);
  objc_msgSend_downloadTranslationAssetsForLanguageCodes_messageItemsToTranslateLocally_chatIdentifier_style_account_(v29, v30, codesCopy, locallyCopy, v14, v17, v23);
}

- (id)_lastMessageItemForChatDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, *MEMORY[0x1E69A6C08]);
  v7 = v6;
  if (!v6)
  {
    IMMessageFromIMMessageItemDictionary = 0;
    goto LABEL_18;
  }

  v8 = v6;
  v9 = dictionaryCopy;
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
  selfCopy = self;
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
  self = selfCopy;
LABEL_16:

  if (IMMessageFromIMMessageItemDictionary)
  {
    objc_msgSend__checkIfItemIsCorrupt_(self, v42, IMMessageFromIMMessageItemDictionary);
  }

LABEL_18:

  return IMMessageFromIMMessageItemDictionary;
}

- (id)_processLoadedChatDictionaries:(id)dictionaries
{
  v183 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  v4 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v132 = objc_msgSend_count(dictionariesCopy, v5, v6);
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Loaded %llu chats from daemon", buf, 0xCu);
  }

  v7 = objc_alloc(MEMORY[0x1E695DFA0]);
  v10 = objc_msgSend_count(dictionariesCopy, v8, v9);
  v97 = objc_msgSend_initWithCapacity_(v7, v11, v10);
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = dictionariesCopy;
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

- (void)loadedChats:(id)chats queryID:(id)d
{
  v17[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v8 = objc_msgSend__processLoadedChatDictionaries_(self, v7, chats);
  v11 = objc_msgSend_daemonQueryController(self, v9, v10);
  v16 = @"chats";
  v17[0] = v8;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v17, &v16, 1);
  objc_msgSend_completeQuery_userInfo_(v11, v14, dCopy, v13);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)forcedReloadingChatRegistryWithQueryID:(id)d
{
  dCopy = d;
  v8 = objc_msgSend_daemonQueryController(self, v5, v6);
  objc_msgSend_completeQuery_userInfo_(v8, v7, dCopy, 0);
}

- (BOOL)_shouldUpdateChatPropertyByRecencyOnChat:(id)chat incomingDictionary:(id)dictionary
{
  v5 = *MEMORY[0x1E69A6C38];
  chatCopy = chat;
  v8 = objc_msgSend_objectForKeyedSubscript_(dictionary, v7, v5);
  objc_msgSend_doubleValue(v8, v9, v10);
  v12 = v11;
  v15 = objc_msgSend_lastMessage(chatCopy, v13, v14);

  v18 = objc_msgSend_time(v15, v16, v17);
  objc_msgSend_timeIntervalSince1970(v18, v19, v20);
  v22 = v12 > v21;

  return v22;
}

- (id)_winningChatIdentifierForExistingChat:(id)chat incomingDictionary:(id)dictionary
{
  chatCopy = chat;
  dictionaryCopy = dictionary;
  v10 = objc_msgSend_chatStyle(chatCopy, v8, v9);
  v14 = objc_msgSend_chatIdentifier(chatCopy, v11, v12);
  if (v10 == 43)
  {
    v15 = *MEMORY[0x1E69A6B18];
    v16 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v13, *MEMORY[0x1E69A6B18]);
    isEqualToString = objc_msgSend_isEqualToString_(v14, v17, v16);

    if (isEqualToString || !objc_msgSend__shouldUpdateChatPropertyByRecencyOnChat_incomingDictionary_(self, v19, chatCopy, dictionaryCopy))
    {
      v21 = objc_msgSend_chatIdentifier(chatCopy, v19, v20);
    }

    else
    {
      v21 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v19, v15);
    }

    v14 = v21;
  }

  return v14;
}

- (id)_winningParticipantsForExistingChat:(id)chat incomingDictionary:(id)dictionary
{
  chatCopy = chat;
  dictionaryCopy = dictionary;
  if (objc_msgSend_chatStyle(chatCopy, v8, v9) == 43 && objc_msgSend__shouldUpdateChatPropertyByRecencyOnChat_incomingDictionary_(self, v10, chatCopy, dictionaryCopy))
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v10, *MEMORY[0x1E69A6C58]);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A83B4F34;
    v18[3] = &unk_1E78144E8;
    v19 = chatCopy;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A83B4FC4;
    v16[3] = &unk_1E7814510;
    v17 = v19;
    v14 = objc_msgSend___imArrayByApplyingBlock_filter_(v12, v13, v18, v16);
  }

  else
  {
    v14 = objc_msgSend_participants(chatCopy, v10, v11);
  }

  return v14;
}

- (id)_winningGroupIDForExistingChat:(id)chat incomingDictionary:(id)dictionary
{
  chatCopy = chat;
  dictionaryCopy = dictionary;
  v10 = objc_msgSend_chatStyle(chatCopy, v8, v9);
  v14 = objc_msgSend_groupID(chatCopy, v11, v12);
  if (v10 == 43)
  {
    v15 = *MEMORY[0x1E69A6B78];
    v16 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v13, *MEMORY[0x1E69A6B78]);
    isEqualToString = objc_msgSend_isEqualToString_(v14, v17, v16);

    if (isEqualToString || !objc_msgSend__shouldUpdateChatPropertyByRecencyOnChat_incomingDictionary_(self, v19, chatCopy, dictionaryCopy))
    {
      v21 = objc_msgSend_groupID(chatCopy, v19, v20);
    }

    else
    {
      v21 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v19, v15);
    }

    v14 = v21;
  }

  return v14;
}

- (BOOL)_shouldSwitchAccountAddingMessagesToChat:(id)chat messageItems:(id)items removedGUIDs:(id)ds messagesComingFromStorage:(BOOL)storage chatProperties:(id)properties
{
  storageCopy = storage;
  v103 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  itemsCopy = items;
  dsCopy = ds;
  propertiesCopy = properties;
  v85 = dsCopy;
  if (storageCopy)
  {
    selfCopy = self;
    v16 = objc_msgSend__items(chatCopy, v14, v15);
    v19 = objc_msgSend__items(chatCopy, v17, v18);
    v22 = objc_msgSend_mutableCopy(v19, v20, v21);

    v23 = objc_alloc(MEMORY[0x1E695DFA8]);
    v26 = objc_msgSend__items(chatCopy, v24, v25);
    v28 = objc_msgSend_arrayByApplyingSelector_(v26, v27, sel_guid);
    v30 = objc_msgSend_initWithArray_(v23, v29, v28);

    v31 = objc_alloc(MEMORY[0x1E695DFA8]);
    v33 = objc_msgSend_arrayByApplyingSelector_(itemsCopy, v32, sel_guid);
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

    v49 = objc_msgSend_arrayByAddingObjectsFromArray_(v22, v48, itemsCopy);
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

    objc_msgSend_beginHoldingChatItemsUpdatesForReason_(chatCopy, v52, @"IMItemsChanged");
    if (objc_msgSend_count(v85, v54, v55))
    {
      objc_msgSend__removeItemsForGuids_(chatCopy, v56, v85);
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

          objc_msgSend__handleIncomingItem_updateRecipient_suppressNotification_updateReplyCounts_messageComingFromStorage_(chatCopy, v59, *(*(&v91 + 1) + 8 * j), 1, 0, 1, 1);
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v59, &v91, v101, 16);
      }

      while (v60);
    }

    objc_msgSend_endHoldingChatItemsUpdatesForReason_(chatCopy, v63, @"IMItemsChanged");
    v66 = objc_msgSend_guid(chatCopy, v64, v65);
    objc_msgSend__updateInfo_forGUID_updatingUnreadCount_(selfCopy, v67, propertiesCopy, v66, 1);

    v68 = 1;
  }

  else
  {
    objc_msgSend_beginHoldingChatItemsUpdatesForReason_(chatCopy, v14, @"IMItemsChanged");
    if (objc_msgSend_count(dsCopy, v69, v70))
    {
      objc_msgSend__removeItemsForGuids_(chatCopy, v71, dsCopy);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v72 = itemsCopy;
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

          updated = objc_msgSend__handleIncomingItem_updateRecipient_suppressNotification_updateReplyCounts_messageComingFromStorage_(chatCopy, v74, *(*(&v87 + 1) + 8 * k), 1, 0, 1, 0);
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

    objc_msgSend_endHoldingChatItemsUpdatesForReason_(chatCopy, v79, @"IMItemsChanged");
  }

  v80 = *MEMORY[0x1E69E9840];
  return v68;
}

- (void)_clearExistingTypingIndicatorsWithMessageGUID:(id)d excludingChatWithIdentifier:(id)identifier
{
  v53 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  v9 = objc_msgSend__cachedChatsWithMessageGUID_(self, v8, dCopy);
  v10 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v48 = objc_msgSend_count(v9, v11, v12);
    v49 = 2112;
    v50 = dCopy;
    v51 = 2112;
    v52 = identifierCopy;
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
        isEqualToString = objc_msgSend_isEqualToString_(v24, v25, identifierCopy);

        if ((isEqualToString & 1) == 0)
        {
          v27 = objc_msgSend__itemForGUID_(v23, v16, dCopy);
          v28 = *(v21 + 312);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isTypingMessage(v27, v29, v30))
          {
            v31 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v34 = objc_msgSend_guid(v23, v32, v33);
              *buf = v41;
              v48 = dCopy;
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
              v48 = dCopy;
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

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messagesReceived:(id)received removed:(id)self0 messagesComingFromStorage:(BOOL)self1
{
  styleCopy = style;
  v39 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  chatCopy = chat;
  propertiesCopy = properties;
  dCopy = d;
  iDCopy = iD;
  receivedCopy = received;
  removedCopy = removed;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(receivedCopy, v21, &v34, v38, 16);
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
          objc_enumerationMutation(receivedCopy);
        }

        v28 = objc_msgSend_guid(*(*(&v34 + 1) + 8 * i), v23, v24);
        objc_msgSend__clearExistingTypingIndicatorsWithMessageGUID_excludingChatWithIdentifier_(self, v29, v28, chatCopy);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(receivedCopy, v23, &v34, v38, 16);
    }

    while (v25);
  }

  objc_msgSend__processMessagesForAccount_chat_style_chatProperties_groupID_chatPersonCentricID_messages_removed_messagesComingFromStorage_(self, v23, accountCopy, chatCopy, styleCopy, propertiesCopy, dCopy, iDCopy, receivedCopy, removedCopy, storage);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)leftChat:(id)chat
{
  v14 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = chatCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Leaving chat with GUID: %@", &v12, 0xCu);
  }

  v7 = objc_msgSend_existingChatWithGUID_(self, v6, chatCopy);
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

- (void)account:(id)account handleID:(id)d updatedLastReceivedOnGridMessageDate:(id)date
{
  if (date)
  {
    v6 = MEMORY[0x1E69A80A8];
    dateCopy = date;
    dCopy = d;
    v12 = objc_msgSend_sharedInstance(v6, v9, v10);
    objc_msgSend_overrideStatusForHandleWithID_publishedBeforeDate_(v12, v11, dCopy, dateCopy);
  }
}

- (void)chat:(id)chat propertiesUpdated:(id)updated
{
  v27 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = chatCopy;
    v25 = 2112;
    v26 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@  propertiesUpdated: %@", &v23, 0x16u);
  }

  v12 = objc_msgSend__cachedChatWithGUID_(self, v9, chatCopy);
  if (!v12)
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3B04(chatCopy, updatedCopy, v13);
    }
  }

  v14 = objc_msgSend_chatIdentifier(v12, v10, v11);
  v15 = *MEMORY[0x1E69A7AC8];
  objc_msgSend_chatStyle(v12, v16, v17);
  v18 = IMCopyGUIDForChat();
  isEqualToString = objc_msgSend_isEqualToString_(v18, v19, chatCopy);
  objc_msgSend__setChatProperties_isCurrentGUID_(v12, v21, updatedCopy, isEqualToString);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)chat brandLogoUpdated:(id)updated transferGuid:(id)guid
{
  v27 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  guidCopy = guid;
  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = chatCopy;
    v23 = 2112;
    v24 = guidCopy;
    v25 = 2048;
    v26 = objc_msgSend_length(updatedCopy, v12, v13);
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "chat: %@  brandLogoUpdated: %@, %lu bytes", &v21, 0x20u);
  }

  v15 = objc_msgSend__cachedChatWithGUID_(self, v14, chatCopy);
  v18 = objc_msgSend_chatIdentifier(v15, v16, v17);
  objc_msgSend_updateBrandLogo_transferGuid_chatIdentifier_(self, v19, updatedCopy, guidCopy, v18);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)chat chatPersonCentricID:(id)d displayNameUpdated:(id)updated sender:(id)sender
{
  v26 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  updatedCopy = updated;
  senderCopy = sender;
  v14 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = chatCopy;
    v24 = 2112;
    v25 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "chat: %@  displayName: %@", &v22, 0x16u);
  }

  v16 = objc_msgSend_existingChatWithGUID_(self, v15, chatCopy);
  objc_msgSend__updateDisplayName_sender_(v16, v17, updatedCopy, senderCopy);

  if (objc_msgSend_canHaveMultipleParticipants(v16, v18, v19))
  {
    objc_msgSend__updatePersonCentricIDToChatMapForChat_toNewPersonCentricID_(self, v20, v16, dCopy);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)chat lastAddressedHandleUpdated:(id)updated
{
  v19 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = chatCopy;
    v17 = 2112;
    v18 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ lastAddressedHandleUpdated: %@", &v15, 0x16u);
  }

  v10 = objc_msgSend__cachedChatWithGUID_(self, v9, chatCopy);
  v12 = v10;
  if (v10)
  {
    objc_msgSend__updateLastAddressedHandleID_(v10, v11, updatedCopy);
  }

  else
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = chatCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring last addressed handle update", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)chat lastAddressedSIMIDUpdated:(id)updated
{
  v19 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = chatCopy;
    v17 = 2112;
    v18 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ lastAddressedSIMIDUpdated: %@", &v15, 0x16u);
  }

  v10 = objc_msgSend__cachedChatWithGUID_(self, v9, chatCopy);
  v12 = v10;
  if (v10)
  {
    objc_msgSend__updateLastAddressedSIMID_(v10, v11, updatedCopy);
  }

  else
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = chatCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring last addressed SIM ID update", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)chat lastAddressedHandleUpdated:(id)updated lastAddressedSIMIDUpdated:(id)dUpdated
{
  v24 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  dUpdatedCopy = dUpdated;
  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    v19 = chatCopy;
    v20 = 2112;
    v21 = updatedCopy;
    v22 = 2112;
    v23 = dUpdatedCopy;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "chat: %@ lastAddressedHandleUpdated: %@ lastAddressedSIMIDUpdated: %@", &v18, 0x20u);
  }

  v13 = objc_msgSend__cachedChatWithGUID_(self, v12, chatCopy);
  v15 = v13;
  if (v13)
  {
    objc_msgSend__updateLastAddressedHandleID_lastAddressedSIMID_(v13, v14, updatedCopy, dUpdatedCopy);
  }

  else
  {
    v16 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = chatCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring last addressed handle and last addressed SIM ID update", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_chat:(id)_chat partiallyUpdated:(id)updated
{
  _chatCopy = _chat;
  updatedCopy = updated;
  v9 = objc_msgSend_chatGUIDToInfoMap(self, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, _chatCopy);
  v14 = objc_msgSend_copy(v11, v12, v13);

  if (v14)
  {
    objc_msgSend_updateWithChatDictionary_(v14, v15, updatedCopy);
    v18 = objc_msgSend_chatGUIDToInfoMap(self, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, v14, _chatCopy);
  }
}

- (void)chat:(id)chat isFilteredUpdated:(int64_t)updated
{
  v24 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v7 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = chatCopy;
    v22 = 1024;
    updatedCopy = updated;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "chat: %@ isFilteredUpdated: %d", buf, 0x12u);
  }

  v10 = objc_msgSend__cachedChatWithGUID_(self, v8, chatCopy);
  if (v10)
  {
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, updated, *MEMORY[0x1E69A6BC0]);
    v19 = v11;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, &v19, &v18, 1);
    objc_msgSend__chat_partiallyUpdated_(self, v14, chatCopy, v13);

    objc_msgSend_setIsFiltered_(v10, v15, updated);
  }

  else
  {
    v16 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = chatCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring is filtered update", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)chat engramIDUpdated:(id)updated
{
  v19 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = chatCopy;
    v17 = 2112;
    v18 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ engramIDUpdated: %@", &v15, 0x16u);
  }

  v10 = objc_msgSend__cachedChatWithGUID_(self, v9, chatCopy);
  v12 = v10;
  if (v10)
  {
    objc_msgSend__updateEngramID_(v10, v11, updatedCopy);
  }

  else
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = chatCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring engram ID update", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)engroupParticipantsUpdatedForChat:(id)chat
{
  v15 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = chatCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "chat: %@ finished updating group chat", &v13, 0xCu);
  }

  v7 = objc_msgSend__cachedChatWithGUID_(self, v6, chatCopy);
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
      v14 = chatCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring engroup update", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updatedSummariesForChatsWithGUIDsAndProperties:(id)properties
{
  v50 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], v5, v6))
  {
    objc_msgSend_allKeys(propertiesCopy, v7, v8);
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
          v14 = propertiesCopy;
          v15 = objc_msgSend_objectForKey_(propertiesCopy, v10, v13);
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

          propertiesCopy = v14;
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

- (void)updatedPriorityForChatsWithGUIDsAndProperties:(id)properties chatsAndMessageGUIDs:(id)ds
{
  v69 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  dsCopy = ds;
  v55 = propertiesCopy;
  objc_msgSend_allKeys(propertiesCopy, v7, v8);
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
    selfCopy = self;
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

        v34 = objc_msgSend_objectForKeyedSubscript_(dsCopy, v33, v13);
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

        self = selfCopy;
        v11 = v51;
      }

      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v61, v68, 16);
    }

    while (v56);
  }

  v65 = @"__kIMChatRegistryPriorityChatsAndMessagesDictionaryKey";
  v66 = dsCopy;
  v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v66, &v65, 1);
  v47 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v45, v46);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v47, v48, @"__kIMChatRegistryDidUpdateMessagesWithPriorityNotification", 0, v44);

  v49 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)chat uncachedAttachmentCountUpdated:(id)updated
{
  v19 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = chatCopy;
    v17 = 2048;
    v18 = updatedCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "chat: %@ uncachedAttachmentCountUpdated: %lu", &v15, 0x16u);
  }

  v10 = objc_msgSend__cachedChatWithGUID_(self, v9, chatCopy);
  v12 = v10;
  if (v10)
  {
    objc_msgSend__setCountOfAttachmentsNotCachedLocally_(v10, v11, updatedCopy);
  }

  else
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = chatCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "No cached chat for %@, ignoring attachment count update", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_updateChat:(id)chat updateIsFiltered:(int64_t)filtered
{
  chatCopy = chat;
  objc_msgSend_updateIsFiltered_(chatCopy, v5, filtered);
  objc_msgSend_verifyFiltering(chatCopy, v6, v7);
}

- (void)_updateUnreadCountForChat:(id)chat shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v50 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v9 = chatCopy;
  if (chatCopy)
  {
    v39 = notificationCopy;
    v40 = chatCopy;
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

- (void)_updateHasCancellableScheduledMessage:(id)message shouldPostNotification:(BOOL)notification
{
  v42 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v8 = messageCopy;
  if (messageCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = messageCopy;
    v9 = objc_msgSend__guids(messageCopy, v6, v7);
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

- (void)_updatePendingIncomingSatelliteMessageCount:(id)count shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v45 = *MEMORY[0x1E69E9840];
  countCopy = count;
  v9 = countCopy;
  if (countCopy)
  {
    v35 = notificationCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = countCopy;
    v10 = objc_msgSend__guids(countCopy, v7, v8);
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

- (void)_updateTranscriptBackgroundForChat:(id)chat shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v66 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v8 = objc_msgSend_transcriptBackgroundVersion(chatCopy, v6, v7);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v11 = objc_msgSend__guids(chatCopy, v9, v10);
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v53, v65, 16);
  if (!v52)
  {
    v15 = 0;
    goto LABEL_20;
  }

  v47 = notificationCopy;
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
            objc_msgSend_guid(chatCopy, v32, v33);
            v34 = v15;
            v36 = v35 = chatCopy;
            *buf = 138413058;
            v58 = v36;
            v59 = 2112;
            v60 = v8;
            v61 = 2112;
            v62 = v17;
            v63 = 2112;
            v64 = v25;
            _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_DEFAULT, "Chat %@ (background set %@) has merged chat info with newer background (%@ at %@), will switch", buf, 0x2Au);

            chatCopy = v35;
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
      v41 = objc_msgSend_guid(chatCopy, v39, v40);
      *buf = 138412546;
      v58 = v41;
      v59 = 1024;
      LODWORD(v60) = v47;
      _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_DEFAULT, "Chat %@ required updated transcript background details (notify: %{BOOL}d)", buf, 0x12u);
    }

    objc_msgSend_setTranscriptBackgroundDetails_(chatCopy, v42, v15);
    if (v47)
    {
      v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v43, v44);
      objc_msgSend_postNotificationName_object_userInfo_(v11, v45, @"__kIMChatTranscriptBackgroundChangedNotification", chatCopy, 0);
LABEL_20:
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateChat:(id)chat chatIdentifierForGroups:(id)groups shouldPostNotification:(BOOL)notification
{
  v21 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  groupsCopy = groups;
  v10 = objc_msgSend__chatIdentifierForGroups(chatCopy, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, groupsCopy);
  if ((isEqualToString & 1) == 0)
  {
    v13 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = groupsCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Updating chat identifier from %@ to %@", &v17, 0x16u);
    }

    objc_msgSend___setChatIdentifierForGroups_(chatCopy, v14, groupsCopy);
  }

  v15 = *MEMORY[0x1E69E9840];
  return isEqualToString ^ 1;
}

- (void)_updateChat:(id)chat originalGroupID:(id)d shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v39 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  v11 = objc_msgSend_originalGroupID(chatCopy, v9, v10);
  if ((IMAreObjectsLogicallySame() & 1) == 0)
  {
    v14 = objc_msgSend_chatStyle(chatCopy, v12, v13);
    v15 = IMChatRegistryLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14 != 43)
    {
      if (!v16)
      {
LABEL_16:

        goto LABEL_17;
      }

      v26 = objc_msgSend_chatIdentifier(chatCopy, v17, v18);
      v31 = 138413058;
      v32 = v11;
      v33 = 2112;
      v34 = dCopy;
      v35 = 2112;
      v36 = v26;
      v37 = 1024;
      v38 = objc_msgSend_chatStyle(chatCopy, v28, v29);
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring original groupID update (%@ -> %@) because chat is not group chat: [IMChat chat identifier: %@  style: %c]", &v31, 0x26u);
LABEL_15:

      goto LABEL_16;
    }

    if (v16)
    {
      v19 = objc_msgSend_guid(chatCopy, v17, v18);
      v31 = 138412802;
      v32 = v19;
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = dCopy;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Updating original groupID of chat %@ from %@ to %@", &v31, 0x20u);
    }

    if (dCopy)
    {
      objc_msgSend_setOriginalGroupID_(chatCopy, v20, dCopy);
    }

    if (notificationCopy)
    {
      v21 = objc_alloc(MEMORY[0x1E695DF90]);
      v23 = objc_msgSend_initWithCapacity_(v21, v22, 2);
      v15 = v23;
      if (v11)
      {
        objc_msgSend_setObject_forKey_(v23, v24, v11, @"__kIMChatRegistryPreviousOriginalGroupIDKey");
      }

      if (dCopy)
      {
        objc_msgSend_setObject_forKey_(v15, v24, dCopy, @"__kIMChatRegistryUpdatedOriginalGroupIDKey");
      }

      v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
      objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v26, v27, @"__kIMChatRegistryOriginalGroupIDChangedNotification", chatCopy, v15);
      goto LABEL_15;
    }
  }

LABEL_17:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_updateDomainIdentifiersForChat:(id)chat incomingDictionary:(id)dictionary shouldPostNotification:(BOOL)notification
{
  v61[5] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dictionaryCopy = dictionary;
  v9 = objc_msgSend_objectForKey_(dictionaryCopy, v8, *MEMORY[0x1E69A6B50]);
  v11 = objc_msgSend_objectForKey_(dictionaryCopy, v10, *MEMORY[0x1E69A6B18]);
  if (objc_msgSend_count(v9, v12, v13) || (objc_msgSend_domainIdentifiers(chatCopy, v14, v15), v55 = objc_claimAutoreleasedReturnValue(), isEmpty = objc_msgSend_isEmpty(v55, v56, v57), v55, !isEmpty) || !v11)
  {
    if (objc_msgSend_chatStyle(chatCopy, v14, v15) == 43)
    {
      if (v11)
      {
        v18 = objc_msgSend_domainIdentifiers(chatCopy, v16, v17);
        v19 = *MEMORY[0x1E69A7AC8];
        objc_msgSend_chatStyle(chatCopy, v20, v21);
        v22 = IMCopyGUIDForChat();
        v24 = objc_msgSend_domainIdentifiersForChatGUID_(v18, v23, v22);
        v27 = objc_msgSend_copy(v24, v25, v26);

        if (!v27)
        {
          v27 = objc_alloc_init(MEMORY[0x1E695DF20]);
        }

        v32 = objc_msgSend_groupID(chatCopy, v28, v29);
        if (!v32)
        {
          v33 = IMLogHandleForCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_1A84E3B8C(chatCopy, v33, v34);
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

      v50 = objc_msgSend_domainIdentifiers(chatCopy, v16, v17);
      v52 = objc_msgSend_objectForKey_(dictionaryCopy, v51, *MEMORY[0x1E69A6B70]);
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

- (void)_updateChat:(id)chat groupID:(id)d shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  v70 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  v12 = objc_msgSend_groupID(chatCopy, v10, v11);
  if ((IMAreObjectsLogicallySame() & 1) == 0)
  {
    if (objc_msgSend_chatStyle(chatCopy, v13, v14) == 43)
    {
      if (dCopy)
      {
        v17 = objc_msgSend_groupIDToChatMap(self, v15, v16);
        v19 = objc_msgSend_objectForKey_(v17, v18, dCopy);

        if (v19 && objc_msgSend_chatStyle(v19, v20, v21) == 43)
        {
          v22 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v25 = objc_msgSend_guid(chatCopy, v23, v24);
            *buf = 138413058;
            v63 = v12;
            v64 = 2112;
            v65 = dCopy;
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
        v33 = objc_msgSend_guid(chatCopy, v31, v32);
        *buf = 138412802;
        v63 = v33;
        v64 = 2112;
        v65 = v12;
        v66 = 2112;
        v67 = dCopy;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEFAULT, "Updating groupID of chat %@ from %@ to %@", buf, 0x20u);
      }

      if (!dCopy)
      {
        v52 = v12 != 0;
        if (!notificationCopy)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }

      objc_msgSend_setGroupID_(chatCopy, v34, dCopy);
      v37 = objc_msgSend_groupIDToChatMap(self, v35, v36);
      objc_msgSend_setObject_forKey_(v37, v38, chatCopy, dCopy);

      if (v12)
      {
        v41 = objc_msgSend_chatIdentifier(chatCopy, v39, v40);

        if (v41)
        {
          v44 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v42, v43);
          v45 = *MEMORY[0x1E69A8380];
          v48 = objc_msgSend_chatIdentifier(chatCopy, v46, v47, *MEMORY[0x1E69A8388], *MEMORY[0x1E69A8390], *MEMORY[0x1E69A8378], v12, dCopy);
          v61[2] = v48;
          v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v49, v61, &v60, 3);
          objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v44, v51, v45, 0, v50);
        }

        v52 = 1;
        if (!notificationCopy)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }

      v52 = 0;
      if (notificationCopy)
      {
LABEL_22:
        v53 = objc_alloc(MEMORY[0x1E695DF90]);
        v55 = objc_msgSend_initWithCapacity_(v53, v54, 2);
        v22 = v55;
        if (v52)
        {
          objc_msgSend_setObject_forKey_(v55, v56, v12, @"__kIMChatRegistryPreviousGroupIDKey");
        }

        if (dCopy)
        {
          objc_msgSend_setObject_forKey_(v22, v56, dCopy, @"__kIMChatRegistryUpdatedGroupIDKey");
        }

        v25 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v56, v57);
        objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v25, v58, @"__kIMChatRegistryGroupIDChangedNotification", chatCopy, v22);
        goto LABEL_27;
      }
    }

    else
    {
      v19 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_msgSend_chatIdentifier(chatCopy, v26, v27);
        *buf = 138413058;
        v63 = v12;
        v64 = 2112;
        v65 = dCopy;
        v66 = 2112;
        v67 = v22;
        v68 = 1024;
        LODWORD(v69) = objc_msgSend_chatStyle(chatCopy, v28, v29);
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring groupID update (%@ -> %@) because chat is not group chat: [IMChat chat identifier: %@  style: %c]", buf, 0x26u);
        goto LABEL_28;
      }
    }

LABEL_29:
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateAutoDonationBehavior:(int64_t)behavior forChat:(id)chat shouldPostNotification:(BOOL)notification
{
  notificationCopy = notification;
  chatCopy = chat;
  v11 = objc_msgSend_autoDonationBehavior(chatCopy, v8, v9);
  if (v11 != behavior)
  {
    objc_msgSend_setAutoDonationBehavior_(chatCopy, v10, behavior);
    if (notificationCopy)
    {
      if (objc_msgSend_isSharedWithYouEnabled(MEMORY[0x1E69A8288], v12, v13))
      {
        v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
        objc_msgSend___mainThreadPostNotificationName_object_(v16, v17, @"__kIMChatRegistryChatMarkedForAutoDonatingChangedNotification", chatCopy);
      }
    }
  }

  return v11 != behavior;
}

- (void)_updateReplySuggestions:(id)suggestions withInfo:(id)info
{
  v82 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  infoCopy = info;
  v9 = objc_msgSend_lastFinishedMessageItem(suggestionsCopy, v7, v8);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_isTypingMessage(v9, v10, v11))
  {
    v12 = objc_msgSend_objectForKey_(infoCopy, v10, *MEMORY[0x1E69A6C80]);
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
        v49 = objc_msgSend_guid(suggestionsCopy, v47, v48);
        v74 = 138412290;
        v75 = v49;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "[%@] no smart replies in info dictionary", &v74, 0xCu);
      }

LABEL_38:

      goto LABEL_39;
    }

    v17 = objc_msgSend_objectForKey_(infoCopy, v16, *MEMORY[0x1E69A6B70]);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v23 = objc_msgSend_guid(suggestionsCopy, v21, v22);
        v74 = 138412546;
        v75 = v23;
        v76 = 2112;
        v77 = v17;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "[%@] infoGuid = %@", &v74, 0x16u);
      }
    }

    v24 = objc_msgSend_guid(suggestionsCopy, v18, v19);
    isEqualToString = objc_msgSend_isEqualToString_(v24, v25, v17);

    if ((isEqualToString & 1) == 0)
    {
      v29 = objc_msgSend_lastFinishedMessage(suggestionsCopy, v27, v28);
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
          v52 = objc_msgSend_guid(suggestionsCopy, v50, v51);
          v74 = 138412546;
          v75 = v52;
          v76 = 2112;
          v77 = v17;
          _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "[%@] returning because last finished message is nil, can't get finished message time with info guid = %@", &v74, 0x16u);
        }

        goto LABEL_19;
      }

      v33 = objc_msgSend_lastFinishedMessageDate(suggestionsCopy, v31, v32);
      v36 = objc_msgSend___im_nanosecondTimeInterval(v33, v34, v35);

      v38 = objc_msgSend_objectForKey_(infoCopy, v37, *MEMORY[0x1E69A6C10]);
      v41 = objc_msgSend_longLongValue(v38, v39, v40);
      v42 = IMOSLoggingEnabled();
      if (v41 < v36)
      {
        if (v42)
        {
          v43 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v46 = objc_msgSend_guid(suggestionsCopy, v44, v45);
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
          v56 = objc_msgSend_guid(suggestionsCopy, v54, v55);
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
        v61 = objc_msgSend_guid(suggestionsCopy, v59, v60);
        v64 = objc_msgSend_replySuggestions(suggestionsCopy, v62, v63);
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

    objc_msgSend_setReplySuggestions_(suggestionsCopy, v57, v12);
    objc_msgSend_updateReplySuggestions(suggestionsCopy, v71, v72);
    goto LABEL_38;
  }

  objc_msgSend_setReplySuggestions_(suggestionsCopy, v10, 0);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = objc_msgSend_guid(suggestionsCopy, v13, v14);
      v74 = 138412290;
      v75 = v15;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "[%@] removing replies for typing indicator", &v74, 0xCu);
    }

    goto LABEL_39;
  }

LABEL_40:

  v73 = *MEMORY[0x1E69E9840];
}

- (void)chat:(id)chat updated:(id)updated
{
  v253[2] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  updatedCopy = updated;
  v170 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v8, *MEMORY[0x1E69A6C08]);
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
  v10 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v9, *MEMORY[0x1E69A6AF0]);
  IMUUIDForUUIDString();

  v12 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v11, *MEMORY[0x1E69A6BF8]);
  IMUUIDForUUIDString();

  v13 = *MEMORY[0x1E69A6C70];
  v15 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v14, *MEMORY[0x1E69A6C70]);
  v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, *MEMORY[0x1E69A6C20]);
  IMUUIDForUUIDString();

  log = IMChatRegistryLogHandle();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v167 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v18, *MEMORY[0x1E69A6B18]);
    v166 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v19, *MEMORY[0x1E69A6B78]);
    v157 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v20, *MEMORY[0x1E69A6B70]);
    v164 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v21, *MEMORY[0x1E69A6B90]);
    v145 = objc_msgSend_BOOLValue(v164, v22, v23);
    v163 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v24, *MEMORY[0x1E69A6BA8]);
    v143 = objc_msgSend_BOOLValue(v163, v25, v26);
    v162 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v27, *MEMORY[0x1E69A6BB0]);
    v142 = objc_msgSend_BOOLValue(v162, v28, v29);
    v161 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v30, *MEMORY[0x1E69A6BC0]);
    v140 = objc_msgSend_BOOLValue(v161, v31, v32);
    v160 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v33, *MEMORY[0x1E69A6BD8]);
    v139 = objc_msgSend_BOOLValue(v160, v34, v35);
    v153 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v36, *MEMORY[0x1E69A6BF0]);
    v152 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v37, *MEMORY[0x1E69A6C10]);
    v151 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v38, *MEMORY[0x1E69A6C18]);
    v159 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v39, *MEMORY[0x1E69A6B00]);
    v136 = objc_msgSend_longValue(v159, v40, v41);
    v158 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v42, *MEMORY[0x1E69A6C38]);
    objc_msgSend_doubleValue(v158, v43, v44);
    v46 = v45;
    v120 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v47, *MEMORY[0x1E69A6C50]);
    v147 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v48, *MEMORY[0x1E69A6C68]);
    v118 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v49, *MEMORY[0x1E69A6C88]);
    v156 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v50, *MEMORY[0x1E69A6C90]);
    v132 = objc_msgSend_intValue(v156, v51, v52);
    v117 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v53, *MEMORY[0x1E69A6C98]);
    v155 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v54, *MEMORY[0x1E69A6BE0]);
    v129 = objc_msgSend_longValue(v155, v55, v56);
    v154 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v57, *MEMORY[0x1E69A6CA8]);
    v127 = objc_msgSend_longValue(v154, v58, v59);
    v150 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v60, *MEMORY[0x1E69A6CD0]);
    v125 = objc_msgSend_unsignedLongValue(v150, v61, v62);
    v149 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v63, v13);
    v148 = objc_msgSend_objectForKeyedSubscript_(v149, v64, @"LSMD");
    objc_msgSend_timeIntervalSince1970(v148, v65, v66);
    v68 = v67;
    v146 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v69, v13);
    v144 = objc_msgSend_objectForKeyedSubscript_(v146, v70, @"RCSGroupIdentityVersion");
    v122 = objc_msgSend_intValue(v144, v71, v72);
    v141 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v73, v13);
    v130 = objc_msgSend_objectForKeyedSubscript_(v141, v74, @"RCSGroupURI");
    v138 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v75, v13);
    v137 = objc_msgSend_objectForKeyedSubscript_(v138, v76, @"hasViewedPotentialSpamChat");
    v116 = objc_msgSend_BOOLValue(v137, v77, v78);
    v135 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v79, v13);
    v134 = objc_msgSend_objectForKeyedSubscript_(v135, v80, *MEMORY[0x1E69A6C40]);
    objc_msgSend_timeIntervalSince1970(v134, v81, v82);
    v84 = v83;
    v133 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v85, v13);
    v131 = objc_msgSend_objectForKeyedSubscript_(v133, v86, @"messageHandshakeState");
    v114 = objc_msgSend_longValue(v131, v87, v88);
    v128 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v89, v13);
    v126 = objc_msgSend_objectForKeyedSubscript_(v128, v90, @"numberOfTimesRespondedtoThread");
    v113 = objc_msgSend_intValue(v126, v91, v92);
    v124 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v93, v13);
    v123 = objc_msgSend_objectForKeyedSubscript_(v124, v94, @"pv");
    v112 = objc_msgSend_longValue(v123, v95, v96);
    v121 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v97, v13);
    objc_msgSend_objectForKeyedSubscript_(v121, v98, @"shouldForceToSMS");
    v119 = v165 = self;
    v101 = objc_msgSend_BOOLValue(v119, v99, v100);
    v115 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v102, v13);
    v104 = objc_msgSend_objectForKeyedSubscript_(v115, v103, @"supportsEncryption");
    v107 = objc_msgSend_BOOLValue(v104, v105, v106);
    v109 = objc_msgSend_objectForKeyedSubscript_(updatedCopy, v108, *MEMORY[0x1E69A6C58]);
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
    v172 = chatCopy;
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

  objc_msgSend__updateInfo_forGUID_updatingUnreadCount_(self, v110, updatedCopy, chatCopy, 1);
  v111 = *MEMORY[0x1E69E9840];
}

- (void)unreadCountChanged:(int64_t)changed
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, changed);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v5, v6, v7);

  if ((isUnreadCountRefactorEnabled & 1) == 0 && objc_msgSend_unreadCount(self, v9, v10) != changed)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20[0] = 67109376;
        v20[1] = objc_msgSend_unreadCount(self, v13, v14);
        v21 = 1024;
        changedCopy = changed;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Unread count changed from %d to %d", v20, 0xEu);
      }
    }

    objc_msgSend_setUnreadCount_(self, v11, changed);
    v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
    objc_msgSend___mainThreadPostNotificationName_object_(v17, v18, @"__kIMChatRegistryUnreadCountChangedNotification", 0);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_processUnreadCountFullReplacement:(id)replacement
{
  replacementCopy = replacement;
  if (replacementCopy)
  {
    objc_msgSend_setUnreadCountReplacementState_(self, v4, 0);
    v8 = objc_msgSend_unreadCountController(self, v6, v7);
    objc_msgSend_processDelta_(v8, v9, replacementCopy);

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

- (void)unreadCountReportsUpdated:(id)updated
{
  updatedCopy = updated;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v6, v7, v8);

  if (isUnreadCountRefactorEnabled)
  {
    if ((objc_msgSend_isReplacement(updatedCopy, v10, v11) & 1) == 0 && !IMGetDomainBoolForKeyWithDefaultValue() || (objc_msgSend_unreadCountController(self, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend_processDelta_(v14, v15, updatedCopy), v14, (v16 & 1) == 0))
    {
      objc_msgSend__rebuildUnreadCountController(self, v12, v13);
    }
  }
}

- (void)lastFailedMessageDateChanged:(int64_t)changed
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_lastFailedMessageDate(self, a2, changed) != changed)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v14 = 134218240;
        FailedMessageDate = objc_msgSend_lastFailedMessageDate(self, v7, v8);
        v16 = 2048;
        changedCopy = changed;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Failed message date changed from %lld to %lld", &v14, 0x16u);
      }
    }

    objc_msgSend_setLastFailedMessageDate_(self, v5, changed);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
    objc_msgSend___mainThreadPostNotificationName_object_(v11, v12, @"__kIMChatRegistryLastFailedMessageDateChangedNotification", 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)historicalMessageGUIDsDeleted:(id)deleted chatGUIDs:(id)ds queryID:(id)d
{
  v53 = *MEMORY[0x1E69E9840];
  deletedCopy = deleted;
  dsCopy = ds;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v48 = deletedCopy;
      v49 = 2112;
      v50 = dCopy;
      v51 = 2112;
      v52 = dsCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "deletedGUIDs: %@  queryID: %@  chatGUIDs: %@", buf, 0x20u);
    }
  }

  if (objc_msgSend_count(dsCopy, v11, v12))
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = dsCopy;
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
            objc_msgSend__handleMessageGUIDDeletions_(v24, v25, deletedCopy);
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
    v41 = deletedCopy;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v16, v30, v40);
    v17 = v41;
  }

  v33 = objc_msgSend_daemonQueryController(self, v31, v32);
  objc_msgSend_completeQuery_(v33, v34, dCopy);

  v37 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v35, v36);
  objc_msgSend___mainThreadPostNotificationName_object_(v37, v38, @"__kIMChatRegistryDidMoveMessagesInChatsToRecentlyDeletedNotification", deletedCopy);

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_checkLimitAndSetMessagesToKeepLoadedIfNeeded:(unint64_t)needed chat:(id)chat
{
  v17 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if (objc_msgSend_numberOfMessagesToKeepLoaded(chatCopy, v6, v7) < needed)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 134218240;
        neededCopy = needed;
        v15 = 2048;
        v16 = objc_msgSend_numberOfMessagesToKeepLoaded(chatCopy, v10, v11);
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "The limit (%lu) of number of messages we loaded is higher than our capacity (%lu), bumping our capactity to the new limit", &v13, 0x16u);
      }
    }

    objc_msgSend_setNumberOfMessagesToKeepLoaded_(chatCopy, v8, needed);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_checkIfItemIsCorrupt:(id)corrupt
{
  v22 = *MEMORY[0x1E69E9840];
  corruptCopy = corrupt;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = corruptCopy;
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

- (void)_completeChatLoadQueryWithChat:(id)chat queryID:(id)d
{
  v23[1] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dCopy = d;
  if (dCopy)
  {
    if (chatCopy)
    {
      v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
      v22 = @"__kIMChatQueryIDKey";
      v23[0] = dCopy;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v23, &v22, 1);
      objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v10, v13, @"__kIMChatLoadRequestDidCompleteNotification", chatCopy, v12);

      v16 = objc_msgSend_daemonQueryController(self, v14, v15);
      objc_msgSend_completeQuery_(v16, v17, dCopy);
    }

    else
    {
      v16 = objc_msgSend_daemonQueryController(self, v7, v8);
      v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v18, @"com.apple.Messages.IMChatRegistryErrorDomain", 1, 0);
      objc_msgSend_failQuery_error_(v16, v20, dCopy, v19);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)historyQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result limit:(int64_t)limit
{
  v83 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
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
      v75 = queryCopy;
      v76 = 2112;
      v77 = dCopy;
      v78 = 2112;
      v79 = servicesCopy;
      v80 = 1024;
      v81 = objc_msgSend_count(resultCopy, v22, v23);
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "History query ID: %@   chatID: %@  service: %@  finished with results (%d)", buf, 0x26u);
    }
  }

  v24 = objc_msgSend_existingChatWithGUID_(self, v20, dCopy);
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
    v32 = resultCopy;
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

    objc_msgSend__checkLimitAndSetMessagesToKeepLoadedIfNeeded_chat_(self, v51, limit, v24);
    objc_msgSend__insertHistoricalMessages_queryID_isRefresh_isHistoryQuery_limit_(v24, v52, v34, queryCopy, 0, 1, limit);
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
        v75 = queryCopy;
        v76 = 2112;
        v77 = dCopy;
        _os_log_impl(&dword_1A823F000, v58, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", buf, 0x16u);
      }
    }

    v35 = 0;
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v26, v24, queryCopy);
  kdebug_trace();

LABEL_38:
  v59 = *MEMORY[0x1E69E9840];
}

- (void)pagedHistoryQuery:(id)query chatID:(id)d services:(id)services numberOfMessagesBefore:(int64_t)before numberOfMessagesAfter:(int64_t)after finishedWithResult:(id)result hasMessagesBefore:(BOOL)hasMoreMessagesToLoad hasMessagesAfter:(BOOL)hasMoreRecentMessagesToLoad
{
  v95 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
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
      *v84 = queryCopy;
      *&v84[8] = 2112;
      v85 = dCopy;
      v86 = 2112;
      v87 = servicesCopy;
      v88 = 1024;
      v89 = objc_msgSend_count(resultCopy, v25, v26);
      v90 = 1024;
      beforeCopy = before;
      v92 = 1024;
      afterCopy = after;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Paged history query ID: %@ chatID: %@ service: %@ finished with results count: %d numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0x32u);
    }
  }

  v29 = objc_msgSend_existingChatWithGUID_(self, v23, dCopy);
  if (v29)
  {
    v30 = objc_msgSend_sharedInstance(IMAccountController, v27, v28);
    objc_msgSend__enableCache(v30, v31, v32);

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v33 = resultCopy;
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
        *v84 = before;
        *&v84[4] = 1024;
        *&v84[6] = after;
        _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "Paged history about to call insert historicalMessages numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0xEu);
      }
    }

    v54 = after > 0 && before > 0;
    if (before <= 0)
    {
      hasMoreMessagesToLoad = objc_msgSend_hasMoreMessagesToLoad(v29, v51, v52);
    }

    if (after <= 0)
    {
      hasMoreRecentMessagesToLoad = objc_msgSend_hasMoreRecentMessagesToLoad(v29, v51, v52);
    }

    v59 = objc_msgSend_count(v35, v51, v52);
    HIBYTE(v70) = hasMoreRecentMessagesToLoad;
    LOBYTE(v70) = hasMoreMessagesToLoad;
    objc_msgSend__insertHistoricalMessages_queryID_isRefresh_isHistoryQuery_isReplacingItems_limit_hasMessagesBefore_hasMessagesAfter_(v29, v60, v35, queryCopy, 0, 1, v54, v59, v70);
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
        *v84 = queryCopy;
        *&v84[8] = 2112;
        v85 = dCopy;
        _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "Found no chat object for query: %@  chat ID: %@", buf, 0x16u);
      }
    }

    v36 = 0;
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v56, v29, queryCopy);

LABEL_43:
  v66 = *MEMORY[0x1E69E9840];
}

- (void)attachmentQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result
{
  v56 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
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
      v49 = queryCopy;
      v50 = 2112;
      v51 = dCopy;
      v52 = 2112;
      v53 = servicesCopy;
      v54 = 1024;
      v55 = objc_msgSend_count(resultCopy, v26, v27);
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Media attachment filenames query ID: %@   chatID: %@  service: %@  finished with results (%d)", buf, 0x26u);
    }
  }

  v28 = objc_msgSend_existingChatWithGUID_(self, v24, dCopy);
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
    v35 = objc_msgSend_count(resultCopy, v33, v34);
    v37 = objc_msgSend_initWithCapacity_(v32, v36, v35);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = sub_1A83BE754;
    v46[3] = &unk_1E78145D8;
    v47 = v37;
    v38 = v37;
    objc_msgSend_enumerateObjectsUsingBlock_(resultCopy, v39, v46);
    objc_msgSend__setAttachments_(v28, v40, v38);
  }

  else if (v29)
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v49 = queryCopy;
      v50 = 2112;
      v51 = dCopy;
      _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", buf, 0x16u);
    }
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v30, v28, queryCopy);

LABEL_20:
  v42 = *MEMORY[0x1E69E9840];
}

- (void)uncachedAttachmentCountQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result
{
  v45 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
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
      v38 = queryCopy;
      v39 = 2112;
      v40 = dCopy;
      v41 = 2112;
      v42 = servicesCopy;
      v43 = 2048;
      v44 = objc_msgSend_unsignedLongValue(resultCopy, v26, v27);
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Media attachment uncached count query ID: %@   chatID: %@  service: %@  finished with results (%lu)", &v37, 0x2Au);
    }
  }

  v28 = objc_msgSend_existingChatWithGUID_(self, v24, dCopy);
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

    objc_msgSend__setCountOfAttachmentsNotCachedLocally_(v28, v30, resultCopy);
  }

  else if (v29)
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v37 = 138412546;
      v38 = queryCopy;
      v39 = 2112;
      v40 = dCopy;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", &v37, 0x16u);
    }
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v30, v28, queryCopy);

LABEL_20:
  v33 = *MEMORY[0x1E69E9840];
}

- (id)_chatForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
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
  objc_msgSend_enumerateObjectsUsingBlock_(identifiersCopy, v5, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)finishedDownloadingPurgedAssetsForChatIDs:(id)ds
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
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
      v27 = dsCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Media attachment download purged assets for chatIDs: %@  finished.", &v26, 0xCu);
    }
  }

  v19 = objc_msgSend__chatForIdentifiers_(self, v15, dsCopy);
  if (v19)
  {
    v20 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v17, v18);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v20, v21, @"__kIMChatPurgedAttachmentsDownloadCompleteNotification", v19, 0);
  }

LABEL_12:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)downloadedPurgedAssetBatchForChatIDs:(id)ds completedTransferGUIDs:(id)iDs
{
  v36 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
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
      v35 = dsCopy;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Media attachment download purged assets batch for chatIDs: %@  finished.", buf, 0xCu);
    }
  }

  v21 = objc_msgSend__chatForIdentifiers_(self, v18, dsCopy);
  if (v21)
  {
    if (iDsCopy)
    {
      v22 = iDsCopy;
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

- (void)markAsSpamQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result
{
  v43 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
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
      v36 = queryCopy;
      v37 = 2112;
      v38 = dCopy;
      v39 = 2112;
      v40 = servicesCopy;
      v41 = 2112;
      v42 = resultCopy;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Mark as Spam query ID: %@   chatID: %@  service: %@  finished with results (%@)", &v35, 0x2Au);
    }
  }

  v26 = objc_msgSend_existingChatWithGUID_(self, v24, dCopy);
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

    objc_msgSend__setCountOfMessagesMarkedAsSpam_(v26, v28, resultCopy);
  }

  else if (v27)
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v35 = 138412546;
      v36 = queryCopy;
      v37 = 2112;
      v38 = dCopy;
      _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Found no chat object for query: %@   chat ID: %@", &v35, 0x16u);
    }
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v28, v26, queryCopy);

LABEL_20:
  v31 = *MEMORY[0x1E69E9840];
}

- (void)frequentRepliesQuery:(id)query chatID:(id)d services:(id)services finishedWithResult:(id)result limit:(int64_t)limit
{
  v48 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dCopy = d;
  servicesCopy = services;
  resultCopy = result;
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
  v28 = objc_msgSend_existingChatWithGUID_(self, v25, dCopy);
  if (v28)
  {
    v29 = objc_msgSend_sharedInstance(IMAccountController, v26, v27);
    objc_msgSend__enableCache(v29, v30, v31);

    objc_msgSend_setFrequentReplies_(v28, v32, resultCopy);
    v35 = objc_msgSend_sharedInstance(IMAccountController, v33, v34);
    objc_msgSend__disableCache(v35, v36, v37);
  }

  else if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v44 = 138412546;
      v45 = queryCopy;
      v46 = 2112;
      v47 = dCopy;
      _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_INFO, "Found no chat object for frequent replies query: %@   chat ID: %@", &v44, 0x16u);
    }
  }

  objc_msgSend__completeChatLoadQueryWithChat_queryID_(self, v38, v28, queryCopy);

LABEL_12:
  v40 = *MEMORY[0x1E69E9840];
}

- (void)_automation_markAsReadQuery:(id)query finishedWithResult:(BOOL)result
{
  queryCopy = query;
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
    objc_msgSend_completeQuery_(v17, v18, queryCopy);

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

- (void)chatsNeedRemerging:(id)remerging groupedChats:(id)chats
{
  v65 = *MEMORY[0x1E69E9840];
  remergingCopy = remerging;
  chatsCopy = chats;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Chats need re-merging notification", buf, 2u);
  }

  if (objc_msgSend_count(remergingCopy, v9, v10) < 2)
  {
    if (objc_msgSend_count(remergingCopy, v11, v12) == 1)
    {
      v42 = objc_msgSend_lastObject(remergingCopy, v40, v41);
      v44 = objc_msgSend_existingChatWithGUID_(self, v43, v42);
      v47 = objc_msgSend_firstObject(chatsCopy, v45, v46);
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
      v64 = remergingCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Asked to remerge %@", buf, 0xCu);
    }

    v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
    if (remergingCopy)
    {
      v18 = remergingCopy;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    v61 = @"__kIMChatRegistryGUIDListKey";
    v62 = v18;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v62, &v61, 1, chatsCopy);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v17, v20, @"__kIMChatRegistryWillRemergeChatsNotification", self, v19);

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = remergingCopy;
    v21 = remergingCopy;
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

    chatsCopy = v52;
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

    remergingCopy = v53;
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (id)_copyMergedChatsPairedArrayFromMergedChatsArray:(id)array
{
  v52 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = objc_msgSend_count(arrayCopy, v5, v6);
  v45 = objc_msgSend_initWithCapacity_(v4, v8, v7);
  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v11 = objc_msgSend_initWithCapacity_(v9, v10, 10);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = arrayCopy;
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

- (void)_handleMergedChatReconstructions:(id)reconstructions
{
  v58 = *MEMORY[0x1E69E9840];
  reconstructionsCopy = reconstructions;
  v6 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v9 = objc_msgSend_processCapabilities(v6, v7, v8);

  if ((v9 & 0x2400000) != 0)
  {
    v49 = objc_msgSend__copyMergedChatsPairedArrayFromMergedChatsArray_(self, v10, reconstructionsCopy);
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

- (void)updateChatDictionaryArray:(id)array createdChat:(id)chat joinstate:(int64_t)joinstate setHasCommunicatedOveriMessage:(BOOL *)message
{
  joinstateCopy = joinstate;
  arrayCopy = array;
  chatCopy = chat;
  if (objc_msgSend_count(arrayCopy, v9, v10) >= 2)
  {
    v54 = *MEMORY[0x1E69A6B70];
    v53 = *MEMORY[0x1E69A6BE0];
    v52 = *MEMORY[0x1E69A6BC0];
    v51 = *MEMORY[0x1E69A6C08];
    v50 = *MEMORY[0x1E69A6B50];
    v12 = 1;
    do
    {
      v13 = objc_msgSend_objectAtIndex_(arrayCopy, v11, v12, joinstateCopy);
      v15 = objc_msgSend_objectForKey_(v13, v14, v54);
      v17 = objc_msgSend_objectForKey_(v13, v16, v53);
      v20 = objc_msgSend_intValue(v17, v18, v19);

      objc_msgSend__registerChatDictionary_forChat_isIncoming_newGUID_shouldPostNotification_(self, v21, v13, chatCopy, 0, v15, 0);
      objc_msgSend__updateInfo_forGUID_updatingUnreadCount_shouldPostNotifications_(self, v22, v13, v15, 1, 0);
      v24 = objc_msgSend_objectForKeyedSubscript_(v13, v23, v52);
      v27 = objc_msgSend_longLongValue(v24, v25, v26);

      if (!v27)
      {
        objc_msgSend_setIsFiltered_(chatCopy, v28, 0);
      }

      v29 = objc_msgSend_objectForKey_(v13, v28, v51);
      v31 = objc_msgSend_objectForKey_(v29, v30, @"service");
      v33 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v32, v31);
      v36 = v33;
      if (!*message)
      {
        if (v33)
        {
          v37 = objc_msgSend_iMessageService(IMServiceImpl, v34, v35);

          if (v36 == v37)
          {
            v38 = objc_msgSend_sharedRegistry(IMChatRegistry, v34, v35);
            objc_msgSend__setChatHasCommunicatedOveriMessage_(v38, v39, chatCopy);

            *message = 1;
          }
        }
      }

      if (objc_msgSend_supportsMutatingGroupMembers(v36, v34, v35))
      {
        isDiscontinued = objc_msgSend_isDiscontinued(v36, v40, v41);
        if (joinstateCopy == 3 && (isDiscontinued & 1) == 0)
        {
          objc_msgSend__setJoinState_(chatCopy, v40, v20);
        }
      }

      v43 = objc_msgSend_domainIdentifiers(chatCopy, v40, v41);
      v45 = objc_msgSend_objectForKey_(v13, v44, v50);
      objc_msgSend_setDomainIdentifiers_forChatGUID_(v43, v46, v45, v15);

      ++v12;
    }

    while (v12 < objc_msgSend_count(arrayCopy, v47, v48));
  }
}

- (void)_handleCachingAliasToCNIDMap:(id)map
{
  v23 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v5 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v5, v6, @"_handleCachingAliasToCNIDMap");
  v9 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  v11 = *MEMORY[0x1E69A6298] & objc_msgSend_capabilitiesForListenerID_(v9, v10, 0);

  if (!v11)
  {
    v15 = objc_msgSend_contactStore(self, v12, v13);
    objc_msgSend_setHandleIDToCNIDMap_(v15, v16, mapCopy);

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

- (void)_handleChatReconstructions:(id)reconstructions
{
  v65 = *MEMORY[0x1E69E9840];
  reconstructionsCopy = reconstructions;
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

        objc_msgSend___handleChatReconstructions_(self, v29, reconstructionsCopy);
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

- (void)__handleChatReconstructions:(id)reconstructions
{
  buf[7] = *MEMORY[0x1E69E9840];
  reconstructionsCopy = reconstructions;
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
  obj = reconstructionsCopy;
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
          selfCopy = self;
          if ((v249 & 1) == 0)
          {
            v94 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(&dword_1A823F000, v94, OS_LOG_TYPE_DEFAULT, "** Posting will load notification", buf, 2u);
            }

            v97 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v95, v96);
            objc_msgSend___mainThreadPostNotificationName_object_(v97, v98, @"__kIMChatRegistryWillLoadNotification", selfCopy);
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

          objc_msgSend__registerChatDictionary_forChat_isIncoming_newGUID_shouldPostNotification_(selfCopy, v99, v64, v28, 0, log, 0);
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

      selfCopy2 = self;
      if ((v249 & 1) == 0)
      {
        v34 = selfCopy2;
        v35 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_DEFAULT, "** Posting will load notification", buf, 2u);
        }

        v38 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v36, v37);
        objc_msgSend___mainThreadPostNotificationName_object_(v38, v39, @"__kIMChatRegistryWillLoadNotification", v34);

        selfCopy2 = v34;
      }

      v250 = selfCopy2;

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
          selfCopy3 = self;
          if ((v249 & 1) == 0)
          {
            v205 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(&dword_1A823F000, v205, OS_LOG_TYPE_DEFAULT, "** Posting will load notification", buf, 2u);
            }

            v208 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v206, v207);
            objc_msgSend___mainThreadPostNotificationName_object_(v208, v209, @"__kIMChatRegistryWillLoadNotification", selfCopy3);
          }

          v210 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 138412290;
            *(buf + 4) = v202;
            _os_log_impl(&dword_1A823F000, v210, OS_LOG_TYPE_DEFAULT, " => Unregistering chat: %@", buf, 0xCu);
          }

          objc_msgSend__unregisterChat_deleted_(selfCopy3, v211, v202, 0);
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

- (void)setupComplete:(BOOL)complete info:(id)info
{
  v88 = *MEMORY[0x1E69E9840];
  infoCopy = info;
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
    v23 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v22, *MEMORY[0x1E69A7C18]);
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

    v42 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v41, *MEMORY[0x1E69A7C20]);
    v44 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v43, *MEMORY[0x1E69A7C10]);
    if (objc_msgSend_count(v30, v45, v46) || v42 || v44)
    {
      v47 = objc_alloc(MEMORY[0x1E69A8348]);
      isReplacement_fromStamp_toStamp = objc_msgSend_initWithDeletedGUIDs_updatedReports_isReplacement_fromStamp_toStamp_(v47, v48, 0, v29, 1, v42, v44);
      objc_msgSend_unreadCountReportsUpdated_(self, v50, isReplacement_fromStamp_toStamp);
    }
  }

  else
  {
    v29 = objc_msgSend_objectForKey_(infoCopy, v22, *MEMORY[0x1E69A7C08]);
    v53 = objc_msgSend_integerValue(v29, v51, v52);
    objc_msgSend_unreadCountChanged_(self, v54, v53);
  }

  v56 = objc_msgSend_objectForKey_(infoCopy, v55, *MEMORY[0x1E69A7BD0]);
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

- (void)_chatLoadedWithChatIdentifier:(id)identifier chats:(id)chats
{
  v78 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = chats;
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
        if (objc_msgSend_isEqualToIgnoringCase_(v11, v12, identifierCopy))
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
            *&buf[4] = identifierCopy;
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
  objc_msgSend_removeObjectForKey_(v53, v54, identifierCopy);

  objc_msgSend_setLoading_(self, v55, 0);
  objc_msgSend_setFirstLoad_(self, v56, 0);

  v57 = *MEMORY[0x1E69E9840];
}

- (void)_previouslyBlackholedChatLoadedWithHandleIDs:(id)ds chat:(id)chat
{
  v46 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  chatCopy = chat;
  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  v10 = objc_msgSend_initWithArray_(v8, v9, dsCopy);
  v12 = objc_msgSend_objectForKey_(chatCopy, v11, @"participants");
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
    v41 = chatCopy;
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

- (void)chatLoadedWithChatIdentifier:(id)identifier chats:(id)chats
{
  identifierCopy = identifier;
  chatsCopy = chats;
  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v12 = (*MEMORY[0x1E69A6258] | *MEMORY[0x1E69A6298] | *MEMORY[0x1E69A6260]) & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0);

  if (v12)
  {
    objc_msgSend__chatLoadedWithChatIdentifier_chats_(self, v13, identifierCopy, chatsCopy);
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

- (void)previouslyBlackholedChatLoadedWithChatIdentifier:(id)identifier chats:(id)chats
{
  identifierCopy = identifier;
  chatsCopy = chats;
  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v12 = (*MEMORY[0x1E69A6258] | *MEMORY[0x1E69A6298] | *MEMORY[0x1E69A6260]) & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0);

  if (v12)
  {
    objc_msgSend__chatLoadedWithChatIdentifier_chats_(self, v13, identifierCopy, chatsCopy);
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

- (void)previouslyBlackholedChatLoadedWithHandleIDs:(id)ds chat:(id)chat
{
  dsCopy = ds;
  chatCopy = chat;
  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v12 = *MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v10, v11, 0);

  if (v12)
  {
    objc_msgSend__previouslyBlackholedChatLoadedWithHandleIDs_chat_(self, v13, dsCopy, chatCopy);
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

- (id)_participantsForChatDictionary:(id)dictionary
{
  v60 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v4, @"accountID");
  v8 = objc_msgSend_sharedInstance(IMAccountController, v6, v7);
  v39 = v5;
  v10 = objc_msgSend_accountForUniqueID_(v8, v9, v5);

  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v40 = dictionaryCopy;
  obj = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v11, @"participants");
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

- (id)_cachedChatForChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  participantsCopy = participants;
  hashCopy = hash;
  v12 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v11, @"style");
  v15 = objc_msgSend_intValue(v12, v13, v14);

  v17 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v16, @"guid");
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

        v24 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v22, @"roomName");
        v19 = objc_msgSend__cachedChatWithIdentifier_style_(self, v25, v24, 35);

        break;
      case '+':
        v21 = objc_msgSend__cachedGroupChatForGroupChatDictionary_participants_participantHash_(self, v20, dictionaryCopy, participantsCopy, hashCopy);
        goto LABEL_7;
      case '-':
        v21 = objc_msgSend__cachedOneToOneChatForChatDictionary_participants_participantHash_(self, v20, dictionaryCopy, participantsCopy, hashCopy);
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

- (id)_cachedOneToOneChatForChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  participantsCopy = participants;
  v10 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v9, *MEMORY[0x1E69A6C68]);
  if (objc_msgSend_count(participantsCopy, v11, v12) != 1)
  {
    v15 = IMChatRegistryLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      v20 = 0;
      goto LABEL_14;
    }

    v20 = objc_msgSend___im_copyChatDictionaryWithRedactedMessageContent(dictionaryCopy, v22, v23);
    v32 = 138412546;
    v33 = participantsCopy;
    v34 = 2112;
    v35 = v20;
    _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Chat has 1-1 chat style but incorrect count of participants: %@ dictionary: %@", &v32, 0x16u);
LABEL_12:

    goto LABEL_13;
  }

  v15 = objc_msgSend_lastObject(participantsCopy, v13, v14);
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
      v29 = objc_msgSend___im_copyChatDictionaryWithRedactedMessageContent(dictionaryCopy, v27, v28);
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

- (id)_cachedGroupChatForGroupChatDictionary:(id)dictionary participants:(id)participants participantHash:(id)hash
{
  v228 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  participantsCopy = participants;
  hashCopy = hash;
  v11 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v10, *MEMORY[0x1E69A6B18]);
  v14 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v12, v13);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v14, v15, v16);

  if (isTranscriptSharingEnabled && (objc_msgSend_hasPrefix_(v11, v18, *MEMORY[0x1E69A7DB0]) & 1) != 0)
  {
    v19 = 0;
    goto LABEL_89;
  }

  v203 = v11;
  v20 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v18, *MEMORY[0x1E69A6CA8]);
  v201 = objc_msgSend_intValue(v20, v21, v22);

  v24 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v23, *MEMORY[0x1E69A6B78]);
  v26 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v25, *MEMORY[0x1E69A6B48]);
  v205 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v27, *MEMORY[0x1E69A6C68]);
  v204 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v28, *MEMORY[0x1E69A6C88]);
  v30 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v29, *MEMORY[0x1E69A6AF0]);
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
  isEqualToString = objc_msgSend_isEqualToString_(hashCopy, v54, v53);
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
  v198 = participantsCopy;
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

    participantsCopy = v198;
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
    v110 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v109, @"guid");
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

  participantsCopy = v198;
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
    v199 = participantsCopy;
    v196 = dictionaryCopy;
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

        if (objc_msgSend_isEqualToString_(hashCopy, v135, v128))
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

      dictionaryCopy = v196;
      participantsCopy = v199;
      v99 = v206;
      v26 = v207;
      if (v19)
      {
        goto LABEL_54;
      }

      goto LABEL_37;
    }

LABEL_35:

    dictionaryCopy = v196;
    participantsCopy = v199;
    v26 = v207;
    goto LABEL_36;
  }

LABEL_37:
  if (((IMMergeNamedGroups() & 1) != 0 || !v26) && objc_msgSend_count(participantsCopy, v103, v104))
  {
    v141 = objc_msgSend_groupParticipantToChatsMap(self, v103, v104);
    v143 = objc_msgSend_objectForKeyedSubscript_(v141, v142, hashCopy);

    if (objc_msgSend_count(v143, v144, v145))
    {
      v146 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v221 = participantsCopy;
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
      v153 = participantsCopy;
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
      participantsCopy = v153;
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

  v102 = objc_msgSend_count(participantsCopy, v103, v104);
LABEL_65:
  if (v102 > 1 || v201 == 43)
  {
    v167 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
    {
      v170 = objc_msgSend_guid(v19, v168, v169);
      v172 = objc_msgSend_arrayByApplyingSelector_(participantsCopy, v171, "ID");
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

- (void)movedMessageGUIDsToRecentlyDeleted:(id)deleted forChatWithGUID:(id)d queryID:(id)iD deletionDate:(id)date
{
  v30 = *MEMORY[0x1E69E9840];
  deletedCopy = deleted;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  v14 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = iDCopy;
    _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: moved messages to recently deleted for query: %@", &v28, 0xCu);
  }

  if (!iDCopy)
  {
    goto LABEL_5;
  }

  v17 = objc_msgSend_daemonQueryController(self, v15, v16);
  v20 = objc_msgSend_queries(v17, v18, v19);
  v22 = objc_msgSend_objectForKey_(v20, v21, iDCopy);

  v25 = objc_msgSend_daemonQueryController(self, v23, v24);
  objc_msgSend_completeQuery_(v25, v26, iDCopy);

  if (!v22)
  {
LABEL_5:
    objc_msgSend__daemonMovedMessagesWithGUIDsToRecentlyDeleted_chatGUID_deleteDate_(self, v15, deletedCopy, dCopy, dateCopy);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)movedMessagesToRecentlyDeletedForChatsWithGUIDs:(id)ds queryID:(id)d deletionDate:(id)date
{
  v39 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  dateCopy = date;
  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = dCopy;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: moved messages from chats to recently deleted for query: %@", buf, 0xCu);
  }

  if (!dCopy)
  {
    goto LABEL_5;
  }

  v14 = objc_msgSend_daemonQueryController(self, v12, v13);
  v17 = objc_msgSend_queries(v14, v15, v16);
  v19 = objc_msgSend_objectForKey_(v17, v18, dCopy);

  v22 = objc_msgSend_daemonQueryController(self, v20, v21);
  objc_msgSend_completeQuery_(v22, v23, dCopy);

  if (!v19)
  {
LABEL_5:
    v24 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13);
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = sub_1A83C6738;
    v34 = &unk_1E7811580;
    selfCopy = self;
    v36 = v24;
    v25 = v24;
    objc_msgSend_enumerateObjectsUsingBlock_(dsCopy, v26, &v31);
    objc_msgSend__daemonMovedChatsToRecentlyDeleted_deletionDate_(self, v27, v25, dateCopy, v31, v32, v33, v34, selfCopy);
  }

  v28 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
  objc_msgSend___mainThreadPostNotificationName_object_(v28, v29, @"__kIMChatRegistryDidMoveMessagesInChatsToRecentlyDeletedNotification", dsCopy);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_daemonMovedMessagesWithGUIDsToRecentlyDeleted:(id)deleted chatGUID:(id)d deleteDate:(id)date
{
  dCopy = d;
  deletedCopy = deleted;
  objc_msgSend_updateRecoverableMessagesMetadataSynchronously_completionHandler_(self, v9, 0, 0);
  v12 = objc_msgSend_sharedRegistry(IMChatRegistry, v10, v11);
  v15 = objc_msgSend_existingChatWithGUID_(v12, v13, dCopy);

  objc_msgSend_handleDaemonDidDeleteMessageGUIDs_(v15, v14, deletedCopy);
}

- (void)_daemonMovedChatsToRecentlyDeleted:(id)deleted deletionDate:(id)date
{
  dateCopy = date;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A83C68D4;
  v8[3] = &unk_1E7811238;
  v9 = dateCopy;
  v6 = dateCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(deleted, v7, v8);
}

- (void)recoveredMessagesWithChatGUIDs:(id)ds queryID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = dCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: recovered messages for query: %@", buf, 0xCu);
  }

  if (!dCopy)
  {
    goto LABEL_5;
  }

  v11 = objc_msgSend_daemonQueryController(self, v9, v10);
  v14 = objc_msgSend_queries(v11, v12, v13);
  v16 = objc_msgSend_objectForKey_(v14, v15, dCopy);

  v19 = objc_msgSend_daemonQueryController(self, v17, v18);
  objc_msgSend_completeQuery_(v19, v20, dCopy);

  if (!v16)
  {
LABEL_5:
    v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10);
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = sub_1A83C6B10;
    v29 = &unk_1E7811580;
    selfCopy = self;
    v31 = v21;
    v22 = v21;
    objc_msgSend_enumerateObjectsUsingBlock_(dsCopy, v23, &v26);
    objc_msgSend__completedRecoveringChatsFromRecentlyDeleted_(self, v24, v22, v26, v27, v28, v29, selfCopy);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)loadedRecoverableMessagesMetadata:(id)metadata queryID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dCopy = d;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = dCopy;
    v22 = 1024;
    v23 = objc_msgSend_count(metadataCopy, v9, v10) != 0;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: Loaded recoverableMessagesMetadata for query: %@, hasRecoverableMessages: %{BOOL}d", buf, 0x12u);
  }

  v13 = objc_msgSend_daemonQueryController(self, v11, v12);
  v18 = @"recoverableMessagesMetadata";
  v19 = metadataCopy;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, &v19, &v18, 1);
  objc_msgSend_completeQuery_userInfo_(v13, v16, dCopy, v15);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)ds
{
  v21 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = dsCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Fully deleted chats with GUIDs: %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = dsCopy;
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

- (void)permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:(id)ds queryID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dsCopy = ds;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = dCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Completing query: permanently deleted messages in recently deleted from chats for query: %@", &v15, 0xCu);
  }

  objc_msgSend_permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs_(self, v9, dsCopy);
  v12 = objc_msgSend_daemonQueryController(self, v10, v11);
  objc_msgSend_completeQuery_(v12, v13, dCopy);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:(id)ds deletedChatGUIDs:(id)iDs
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(iDsCopy, v8, &v20, v24, 16);
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
          objc_enumerationMutation(iDsCopy);
        }

        objc_msgSend__unregisterChatWithGUID_deleted_(self, v10, *(*(&v20 + 1) + 8 * v13++), 1);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(iDsCopy, v10, &v20, v24, 16);
    }

    while (v11);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A83C7114;
  v19[3] = &unk_1E7810C68;
  v19[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(dsCopy, v10, v19);
  v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
  objc_msgSend___mainThreadPostNotificationName_object_(v16, v17, @"__kIMChatRegistryDidPermanentlyDeleteRecoverableMessagesInChatsNotification", dsCopy);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs:(id)ds
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A83C7230;
  v9[3] = &unk_1E7810C68;
  v9[4] = self;
  dsCopy = ds;
  objc_msgSend_enumerateObjectsUsingBlock_(dsCopy, v4, v9);
  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend___mainThreadPostNotificationName_object_(v7, v8, @"__kIMChatRegistryDidRecoverMessagesInChatsNotification", dsCopy);
}

- (void)chat:(id)chat lastMessageTimeStampOnLoadUpdated:(double)updated
{
  v21 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v9, v10, updated);
      v17 = 138412546;
      v18 = chatCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Recently Deleted | IMChat: %@, updated last message timestamp on load: %@", &v17, 0x16u);
    }
  }

  v12 = objc_msgSend_sharedRegistry(IMChatRegistry, v6, v7);
  v14 = objc_msgSend_existingChatWithGUID_(v12, v13, chatCopy);

  objc_msgSend_setLastMessageTimeStampOnLoad_(v14, v15, updated);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)serviceSwitchRequestReceivedForChatWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_msgSend_sharedRegistry(IMChatRegistry, v4, v5);
  v13 = objc_msgSend__cachedChatWithIdentifier_(v6, v7, identifierCopy);

  if (v13)
  {
    objc_msgSend_setServiceSwitchRequested_(v13, v8, 1);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v11, v12, @"__kIMChatServiceSwitchRequestedNotification", v13, 0);
  }
}

- (void)capabilitiesUpdatedForHandle:(id)handle
{
  handleCopy = handle;
  v4 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "capabilitiesUpdatedForHandle: Posting notification", v9, 2u);
  }

  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend___mainThreadPostNotificationName_object_(v7, v8, @"__kIMChatHandleLazuliCapabilitiesUpdatedNotification", handleCopy);
}

- (int64_t)_winningJoinStateForExistingChat:(id)chat incomingDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dictionaryCopy = dictionary;
  v8 = objc_msgSend_valueForKey_(dictionaryCopy, v7, *MEMORY[0x1E69A6BE0]);
  v11 = objc_msgSend_intValue(v8, v9, v10);

  v14 = objc_msgSend_joinState(chatCopy, v12, v13);
  if (v14 == v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v14;
    v17 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v15, *MEMORY[0x1E69A6C98]);
    v19 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v18, v17);
    v22 = objc_msgSend_supportsMutatingGroupMembers(v19, v20, v21);

    if (v22)
    {
      v16 = v11;
    }

    else
    {
      v25 = objc_msgSend_guid(chatCopy, v23, v24);
      IMComponentsFromChatGUID();
      v26 = 0;

      v28 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v27, v26);
      v31 = objc_msgSend_supportsMutatingGroupMembers(v28, v29, v30);

      if (v31)
      {
        v33 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v32, *MEMORY[0x1E69A6B70]);
        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v37 = objc_msgSend_guid(chatCopy, v35, v36);
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

- (id)messagesURLWithChat:(id)chat orHandles:(id)handles withMessageText:(id)text
{
  v132 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  handlesCopy = handles;
  textCopy = text;
  if (chatCopy)
  {
    v12 = objc_msgSend_account(chatCopy, v9, v10);
    v15 = objc_msgSend_service(v12, v13, v14);
    v18 = objc_msgSend_shortName(v15, v16, v17);

    if (objc_msgSend_chatStyle(chatCopy, v19, v20) == 45)
    {
      v23 = objc_msgSend_recipient(chatCopy, v21, v22);
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
      v36 = objc_msgSend_groupID(chatCopy, v21, v22);
      objc_msgSend_participants(chatCopy, v49, v50);
      v35 = 0;
      handlesCopy = v26 = handlesCopy;
    }

    v48 = v18;
  }

  else
  {
    if (!objc_msgSend_count(handlesCopy, v9, v10))
    {
      v51 = 0;
      goto LABEL_34;
    }

    v26 = objc_msgSend_firstObject(handlesCopy, v37, v38);
    v41 = objc_msgSend_account(v26, v39, v40);
    v44 = objc_msgSend_service(v41, v42, v43);
    v47 = objc_msgSend_shortName(v44, v45, v46);

    v48 = v47;
    v36 = 0;
    v35 = 0;
  }

  v126 = v36;
  if (objc_msgSend_count(v35, v52, v53) || !objc_msgSend_count(handlesCopy, v54, v55))
  {
    v56 = v35;
  }

  else
  {
    v123 = textCopy;
    v125 = chatCopy;
    v59 = MEMORY[0x1E695DF70];
    v60 = objc_msgSend_count(handlesCopy, v57, v58);
    v56 = objc_msgSend_arrayWithCapacity_(v59, v61, v60);
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v124 = handlesCopy;
    v62 = handlesCopy;
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

    handlesCopy = v124;
    chatCopy = v125;
    textCopy = v123;
    v36 = v126;
  }

  v77 = objc_alloc(MEMORY[0x1E696AD60]);
  v81 = objc_msgSend_initWithFormat_(v77, v78, @"messages://open?service=%@", v48);
  v82 = textCopy;
  if (v36)
  {
    v83 = MEMORY[0x1E696AB08];
    v84 = v36;
    v87 = objc_msgSend_URLPathAllowedCharacterSet(v83, v85, v86);
    v89 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v84, v88, v87);

    textCopy = v82;
    objc_msgSend_appendFormat_(v81, v90, @"&groupid=%@", v89);
  }

  v91 = objc_msgSend_displayName(chatCopy, v79, v80);
  if (objc_msgSend_length(v91, v92, v93))
  {
    v96 = MEMORY[0x1E696AB08];
    v97 = v91;
    v100 = objc_msgSend_URLPathAllowedCharacterSet(v96, v98, v99);
    v102 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v97, v101, v100);

    textCopy = v82;
    objc_msgSend_appendFormat_(v81, v103, @"&displayname=%@", v102);
  }

  if (objc_msgSend_length(textCopy, v94, v95))
  {
    v106 = MEMORY[0x1E696AB08];
    v107 = textCopy;
    v110 = objc_msgSend_URLPathAllowedCharacterSet(v106, v108, v109);
    v112 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v107, v111, v110);

    textCopy = v82;
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

- (id)messagesURLWithChat:(id)chat
{
  v3 = MEMORY[0x1E696AD60];
  chatCopy = chat;
  v5 = [v3 alloc];
  v7 = objc_msgSend_initWithString_(v5, v6, @"messages://open?");
  v10 = objc_msgSend_chatIdentifier(chatCopy, v8, v9);

  v13 = objc_msgSend_URLPathAllowedCharacterSet(MEMORY[0x1E696AB08], v11, v12);
  v15 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v10, v14, v13);

  objc_msgSend_appendFormat_(v7, v16, @"groupid=%@", v15);
  v18 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v17, v7);

  return v18;
}

- (id)messagesURLWithMessageGUID:(id)d
{
  dCopy = d;
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = objc_msgSend_initWithString_(v4, v5, @"messages://open?");
  v7 = MEMORY[0x1E696AB08];
  v8 = dCopy;
  v11 = objc_msgSend_URLPathAllowedCharacterSet(v7, v9, v10);
  v13 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v8, v12, v11);

  objc_msgSend_appendFormat_(v6, v14, @"message-guid=%@", v13);
  v16 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v15, v6);

  return v16;
}

- (id)chatForURL:(id)l outMessageText:(id *)text outRecipientIDs:(id *)ds outService:(id *)service outMessageGUID:(id *)d presentOverlay:(BOOL *)overlay outSIMID:(id *)iD
{
  v146 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v17 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14);
  if (d)
  {
    *d = 0;
  }

  if (ds)
  {
    *ds = 0;
  }

  if (service)
  {
    *service = 0;
  }

  if (d)
  {
    *d = 0;
  }

  if (overlay)
  {
    *overlay = 0;
  }

  if (iD)
  {
    *iD = 0;
  }

  v18 = objc_msgSend_resourceSpecifier(lCopy, v15, v16);
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
    v29 = objc_msgSend_scheme(lCopy, v27, v28);
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

    lCopy = v125;
    v18 = v128;
    goto LABEL_27;
  }

  v129 = v18;
LABEL_28:
  v43 = objc_msgSend_absoluteString(lCopy, v27, v28);
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

  if (text && v46)
  {
    v55 = v46;
    *text = v46;
  }

  v131 = objc_msgSend_objectForKey_(v17, v49, @"groupid");
  v132 = objc_msgSend_objectForKey_(v17, v56, @"chatguid");
  v58 = objc_msgSend_objectForKey_(v17, v57, @"recipient");
  v60 = objc_msgSend_objectForKeyedSubscript_(v17, v59, @"best-match");
  v126 = objc_msgSend_BOOLValue(v60, v61, v62);

  v134 = objc_msgSend_objectForKey_(v17, v63, @"simid");
  if (v134)
  {
    v66 = iD != 0;
  }

  else
  {
    v66 = 0;
  }

  if (v66)
  {
    *iD = objc_msgSend_copy(v134, v64, v65);
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

  if (overlay != 0 && v71)
  {
    *overlay = 1;
  }

  v73 = objc_msgSend_objectForKey_(v17, v72, @"message-guid");
  if (objc_msgSend_length(v73, v74, v75))
  {
    if (d)
    {
      v76 = v73;
      v77 = 0;
      *d = v73;
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
      v143 = lCopy;
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

  if (ds)
  {
    v103 = v88;
    *ds = v88;
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

- (id)_bestChatForHandleIDs:(id)ds
{
  v35 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = dsCopy;
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

- (id)_inPersonHandleFromIMHandle:(id)handle contact:(id)contact
{
  v54 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v8 = objc_msgSend_normalizedID(handle, v6, v7);
  if (!MEMORY[0x1AC56C3C0]())
  {
    if (!IMStringIsEmail())
    {
      v18 = 0;
      v25 = 0;
      goto LABEL_41;
    }

    if (!contactCopy)
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
    v14 = objc_msgSend_emailAddresses(contactCopy, v26, v27);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v28, &v44, v52, 16);
    if (v18)
    {
      v42 = v8;
      v43 = contactCopy;
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
              contactCopy = v43;
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
      contactCopy = v43;
    }

    v25 = 1;
    goto LABEL_39;
  }

  if (!contactCopy)
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
    v14 = objc_msgSend_phoneNumbers(contactCopy, v11, v12);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v48, v53, 16);
    if (v18)
    {
      v42 = v8;
      v43 = contactCopy;
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
      contactCopy = v43;
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

- (id)_inPersonNameForContact:(id)contact imHandle:(id)handle
{
  contactCopy = contact;
  handleCopy = handle;
  v9 = objc_msgSend_normalizedID(handleCopy, v7, v8);
  if (objc_msgSend_isBusiness(handleCopy, v10, v11))
  {
    v14 = MEMORY[0x1E69A7F28];
    v15 = objc_msgSend_ID(handleCopy, v12, v13);
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
      if ((objc_msgSend_isChatBot(handleCopy, v28, v29) & 1) == 0)
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

  if (contactCopy)
  {
    v36 = objc_msgSend_nickname(contactCopy, v12, v13);
    if (objc_msgSend_length(v36, v37, v38))
    {
      v35 = v36;
      goto LABEL_16;
    }

    v39 = MEMORY[0x1AC56C550](@"CNContactFormatter", @"Contacts");
    v35 = objc_msgSend_stringFromContact_style_(v39, v40, contactCopy, 0);
    if (objc_msgSend_length(v35, v41, v42))
    {

      goto LABEL_16;
    }
  }

  v35 = objc_msgSend_displayID(handleCopy, v12, v13);
LABEL_16:

  return v35;
}

- (id)_inPersonFromIMHandle:(id)handle isMe:(BOOL)me
{
  v40[2] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
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

  v25 = objc_msgSend_cnContactWithKeys_(handleCopy, v24, v23);
  v27 = objc_msgSend__inPersonHandleFromIMHandle_contact_(self, v26, handleCopy, v25);
  v29 = objc_msgSend__inPersonNameForContact_imHandle_(self, v28, v25, handleCopy);

  v31 = objc_msgSend_componentsForContact_(MEMORY[0x1E696ADF0], v30, v25);
  v34 = objc_msgSend_identifier(v25, v32, v33);
  v35 = [qword_1EB2EA048 alloc];
  isMe = objc_msgSend_initWithPersonHandle_nameComponents_displayName_image_contactIdentifier_customIdentifier_isMe_(v35, v36, v27, v31, v29, 0, v34, 0, me);

  v38 = *MEMORY[0x1E69E9840];

  return isMe;
}

- (id)_interactionForMessage:(id)message inChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  if (qword_1EB2EA010 != -1)
  {
    sub_1A84E50A4();
  }

  v10 = objc_msgSend_retractedPartIndexes(messageCopy, v7, v8);
  v13 = objc_msgSend_count(v10, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend__unsendMessageInteractionForMessage_inChat_(self, v14, messageCopy, chatCopy);
LABEL_5:
    v17 = v16;
    goto LABEL_14;
  }

  if (objc_msgSend_isFinished(messageCopy, v14, v15) && (objc_msgSend_isTypingMessage(messageCopy, v18, v19) & 1) == 0)
  {
    v22 = objc_msgSend_plainBody(messageCopy, v20, v21);
    if (objc_msgSend_length(v22, v23, v24) || (objc_msgSend_hasInlineAttachments(messageCopy, v25, v26) & 1) != 0)
    {
      v27 = objc_msgSend_associatedMessageType(messageCopy, v25, v26);

      if (!v27)
      {
        v16 = objc_msgSend__sendMessageInteractionForMessage_inChat_(self, v28, messageCopy, chatCopy);
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

- (id)_sendMessageInteractionForMessage:(id)message inChat:(id)chat
{
  v154 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  chatCopy = chat;
  v7 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_guid(messageCopy, v8, v9);
    v13 = objc_msgSend_guid(chatCopy, v11, v12);
    *buf = 138412546;
    v151 = v10;
    v152 = 2112;
    v153 = v13;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Donating send message interaction for message %@ in chat %@", buf, 0x16u);
  }

  v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15);
  v18 = objc_msgSend_participantsWithState_(chatCopy, v17, 16);
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

  v28 = objc_msgSend_account(chatCopy, v21, v22);
  v31 = objc_msgSend_service(v28, v29, v30);

  v142 = objc_msgSend_name(v31, v32, v33);
  v36 = objc_msgSend_sender(messageCopy, v34, v35);
  v141 = objc_msgSend__inPersonFromIMHandle_isMe_(self, v37, v36, 1);

  v139 = v31;
  if (objc_msgSend_isGroupChat(chatCopy, v38, v39) && (objc_msgSend_displayName(chatCopy, v40, v41), v42 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend_length(v42, v43, v44), v42, v45))
  {
    v46 = [qword_1EB2EA028 alloc];
    v49 = objc_msgSend_guid(chatCopy, v47, v48);
    v52 = objc_msgSend_displayName(chatCopy, v50, v51);
    v54 = objc_msgSend_initWithVocabularyIdentifier_spokenPhrase_pronunciationHint_(v46, v53, v49, v52, 0);
  }

  else
  {
    v54 = 0;
  }

  v55 = [qword_1EB2EA038 alloc];
  v58 = objc_msgSend_plainBody(messageCopy, v56, v57);
  v61 = objc_msgSend_guid(chatCopy, v59, v60);
  v63 = objc_msgSend_initWithRecipients_content_speakableGroupName_conversationIdentifier_serviceName_sender_(v55, v62, v16, v58, v54, v61, v142, v141);

  objc_msgSend__setLaunchId_(v63, v64, @"com.apple.MobileSMS");
  v67 = objc_msgSend_allChatProperties(chatCopy, v65, v66);
  v69 = objc_msgSend_objectForKey_(v67, v68, *MEMORY[0x1E69A6B80]);

  v72 = objc_msgSend_sharedInstance(IMFileTransferCenter, v70, v71);
  v137 = v69;
  v74 = objc_msgSend_transferForGUID_(v72, v73, v69);
  v77 = objc_msgSend_filename(v74, v75, v76);
  v80 = objc_msgSend_im_lastPathComponent(v77, v78, v79);

  v83 = objc_msgSend_guid(chatCopy, v81, v82);
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
  v96 = objc_msgSend_guid(messageCopy, v94, v95);
  v99 = objc_msgSend_time(messageCopy, v97, v98);
  v102 = objc_msgSend_guid(chatCopy, v100, v101);
  v103 = [qword_1EB2EA050 alloc];
  v106 = objc_msgSend_plainBody(messageCopy, v104, v105);
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
  if (objc_msgSend_isFromMe(messageCopy, v121, v122))
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

  if (objc_msgSend_isFinished(messageCopy, v124, v125))
  {
    objc_msgSend_notifyInteractionWithPeople_(IMRemindersIntegration, v130, v16);
  }

  objc_msgSend_setIntentHandlingStatus_(v116, v130, 3);

  v131 = *MEMORY[0x1E69E9840];

  return v116;
}

- (id)_unsendMessageInteractionForMessage:(id)message inChat:(id)chat
{
  v46 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  chatCopy = chat;
  v7 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_guid(messageCopy, v8, v9);
    v13 = objc_msgSend_guid(chatCopy, v11, v12);
    *buf = 138412546;
    v43 = v10;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Donating unsend message interaction for message %@ in chat %@", buf, 0x16u);
  }

  v16 = objc_msgSend_guid(messageCopy, v14, v15);
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
  v34 = objc_msgSend_dateEdited(messageCopy, v31, v32);
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

- (void)setUserActivityForChat:(id)chat message:(id)message orHandles:(id)handles
{
  v115 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  messageCopy = message;
  handlesCopy = handles;
  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_msgSend_guid(chatCopy, v12, v13);
    v17 = objc_msgSend_guid(messageCopy, v15, v16);
    *buf = 138412802;
    v110 = v14;
    v111 = 2112;
    v112 = v17;
    v113 = 2112;
    v114 = handlesCopy;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Updating user activity with chat: %@ message: %@ handles: %@", buf, 0x20u);
  }

  if (!chatCopy && !objc_msgSend_count(handlesCopy, v18, v19))
  {
    v84 = messageCopy;
    v104 = objc_msgSend_userActivity(self, v18, v19);
    objc_msgSend_invalidate(v104, v105, v106);

    objc_msgSend_setUserActivity_(self, v107, 0);
    goto LABEL_25;
  }

  v20 = objc_msgSend_userActivity(self, v18, v19);

  if (v20)
  {
    if (!chatCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E696B090]);
    v25 = objc_msgSend_initWithActivityType_(v23, v24, @"com.apple.Messages");
    objc_msgSend_setUserActivity_(self, v26, v25);

    if (!chatCopy)
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

  v27 = objc_msgSend_displayName(chatCopy, v21, v22);
  v28 = objc_msgSend_length(v27, v31, v32);
LABEL_12:
  if (!v28)
  {
    isTextMessageExtensionEnabled = objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v29, v30);
    v35 = objc_msgSend_displayNameWithRawAddress_isSpamFilteringEnabled_(chatCopy, v34, 0, isTextMessageExtensionEnabled);

    v27 = v35;
  }

  v36 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v29, v30);
  v39 = objc_msgSend_lastIncomingFinishedMessageWithTextContent(chatCopy, v37, v38);
  v42 = objc_msgSend_text(v39, v40, v41);
  v45 = objc_msgSend_string(v42, v43, v44);

  if (v45)
  {
    objc_msgSend_setObject_forKey_(v36, v46, v45, @"__kIMChatRegistryUserActivityLastMessageKey");
  }

  v108 = handlesCopy;
  v47 = objc_msgSend_messagesURLWithChat_orHandles_withMessageText_(self, v46, chatCopy, handlesCopy, 0);
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

  v78 = objc_msgSend__interactionForMessage_inChat_(self, v75, messageCopy, chatCopy);
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
    if (!objc_msgSend_isFinished(messageCopy, v76, v77))
    {
      v84 = messageCopy;
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

  v84 = messageCopy;

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

  handlesCopy = v108;
LABEL_25:

  v103 = *MEMORY[0x1E69E9840];
}

@end
@interface IMChat
+ (BOOL)isGUIDInAttemptingListInScrutinyMode:(id)mode;
+ (Class)_NPSManagerClass;
+ (Class)chatItemRulesClass;
+ (id)_participantsWorkQueue;
+ (id)chatItemUpdaterLogHandle;
+ (id)pendingChatForHandle:(id)handle;
+ (id)stateCaptureRecents;
+ (id)watermarkComparator;
+ (void)cleanWatermarkCache;
- (BOOL)_accountIsOperational:(id)operational forService:(id)service;
- (BOOL)_canPossiblyBecomeHybrid;
- (BOOL)_canShareStatus;
- (BOOL)_chatStyleSupportsTypingAndCancelTypingIndicators;
- (BOOL)_hasCommunicatedOnService:(id)service;
- (BOOL)_hasJustSentAMessage;
- (BOOL)_idsQueryResultsHaveMixedIDSStatus:(id)status;
- (BOOL)_isBlackHoled;
- (BOOL)_isChatBot;
- (BOOL)_isHybridGroup;
- (BOOL)_isHybridGroupEligibleByCarrier;
- (BOOL)_isRCSService;
- (BOOL)_isReplicatingService;
- (BOOL)_isSMSSatelliteService;
- (BOOL)_isSMSService;
- (BOOL)_isSatelliteServiceActive;
- (BOOL)_isSendToMakoAllowed;
- (BOOL)_isiMessageLiteServiceOrInCompatibleMode;
- (BOOL)_isiMessageService;
- (BOOL)_itemsAreRelayItemsFromMeWithServiceSwitch:(id)switch otherItem:(id)item;
- (BOOL)_lastKnownHybridState;
- (BOOL)_processSupportsHistory;
- (BOOL)_reachabilityResultHasMixedStatus:(id)status;
- (BOOL)_recipientIsPhoneNumber;
- (BOOL)_sanityCheckAccounts;
- (BOOL)_serverBagPreventsScrutinyMode;
- (BOOL)_serviceCapabilityEnabled:(id)enabled;
- (BOOL)_serviceSupportsCapability:(id)capability;
- (BOOL)_shouldSendCancelTypingIndicator;
- (BOOL)_supportsAlternativeCommunicationActions;
- (BOOL)_supportsAttachments;
- (BOOL)_supportsAudioMessages;
- (BOOL)_supportsAutomaticTranslation;
- (BOOL)_supportsDeliveryReceipts;
- (BOOL)_supportsEditMessage;
- (BOOL)_supportsExpressiveText;
- (BOOL)_supportsFaceTime;
- (BOOL)_supportsFocusMode;
- (BOOL)_supportsGroupIdentity;
- (BOOL)_supportsGroupMutability;
- (BOOL)_supportsInlineAdaptiveImageGlyphs;
- (BOOL)_supportsInlineReply;
- (BOOL)_supportsMentions;
- (BOOL)_supportsMessageEffects;
- (BOOL)_supportsMultiPart;
- (BOOL)_supportsNameAndPhoto;
- (BOOL)_supportsPolls;
- (BOOL)_supportsSendLater;
- (BOOL)_supportsSendMenu;
- (BOOL)_supportsShareLocation;
- (BOOL)_supportsSimSwitch;
- (BOOL)_supportsStickers;
- (BOOL)_supportsTapbacks;
- (BOOL)_supportsTranscriptBackgrounds;
- (BOOL)_supportsUndoSend;
- (BOOL)_suppressesMutationsFromLocalDevice;
- (BOOL)_uncachedHybridGroupStatusWithIDSQueryResults:(id)results;
- (BOOL)_uncachedHybridGroupStatusWithReachabilityResult:(id)result;
- (BOOL)_updateJoinStateWithMessageIfNeeded:(id)needed;
- (BOOL)_updateLastAddressedHandleID:(id)d lastAddressedSIMID:(id)iD;
- (BOOL)_updateLastAddressedHandleID:(id)d postGeneralNotification:(BOOL)notification;
- (BOOL)_updateLastAddressedSIMID:(id)d postGeneralNotification:(BOOL)notification;
- (BOOL)accountMatchesLastFinishedMessageItem;
- (BOOL)allParticipantsAreContacts;
- (BOOL)allParticipantsBlocked;
- (BOOL)allRecipientsFollowingLocation;
- (BOOL)allRecipientsSharingLocation;
- (BOOL)allowedByScreenTime;
- (BOOL)allowedToShowConversation;
- (BOOL)allowedToShowConversationSync;
- (BOOL)authorizationToSendCurrentLocationMessageDenied;
- (BOOL)authorizationToSendCurrentLocationMessageDetermined;
- (BOOL)authorizedToSendCurrentLocationMessage;
- (BOOL)canAddParticipant:(id)participant;
- (BOOL)canAddParticipants:(id)participants;
- (BOOL)canBeMessageLevelFiltered;
- (BOOL)canRemoveParticipants:(id)participants;
- (BOOL)canSend;
- (BOOL)canSendInlineReply;
- (BOOL)canSendMessage:(id)message;
- (BOOL)canSendTransfer:(id)transfer;
- (BOOL)canSuggestRecipientContact;
- (BOOL)canUnsubscribe;
- (BOOL)containsActiveBIASession;
- (BOOL)containsMessageFromContact;
- (BOOL)containsMessageFromContactOrMe;
- (BOOL)deleteAllHistory;
- (BOOL)hasBlockedParticipant;
- (BOOL)hasCommSafetySensitiveMessage;
- (BOOL)hasCommSafetySensitiveMessageFromSomeoneElse;
- (BOOL)hasKnownParticipants;
- (BOOL)hasKnownParticipantsCache;
- (BOOL)hasLeftGroup;
- (BOOL)hasMessageFromService:(id)service;
- (BOOL)hasMessageWithServiceCapability:(id)capability;
- (BOOL)hasOfferedAutomaticTranslationInTranslateMenu;
- (BOOL)hasRecipientsFollowingLocation;
- (BOOL)hasRecipientsSharingLocation;
- (BOOL)hasSentMessageToBusiness;
- (BOOL)hasSiblingRecipientsSharingLocation;
- (BOOL)hasStoredMessageWithGUID:(id)d;
- (BOOL)hasSurfRequestNotFromMe:(id)me;
- (BOOL)hasVerifiedBusiness;
- (BOOL)inUnknownSendersFilter;
- (BOOL)isAppleChat;
- (BOOL)isAutoDonatingMessages;
- (BOOL)isAutomaticTranslationEnabled;
- (BOOL)isBusinessChat;
- (BOOL)isCategorized;
- (BOOL)isChatBot;
- (BOOL)isCommSafetySensitiveMessageRecent;
- (BOOL)isCurrentlyDownloadingPurgedAttachments;
- (BOOL)isDisplayingUnavailabilityIndicator;
- (BOOL)isEmergencyChat;
- (BOOL)isEncryptionTestOptedIn;
- (BOOL)isInScrutinyMode;
- (BOOL)isInterworking;
- (BOOL)isKnownSenderWithUnknownFilteringEnabled:(BOOL)enabled;
- (BOOL)isLastIncomingFinishedMessageNotiMessage;
- (BOOL)isLastMessageTypingIndicator;
- (BOOL)isMakoChat;
- (BOOL)isMapKitBusinessChat;
- (BOOL)isMergedBusinessThread;
- (BOOL)isMessagesAuthorizedToAccessFocusStatus;
- (BOOL)isMuted;
- (BOOL)isOscarChat;
- (BOOL)isPendingReview;
- (BOOL)isPinned;
- (BOOL)isRCS;
- (BOOL)isReadOnly;
- (BOOL)isRecipientAbleToDowngradeToSMS;
- (BOOL)isReplyEnabled;
- (BOOL)isSMS;
- (BOOL)isSatelliteMessagingCompatible;
- (BOOL)isShowingEditHistoryForAnyChatItem;
- (BOOL)isShowingEditHistoryForChatItemGUID:(id)d;
- (BOOL)isShowingTranslationText;
- (BOOL)isStewieChat;
- (BOOL)isStewieEmergencyChat;
- (BOOL)isStewieRoadsideChat;
- (BOOL)isStewieSharingChat;
- (BOOL)lastMessageExists;
- (BOOL)mapsToTUConversation:(id)conversation;
- (BOOL)needBrandInfoFromRelay;
- (BOOL)needPersistentMenuFromRelay;
- (BOOL)preferredLanguagesContainVariantForCode:(id)code;
- (BOOL)receivedResponseForChat;
- (BOOL)repliedToChat;
- (BOOL)reportJunk;
- (BOOL)shouldBeAllowListed;
- (BOOL)shouldDisplayAutomaticTranslation;
- (BOOL)shouldDisplayOffGridModeStatus;
- (BOOL)shouldDisplayUnavailabilityIndicator;
- (BOOL)shouldForceServerStatusRefresh;
- (BOOL)shouldForceToSMS;
- (BOOL)shouldShowAudioButtonInEntryView;
- (BOOL)shouldShowAutoDonationAction;
- (BOOL)shouldShowIncomingTranslationIndicator;
- (BOOL)shouldShowIntroductionsButtons;
- (BOOL)supportsCapabilities:(unint64_t)capabilities;
- (BOOL)supportsEncryption;
- (BOOL)supportsMergingFilteredThreads;
- (BOOL)wantsSenderBlackholeWarning;
- (BOOL)wasDetectedAsSMSCategory;
- (BOOL)wasDetectedAsSMSSpam;
- (IMBrand)brand;
- (IMChat)init;
- (IMChatItemRules)chatItemRules;
- (IMDaemonProtocol)remoteDaemon;
- (IMHandle)businessHandle;
- (IMHandle)emergencyUserHandle;
- (IMMessage)firstMessage;
- (IMMessage)lastFinishedMessage;
- (IMMessage)lastIncomingFinishedMessage;
- (IMMessage)lastIncomingFinishedMessageWithTextContent;
- (IMMessage)lastIncomingMessage;
- (IMMessage)lastIncomingReplyableMessage;
- (IMMessage)lastMessage;
- (IMMessage)lastPendingSatelliteSendMessage;
- (IMMessage)lastSentMessage;
- (IMMessageItem)firstUnreadMessageItem;
- (IMMomentSharePresentationCache)momentSharePresentationCache;
- (IMSharedEmergencyInfo)emergencyUserInfo;
- (NSArray)attachments;
- (NSArray)chatItems;
- (NSArray)participantDNDContactHandles;
- (NSArray)replySuggestions;
- (NSDate)availabilityStatusPublishedDate;
- (NSDate)lastFinishedMessageDate;
- (NSDate)lastSentMessageDate;
- (NSDate)watermarkDate;
- (NSDictionary)internalLastAddressedHandleAndSimIDForDebugMenu;
- (NSNumber)countOfAttachmentsNotCachedLocally;
- (NSNumber)transcriptBackgroundVersion;
- (NSSet)allSiblingFMFHandles;
- (NSSet)allSiblingFindMyHandles;
- (NSSet)findMyHandles;
- (NSSet)fmfHandles;
- (NSSet)mergedThreadFilterModes;
- (NSString)cachedBusinessName;
- (NSString)chatIdentifier;
- (NSString)description;
- (NSString)deviceIndependentID;
- (NSString)downgradeStateForDebugMenu;
- (NSString)identityHash;
- (NSString)interworkingService;
- (NSString)pinningIdentifier;
- (NSString)roomNameWithoutSuffix;
- (NSString)stewieSharingSuggestedName;
- (NSString)transcriptBackgroundGUID;
- (NSString)transcriptBackgroundPath;
- (NSString)unsubscribeText;
- (NSString)userTranslationLanguageCode;
- (_NSRange)_loggingRangeForLatestChatItems:(id)items;
- (_NSRange)_loggingRangeForUpdates:(id)updates chatItemsCount:(int64_t)count;
- (double)typingIndicatorResendDelayInSecs;
- (id)_archivedItemsToReplace:(id)replace isReplacingItems:(BOOL)items;
- (id)_attributedDisplayNameWithDescriptor:(IMChatDisplayNameDescriptor)descriptor withBlockingAttachment:(id)attachment;
- (id)_chatItemLogSummaryForChatItems:(id)items withIndex:(int64_t)index;
- (id)_chatItemLogSummaryForChatItems:(id)items withUpdates:(id)updates;
- (id)_consecutiveDowngradeAttemptsViaManualDowngrades:(BOOL)downgrades;
- (id)_existingMessageFromMessagePartGUID:(id)d;
- (id)_generatePersonCentricID;
- (id)_getCurrentLocale;
- (id)_getDeleteChatItemMap:(id)map;
- (id)_getMessageChatItemMap:(id)map withDeleteMap:(id)deleteMap andAllChatItems:(id)items;
- (id)_initWithDictionaryRepresentation:(id)representation items:(id)items participantsHint:(id)hint accountHint:(id)accountHint;
- (id)_initWithGUID:(id)d account:(id)account style:(unsigned __int8)style roomName:(id)name displayName:(id)displayName lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD items:(id)self0 participants:(id)self1 isFiltered:(int64_t)self2 hasHadSuccessfulQuery:(BOOL)self3 isRecovered:(BOOL)self4 isDeletingIncomingMessages:(BOOL)self5;
- (id)_initWithItems:(id)items;
- (id)_keyTransparencyVerifier;
- (id)_ktQueue;
- (id)_lastChatItemMatchingCriteria:(id)criteria;
- (id)_lastFinishedMessageDateForChat:(id)chat;
- (id)_lastKTVerifierResultForParticipant:(id)participant;
- (id)_lastMessageItemFromContactOrFromMe:(BOOL)me;
- (id)_mergeParticipantIDs;
- (id)_participantListStringForNames:(id)names visibleNameCount:(int64_t)count;
- (id)_previousAccountForService:(id)service;
- (id)_renderingDataDictionary;
- (id)_serviceForCapabilityCheck;
- (id)_storedWatermarkMessageID;
- (id)activeParticipantsForTUConversation;
- (id)allMessagesToReportAsSpam;
- (id)allPropertiesOfParticipant:(id)participant;
- (id)associatedBusinessID;
- (id)attachmentFileNameForTest;
- (id)attachmentMessageForTest;
- (id)attributedDisplayNameWithIsSpamFilteringEnabled:(BOOL)enabled withBlockingAttachment:(id)attachment;
- (id)beginObservingHandleStatuses;
- (id)brandLogoData;
- (id)brandLogoURL;
- (id)callDurationStringForTuCall;
- (id)chatItemUpdaterLogHandle;
- (id)chatItemsForItems:(id)items;
- (id)chatSummary;
- (id)chatSummaryMessageGUID;
- (id)contacts;
- (id)conversation;
- (id)conversationContext;
- (id)conversationWithUUID:(id)d;
- (id)currentTUCall;
- (id)displayNameWithDescriptor:(IMChatDisplayNameDescriptor)descriptor;
- (id)displayNameWithRawAddress:(BOOL)address isSpamFilteringEnabled:(BOOL)enabled;
- (id)ensureUserTranslationLanguageIsResolvedForCode:(id)code;
- (id)filterControllers;
- (id)getParticipantsWithKTUIStatus:(unint64_t)status;
- (id)hashOfParticipantIDs;
- (id)lastTranslatableMessageGUIDWithLanguageCode:(id)code;
- (id)loadMessagesBeforeDate:(id)date limit:(unint64_t)limit;
- (id)loadMessagesUpToGUID:(id)d limit:(unint64_t)limit;
- (id)localizedUnreadShortcutTitle;
- (id)messageForGUID:(id)d;
- (id)messageGuidsForMyUnreadMentions;
- (id)messageGuidsForRequery;
- (id)messagesForScheduledMessageSectionWithTranscriptItem:(id)item;
- (id)messagesToReportAsSpamFromChatItems:(id)items;
- (id)momentShareCache;
- (id)muteUntilDate;
- (id)participantHandleIDs;
- (id)participantsWithState:(unint64_t)state;
- (id)randomDataWithSize:(int64_t)size;
- (id)randomStringWithLength:(int64_t)length;
- (id)rcsChat;
- (id)recentIncomingMessagesWithTextContentForReplySuggestions;
- (id)recentOugoingMessagesWithTextContentForReplySuggestions;
- (id)remoteMembersForTUConversation;
- (id)stateDictionaryForDiagnosticsRequest;
- (id)tempfileURLFor:(id)for;
- (id)textMessageForTest;
- (id)usersPreferredLanguageIdentifier;
- (id)valueForChatProperty:(id)property;
- (id)valueForProperty:(id)property ofParticipant:(id)participant;
- (int64_t)_compareChat:(id)chat withDate:(id)date withDate:(id)withDate;
- (int64_t)_uncachedInterworkingState;
- (int64_t)chatPropertyValueFor:(int64_t)for;
- (int64_t)checkTranslationLanguageStatusForLanguageCode:(id)code;
- (int64_t)compareChatByDate:(id)date;
- (int64_t)compareChatByLastFinishedMessageDate:(id)date;
- (int64_t)lastFinishedMessageID;
- (int64_t)maximumChatParticipantsForHandles:(id)handles;
- (int64_t)numberOfTimesRespondedToThread;
- (int64_t)priorityClassification;
- (int64_t)randomIntWithUpTo:(int64_t)to;
- (int64_t)smsCategory;
- (int64_t)transcriptBackgroundCommSafetyState;
- (int64_t)transcriptSharingState;
- (int64_t)watermarkMessageID;
- (unint64_t)_flagsForCancelTypingIndicatorMessage;
- (unint64_t)capabilities;
- (unint64_t)conversationKTUIStatus;
- (unint64_t)getKTDisplayStatusAndRelatedPeerHandles:(id *)handles;
- (unint64_t)markAsSpam:(unint64_t)spam isJunkReportedToCarrier:(BOOL)carrier;
- (unint64_t)messageCount;
- (unint64_t)messageFailureCount;
- (unint64_t)overallChatStatus;
- (unint64_t)paymentTypeForMessage:(id)message;
- (unint64_t)scrutinyModeAttemptCount;
- (unint64_t)stateForParticipant:(id)participant;
- (unint64_t)unreadMessageCount;
- (void)__clearReadMessageCache;
- (void)__setChatIdentifierForGroups:(id)groups;
- (void)_accountControllerUpdated:(id)updated;
- (void)_accountLoggedOut:(id)out;
- (void)_addParticipants:(id)participants withState:(unint64_t)state;
- (void)_automation_markAsRead:(BOOL)read messageGUID:(id)d forChatGUID:(id)iD fromMe:(BOOL)me;
- (void)_calculateDowngradeState;
- (void)_calculateDowngradeStateTimerFired;
- (void)_clearCachedIdentifier;
- (void)_clearDowngradeMarkers;
- (void)_clearHistoryAndReplaceLastMessage:(id)message;
- (void)_clearPendingMessages;
- (void)_clearUnreadCount;
- (void)_configureLocationShareItem:(id)item;
- (void)_daemonAlive:(id)alive;
- (void)_daemonDied:(id)died;
- (void)_delayedInvalidateDowngradeState;
- (void)_deleteTransfersWithGUIDs:(id)ds fromChatItems:(id)items;
- (void)_endTiming;
- (void)_engroupParticipantsUpdated;
- (void)_enumerateUnderlyingChatInfo:(id)info;
- (void)_fixItemForSendingMessageTime:(id)time;
- (void)_fixSendingItemDateAndSortID:(id)d;
- (void)_handleAddressBookChangeForRecipientUID:(id)d;
- (void)_handleItem:(id)item;
- (void)_handleMessageGUIDDeletions:(id)deletions;
- (void)_introductionsForParticipantsWithCompletion:(id)completion;
- (void)_itemsDidChange:(id)change;
- (void)_markItemAsPlayed:(id)played;
- (void)_participants:(id)_participants statusChanged:(int)changed postNotification:(BOOL)notification;
- (void)_persistSortIDFromReplacedItem:(id)item toItem:(id)toItem;
- (void)_persistThreadOriginatorReplyCountsByPartFromReplacedItemIfNecessary:(id)necessary toItem:(id)item;
- (void)_postIMChatItemsDidChangeNotificationWithInserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate oldChatItems:(id)items newChatItems:(id)chatItems;
- (void)_postNewUnreadCount;
- (void)_postNotification:(id)notification userInfo:(id)info;
- (void)_recalculateIsInterworking;
- (void)_recordMarkedAsKnownForParticipantsWithCompletion:(id)completion;
- (void)_refreshKTData;
- (void)_refreshServiceForSendingIfNeededWithMessage:(id)message;
- (void)_refreshServiceForSendingWithDaemonWithCompletion:(id)completion;
- (void)_reloadChatItemsForBlockedContactsListChange;
- (void)_reloadChatItemsForFilteringChange;
- (void)_reloadChatItemsForHandleAvailabilityChange;
- (void)_reloadChatItemsForJunkFilteringSettingChange;
- (void)_reloadChatItemsForKeyTransparencyStatusChange;
- (void)_reloadChatItemsForPhotoSaveStatusChange;
- (void)_reloadChatItemsForSatelliteStateChangeIfRequired:(id)required;
- (void)_reloadChatItemsForScreenTimeChange;
- (void)_reloadChatItemsForServiceChange;
- (void)_reloadChatItemsForTranslationEnabledChange;
- (void)_reloadChatItemsForTranslationLanguageStatusChange;
- (void)_reloadChatItemsForUnknownSendersFilteringSettingChange;
- (void)_removeItem:(id)item;
- (void)_removeItemsForGuids:(id)guids;
- (void)_replaceItems:(id)items;
- (void)_replaceStaleChatItems;
- (void)_resetForceServerStatusRefresh;
- (void)_resetParticipants:(id)participants;
- (void)_resetUnsubscribeText;
- (void)_setAccount:(id)account;
- (void)_setAttachments:(id)attachments;
- (void)_setChatProperties:(id)properties isCurrentGUID:(BOOL)d;
- (void)_setCountOfAttachmentsNotCachedLocally:(id)locally;
- (void)_setCountOfMessagesMarkedAsSpam:(id)spam;
- (void)_setDBFailedCount:(unint64_t)count;
- (void)_setDBUnreadCount:(unint64_t)count;
- (void)_setDBUnreadCount:(unint64_t)count postNotification:(BOOL)notification;
- (void)_setDisplayName:(id)name;
- (void)_setIsDownloadingPendingSatelliteMessages:(BOOL)messages postNotification:(BOOL)notification;
- (void)_setLocalUserIsComposing:(id)composing suppliedGUID:(id)d typingIndicatorData:(id)data;
- (void)_setPendingIncomingSatelliteMessageCount:(unint64_t)count postNotification:(BOOL)notification;
- (void)_setPreviousAccount:(id)account forService:(id)service;
- (void)_setRenderingDataDictionary:(id)dictionary;
- (void)_setStartSendProgressImmediatelyIfNecessary;
- (void)_setTimerForReadMessageCache;
- (void)_setupObservation;
- (void)_showErrorMessage:(id)message;
- (void)_startTiming:(id)timing;
- (void)_syncChatItemProperties:(id)properties;
- (void)_updateBizIntentForMessageIfNeeded:(id)needed;
- (void)_updateBreadcrumbingAssociationForMessageIfNeeded:(id)needed;
- (void)_updateChatItemsWithDataDetectorResultsForReason:(id)reason;
- (void)_updateChatItemsWithReason:(id)reason block:(id)block shouldPost:(BOOL)post;
- (void)_updateDisplayName:(id)name sender:(id)sender;
- (void)_updateEngramID:(id)d;
- (void)_updateExistingMessageWithSyndicationAction:(id)action;
- (void)_updateFileAttachmentGUIDsForMessageIfNeeded:(id)needed withPayloadAttachments:(id)attachments;
- (void)_updateHybridGroupStateWithPerParticipantIDSStatus:(id)status;
- (void)_updateHybridGroupStateWithReachabilityResult:(id)result;
- (void)_updateLocaleForMessageIfNeeded:(id)needed;
- (void)_updateLocationShareItemsForSender:(id)sender;
- (void)_updateMessageItemStewieIfNeeded:(id)needed;
- (void)_updateMessageItemTimeIfNeeded:(id)needed;
- (void)_updatePayloadForMessageIfNeeded:(id)needed;
- (void)_updateRepliesIfNecessaryWithItem:(id)item;
- (void)_updateRepliesIfNecessaryWithRemovedItems:(id)items threadIdentifiersOfRemovedParts:(id)parts;
- (void)_updateScheduledMessageTimeOffsetIfNeeded:(id)needed;
- (void)_updateSenderForMessageIfNeeded:(id)needed adjustingSender:(BOOL)sender withAccount:(id)account;
- (void)_updateTypingGUIDForMessageIfNeeded:(id)needed;
- (void)_validateChatRegistrationWithRegistry;
- (void)acceptInvitation;
- (void)addHandlesToGroupFaceTimeChatIfRegistered:(id)registered;
- (void)appendTranslation:(id)translation toMessageItem:(id)item forPartIndex:(int64_t)index;
- (void)autoInviteToViewAvailabilityIfNeeded;
- (void)autoInviteToViewOffGridModeIfNeeded;
- (void)autoReportSpam;
- (void)beginHoldingChatItemsUpdatesForReason:(id)reason;
- (void)beginListeningToAttributionChanges;
- (void)beginShowingEditHistoryForChatItemGUID:(id)d;
- (void)canShareFocusStatusWithCompletion:(id)completion;
- (void)cancelScheduledMessageItem:(id)item cancelType:(unint64_t)type;
- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type;
- (void)cleanupChatItems;
- (void)clear;
- (void)clearScrutinyMode;
- (void)closeSession;
- (void)consumeSummaryIfNeeded;
- (void)createIMChatItemForTransientAttachmentWithAssetUUID:(id)d parentChatItemGUID:(id)iD;
- (void)dealloc;
- (void)declineInvitation;
- (void)deleteChatItems:(id)items;
- (void)deleteChatItems:(id)items fromChatItems:(id)chatItems;
- (void)deleteChatItemsWithTransferGUIDs:(id)ds fromMessageItem:(id)item;
- (void)deleteIMMessageItems:(id)items;
- (void)deleteTransfers:(id)transfers;
- (void)didUnregisterFromRegistry:(id)registry;
- (void)dismissInlineReplies;
- (void)downloadPurgedAttachments;
- (void)downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally;
- (void)editMessageItem:(id)item atPartIndex:(int64_t)index withNewPartText:(id)text newPartTranslation:(id)translation backwardCompatabilityText:(id)compatabilityText;
- (void)editScheduledMessageItem:(id)item atPartIndex:(int64_t)index withNewPartText:(id)text newPartTranslation:(id)translation;
- (void)editScheduledMessageItem:(id)item scheduleType:(unint64_t)type deliveryTime:(id)time;
- (void)editScheduledMessageItems:(id)items scheduleType:(unint64_t)type deliveryTime:(id)time;
- (void)endAllHoldsOnChatItemsUpdatesForReason:(id)reason;
- (void)endHoldingChatItemsUpdatesForAllReasons;
- (void)endHoldingChatItemsUpdatesForReason:(id)reason;
- (void)endListeningToAttributionChanges;
- (void)endShowingEditHistoryForAllChatItems;
- (void)endShowingEditHistoryForChatItemGUID:(id)d;
- (void)fetchBrandInfoIfNecessary;
- (void)fetchIncomingPendingMessagesOverSatellite;
- (void)fetchIsCurrentlyDownloadingPurgedAttachments:(id)attachments;
- (void)fetchKTStatus;
- (void)fetchMessageHistoryForDateInterval:(id)interval completion:(id)completion;
- (void)fetchOldestMessageDateWithCompletion:(id)completion;
- (void)forceCancelTypingIndicator;
- (void)handleDaemonDidDeleteMessageGUIDs:(id)ds;
- (void)ignoreKTFailure;
- (void)initiateTUConversationWithScreenShareType:(unint64_t)type;
- (void)invalidateMergedThreadFilterModes;
- (void)invalidateSpamIndicatorCachedValues;
- (void)invalidateSpamIndicatorCachedValuesIfNeeded;
- (void)inviteParticipants:(id)participants reason:(id)reason;
- (void)isInvitedToViewMyFocusStatusWithCompletion:(id)completion;
- (void)join;
- (void)joinExistingConversation:(id)conversation;
- (void)joinExistingTUConversation;
- (void)joinExistingTUConversationWithUUID:(id)d;
- (void)leave;
- (void)leaveConversation;
- (void)leaveCurrentTUCall;
- (void)loadAttachments:(id)attachments;
- (void)loadInlineRepliesForThreadIdentifier:(id)identifier threadOriginator:(id)originator messageGuid:(id)guid;
- (void)loadParticipantContactsIfNecessary;
- (void)markAllLocationShareItemsAsUnactionable;
- (void)markAllMessagesAsRead;
- (void)markAsKnownAndSaveInContacts:(BOOL)contacts completion:(id)completion;
- (void)markBusinessChatAsSpam:(unint64_t)spam;
- (void)markChatItemAsNotifyRecipient:(id)recipient;
- (void)markChatItemAsPlayed:(id)played;
- (void)markChatItemAsPlayedExpressiveSend:(id)send;
- (void)markChatItemAsSaved:(id)saved;
- (void)markKTFailureSeen;
- (void)markLastMessageAsUnread;
- (void)markMessageAsRead:(id)read;
- (void)markMessageAsUnread:(id)unread;
- (void)markMessagesAsRead:(id)read;
- (void)markRepliedForMessageGUID:(id)d;
- (void)queryTrustKitDecisioningIfNeededWithItems:(id)items reply:(id)reply;
- (void)recalculateMergedThreadFilterModes;
- (void)recomputeChatItemsForScreenTimeStatusChanged;
- (void)recoverFromJunkTo:(int64_t)to;
- (void)refetchLocalTranscriptBackgroundAssetIfNecessary;
- (void)refreshServiceForSendingWithCompletion:(id)completion;
- (void)reloadChatItemsForSuggestedRepliesChange;
- (void)remove;
- (void)removeMentionMessageGUID:(id)d;
- (void)removeParticipants:(id)participants reason:(id)reason;
- (void)replaceItemWhenReplied:(id)replied;
- (void)reportNotJunkToTrustKit;
- (void)repositionSticker:(id)sticker associatedChatItem:(id)item;
- (void)resendEditedMessageItem:(id)item forPartIndex:(int64_t)index withBackwardCompatabilityText:(id)text;
- (void)resendGroupPhoto;
- (void)retractMessagePart:(id)part;
- (void)retractScheduledMessagePartIndexes:(id)indexes fromChatItem:(id)item;
- (void)retryGroupPhotoUploadIfNecessary;
- (void)retryTranscriptBackgroundUploadIfNecessary;
- (void)saveWatermark;
- (void)sendCurrentLocationMessage;
- (void)sendGroupPhotoUpdate:(id)update;
- (void)sendHQAttachmentsForMessage:(id)message;
- (void)sendMessage:(id)message;
- (void)sendMessage:(id)message onAccount:(id)account;
- (void)sendMessage:(id)message onService:(id)service;
- (void)sendPendingSatelliteMessages;
- (void)sendRCSEncryptionTestMessageIfNecessary;
- (void)sendRCSMessage:(id)message fromChat:(id)chat;
- (void)sendUpdatedCollaborationMetadata:(id)metadata forMessageGUID:(id)d;
- (void)setAutoDonationBehavior:(int64_t)behavior;
- (void)setDisplayName:(id)name;
- (void)setFilterControllersNeedsUpdateChatItems;
- (void)setIsFiltered:(int64_t)filtered;
- (void)setKeyTransparencyURIToUUIDMapping:(id)mapping;
- (void)setLastAddressedHandleID:(id)d;
- (void)setLastAddressedSIMID:(id)d;
- (void)setLocalUserIsRecording:(BOOL)recording;
- (void)setLocalUserIsTyping:(BOOL)typing;
- (void)setMuteUntilDate:(id)date;
- (void)setRecipient:(id)recipient;
- (void)setRecovered:(BOOL)recovered;
- (void)setRoomName:(id)name;
- (void)setSelectedIndexOnCarouselChatItem:(id)item selectedIndex:(int64_t)index;
- (void)setSendProgressDelegate:(id)delegate;
- (void)setTranscriptBackgroundAndSendToChat:(id)chat transferID:(id)d;
- (void)setValue:(id)value forChatProperty:(id)property;
- (void)setValue:(id)value forProperty:(id)property ofParticipant:(id)participant;
- (void)shareLocationWithDuration:(int64_t)duration;
- (void)startTrackingParticipantLocations;
- (void)stickerRepositionedForAssociatedChatItem:(id)item;
- (void)stopSharingLocation;
- (void)stopTrackingParticipantLocations;
- (void)stopTranscriptSharingWithChat;
- (void)unsubscribe;
- (void)updateAssociatedBusinessID:(id)d;
- (void)updateCommSafety:(int64_t)safety forChatItem:(id)item;
- (void)updateCommSafety:(int64_t)safety forChatItems:(id)items parentChatItem:(id)item;
- (void)updateIsFiltered:(int64_t)filtered;
- (void)updateLastMessageGUID:(id)d forLanguageCode:(id)code;
- (void)updateLineSwitchedTo:(id)to;
- (void)updateMessage:(id)message withIndexesOfDeletedItems:(id)items withIndexToRangeMapOfDeletedItems:(id)deletedItems deleteDate:(id)date;
- (void)updateReplySuggestions;
- (void)updateSMSCategory:(int64_t)category subCategory:(int64_t)subCategory;
- (void)updateSendProgressForPendingTranslation;
- (void)updateTranscriptBackgroundChannelTransferGUID:(id)d;
- (void)updateTranscriptBackgroundCommSafetyState:(int64_t)state;
- (void)updateTranscriptSharingState:(int64_t)state;
- (void)updateWatermarks;
- (void)verifyFiltering;
- (void)watermarkInForScrutinyMode;
- (void)watermarkOutForScrutinyMode;
@end

@implementation IMChat

+ (id)chatItemUpdaterLogHandle
{
  if (qword_1EB2EA120 != -1)
  {
    sub_1A8252720();
  }

  v3 = qword_1EB2EA100;

  return v3;
}

- (BOOL)isBusinessChat
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_chatStyle(self, a2, v2) == 45)
  {
    v6 = objc_msgSend_brandInfo(self, v4, v5);

    if (v6)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = objc_msgSend_participants(self, v7, v8, 0);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v18, v22, 16);
      if (v9)
      {
        v14 = *v19;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v10);
            }

            if (objc_msgSend_isBusiness(*(*(&v18 + 1) + 8 * i), v12, v13))
            {
              LOBYTE(v9) = 1;
              goto LABEL_15;
            }
          }

          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v18, v22, 16);
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isStewieEmergencyChat
{
  v3 = objc_msgSend_chatIdentifier(self, a2, v2);
  v4 = IMIsStringStewieEmergency();

  return v4;
}

- (NSString)chatIdentifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    style = self->_style;
    switch(style)
    {
      case '#':
        v17 = objc_msgSend_roomName(self, a2, v2);
        v18 = self->_identifier;
        self->_identifier = v17;

        break;
      case '+':
        chatIdentifierForGroups = self->__chatIdentifierForGroups;
        if (!chatIdentifierForGroups)
        {
          v12 = objc_msgSend_guid(self, 0, v2);
          IMComponentsFromChatGUID();
          v13 = 0;

          if (v13)
          {
            v16 = v13;
          }

          else
          {
            v16 = objc_msgSend_roomName(self, v14, v15);
          }

          v19 = self->__chatIdentifierForGroups;
          self->__chatIdentifierForGroups = v16;

          v22 = objc_msgSend_uppercaseString(self->_identifier, v20, v21);
          objc_msgSend_setGroupChatIdentifierUppercase_(self, v23, v22);

          chatIdentifierForGroups = self->__chatIdentifierForGroups;
        }

        objc_storeStrong(&self->_identifier, chatIdentifierForGroups);
        break;
      case '-':
        v6 = objc_msgSend_recipient(self, a2, v2);
        v9 = objc_msgSend_ID(v6, v7, v8);
        v10 = self->_identifier;
        self->_identifier = v9;

        break;
    }

    identifier = self->_identifier;
  }

  v24 = identifier;

  return v24;
}

- (id)associatedBusinessID
{
  if (objc_msgSend_isStewieRoadsideChat(self, a2, v2))
  {
    v5 = objc_msgSend_valueForChatProperty_(self, v4, *MEMORY[0x1E69A6AF8]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_delayedInvalidateDowngradeState
{
  v4 = objc_msgSend_downgradeStateUpdater(self, a2, v2);

  if (!v4)
  {
    v7 = objc_alloc(MEMORY[0x1E69A6158]);
    v9 = objc_msgSend_initWithTarget_action_(v7, v8, self, sel__invalidateDowngradeState);
    objc_msgSend_setDowngradeStateUpdater_(self, v10, v9);
  }

  v13 = objc_msgSend_downgradeStateUpdater(self, v5, v6);
  objc_msgSend_setNeedsUpdate(v13, v11, v12);
}

- (void)invalidateSpamIndicatorCachedValuesIfNeeded
{
  if (objc_msgSend_cachedShouldShowReportSpam(self, a2, v2) == 2)
  {
    objc_msgSend_setCachedShouldShowReportSpam_(self, v4, 0);
  }

  if (objc_msgSend_cachedShouldShowSpam(self, v4, v5) == 2)
  {

    objc_msgSend_setCachedShouldShowSpam_(self, v6, 0);
  }
}

- (void)_clearPendingMessages
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_joinState == 3 && self->_messagesPendingJoin)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        messagesPendingJoin = self->_messagesPendingJoin;
        *buf = 138412290;
        v27 = messagesPendingJoin;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "messages pending join: %@", buf, 0xCu);
      }
    }

    v7 = objc_msgSend_copy(self->_messagesPendingJoin, v3, v4);
    v8 = self->_messagesPendingJoin;
    self->_messagesPendingJoin = 0;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
    if (v11)
    {
      v13 = *v22;
      *&v12 = 138412290;
      v20 = v12;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = v20;
              v27 = v15;
              _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Un-pending message: %@", buf, 0xCu);
            }
          }

          objc_msgSend__sendMessage_adjustingSender_shouldQueue_(self, v16, v15, 0, 1, v20, v21);
          ++v14;
        }

        while (v11 != v14);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, &v21, v25, 16);
      }

      while (v11);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)isStewieRoadsideChat
{
  v3 = objc_msgSend_chatIdentifier(self, a2, v2);
  v4 = IMIsStringStewieRoadside();

  return v4;
}

- (BOOL)isAutomaticTranslationEnabled
{
  v2 = objc_msgSend_valueForChatProperty_(self, a2, *MEMORY[0x1E69A6B60]);
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (NSDate)lastFinishedMessageDate
{
  v4 = objc_msgSend__lastFinishedMessage(self, a2, v2);
  v7 = objc_msgSend_time(v4, v5, v6);

  if (!v7)
  {
    v10 = MEMORY[0x1E695DF00];
    MessageTimeStampOnLoad = objc_msgSend_lastMessageTimeStampOnLoad(self, v8, v9);
    v7 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(v10, v12, v13, MessageTimeStampOnLoad);
  }

  return v7;
}

- (BOOL)supportsMergingFilteredThreads
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isMergeFilteredThreadsEnabled = objc_msgSend_isMergeFilteredThreadsEnabled(v4, v5, v6);

  if (!isMergeFilteredThreadsEnabled || objc_msgSend_isFiltered(self, v8, v9) < 1)
  {
    return 0;
  }

  v12 = objc_msgSend_mergedThreadFilterModes(self, v10, v11);
  v15 = objc_msgSend_count(v12, v13, v14) > 1;

  return v15;
}

- (void)verifyFiltering
{
  if (!objc_msgSend_isFiltered(self, a2, v2))
  {
    return;
  }

  isCategorized = objc_msgSend_isCategorized(self, v4, v5);
  v9 = objc_msgSend_supportsFilteringExtensions(self, v7, v8);
  v10 = v9;
  if (v9)
  {
    if (!isCategorized)
    {
      return;
    }
  }

  if ((IMIsRunningInFullClient() & 1) == 0 && !IMIsRunningInUnitTesting() || !objc_msgSend_isFiltered(self, v11, v12))
  {
    return;
  }

  if ((v10 & 1) == 0)
  {
    v26 = objc_msgSend_account(self, v13, v14);
    v29 = objc_msgSend_service(v26, v27, v28);
    v32 = objc_msgSend_smsService(IMServiceImpl, v30, v31);

    if (v29 != v32)
    {
      objc_msgSend_clearSMSCategory(self, v33, v34);
    }

    v35 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v33, v34);
    isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v35, v36, v37);

    if (isIntroductionsEnabled)
    {
      if (objc_msgSend_isFilterUnknownSendersEnabled(MEMORY[0x1E69A82A0], v39, v40) && objc_msgSend_containsMessageFromContact(self, v41, v42))
      {
        if (IMOSLoggingEnabled())
        {
          v44 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *v86 = 0;
            v45 = "iMessage Chat has messages from a contact: Updating isFiltered to NO";
LABEL_67:
            _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, v45, v86, 2u);
            goto LABEL_68;
          }

          goto LABEL_68;
        }
      }

      else
      {
        if ((objc_msgSend_isFilterUnknownSendersEnabled(MEMORY[0x1E69A82A0], v41, v42) & 1) != 0 || !objc_msgSend_containsMessageFromContactOrMe(self, v61, v62))
        {
          if (!objc_msgSend_hasKnownParticipants(self, v61, v62))
          {
            goto LABEL_70;
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_69;
          }

          v44 = OSLogHandleForIMFoundationCategory();
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            goto LABEL_68;
          }

          *v86 = 0;
          v45 = "iMessage Chat has known participants: Updating isFiltered to NO";
          goto LABEL_67;
        }

        if (IMOSLoggingEnabled())
        {
          v44 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *v86 = 0;
            v45 = "iMessage Chat has replies: Updating isFiltered to NO";
            goto LABEL_67;
          }

          goto LABEL_68;
        }
      }
    }

    else if (objc_msgSend_containsMessageFromContactOrMe(self, v39, v40))
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v45 = "iMessage Chat has replies: Updating isFiltered to NO";
          goto LABEL_67;
        }

LABEL_68:
      }
    }

    else
    {
      if (!objc_msgSend_hasKnownParticipants(self, v48, v49))
      {
        goto LABEL_70;
      }

      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v45 = "iMessage Chat has known participants: Updating isFiltered to NO";
          goto LABEL_67;
        }

        goto LABEL_68;
      }
    }

LABEL_69:
    objc_msgSend_updateIsFiltered_(self, v43, 0, *v86);
LABEL_70:
    if (objc_msgSend_shouldBeAllowListed(self, v67, v68))
    {
      if (IMOSLoggingEnabled())
      {
        v72 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v73 = "Allow listed iMessage: Updating isFiltered to NO";
LABEL_79:
          _os_log_impl(&dword_1A823F000, v72, OS_LOG_TYPE_INFO, v73, v86, 2u);
          goto LABEL_80;
        }

        goto LABEL_80;
      }
    }

    else
    {
      if ((objc_msgSend_isStewieChat(self, v69, v70) & 1) == 0 && !objc_msgSend_isStewieSharingChat(self, v74, v75))
      {
        goto LABEL_82;
      }

      if (IMOSLoggingEnabled())
      {
        v72 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v73 = "Stewie Chat: Updating isFiltered to NO";
          goto LABEL_79;
        }

LABEL_80:
      }
    }

    objc_msgSend_updateIsFiltered_(self, v71, 0, *v86);
LABEL_82:
    if (objc_msgSend_hasInitializedChatFiltering(IMChatRegistry, v76, v77))
    {
      objc_msgSend_autoReportSpam(self, v78, v79);
    }

    else
    {
      objc_msgSend_markAsAutoSpamReported(self, v78, v79);
    }

    return;
  }

  v15 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v13, v14);
  v18 = objc_msgSend_isIntroductionsEnabled(v15, v16, v17);

  if (v18)
  {
    if (objc_msgSend_isFilterUnknownSendersEnabled(MEMORY[0x1E69A82A0], v19, v20) && objc_msgSend_isOscarChat(self, v21, v22) && objc_msgSend_containsMessageFromContact(self, v21, v22))
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v25 = "iMessage junk chat has messages from a contact: Updating isFiltered to NO";
LABEL_95:
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, v25, v86, 2u);
          goto LABEL_96;
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }

    if ((objc_msgSend_isFilterUnknownSendersEnabled(MEMORY[0x1E69A82A0], v21, v22) & 1) == 0 && objc_msgSend_isOscarChat(self, v50, v51) && objc_msgSend_containsMessageFromContactOrMe(self, v50, v51))
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v25 = "iMessage junk chat has replies: Updating isFiltered to NO";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }

    if (objc_msgSend_isFilterUnknownSendersEnabled(MEMORY[0x1E69A82A0], v50, v51) && objc_msgSend_containsMessageFromContact(self, v52, v53) && !((objc_msgSend_isFiltered(self, v52, v53) > 1) | isCategorized & 1))
    {
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v60 = "SMS Chat has messages from a contact: Updating isFiltered to NO";
          goto LABEL_107;
        }

        goto LABEL_108;
      }

      goto LABEL_109;
    }

    if ((objc_msgSend_isFilterUnknownSendersEnabled(MEMORY[0x1E69A82A0], v52, v53) & 1) == 0 && objc_msgSend_containsMessageFromContactOrMe(self, v54, v55) && !((objc_msgSend_isFiltered(self, v54, v55) > 1) | isCategorized & 1))
    {
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v60 = "SMS Chat has replies: Updating isFiltered to NO";
          goto LABEL_107;
        }

        goto LABEL_108;
      }

      goto LABEL_109;
    }

    if (objc_msgSend_hasKnownParticipants(self, v54, v55))
    {
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v60 = "SMS Chat has known participants: Updating isFiltered to NO";
LABEL_107:
          _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, v60, v86, 2u);
          goto LABEL_108;
        }

        goto LABEL_108;
      }

      goto LABEL_109;
    }

    if ((objc_msgSend_isStewieChat(self, v56, v57) & 1) != 0 || objc_msgSend_isStewieSharingChat(self, v80, v81))
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v25 = "Stewie Chat, supports filtering extensions: Updating isFiltered to NO";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }
  }

  else
  {
    if (objc_msgSend_isOscarChat(self, v19, v20) && objc_msgSend_containsMessageFromContactOrMe(self, v46, v47))
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v25 = "iMessage junk chat has replies: Updating isFiltered to NO";
          goto LABEL_95;
        }

LABEL_96:
      }

LABEL_97:
      objc_msgSend_updateIsFiltered_(self, v23, 0, *v86);
      return;
    }

    if (objc_msgSend_containsMessageFromContactOrMe(self, v46, v47) && !((objc_msgSend_isFiltered(self, v63, v64) > 1) | isCategorized & 1))
    {
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v60 = "SMS Chat has replies: Updating isFiltered to NO";
          goto LABEL_107;
        }

        goto LABEL_108;
      }

      goto LABEL_109;
    }

    if (objc_msgSend_hasKnownParticipants(self, v63, v64))
    {
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v60 = "SMS Chat has known participants: Updating isFiltered to NO";
          goto LABEL_107;
        }

LABEL_108:
      }

LABEL_109:
      objc_msgSend_updateIsFiltered_(self, v58, 0, *v86);
      objc_msgSend_clearSMSCategory(self, v84, v85);
      return;
    }

    if ((objc_msgSend_isStewieChat(self, v65, v66) & 1) != 0 || objc_msgSend_isStewieSharingChat(self, v82, v83))
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *v86 = 0;
          v25 = "Stewie Chat, supports filtering extensions: Updating isFiltered to NO";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }
  }
}

- (void)fetchBrandInfoIfNecessary
{
  selfCopy = self;
  sub_1A82534F8();
}

- (void)_postNewUnreadCount
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_unreadMessageCount(self, a2, v2);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      dbUnreadCount = self->_dbUnreadCount;
      v10 = objc_msgSend_guid(self, v7, v8);
      *buf = 67109634;
      v20 = dbUnreadCount;
      v21 = 1024;
      v22 = v4;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "_dbUnreadCount changed to %d: Posting new unread count of %d for chat with guid %@", buf, 0x18u);
    }
  }

  objc_msgSend_setMarkingUnread_(self, v5, 0);
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v11, v4, @"__kIMChatUnreadKey");
  v18 = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, &v18, &v17, 1);
  objc_msgSend__postNotification_userInfo_(self, v15, @"__kIMChatUnreadCountChangedNotification", v14);

  v16 = *MEMORY[0x1E69E9840];
}

- (unint64_t)unreadMessageCount
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v4, v5, v6);

  if (isUnreadCountRefactorEnabled)
  {
    v10 = objc_msgSend_chatRegistry(self, v8, v9);
    v12 = objc_msgSend__chat_cachedUnreadCount_(v10, v11, self);

    return v12;
  }

  else
  {
    dbUnreadCount = self->_dbUnreadCount;
    if ((dbUnreadCount | 0x8000000000000000) == 0xFFFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return dbUnreadCount & ~(dbUnreadCount >> 63);
    }
  }
}

- (BOOL)isPendingReview
{
  v4 = objc_msgSend_chatRegistry(self, a2, v2);
  v7 = objc_msgSend_unreadCountController(v4, v5, v6);
  v10 = objc_msgSend__guids(self, v8, v9);
  v13 = objc_msgSend_allObjects(v10, v11, v12);
  v15 = objc_msgSend_pendingReviewCountForChatsWithGUIDs_(v7, v14, v13) > 0;

  return v15;
}

- (BOOL)isPinned
{
  v4 = objc_msgSend_processSupportsPinnedConversations(IMPinnedConversationsController, a2, v2);
  if (v4)
  {
    v7 = objc_msgSend_sharedInstance(IMPinnedConversationsController, v5, v6);
    v9 = objc_msgSend_pinnedConversationsContainsChat_(v7, v8, self);

    LOBYTE(v4) = v9;
  }

  return v4;
}

- (unint64_t)messageCount
{
  v3 = objc_msgSend__items(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

- (IMMessage)lastMessage
{
  v3 = objc_msgSend__lastMessage(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (BOOL)isMuted
{
  v4 = objc_msgSend_sharedList(MEMORY[0x1E69A8180], a2, v2);
  LOBYTE(self) = objc_msgSend_isMutedChat_(v4, v5, self);

  return self;
}

- (BOOL)isStewieSharingChat
{
  cachedStewieSharingChat = self->_cachedStewieSharingChat;
  if (!cachedStewieSharingChat)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = objc_msgSend_emergencyUserInfo(self, a2, v2);
    v8 = objc_msgSend_numberWithInt_(v5, v7, v6 != 0);
    v9 = self->_cachedStewieSharingChat;
    self->_cachedStewieSharingChat = v8;

    cachedStewieSharingChat = self->_cachedStewieSharingChat;
  }

  return objc_msgSend_BOOLValue(cachedStewieSharingChat, a2, v2);
}

- (IMSharedEmergencyInfo)emergencyUserInfo
{
  v2 = MEMORY[0x1E69A8270];
  v3 = objc_msgSend_valueForChatProperty_(self, a2, *MEMORY[0x1E69A6B58]);
  v5 = objc_msgSend_infoFromDictionary_isStewieTranscriptSharingMessage_(v2, v4, v3, 0);

  return v5;
}

- (BOOL)allowedByScreenTime
{
  isContactLimitsFeatureEnabled = objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, a2, v2);
  if (!isContactLimitsFeatureEnabled)
  {
    return 1;
  }

  v7 = IMSharedDowntimeController(isContactLimitsFeatureEnabled, v5, v6);
  v9 = objc_msgSend_allowedToShowConversationForChat_sync_(v7, v8, self, 0);

  return v9;
}

- (id)participantHandleIDs
{
  v3 = objc_msgSend_participants(self, a2, v2);
  v5 = objc_msgSend___imArrayByApplyingBlock_(v3, v4, &unk_1F1B6EEA0);

  return v5;
}

- (IMMessage)lastFinishedMessage
{
  v3 = objc_msgSend__lastFinishedMessage(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (id)chatSummary
{
  v40 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], a2, v2))
  {
    v17 = 0;
    goto LABEL_22;
  }

  v5 = objc_msgSend_valueForChatProperty_(self, v4, *MEMORY[0x1E69A6B28]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = objc_msgSend_objectForKey_(v5, v6, *MEMORY[0x1E69A6B20]);
  v10 = objc_msgSend_BOOLValue(v7, v8, v9);

  if (!v10)
  {
    v20 = objc_msgSend_chatSummaryMessageGUID(self, v11, v12);
    if (v20)
    {
      v21 = objc_msgSend_lastMessage(self, v18, v19);
      v24 = objc_msgSend_guid(v21, v22, v23);

      if (v24 && (objc_msgSend_isEqualToString_(v24, v25, v20) & 1) == 0)
      {
        objc_msgSend_consumeSummaryIfNeeded(self, v26, v27);

        v17 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    v28 = objc_msgSend_objectForKey_(v5, v18, *MEMORY[0x1E69A6B38]);
    v29 = MEMORY[0x1E696ACD0];
    v30 = objc_opt_class();
    v37 = 0;
    v32 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v29, v31, v30, v28, &v37);
    v33 = v37;
    if (v33)
    {
      v34 = IMLogHandleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1220();
      }

      v17 = 0;
    }

    else
    {
      v17 = v32;
    }

    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = objc_msgSend_guid(self, v14, v15);
      *buf = 138412290;
      v39 = v16;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Stored summary was already consumed for chat with GUID %@.", buf, 0xCu);
    }
  }

LABEL_8:
  v17 = 0;
LABEL_21:

LABEL_22:
  v35 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)conversation
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = objc_msgSend_sharedRegistry(IMChatRegistry, a2, v2, 0);
  v7 = objc_msgSend_conversationManager(v4, v5, v6);
  v10 = objc_msgSend_activeConversations(v7, v8, v9);

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v21, v25, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (objc_msgSend_mapsToTUConversation_(self, v13, v17))
        {
          v18 = v17;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v21, v25, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_11:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (IMMessage)lastIncomingFinishedMessage
{
  v3 = objc_msgSend_lastIncomingFinishedMessageItem(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (BOOL)isStewieChat
{
  v3 = objc_msgSend_chatIdentifier(self, a2, v2);
  v4 = MEMORY[0x1AC56C3D0]();

  return v4;
}

- (BOOL)hasBlockedParticipant
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_participants(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (!objc_msgSend_blockedStatus(*(*(&v12 + 1) + 8 * i), v5, v6))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isMergedBusinessThread
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isMergeBusinessSenderIndiaEnabled = objc_msgSend_isMergeBusinessSenderIndiaEnabled(v4, v5, v6);

  if (!isMergeBusinessSenderIndiaEnabled)
  {
    return 0;
  }

  v9 = objc_msgSend_valueForChatProperty_(self, v8, *MEMORY[0x1E69A6BC8]);
  v12 = objc_msgSend_BOOLValue(v9, v10, v11);

  return v12;
}

- (BOOL)isReadOnly
{
  v4 = objc_msgSend_sharedInstance(IMChorosMonitor, a2, v2);
  isMessagingActiveOverSatellite = objc_msgSend_isMessagingActiveOverSatellite(v4, v5, v6);

  if (isMessagingActiveOverSatellite && (objc_msgSend_isStewieChat(self, v8, v9) & 1) == 0)
  {
    if (objc_msgSend_isGroupChat(self, v8, v9))
    {
      return 1;
    }

    v23 = objc_msgSend_account(self, v21, v22);
    v26 = objc_msgSend_service(v23, v24, v25);
    v29 = objc_msgSend_iMessageLiteService(IMServiceImpl, v27, v28);
    v32 = v29;
    if (v26 == v29)
    {

      goto LABEL_3;
    }

    v33 = objc_msgSend_account(self, v30, v31);
    v36 = objc_msgSend_service(v33, v34, v35);
    v39 = objc_msgSend_satelliteSMSService(IMServiceImpl, v37, v38);

    if (v36 != v39)
    {
      return 1;
    }
  }

LABEL_3:
  v10 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v8, v9);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v10, v11, v12);

  if (isIntroductionsEnabled && (objc_msgSend_isGroupChat(self, v14, v15) & 1) == 0 && (objc_msgSend_allParticipantsBlocked(self, v14, v15) & 1) != 0)
  {
    return 1;
  }

  if (objc_msgSend_joinState(self, v14, v15) == 4 && (objc_msgSend_isGroupChat(self, v16, v17) & 1) == 0)
  {
    return objc_msgSend_isBusinessChat(self, v18, v19) ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)allParticipantsBlocked
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = objc_msgSend_participants(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v15;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v10 &= objc_msgSend_blockedStatus(*(*(&v14 + 1) + 8 * i), v6, v7) == 0;
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v14, v18, 16);
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_calculateDowngradeState
{
  v78 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_ignoreDowngradeStatusUpdates(self, a2, v2) & 1) == 0)
  {
    if (objc_msgSend_isDowngraded(self, v4, v5))
    {
      v10 = objc_msgSend_smsService(IMService, v6, v7);
    }

    else
    {
      v11 = objc_msgSend_lastMessage(self, v6, v7);
      v14 = objc_msgSend_sender(v11, v12, v13);
      v10 = objc_msgSend_service(v14, v15, v16);
    }

    if (!objc_msgSend_smsEnabled(IMServiceImpl, v8, v9))
    {
      goto LABEL_35;
    }

    if (objc_msgSend_chatStyle(self, v17, v18) != 45)
    {
      goto LABEL_35;
    }

    v20 = objc_msgSend_smsService(IMServiceImpl, v17, v19);

    if (v10 != v20 || !objc_msgSend__recipientIsPhoneNumber(self, v17, v21))
    {
      goto LABEL_35;
    }

    v22 = objc_msgSend_valueForChatProperty_(self, v17, *MEMORY[0x1E69A61E0]);
    v25 = v22;
    if (!v22 || (v26 = MEMORY[0x1E695DF00], objc_msgSend_doubleValue(v22, v23, v24), objc_msgSend_dateWithTimeIntervalSince1970_(v26, v27, v28), v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue()), v29 == 0.0))
    {
      v42 = objc_msgSend_lastMessage(self, v23, v24);
      v45 = objc_msgSend_error(v42, v43, v44);
      v48 = objc_msgSend_code(v45, v46, v47);

      v49 = IMOSLoggingEnabled();
      if (v48 != 43)
      {
        if (v49)
        {
          v52 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy6 = self;
            _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "Marking self (%@) as upgraded because it does not have a downgrade time specified", buf, 0xCu);
          }
        }

        goto LABEL_34;
      }

      if (v49)
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy6 = self;
          _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "User resent as SMS in response to blackhole error; Marking chat (%@) as downgraded.", buf, 0xCu);
        }
      }

      objc_msgSend__updateDowngradeState_checkAgainInterval_(self, v50, 1, 0.0);
    }

    else
    {
      objc_msgSend__consecutiveDowngradeAttemptsViaManualDowngrades_(self, v23, 0);
      v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v32 = objc_msgSend__consecutiveDowngradeAttemptsViaManualDowngrades_(self, v31, 1);
      v33 = sub_1A83A9EE0(v32, *&v30);
      v65 = 0;
      v34 = sub_1A83A9E70(*&v29, &v65);
      if (!v65)
      {
        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            selfCopy6 = self;
            v68 = 2112;
            v69 = v29;
            _os_log_impl(&dword_1A823F000, v55, OS_LOG_TYPE_INFO, "Marking self (%@) as upgraded because it's time since downgrade is in the future (%@). This should not happen. File a radar.", buf, 0x16u);
          }
        }

        objc_msgSend__clearDowngradeMarkers(self, v53, v54);
        goto LABEL_33;
      }

      v35 = v34;
      v38 = sub_1A83A9E48(v33);
      v39 = v38;
      if (v35 >= v38)
      {
        v40 = IMOSLoggingEnabled();
        if (v33)
        {
          if (v40)
          {
            v41 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              *buf = 138413570;
              selfCopy6 = self;
              v68 = 2048;
              v69 = v35;
              v70 = 2048;
              v71 = v33;
              v72 = 2112;
              v73 = v30;
              v74 = 2112;
              v75 = v32;
              v76 = 2048;
              v77 = v39;
              _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "Marking chat (%@) as upgraded because it's been %5.2f seconds since downgrade, larger than threshold for %ld (%@ auto, %@ manual) consecutive downgraded messages (%5.2f)", buf, 0x3Eu);
            }
          }
        }

        else if (v40)
        {
          v64 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy6 = self;
            _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "Marking chat (%@) as upgraded because there are no active downgrade markers.", buf, 0xCu);
          }
        }

LABEL_33:

LABEL_34:
LABEL_35:
        objc_msgSend__updateDowngradeState_checkAgainInterval_(self, v17, 2, 0.0);
LABEL_36:

        goto LABEL_37;
      }

      v57 = objc_msgSend_dateByAddingTimeInterval_(*&v29, v36, v37, v38);
      objc_msgSend_timeIntervalSinceNow(v57, v58, v59);
      v61 = v60;

      if (IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          selfCopy6 = self;
          v68 = 2112;
          v69 = v30;
          v70 = 2112;
          v71 = v32;
          v72 = 2048;
          v73 = v61;
          _os_log_impl(&dword_1A823F000, v63, OS_LOG_TYPE_INFO, "Marking chat (%@) as downgraded because of %@ automatic downgrades, %@ manual downgrades, with %5.2f seconds until next update check.", buf, 0x2Au);
        }
      }

      objc_msgSend__updateDowngradeState_checkAgainInterval_(self, v62, 1, v61);
    }

    goto LABEL_36;
  }

LABEL_37:
  v56 = *MEMORY[0x1E69E9840];
}

- (BOOL)wasDetectedAsSMSSpam
{
  if (objc_msgSend_wasDetectedAsSMSSpamCacheStatus(self, a2, v2))
  {
    return objc_msgSend_wasDetectedAsSMSSpamCacheStatus(self, v4, v5) == 2;
  }

  v7 = objc_msgSend_valueForChatProperty_(self, v4, @"wasDetectedAsSMSSpam");
  if (objc_msgSend_intValue(v7, v8, v9))
  {

LABEL_6:
    objc_msgSend_setWasDetectedAsSMSSpamCacheStatus_(self, v11, 2);
    return 1;
  }

  v12 = objc_msgSend_valueForChatProperty_(self, v10, @"SMSCategory");
  v15 = objc_msgSend_intValue(v12, v13, v14);

  if (v15 == 1)
  {
    goto LABEL_6;
  }

  objc_msgSend_setWasDetectedAsSMSSpamCacheStatus_(self, v11, 1);
  return 0;
}

- (NSString)description
{
  v84 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_chatIdentifier(self, a2, v2);
  v7 = objc_msgSend_guid(self, v5, v6);
  v10 = objc_msgSend_persistentID(self, v8, v9);
  v87 = objc_msgSend_account(self, v11, v12);
  v15 = objc_msgSend_uniqueID(v87, v13, v14);
  v82 = objc_msgSend_chatStyle(self, v16, v17);
  v81 = objc_msgSend_joinState(self, v18, v19);
  v85 = objc_msgSend_participants(self, v20, v21);
  v86 = v15;
  v90 = v7;
  v91 = v4;
  if (v85)
  {
    v24 = MEMORY[0x1E696AD98];
    v73 = objc_msgSend_participants(self, v22, v23);
    v27 = objc_msgSend_count(v73, v25, v26);
    v83 = objc_msgSend_numberWithUnsignedInteger_(v24, v28, v27);
  }

  else
  {
    v83 = @"nil";
  }

  v80 = objc_msgSend_roomName(self, v22, v23);
  v89 = objc_msgSend_displayName(self, v29, v30);
  if (objc_msgSend_isUnregistered(self, v31, v32))
  {
    v35 = @"YES";
  }

  else
  {
    v35 = @"NO";
  }

  v79 = v35;
  v78 = objc_msgSend_lastAddressedHandleID(self, v33, v34);
  v88 = objc_msgSend_lastAddressedSIMID(self, v36, v37);
  v77 = objc_msgSend_groupID(self, v38, v39);
  v76 = objc_msgSend_unreadMessageCount(self, v40, v41);
  v75 = objc_msgSend_messageFailureCount(self, v42, v43);
  isFiltered = objc_msgSend_isFiltered(self, v44, v45);
  v48 = objc_msgSend_mergedThreadFilterModes(self, v46, v47);
  if (objc_msgSend_hasHadSuccessfulQuery(self, v49, v50))
  {
    v53 = @"YES";
  }

  else
  {
    v53 = @"NO";
  }

  v54 = objc_msgSend_bizIntent(self, v51, v52);
  v57 = objc_msgSend_personCentricID(self, v55, v56);
  v60 = objc_msgSend_mergedPinningIdentifiers(self, v58, v59);
  if (objc_msgSend_isRecovered(self, v61, v62))
  {
    v65 = @"YES";
  }

  else
  {
    v65 = @"NO";
  }

  if (objc_msgSend_isDeletingIncomingMessages(self, v63, v64))
  {
    v68 = @"YES";
  }

  else
  {
    v68 = @"NO";
  }

  if (objc_msgSend_isPendingReview(self, v66, v67))
  {
    v70 = @"YES";
  }

  else
  {
    v70 = @"NO";
  }

  v71 = objc_msgSend_stringWithFormat_(v84, v69, @"<IMChat %p> [Identifier: %@   GUID: %@ Persistent ID: %@   Account: %@   Style: %c   State: %d  Participants: %@  Room Name: %@  Display Name: %@  Unregistered: %@  Last Addressed Handle: %@ Last Addressed SIMID: %@ Group ID: %@  Unread Count: %u  Failure Count: %u, isFiltered: %d, filterModes: %@, hasHadSuccessfulQuery: %@, bizIntent: %@ personCentricID: %@ mergedPinningIdentifiers: %@, isRecovered: %@  isDeletingIncomingMessages: %@, isPendingReview: %@]", self, v91, v90, v10, v86, v82, v81, v83, v80, v89, v79, v78, v88, v77, v76, v75, isFiltered, v48, v53, v54, v57, v60, v65, v68, v70);

  if (v85)
  {
  }

  return v71;
}

- (NSSet)mergedThreadFilterModes
{
  mergedThreadFilterModes = self->_mergedThreadFilterModes;
  if (!mergedThreadFilterModes)
  {
    objc_msgSend_recalculateMergedThreadFilterModes(self, a2, v2);
    mergedThreadFilterModes = self->_mergedThreadFilterModes;
  }

  return mergedThreadFilterModes;
}

- (BOOL)isCategorized
{
  v3 = objc_msgSend_valueForChatProperty_(self, a2, @"wasDetectedAsSMSSpam");
  if (objc_msgSend_BOOLValue(v3, v4, v5))
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_msgSend_valueForChatProperty_(self, v6, @"SMSCategory");
    v7 = objc_msgSend_intValue(v8, v9, v10) > 0;
  }

  return v7;
}

- (unint64_t)messageFailureCount
{
  dbFailedCount = self->_dbFailedCount;
  if ((dbFailedCount | 0x8000000000000000) == 0xFFFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return dbFailedCount & ~(dbFailedCount >> 63);
  }
}

- (IMHandle)businessHandle
{
  v4 = objc_msgSend_participants(self, a2, v2);
  v7 = objc_msgSend_firstObject(v4, v5, v6);

  if ((objc_msgSend_isBusinessChat(self, v8, v9) & 1) != 0 || objc_msgSend_isBusiness(v7, v10, v11))
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (void)refreshServiceForSendingWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v5, v6);
  isInternalInstall = objc_msgSend_isInternalInstall(v7, v8, v9);

  if (isInternalInstall)
  {
    v13 = IMGetCachedDomainValueForKey();
    v15 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v14, v13);
    if (v15)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = v13;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Overriding service for sending to %@ per user-default", &v24, 0xCu);
        }
      }

      objc_msgSend__targetToService_newComposition_supportsEncryption_(self, v17, v15, 0, 0);
      completionCopy[2](completionCopy, 1);

      goto LABEL_18;
    }

    if (v13 && IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v13;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Ignoring service for sending override to %@ because service does not exist", &v24, 0xCu);
      }
    }
  }

  if (objc_msgSend_ignoreDowngradeStatusUpdates(self, v11, v12))
  {
    objc_msgSend_setIgnoreDowngradeStatusUpdates_(self, v19, 0);
    if (!objc_msgSend_downgradeState(self, v20, v21))
    {
      objc_msgSend__invalidateDowngradeState(self, v19, v22);
    }
  }

  objc_msgSend__refreshServiceForSendingWithDaemonWithCompletion_(self, v19, completionCopy);
LABEL_18:

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)_accountIsOperational:(id)operational forService:(id)service
{
  operationalCopy = operational;
  isUsableForSending = 0;
  if (operationalCopy && service)
  {
    serviceCopy = service;
    v10 = objc_msgSend_service(operationalCopy, v8, v9);

    if (v10 == serviceCopy)
    {
      isUsableForSending = objc_msgSend__isUsableForSending(operationalCopy, v11, v12);
    }

    else
    {
      isUsableForSending = 0;
    }
  }

  return isUsableForSending;
}

- (id)_previousAccountForService:(id)service
{
  if (service)
  {
    serviceCopy = service;
    v6 = objc_msgSend_valueForChatProperty_(self, v5, @"CKChatPreviousAccountsDictionaryKey");
    v9 = objc_msgSend_name(serviceCopy, v7, v8);

    v11 = objc_msgSend_objectForKey_(v6, v10, v9);

    if (v11)
    {
      v14 = objc_msgSend_sharedInstance(IMAccountController, v12, v13);
      v16 = objc_msgSend_accountForUniqueID_(v14, v15, v11);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_setPreviousAccount:(id)account forService:(id)service
{
  accountCopy = account;
  serviceCopy = service;
  if (serviceCopy)
  {
    v8 = objc_msgSend_valueForChatProperty_(self, v6, @"CKChatPreviousAccountsDictionaryKey");
    v11 = v8;
    if (v8)
    {
      v12 = objc_msgSend_mutableCopy(v8, v9, v10);
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v15 = v12;
    if (accountCopy)
    {
      v16 = objc_msgSend_uniqueID(accountCopy, v13, v14);

      if (!v16)
      {
LABEL_10:
        objc_msgSend_setValue_forChatProperty_(self, v17, v15, @"CKChatPreviousAccountsDictionaryKey");

        goto LABEL_11;
      }

      v19 = objc_msgSend_uniqueID(accountCopy, v17, v18);
      v22 = objc_msgSend_name(serviceCopy, v20, v21);
      objc_msgSend_setObject_forKey_(v15, v23, v19, v22);
    }

    else
    {
      v19 = objc_msgSend_name(serviceCopy, v13, v14);
      objc_msgSend_removeObjectForKey_(v15, v24, v19);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_calculateDowngradeStateTimerFired
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Downgrade state recalculate timer fired", v6, 2u);
    }
  }

  objc_msgSend__calculateDowngradeState(self, v3, v4);
}

- (id)_consecutiveDowngradeAttemptsViaManualDowngrades:(BOOL)downgrades
{
  v3 = MEMORY[0x1E69A61E8];
  if (!downgrades)
  {
    v3 = MEMORY[0x1E69A61D8];
  }

  return objc_msgSend_valueForChatProperty_(self, a2, *v3);
}

- (void)_clearDowngradeMarkers
{
  objc_msgSend_setValue_forChatProperty_(self, a2, 0, *MEMORY[0x1E69A61E8]);
  objc_msgSend_setValue_forChatProperty_(self, v3, 0, *MEMORY[0x1E69A61D8]);
  v5 = *MEMORY[0x1E69A61E0];

  objc_msgSend_setValue_forChatProperty_(self, v4, 0, v5);
}

- (BOOL)_recipientIsPhoneNumber
{
  v3 = objc_msgSend_recipient(self, a2, v2);
  v6 = objc_msgSend_ID(v3, v4, v5);
  v9 = objc_msgSend__appearsToBePhoneNumber(v6, v7, v8);

  return v9;
}

- (BOOL)shouldForceServerStatusRefresh
{
  if (!objc_msgSend_supportsCapabilities_(self, a2, 512))
  {
    goto LABEL_3;
  }

  v5 = objc_msgSend_account(self, v3, v4);
  v8 = objc_msgSend_service(v5, v6, v7);
  v11 = objc_msgSend_iMessageService(IMServiceImpl, v9, v10);

  if (v8 == v11)
  {
    v16 = objc_msgSend_lastSentMessage(self, v12, v13);
    v19 = v16;
    if (!v16)
    {
      goto LABEL_7;
    }

    v20 = objc_msgSend_sender(v16, v17, v18);
    v23 = objc_msgSend_service(v20, v21, v22);
    v26 = objc_msgSend_iMessageService(IMServiceImpl, v24, v25);

    v29 = objc_msgSend_guid(v19, v27, v28);
    v32 = objc_msgSend_lastUndeliveredMessageGUIDForForcedQuery(self, v30, v31);
    isEqualToString = objc_msgSend_isEqualToString_(v29, v33, v32);

    if (v23 == v26)
    {
      v14 = (objc_msgSend_isDelivered(v19, v35, v36) | isEqualToString) ^ 1;
    }

    else
    {
LABEL_7:
      v14 = 0;
    }
  }

  else
  {
LABEL_3:
    v14 = 0;
  }

  return v14 & 1;
}

- (void)_resetForceServerStatusRefresh
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_lastSentMessage(self, a2, v2);
  v7 = objc_msgSend_guid(v4, v5, v6);
  objc_msgSend_setLastUndeliveredMessageGUIDForForcedQuery_(self, v8, v7);

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_guid(v4, v10, v11);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Stopping force queries while last sent message is %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)capabilities
{
  if (objc_msgSend__supportsUndoSend(self, a2, v2))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | objc_msgSend__supportsEditMessage(self, v4, v5);
  if (objc_msgSend__supportsNameAndPhoto(self, v8, v9))
  {
    v7 |= 8uLL;
  }

  if (objc_msgSend__supportsAudioMessages(self, v10, v11))
  {
    v7 |= 0x40uLL;
  }

  if (objc_msgSend__supportsGroupIdentity(self, v12, v13))
  {
    v7 |= 0x10uLL;
  }

  if (objc_msgSend__supportsGroupMutability(self, v14, v15))
  {
    v7 |= 0x20uLL;
  }

  if (objc_msgSend__supportsInlineReply(self, v16, v17))
  {
    v7 |= 4uLL;
  }

  if (objc_msgSend__supportsMentions(self, v18, v19))
  {
    v7 |= 0x80uLL;
  }

  if (objc_msgSend__supportsDeleteAndBlockGroup(self, v20, v21))
  {
    v7 |= 0x100uLL;
  }

  if (objc_msgSend__supportsDeliveryReceipts(self, v22, v23))
  {
    v7 |= 0x200uLL;
  }

  if (objc_msgSend__supportsFaceTime(self, v24, v25))
  {
    v7 |= 0x400uLL;
  }

  if (objc_msgSend__supportsSendMenu(self, v26, v27))
  {
    v7 |= 0x800uLL;
  }

  if (objc_msgSend__supportsShareLocation(self, v28, v29))
  {
    v7 |= 0x1000uLL;
  }

  if (objc_msgSend__supportsSimSwitch(self, v30, v31))
  {
    v7 |= 0x2000uLL;
  }

  if (objc_msgSend__supportsAlternativeCommunicationActions(self, v32, v33))
  {
    v7 |= 0x4000uLL;
  }

  if (objc_msgSend__supportsAttachments(self, v34, v35))
  {
    v7 |= 0x10000uLL;
  }

  if (objc_msgSend__supportsStickers(self, v36, v37))
  {
    v7 |= 0x8000uLL;
  }

  if (objc_msgSend__supportsMessageEffects(self, v38, v39))
  {
    v7 |= 0x20000uLL;
  }

  if (objc_msgSend__supportsTapbacks(self, v40, v41))
  {
    v7 |= 0x40000uLL;
  }

  if (objc_msgSend__supportsSendLater(self, v42, v43))
  {
    v7 |= 0x80000uLL;
  }

  if (objc_msgSend__supportsInlineAdaptiveImageGlyphs(self, v44, v45))
  {
    v7 |= 0x400000uLL;
  }

  if (objc_msgSend__supportsExpressiveText(self, v46, v47))
  {
    v7 |= 0x100000uLL;
  }

  if (objc_msgSend__supportsFocusMode(self, v48, v49))
  {
    return v7 | 0x200000;
  }

  else
  {
    return v7;
  }
}

- (BOOL)supportsCapabilities:(unint64_t)capabilities
{
  capabilitiesCopy = capabilities;
  v5 = capabilities & 1;
  if (capabilities)
  {
    v6 = objc_msgSend__supportsEditMessage(self, a2, capabilities);
    if ((capabilitiesCopy & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if ((capabilities & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  v7 = objc_msgSend__supportsUndoSend(self, a2, capabilities);
  if (capabilitiesCopy)
  {
    v6 &= v7;
  }

  else
  {
    v6 = v7;
  }

  v5 = 1;
LABEL_9:
  if ((capabilitiesCopy & 4) != 0)
  {
    v10 = objc_msgSend__supportsInlineReply(self, a2, capabilities);
    if (v5)
    {
      v6 &= v10;
    }

    else
    {
      v6 = v10;
    }

    v5 = 1;
    if ((capabilitiesCopy & 8) == 0)
    {
LABEL_11:
      if ((capabilitiesCopy & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_45;
    }
  }

  else if ((capabilitiesCopy & 8) == 0)
  {
    goto LABEL_11;
  }

  v11 = objc_msgSend__supportsNameAndPhoto(self, a2, capabilities);
  if (v5)
  {
    v6 &= v11;
  }

  else
  {
    v6 = v11;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x10) == 0)
  {
LABEL_12:
    if ((capabilitiesCopy & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_45:
  v12 = objc_msgSend__supportsGroupIdentity(self, a2, capabilities);
  if (v5)
  {
    v6 &= v12;
  }

  else
  {
    v6 = v12;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x20) == 0)
  {
LABEL_13:
    if ((capabilitiesCopy & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_49:
  v13 = objc_msgSend__supportsGroupMutability(self, a2, capabilities);
  if (v5)
  {
    v6 &= v13;
  }

  else
  {
    v6 = v13;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x40) == 0)
  {
LABEL_14:
    if ((capabilitiesCopy & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_57;
  }

LABEL_53:
  v14 = objc_msgSend__supportsAudioMessages(self, a2, capabilities);
  if (v5)
  {
    v6 &= v14;
  }

  else
  {
    v6 = v14;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x80) == 0)
  {
LABEL_15:
    if ((capabilitiesCopy & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_57:
  v15 = objc_msgSend__supportsMentions(self, a2, capabilities);
  if (v5)
  {
    v6 &= v15;
  }

  else
  {
    v6 = v15;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x100) == 0)
  {
LABEL_16:
    if ((capabilitiesCopy & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

LABEL_61:
  v16 = objc_msgSend__supportsDeleteAndBlockGroup(self, a2, capabilities);
  if (v5)
  {
    v6 &= v16;
  }

  else
  {
    v6 = v16;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x200) == 0)
  {
LABEL_17:
    if ((capabilitiesCopy & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_65:
  v17 = objc_msgSend__supportsDeliveryReceipts(self, a2, capabilities);
  if (v5)
  {
    v6 &= v17;
  }

  else
  {
    v6 = v17;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x400) == 0)
  {
LABEL_18:
    if ((capabilitiesCopy & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_69:
  v18 = objc_msgSend__supportsFaceTime(self, a2, capabilities);
  if (v5)
  {
    v6 &= v18;
  }

  else
  {
    v6 = v18;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x800) == 0)
  {
LABEL_19:
    if ((capabilitiesCopy & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_77;
  }

LABEL_73:
  v19 = objc_msgSend__supportsSendMenu(self, a2, capabilities);
  if (v5)
  {
    v6 &= v19;
  }

  else
  {
    v6 = v19;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x1000) == 0)
  {
LABEL_20:
    if ((capabilitiesCopy & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_81;
  }

LABEL_77:
  v20 = objc_msgSend__supportsShareLocation(self, a2, capabilities);
  if (v5)
  {
    v6 &= v20;
  }

  else
  {
    v6 = v20;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x2000) == 0)
  {
LABEL_21:
    if ((capabilitiesCopy & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_85;
  }

LABEL_81:
  v21 = objc_msgSend__supportsSimSwitch(self, a2, capabilities);
  if (v5)
  {
    v6 &= v21;
  }

  else
  {
    v6 = v21;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x4000) == 0)
  {
LABEL_22:
    if ((capabilitiesCopy & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_89;
  }

LABEL_85:
  v22 = objc_msgSend__supportsAlternativeCommunicationActions(self, a2, capabilities);
  if (v5)
  {
    v6 &= v22;
  }

  else
  {
    v6 = v22;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x8000) == 0)
  {
LABEL_23:
    if ((capabilitiesCopy & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_93;
  }

LABEL_89:
  v23 = objc_msgSend__supportsStickers(self, a2, capabilities);
  if (v5)
  {
    v6 &= v23;
  }

  else
  {
    v6 = v23;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x10000) == 0)
  {
LABEL_24:
    if ((capabilitiesCopy & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_97;
  }

LABEL_93:
  v24 = objc_msgSend__supportsAttachments(self, a2, capabilities);
  if (v5)
  {
    v6 &= v24;
  }

  else
  {
    v6 = v24;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x20000) == 0)
  {
LABEL_25:
    if ((capabilitiesCopy & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_101;
  }

LABEL_97:
  v25 = objc_msgSend__supportsMessageEffects(self, a2, capabilities);
  if (v5)
  {
    v6 &= v25;
  }

  else
  {
    v6 = v25;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x40000) == 0)
  {
LABEL_26:
    if ((capabilitiesCopy & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_105;
  }

LABEL_101:
  v26 = objc_msgSend__supportsTapbacks(self, a2, capabilities);
  if (v5)
  {
    v6 &= v26;
  }

  else
  {
    v6 = v26;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x80000) == 0)
  {
LABEL_27:
    if ((capabilitiesCopy & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_109;
  }

LABEL_105:
  v27 = objc_msgSend__supportsSendLater(self, a2, capabilities);
  if (v5)
  {
    v6 &= v27;
  }

  else
  {
    v6 = v27;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x100000) == 0)
  {
LABEL_28:
    if ((capabilitiesCopy & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_113;
  }

LABEL_109:
  v28 = objc_msgSend__supportsExpressiveText(self, a2, capabilities);
  if (v5)
  {
    v6 &= v28;
  }

  else
  {
    v6 = v28;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x200000) == 0)
  {
LABEL_29:
    if ((capabilitiesCopy & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_117;
  }

LABEL_113:
  v29 = objc_msgSend__supportsFocusMode(self, a2, capabilities);
  if (v5)
  {
    v6 &= v29;
  }

  else
  {
    v6 = v29;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x400000) == 0)
  {
LABEL_30:
    if ((capabilitiesCopy & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_121;
  }

LABEL_117:
  v30 = objc_msgSend__supportsInlineAdaptiveImageGlyphs(self, a2, capabilities);
  if (v5)
  {
    v6 &= v30;
  }

  else
  {
    v6 = v30;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x800000) == 0)
  {
LABEL_31:
    if ((capabilitiesCopy & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_125;
  }

LABEL_121:
  v31 = objc_msgSend__supportsAutomaticTranslation(self, a2, capabilities);
  if (v5)
  {
    v6 &= v31;
  }

  else
  {
    v6 = v31;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x1000000) == 0)
  {
LABEL_32:
    if ((capabilitiesCopy & 0x2000000) == 0)
    {
      return v6;
    }

    goto LABEL_33;
  }

LABEL_125:
  v32 = objc_msgSend__supportsTranscriptBackgrounds(self, a2, capabilities);
  if (v5)
  {
    v6 &= v32;
  }

  else
  {
    v6 = v32;
  }

  v5 = 1;
  if ((capabilitiesCopy & 0x2000000) != 0)
  {
LABEL_33:
    v8 = objc_msgSend__supportsPolls(self, a2, capabilities);
    if (v5)
    {
      return v6 & v8;
    }

    else
    {
      return v8;
    }
  }

  return v6;
}

- (BOOL)_isHybridGroupEligibleByCarrier
{
  if (objc_msgSend__isSMSService(self, a2, v2))
  {
    v6 = MEMORY[0x1E69A7F58];
    v7 = objc_msgSend_lastAddressedHandleID(self, v4, v5);
    v10 = objc_msgSend_lastAddressedSIMID(self, v8, v9);
    LOBYTE(v6) = objc_msgSend_IMMMSGroupTextReplicationSupportedForPhoneNumber_simID_(v6, v11, v7, v10);

    return v6;
  }

  else if (objc_msgSend__isRCSService(self, v4, v5))
  {
    v15 = objc_msgSend_sharedManager(MEMORY[0x1E69A7F50], v13, v14);
    v18 = objc_msgSend_lastAddressedHandleID(self, v16, v17);
    v21 = objc_msgSend_lastAddressedSIMID(self, v19, v20);
    v23 = objc_msgSend_groupTextReplicationSupportedForPhoneNumber_simID_(v15, v22, v18, v21);

    return v23;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A826FD94;
    block[3] = &unk_1E780FCB0;
    block[4] = self;
    if (qword_1EB2EA160 != -1)
    {
      dispatch_once(&qword_1EB2EA160, block);
    }

    return 1;
  }
}

- (BOOL)_isHybridGroup
{
  v15 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_hybridGroupState(self, a2, v2))
  {
    v7 = objc_msgSend__uncachedHybridGroupStatus(self, v4, v5);
    if (v7)
    {
      objc_msgSend_setHybridGroupState_(self, v6, 2);
    }

    else
    {
      objc_msgSend_setHybridGroupState_(self, v6, 1);
    }

    objc_msgSend__updateLastKnownHybridState_(self, v8, v7);
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v14[0] = 67109120;
        v14[1] = objc_msgSend_hybridGroupState(self, v10, v11);
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Hybrid group state unknown, updated to %d", v14, 8u);
      }
    }
  }

  result = objc_msgSend_hybridGroupState(self, v4, v5) == 2;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_canPossiblyBecomeHybrid
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_account(self, a2, v2);
  v7 = objc_msgSend_service(v4, v5, v6);
  v10 = objc_msgSend_supportsReplication(v7, v8, v9);

  if ((v10 & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_27:
      v33 = 0;
      goto LABEL_28;
    }

    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Chat is not Hybrid, not using SMS service", buf, 2u);
    }

LABEL_8:

    goto LABEL_27;
  }

  if ((objc_msgSend__isHybridGroupEligibleByCarrier(self, v11, v12) & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_27;
    }

    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Chat is not Hybrid, disabled by carrier", buf, 2u);
    }

    goto LABEL_8;
  }

  v15 = objc_msgSend_participants(self, v13, v14);
  if (objc_msgSend_count(v15, v16, v17) < 2)
  {

    goto LABEL_23;
  }

  v21 = objc_msgSend_chatStyle(self, v18, v19);

  if (v21 != 43)
  {
LABEL_23:
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v37 = objc_msgSend_participants(self, v35, v36);
        *buf = 134217984;
        v52 = objc_msgSend_count(v37, v38, v39);
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Chat is not Hybrid, not enough participants: %lu", buf, 0xCu);
      }
    }

    goto LABEL_27;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v24 = objc_msgSend_participants(self, v22, v23, 0);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v46, v50, 16);
  if (v28)
  {
    v29 = *v47;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = objc_msgSend_ID(*(*(&v46 + 1) + 8 * i), v26, v27);
        v32 = MEMORY[0x1AC56C3C0]();

        if ((v32 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v42 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v45 = objc_msgSend_participants(self, v43, v44);
              *buf = 138412290;
              v52 = v45;
              _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "Chat is not Hybrid, not all handles are phone number: %@", buf, 0xCu);
            }
          }

          v33 = 0;
          goto LABEL_34;
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v46, v50, 16);
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v33 = 1;
LABEL_34:

LABEL_28:
  v40 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)_uncachedHybridGroupStatusWithIDSQueryResults:(id)results
{
  v43 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (objc_msgSend__canPossiblyBecomeHybrid(self, v5, v6))
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = objc_msgSend_participants(self, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v38, v42, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = objc_msgSend_ID(*(*(&v38 + 1) + 8 * i), v13, v14);
          v19 = IMChatCanonicalIDSIDsForAddress();
          objc_msgSend_addObject_(v7, v20, v19);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v38, v42, 16);
      }

      while (v15);
    }

    if (!resultsCopy || (v23 = objc_msgSend_count(resultsCopy, v21, v22), objc_msgSend_participants(self, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend_count(v26, v27, v28), v26, v23 != v29))
    {
      v31 = MEMORY[0x1E69A80B0];
      v32 = IMServiceNameForCanonicalIDSAddresses();
      v34 = objc_msgSend__currentIDStatusForDestinations_service_listenerID_(v31, v33, v7, v32, @"IMChat+Capabilities");

      resultsCopy = v34;
    }

    HaveMixedIDSStatus = objc_msgSend__idsQueryResultsHaveMixedIDSStatus_(self, v30, resultsCopy);
  }

  else
  {
    HaveMixedIDSStatus = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return HaveMixedIDSStatus;
}

- (BOOL)_reachabilityResultHasMixedStatus:(id)status
{
  v26 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v6 = statusCopy;
  if (statusCopy && (objc_msgSend_allAreReachable(statusCopy, v4, v5) & 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = objc_msgSend_handleResults(v6, v7, v8, 0);
    v13 = objc_msgSend_allValues(v10, v11, v12);

    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v25, 16);
    if (v9)
    {
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v13);
          }

          if (objc_msgSend_isReachable(*(*(&v21 + 1) + 8 * i), v15, v16))
          {
            LOBYTE(v9) = 1;
            goto LABEL_14;
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v21, v25, 16);
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_uncachedHybridGroupStatusWithReachabilityResult:(id)result
{
  resultCopy = result;
  if (objc_msgSend__canPossiblyBecomeHybrid(self, v5, v6))
  {
    HasMixedStatus = objc_msgSend__reachabilityResultHasMixedStatus_(self, v7, resultCopy);
  }

  else
  {
    HasMixedStatus = 0;
  }

  return HasMixedStatus;
}

- (BOOL)_idsQueryResultsHaveMixedIDSStatus:(id)status
{
  statusCopy = status;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82707C8;
  v10[3] = &unk_1E780FF30;
  v10[4] = &v15;
  v10[5] = &v11;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(statusCopy, v4, v10);
  if (!v16[3])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        v7 = "Chat is not Hybrid, not enough iMessageable participants";
LABEL_10:
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, v7, v9, 2u);
      }

LABEL_11:
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  if (!v12[3])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        v7 = "Chat is not Hybrid, not enough non-iMessageable participants";
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = 1;
LABEL_13:
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

- (BOOL)_isiMessageService
{
  v3 = objc_msgSend_account(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);
  v9 = objc_msgSend_name(v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x1E69A7AF0]);

  return isEqualToString;
}

- (BOOL)_isSMSService
{
  v3 = objc_msgSend_account(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);
  v9 = objc_msgSend_name(v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x1E69A7AE0]);

  return isEqualToString;
}

- (BOOL)_isRCSService
{
  v3 = objc_msgSend_account(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);
  v9 = objc_msgSend_name(v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x1E69A7AD8]);

  return isEqualToString;
}

- (BOOL)_isReplicatingService
{
  v3 = objc_msgSend_account(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);
  v9 = objc_msgSend_supportsReplication(v6, v7, v8);

  return v9;
}

- (BOOL)_isiMessageLiteServiceOrInCompatibleMode
{
  if (objc_msgSend_shouldDisplayOffGridModeStatus(self, a2, v2))
  {
    return 1;
  }

  v7 = objc_msgSend_account(self, v4, v5);
  v10 = objc_msgSend_service(v7, v8, v9);
  v13 = objc_msgSend_internalName(v10, v11, v12);
  isEqualToString = objc_msgSend_isEqualToString_(v13, v14, *MEMORY[0x1E69A7AF8]);

  return isEqualToString;
}

- (BOOL)_isSMSSatelliteService
{
  v3 = objc_msgSend_account(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);
  v9 = objc_msgSend_internalName(v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x1E69A7AE8]);

  return isEqualToString;
}

- (BOOL)_serviceCapabilityEnabled:(id)enabled
{
  enabledCopy = enabled;
  v7 = objc_msgSend__serviceForCapabilityCheck(self, v5, v6);
  v11 = (objc_msgSend_supportsCapability_(v7, v8, enabledCopy) & 1) != 0 || objc_msgSend_supportsReplication(v7, v9, v10) && objc_msgSend__isHybridGroup(self, v12, v13) && (objc_msgSend_supportsReplicationCapability_(v7, v14, enabledCopy) & 1) != 0;

  return v11;
}

- (id)_serviceForCapabilityCheck
{
  if (objc_msgSend_shouldForceToSMS(self, a2, v2))
  {
    v6 = objc_msgSend_smsService(IMServiceImpl, v4, v5);
LABEL_5:
    v9 = v6;
    goto LABEL_7;
  }

  if (objc_msgSend_shouldDisplayOffGridModeStatus(self, v4, v5))
  {
    v6 = objc_msgSend_iMessageLiteService(IMServiceImpl, v7, v8);
    goto LABEL_5;
  }

  v10 = objc_msgSend_account(self, v7, v8);
  v9 = objc_msgSend_service(v10, v11, v12);

LABEL_7:

  return v9;
}

- (BOOL)_supportsInlineReply
{
  if (objc_msgSend_isBusinessChat(self, a2, v2) & 1) != 0 || (objc_msgSend_isMakoChat(self, v4, v5) & 1) != 0 || (objc_msgSend_isAppleChat(self, v6, v7) & 1) != 0 || (objc_msgSend_isReadOnly(self, v8, v9) & 1) != 0 || (objc_msgSend_isStewieSharingChat(self, v10, v11) & 1) != 0 || (objc_msgSend_isGroupChat(self, v12, v13) & 1) == 0 && (objc_msgSend_allParticipantsBlocked(self, v15, v16))
  {
    return 0;
  }

  v17 = *MEMORY[0x1E69A7990];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v17);
}

- (BOOL)_supportsUndoSend
{
  if (objc_msgSend_isReadOnly(self, a2, v2))
  {
    return 0;
  }

  v5 = *MEMORY[0x1E69A7A70];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v5);
}

- (BOOL)_supportsEditMessage
{
  if (objc_msgSend_isReadOnly(self, a2, v2))
  {
    return 0;
  }

  v5 = *MEMORY[0x1E69A7950];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v5);
}

- (BOOL)_supportsMentions
{
  if (objc_msgSend_isBusinessChat(self, a2, v2) & 1) != 0 || (objc_msgSend_isReadOnly(self, v4, v5) & 1) != 0 || (objc_msgSend_isStewieChat(self, v6, v7))
  {
    return 0;
  }

  v9 = *MEMORY[0x1E69A79A8];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v9);
}

- (BOOL)_supportsDeliveryReceipts
{
  v4 = objc_msgSend_account(self, a2, v2);
  v7 = objc_msgSend_service(v4, v5, v6);
  if (objc_msgSend_supportsCapability_(v7, v8, *MEMORY[0x1E69A7938]))
  {
    v11 = objc_msgSend_chatStyle(self, v9, v10) == 45;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_supportsNameAndPhoto
{
  if (objc_msgSend_isBusinessChat(self, a2, v2) & 1) != 0 || (objc_msgSend_isReadOnly(self, v4, v5))
  {
    return 0;
  }

  v7 = *MEMORY[0x1E69A79D0];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v7);
}

- (BOOL)_supportsAudioMessages
{
  v4 = objc_msgSend_participants(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (!v7 || (objc_msgSend_isReadOnly(self, v8, v9) & 1) != 0)
  {
    return 0;
  }

  v11 = *MEMORY[0x1E69A7900];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v11);
}

- (BOOL)_supportsGroupIdentity
{
  isGroupChat = objc_msgSend_isGroupChat(self, a2, v2);
  if (isGroupChat)
  {
    if (objc_msgSend_hasLeftGroup(self, v5, v6) & 1) != 0 || (objc_msgSend_isReadOnly(self, v7, v8) & 1) != 0 || (objc_msgSend_sharedInstance(IMChorosMonitor, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v11, v12, v13), v11, (isSatelliteConnectionActive))
    {
      LOBYTE(isGroupChat) = 0;
    }

    else
    {
      LOBYTE(isGroupChat) = objc_msgSend__suppressesMutationsFromLocalDevice(self, v15, v16) ^ 1;
    }
  }

  return isGroupChat;
}

- (BOOL)_supportsGroupMutability
{
  if (!objc_msgSend_isGroupChat(self, a2, v2) || (objc_msgSend_hasLeftGroup(self, v4, v5) & 1) != 0 || (objc_msgSend_isReadOnly(self, v6, v7) & 1) != 0 || (objc_msgSend__suppressesMutationsFromLocalDevice(self, v8, v9) & 1) != 0)
  {
    return 0;
  }

  v13 = objc_msgSend_account(self, v10, v11);
  v16 = objc_msgSend_service(v13, v14, v15);
  v19 = objc_msgSend_supportsMutatingGroupMembers(v16, v17, v18);

  return v19;
}

- (BOOL)_supportsFaceTime
{
  v4 = objc_msgSend_sharedInstance(IMChorosMonitor, a2, v2);
  isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v4, v5, v6);

  if (isSatelliteConnectionActive & 1) != 0 || (objc_msgSend_isStewieSharingChat(self, v8, v9))
  {
    return 0;
  }

  v13 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v10, v11);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v13, v14, v15);

  if (isIntroductionsEnabled)
  {
    if (objc_msgSend_isGroupChat(self, v17, v18) & 1) == 0 && (objc_msgSend_allParticipantsBlocked(self, v19, v20) & 1) != 0 || (objc_msgSend_isReadOnly(self, v19, v20) & 1) != 0 || objc_msgSend_isFiltered(self, v21, v22) == 2 && ((objc_msgSend_isSpamFilteringEnabled(MEMORY[0x1E69A8198], v23, v24) & 1) != 0 || (objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v25, v26)))
    {
      return 0;
    }
  }

  v27 = *MEMORY[0x1E69A7958];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v27);
}

- (BOOL)_supportsSendMenu
{
  if ((objc_msgSend_isReadOnly(self, a2, v2) & 1) == 0)
  {
    v6 = objc_msgSend__supportsAttachments(self, v4, v5);
    if (!v6)
    {
      return v6;
    }

    if ((IMIsRunningInMessagesViewService() & 1) == 0)
    {
      LOBYTE(v6) = IMIsRunningInMessagesTranscriptExtension() ^ 1;
      return v6;
    }
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (BOOL)_supportsExpressiveText
{
  if (objc_msgSend_isReadOnly(self, a2, v2) & 1) != 0 || (objc_msgSend_isBusinessChat(self, v4, v5) & 1) != 0 || (objc_msgSend_isMakoChat(self, v6, v7) & 1) != 0 || (objc_msgSend_isAppleChat(self, v8, v9) & 1) != 0 || (objc_msgSend_isStewieChat(self, v10, v11) & 1) != 0 || (objc_msgSend_isStewieEmergencyChat(self, v12, v13) & 1) != 0 || (objc_msgSend_isStewieSharingChat(self, v14, v15))
  {
    return 0;
  }

  v17 = *MEMORY[0x1E69A7A58];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v17);
}

- (BOOL)_supportsTranscriptBackgrounds
{
  if (objc_msgSend_hasLeftGroup(self, a2, v2) & 1) != 0 || (objc_msgSend_isReadOnly(self, v4, v5) & 1) != 0 || (objc_msgSend_isBusinessChat(self, v6, v7) & 1) != 0 || (objc_msgSend_isMakoChat(self, v8, v9) & 1) != 0 || (objc_msgSend_isAppleChat(self, v10, v11) & 1) != 0 || (objc_msgSend_isStewieChat(self, v12, v13) & 1) != 0 || (objc_msgSend_isStewieEmergencyChat(self, v14, v15) & 1) != 0 || (objc_msgSend_isStewieSharingChat(self, v16, v17))
  {
    return 0;
  }

  v19 = *MEMORY[0x1E69A7A60];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v19);
}

- (BOOL)_supportsFocusMode
{
  if (objc_msgSend_chatStyle(self, a2, v2) != 45)
  {
    return 0;
  }

  if (objc_msgSend_isReadOnly(self, v4, v5))
  {
    return 0;
  }

  if (objc_msgSend_isBusinessChat(self, v6, v7))
  {
    return 0;
  }

  if (objc_msgSend_isMakoChat(self, v8, v9))
  {
    return 0;
  }

  if (objc_msgSend_isAppleChat(self, v10, v11))
  {
    return 0;
  }

  if (objc_msgSend_isStewieChat(self, v12, v13))
  {
    return 0;
  }

  if (objc_msgSend_isStewieEmergencyChat(self, v14, v15))
  {
    return 0;
  }

  if (objc_msgSend_isStewieSharingChat(self, v16, v17))
  {
    return 0;
  }

  v20 = objc_msgSend_sharedInstance(IMChorosMonitor, v18, v19);
  isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v20, v21, v22);

  if (isSatelliteConnectionActive)
  {
    return 0;
  }

  v25 = *MEMORY[0x1E69A7960];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v25);
}

- (BOOL)_supportsShareLocation
{
  if (objc_msgSend_hasLeftGroup(self, a2, v2) & 1) != 0 || (objc_msgSend_isReadOnly(self, v4, v5) & 1) != 0 || (objc_msgSend__isiMessageLiteServiceOrInCompatibleMode(self, v6, v7))
  {
    return 0;
  }

  else
  {
    return objc_msgSend__isSMSSatelliteService(self, v8, v9) ^ 1;
  }
}

- (BOOL)_supportsSimSwitch
{
  if (objc_msgSend_isReadOnly(self, a2, v2) & 1) != 0 || (objc_msgSend_hasLeftGroup(self, v4, v5))
  {
    v8 = 0;
  }

  else if (objc_msgSend_isGroupChat(self, v6, v7))
  {
    v12 = objc_msgSend_sharedInstance(IMChorosMonitor, v10, v11);
    isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v12, v13, v14);

    v8 = isSatelliteConnectionActive ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (BOOL)_supportsAlternativeCommunicationActions
{
  if (objc_msgSend__isiMessageLiteServiceOrInCompatibleMode(self, a2, v2) & 1) != 0 || (objc_msgSend__isSMSSatelliteService(self, v4, v5))
  {
    v8 = 0;
  }

  else if (objc_msgSend_isGroupChat(self, v6, v7))
  {
    v12 = objc_msgSend_sharedInstance(IMChorosMonitor, v10, v11);
    isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v12, v13, v14);

    v8 = isSatelliteConnectionActive ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (BOOL)_supportsAttachments
{
  v4 = objc_msgSend_sharedInstance(IMChorosMonitor, a2, v2);
  isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v4, v5, v6);

  if (isSatelliteConnectionActive)
  {
    return 0;
  }

  v9 = *MEMORY[0x1E69A78F0];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v9);
}

- (BOOL)_supportsMultiPart
{
  v3 = objc_msgSend_account(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);
  v8 = objc_msgSend_supportsCapability_(v6, v7, *MEMORY[0x1E69A79B8]);

  return v8;
}

- (BOOL)_supportsStickers
{
  if (objc_msgSend_isBusinessChat(self, a2, v2))
  {
    return 0;
  }

  if (objc_msgSend_isGroupChat(self, v4, v5))
  {
    v8 = objc_msgSend_sharedInstance(IMChorosMonitor, v6, v7);
    isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v8, v9, v10);

    if (isSatelliteConnectionActive)
    {
      return 0;
    }
  }

  if (objc_msgSend_isStewieChat(self, v6, v7) & 1) != 0 || (objc_msgSend_isStewieEmergencyChat(self, v12, v13) & 1) != 0 || (objc_msgSend_isStewieSharingChat(self, v14, v15) & 1) != 0 || (objc_msgSend_isStewieRoadsideChat(self, v16, v17))
  {
    return 0;
  }

  v19 = *MEMORY[0x1E69A7A50];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v19);
}

- (BOOL)_supportsMessageEffects
{
  if (objc_msgSend_isBusinessChat(self, a2, v2) & 1) != 0 || (objc_msgSend_isStewieChat(self, v4, v5))
  {
    return 0;
  }

  else
  {
    return objc_msgSend__isSMSSatelliteService(self, v6, v7) ^ 1;
  }
}

- (BOOL)_supportsTapbacks
{
  if (objc_msgSend_isStewieChat(self, a2, v2) & 1) != 0 || (objc_msgSend_isStewieEmergencyChat(self, v4, v5))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_isStewieSharingChat(self, v6, v7) ^ 1;
  }
}

- (BOOL)_supportsSendLater
{
  if (objc_msgSend_isBusinessChat(self, a2, v2) & 1) != 0 || (objc_msgSend_isMakoChat(self, v4, v5) & 1) != 0 || (objc_msgSend_isAppleChat(self, v6, v7) & 1) != 0 || (objc_msgSend_isStewieChat(self, v8, v9) & 1) != 0 || (objc_msgSend_isStewieEmergencyChat(self, v10, v11) & 1) != 0 || (objc_msgSend_isStewieSharingChat(self, v12, v13))
  {
    return 0;
  }

  v15 = *MEMORY[0x1E69A7A38];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v15);
}

- (BOOL)_supportsInlineAdaptiveImageGlyphs
{
  v4 = objc_msgSend__serviceForCapabilityCheck(self, a2, v2);
  if (!objc_msgSend_supportsCapability_(v4, v5, *MEMORY[0x1E69A7988]) || !objc_msgSend__supportsAttachments(self, v6, v7) || (objc_msgSend_isBusinessChat(self, v8, v9) & 1) != 0 || (objc_msgSend_isMakoChat(self, v10, v11) & 1) != 0 || (objc_msgSend_isAppleChat(self, v12, v13) & 1) != 0 || (objc_msgSend_isStewieChat(self, v14, v15) & 1) != 0 || (objc_msgSend_isStewieEmergencyChat(self, v16, v17) & 1) != 0)
  {
    LOBYTE(v20) = 0;
  }

  else
  {
    v20 = objc_msgSend_isStewieSharingChat(self, v18, v19) ^ 1;
  }

  return v20;
}

- (BOOL)_supportsAutomaticTranslation
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isAutomaticIncomingTranslationEnabled = objc_msgSend_isAutomaticIncomingTranslationEnabled(v4, v5, v6);

  if (!isAutomaticIncomingTranslationEnabled || (objc_msgSend_isBusinessChat(self, v8, v9) & 1) != 0 || (objc_msgSend_isMakoChat(self, v10, v11) & 1) != 0 || (objc_msgSend_isAppleChat(self, v12, v13) & 1) != 0 || (objc_msgSend_isStewieChat(self, v14, v15) & 1) != 0 || (objc_msgSend_isStewieEmergencyChat(self, v16, v17) & 1) != 0 || (objc_msgSend_isStewieSharingChat(self, v18, v19) & 1) != 0)
  {
    return 0;
  }

  v21 = *MEMORY[0x1E69A7910];

  return MEMORY[0x1EEE66B58](self, sel__serviceCapabilityEnabled_, v21);
}

- (BOOL)_supportsPolls
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isPollsEnabled = objc_msgSend_isPollsEnabled(v4, v5, v6);

  if (!isPollsEnabled || (objc_msgSend_isBusinessChat(self, v8, v9) & 1) != 0 || (objc_msgSend_isMakoChat(self, v10, v11) & 1) != 0 || (objc_msgSend_isAppleChat(self, v12, v13) & 1) != 0 || (objc_msgSend_isStewieChat(self, v14, v15) & 1) != 0 || (objc_msgSend_isStewieEmergencyChat(self, v16, v17) & 1) != 0 || (objc_msgSend_isStewieSharingChat(self, v18, v19) & 1) != 0)
  {
    return 0;
  }

  v23 = objc_msgSend__serviceForCapabilityCheck(self, v20, v21);
  v25 = objc_msgSend_supportsCapability_(v23, v24, *MEMORY[0x1E69A79F8]);

  return v25;
}

- (void)_updateHybridGroupStateWithPerParticipantIDSStatus:(id)status
{
  v14 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v7 = objc_msgSend__uncachedHybridGroupStatusWithIDSQueryResults_(self, v5, statusCopy);
  if (v7)
  {
    objc_msgSend_setHybridGroupState_(self, v6, 2);
  }

  else
  {
    objc_msgSend_setHybridGroupState_(self, v6, 1);
  }

  objc_msgSend__updateLastKnownHybridState_(self, v8, v7);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13[0] = 67109120;
      v13[1] = objc_msgSend_hybridGroupState(self, v10, v11);
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Updating hybrid group state to %d using provided IDS statuses", v13, 8u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateHybridGroupStateWithReachabilityResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v7 = objc_msgSend__uncachedHybridGroupStatusWithReachabilityResult_(self, v5, resultCopy);
  if (v7)
  {
    objc_msgSend_setHybridGroupState_(self, v6, 2);
  }

  else
  {
    objc_msgSend_setHybridGroupState_(self, v6, 1);
  }

  objc_msgSend__updateLastKnownHybridState_(self, v8, v7);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13[0] = 67109120;
      v13[1] = objc_msgSend_hybridGroupState(self, v10, v11);
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Updating hybrid group state to %d using provided IDS statuses", v13, 8u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_suppressesMutationsFromLocalDevice
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isRelayGroupMutationEnabled = objc_msgSend_isRelayGroupMutationEnabled(v4, v5, v6);

  if (isRelayGroupMutationEnabled)
  {
    return 0;
  }

  v10 = objc_msgSend_account(self, v8, v9);
  v13 = objc_msgSend_service(v10, v11, v12);
  v16 = objc_msgSend_rcsService(IMService, v14, v15);

  return v13 == v16 && !IMSharedHelperRetrieveSimDetailsFromTelephony();
}

- (BOOL)mapsToTUConversation:(id)conversation
{
  v74 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (objc_msgSend_chatStyle(self, v5, v6) == 43)
  {
    v9 = objc_msgSend_groupID(self, v7, v8);
    v12 = objc_msgSend_messagesGroupUUID(conversationCopy, v10, v11);
    v15 = objc_msgSend_UUIDString(v12, v13, v14);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v16, v15);

    if (isEqualToString)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v21 = objc_msgSend_chatIdentifier(self, v19, v20);
          v24 = objc_msgSend_messagesGroupUUID(conversationCopy, v22, v23);
          v27 = objc_msgSend_UUIDString(v24, v25, v26);
          v30 = objc_msgSend_groupID(self, v28, v29);
          v68 = 138412802;
          v69 = v21;
          v70 = 2112;
          v71 = v27;
          v72 = 2112;
          v73 = v30;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "We mapped a chat %@ to a TUConversation with messagesGroupUUID %@ for chat groupID %@", &v68, 0x20u);
        }
      }

      LOBYTE(v31) = 1;
      goto LABEL_19;
    }

LABEL_16:
    LOBYTE(v31) = 0;
    goto LABEL_19;
  }

  v32 = objc_msgSend_participants(self, v7, v8);
  v35 = objc_msgSend_count(v32, v33, v34);

  if (v35 != 1)
  {
    goto LABEL_16;
  }

  v38 = objc_msgSend_remoteMembers(conversationCopy, v36, v37);
  if (objc_msgSend_count(v38, v39, v40) == 1)
  {
    v43 = objc_msgSend_participants(self, v41, v42);
    v46 = objc_msgSend_firstObject(v43, v44, v45);

    v47 = MEMORY[0x1E69D8C00];
    v50 = objc_msgSend_ID(v46, v48, v49);
    v52 = objc_msgSend_normalizedHandleWithDestinationID_(v47, v51, v50);

    v55 = objc_msgSend_allObjects(v38, v53, v54);
    v58 = objc_msgSend_firstObject(v55, v56, v57);
    v61 = objc_msgSend_handle(v58, v59, v60);

    v31 = TUHandlesAreCanonicallyEqual();
    if (v31 && IMOSLoggingEnabled())
    {
      v62 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v65 = objc_msgSend_chatIdentifier(self, v63, v64);
        v68 = 138412546;
        v69 = v65;
        v70 = 2112;
        v71 = conversationCopy;
        _os_log_impl(&dword_1A823F000, v62, OS_LOG_TYPE_INFO, "We mapped a 1x1 chat %@ to a TUConversation: %@", &v68, 0x16u);
      }
    }
  }

  else
  {
    LOBYTE(v31) = 0;
  }

LABEL_19:
  v66 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)addHandlesToGroupFaceTimeChatIfRegistered:(id)registered
{
  registeredCopy = registered;
  v8 = objc_msgSend_conversation(self, v5, v6);
  if (v8)
  {
    v9 = objc_msgSend___imArrayByApplyingBlock_(registeredCopy, v7, &unk_1F1B6DBA0);
    v10 = MEMORY[0x1E69A80B0];
    v11 = *MEMORY[0x1E69A47F8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A8272E6C;
    v14[3] = &unk_1E78100B8;
    v15 = v8;
    objc_msgSend_refreshIDStatusForDestinations_service_listenerID_queue_completionBlock_(v10, v12, v9, v11, @"IMChat+TelephonyUtilities", MEMORY[0x1E69E96A0], v14);
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
      *v13 = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "No paired Group FaceTime conversation to keep in sync", v13, 2u);
    }
  }

LABEL_4:
}

- (id)conversationWithUUID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = objc_msgSend_sharedRegistry(IMChatRegistry, v4, v5, 0);
  v9 = objc_msgSend_conversationManager(v6, v7, v8);
  v12 = objc_msgSend_activeConversations(v9, v10, v11);

  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v25, v29, 16);
  if (v16)
  {
    v17 = *v26;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = objc_msgSend_UUID(v19, v14, v15);
        isEqual = objc_msgSend_isEqual_(v20, v21, dCopy);

        if (isEqual)
        {
          v16 = v19;
          goto LABEL_11;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v25, v29, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v23 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)joinExistingTUConversationWithUUID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = objc_msgSend_conversationWithUUID_(self, v5, dCopy);
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Found conversation %@", &v11, 0xCu);
      }
    }

    objc_msgSend_joinExistingConversation_(self, v7, v6);
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DEFC8(dCopy, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)joinExistingTUConversation
{
  v5 = objc_msgSend_conversation(self, a2, v2);
  objc_msgSend_joinExistingConversation_(self, v4, v5);
}

- (void)joinExistingConversation:(id)conversation
{
  v22 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMDeviceIsGreenTea())
  {
    v6 = objc_msgSend_faceTimeShowInCallUIURL(MEMORY[0x1E695DFF8], v4, v5);
    TUOpenURL();
  }

  else
  {
    v7 = objc_msgSend_conversationIsVideoCall_(IMFaceTimeUtilities, v4, conversationCopy);
    v10 = objc_msgSend_platformSupportsStagingArea(IMFaceTimeUtilities, v8, v9) & v7;
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = objc_msgSend_UUID(conversationCopy, v13, v14);
        v16 = v15;
        v17 = @"NO";
        if (v7)
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        *v20 = 138412802;
        *&v20[4] = v15;
        *&v20[14] = v18;
        *&v20[12] = 2112;
        if (v10)
        {
          v17 = @"YES";
        }

        *&v20[22] = 2112;
        v21 = v17;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Join TUConversation UUID: %@, isVideoCall: %@, wantsStagingArea: %@", v20, 0x20u);
      }
    }

    objc_msgSend_joinExistingConversationForTUCoversation_videoEnabled_wantsStagingArea_(IMFaceTimeUtilities, v11, conversationCopy, v7 & 1, v10, *v20, *&v20[16]);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)initiateTUConversationWithScreenShareType:(unint64_t)type
{
  v31 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v29 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] We want to initiate a TUConversation withScreenShareType %ld", &v29, 0xCu);
    }
  }

  if (!objc_msgSend_joinState(self, v5, v6))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] Bailing on initiating a call because we're no longer in the chat", &v29, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  v10 = objc_msgSend_participants(self, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12);

  if (v13 != 1)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v29 = 134217984;
      typeCopy = v13;
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "[IMChat+TelephonyUtilites] Unsupported number of participants for TUConversationWithScreenShare: %lu. Only 1 is allowed.", &v29, 0xCu);
    }

    goto LABEL_15;
  }

  v16 = objc_msgSend_participants(self, v14, v15);
  v19 = objc_msgSend_lastAddressedHandleID(self, v17, v18);
  v22 = objc_msgSend_groupID(self, v20, v21);
  v25 = objc_msgSend_displayName(self, v23, v24);
  objc_msgSend_initiateTUConversationForParticipants_senderAddress_videoEnabled_groupID_displayName_screenShareType_(IMFaceTimeUtilities, v26, v16, v19, 0, v22, v25, type);

LABEL_16:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)leaveCurrentTUCall
{
  v4 = objc_msgSend_currentTUCall(self, a2, v2);
  objc_msgSend_leaveTUCall_(IMFaceTimeUtilities, v3, v4);
}

- (id)callDurationStringForTuCall
{
  v3 = objc_msgSend_currentTUCall(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_callDurationString(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)currentTUCall
{
  v68 = *MEMORY[0x1E69E9840];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v4 = 0x1E69D8000uLL;
  v5 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], a2, v2);
  v8 = objc_msgSend_currentAudioAndVideoCalls(v5, v6, v7);

  obj = v8;
  v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v63, v67, 16);
  v12 = 0;
  if (v62)
  {
    v61 = *v64;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v64 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v63 + 1) + 8 * i);
        v15 = objc_msgSend_sharedInstance(*(v4 + 2648), v10, v11);
        v17 = objc_msgSend_activeConversationForCall_(v15, v16, v14);

        v20 = objc_msgSend_UUID(v17, v18, v19);
        v23 = objc_msgSend_conversation(self, v21, v22);
        v26 = objc_msgSend_UUID(v23, v24, v25);
        isEqual = objc_msgSend_isEqual_(v20, v27, v26);

        if (isEqual)
        {
          v31 = v14;
        }

        else
        {
          v32 = objc_msgSend_participants(self, v29, v30);
          v35 = objc_msgSend_count(v32, v33, v34);

          if (v35 != 1)
          {
            goto LABEL_13;
          }

          v38 = objc_msgSend_participants(self, v36, v37);
          v41 = objc_msgSend_firstObject(v38, v39, v40);

          v42 = MEMORY[0x1E69D8C00];
          v45 = objc_msgSend_ID(v41, v43, v44);
          v47 = objc_msgSend_normalizedHandleWithDestinationID_(v42, v46, v45);

          v50 = objc_msgSend_remoteParticipantHandles(v14, v48, v49);
          v53 = objc_msgSend_allObjects(v50, v51, v52);
          v56 = objc_msgSend_firstObject(v53, v54, v55);

          if (TUHandlesAreCanonicallyEqual())
          {
            v57 = v14;

            v12 = v57;
          }

          v31 = v12;

          v12 = v41;
          v4 = 0x1E69D8000;
        }

        v12 = v31;
LABEL_13:
      }

      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v63, v67, 16);
    }

    while (v62);
  }

  v58 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)activeParticipantsForTUConversation
{
  v3 = objc_msgSend_conversation(self, a2, v2);
  v6 = objc_msgSend_activeRemoteParticipants(v3, v4, v5);

  return v6;
}

- (id)remoteMembersForTUConversation
{
  v3 = objc_msgSend_conversation(self, a2, v2);
  v6 = objc_msgSend_remoteMembers(v3, v4, v5);

  return v6;
}

+ (id)watermarkComparator
{
  if (qword_1EB2EA1A0 != -1)
  {
    sub_1A84DF17C();
  }

  v2 = _Block_copy(qword_1EB2EA198);

  return v2;
}

- (id)_storedWatermarkMessageID
{
  v3 = IMWatermarkMessageIDCache();
  v6 = objc_msgSend_guid(self, v4, v5);
  v8 = objc_msgSend_objectForKey_(v3, v7, v6);

  if (!v8)
  {
    v10 = objc_msgSend_valueForChatProperty_(self, v9, @"IMChatWatermarkMessageID");
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = objc_msgSend_valueForChatProperty_(self, v11, @"CKChatWatermarkMessageID");
      if (v8)
      {
        objc_msgSend_setValue_forChatProperty_(self, v12, 0, @"CKChatWatermarkMessageID");
      }
    }
  }

  return v8;
}

- (int64_t)watermarkMessageID
{
  v6 = objc_msgSend__storedWatermarkMessageID(self, a2, v2);
  if (!v6)
  {
    v7 = MEMORY[0x1E696AD98];
    FinishedMessageID = objc_msgSend_lastFinishedMessageID(self, v4, v5);
    v6 = objc_msgSend_numberWithLongLong_(v7, v9, FinishedMessageID);
  }

  if (objc_msgSend_longLongValue(v6, v4, v5))
  {
    v12 = IMWatermarkMessageIDCache();
    v15 = objc_msgSend_guid(self, v13, v14);
    objc_msgSend_setObject_forKey_(v12, v16, v6, v15);
  }

  v17 = objc_msgSend_longLongValue(v6, v10, v11);

  return v17;
}

- (NSDate)watermarkDate
{
  v3 = sub_1A8282194();
  v6 = objc_msgSend_guid(self, v4, v5);
  v8 = objc_msgSend_objectForKey_(v3, v7, v6);

  if (!v8)
  {
    v10 = objc_msgSend_valueForChatProperty_(self, v9, @"IMChatWatermarkDate");
    if (v10)
    {
      v8 = v10;
      goto LABEL_13;
    }

    v12 = objc_msgSend_valueForChatProperty_(self, v11, @"CKChatWatermarkTime");
    v15 = v12;
    if (v12)
    {
      objc_msgSend_doubleValue(v12, v13, v14);
      if (v18 > 0.0)
      {
        v19 = MEMORY[0x1E695DF00];
        objc_msgSend_doubleValue(v15, v16, v17);
        v8 = objc_msgSend_dateWithTimeIntervalSince1970_(v19, v20, v21);
        objc_msgSend_setValue_forChatProperty_(self, v22, 0, @"CKChatWatermarkTime");
        if (v8)
        {
          v23 = sub_1A8282194();
          v26 = objc_msgSend_guid(self, v24, v25);
          objc_msgSend_setObject_forKey_(v23, v27, v8, v26);

LABEL_12:
          goto LABEL_13;
        }
      }
    }

    else
    {
      v8 = objc_msgSend_lastFinishedMessageDate(self, v13, v14);
      if (v8)
      {
        goto LABEL_12;
      }
    }

    if (objc_msgSend_lastMessageTimeStampOnLoad(self, v16, v17) < 1)
    {
      v8 = 0;
    }

    else
    {
      v30 = MEMORY[0x1E695DF00];
      MessageTimeStampOnLoad = objc_msgSend_lastMessageTimeStampOnLoad(self, v28, v29);
      v8 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(v30, v32, v33, MessageTimeStampOnLoad);
    }

    goto LABEL_12;
  }

LABEL_13:

  return v8;
}

- (void)updateWatermarks
{
  v30 = objc_msgSend_guid(self, a2, v2);
  v6 = objc_msgSend__storedWatermarkMessageID(self, v4, v5);
  v9 = objc_msgSend_longLongValue(v6, v7, v8);

  FinishedMessageID = v9;
  if (v9 <= objc_msgSend_lastFinishedMessageID(self, v10, v11))
  {
    FinishedMessageID = objc_msgSend_lastFinishedMessageID(self, v12, v13);
  }

  if (v30 && FinishedMessageID >= 1)
  {
    v15 = IMWatermarkMessageIDCache();
    v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v16, FinishedMessageID);
    objc_msgSend_setObject_forKey_(v15, v18, v17, v30);
  }

  v19 = objc_msgSend_watermarkDate(self, v12, v13);
  v22 = objc_msgSend_lastFinishedMessageDate(self, v20, v21);
  v24 = v22;
  if (v19)
  {
    v25 = objc_msgSend_laterDate_(v19, v23, v22);
  }

  else
  {
    v25 = v22;
  }

  v27 = v25;
  if (v30 && v25)
  {
    v28 = sub_1A8282194();
    objc_msgSend_setObject_forKey_(v28, v29, v27, v30);
  }

  if (FinishedMessageID != v9 || v19 != v27 && (objc_msgSend_isEqualToDate_(v19, v26, v27) & 1) == 0)
  {
    objc_msgSend__postNotification_userInfo_(self, v26, @"IMChatWatermarkDidUpdateNotification", 0);
  }
}

- (void)saveWatermark
{
  v17 = objc_msgSend_guid(self, a2, v2);
  v6 = objc_msgSend_watermarkMessageID(self, v4, v5);
  if (v6 >= 1)
  {
    v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v6);
    objc_msgSend_setValue_forChatProperty_(self, v10, v9, @"IMChatWatermarkMessageID");

    if (v17)
    {
      v11 = IMWatermarkMessageIDCache();
      objc_msgSend_removeObjectForKey_(v11, v12, v17);
    }
  }

  v14 = objc_msgSend_watermarkDate(self, v7, v8);
  if (v14)
  {
    objc_msgSend_setValue_forChatProperty_(self, v13, v14, @"IMChatWatermarkDate");
    if (v17)
    {
      v15 = sub_1A8282194();
      objc_msgSend_removeObjectForKey_(v15, v16, v17);
    }
  }
}

- (BOOL)shouldBeAllowListed
{
  if (objc_msgSend_chatStyle(self, a2, v2) == 45)
  {
    v6 = objc_msgSend_participants(self, v4, v5);
    v9 = objc_msgSend_count(v6, v7, v8);

    if (v9 == 1)
    {
      v10 = objc_msgSend_participants(self, v4, v5);
      v13 = objc_msgSend_firstObject(v10, v11, v12);

      v16 = objc_msgSend_normalizedID(v13, v14, v15);
      if (IMStringIsEmail() && ((objc_msgSend_hasSuffix_(v16, v17, @"@apple.com") & 1) != 0 || objc_msgSend_hasSuffix_(v16, v18, @".apple.com")))
      {

        return 1;
      }
    }
  }

  if (objc_msgSend_isAppleChat(self, v4, v5))
  {
    return 1;
  }

  return objc_msgSend_isMakoChat(self, v19, v20);
}

- (BOOL)_hasJustSentAMessage
{
  v3 = objc_msgSend_lastFinishedMessage(self, a2, v2);
  v6 = v3;
  v9 = v3 && objc_msgSend_isFromMe(v3, v4, v5) && objc_msgSend_messageID(v6, v7, v8) == 0;

  return v9;
}

- (int64_t)compareChatByDate:(id)date
{
  dateCopy = date;
  v7 = objc_msgSend_lastFinishedMessageDate(dateCopy, v5, v6);
  v10 = objc_msgSend_lastFinishedMessageDate(self, v8, v9);
  v12 = objc_msgSend__compareChat_withDate_withDate_(self, v11, dateCopy, v7, v10);

  return v12;
}

- (int64_t)compareChatByLastFinishedMessageDate:(id)date
{
  dateCopy = date;
  v6 = objc_msgSend__lastFinishedMessageDateForChat_(self, v5, dateCopy);
  v8 = objc_msgSend__lastFinishedMessageDateForChat_(self, v7, self);
  v10 = objc_msgSend__compareChat_withDate_withDate_(self, v9, dateCopy, v6, v8);

  return v10;
}

- (id)_lastFinishedMessageDateForChat:(id)chat
{
  chatCopy = chat;
  v6 = objc_msgSend_lastTUConversationCreatedDate(chatCopy, v4, v5);
  v9 = objc_msgSend_lastFinishedMessageDate(chatCopy, v7, v8);
  v12 = objc_msgSend_lastScheduledMessageCreatedDate(chatCopy, v10, v11);

  if (v6)
  {
    v14 = objc_msgSend_laterDate_(v6, v13, v9);
  }

  else
  {
    v14 = v9;
  }

  v16 = v14;
  if (v12)
  {
    v17 = objc_msgSend_laterDate_(v12, v15, v14);
  }

  else
  {
    v17 = v14;
  }

  v18 = v17;

  return v18;
}

- (int64_t)_compareChat:(id)chat withDate:(id)date withDate:(id)withDate
{
  chatCopy = chat;
  v12 = objc_msgSend_compare_(date, v9, withDate);
  if (!v12)
  {
    FinishedMessageID = objc_msgSend_lastFinishedMessageID(self, v10, v11);
    v16 = objc_msgSend_lastFinishedMessageID(chatCopy, v14, v15);
    v17 = -1;
    if (v16 >= FinishedMessageID)
    {
      v17 = 1;
    }

    if (v16 == FinishedMessageID)
    {
      v12 = 0;
    }

    else
    {
      v12 = v17;
    }
  }

  return v12;
}

- (NSArray)participantDNDContactHandles
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_participantsWithState_(self, a2, 16);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v2;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v19, v23, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = objc_msgSend_dndContactHandle(*(*(&v19 + 1) + 8 * i), v7, v8, v19);
        objc_msgSend_addObject_(v3, v13, v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v19, v23, 16);
    }

    while (v9);
  }

  v16 = objc_msgSend_copy(v3, v14, v15);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (Class)_NPSManagerClass
{
  if (qword_1EB2EA1B0 != -1)
  {
    sub_1A84DF190();
  }

  v3 = qword_1EB2EA1A8;

  return v3;
}

+ (void)cleanWatermarkCache
{
  v2 = IMWatermarkMessageIDCache();
  objc_msgSend_removeAllObjects(v2, v3, v4);

  v7 = sub_1A8282194();
  objc_msgSend_removeAllObjects(v7, v5, v6);
}

- (void)createIMChatItemForTransientAttachmentWithAssetUUID:(id)d parentChatItemGUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v17 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v12 = objc_msgSend_remoteDaemon(v17, v10, v11);
  v15 = objc_msgSend_guid(self, v13, v14);
  objc_msgSend_createItemForPHAssetWithUUID_parentChatItemGUID_chatGUID_(v12, v16, dCopy, iDCopy, v15);
}

- (id)_chatItemLogSummaryForChatItems:(id)items withUpdates:(id)updates
{
  itemsCopy = items;
  updatesCopy = updates;
  v10 = objc_msgSend_count(itemsCopy, v8, v9);
  v12 = objc_msgSend__loggingRangeForUpdates_chatItemsCount_(self, v11, updatesCopy, v10);
  v14 = v13;

  if (v12 >= objc_msgSend_count(itemsCopy, v15, v16) || v12 + v14 >= objc_msgSend_count(itemsCopy, v17, v18))
  {
    v22 = 0;
  }

  else
  {
    v20 = objc_msgSend_subarrayWithRange_(itemsCopy, v19, v12, v14);
    v22 = objc_msgSend__chatItemLogSummaryForChatItems_withIndex_(self, v21, v20, v12);
  }

  return v22;
}

- (id)_chatItemLogSummaryForChatItems:(id)items withIndex:(int64_t)index
{
  v62 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateStyle_(v7, v8, 1);
  v54 = v7;
  objc_msgSend_setTimeStyle_(v7, v9, 1);
  v12 = objc_msgSend_string(MEMORY[0x1E696AD60], v10, v11);
  v13 = MEMORY[0x1E696AEC0];
  v16 = objc_msgSend_guid(self, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(v13, v17, @"chat: %@\n", v16);

  v53 = v18;
  objc_msgSend_appendString_(v12, v19, v18);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = itemsCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v57, v61, 16);
  if (v21)
  {
    v24 = v21;
    v56 = *v58;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v58 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v57 + 1) + 8 * i);
        v27 = objc_msgSend__item(v26, v22, v23);
        v30 = objc_msgSend_isFromMe(v27, v28, v29);
        v31 = @" ";
        if (v30)
        {
          v31 = @"\t";
        }

        v32 = v31;

        v33 = MEMORY[0x1E696AEC0];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v38 = objc_msgSend__item(v26, v36, v37);
        v41 = objc_msgSend_guid(v38, v39, v40);
        v43 = objc_msgSend_stringWithFormat_(v33, v42, @"\t%3lu:%@<%@ : %@> ", index, v32, v35, v41);

        objc_msgSend_appendString_(v12, v44, v43);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = objc_msgSend_date(v26, v45, v46);
          v49 = objc_msgSend_stringFromDate_(v54, v48, v47);

          objc_msgSend_appendString_(v12, v50, v49);
        }

        objc_msgSend_appendString_(v12, v45, @"\n");
        ++index;
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v57, v61, 16);
    }

    while (v24);
  }

  v51 = *MEMORY[0x1E69E9840];

  return v12;
}

- (_NSRange)_loggingRangeForUpdates:(id)updates chatItemsCount:(int64_t)count
{
  v53 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(updatesCopy, v6, &v48, v52, 16);
  if (v7)
  {
    v10 = v7;
    countCopy3 = 0;
    v12 = *v49;
    countCopy4 = count;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(updatesCopy);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        Index = objc_msgSend_lastIndex(v15, v8, v9);
        v19 = objc_msgSend_count(v15, v17, v18);
        countCopy2 = count;
        if (v19 + Index <= count)
        {
          v23 = objc_msgSend_lastIndex(v15, v20, v21);
          countCopy2 = objc_msgSend_count(v15, v24, v25) + v23;
        }

        if (countCopy3 <= countCopy2)
        {
          v26 = objc_msgSend_lastIndex(v15, v20, v21);
          countCopy3 = count;
          if (objc_msgSend_count(v15, v27, v28) + v26 <= count)
          {
            v29 = objc_msgSend_lastIndex(v15, v20, v21);
            countCopy3 = objc_msgSend_count(v15, v30, v31) + v29;
          }
        }

        objc_msgSend_firstIndex(v15, v20, v21);
        if (countCopy4 >= objc_msgSend_firstIndex(v15, v32, v33))
        {
          objc_msgSend_firstIndex(v15, v8, v9);
          countCopy4 = objc_msgSend_firstIndex(v15, v34, v35);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(updatesCopy, v8, &v48, v52, 16);
    }

    while (v10);
  }

  else
  {
    countCopy3 = 0;
    countCopy4 = count;
  }

  v36 = countCopy3 - countCopy4;
  v37 = count - 1;
  if (countCopy3 - 10 >= count)
  {
    v38 = count - 1;
  }

  else
  {
    v38 = countCopy3 - 10;
  }

  if (v36 == 10)
  {
    v38 = countCopy4;
  }

  v39 = (countCopy3 - 10) & ~((countCopy3 - 10) >> 63);
  if (countCopy3 < v37)
  {
    v39 = countCopy4;
  }

  else
  {
    v37 = countCopy3;
  }

  v40 = v36 <= 9;
  if (v36 <= 9)
  {
    v41 = v37;
  }

  else
  {
    v41 = countCopy3;
  }

  if (v40)
  {
    v42 = v39;
  }

  else
  {
    v42 = v38;
  }

  v43 = (v41 - v42) & ~((v41 - v42) >> 63);
  if (v43 >= 10)
  {
    v44 = 10;
  }

  else
  {
    v44 = v43;
  }

  v45 = *MEMORY[0x1E69E9840];
  v46 = v42;
  v47 = v44;
  result.length = v47;
  result.location = v46;
  return result;
}

- (_NSRange)_loggingRangeForLatestChatItems:(id)items
{
  itemsCopy = items;
  v6 = objc_msgSend_count(itemsCopy, v4, v5);
  v9 = objc_msgSend_count(itemsCopy, v7, v8);

  if (v6 >= 0xB)
  {
    v10 = v9 - 11;
  }

  else
  {
    v10 = 0;
  }

  if (v6 >= 0xB)
  {
    v11 = 10;
  }

  else
  {
    v11 = v9;
  }

  result.length = v11;
  result.location = v10;
  return result;
}

- (IMBrand)brand
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_msgSend_participants(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_msgSend_isBusiness(v10, v5, v6))
        {
          v7 = objc_msgSend_brand(v10, v5, v6);
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v13, v17, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isReplyEnabled
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v4, v5, v6);

  if (isTranscriptSharingEnabled && (objc_msgSend_isStewieSharingChat(self, v8, v9) & 1) != 0 || objc_msgSend_joinState(self, v8, v9) == 4)
  {
    return 0;
  }

  if (objc_msgSend_isBusinessChat(self, v10, v11) && objc_msgSend_isMakoChat(self, v13, v14))
  {
    v15 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x1E69A53F0], v13, 0);
    v17 = objc_msgSend_objectForKey_(v15, v16, @"m-reply-enabled");
    if (v17)
    {
      v20 = v17;
      v21 = objc_msgSend_BOOLValue(v17, v18, v19);

      if (v21)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_9:
  if (!objc_msgSend_isBusinessChat(self, v13, v14) || (objc_msgSend_isChatBot(self, v22, v23) & 1) != 0)
  {
    return 1;
  }

  v26 = MEMORY[0x1E69A8020];

  return objc_msgSend_supportsBusinessChat(v26, v24, v25);
}

- (BOOL)containsActiveBIASession
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isBIAEnabled = objc_msgSend_isBIAEnabled(v4, v5, v6);

  if (!isBIAEnabled)
  {
    return 0;
  }

  v10 = objc_msgSend_allChatProperties(self, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"AMB-BIAContext");
  v15 = objc_msgSend_lastObject(v12, v13, v14);

  v17 = objc_msgSend_valueForKey_(v15, v16, @"userId");
  v20 = objc_msgSend_length(v17, v18, v19) != 0;

  return v20;
}

- (BOOL)hasSentMessageToBusiness
{
  if (!objc_msgSend_isBusinessChat(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_lastSentMessage(self, v4, v5);
  v7 = v6 != 0;

  return v7;
}

- (BOOL)isMapKitBusinessChat
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_chatStyle(self, a2, v2) == 45)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = objc_msgSend_participants(self, v4, v5, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
    if (v10)
    {
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v6);
          }

          if (objc_msgSend_isMapKitBusiness(*(*(&v15 + 1) + 8 * i), v8, v9))
          {
            LOBYTE(v10) = 1;
            goto LABEL_13;
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v15, v19, 16);
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)hasVerifiedBusiness
{
  v43 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isBusinessChat(self, a2, v2))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = objc_msgSend_participants(self, v4, v5, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v34, v42, 16);
    if (v10)
    {
      v11 = *v35;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = objc_msgSend_brand(v13, v8, v9);
          isVerified = objc_msgSend_isVerified(v14, v15, v16);

          if (isVerified)
          {
            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                v25 = objc_msgSend_displayID(v13, v23, v24);
                *buf = 138412290;
                v39 = v25;
                _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Handle:%@ is verified businesss", buf, 0xCu);
              }
            }

            LODWORD(v10) = 1;
            goto LABEL_21;
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v34, v42, 16);
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v29 = objc_msgSend_guid(self, v27, v28);
        v30 = v29;
        v31 = @"NO";
        if (v10)
        {
          v31 = @"YES";
        }

        *buf = 138412546;
        v39 = v29;
        v40 = 2112;
        v41 = v31;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Chat ID: %@ has verified business:%@", buf, 0x16u);
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
        v21 = objc_msgSend_guid(self, v19, v20);
        *buf = 138412290;
        v39 = v21;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Chat with guid:%@ is not business conversation. Return NO", buf, 0xCu);
      }
    }

    LOBYTE(v10) = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isMakoChat
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_participants(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_isMako(*(*(&v12 + 1) + 8 * i), v5, v6))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isAppleChat
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_participants(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_isApple(*(*(&v12 + 1) + 8 * i), v5, v6))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)closeSession
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Messages for Business close session for chat: %@", &v6, 0xCu);
    }
  }

  objc_msgSend__closeSession_(self, v3, 1);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)leaveConversation
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Messages for Business leave conversation and close session for chat: %@", &v6, 0xCu);
    }
  }

  objc_msgSend__closeSession_(self, v3, 0);
  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)cachedBusinessName
{
  v4 = objc_msgSend_brand(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_businessHandle(self, v5, v6);
    v10 = objc_msgSend_normalizedID(v7, v8, v9);

    v13 = objc_msgSend_sharedInstance(IMHandleRegistrar, v11, v12);
    v15 = objc_msgSend_businessNameForUID_blockFetch_updateHandler_(v13, v14, v10, 1, 0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)sendUpdatedCollaborationMetadata:(id)metadata forMessageGUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dCopy = d;
  v10 = dCopy;
  if (metadataCopy && objc_msgSend_length(dCopy, v8, v9))
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = metadataCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Sending updated collaboration metadata: %@", &v18, 0xCu);
    }

    v14 = objc_msgSend_sharedRegistry(IMChatRegistry, v12, v13);
    objc_msgSend__chat_sendUpdatedCollaborationMetadata_forMessageGUID_(v14, v15, self, metadataCopy, v10);
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 138412546;
      v19 = metadataCopy;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Not sending collaboration metadata since either passed in collaboration metadata:%@ or messageGUID:%@ is nil.", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_existingMessageFromMessagePartGUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_messageGUID(dCopy, v5, v6);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1A8259B30;
  v22 = sub_1A825AEC4;
  v23 = 0;
  v10 = objc_msgSend__items(self, v8, v9);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A82CD044;
  v15[3] = &unk_1E78117B0;
  v11 = v7;
  v16 = v11;
  v17 = &v18;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v10, v12, 2, v15);
  v13 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v13;
}

- (void)_updateExistingMessageWithSyndicationAction:(id)action
{
  v34[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v7 = objc_msgSend_messagePartGUID(actionCopy, v5, v6);
  v9 = objc_msgSend__existingMessageFromMessagePartGUID_(self, v8, v7);

  if (v9)
  {
    v12 = objc_msgSend_message(v9, v10, v11);
    v13 = objc_alloc(MEMORY[0x1E69A8158]);
    v15 = objc_msgSend_initWithSyndicationAction_(v13, v14, actionCopy);
    v18 = objc_msgSend_syndicationRanges(v9, v16, v17);
    v33 = 0;
    v19 = MEMORY[0x1E69A8158];
    v34[0] = v15;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, v34, 1);
    v23 = objc_msgSend_updateMessagesRanges_withMessagePartSyndicationRanges_didUpdate_(v19, v22, v18, v21, &v33);

    if (v33 == 1)
    {
      objc_msgSend__syndicationRanges_(v12, v24, v23);
      v27 = objc_msgSend__imMessageItem(v12, v25, v26);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1A82CD2D8;
      v31[3] = &unk_1E7810140;
      v31[4] = self;
      v32 = v27;
      v28 = v27;
      objc_msgSend__updateChatItemsWithReason_block_(self, v29, @"send highlight", v31);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)localizedUnreadShortcutTitle
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_participants(self, a2, v2);
  v7 = objc_msgSend_unreadMessageCount(self, v5, v6);
  if (objc_msgSend_isGroupChat(self, v8, v9))
  {
    v12 = objc_msgSend_displayName(self, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v4;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v27, v31, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_displayNameForChat_(*(*(&v27 + 1) + 8 * i), v17, self, v27);
        objc_msgSend_addObject_(v13, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v27, v31, 16);
    }

    while (v18);
  }

  v24 = objc_msgSend_unreadSummaryWithUnreadCount_withParticipants_withGroupChatName_(MEMORY[0x1E69A8268], v23, v7, v13, v12);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (NSString)transcriptBackgroundPath
{
  v3 = objc_msgSend_transcriptBackgroundDetails(self, a2, v2);
  v5 = objc_msgSend__stringForKey_(v3, v4, *MEMORY[0x1E69A7D38]);
  if (v5)
  {
    v6 = IMTranscriptBackgroundDirectory();
    v8 = objc_msgSend_URLByAppendingPathComponent_(v6, v7, v5);

    v11 = objc_msgSend_path(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)transcriptBackgroundGUID
{
  v3 = objc_msgSend_transcriptBackgroundDetails(self, a2, v2);
  v5 = objc_msgSend__stringForKey_(v3, v4, *MEMORY[0x1E69A7D38]);

  return v5;
}

- (NSNumber)transcriptBackgroundVersion
{
  v3 = objc_msgSend_transcriptBackgroundDetails(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x1E69A7D40]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)transcriptBackgroundCommSafetyState
{
  v3 = objc_msgSend_transcriptBackgroundDetails(self, a2, v2);
  v5 = objc_msgSend_integerValueForKey_withDefault_(v3, v4, *MEMORY[0x1E69A7D28], 0);

  return v5;
}

- (void)updateTranscriptBackgroundCommSafetyState:(int64_t)state
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_transcriptBackgroundDetails(self, a2, state);
  v8 = objc_msgSend_mutableCopy(v5, v6, v7);
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, state);
  objc_msgSend_setObject_forKey_(v8, v11, v10, *MEMORY[0x1E69A7D28]);

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = objc_msgSend_transcriptBackgroundGUID(self, v15, v16);
      v25 = 138412546;
      v26 = v17;
      v27 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Updating transcript background with id {%@} to commSafetyState={%ld}.", &v25, 0x16u);
    }
  }

  v18 = objc_msgSend_copy(v8, v12, v13);
  objc_msgSend_setValue_forChatProperty_(self, v19, v18, *MEMORY[0x1E69A6CC8]);

  v22 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v20, v21);
  objc_msgSend_postNotificationName_object_userInfo_(v22, v23, @"__kIMChatTranscriptBackgroundChangedNotification", self, 0);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)updateTranscriptBackgroundChannelTransferGUID:(id)d
{
  v5 = objc_msgSend_copy(d, a2, d);
  objc_msgSend_setValue_forChatProperty_(self, v4, v5, *MEMORY[0x1E69A6CC0]);
}

- (IMChatItemRules)chatItemRules
{
  chatItemRules = self->_chatItemRules;
  if (!chatItemRules)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1A84E1104();
    }

    v6 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v5, *MEMORY[0x1E69A5F40], 43, MEMORY[0x1E695E0F8]);
    v9 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v7, v8);
    objc_msgSend_autoBugCaptureWithSubType_errorPayload_(v9, v10, @"chatItemRules", v6);

    chatItemRules = self->_chatItemRules;
  }

  return chatItemRules;
}

- (void)_setupObservation
{
  if (!self->_hasBeenConfigured)
  {
    self->_hasBeenConfigured = 1;
    v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
    objc_msgSend_addObserver_selector_name_object_(v5, v6, self, sel__accountLoggedOut_, @"__kIMAccountLoggedOutNotification", 0);

    v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
    objc_msgSend_addObserver_selector_name_object_(v9, v10, self, sel__daemonDied_, @"__kIMDaemonDidDisconnectNotification", 0);

    v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
    objc_msgSend_addObserver_selector_name_object_(v13, v14, self, sel__daemonAlive_, @"__kIMDaemonDidConnectNotification", 0);

    v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
    objc_msgSend_addObserver_selector_name_object_(v17, v18, self, sel__accountControllerUpdated_, @"__kIMAccountControllerUpdatedNotification", 0);

    v21 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v19, v20);
    objc_msgSend_addObserver_selector_name_object_(v21, v22, self, sel__accountControllerUpdated_, @"__kIMAccountActivatedNotification", 0);

    v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v23, v24);
    objc_msgSend_addObserver_selector_name_object_(v26, v25, self, sel__accountControllerUpdated_, @"__kIMAccountDeactivatedNotification", 0);
  }
}

- (id)_initWithGUID:(id)d account:(id)account style:(unsigned __int8)style roomName:(id)name displayName:(id)displayName lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD items:(id)self0 participants:(id)self1 isFiltered:(int64_t)self2 hasHadSuccessfulQuery:(BOOL)self3 isRecovered:(BOOL)self4 isDeletingIncomingMessages:(BOOL)self5
{
  v157 = *MEMORY[0x1E69E9840];
  dCopy = d;
  accountCopy = account;
  nameCopy = name;
  displayNameCopy = displayName;
  handleCopy = handle;
  iDCopy = iD;
  itemsCopy = items;
  obj = participants;
  v151.receiver = self;
  v151.super_class = IMChat;
  v22 = [(IMItemsController *)&v151 _initWithItems:itemsCopy];
  v24 = v22;
  if (v22)
  {
    objc_msgSend_setIsFiltered_(v22, v23, filtered);
    *(v24 + 73) = 1;
    *(v24 + 72) = 0;
    *(v24 + 75) = 0;
    *(v24 + 80) = 0;
    *(v24 + 58) = query;
    *(v24 + 55) = recovered;
    *(v24 + 56) = messages;
    *(v24 + 65) = 0;
    *(v24 + 66) = 0;
    *(v24 + 70) = 1;
    if (objc_msgSend_length(handleCopy, v25, v26))
    {
      objc_storeStrong((v24 + 96), handle);
    }

    if (objc_msgSend_length(iDCopy, v27, v28))
    {
      objc_storeStrong((v24 + 640), iD);
    }

    *(v24 + 144) = 0;
    v31 = objc_msgSend_chatRegistry(v24, v29, v30);
    objc_msgSend__noteChatInit_(v31, v32, v24);

    v131 = objc_msgSend_chatItemUpdaterLogHandle(IMChat, v33, v34);
    v35 = objc_alloc(MEMORY[0x1E69A81E0]);
    v37 = objc_msgSend_initWithLogHandle_delegate_(v35, v36, v131, v24);
    v38 = *(v24 + 568);
    *(v24 + 568) = v37;

    objc_storeStrong((v24 + 160), displayName);
    objc_storeStrong((v24 + 128), account);
    *(v24 + 48) = style;
    objc_storeStrong((v24 + 152), name);
    v39 = obj;
    v40 = obj;
    if (!obj)
    {
      v40 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v39 = 0;
    }

    v41 = v39 == 0;
    objc_storeStrong((v24 + 136), v40);
    if (v41)
    {
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v43 = *(v24 + 328);
    *(v24 + 328) = Mutable;

    v44 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v45 = *(v24 + 344);
    *(v24 + 344) = v44;

    v46 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    v47 = *(v24 + 112);
    *(v24 + 112) = v46;

    *(v24 + 456) = -1;
    *(v24 + 61) = 0;
    if (!*(v24 + 152) && objc_msgSend_chatStyle(v24, v48, v49) != 45)
    {
      v52 = objc_msgSend_chatRegistry(v24, v50, v51);
      v54 = objc_msgSend_generateUnusedChatIdentifierForGroupChatWithAccount_(v52, v53, accountCopy);
      v55 = *(v24 + 152);
      *(v24 + 152) = v54;
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v56 = itemsCopy;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v147, v156, 16);
    if (v60)
    {
      v61 = *v148;
      while (2)
      {
        for (i = 0; i != v60; i = i + 1)
        {
          if (*v148 != v61)
          {
            objc_enumerationMutation(v56);
          }

          v31 = *(*(&v147 + 1) + 8 * i);
          v65 = objc_msgSend__senderHandle(v31, v58, v59);
          if (v65 && (objc_msgSend_isFromMe(v31, v63, v64) & 1) == 0)
          {
            *(v24 + 61) = objc_msgSend__isInvitation(v31, v66, v67);
            if (!objc_msgSend_count(*(v24 + 136), v68, v69))
            {
              v70 = objc_alloc(MEMORY[0x1E695DEC8]);
              v72 = objc_msgSend_initWithObjects_(v70, v71, v65, 0);
              v73 = *(v24 + 136);
              *(v24 + 136) = v72;
            }

            goto LABEL_26;
          }
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v58, &v147, v156, 16);
        if (v60)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    objc_storeStrong((v24 + 648), *(v24 + 152));
    if (dCopy)
    {
      v76 = IMAnyServiceGUIDFromLegacyChatGUID();
      v77 = v76;
    }

    else
    {
      v77 = objc_msgSend_chatIdentifier(v24, v74, v75);
      v60 = objc_msgSend_service(accountCopy, v78, v79);
      v31 = objc_msgSend_internalName(v60, v80, v81);
      v82 = *(v24 + 48);
      v76 = IMCopyAnyServiceGUIDForChat();
    }

    v83 = v76;
    objc_storeStrong((v24 + 120), v76);
    if (!dCopy)
    {
    }

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v84 = v56;
    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v143, v155, 16);
    if (v86)
    {
      v87 = *v144;
      do
      {
        for (j = 0; j != v86; ++j)
        {
          if (*v144 != v87)
          {
            objc_enumerationMutation(v84);
          }

          v89 = *(*(&v143 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend__configureLocationShareItem_(v24, v90, v89);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isFinished(v89, v91, v92))
          {
            *(v24 + 63) = 1;
          }
        }

        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v91, &v143, v155, 16);
      }

      while (v86);
    }

    if (objc_msgSend_count(obj, v93, v94))
    {
      if (qword_1ED7679C0 != -1)
      {
        sub_1A84E1144();
      }

      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v97 = obj;
      v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, &v139, v154, 16);
      if (v101)
      {
        v102 = *v140;
        do
        {
          for (k = 0; k != v101; ++k)
          {
            if (*v140 != v102)
            {
              objc_enumerationMutation(v97);
            }

            v104 = *(v24 + 328);
            v105 = qword_1ED7679B8;
            v106 = objc_msgSend_guid(*(*(&v139 + 1) + 8 * k), v99, v100);
            objc_msgSend_setObject_forKey_(v104, v107, v105, v106);
          }

          v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v99, &v139, v154, 16);
        }

        while (v101);
      }
    }

    if (objc_msgSend_isBusinessChat(v24, v95, v96) && objc_msgSend_count(obj, v108, v109))
    {
      v110 = objc_msgSend_objectAtIndexedSubscript_(obj, v108, 0);
      v113 = objc_msgSend_name(v110, v111, v112);
      objc_msgSend__setDisplayName_(v24, v114, v113);
    }

    if (objc_msgSend_isStewieEmergencyChat(v24, v108, v109))
    {
      if (objc_msgSend_count(obj, v115, v116))
      {
        v118 = objc_msgSend_objectAtIndexedSubscript_(obj, v117, 0);
        v121 = objc_msgSend_name(v118, v119, v120);
        objc_msgSend__setDisplayName_(v24, v122, v121);
      }

      else
      {
        v118 = IMLogHandleForCategory();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E116C();
        }
      }
    }

    objc_msgSend__initialize(v24, v115, v116);
    if (qword_1ED7679C8 != -1)
    {
      sub_1A84E11A8();
    }

    if (byte_1EB2EA338 == 1)
    {
      v123 = objc_alloc_init(IMOrderingTools);
      objc_storeStrong((v24 + 528), v123);
      objc_msgSend_startTrackingChat_(v123, v124, v24);
      if (IMOSLoggingEnabled())
      {
        v125 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
        {
          v128 = objc_msgSend_orderingTools(v24, v126, v127);
          *buf = 138412290;
          v153 = v128;
          _os_log_impl(&dword_1A823F000, v125, OS_LOG_TYPE_INFO, "We are monitoring message ordering under automation {tools %@}", buf, 0xCu);
        }
      }
    }
  }

  v129 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (id)pendingChatForHandle:(id)handle
{
  handleCopy = handle;
  v4 = [IMChat alloc];
  v7 = objc_msgSend_account(handleCopy, v5, v6);
  v8 = IMSingleObjectArray();

  BYTE2(v12) = 0;
  LOWORD(v12) = 0;
  isDeletingIncomingMessages = objc_msgSend__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_(v4, v9, 0, v7, 45, 0, 0, 0, 0, 0, v8, 1, v12);

  return isDeletingIncomingMessages;
}

- (IMChat)init
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return objc_msgSend__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_(self, a2, 0, 0, 45, 0, 0, 0, 0, 0, 0, 1, v3);
}

- (id)chatItemUpdaterLogHandle
{
  v2 = objc_opt_class();

  return objc_msgSend_chatItemUpdaterLogHandle(v2, v3, v4);
}

+ (Class)chatItemRulesClass
{
  v3 = qword_1EB2E9FC8;
  if (qword_1EB2E9FC8)
  {
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (void)dealloc
{
  v27 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Dealloc: %@", buf, 0xCu);
    }
  }

  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, 0, 0);

  v10 = objc_msgSend_chatRegistry(self, v8, v9);
  objc_msgSend__noteChatDealloc_(v10, v11, self);

  objc_msgSend_setDelegate_(self->_sendProgress, v12, 0);
  objc_msgSend_setContext_(self->_sendProgress, v13, 0);
  objc_msgSend_invalidate(self->_sendProgress, v14, v15);
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_(MEMORY[0x1E69E58C0], v16, self);
  objc_msgSend_invalidate(self->_downgradeStateUpdater, v17, v18);
  v21 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v19, v20);
  objc_msgSend_removeObserver_(v21, v22, self);

  v24.receiver = self;
  v24.super_class = IMChat;
  [(IMItemsController *)&v24 dealloc];
  v23 = *MEMORY[0x1E69E9840];
}

- (id)_initWithItems:(id)items
{
  BYTE2(v4) = 0;
  LOWORD(v4) = 0;
  return objc_msgSend__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_(self, a2, 0, 0, 45, 0, 0, 0, 0, items, 0, 1, v4);
}

- (void)_itemsDidChange:(id)change
{
  changeCopy = change;
  v7 = objc_msgSend_chatRegistry(self, v5, v6);
  isFirstLoad = objc_msgSend_isFirstLoad(v7, v8, v9);

  if ((isFirstLoad & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = IMChat;
    [(IMItemsController *)&v13 _itemsDidChange:changeCopy];
    objc_msgSend_setNeedsDeferredUpdateWithReason_(self->_chatItemsUpdater, v11, @"IMItemsChanged");
    objc_msgSend_updateForItems_forced_(self->_sendProgress, v12, changeCopy, 0);
  }
}

- (void)_handleItem:(id)item
{
  itemCopy = item;
  v6 = objc_msgSend_chatStyle(self, v4, v5);
  objc_msgSend__handleItem_forChatStyle_keepExistingIndex_(self, v7, itemCopy, v6, 0);
}

- (void)_removeItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = IMChat;
  [(IMItemsController *)&v19 _removeItem:itemCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = objc_msgSend_filterControllers(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v20, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_removeItem_(*(*(&v15 + 1) + 8 * v13++), v10, itemCopy);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v15, v20, 16);
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_replaceItems:(id)items
{
  v21 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v19.receiver = self;
  v19.super_class = IMChat;
  [(IMItemsController *)&v19 _replaceItems:itemsCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = objc_msgSend_filterControllers(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v20, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_replaceItems_(*(*(&v15 + 1) + 8 * v13++), v10, itemsCopy);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v15, v20, 16);
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_removeItemsForGuids:(id)guids
{
  v48 = *MEMORY[0x1E69E9840];
  guidsCopy = guids;
  if (objc_msgSend_count(guidsCopy, v5, v6))
  {
    v37 = guidsCopy;
    v8 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v7, guidsCopy);
    v9 = MEMORY[0x1E695DF70];
    v12 = objc_msgSend_count(v8, v10, v11);
    v14 = objc_msgSend_arrayWithCapacity_(v9, v13, v12);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = objc_msgSend__items(self, v15, v16);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v42, v47, 16);
    if (v19)
    {
      v22 = v19;
      v23 = *v43;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v43 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v25 = *(*(&v42 + 1) + 8 * i);
          v26 = objc_msgSend_guid(v25, v20, v21);
          v28 = objc_msgSend_containsObject_(v8, v27, v26);

          if (v28)
          {
            objc_msgSend_addObject_(v14, v20, v25);
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v42, v47, 16);
      }

      while (v22);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = v14;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v38, v46, 16);
    if (v31)
    {
      v33 = v31;
      v34 = *v39;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(v29);
          }

          objc_msgSend__removeItem_(self, v32, *(*(&v38 + 1) + 8 * j));
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v38, v46, 16);
      }

      while (v33);
    }

    guidsCopy = v37;
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_clearUnreadCount
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_chatRegistry(self, a2, v2);
  objc_msgSend__chat_clearCachedUnreadCount_(v4, v5, self);

  dbUnreadCount = self->_dbUnreadCount;
  v7 = IMOSLoggingEnabled();
  if (dbUnreadCount)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = self->_dbUnreadCount;
        v25 = 138412802;
        *v26 = self;
        *&v26[8] = 1024;
        *&v26[10] = v9;
        v27 = 1024;
        v28 = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Clearing [DB] unread count for %@ from %d to %d", &v25, 0x18u);
      }
    }

    self->_dbUnreadCount = 0;
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v25 = 67109378;
        *v26 = 0;
        *&v26[4] = 2112;
        *&v26[6] = self;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "   Posting new unread count of %u for %@", &v25, 0x12u);
      }
    }

    v13 = MEMORY[0x1E696AD98];
    v14 = objc_msgSend_unreadMessageCount(self, v10, v11, @"__kIMChatUnreadKey");
    v16 = objc_msgSend_numberWithUnsignedInteger_(v13, v15, v14);
    v24 = v16;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, &v24, &v23, 1);
    objc_msgSend__postNotification_userInfo_(self, v19, @"__kIMChatUnreadCountChangedNotification", v18);
  }

  else if (v7)
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = self->_dbUnreadCount;
      v25 = 138412546;
      *v26 = self;
      *&v26[8] = 1024;
      *&v26[10] = v21;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Unread count [DB] for %@ stayed at: %d", &v25, 0x12u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_setDBUnreadCount:(unint64_t)count
{
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, count);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v5, v6, v7);

  if ((isUnreadCountRefactorEnabled & 1) == 0)
  {

    objc_msgSend__setDBUnreadCount_postNotification_(self, v9, count, 1);
  }
}

- (void)_setDBUnreadCount:(unint64_t)count postNotification:(BOOL)notification
{
  notificationCopy = notification;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, count);
  isUnreadCountRefactorEnabled = objc_msgSend_isUnreadCountRefactorEnabled(v7, v8, v9);

  if ((isUnreadCountRefactorEnabled & 1) == 0 && self->_dbUnreadCount != count)
  {
    self->_dbUnreadCount = count;
    if (notificationCopy)
    {

      objc_msgSend__postNewUnreadCount(self, v11, v12);
    }
  }
}

- (void)_setDBFailedCount:(unint64_t)count
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_dbFailedCount != count)
  {
    self->_dbFailedCount = count;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        dbFailedCount = self->_dbFailedCount;
        v10[0] = 67109634;
        v10[1] = dbFailedCount;
        v11 = 1024;
        v12 = objc_msgSend_messageFailureCount(self, v6, v7);
        v13 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "_dbFailedCount changed to %d: Posting new failed count of %d for %@", v10, 0x18u);
      }
    }

    objc_msgSend__postNotification_userInfo_(self, v4, @"__kIMChatMessageFailureCountChangedNotification", 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_reloadChatItemsForServiceChange
{
  v22 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_account(self, v5, v6);
      v10 = objc_msgSend_service(v7, v8, v9);
      v13 = objc_msgSend_internalName(v10, v11, v12);
      v16 = objc_msgSend_guid(self, v14, v15);
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Service for sending changed to %@, updating chat items for chat: %@", &v18, 0x16u);
    }
  }

  objc_msgSend__updateChatItemsWithReason_block_(self, v3, @"(IMChat) Service for sending changed", &unk_1F1B6E860);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_setPendingIncomingSatelliteMessageCount:(unint64_t)count postNotification:(BOOL)notification
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_pendingIncomingSatelliteMessageCount != count)
  {
    notificationCopy = notification;
    self->_pendingIncomingSatelliteMessageCount = count;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        pendingIncomingSatelliteMessageCount = self->_pendingIncomingSatelliteMessageCount;
        *buf = 67109378;
        v19 = pendingIncomingSatelliteMessageCount;
        v20 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "_pendingIncomingSatelliteMessageCount changed to %d for %@", buf, 0x12u);
      }
    }

    if (count)
    {
      totalSatelliteMessageCount = self->_totalSatelliteMessageCount;
      if (totalSatelliteMessageCount <= count)
      {
        totalSatelliteMessageCount = count;
      }
    }

    else
    {
      totalSatelliteMessageCount = 0;
    }

    self->_totalSatelliteMessageCount = totalSatelliteMessageCount;
    if (self->_downloadingPendingSatelliteMessages)
    {
      objc_msgSend__updateChatItemsWithReason_block_(self, v7, @"Satellite count changed!", &unk_1F1B6E880);
    }

    if (notificationCopy)
    {
      v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, self->_pendingIncomingSatelliteMessageCount, @"__kIMChatPendingIncomingSatelliteMessageCountKey");
      v17 = v11;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, &v17, &v16, 1);
      objc_msgSend__postNotification_userInfo_(self, v14, @"__kIMChatPendingIncomingSatelliteMessageCountChangedNotification", v13);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_setIsDownloadingPendingSatelliteMessages:(BOOL)messages postNotification:(BOOL)notification
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_downloadingPendingSatelliteMessages != messages)
  {
    notificationCopy = notification;
    messagesCopy = messages;
    self->_downloadingPendingSatelliteMessages = messages;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"NO";
        if (messagesCopy)
        {
          v9 = @"YES";
        }

        *buf = 138412546;
        v16 = v9;
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "_downloadingPendingSatelliteMessages changed to %@ for %@", buf, 0x16u);
      }
    }

    if (notificationCopy)
    {
      v13 = @"__kIMChatIsDownloadingPendingSatelliteMessagesKey";
      v14 = MEMORY[0x1E695E118];
      v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, &v14, &v13, 1);
      objc_msgSend__postNotification_userInfo_(self, v11, @"__kIMChatIsDownloadingPendingSatelliteMessagesChangedNotification", v10);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_archivedItemsToReplace:(id)replace isReplacingItems:(BOOL)items
{
  itemsCopy = items;
  v17 = *MEMORY[0x1E69E9840];
  replaceCopy = replace;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16[0] = 67109120;
      v16[1] = objc_msgSend_count(replaceCopy, v10, v11);
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "_archivedItemsToReplace archivedItemsCount: %d", v16, 8u);
    }
  }

  if (itemsCopy)
  {
    objc_msgSend__removeAllItems(self, v7, v8);
    v12 = replaceCopy;
  }

  else
  {
    v12 = objc_msgSend__appendArchivedItemsToItemsArray_(self, v7, replaceCopy);
  }

  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)messageForGUID:(id)d
{
  v3 = objc_msgSend__itemForGUID_(self, a2, d);
  v6 = objc_msgSend_message(v3, v4, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_replyCountsByPart(v3, v7, v8);
    objc_msgSend_setReplyCountsByPart_(v6, v10, v9);
  }

  return v6;
}

- (IMMessage)firstMessage
{
  v3 = objc_msgSend__firstMessage(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (IMMessage)lastIncomingMessage
{
  v3 = objc_msgSend__lastIncomingMessage(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (IMMessage)lastIncomingFinishedMessageWithTextContent
{
  v3 = objc_msgSend__lastIncomingFinishedMessageItemWithTextContent(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (id)_lastChatItemMatchingCriteria:(id)criteria
{
  v24 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = objc_msgSend_chatItems(self, v5, v6, 0);
  v10 = objc_msgSend_reverseObjectEnumerator(v7, v8, v9);

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v19, v23, 16);
  if (v12)
  {
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if (criteriaCopy[2](criteriaCopy, v15))
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, &v19, v23, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_lastMessageItemFromContactOrFromMe:(BOOL)me
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8319750;
  v5[3] = &unk_1E78126D8;
  meCopy = me;
  v5[4] = self;
  v3 = objc_msgSend__lastMessageItemMatchingCriteria_(self, a2, v5);

  return v3;
}

- (IMMessage)lastIncomingReplyableMessage
{
  v3 = objc_msgSend_lastIncomingReplyableChatItem(self, a2, v2);
  v6 = objc_msgSend__item(v3, v4, v5);
  v9 = objc_msgSend_message(v6, v7, v8);

  return v9;
}

- (BOOL)isLastIncomingFinishedMessageNotiMessage
{
  v3 = objc_msgSend_lastIncomingFinishedMessageItem(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_service(v3, v4, v5);
    v10 = objc_msgSend_iMessageService(IMService, v8, v9);
    v13 = objc_msgSend_internalName(v10, v11, v12);

    v15 = objc_msgSend_isEqualToString_(v7, v14, v13) ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)lastMessageExists
{
  v3 = objc_msgSend__lastMessage(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (IMMessage)lastSentMessage
{
  v3 = objc_msgSend__lastSentMessage(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (NSDate)lastSentMessageDate
{
  v3 = objc_msgSend__lastSentMessage(self, a2, v2);
  v6 = objc_msgSend_time(v3, v4, v5);

  return v6;
}

- (int64_t)lastFinishedMessageID
{
  v3 = objc_msgSend__lastFinishedMessage(self, a2, v2);
  v6 = objc_msgSend_messageID(v3, v4, v5);

  return v6;
}

- (IMMessage)lastPendingSatelliteSendMessage
{
  v3 = objc_msgSend__lastPendingSatelliteSendMessage(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (id)messageGuidsForRequery
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = objc_msgSend__items(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v30, v34, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_message(*(*(&v30 + 1) + 8 * i), v10, v11);
        v18 = v15;
        if (v15 && (objc_msgSend_isRead(v15, v16, v17) & 1) == 0 && (objc_msgSend_isFromMe(v18, v19, v20) & 1) == 0)
        {
          v23 = objc_msgSend_guid(v18, v21, v22);
          objc_msgSend_addObject_(v4, v24, v23);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v30, v34, 16);
    }

    while (v12);
  }

  v27 = objc_msgSend_copy(v4, v25, v26);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)messageGuidsForMyUnreadMentions
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = objc_msgSend__items(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v28, v32, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v18 = objc_msgSend_message(v15, v10, v11);
        if (v18 && objc_msgSend_hasUnseenMention(v15, v16, v17))
        {
          v21 = objc_msgSend_guid(v18, v19, v20);
          objc_msgSend_addObject_(v4, v22, v21);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v28, v32, 16);
    }

    while (v12);
  }

  v25 = objc_msgSend_copy(v4, v23, v24);
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)removeMentionMessageGUID:(id)d
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = objc_msgSend__items(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v10;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v38, v42, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      v16 = 0;
      do
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v38 + 1) + 8 * v16);
        v20 = objc_msgSend_message(v17, v18, v19, v38);
        v23 = objc_msgSend_guid(v20, v21, v22);
        if (objc_msgSend_isEqualToString_(v23, v24, dCopy))
        {
          hasUnseenMention = objc_msgSend_hasUnseenMention(v17, v25, v26);

          if (!hasUnseenMention)
          {
            goto LABEL_10;
          }

          v23 = objc_msgSend__copy(v17, v28, v29);
          objc_msgSend_setHasUnseenMention_(v23, v30, 0);
          v33 = objc_msgSend_remoteDaemon(self, v31, v32);
          objc_msgSend_updateMessage_(v33, v34, v23);

          objc_msgSend__handleItem_(self, v35, v23);
        }

LABEL_10:
        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v36, &v38, v42, 16);
    }

    while (v14);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (BOOL)deleteAllHistory
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A831A084;
  v7[3] = &unk_1E7812700;
  v7[4] = self;
  v3 = objc_msgSend__performQueryWithKey_loadImmediately_block_(self, a2, @"DeleteHistory", 0, v7);
  objc_msgSend_clear(self, v4, v5);
  return 1;
}

- (unint64_t)markAsSpam:(unint64_t)spam isJunkReportedToCarrier:(BOOL)carrier
{
  v32 = *MEMORY[0x1E69E9840];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1A831A2D0;
  v28[3] = &unk_1E78113E8;
  v28[4] = self;
  carrierCopy = carrier;
  v6 = objc_msgSend__performQueryWithKey_loadImmediately_block_(self, a2, @"MarkAsSpam", 1, v28);
  v7 = self->_countOfMessagesMarkedAsSpam;
  objc_msgSend__setCountOfMessagesMarkedAsSpam_(self, v8, 0);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_integerValue(v7, v11, v12);
      *buf = 134217984;
      v31 = v13;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Marked %ld messages as spam", buf, 0xCu);
    }
  }

  v14 = objc_msgSend_valueForChatProperty_(self, v9, @"restoredFromBlackhole");
  v17 = objc_msgSend_BOOLValue(v14, v15, v16);

  v20 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v18, v19);
  v22 = v20;
  if (v17)
  {
    objc_msgSend_trackSpamEvent_(v20, v21, 32);
  }

  else
  {
    objc_msgSend_trackSpamEvent_(v20, v21, spam);
  }

  v25 = objc_msgSend_integerValue(v7, v23, v24);
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)autoReportSpam
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_valueForChatProperty_(self, a2, @"hasBeenAutoSpamReported");

  if (!v3)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = objc_msgSend_chatIdentifier(self, v7, v8);
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "autoReportSpam on self %@", &v15, 0xCu);
      }
    }

    v10 = objc_msgSend_chatRegistry(self, v4, v5);
    objc_msgSend__chat_markAsSpamAutomatically_(v10, v11, self);

    objc_msgSend_markAsAutoSpamReported(self, v12, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isChatBot
{
  if (objc_msgSend_chatStyle(self, a2, v2) != 45)
  {
    return 0;
  }

  v6 = objc_msgSend_participants(self, v4, v5);
  v9 = objc_msgSend_firstObject(v6, v7, v8);
  isChatBot = objc_msgSend_isChatBot(v9, v10, v11);

  return isChatBot;
}

- (BOOL)reportJunk
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__messageToReportJunk(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_service(v4, v5, v6);
    v10 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v9, v8);

    if (objc_msgSend_supportsCapability_(v10, v11, *MEMORY[0x1E69A7A20]))
    {
      v14 = MEMORY[0x1E69A7F70];
      v15 = objc_msgSend_chatStyle(self, v12, v13);
      isReportJunkServiceAllowedForMessageItem_junkChatStyle = objc_msgSend_isReportJunkServiceAllowedForMessageItem_junkChatStyle_(v14, v16, v7, v15);
      if (isReportJunkServiceAllowedForMessageItem_junkChatStyle & 1) != 0 || (objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v17, v18), v20 = objc_claimAutoreleasedReturnValue(), isReportJunkEverywhereEnabled = objc_msgSend_isReportJunkEverywhereEnabled(v20, v21, v22), v20, (isReportJunkEverywhereEnabled))
      {
        isChatBot = objc_msgSend__isChatBot(self, v17, v18);
        v27 = MEMORY[0x1E69A7F70];
        if (isChatBot)
        {
          v28 = objc_msgSend_messageCount(self, v25, v26);
          objc_msgSend_collectReportJunkMetricsForChatbotJunkMessageItem_totalMessagesInThread_(v27, v29, v7, v28);
        }

        else
        {
          v37 = objc_msgSend_chatStyle(self, v25, v26);
          v40 = objc_msgSend_messageCount(self, v38, v39);
          objc_msgSend_collectReportJunkMetricsForJunkMessageItem_junkChatStyle_totalMessagesInThread_(v27, v41, v7, v37, v40);
        }

        v42 = objc_msgSend_sharedInstance(IMAccountController, v30, v31);
        v44 = objc_msgSend_activeAccountsForService_(v42, v43, v10);
        v47 = objc_msgSend_firstObject(v44, v45, v46);

        if (IMOSLoggingEnabled())
        {
          v50 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v53 = objc_msgSend_guid(v7, v51, v52);
            v71 = 138412290;
            v72 = v53;
            _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "sending junk report item: %@", &v71, 0xCu);
          }
        }

        v54 = objc_msgSend_sharedController(IMDaemonController, v48, v49);
        v57 = objc_msgSend_remoteDaemon(v54, v55, v56);
        v60 = objc_msgSend_guid(v7, v58, v59);
        v63 = objc_msgSend_uniqueID(v47, v61, v62);
        objc_msgSend_sendReportJunkMessageGUID_account_shouldRelay_(v57, v64, v60, v63, isReportJunkServiceAllowedForMessageItem_junkChatStyle ^ 1u);

        v36 = 1;
        goto LABEL_23;
      }

      if (IMOSLoggingEnabled())
      {
        v65 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          v68 = objc_msgSend_guid(v7, v66, v67);
          v71 = 138412290;
          v72 = v68;
          _os_log_impl(&dword_1A823F000, v65, OS_LOG_TYPE_INFO, "Not relaying junk report item: %@", &v71, 0xCu);
        }
      }
    }

    v36 = 0;
LABEL_23:

    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v35 = objc_msgSend_chatItems(self, v33, v34);
      v71 = 138412290;
      v72 = v35;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "No chat item of type IMMessageItem found while reporting junk. Chat Items -> %@", &v71, 0xCu);
    }
  }

  v36 = 0;
LABEL_24:

  v69 = *MEMORY[0x1E69E9840];
  return v36;
}

- (void)reportNotJunkToTrustKit
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v4, v5, v6);

  if (isIntroductionsEnabled)
  {
    v10 = objc_msgSend_lastIncomingFinishedMessageItem(self, v8, v9);
    v13 = objc_msgSend_guid(v10, v11, v12);

    if (objc_msgSend_length(v13, v14, v15))
    {
      v18 = objc_msgSend_sharedInstance(IMAccountController, v16, v17);
      v21 = objc_msgSend_account(self, v19, v20);
      v24 = objc_msgSend_service(v21, v22, v23);
      v26 = objc_msgSend_activeAccountsForService_(v18, v25, v24);
      v29 = objc_msgSend_firstObject(v26, v27, v28);

      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v46 = 138412290;
          v47 = v13;
          _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Sending not junk report item: %@", &v46, 0xCu);
        }
      }

      v33 = objc_msgSend_sharedController(IMDaemonController, v30, v31);
      v36 = objc_msgSend_remoteDaemon(v33, v34, v35);
      v39 = objc_msgSend_uniqueID(v29, v37, v38);
      objc_msgSend_sendReportNotJunkMessageGUID_account_(v36, v40, v13, v39);
    }

    else if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v44 = objc_msgSend_chatItems(self, v42, v43);
        v46 = 138412290;
        v47 = v44;
        _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "No chat item guid found while reporting not junk. Chat Items -> %@", &v46, 0xCu);
      }
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)setIsFiltered:(int64_t)filtered
{
  v16 = *MEMORY[0x1E69E9840];
  isFiltered = self->_isFiltered;
  if (isFiltered != filtered)
  {
    if (isFiltered == 2)
    {
      objc_msgSend_invalidateSpamIndicatorCachedValuesIfNeeded(self, a2, filtered);
      self->_isFiltered = filtered;
    }

    else
    {
      self->_isFiltered = filtered;
      if (filtered)
      {
        goto LABEL_10;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 134218242;
        v13 = objc_msgSend_isFiltered(self, v8, v9);
        v14 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Updating isFiltered to %ld for chat %@", &v12, 0x16u);
      }
    }

    objc_msgSend__postNotification_userInfo_(self, v6, @"__kIMChatIsFilteredChangedNotification", 0);
    objc_msgSend__updateChatItemsWithDataDetectorResultsForReason_(self, v10, @"updateIsFiltered:IMMessageFilterActionKnownSender");
  }

LABEL_10:
  objc_msgSend_invalidateMergedThreadFilterModes(self, a2, filtered);
  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)isShowingTranslationText
{
  if (!objc_msgSend_isAutomaticTranslationEnabled(self, a2, v2))
  {
    return 1;
  }

  v5 = objc_msgSend_valueForChatProperty_(self, v4, *MEMORY[0x1E69A6CA0]);
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_BOOLValue(v5, v6, v7);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)hasOfferedAutomaticTranslationInTranslateMenu
{
  v2 = objc_msgSend_valueForChatProperty_(self, a2, *MEMORY[0x1E69A6B98]);
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_BOOLValue(v2, v3, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateIsFiltered:(int64_t)filtered
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (self->_isFiltered != filtered)
  {
    objc_msgSend_setIsFiltered_(self, a2, filtered);
    v7 = objc_msgSend_chatRegistry(self, v5, v6);
    objc_msgSend__chat_updateIsFiltered_synchronously_(v7, v8, self, self->_isFiltered, 0);

    if ((filtered & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v11 = objc_msgSend_chatRegistry(self, v9, v10);
      v16[0] = self;
      v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v16, 1);
      objc_msgSend_markChatsAsReviewed_(v11, v14, v13);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setRecovered:(BOOL)recovered
{
  if (self->_recovered != recovered)
  {
    if (recovered)
    {
      self->_recovered = recovered;
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Updating isRecovered to YES", buf, 2u);
        }
      }

      v7 = objc_msgSend_chatRegistry(self, v4, v5);
      objc_msgSend__chat_updateIsRecovered_(v7, v8, self, 1);
    }

    else if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Chat - Tried to update isRecovered to NO, not allowed", v10, 2u);
      }
    }
  }
}

- (void)updateLineSwitchedTo:(id)to
{
  v10 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = toCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "SIM Line is switched to %@", &v8, 0xCu);
    }
  }

  objc_msgSend__updateChatItemsWithReason_block_(self, v5, @"(IMChat) Conversation line switched", &unk_1F1B6E900);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)loadParticipantContactsIfNecessary
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_msgSend_participants(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    v9 = MEMORY[0x1E695E0F0];
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v11 = objc_msgSend_cnContactWithKeys_(*(*(&v13 + 1) + 8 * v10++), v6, v9);
      }

      while (v7 != v10);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v13, v17, 16);
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)_participantsWorkQueue
{
  if (qword_1EB2EA348 != -1)
  {
    sub_1A84E120C();
  }

  v3 = qword_1EB2EA340;

  return v3;
}

- (BOOL)hasKnownParticipants
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_participants(self, a2, v2, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_msgSend_isContactButNotMe(*(*(&v14 + 1) + 8 * i), v6, v7))
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v14, v18, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_msgSend_setHasKnownParticipantsCache_(self, v11, v8);
  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)hasKnownParticipantsCache
{
  hasKnownParticipantsCacheStatus = objc_msgSend_hasKnownParticipantsCacheStatus(self, a2, v2);
  if (hasKnownParticipantsCacheStatus >= 2)
  {
    if (hasKnownParticipantsCacheStatus == -1)
    {

      LOBYTE(hasKnownParticipantsCacheStatus) = objc_msgSend_hasKnownParticipants(self, v5, v6);
    }

    else
    {
      LOBYTE(hasKnownParticipantsCacheStatus) = 0;
    }
  }

  return hasKnownParticipantsCacheStatus;
}

- (BOOL)allParticipantsAreContacts
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = objc_msgSend_participants(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v3);
        }

        if (!objc_msgSend_isContact(*(*(&v14 + 1) + 8 * i), v6, v7))
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v14, v18, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)hasMessageWithServiceCapability:(id)capability
{
  v3 = objc_msgSend__lastMessageItemWithServiceCapability_(self, a2, capability);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasMessageFromService:(id)service
{
  v4 = objc_msgSend_internalName(service, a2, service);
  v7 = v4;
  if (v4 && objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend__lastMessageItemWithService_(self, v8, v7);
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isSMS
{
  v3 = objc_msgSend_account(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);
  v9 = objc_msgSend_smsService(IMService, v7, v8);
  v10 = v6 == v9;

  return v10;
}

- (BOOL)isRCS
{
  v3 = objc_msgSend_account(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);
  v9 = objc_msgSend_rcsService(IMService, v7, v8);
  v10 = v6 == v9;

  return v10;
}

- (BOOL)shouldForceToSMS
{
  v2 = objc_msgSend_valueForChatProperty_(self, a2, @"shouldForceToSMS");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (void)setKeyTransparencyURIToUUIDMapping:(id)mapping
{
  v38 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v31 = *MEMORY[0x1E69A6BE8];
  selfCopy = self;
  v6 = objc_msgSend_valueForChatProperty_(self, v5, *MEMORY[0x1E69A6BE8]);
  v9 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = objc_msgSend_allKeys(mappingCopy, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v33, v37, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        v20 = objc_msgSend_objectForKeyedSubscript_(mappingCopy, v15, v19);
        v23 = objc_msgSend_UUIDString(v20, v21, v22);
        objc_msgSend_setObject_forKeyedSubscript_(v9, v24, v23, v19);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v33, v37, 16);
    }

    while (v16);
  }

  if ((objc_msgSend_isEqualToDictionary_(v6, v25, v9) & 1) == 0)
  {
    v28 = objc_msgSend_copy(v9, v26, v27);
    objc_msgSend_setValue_forChatProperty_(selfCopy, v29, v28, v31);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldShowAudioButtonInEntryView
{
  v3 = objc_msgSend_supportsCapabilities_(self, a2, 64);
  if (v3)
  {
    v5 = objc_msgSend_valueForChatProperty_(self, v4, @"showAudioButtonInEntryView");
    v8 = objc_msgSend_BOOLValue(v5, v6, v7);

    LOBYTE(v3) = v8;
  }

  return v3;
}

- (void)updateSMSCategory:(int64_t)category subCategory:(int64_t)subCategory
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_fetchSMSFilterParamForCategory_subCategory_(MEMORY[0x1E69A8210], a2, category, subCategory);
  v9 = objc_msgSend_category(v6, v7, v8);
  v12 = objc_msgSend_subCategory(v6, v10, v11);
  v14 = objc_msgSend_valueForChatProperty_(self, v13, @"SMSCategory");
  v17 = objc_msgSend_integerValue(v14, v15, v16);

  if (v17 != v9)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v35 = v9;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Setting spam category to: %d", buf, 8u);
      }
    }

    v20 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v18, v9);
    objc_msgSend_setValue_forChatProperty_(self, v21, v20, @"SMSCategory");

    v23 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v22, v12);
    objc_msgSend_setValue_forChatProperty_(self, v24, v23, @"SMSSubCategory");

    v25 = category == 2;
    v27 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v26, v25);
    objc_msgSend_setValue_forChatProperty_(self, v28, v27, @"wasDetectedAsSMSSpam");

    objc_msgSend__postNotification_userInfo_(self, v29, @"__kIMChatIsFilteredChangedNotification", 0);
    if (!v25)
    {
      v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v30, @"updateSMSCategory:%d", v9);
      objc_msgSend__updateChatItemsWithDataDetectorResultsForReason_(self, v32, v31);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (int64_t)chatPropertyValueFor:(int64_t)for
{
  if ((for - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return for - 1;
  }
}

- (void)recalculateMergedThreadFilterModes
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isMergeFilteredThreadsEnabled = objc_msgSend_isMergeFilteredThreadsEnabled(v4, v5, v6);

  if (isMergeFilteredThreadsEnabled)
  {
    v10 = objc_msgSend_set(MEMORY[0x1E695DFA8], v8, v9);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = sub_1A831C724;
    v22 = &unk_1E7812728;
    v24 = &v25;
    v11 = v10;
    v23 = v11;
    objc_msgSend__enumerateUnderlyingChatInfo_(self, v12, &v19);
    if ((v26[3] & 1) == 0)
    {
      objc_msgSend_removeAllObjects(v11, v13, v14, v19, v20, v21, v22);
    }

    v15 = objc_msgSend_copy(v11, v13, v14, v19, v20, v21, v22);
    mergedThreadFilterModes = self->_mergedThreadFilterModes;
    self->_mergedThreadFilterModes = v15;

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v17 = objc_msgSend_set(MEMORY[0x1E695DFD8], v8, v9);
    v18 = self->_mergedThreadFilterModes;
    self->_mergedThreadFilterModes = v17;

    MEMORY[0x1EEE66BB8](v17);
  }
}

- (void)invalidateMergedThreadFilterModes
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isMergeFilteredThreadsEnabled = objc_msgSend_isMergeFilteredThreadsEnabled(v4, v5, v6);

  if (isMergeFilteredThreadsEnabled)
  {
    mergedThreadFilterModes = self->_mergedThreadFilterModes;
    self->_mergedThreadFilterModes = 0;
  }
}

- (int64_t)smsCategory
{
  v2 = objc_msgSend_valueForChatProperty_(self, a2, @"SMSCategory");
  v5 = objc_msgSend_intValue(v2, v3, v4);

  return v5;
}

- (void)_updateChatItemsWithDataDetectorResultsForReason:(id)reason
{
  if (reason)
  {
    reasonCopy = reason;
  }

  else
  {
    reasonCopy = @"(IMChat) <Reason undefined>";
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A831C918;
  v7[3] = &unk_1E780FCB0;
  v7[4] = self;
  reasonCopy2 = reason;
  objc_msgSend__updateChatItemsWithReason_block_(self, v6, reasonCopy, v7);
}

- (IMMessageItem)firstUnreadMessageItem
{
  v53 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_unreadMessageCount(self, a2, v2) && (v45 = self, objc_msgSend_lastSeenMessageGuid(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v44 = objc_msgSend__items(v45, v7, v8);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v11 = objc_msgSend_reverseObjectEnumerator(v44, v9, v10);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v46, v52, 16);
    if (v13)
    {
      v14 = 0;
      v15 = *v47;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v46 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = objc_msgSend_guid(v17, v18, v19);
            v23 = objc_msgSend_lastSeenMessageGuid(v45, v21, v22);
            isEqualToString = objc_msgSend_isEqualToString_(v20, v24, v23);

            if (isEqualToString)
            {
              if (v14)
              {
                v37 = v14;
              }

              else
              {
                v37 = v17;
              }

              v36 = v37;

              goto LABEL_27;
            }

            v26 = v17;

            v14 = v26;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v27, &v46, v52, 16);
        if (v13)
        {
          continue;
        }

        break;
      }

      if (v14)
      {
        v30 = objc_msgSend_guid(v14, v28, v29);
        v33 = objc_msgSend_lastSeenMessageGuid(v45, v31, v32);
        v35 = objc_msgSend_isEqualToString_(v30, v34, v33);

        if (v35)
        {
          v14 = v14;
          v36 = v14;
          goto LABEL_27;
        }
      }
    }

    else
    {

      v14 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v41 = objc_msgSend_count(v44, v39, v40);
        *buf = 134217984;
        v51 = v41;
        _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Tried to identify first unread message but it was not part of the %lu loaded messages", buf, 0xCu);
      }
    }

    v36 = 0;
LABEL_27:
  }

  else
  {
    v36 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v36;
}

- (void)updateTranscriptSharingState:(int64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_valueForChatProperty_(self, a2, @"emergencyTranscriptSharingState");
  v8 = objc_msgSend_integerValue(v5, v6, v7);

  if (v8 != state)
  {
    v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, state);
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Updating transcript sharing state to %@", &v14, 0xCu);
      }
    }

    objc_msgSend_setValue_forChatProperty_(self, v11, v10, @"emergencyTranscriptSharingState");
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (int64_t)transcriptSharingState
{
  v2 = objc_msgSend_valueForChatProperty_(self, a2, @"emergencyTranscriptSharingState");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (BOOL)shouldShowAutoDonationAction
{
  if ((objc_msgSend_isBusinessChat(self, a2, v2) & 1) != 0 || !objc_msgSend_hasKnownParticipants(self, v4, v5))
  {
    return 0;
  }

  v8 = MEMORY[0x1E69A8288];

  return objc_msgSend_isSharedWithYouEnabled(v8, v6, v7);
}

- (BOOL)isAutoDonatingMessages
{
  v4 = objc_msgSend_autoDonationBehavior(self, a2, v2);
  if (v4 == 2)
  {
    goto LABEL_8;
  }

  if (v4 == 1)
  {
    return v4;
  }

  if (v4)
  {
LABEL_8:
    LOBYTE(v4) = 0;
    return v4;
  }

  LODWORD(v4) = objc_msgSend_shouldShowAutoDonationAction(self, v5, v6);
  if (v4)
  {
    v9 = MEMORY[0x1E69A8288];

    LOBYTE(v4) = objc_msgSend_isSharedWithYouEnabled(v9, v7, v8);
  }

  return v4;
}

- (void)setAutoDonationBehavior:(int64_t)behavior
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_autoDonationBehavior != behavior)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = objc_msgSend_guid(self, v6, v7);
        v10 = 134218242;
        behaviorCopy = behavior;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Updating AutoDonateBehavior to: %ld for chat guid: %@", &v10, 0x16u);
      }
    }

    self->_autoDonationBehavior = behavior;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)lastTranslatableMessageGUIDWithLanguageCode:(id)code
{
  v4 = *MEMORY[0x1E69A6C28];
  codeCopy = code;
  v7 = objc_msgSend_valueForChatProperty_(self, v6, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, codeCopy);

  return v9;
}

- (void)updateLastMessageGUID:(id)d forLanguageCode:(id)code
{
  v6 = *MEMORY[0x1E69A6C28];
  codeCopy = code;
  dCopy = d;
  v12 = objc_msgSend_valueForChatProperty_(self, v9, v6);
  objc_msgSend_setValue_forKey_(v12, v10, dCopy, codeCopy);

  objc_msgSend_setValue_forChatProperty_(self, v11, v12, v6);
}

- (BOOL)isEmergencyChat
{
  v2 = objc_msgSend_valueForChatProperty_(self, a2, *MEMORY[0x1E69A6BB8]);
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (id)chatSummaryMessageGUID
{
  if (objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], a2, v2))
  {
    v5 = objc_msgSend_valueForChatProperty_(self, v4, *MEMORY[0x1E69A6B28]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_msgSend_objectForKey_(v5, v6, *MEMORY[0x1E69A6B30]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateAssociatedBusinessID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ((objc_msgSend_isStewieRoadsideChat(self, v5, v6) & 1) == 0)
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1290();
    }

    goto LABEL_14;
  }

  if ((objc_msgSend__appearsToBeBusinessID(dCopy, v7, v8) & 1) == 0)
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E12CC();
    }

LABEL_14:

    goto LABEL_15;
  }

  v11 = objc_msgSend_associatedBusinessID(self, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(dCopy, v12, v11);

  if ((isEqualToString & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = objc_msgSend_guid(self, v16, v17);
        v21 = 138412546;
        v22 = dCopy;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Updating Associated business ID to: %@ for chat guid: %@", &v21, 0x16u);
      }
    }

    objc_msgSend_setValue_forChatProperty_(self, v14, dCopy, *MEMORY[0x1E69A6AF8]);
  }

LABEL_15:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)markBusinessChatAsSpam:(unint64_t)spam
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A831D578;
  v4[3] = &unk_1E7812750;
  v4[4] = self;
  v4[5] = spam;
  v3 = objc_msgSend__performQueryWithKey_loadImmediately_block_(self, a2, @"MarkAsSpam", 1, v4);
}

- (BOOL)canUnsubscribe
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isReportJunkEverywhereEnabled = objc_msgSend_isReportJunkEverywhereEnabled(v4, v5, v6);

  if (!isReportJunkEverywhereEnabled)
  {
    return 0;
  }

  v9 = objc_msgSend_valueForChatProperty_(self, v8, *MEMORY[0x1E69A6CD8]);
  v12 = objc_msgSend_length(v9, v10, v11) != 0;

  return v12;
}

- (NSString)unsubscribeText
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isReportJunkEverywhereEnabled = objc_msgSend_isReportJunkEverywhereEnabled(v4, v5, v6);

  if (isReportJunkEverywhereEnabled)
  {
    v9 = objc_msgSend_valueForChatProperty_(self, v8, *MEMORY[0x1E69A6CD8]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_resetUnsubscribeText
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isReportJunkEverywhereEnabled = objc_msgSend_isReportJunkEverywhereEnabled(v4, v5, v6);

  if (isReportJunkEverywhereEnabled)
  {
    v9 = *MEMORY[0x1E69A6CD8];

    objc_msgSend_setValue_forChatProperty_(self, v8, 0, v9);
  }
}

- (void)unsubscribe
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isReportJunkEverywhereEnabled = objc_msgSend_isReportJunkEverywhereEnabled(v4, v5, v6);

  if (isReportJunkEverywhereEnabled)
  {
    v10 = objc_msgSend_unsubscribeText(self, v8, v9);
    v13 = objc_msgSend_length(v10, v11, v12);

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E696AAB0]);
      v17 = objc_msgSend_unsubscribeText(self, v15, v16);
      v19 = objc_msgSend_initWithString_(v14, v18, v17);

      v20 = [IMMessage alloc];
      v23 = objc_msgSend_date(MEMORY[0x1E695DF00], v21, v22);
      v26 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v24, v25);
      v28 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_balloonBundleID_payloadData_expressiveSendStyleID_threadIdentifier_(v20, v27, 0, v23, v19, 0, 0, 1048581, 0, v26, 0, 0, 0, 0, 0);

      objc_msgSend_sendMessage_(self, v29, v28);
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Unsubscribe message sent", buf, 2u);
        }
      }

      objc_msgSend__resetUnsubscribeText(self, v30, v31);
    }

    else
    {
      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E133C();
      }
    }
  }
}

- (BOOL)canSuggestRecipientContact
{
  if (objc_msgSend_isGroupChat(self, a2, v2))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = objc_msgSend_recipient(self, v4, v5);
    v9 = objc_msgSend_cnContactWithKeys_(v7, v8, MEMORY[0x1E695E0F0]);

    if (objc_msgSend_isCoreRecentsAccepted(v9, v10, v11) & 1) != 0 || (objc_msgSend_currentlyMarkingAsKnown(self, v12, v13))
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = objc_msgSend_inUnknownSendersFilter(self, v14, v15) ^ 1;
    }
  }

  return v6;
}

- (BOOL)inUnknownSendersFilter
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v4, v5, v6);

  if (!isIntroductionsEnabled)
  {
    goto LABEL_12;
  }

  LODWORD(v10) = objc_msgSend_isFilterUnknownSendersEnabled(MEMORY[0x1E69A82A0], v8, v9);
  if (v10)
  {
    isFiltered = objc_msgSend_isFiltered(self, v11, v12);
    if ((objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v14, v15) & 1) != 0 || (v18 = objc_msgSend_isFiltered(self, v16, v17), LOBYTE(v10) = 1, v18 != 1) && (isFiltered & 0xF) - 3 >= 2)
    {
      if (!objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v16, v17) || (v10 = objc_msgSend_isFiltered(self, v19, v20), v10 != 1))
      {
        if ((objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v19, v20) & 1) == 0 && (objc_msgSend_isSpamFilteringEnabled(MEMORY[0x1E69A8198], v21, v22) & 1) == 0 && objc_msgSend_isFiltered(self, v23, v24) == 2)
        {
          LOBYTE(v10) = 1;
          return v10;
        }

LABEL_12:
        LOBYTE(v10) = 0;
      }
    }
  }

  return v10;
}

- (BOOL)shouldShowIntroductionsButtons
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v4, v5, v6);

  if (isIntroductionsEnabled)
  {
    v10 = objc_msgSend_messageCount(self, v8, v9);
    if (v10)
    {
      if (objc_msgSend_isFiltered(self, v11, v12) == 2 && (objc_msgSend_allowsJunkConfiguration(self, v13, v14) & 1) != 0 || (objc_msgSend_inUnknownSendersFilter(self, v13, v14) & 1) != 0)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = objc_msgSend_allowedByScreenTime(self, v15, v16) ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)canBeMessageLevelFiltered
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isMergeFilteredThreadsEnabled = objc_msgSend_isMergeFilteredThreadsEnabled(v4, v5, v6);

  if (!isMergeFilteredThreadsEnabled)
  {
    return 0;
  }

  v10 = objc_msgSend_sharedRegistry(IMChatRegistry, v8, v9);
  if (objc_msgSend_currentMessageFilterMode(v10, v11, v12) < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = objc_msgSend_supportsMergingFilteredThreads(self, v13, v14);
  }

  return v15;
}

- (NSString)stewieSharingSuggestedName
{
  if (objc_msgSend_isStewieSharingChat(self, a2, v2))
  {
    v6 = objc_msgSend_emergencyUserInfo(self, v4, v5);
    v9 = objc_msgSend_emergencyUserPersona(v6, v7, v8);
    v12 = objc_msgSend_suggestedDisplayName(v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (IMHandle)emergencyUserHandle
{
  if (objc_msgSend_isStewieSharingChat(self, a2, v2) && !self->_cachedEUHandle)
  {
    v6 = objc_msgSend_emergencyUserInfo(self, v4, v5);
    v9 = objc_msgSend_emergencyUserPersona(v6, v7, v8);
    v14 = objc_msgSend_senderID(v9, v10, v11);
    if (v14)
    {
      v15 = objc_msgSend_account(self, v12, v13);
      v17 = objc_msgSend_imHandleWithID_(v15, v16, v14);
      cachedEUHandle = self->_cachedEUHandle;
      self->_cachedEUHandle = v17;
    }
  }

  v19 = self->_cachedEUHandle;

  return v19;
}

- (void)stopTranscriptSharingWithChat
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  v7 = objc_msgSend_stewieEnabled(v4, v5, v6);

  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v20 = 136315138;
        v21 = "[IMChat stopTranscriptSharingWithChat]";
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Stop transcript sharing for %s", &v20, 0xCu);
      }
    }

    v11 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
    v14 = objc_msgSend_remoteDaemon(v11, v12, v13);
    v17 = objc_msgSend_chatIdentifier(self, v15, v16);
    objc_msgSend_stopTranscriptSharingWithChat_(v14, v18, v17);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)isOscarChat
{
  if (objc_msgSend_isFiltered(self, a2, v2) != 2)
  {
    return 0;
  }

  v6 = objc_msgSend_account(self, v4, v5);
  v9 = objc_msgSend_service(v6, v7, v8);
  v12 = objc_msgSend_internalName(v9, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x1E69A7AF0]);

  return isEqualToString;
}

- (BOOL)containsMessageFromContact
{
  v2 = objc_msgSend__lastMessageItemFromContactOrFromMe_(self, a2, 0);
  v3 = v2 != 0;

  return v3;
}

- (BOOL)containsMessageFromContactOrMe
{
  if (objc_msgSend_numberOfTimesRespondedToThread(self, a2, v2) > 0)
  {
    return 1;
  }

  v6 = objc_msgSend__lastMessageItemFromContactOrFromMe_(self, v4, 1);
  v5 = v6 != 0;

  return v5;
}

- (int64_t)numberOfTimesRespondedToThread
{
  v2 = objc_msgSend_valueForChatProperty_(self, a2, @"numberOfTimesRespondedtoThread");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (void)clear
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Clearing chat: %@", buf, 0xCu);
    }
  }

  self->_didSendAFinishedMessage = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A831E18C;
  v6[3] = &unk_1E780FCB0;
  v6[4] = self;
  objc_msgSend__updateChatItemsWithReason_block_(self, v3, @"(IMChat) Clear transcript", v6);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)didUnregisterFromRegistry:(id)registry
{
  v22 = *MEMORY[0x1E69E9840];
  registryCopy = registry;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_guid(self, v8, v9);
      v13 = objc_msgSend_participants(self, v11, v12);
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Chat %@ has been unregistered, removing participants (were %@)", &v18, 0x16u);
    }
  }

  objc_msgSend__removeAllItems(self, v5, v6);
  participants = self->_participants;
  self->_participants = 0;

  account = self->_account;
  self->_account = 0;

  objc_msgSend_setUnregistered_(self, v16, 1);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)recomputeChatItemsForScreenTimeStatusChanged
{
  objc_msgSend_invalidateSpamIndicatorCachedValuesIfNeeded(self, a2, v2);

  MEMORY[0x1EEE66B58](self, sel__reloadChatItemsForScreenTimeChange, v4);
}

- (void)_accountLoggedOut:(id)out
{
  v16 = *MEMORY[0x1E69E9840];
  outCopy = out;
  v7 = objc_msgSend_object(outCopy, v5, v6);
  account = self->_account;

  if (v7 == account && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = self->_account;
      v12 = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "Account Logged Out: chat: %@ account: %@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_startTiming:(id)timing
{
  timingCopy = timing;
  if (!self->_timingCollection)
  {
    v6 = timingCopy;
    objc_storeStrong(&self->_timingCollection, timing);
    timingCopy = v6;
  }
}

- (void)_endTiming
{
  timingCollection = self->_timingCollection;
  self->_timingCollection = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)_postNotification:(id)notification userInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  infoCopy = info;
  v10 = objc_msgSend_sharedRegistry(IMChatRegistry, v8, v9);
  isFirstLoad = objc_msgSend_isFirstLoad(v10, v11, v12);

  if ((isFirstLoad & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = notificationCopy;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Notification posted: %@", &v20, 0xCu);
      }
    }

    v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v17, v18, notificationCopy, self, infoCopy);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_postIMChatItemsDidChangeNotificationWithInserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate oldChatItems:(id)items newChatItems:(id)chatItems
{
  v101[6] = *MEMORY[0x1E69E9840];
  insertedCopy = inserted;
  removedCopy = removed;
  reloadCopy = reload;
  regenerateCopy = regenerate;
  itemsCopy = items;
  chatItemsCopy = chatItems;
  v100[0] = @"__kIMChatItemsInserted";
  v20 = insertedCopy;
  if (!insertedCopy)
  {
    v20 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v17, v18);
  }

  v101[0] = v20;
  v100[1] = @"__kIMChatItemsRemoved";
  v21 = removedCopy;
  if (!removedCopy)
  {
    v21 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v17, v18);
  }

  v101[1] = v21;
  v100[2] = @"__kIMChatItemsReload";
  v22 = reloadCopy;
  if (!reloadCopy)
  {
    v22 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v17, v18);
  }

  v101[2] = v22;
  v100[3] = @"__kIMChatItemsRegenerate";
  v23 = regenerateCopy;
  if (!regenerateCopy)
  {
    v23 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v17, v18);
  }

  v93 = reloadCopy;
  v101[3] = v23;
  v100[4] = @"__kIMChatItemsOldItems";
  v24 = itemsCopy;
  if (!itemsCopy)
  {
    v24 = objc_msgSend_array(MEMORY[0x1E695DEC8], v17, v18);
  }

  v101[4] = v24;
  v100[5] = @"__kIMChatItemsNewItems";
  v25 = chatItemsCopy;
  if (!chatItemsCopy)
  {
    v25 = objc_msgSend_array(MEMORY[0x1E695DEC8], v17, v18);
  }

  v101[5] = v25;
  v92 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, v101, v100, 6);
  if (!chatItemsCopy)
  {
  }

  if (!itemsCopy)
  {
  }

  v26 = v93;
  if (!regenerateCopy)
  {
  }

  selfCopy3 = self;
  if (v93)
  {
    if (removedCopy)
    {
      goto LABEL_21;
    }

LABEL_57:

    if (insertedCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

  if (!removedCopy)
  {
    goto LABEL_57;
  }

LABEL_21:
  if (insertedCopy)
  {
    goto LABEL_22;
  }

LABEL_58:

LABEL_22:
  v28 = sub_1A82C323C();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);

  if (v29)
  {
    v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31);
    if (objc_msgSend_count(insertedCopy, v33, v34))
    {
      v37 = sub_1A82C323C();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v97 = insertedCopy;
        _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "\tinserted: %@", buf, 0xCu);
      }

      objc_msgSend_addObject_(v32, v38, insertedCopy);
    }

    if (objc_msgSend_count(removedCopy, v35, v36, v92))
    {
      v41 = sub_1A82C323C();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v97 = removedCopy;
        _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "\tremoved: %@", buf, 0xCu);
      }

      objc_msgSend_addObject_(v32, v42, removedCopy);
    }

    if (objc_msgSend_count(v93, v39, v40))
    {
      v45 = sub_1A82C323C();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v97 = v93;
        _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "\treload: %@", buf, 0xCu);
      }

      objc_msgSend_addObject_(v32, v46, v93);
    }

    if (objc_msgSend_count(regenerateCopy, v43, v44))
    {
      v49 = sub_1A82C323C();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v97 = regenerateCopy;
        _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "\tregenerate: %@", buf, 0xCu);
      }

      objc_msgSend_addObject_(v32, v50, regenerateCopy);
    }

    if (objc_msgSend_count(insertedCopy, v47, v48) || objc_msgSend_count(removedCopy, v51, v52) || !objc_msgSend_count(v93, v51, v53) && !objc_msgSend_count(regenerateCopy, v90, v91))
    {
      v56 = objc_msgSend__chatItemLogSummaryForChatItems_withUpdates_(self, v51, itemsCopy, v32);
      if (v56)
      {
        v57 = objc_msgSend_count(itemsCopy, v54, v55);
        v59 = objc_msgSend__loggingRangeForUpdates_chatItemsCount_(self, v58, v32, v57);
        v61 = v60;
        v62 = sub_1A82C323C();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          v102.location = v59;
          v102.length = v61;
          v63 = NSStringFromRange(v102);
          *buf = 138412290;
          v97 = v63;
          _os_log_impl(&dword_1A823F000, v62, OS_LOG_TYPE_INFO, "↱ chatItems range before update:\n %@", buf, 0xCu);
        }

        v64 = sub_1A82C323C();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v67 = MEMORY[0x1E696AD98];
          v68 = objc_msgSend_count(itemsCopy, v65, v66);
          v70 = objc_msgSend_numberWithUnsignedInteger_(v67, v69, v68);
          *buf = 138412546;
          v97 = v70;
          v98 = 2112;
          v99 = v56;
          _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "↱ %@ chatItems before update:\n %@", buf, 0x16u);
        }

        selfCopy3 = self;
      }

      v73 = objc_msgSend__chatItemLogSummaryForChatItems_withUpdates_(selfCopy3, v54, chatItemsCopy, v32);
      if (v73)
      {
        v74 = objc_msgSend_count(chatItemsCopy, v71, v72);
        v76 = objc_msgSend__loggingRangeForUpdates_chatItemsCount_(selfCopy3, v75, v32, v74);
        v78 = v77;
        v79 = sub_1A82C323C();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v103.location = v76;
          v103.length = v78;
          v80 = NSStringFromRange(v103);
          *buf = 138412290;
          v97 = v80;
          _os_log_impl(&dword_1A823F000, v79, OS_LOG_TYPE_INFO, "↳ chatItems range after update:\n %@", buf, 0xCu);
        }

        v81 = sub_1A82C323C();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          v84 = MEMORY[0x1E696AD98];
          v85 = objc_msgSend_count(chatItemsCopy, v82, v83);
          v87 = objc_msgSend_numberWithUnsignedInteger_(v84, v86, v85);
          *buf = 138412546;
          v97 = v87;
          v98 = 2112;
          v99 = v73;
          _os_log_impl(&dword_1A823F000, v81, OS_LOG_TYPE_INFO, "↳ %@ chatItems after update:\n %@", buf, 0x16u);
        }

        v26 = v93;
        selfCopy3 = self;
      }
    }
  }

  v88 = v92;
  objc_msgSend__postNotification_userInfo_(selfCopy3, v30, @"__kIMChatItemsDidChangeNotification", v92, v92);

  v89 = *MEMORY[0x1E69E9840];
}

- (void)_handleMessageGUIDDeletions:(id)deletions
{
  v42 = *MEMORY[0x1E69E9840];
  deletionsCopy = deletions;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v39 = deletionsCopy;
      v40 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Handle deleted messages: %@  in chat: %@", buf, 0x16u);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = deletionsCopy;
  v8 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v37, 16);
  if (v10)
  {
    v11 = *v33;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = objc_msgSend__itemForGUID_(self, v9, *(*(&v32 + 1) + 8 * v12));
        if (v13)
        {
          if (v8 || (v8 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
          {
            CFArrayAppendValue(v8, v13);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v32, v37, 16);
    }

    while (v10);
  }

  if (objc_msgSend_count(v8, v14, v15))
  {
    objc_msgSend__updateRepliesIfNecessaryWithRemovedItems_threadIdentifiersOfRemovedParts_(self, v16, v8, 0);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v8;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v28, v36, 16);
  if (v20)
  {
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v17);
        }

        objc_msgSend__removeItem_(self, v19, *(*(&v28 + 1) + 8 * v22++), v28);
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v28, v36, 16);
    }

    while (v20);
  }

  if (!objc_msgSend_messageCount(self, v23, v24))
  {
    v26 = objc_msgSend_loadMessagesBeforeDate_limit_loadImmediately_(self, v25, 0, 1, 1);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (unint64_t)paymentTypeForMessage:(id)message
{
  v25 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = IMExtensionPayloadUnarchivingClasses();
  v5 = objc_alloc(MEMORY[0x1E696ACD0]);
  v8 = objc_msgSend_payloadData(messageCopy, v6, v7);
  v22 = 0;
  v10 = objc_msgSend_initForReadingFromData_error_(v5, v9, v8, &v22);
  v11 = v22;

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend__enableStrictSecureDecodingMode(v10, v12, v13);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "strict-decoding 008 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v15 = objc_msgSend_decodeObjectOfClasses_forKey_(v10, v12, v4, *MEMORY[0x1E696A508]);
  if (v11 && IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v11;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Failed to unarchive message payload data. Error: %@", buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = objc_msgSend_objectForKey_(v15, v17, *MEMORY[0x1E69A6F10]);
    if (qword_1EB2EA358 != -1)
    {
      sub_1A84E13AC();
    }

    if (off_1EB2EA350)
    {
      v19 = off_1EB2EA350(v18);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)hasSurfRequestNotFromMe:(id)me
{
  meCopy = me;
  if ((objc_msgSend_isFromMe(meCopy, v5, v6) & 1) != 0 || (objc_msgSend_balloonBundleID(meCopy, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_containsString_(v9, v10, *MEMORY[0x1E69A6A38]), v9, !v11))
  {
    hasSurfRequestForPaymentType = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Checking for request type in incoming SURF message for spam filtering", v18, 2u);
      }
    }

    v14 = objc_msgSend_paymentTypeForMessage_(self, v12, meCopy);
    hasSurfRequestForPaymentType = objc_msgSend_hasSurfRequestForPaymentType_(self, v15, v14);
  }

  return hasSurfRequestForPaymentType;
}

- (void)_fixSendingItemDateAndSortID:(id)d
{
  v111 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = objc_msgSend_guid(dCopy, v5, v6);
  v9 = objc_msgSend__itemForGUID_(self, v8, v7);

  if (objc_msgSend__shouldPinUnsentMessagesToBottom(self, v10, v11))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_hasEditedParts(dCopy, v14, v15))
    {
      v16 = objc_msgSend_flags(dCopy, v14, v15);
      objc_msgSend_setFlags_(dCopy, v17, v16 | 0x8000);
    }

    if (v9 && objc_msgSend_unsentIsFromMeItem(v9, v14, v15) && (objc_msgSend_unsentIsFromMeItem(dCopy, v14, v15) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(v103) = 0;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "We have an unsent message that has now been sent, so we want to assign it a sortID", &v103, 2u);
        }
      }

      objc_msgSend__setSortID_(self, v18, dCopy);
    }

    v20 = objc_msgSend__items(self, v14, v15);
    v23 = objc_msgSend_lastObject(v20, v21, v22);

    if (objc_msgSend_unsentIsFromMeItem(v23, v24, v25) && !((v9 != 0) | objc_msgSend_isFromMe(dCopy, v26, v27) & 1))
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          LOWORD(v103) = 0;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "The last item in the transcript is an unsent message and we are receiving an incoming message, we should display the progress bar", &v103, 2u);
        }
      }

      objc_msgSend_setStartSendProgressImmediately_(self->_sendProgress, v28, 1);
    }
  }

  else if (v9)
  {
    if (objc_msgSend_isFromMe(dCopy, v12, v13))
    {
      v32 = objc_msgSend_clientSendTime(v9, v30, v31);
      objc_msgSend_setClientSendTime_(dCopy, v33, v32);

      v36 = objc_msgSend_time(v9, v34, v35);
      objc_msgSend_setTime_(dCopy, v37, v36);

      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v41 = MEMORY[0x1E696AD98];
          v42 = objc_msgSend_time(dCopy, v39, v40);
          objc_msgSend_timeIntervalSinceReferenceDate(v42, v43, v44);
          v47 = objc_msgSend_numberWithDouble_(v41, v45, v46);
          v103 = 138412290;
          v104 = v47;
          _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Fixing message time to be found item's time %@", &v103, 0xCu);
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isTypingMessage = objc_msgSend_isTypingMessage(v9, v48, v49);
    }

    else
    {
      isTypingMessage = 0;
    }

    objc_opt_class();
    v68 = (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isTypingMessage(v9, v64, v65) & 1) == 0 && objc_msgSend_sortID(v9, v66, v67) == 0;
    v69 = IMOSLoggingEnabled();
    if ((isTypingMessage | v68))
    {
      if (v69)
      {
        v72 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v73 = @"NO";
          if (isTypingMessage)
          {
            v74 = @"YES";
          }

          else
          {
            v74 = @"NO";
          }

          if (v68)
          {
            v73 = @"YES";
          }

          v103 = 138412546;
          v104 = v74;
          v105 = 2112;
          v106 = v73;
          _os_log_impl(&dword_1A823F000, v72, OS_LOG_TYPE_INFO, "We have a typing indicator or the sort id for an existing item is 0, so resetting {itemIsTyping: %@ nonTypingZero %@}", &v103, 0x16u);
        }
      }

      objc_msgSend__setSortID_(self, v70, dCopy);
    }

    else
    {
      if (v69)
      {
        v75 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          v78 = MEMORY[0x1E696AD98];
          v79 = objc_msgSend_messageID(dCopy, v76, v77);
          v81 = objc_msgSend_numberWithLongLong_(v78, v80, v79);
          v82 = MEMORY[0x1E696AD98];
          v85 = objc_msgSend_sortID(dCopy, v83, v84);
          v87 = objc_msgSend_numberWithUnsignedInteger_(v82, v86, v85);
          v88 = MEMORY[0x1E696AD98];
          v91 = objc_msgSend_messageID(v9, v89, v90);
          v93 = objc_msgSend_numberWithLongLong_(v88, v92, v91);
          v94 = MEMORY[0x1E696AD98];
          v97 = objc_msgSend_sortID(v9, v95, v96);
          v99 = objc_msgSend_numberWithUnsignedInteger_(v94, v98, v97);
          v103 = 138413058;
          v104 = v81;
          v105 = 2112;
          v106 = v87;
          v107 = 2112;
          v108 = v93;
          v109 = 2112;
          v110 = v99;
          _os_log_impl(&dword_1A823F000, v75, OS_LOG_TYPE_INFO, "Need to transfer sort id over from previous item message mid %@ sid %@ item mid %@ sid %@", &v103, 0x2Au);
        }
      }

      v100 = objc_msgSend_sortID(v9, v70, v71);
      objc_msgSend_setSortID_(dCopy, v101, v100);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isTypingMessage(dCopy, v51, v52))
    {
      if (IMOSLoggingEnabled())
      {
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v57 = MEMORY[0x1E696AD98];
          v58 = objc_msgSend_messageID(dCopy, v55, v56);
          v60 = objc_msgSend_numberWithLongLong_(v57, v59, v58);
          v63 = objc_msgSend_guid(dCopy, v61, v62);
          v103 = 138412546;
          v104 = v60;
          v105 = 2112;
          v106 = v63;
          _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_INFO, "we have a typing indicator so setting sortID 0 message id %@ message guid %@", &v103, 0x16u);
        }
      }

      objc_msgSend_setSortID_(dCopy, v53, 0);
    }

    else
    {
      objc_msgSend__setSortID_(self, v51, dCopy);
    }
  }

  v102 = *MEMORY[0x1E69E9840];
}

- (void)_persistSortIDFromReplacedItem:(id)item toItem:(id)toItem
{
  v25 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  toItemCopy = toItem;
  if (itemCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = toItemCopy;
      if (objc_msgSend_hasEditedParts(v7, v8, v9))
      {
        v12 = objc_msgSend_sortID(itemCopy, v10, v11);
        if (v12)
        {
          v15 = v12;
          v16 = objc_msgSend_sortID(v7, v13, v14);
          v17 = IMOSLoggingEnabled();
          if (v16)
          {
            if (v17)
            {
              v19 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v23 = 134217984;
                v24 = v16;
                _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Not updating sortID of edited message item, the message already has a sort ID of %ld", &v23, 0xCu);
              }
            }
          }

          else
          {
            if (v17)
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v23 = 134217984;
                v24 = v15;
                _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Updating sortID of received edited message to %ld, to match existing sortID in transcript", &v23, 0xCu);
              }
            }

            objc_msgSend_setSortID_(v7, v18, v15);
          }
        }

        else
        {
          v20 = IMLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_1A84E13D4();
          }
        }
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_persistThreadOriginatorReplyCountsByPartFromReplacedItemIfNecessary:(id)necessary toItem:(id)item
{
  necessaryCopy = necessary;
  itemCopy = item;
  if (necessaryCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = itemCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = necessaryCopy;
        v11 = objc_msgSend_threadOriginator(v7, v9, v10);
        v14 = objc_msgSend_replyCountsByPart(v11, v12, v13);

        v17 = objc_msgSend_threadOriginator(v8, v15, v16);

        v20 = objc_msgSend_replyCountsByPart(v17, v18, v19);

        if ((objc_msgSend_isSent(v7, v21, v22) & 1) == 0 && (objc_msgSend_isEqual_(v20, v23, v14) & 1) == 0)
        {
          v26 = objc_msgSend_threadOriginator(v7, v24, v25);
          objc_msgSend_setReplyCountsByPart_(v26, v27, v20);
        }
      }
    }
  }
}

- (BOOL)_itemsAreRelayItemsFromMeWithServiceSwitch:(id)switch otherItem:(id)item
{
  switchCopy = switch;
  itemCopy = item;
  if (objc_msgSend_isFromMe(switchCopy, v8, v9) && objc_msgSend_isFromMe(itemCopy, v10, v11))
  {
    v14 = objc_msgSend_service(switchCopy, v12, v13);
    v16 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v15, v14);
    if (!objc_msgSend_supportsRelay(v16, v17, v18))
    {
      LOBYTE(v44) = 0;
LABEL_11:

      goto LABEL_12;
    }

    v21 = objc_msgSend_service(itemCopy, v19, v20);
    v23 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v22, v21);
    if (!objc_msgSend_supportsRelay(v23, v24, v25))
    {
      LOBYTE(v44) = 0;
      goto LABEL_10;
    }

    v28 = objc_msgSend_account(self, v26, v27);
    v31 = objc_msgSend_service(v28, v29, v30);
    v34 = objc_msgSend_supportsRelay(v31, v32, v33);

    if (v34)
    {
      v14 = objc_msgSend_service(switchCopy, v35, v36);
      v16 = objc_msgSend_account(self, v37, v38);
      v21 = objc_msgSend_service(v16, v39, v40);
      v23 = objc_msgSend_internalName(v21, v41, v42);
      v44 = objc_msgSend_isEqualToString_(v14, v43, v23) ^ 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  LOBYTE(v44) = 0;
LABEL_12:

  return v44;
}

- (void)_setStartSendProgressImmediatelyIfNecessary
{
  if (objc_msgSend__shouldPinUnsentMessagesToBottom(self, a2, v2))
  {
    v6 = objc_msgSend__items(self, v4, v5);
    objc_msgSend_assignSortIDsToItems_shouldRecalculateSortIDForAllMessages_(self, v7, v6, 0);

    if (objc_msgSend_startSendProgressImmediately(self->_sendProgress, v8, v9))
    {
      v10 = objc_msgSend__items(self, v4, v5);
      v13 = objc_msgSend_lastObject(v10, v11, v12);
      v16 = objc_msgSend_unsentIsFromMeItem(v13, v14, v15);

      if ((v16 & 1) == 0)
      {
        objc_msgSend_setStartSendProgressImmediately_(self->_sendProgress, v4, 0);
      }
    }
  }

  if (objc_msgSend_isStewieChat(self, v4, v5))
  {
    objc_msgSend_setStartSendProgressImmediately_(self->_sendProgress, v17, 1);
  }

  if (objc_msgSend__isSatelliteServiceActive(self, v17, v18))
  {
    sendProgress = self->_sendProgress;

    objc_msgSend_setStartSendProgressImmediately_(sendProgress, v19, 1);
  }
}

- (BOOL)_isSatelliteServiceActive
{
  v4 = objc_msgSend_sharedInstance(IMChorosMonitor, a2, v2);
  isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v4, v5, v6);

  if (!isSatelliteConnectionActive)
  {
    return 0;
  }

  v10 = objc_msgSend_account(self, v8, v9);
  v13 = objc_msgSend_service(v10, v11, v12);
  v18 = objc_msgSend_iMessageLiteService(IMServiceImpl, v14, v15);
  if (v13 == v18)
  {
    v26 = 1;
  }

  else
  {
    v19 = objc_msgSend_account(self, v16, v17);
    v22 = objc_msgSend_service(v19, v20, v21);
    v25 = objc_msgSend_satelliteSMSService(IMServiceImpl, v23, v24);
    v26 = v22 == v25;
  }

  return v26;
}

- (void)_participants:(id)_participants statusChanged:(int)changed postNotification:(BOOL)notification
{
  v80 = *MEMORY[0x1E69E9840];
  _participantsCopy = _participants;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v76 = 2112;
      v77 = _participantsCopy;
      v78 = 1024;
      changedCopy = changed;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@  handles: %@  status: %d", buf, 0x1Cu);
    }
  }

  v66 = sub_1A8251EAC(changed);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = _participantsCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v67, v73, 16);
  if (!v10)
  {

    v61 = 0;
    v46 = 0;
    v11 = 0;
    goto LABEL_52;
  }

  v60 = 0;
  v61 = 0;
  v11 = 0;
  v62 = 0;
  v12 = *v68;
  v63 = 0;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v68 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v67 + 1) + 8 * i);
      if (objc_msgSend_stateForParticipant_(self, v9, v14) != v66)
      {
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        objc_msgSend_addObject_(v11, v15, v14);
        v63 = 1;
      }

      if (changed == 2)
      {
        participantStates = self->_participantStates;
        v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v15, v66);
        v21 = objc_msgSend_guid(v14, v19, v20);
        objc_msgSend_setObject_forKey_(participantStates, v22, v18, v21);

        if ((objc_msgSend_canHaveMultipleParticipants(self, v23, v24) & 1) != 0 && (objc_msgSend_containsObject_(self->_participants, v9, v14) & 1) == 0)
        {
          v27 = objc_msgSend_mutableCopy(self->_participants, v9, v25);
          if (!v27)
          {
            v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          objc_msgSend_addObject_(v27, v26, v14);
          objc_storeStrong(&self->_participants, v27);
          v29 = v61;
          if (!v61)
          {
            v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v61 = v29;
          }

LABEL_27:
          objc_msgSend_addObject_(v29, v28, v14);

          v62 = 1;
          continue;
        }
      }

      else if ((((changed - 3) < 3) & objc_msgSend_canHaveMultipleParticipants(self, v15, v16)) != 0 && objc_msgSend_containsObject_(self->_participants, v9, v14))
      {
        v31 = self->_participantStates;
        v32 = objc_msgSend_guid(v14, v9, v30);
        objc_msgSend_removeObjectForKey_(v31, v33, v32);

        v27 = objc_msgSend_mutableCopy(self->_participants, v34, v35);
        if (!v27)
        {
          v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        objc_msgSend_removeObjectIdenticalTo_(v27, v36, v14);
        objc_storeStrong(&self->_participants, v27);
        v29 = v60;
        if (!v60)
        {
          v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v60 = v29;
        }

        goto LABEL_27;
      }
    }

    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v67, v73, 16);
  }

  while (v10);

  if (v62)
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_DEBUG, "chat: %@ has participants set changed. Refresh service for sending...", buf, 0xCu);
      }
    }

    objc_msgSend_refreshServiceForSending(self, v39, v40);
  }

  if (!notification)
  {
    goto LABEL_47;
  }

  if (v63)
  {
    v71 = @"__kIMChatValueKey";
    v42 = objc_msgSend_copy(v11, v37, v38);
    v72 = v42;
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, &v72, &v71, 1);
    objc_msgSend__postNotification_userInfo_(self, v45, @"__kIMChatParticipantStateDidChangeNotification", v44);

    if ((v62 & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_42:
    v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (objc_msgSend_count(v61, v48, v49))
    {
      v52 = objc_msgSend_copy(v61, v50, v51);
      objc_msgSend_setObject_forKey_(v47, v53, v52, @"__kIMChatParticipantsDidChangeAddedParticipantsKey");
    }

    if (objc_msgSend_count(v60, v50, v51))
    {
      v56 = objc_msgSend_copy(v60, v54, v55);
      objc_msgSend_setObject_forKey_(v47, v57, v56, @"__kIMChatParticipantsDidChangeRemovedParticipantsKey");
    }

    objc_msgSend__postNotification_userInfo_(self, v54, @"__kIMChatParticipantsDidChangeNotification", v47);

LABEL_47:
    if (v63)
    {
LABEL_48:
      if (v66 == 32)
      {
        objc_msgSend_invalidateSpamIndicatorCachedValues(self, v37, v38);
      }

      else
      {
        objc_msgSend_invalidateSpamIndicatorCachedValuesIfNeeded(self, v37, v38);
      }
    }
  }

  else if (v62)
  {
    goto LABEL_42;
  }

  v46 = v60;
LABEL_52:

  v58 = *MEMORY[0x1E69E9840];
}

- (void)_showErrorMessage:(id)message
{
  v4 = MEMORY[0x1E695DF20];
  messageCopy = message;
  v6 = [v4 alloc];
  v9 = objc_msgSend_initWithObjectsAndKeys_(v6, v7, messageCopy, @"__kIMChatValueKey", 0);

  objc_msgSend__postNotification_userInfo_(self, v8, @"__kIMChatErrorDidOccurNotification", v9);
}

- (void)endListeningToAttributionChanges
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v5, v4, self, @"__kIMBalloonPluginAttributionChangedNotification", 0);
}

- (void)beginListeningToAttributionChanges
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = objc_msgSend_chatItems(self, a2, v2, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v26, v30, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v9 = *MEMORY[0x1E69A6A20];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v11;
          v16 = objc_msgSend_bundleID(v13, v14, v15);
          v18 = objc_msgSend_containsString_(v16, v17, v9);

          if (!v18)
          {
            objc_msgSend__handleBalloonPluginAttributionChanged(self, v19, v20);

            goto LABEL_13;
          }
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v12, &v26, v30, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v23 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v21, v22);
  objc_msgSend_addObserver_selector_name_object_(v23, v24, self, sel__handleBalloonPluginAttributionChanged, @"__kIMBalloonPluginAttributionChangedNotification", 0);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_engroupParticipantsUpdated
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Posting IMChatEngroupFinishedUpdatingNotification from IMChat", v5, 2u);
    }
  }

  objc_msgSend__postNotification_userInfo_(self, v3, @"__kIMChatEngroupFinishedUpdatingNotification", 0);
}

- (void)_validateChatRegistrationWithRegistry
{
  v8 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isUnregistered(self, a2, v2) && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "***WARNING*** Attempting to use a chat that has been unregistered: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)participantsWithState:(unint64_t)state
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF70];
  v6 = objc_msgSend_count(self->_participants, a2, state);
  v8 = objc_msgSend_arrayWithCapacity_(v5, v7, v6);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = self->_participants;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v28, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = objc_msgSend_stateForParticipant_(self, v12, v16, v24);
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        if ((v18 & state) != 0)
        {
          objc_msgSend_addObject_(v8, v12, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v24, v28, 16);
    }

    while (v13);
  }

  v21 = objc_msgSend_copy(v8, v19, v20);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (unint64_t)stateForParticipant:(id)participant
{
  participantCopy = participant;
  if (self->_style == 45 && (objc_msgSend_participants(self, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend_containsObject_(v7, v8, participantCopy), v7, (v9 & 1) != 0))
  {
    v10 = 16;
  }

  else
  {
    participantStates = self->_participantStates;
    v12 = objc_msgSend_guid(participantCopy, v4, v5);
    v14 = objc_msgSend_objectForKey_(participantStates, v13, v12);
    v10 = objc_msgSend_integerValue(v14, v15, v16);
  }

  return v10;
}

- (void)_clearCachedIdentifier
{
  identifier = self->_identifier;
  self->_identifier = 0;

  objc_msgSend_setGroupChatIdentifierUppercase_(self, v4, 0);
}

- (unint64_t)overallChatStatus
{
  if (objc_msgSend_chatStyle(self, a2, v2) != 45)
  {
    return 1;
  }

  v6 = objc_msgSend_recipient(self, v4, v5);
  v9 = objc_msgSend_status(v6, v7, v8);

  return v9;
}

- (void)setRoomName:(id)name
{
  nameCopy = name;
  if (self->_roomName != nameCopy && self->_style != 45)
  {
    v8 = nameCopy;
    objc_msgSend__clearCachedIdentifier(self, v6, v7);
    objc_storeStrong(&self->_roomName, name);
    nameCopy = v8;
  }
}

- (void)__setChatIdentifierForGroups:(id)groups
{
  objc_storeStrong(&self->__chatIdentifierForGroups, groups);

  objc_msgSend__clearCachedIdentifier(self, v4, v5);
}

- (void)_setDisplayName:(id)name
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = IMSharedHelperTruncatedGroupDisplayName();
  displayName = self->_displayName;
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    if (self->_style != 45 || (objc_msgSend_isBusinessChat(self, v6, v7) & 1) != 0 || (objc_msgSend_isStewieChat(self, v6, v8) & 1) != 0 || (objc_msgSend_rcsService(IMService, v6, v9), v10 = objc_claimAutoreleasedReturnValue(), hasMessageFromService = objc_msgSend_hasMessageFromService_(self, v11, v10), v10, hasMessageFromService))
    {
      v13 = self->_displayName;
      if (!v13)
      {
        v14 = objc_msgSend_trimmedString(v4, v6, 0);
        v17 = objc_msgSend_length(v14, v15, v16);

        if (!v17)
        {
          goto LABEL_17;
        }

        v13 = self->_displayName;
      }

      if ((objc_msgSend_isEqualToString_(v4, v6, v13) & 1) == 0)
      {
        v20 = MEMORY[0x1E69A7F28];
        v21 = objc_msgSend_businessHandle(self, v18, v19);
        v24 = objc_msgSend_ID(v21, v22, v23);
        v26 = objc_msgSend_placeholderNameForBrandURI_(v20, v25, v24);
        isEqualToString = objc_msgSend_isEqualToString_(v4, v27, v26);

        if (!isEqualToString || (objc_msgSend_isBusinessChat(self, v29, v30) & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = self->_displayName;
              v41 = 138412546;
              v42 = v34;
              v43 = 2112;
              v44 = v4;
              _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "Changing display name from %@ to %@", &v41, 0x16u);
            }
          }

          objc_msgSend__clearCachedIdentifier(self, v31, v32);
          objc_storeStrong(&self->_displayName, v4);
          v37 = objc_msgSend_chatRegistry(self, v35, v36);
          objc_msgSend__chat_updateDisplayName_(v37, v38, self, v4);

          objc_msgSend__postNotification_userInfo_(self, v39, @"__kIMChatDisplayNameChangedNotification", 0);
        }
      }
    }
  }

LABEL_17:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_updateDisplayName:(id)name sender:(id)sender
{
  v37 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  senderCopy = sender;
  displayName = self->_displayName;
  if (IMSharedHelperAreObjectsLogicallySame())
  {
    goto LABEL_30;
  }

  if (self->_style == 45 && (objc_msgSend_isStewieChat(self, v10, v11) & 1) == 0)
  {
    v14 = objc_msgSend_rcsService(IMService, v12, v13);
    hasMessageFromService = objc_msgSend_hasMessageFromService_(self, v15, v14);

    if (!hasMessageFromService)
    {
      goto LABEL_30;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = self->_displayName;
      *buf = 138412546;
      v34 = v20;
      v35 = 2112;
      v36 = nameCopy;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Updating display name from %@ to %@", buf, 0x16u);
    }
  }

  objc_msgSend__clearCachedIdentifier(self, v17, v18);
  v21 = self->_displayName;
  objc_storeStrong(&self->_displayName, name);
  if (!v21)
  {
    v24 = 0;
    if (nameCopy)
    {
      goto LABEL_11;
    }

LABEL_13:
    v25 = 0;
    goto LABEL_14;
  }

  v24 = objc_msgSend_length(v21, v22, v23) == 0;
  if (!nameCopy)
  {
    goto LABEL_13;
  }

LABEL_11:
  v25 = objc_msgSend_length(nameCopy, v22, v23) == 0;
LABEL_14:
  if (nameCopy)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  if (v21)
  {
    v25 = 0;
  }

  if (v26 || v25)
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Don't send IMChatDisplayNameChangedNotification since the name hasn't meaningfully changed.", buf, 2u);
      }
    }
  }

  else
  {
    if (senderCopy)
    {
      v31 = @"sender";
      v32 = senderCopy;
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, &v32, &v31, 1);
      objc_msgSend__postNotification_userInfo_(self, v28, @"__kIMChatDisplayNameChangedNotification", v27);
    }

    else
    {
      v27 = 0;
      objc_msgSend__postNotification_userInfo_(self, v22, @"__kIMChatDisplayNameChangedNotification", 0);
    }
  }

LABEL_30:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)_updateEngramID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (objc_msgSend_length(dCopy, v5, v6))
  {
    v9 = objc_msgSend___im_engramDataRepresentation(dCopy, v7, v8);
    if (objc_msgSend_isEqualToData_(self->_engramID, v10, v9))
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "EngramIDs are equal, not updating", &v14, 2u);
        }

LABEL_11:
      }
    }

    else
    {
      objc_storeStrong(&self->_engramID, v9);
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = dCopy;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Updating engramID string version: %@", &v14, 0xCu);
        }

        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  engramID = self->_engramID;
  self->_engramID = 0;

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)setDisplayName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      displayName = self->_displayName;
      v12 = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = displayName;
      v16 = 2112;
      v17 = nameCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "[%@]Request to change display name from %@ to %@", &v12, 0x20u);
    }
  }

  if (objc_msgSend_joinState(self, v5, v6))
  {
    objc_msgSend__setDisplayName_(self, v9, nameCopy);
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Not changing display name because we're no longer in the chat", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)displayNameWithRawAddress:(BOOL)address isSpamFilteringEnabled:(BOOL)enabled
{
  v4 = 256;
  if (!enabled)
  {
    v4 = 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_displayNameWithDescriptor_, v4 | address);
}

- (id)attributedDisplayNameWithIsSpamFilteringEnabled:(BOOL)enabled withBlockingAttachment:(id)attachment
{
  if (enabled)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x1EEE66B58](self, sel__attributedDisplayNameWithDescriptor_withBlockingAttachment_, v4);
}

- (id)_attributedDisplayNameWithDescriptor:(IMChatDisplayNameDescriptor)descriptor withBlockingAttachment:(id)attachment
{
  v91 = *&descriptor.var0;
  v124[1] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v5 = objc_alloc(MEMORY[0x1E696AEB0]);
  v93 = objc_msgSend_initWithKey_ascending_(v5, v6, @"isContact", 0);
  v124[0] = v93;
  v95 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v124, 1);
  v10 = objc_msgSend_participants(self, v8, v9);
  v94 = objc_msgSend_sortedArrayUsingDescriptors_(v10, v11, v95);

  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = sub_1A83232EC;
  v107[3] = &unk_1E78127C8;
  v107[4] = self;
  v92 = attachmentCopy;
  v108 = v92;
  v96 = objc_msgSend___imArrayByApplyingBlock_(v94, v12, v107);
  v102 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v15 = objc_msgSend_count(v96, v13, v14);
  if (v15)
  {
    v97 = v15 - 1;
    if (v15 == 1)
    {
      obja = objc_msgSend_firstObject(v96, v16, v17);
      v20 = objc_msgSend_mutableCopy(obja, v18, v19);

      v102 = v20;
    }

    else
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      obj = v96;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v103, v123, 16);
      if (v22)
      {
        v23 = 0;
        v24 = *v104;
        do
        {
          v25 = 0;
          v26 = v97 - v23;
          v99 = v23;
          v27 = -v23;
          do
          {
            if (*v104 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v103 + 1) + 8 * v25);
            if (v27 == v25)
            {
              v29 = objc_alloc(MEMORY[0x1E696AAB0]);
              v30 = IMSharedUtilitiesFrameworkBundle();
              v32 = objc_msgSend_localizedStringForKey_value_table_(v30, v31, @"PARTICIPANT_ADDRESS_FIRST_ITEM", &stru_1F1B76F98, @"IMSharedUtilities");
              v34 = objc_msgSend_initWithString_(v29, v33, v32);
            }

            else
            {
              v35 = objc_alloc(MEMORY[0x1E696AAB0]);
              v36 = IMSharedUtilitiesFrameworkBundle();
              v30 = v36;
              if (v26 == v25)
              {
                objc_msgSend_localizedStringForKey_value_table_(v36, v37, @"PARTICIPANT_ADDRESS_FINAL_ITEM", &stru_1F1B76F98, @"IMSharedUtilities");
              }

              else
              {
                objc_msgSend_localizedStringForKey_value_table_(v36, v37, @"PARTICIPANT_ADDRESS_NON_FINAL_ITEM", &stru_1F1B76F98, @"IMSharedUtilities");
              }
              v32 = ;
              v34 = objc_msgSend_initWithString_(v35, v38, v32);
            }

            v39 = v34;

            v41 = objc_msgSend_localizedAttributedStringWithFormat_(MEMORY[0x1E696AAB0], v40, v39, v28);
            objc_msgSend_appendAttributedString_(v102, v42, v41);

            ++v25;
          }

          while (v22 != v25);
          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v103, v123, 16);
          v23 = v99 + v22;
          v22 = v44;
        }

        while (v44);
      }
    }
  }

  v45 = objc_msgSend_valueForChatProperty_(self, v16, @"wasAutoDetectedForSpam");
  v48 = objc_msgSend_BOOLValue(v45, v46, v47);

  v50 = objc_msgSend_valueForChatProperty_(self, v49, @"wasDetectedAsSMSSpam");
  if (objc_msgSend_intValue(v50, v51, v52))
  {
    v54 = 1;
  }

  else
  {
    v55 = objc_msgSend_valueForChatProperty_(self, v53, @"SMSCategory");
    v54 = objc_msgSend_intValue(v55, v56, v57) == 1;
  }

  isFiltered = objc_msgSend_isFiltered(self, v58, v59);
  if ((objc_msgSend_isRecovered(self, v61, v62) & 1) == 0)
  {
    v63 = isFiltered ? v48 : 0;
    v64 = (v91 & 0x100) == 0 && v54;
    if ((v63 & 1) != 0 || v64)
    {
      v65 = objc_alloc(MEMORY[0x1E696AAB0]);
      v66 = IMSharedUtilitiesFrameworkBundle();
      v68 = objc_msgSend_localizedStringForKey_value_table_(v66, v67, @"MAYBE_JUNK", &stru_1F1B76F98, @"IMSharedUtilities");
      v70 = objc_msgSend_initWithString_(v65, v69, v68);

      v72 = objc_msgSend_localizedAttributedStringWithFormat_(MEMORY[0x1E696AAB0], v71, v70, v102);
      objc_msgSend_appendAttributedString_(v102, v73, v72);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v74 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v77 = objc_msgSend_guid(self, v75, v76);
      v80 = objc_msgSend_string(v102, v78, v79);
      isRecovered = objc_msgSend_isRecovered(self, v81, v82);
      v84 = @"NO";
      *buf = 138413826;
      v110 = v77;
      if (v54)
      {
        v85 = @"YES";
      }

      else
      {
        v85 = @"NO";
      }

      v111 = 2112;
      v112 = v80;
      if ((v91 & 0x100) != 0)
      {
        v86 = @"YES";
      }

      else
      {
        v86 = @"NO";
      }

      v113 = 2112;
      if (v48)
      {
        v87 = @"YES";
      }

      else
      {
        v87 = @"NO";
      }

      if (isFiltered)
      {
        v88 = @"YES";
      }

      else
      {
        v88 = @"NO";
      }

      v114 = v88;
      v115 = 2112;
      if (isRecovered)
      {
        v84 = @"YES";
      }

      v116 = v87;
      v117 = 2112;
      v118 = v86;
      v119 = 2112;
      v120 = v85;
      v121 = 2112;
      v122 = v84;
      _os_log_impl(&dword_1A823F000, v74, OS_LOG_TYPE_INFO, "Determining conversation name for chat guid: %@ name: %@  isFiltered %@ wasAutoDetectedAsSMSSpam %@ isSpamFilteringEnabled: %@ wasDetectedAsSMSSpam %@ isRecovered %@", buf, 0x48u);
    }
  }

  v89 = *MEMORY[0x1E69E9840];

  return v102;
}

- (id)displayNameWithDescriptor:(IMChatDisplayNameDescriptor)descriptor
{
  var3 = descriptor.var3;
  v4 = *&descriptor.var0;
  v80[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E696AEB0]);
  v60 = objc_msgSend_initWithKey_ascending_(v6, v7, @"isContact", 0);
  v80[0] = v60;
  v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v80, 1);
  v11 = objc_msgSend_participants(self, v9, v10);
  v61 = objc_msgSend_sortedArrayUsingDescriptors_(v11, v12, v62);

  if (v4)
  {
    v14 = objc_msgSend___imArrayByApplyingBlock_(v61, v13, &unk_1F1B6E980);
  }

  else
  {
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = sub_1A83237CC;
    v63[3] = &unk_1E78127F0;
    v63[4] = self;
    v14 = objc_msgSend___imArrayByApplyingBlock_(v61, v13, v63);
  }

  v16 = v14;
  if ((v4 & 0x10000) != 0)
  {
    objc_msgSend__participantListStringForNames_visibleNameCount_(self, v15, v14, var3);
  }

  else
  {
    objc_msgSend_getDisplayNameFromParticipantNames_(MEMORY[0x1E69A7F80], v15, v14);
  }
  v17 = ;
  v19 = objc_msgSend_valueForChatProperty_(self, v18, @"wasAutoDetectedForSpam");
  v22 = objc_msgSend_BOOLValue(v19, v20, v21);

  v24 = objc_msgSend_valueForChatProperty_(self, v23, @"wasDetectedAsSMSSpam");
  if (objc_msgSend_intValue(v24, v25, v26))
  {
    v28 = 1;
  }

  else
  {
    v29 = objc_msgSend_valueForChatProperty_(self, v27, @"SMSCategory");
    v28 = objc_msgSend_intValue(v29, v30, v31) == 1;
  }

  isFiltered = objc_msgSend_isFiltered(self, v32, v33);
  if ((objc_msgSend_isRecovered(self, v35, v36) & 1) == 0)
  {
    v37 = isFiltered ? v22 : 0;
    v38 = (v4 & 0x100) == 0 && v28;
    if ((v37 & 1) != 0 || v38)
    {
      v39 = MEMORY[0x1E696AEC0];
      v40 = IMSharedUtilitiesFrameworkBundle();
      v42 = objc_msgSend_localizedStringForKey_value_table_(v40, v41, @"MAYBE_JUNK", &stru_1F1B76F98, @"IMSharedUtilities");
      v44 = objc_msgSend_localizedStringWithFormat_(v39, v43, v42, v17);

      v17 = v44;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v48 = objc_msgSend_guid(self, v46, v47);
      isRecovered = objc_msgSend_isRecovered(self, v49, v50);
      v52 = @"NO";
      *buf = 138414082;
      v65 = v48;
      if (v28)
      {
        v53 = @"YES";
      }

      else
      {
        v53 = @"NO";
      }

      if ((v4 & 0x100) != 0)
      {
        v54 = @"YES";
      }

      else
      {
        v54 = @"NO";
      }

      if (v22)
      {
        v55 = @"YES";
      }

      else
      {
        v55 = @"NO";
      }

      if (isFiltered)
      {
        v56 = @"YES";
      }

      else
      {
        v56 = @"NO";
      }

      if (v4)
      {
        v57 = @"YES";
      }

      else
      {
        v57 = @"NO";
      }

      v69 = v57;
      v66 = 2112;
      v67 = v17;
      v68 = 2112;
      v70 = 2112;
      v71 = v56;
      if (isRecovered)
      {
        v52 = @"YES";
      }

      v72 = 2112;
      v73 = v55;
      v74 = 2112;
      v75 = v54;
      v76 = 2112;
      v77 = v53;
      v78 = 2112;
      v79 = v52;
      _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "Determining conversation name for chat guid: %@ name: %@ wantsRawAddress: %@ isFiltered %@ wasAutoDetectedAsSMSSpam %@ isSpamFilteringEnabled: %@ wasDetectedAsSMSSpam %@ isRecovered %@", buf, 0x52u);
    }
  }

  v58 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_participantListStringForNames:(id)names visibleNameCount:(int64_t)count
{
  namesCopy = names;
  if (objc_msgSend_count(namesCopy, v6, v7) >= count)
  {
    v10 = count & ~(count >> 63);
  }

  else
  {
    v10 = objc_msgSend_count(namesCopy, v8, v9);
  }

  v13 = objc_msgSend_count(namesCopy, v8, v9) - v10;
  if (v13 == 1)
  {
    v10 = objc_msgSend_count(namesCopy, v11, v12);
    v13 = 0;
  }

  v14 = objc_msgSend_subarrayWithRange_(namesCopy, v11, 0, v10);
  v15 = objc_alloc(MEMORY[0x1E695DF70]);
  v18 = objc_msgSend_initWithArray_(v15, v16, v14);
  if (v13 >= 1)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = sub_1A8361964();
    v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v21, @"N_OTHERS", &stru_1F1B76F98, @"IMCoreLocalizable");
    v24 = objc_msgSend_localizedStringWithFormat_(v19, v23, v22, v13);

    objc_msgSend_addObject_(v18, v25, v24);
  }

  v26 = objc_msgSend_localizedStringByJoiningStrings_(MEMORY[0x1E696AD08], v17, v18);

  return v26;
}

- (BOOL)_updateLastAddressedHandleID:(id)d postGeneralNotification:(BOOL)notification
{
  notificationCopy = notification;
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  lastAddressedHandleID = self->_lastAddressedHandleID;
  if (IMSharedHelperAreObjectsLogicallySame() & 1) != 0 || (objc_msgSend_isEqualToIgnoringCase_(dCopy, v9, *MEMORY[0x1E69A64C8]))
  {
    v10 = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = self->_lastAddressedHandleID;
        v17 = 138412802;
        selfCopy = self;
        v19 = 2112;
        v20 = v12;
        v21 = 2112;
        v22 = dCopy;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "[%@]Request from imagent to set client last addressed handle from %@ to %@", &v17, 0x20u);
      }
    }

    objc_storeStrong(&self->_lastAddressedHandleID, d);
    self->_senderBlackholeWarningStatus = 0;
    objc_msgSend__postNotification_userInfo_(self, v13, @"__kIMChatLastAddressedHandleChangedNotification", 0);
    if (notificationCopy)
    {
      objc_msgSend__postNotification_userInfo_(self, v14, @"__kIMChatLastAddressedInfoChangedNotification", 0);
    }

    v10 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_updateLastAddressedHandleID:(id)d lastAddressedSIMID:(id)iD
{
  iDCopy = iD;
  LODWORD(d) = objc_msgSend__updateLastAddressedHandleID_postGeneralNotification_(self, v7, d, 0);
  updated = objc_msgSend__updateLastAddressedSIMID_postGeneralNotification_(self, v8, iDCopy, 0);

  v11 = d | updated;
  if (v11 == 1)
  {
    objc_msgSend__postNotification_userInfo_(self, v10, @"__kIMChatLastAddressedInfoChangedNotification", 0);
  }

  return v11;
}

- (void)setLastAddressedHandleID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      lastAddressedHandleID = self->_lastAddressedHandleID;
      v23 = 138412802;
      selfCopy = self;
      v25 = 2112;
      v26 = lastAddressedHandleID;
      v27 = 2112;
      v28 = dCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "[%@]Request from client to update client/imagent last addressed handle from %@ to %@", &v23, 0x20u);
    }
  }

  v8 = self->_lastAddressedHandleID;
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0 && (objc_msgSend_isEqualToIgnoringCase_(dCopy, v9, *MEMORY[0x1E69A64C8]) & 1) == 0)
  {
    if ((IMSharedHelperDeviceHasMultipleSubscriptions() & 1) != 0 || self->_lastAddressedHandleID || (objc_msgSend_trimmedString(dCopy, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend_length(v12, v13, v14) == 0, v12, !v15))
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = self->_lastAddressedHandleID;
          v23 = 138412546;
          selfCopy = v17;
          v25 = 2112;
          v26 = dCopy;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Changing client last addressed handle from %@ to %@", &v23, 0x16u);
        }
      }

      objc_storeStrong(&self->_lastAddressedHandleID, d);
      self->_senderBlackholeWarningStatus = 0;
      v20 = objc_msgSend_chatRegistry(self, v18, v19);
      objc_msgSend__chat_updateLastAddressedHandle_(v20, v21, self, dCopy);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateLastAddressedSIMID:(id)d postGeneralNotification:(BOOL)notification
{
  notificationCopy = notification;
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (objc_msgSend_length(dCopy, v8, v9) && (lastAddressedHandleID = self->_lastAddressedHandleID, (IMSharedHelperAreObjectsLogicallySame() & 1) == 0))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        lastAddressedSIMID = self->_lastAddressedSIMID;
        v17 = 138412802;
        selfCopy = self;
        v19 = 2112;
        v20 = lastAddressedSIMID;
        v21 = 2112;
        v22 = dCopy;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "[%@]Request from imagent to set client last addressed sim ID from %@ to %@", &v17, 0x20u);
      }
    }

    objc_storeStrong(&self->_lastAddressedSIMID, d);
    if (notificationCopy)
    {
      objc_msgSend__postNotification_userInfo_(self, v14, @"__kIMChatLastAddressedInfoChangedNotification", 0);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)setLastAddressedSIMID:(id)d
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      lastAddressedSIMID = self->_lastAddressedSIMID;
      v26 = 138412802;
      selfCopy = self;
      v28 = 2112;
      v29 = lastAddressedSIMID;
      v30 = 2112;
      v31 = dCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "[%@]Request from client to update client/imagent last addressed sim ID from %@ to %@", &v26, 0x20u);
    }
  }

  if (objc_msgSend_length(dCopy, v6, v7))
  {
    v10 = self->_lastAddressedSIMID;
    if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
    {
      if (self->_lastAddressedSIMID || (objc_msgSend_trimmedString(dCopy, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend_length(v13, v14, v15) == 0, v13, !v16))
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = self->_lastAddressedSIMID;
            v26 = 138412546;
            selfCopy = v18;
            v28 = 2112;
            v29 = dCopy;
            _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Changing client last addressed sim ID from %@ to %@", &v26, 0x16u);
          }
        }

        objc_storeStrong(&self->_lastAddressedSIMID, d);
        objc_msgSend_fetchBrandInfoIfNecessary(self, v19, v20);
        v23 = objc_msgSend_chatRegistry(self, v21, v22);
        objc_msgSend__chat_updateLastAddressedSIMID_(v23, v24, self, dCopy);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (NSString)deviceIndependentID
{
  if (objc_msgSend_isGroupChat(self, a2, v2))
  {
    objc_msgSend_groupID(self, v4, v5);
  }

  else
  {
    objc_msgSend_persistentID(self, v4, v5);
  }
  v6 = ;

  return v6;
}

- (NSString)pinningIdentifier
{
  if (objc_msgSend_isGroupChat(self, a2, v2) && objc_msgSend_isSMS(self, v4, v5))
  {
    v6 = objc_msgSend_chatRegistry(self, v4, v5);
    v9 = objc_msgSend_participants(self, v7, v8);
    v11 = objc_msgSend__sortedParticipantIDHashForParticipants_usesPersonCentricID_(v6, v10, v9, 0);
  }

  else
  {
    v11 = objc_msgSend_deviceIndependentID(self, v4, v5);
  }

  return v11;
}

- (NSString)identityHash
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = objc_msgSend_participants(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v37, v41, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_ID(*(*(&v37 + 1) + 8 * i), v9, v10);
        if (v15)
        {
          objc_msgSend_addObject_(v3, v14, v15);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v37, v41, 16);
    }

    while (v11);
  }

  objc_msgSend_sortUsingSelector_(v3, v16, sel_compare_);
  v19 = objc_msgSend_displayName(self, v17, v18);
  if (v19)
  {
    v22 = v19;
    v23 = objc_msgSend_displayName(self, v20, v21);
    isEqualToString = objc_msgSend_isEqualToString_(v23, v24, &stru_1F1B76F98);

    if ((isEqualToString & 1) == 0)
    {
      v27 = objc_msgSend_displayName(self, v20, v26);
      objc_msgSend_addObject_(v3, v28, v27);
    }
  }

  v29 = objc_msgSend_componentsJoinedByString_(v3, v20, @",");
  v31 = objc_msgSend_dataUsingEncoding_(v29, v30, 4);
  v34 = objc_msgSend_SHA1HexString(v31, v32, v33);

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

- (NSString)roomNameWithoutSuffix
{
  roomNameWithoutSuffix = self->_roomNameWithoutSuffix;
  if (roomNameWithoutSuffix)
  {
    goto LABEL_5;
  }

  v4 = objc_msgSend_rangeOfString_(self->_roomName, a2, @"@");
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v4, v8 = &v5[v4], &v5[v4] == objc_msgSend_length(self->_roomName, v5, v6)))
  {
    roomNameWithoutSuffix = self->_roomName;
LABEL_5:
    v10 = roomNameWithoutSuffix;
    goto LABEL_6;
  }

  v12 = objc_msgSend_substringFromIndex_(self->_roomName, v9, v8);
  if (objc_msgSend_length(v12, v13, v14))
  {
    v17 = objc_msgSend_account(self, v15, v16);
    v20 = objc_msgSend_server(v17, v18, v19);

    if (objc_msgSend_length(v20, v21, v22) && (v24 = objc_msgSend_rangeOfString_(v12, v23, v20), v24 != 0x7FFFFFFFFFFFFFFFLL) && (v27 = v24, &v25[v24] == objc_msgSend_length(v12, v25, v26)))
    {
      v29 = objc_msgSend_substringToIndex_(self->_roomName, v28, v7);
      v31 = objc_msgSend_substringToIndex_(v12, v30, v27);
      if (objc_msgSend_hasSuffix_(v31, v32, @"."))
      {
        v35 = objc_msgSend_length(v31, v33, v34);
        v37 = objc_msgSend_substringToIndex_(v31, v36, v35 - 1);

        v31 = v37;
      }

      v38 = objc_msgSend_componentsSeparatedByString_(v31, v33, @".");
      v41 = objc_msgSend_count(v38, v39, v40);

      if (v41 >= 2)
      {
        v43 = objc_msgSend_stringByAppendingFormat_(v29, v42, @"@%@", v31);

        v29 = v43;
      }

      v44 = self->_roomNameWithoutSuffix;
      self->_roomNameWithoutSuffix = v29;
      v45 = v29;

      v10 = self->_roomNameWithoutSuffix;
    }

    else
    {
      v10 = self->_roomName;
    }
  }

  else
  {
    v10 = self->_roomName;
  }

LABEL_6:

  return v10;
}

- (void)acceptInvitation
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "chat: %@", &v12, 0xCu);
    }
  }

  if (objc_msgSend_joinState(self, v3, v4) != 3)
  {
    objc_msgSend__setJoinState_(self, v6, 2);
    v9 = objc_msgSend_chatRegistry(self, v7, v8);
    objc_msgSend__chat_joinWithProperties_(v9, v10, self, 0);

    self->_wasInvitationHandled = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)declineInvitation
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "chat: %@", &v9, 0xCu);
    }
  }

  v6 = objc_msgSend_chatRegistry(self, v3, v4);
  objc_msgSend__chat_declineInvitation_(v6, v7, self);

  self->_wasInvitationHandled = 1;
  v8 = *MEMORY[0x1E69E9840];
}

- (NSNumber)countOfAttachmentsNotCachedLocally
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8324D68;
  v5[3] = &unk_1E7812700;
  v5[4] = self;
  v3 = objc_msgSend__performQueryWithKey_loadImmediately_block_(self, a2, @"CountAttachmentsNotCachedLocally", 1, v5);
  return self->_countOfAttachmentsNotCachedLocally;
}

- (NSArray)attachments
{
  v15 = *MEMORY[0x1E69E9840];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A8324F4C;
  v12[3] = &unk_1E7812700;
  v12[4] = self;
  v3 = objc_msgSend__performQueryWithKey_loadImmediately_block_(self, a2, @"LoadAttachments", 1, v12);
  v4 = self->_attachments;
  objc_msgSend__setAttachments_(self, v5, 0);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_count(v4, v7, v8);
      *buf = 67109120;
      v14 = v9;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Return %d attachments", buf, 8u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type
{
  destinationsCopy = destinations;
  dCopy = d;
  v13 = objc_msgSend_chatRegistry(self, v10, v11);
  objc_msgSend__chat_cancelScheduledMessageWithGUID_destinations_cancelType_(v13, v12, self, dCopy, destinationsCopy, type);
}

- (void)editScheduledMessageItem:(id)item atPartIndex:(int64_t)index withNewPartText:(id)text newPartTranslation:(id)translation
{
  itemCopy = item;
  textCopy = text;
  translationCopy = translation;
  v14 = objc_msgSend_editedPartIndexes(itemCopy, v12, v13);
  v17 = objc_msgSend_mutableCopy(v14, v15, v16);

  if (v17)
  {
    objc_msgSend_removeIndex_(v17, v18, index);
    objc_msgSend_setEditedPartIndexes_(itemCopy, v20, v17);
  }

  v21 = objc_msgSend_failedEditPartIndexes(itemCopy, v18, v19);
  v24 = objc_msgSend_mutableCopy(v21, v22, v23);

  if (v24)
  {
    objc_msgSend_removeIndex_(v24, v25, index);
    objc_msgSend_setFailedEditPartIndexes_(itemCopy, v26, v24);
  }

  v27 = objc_msgSend_editedMessageItemWithOriginalMessageItem_editedPartIndex_newPartText_newPartTranslation_(MEMORY[0x1E69A8138], v25, itemCopy, index, textCopy, translationCopy);
  v30 = objc_msgSend_chatRegistry(self, v28, v29);
  objc_msgSend__chat_editScheduledMessageItem_previousMessageItem_partIndex_editType_(v30, v31, self, v27, itemCopy, index, 1);
}

- (void)cancelScheduledMessageItem:(id)item cancelType:(unint64_t)type
{
  itemCopy = item;
  v8 = objc_msgSend_participantsWithState_(self, v7, 16);
  v10 = objc_msgSend___imArrayByApplyingBlock_(v8, v9, &unk_1F1B6E9A0);

  if (type - 2 < 3)
  {
    goto LABEL_4;
  }

  if (type == 1)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A83252F4;
    v18[3] = &unk_1E7812818;
    v18[4] = self;
    v19 = itemCopy;
    v20 = v10;
    v21 = 1;
    objc_msgSend__updateChatItemsWithReason_block_(self, v17, @"(IMChat) Cancel scheduled message items", v18);

    goto LABEL_5;
  }

  if (!type)
  {
LABEL_4:
    v13 = objc_msgSend_guid(itemCopy, v11, v12);
    v15 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v14, v10);
    objc_msgSend_cancelScheduledMessageWithGUID_destinations_cancelType_(self, v16, v13, v15, type);
  }

LABEL_5:
}

- (void)editScheduledMessageItems:(id)items scheduleType:(unint64_t)type deliveryTime:(id)time
{
  v36 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  timeCopy = time;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = itemsCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v31, v35, 16);
  if (v14)
  {
    v15 = *v32;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_scheduleType(v17, v12, v13) == type)
        {
          v20 = objc_msgSend_time(v17, v18, v19);
          v21 = v20 == timeCopy;

          if (v21)
          {
            continue;
          }
        }

        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = sub_1A832574C;
        v25[3] = &unk_1E7812818;
        v26 = v10;
        selfCopy = self;
        typeCopy = type;
        v28 = timeCopy;
        objc_msgSend__updateChatItemsWithReason_block_(self, v23, @"Modifying scheduled time to be immediate", v25);

        goto LABEL_15;
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v31, v35, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "editScheduledMessageItems ignoring request since all items are already of the scheduleType & deliveryTime", buf, 2u);
    }
  }

LABEL_15:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)editScheduledMessageItem:(id)item scheduleType:(unint64_t)type deliveryTime:(id)time
{
  itemCopy = item;
  timeCopy = time;
  if (objc_msgSend_scheduleType(itemCopy, v10, v11) == 2 && objc_msgSend_scheduleState(itemCopy, v12, v13) == 2)
  {
    v18 = objc_msgSend_date(MEMORY[0x1E695DF00], v14, v15);
    if (type == 2)
    {
      if (timeCopy)
      {
        objc_msgSend_timeIntervalSinceNow(timeCopy, v16, v17);
        if (v19 > 0.0)
        {
          v20 = timeCopy;

          v23 = objc_msgSend___im_dateWithCurrentServerTime(MEMORY[0x1E695DF00], v21, v22);
          objc_msgSend_setDateEdited_(itemCopy, v24, v23);

          v18 = v20;
          objc_msgSend_setTime_(itemCopy, v25, v20);
LABEL_13:
          objc_msgSend_setScheduleType_(itemCopy, v26, type);
          if (!objc_msgSend_scheduleType(itemCopy, v29, v30))
          {
            objc_msgSend_setScheduleState_(itemCopy, v31, 0);
          }

          v33 = objc_msgSend_account(self, v31, v32);
          v36 = objc_msgSend_sender(itemCopy, v34, v35);
          v38 = objc_msgSend_imHandleWithID_(v33, v37, v36);

          v41 = objc_msgSend_account(self, v39, v40);
          v44 = objc_msgSend_handle(itemCopy, v42, v43);
          v46 = objc_msgSend_imHandleWithID_(v41, v45, v44);

          v48 = objc_msgSend_messageFromIMMessageItem_sender_subject_(IMMessage, v47, itemCopy, v38, v46);
          v51 = v48;
          if (!type)
          {
            v52 = objc_msgSend_flags(v48, v49, v50);
            objc_msgSend__updateFlags_(v51, v53, v52 & 0xFFFFFFFFFFFF7FFFLL);
          }

          v54 = objc_msgSend_context(itemCopy, v49, v50);
          if (v54)
          {
            v57 = v54;
            v58 = objc_msgSend_context(itemCopy, v55, v56);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v61 = objc_msgSend_context(itemCopy, v55, v60);
              objc_msgSend_setMessage_(v61, v62, v51);
            }
          }

          objc_msgSend_sendMessage_(self, v55, v51);
          objc_msgSend__handleItem_(self, v63, itemCopy);

          goto LABEL_21;
        }
      }

      v28 = IMLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1494();
      }
    }

    objc_msgSend_setTime_(itemCopy, v16, v18);
    goto LABEL_13;
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E1410(itemCopy, v18, v27);
  }

LABEL_21:
}

- (void)sendHQAttachmentsForMessage:(id)message
{
  messageCopy = message;
  v8 = objc_msgSend_chatRegistry(self, v5, v6);
  objc_msgSend__chat_sendHQAttachmentsForMessage_(v8, v7, self, messageCopy);
}

- (void)_updateMessageItemStewieIfNeeded:(id)needed
{
  neededCopy = needed;
  if (objc_msgSend_isStewieChat(self, v4, v5))
  {
    objc_msgSend_setIsStewie_(neededCopy, v6, 1);
  }
}

- (void)_updateScheduledMessageTimeOffsetIfNeeded:(id)needed
{
  neededCopy = needed;
  if (objc_msgSend_scheduleType(neededCopy, v5, v6) == 2)
  {
    v9 = objc_msgSend__items(self, v7, v8);
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_1A8259BC0;
    v30 = sub_1A825AF0C;
    v31 = 0;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = sub_1A8325D48;
    v23 = &unk_1E78117B0;
    v10 = neededCopy;
    v24 = v10;
    v25 = &v26;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v9, v11, 2, &v20);
    v14 = v27[5];
    if (v14)
    {
      v15 = objc_msgSend_time(v14, v12, v13, v20, v21, v22, v23);
      v18 = objc_msgSend_dateByAddingTimeInterval_(v15, v16, v17, 0.001);
      objc_msgSend_setTime_(v10, v19, v18);
    }

    _Block_object_dispose(&v26, 8);
  }
}

- (void)_updateMessageItemTimeIfNeeded:(id)needed
{
  neededCopy = needed;
  if ((objc_msgSend__shouldPinUnsentMessagesToBottom(self, v4, v5) & 1) == 0)
  {
    objc_msgSend__fixItemForSendingMessageTime_(self, v6, neededCopy);
  }

  objc_msgSend__updateScheduledMessageTimeOffsetIfNeeded_(self, v6, neededCopy);
}

- (void)_updateSenderForMessageIfNeeded:(id)needed adjustingSender:(BOOL)sender withAccount:(id)account
{
  senderCopy = sender;
  neededCopy = needed;
  accountCopy = account;
  v10 = accountCopy;
  if (senderCopy)
  {
    v13 = objc_msgSend_loginIMHandle(accountCopy, v8, v9);
    if (!v13)
    {
      if (objc_msgSend_isRunningPPT(IMBalloonPluginManager, v11, v12))
      {
        v13 = objc_msgSend_imHandleWithID_(v10, v11, @"test@icloud.com");
        objc_msgSend__updateSender_(neededCopy, v14, v13);
LABEL_7:

        goto LABEL_8;
      }

      v13 = 0;
    }

    objc_msgSend__updateSender_(neededCopy, v11, v13);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_clearHistoryAndReplaceLastMessage:(id)message
{
  v13[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  objc_msgSend_cleanupChatItems(self, v5, v6);
  objc_msgSend__removeAllItemsSkippingCallToItemsDidChange_(self, v7, 1);
  if (messageCopy)
  {
    v13[0] = messageCopy;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v13, 1);
    objc_msgSend__replaceItems_(self, v10, v9);
  }

  else
  {
    objc_msgSend__replaceItems_(self, v8, MEMORY[0x1E695E0F0]);
  }

  objc_msgSend__postNotification_userInfo_(self, v11, @"__kIMChatHistoryClearedNotification", 0);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateBizIntentForMessageIfNeeded:(id)needed
{
  neededCopy = needed;
  if (objc_msgSend_isMapKitBusinessChat(self, v4, v5))
  {
    v8 = objc_msgSend_bizIntent(self, v6, v7);
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if ((objc_msgSend_isTypingMessage(neededCopy, v6, v7) & 1) == 0)
  {
    v12 = objc_msgSend_associatedMessageGUID(neededCopy, v10, v11);
    v15 = objc_msgSend_length(v12, v13, v14);

    v18 = v15 || v9;
    if ((v18 & 1) == 0)
    {
      v19 = objc_msgSend_bizIntent(self, v16, v17);
      objc_msgSend__updateBizIntent_(neededCopy, v20, v19);

      objc_msgSend_setBizIntent_(self, v21, 0);
    }
  }
}

- (void)_updateLocaleForMessageIfNeeded:(id)needed
{
  neededCopy = needed;
  if (objc_msgSend_isBusinessChat(self, v4, v5) && (objc_msgSend_isTypingMessage(neededCopy, v6, v7) & 1) == 0)
  {
    v10 = objc_msgSend_associatedMessageGUID(neededCopy, v8, v9);
    if (!objc_msgSend_length(v10, v11, v12) || (objc_msgSend_messageForGUID_(self, v13, v10), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_balloonBundleID(v15, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v18, v19, *MEMORY[0x1E69A68E8]), v18, v15, isEqualToString))
    {
      v21 = objc_msgSend__getCurrentLocale(self, v13, v14);
      objc_msgSend__updateLocale_(neededCopy, v22, v21);
    }
  }
}

- (id)_getCurrentLocale
{
  v3 = objc_msgSend_currentLocale(MEMORY[0x1E695DF58], a2, v2);
  v6 = objc_msgSend_localeIdentifier(v3, v4, v5);

  return v6;
}

- (void)_updateTypingGUIDForMessageIfNeeded:(id)needed
{
  v59 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (self->_typingGUID)
  {
    v7 = objc_msgSend_account(self, v4, v5);
    v10 = objc_msgSend_service(v7, v8, v9);
    v13 = objc_msgSend_supportsTypingIndicators(v10, v11, v12);

    v16 = objc_msgSend_wasDowngraded(neededCopy, v14, v15);
    v19 = objc_msgSend_guid(neededCopy, v17, v18);
    isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v19, v20, self->_typingGUID);

    currentLocationGUID = self->_currentLocationGUID;
    v25 = objc_msgSend_guid(neededCopy, v23, v24);
    isEqualToString = objc_msgSend_isEqualToString_(currentLocationGUID, v26, v25);

    v30 = objc_msgSend_account(self, v28, v29);
    v33 = objc_msgSend_service(v30, v31, v32);
    if (objc_msgSend_shouldReuseTypingIndicatorGUID(v33, v34, v35))
    {
      isGroupChat = objc_msgSend_isGroupChat(self, v36, v37);
    }

    else
    {
      isGroupChat = 1;
    }

    v41 = objc_msgSend_scheduleType(neededCopy, v39, v40);
    if (!(v16 & 1 | ((v13 & 1) == 0) | isEqualToIgnoringCase & 1 | isEqualToString & 1) && (isGroupChat & 1) == 0 && v41 != 2)
    {
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v48 = objc_msgSend_guid(neededCopy, v46, v47);
          typingGUID = self->_typingGUID;
          v55 = 138412546;
          v56 = v48;
          v57 = 2112;
          v58 = typingGUID;
          _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "Updating typing guid on IMMessage from %@ to %@", &v55, 0x16u);
        }
      }

      objc_msgSend__updateGUID_(neededCopy, v44, self->_typingGUID);
    }

    if (objc_msgSend_isFinished(neededCopy, v42, v43))
    {
      if (IMOSLoggingEnabled())
      {
        v50 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = self->_typingGUID;
          v55 = 138412290;
          v56 = v51;
          _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, " => Message is finished, clearing typing guid: %@", &v55, 0xCu);
        }
      }

      v52 = self->_typingGUID;
      self->_typingGUID = 0;

      localUserIsComposing = self->_localUserIsComposing;
      self->_localUserIsComposing = 0;
    }
  }

  v54 = *MEMORY[0x1E69E9840];
}

- (void)_updateBreadcrumbingAssociationForMessageIfNeeded:(id)needed
{
  v72 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v6 = objc_msgSend_balloonBundleID(neededCopy, v4, v5);
  if (objc_msgSend_containsString_(v6, v7, *MEMORY[0x1E69A6A38]))
  {
  }

  else
  {
    v12 = objc_msgSend_balloonBundleID(neededCopy, v8, v9);
    v14 = objc_msgSend_containsString_(v12, v13, *MEMORY[0x1E69A68E0]);

    if (!v14)
    {
      goto LABEL_28;
    }
  }

  v15 = objc_msgSend_associatedMessageGUID(neededCopy, v10, v11);
  if (!v15)
  {
    v58 = IMExtensionPayloadUnarchivingClasses();
    v16 = MEMORY[0x1E696ACD0];
    v19 = objc_msgSend_payloadData(neededCopy, v17, v18);
    v68 = 0;
    v21 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v16, v20, v58, v19, &v68);
    v22 = v68;

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v71 = v22;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Finished unarchivedObjectOfClasses for payloadData. Error: [%@]", buf, 0xCu);
      }
    }

    v60 = IMSanitizedSessionIdentifierForIMExtensionPayloadUserSessionIdentifierKey();
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = objc_msgSend_chatItems(self, v24, v25);
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v64, v69, 16);
    if (v62)
    {
      v61 = *v65;
      while (2)
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v65 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v64 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v28;
            v33 = objc_msgSend_message(v30, v31, v32);
            v36 = objc_msgSend_payloadData(v33, v34, v35);
            v63 = v22;
            v38 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v37, v58, v36, &v63);
            v39 = v63;

            if (IMOSLoggingEnabled())
            {
              v40 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v71 = v39;
                _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Finished unarchivedObjectOfClasses for payloadData. Error: [%@]", buf, 0xCu);
              }
            }

            v41 = IMSanitizedSessionIdentifierForIMExtensionPayloadUserSessionIdentifierKey();
            v44 = v41;
            if (v41 != 0 && v60 != 0)
            {
              v45 = objc_msgSend_UUIDString(v41, v42, v43);
              v48 = objc_msgSend_UUIDString(v60, v46, v47);
              isEqualToString = objc_msgSend_isEqualToString_(v45, v49, v48);

              if (isEqualToString)
              {
                v53 = objc_msgSend_guid(v33, v51, v52);
                objc_msgSend__associatedMessageGUID_(neededCopy, v54, v53);

                objc_msgSend__associatedMessageType_(neededCopy, v55, 2);
                v22 = v39;
                v21 = v38;
                goto LABEL_26;
              }
            }

            v22 = v39;
            v21 = v38;
          }
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v64, v69, 16);
        if (v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    v15 = 0;
  }

LABEL_28:
  v56 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateJoinStateWithMessageIfNeeded:(id)needed
{
  v27 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (objc_msgSend_joinState(self, v5, v6) == 3 || objc_msgSend_joinState(self, v7, v8) == 4)
  {
    v9 = 1;
  }

  else
  {
    if (!self->_messagesPendingJoin)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      messagesPendingJoin = self->_messagesPendingJoin;
      self->_messagesPendingJoin = v10;
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v16 = objc_msgSend_account(self, v14, v15);
        v21 = 138412802;
        v22 = neededCopy;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Adding pending message message %@ for account: %@ (%@)", &v21, 0x20u);
      }
    }

    objc_msgSend_addObject_(self->_messagesPendingJoin, v12, neededCopy);
    objc_msgSend_join(self, v17, v18);
    v9 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_updatePayloadForMessageIfNeeded:(id)needed
{
  v70 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v7 = objc_msgSend_balloonBundleID(neededCopy, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x1E69A6A18]))
  {
    v11 = objc_msgSend__imMessageItem(neededCopy, v9, v10);
    CMMState = objc_msgSend_getCMMState(v11, v12, v13);

    if (!CMMState)
    {
      v17 = objc_msgSend_payloadData(neededCopy, v15, v16);
      v20 = objc_msgSend_payloadData(neededCopy, v18, v19);
      v21 = IMSharedHelperPayloadFromCombinedPluginPayloadData();
      v22 = 0;

      if (v21)
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v27 = objc_msgSend_fileTransferGUIDs(neededCopy, v25, v26);
            v28 = MEMORY[0x1E696AD98];
            v31 = objc_msgSend_payloadData(neededCopy, v29, v30);
            v34 = objc_msgSend_length(v31, v32, v33);
            v36 = objc_msgSend_numberWithUnsignedInteger_(v28, v35, v34);
            v37 = MEMORY[0x1E696AD98];
            v40 = objc_msgSend_length(v17, v38, v39);
            v42 = objc_msgSend_numberWithUnsignedInteger_(v37, v41, v40);
            *buf = 138412802;
            v65 = v27;
            v66 = 2112;
            v67 = v36;
            v68 = 2112;
            v69 = v42;
            _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Before splitting up rich links into file for msg guid %@ message payloadad data length %@, original payload data lenght %@", buf, 0x20u);
          }
        }

        objc_msgSend_setPayloadData_(neededCopy, v23, v21);
        objc_msgSend__updateFileAttachmentGUIDsForMessageIfNeeded_withPayloadAttachments_(self, v43, neededCopy, v22);
        if (IMOSLoggingEnabled())
        {
          v44 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v47 = objc_msgSend_fileTransferGUIDs(neededCopy, v45, v46);
            v48 = MEMORY[0x1E696AD98];
            v51 = objc_msgSend_payloadData(neededCopy, v49, v50);
            v54 = objc_msgSend_length(v51, v52, v53);
            v56 = objc_msgSend_numberWithUnsignedInteger_(v48, v55, v54);
            v57 = MEMORY[0x1E696AD98];
            v60 = objc_msgSend_length(v17, v58, v59);
            v62 = objc_msgSend_numberWithUnsignedInteger_(v57, v61, v60);
            *buf = 138412802;
            v65 = v47;
            v66 = 2112;
            v67 = v56;
            v68 = 2112;
            v69 = v62;
            _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "After splitting up rich links into file for msg guid %@ message payloadad data length %@, original payload data lenght %@", buf, 0x20u);
          }
        }
      }
    }
  }

  else
  {
  }

  v63 = *MEMORY[0x1E69E9840];
}

- (void)_updateFileAttachmentGUIDsForMessageIfNeeded:(id)needed withPayloadAttachments:(id)attachments
{
  v43 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  attachmentsCopy = attachments;
  if (objc_msgSend_count(attachmentsCopy, v8, v9))
  {
    v12 = objc_msgSend_sharedInstance(IMFileTransferCenter, v10, v11);
    v15 = objc_msgSend_guid(neededCopy, v13, v14);
    v37 = attachmentsCopy;
    v17 = objc_msgSend_guidsForStoredAttachmentPayloadData_messageGUID_(v12, v16, attachmentsCopy, v15);

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_msgSend_addObjectsFromArray_(v18, v19, v17);
    v36 = v18;
    objc_msgSend__updateFileTransferGUIDs_(neededCopy, v20, v18);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v21 = v17;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v38, v42, 16);
    if (v23)
    {
      v26 = v23;
      v27 = *v39;
      do
      {
        v28 = 0;
        do
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v38 + 1) + 8 * v28);
          v30 = objc_msgSend_sharedInstance(IMFileTransferCenter, v24, v25);
          v33 = objc_msgSend_account(self, v31, v32);
          objc_msgSend_assignTransfer_toMessage_account_(v30, v34, v29, neededCopy, v33);

          ++v28;
        }

        while (v26 != v28);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v38, v42, 16);
      }

      while (v26);
    }

    attachmentsCopy = v37;
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_refreshServiceForSendingIfNeededWithMessage:(id)message
{
  messageCopy = message;
  if (objc_msgSend_wasDowngraded(messageCopy, v4, v5) && (objc_msgSend_isSOS(messageCopy, v6, v7) & 1) == 0)
  {
    objc_msgSend_refreshServiceForSending(self, v8, v9);
  }
}

- (void)_fixItemForSendingMessageTime:(id)time
{
  v79 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  v7 = objc_msgSend_lastIncomingMessage(self, v5, v6);
  v10 = objc_msgSend_time(v7, v8, v9);

  v13 = objc_msgSend_lastSentMessageDate(self, v11, v12);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = MEMORY[0x1E696AD98];
      v19 = objc_msgSend_time(timeCopy, v16, v17);
      objc_msgSend_timeIntervalSinceReferenceDate(v19, v20, v21);
      v24 = objc_msgSend_numberWithDouble_(v18, v22, v23);
      v25 = MEMORY[0x1E696AD98];
      objc_msgSend_timeIntervalSinceReferenceDate(v10, v26, v27);
      v30 = objc_msgSend_numberWithDouble_(v25, v28, v29);
      v31 = MEMORY[0x1E696AD98];
      objc_msgSend_timeIntervalSinceReferenceDate(v13, v32, v33);
      v36 = objc_msgSend_numberWithDouble_(v31, v34, v35);
      v73 = 138412802;
      v74 = v24;
      v75 = 2112;
      v76 = v30;
      v77 = 2112;
      v78 = v36;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "itemToUpdateTime: %@ lastIncomingMessage time: %@ lastSentMessageDate: %@", &v73, 0x20u);
    }
  }

  if (objc_msgSend_compare_(v10, v14, v13) == 1)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(v10, v37, v38);
  }

  else
  {
    objc_msgSend_timeIntervalSinceReferenceDate(v13, v37, v38);
  }

  v42 = v41;
  v43 = objc_msgSend_time(timeCopy, v39, v40);
  objc_msgSend_timeIntervalSinceReferenceDate(v43, v44, v45);
  v47 = v46 - v42 < 60.0;

  if (v47)
  {
    v50 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v48, v49, v42 + 0.100000001);
    if (IMOSLoggingEnabled())
    {
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v56 = MEMORY[0x1E696AD98];
        objc_msgSend_timeIntervalSinceReferenceDate(v50, v54, v55);
        v59 = objc_msgSend_numberWithDouble_(v56, v57, v58);
        v60 = MEMORY[0x1E696AD98];
        v63 = objc_msgSend_time(timeCopy, v61, v62);
        objc_msgSend_timeIntervalSinceReferenceDate(v63, v64, v65);
        v68 = objc_msgSend_numberWithDouble_(v60, v66, v67);
        v73 = 138412802;
        v74 = v59;
        v75 = 2112;
        v76 = v50;
        v77 = 2112;
        v78 = v68;
        _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "The last recent message was received less than a minute ago, going to use time interval: %@ date: %@ clientSendTime: %@", &v73, 0x20u);
      }
    }

    v69 = objc_msgSend_time(timeCopy, v51, v52);
    objc_msgSend_setClientSendTime_(timeCopy, v70, v69);

    objc_msgSend_setTime_(timeCopy, v71, v50);
  }

  v72 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  v8 = objc_msgSend_account(self, v5, v6);
  objc_msgSend_sendMessage_onAccount_(self, v7, messageCopy, v8);
}

- (void)sendMessage:(id)message onService:(id)service
{
  serviceCopy = service;
  messageCopy = message;
  v9 = objc_msgSend_sharedInstance(IMAccountController, v7, v8);
  v11 = objc_msgSend_bestAccountForService_(v9, v10, serviceCopy);

  objc_msgSend_sendMessage_onAccount_(self, v12, messageCopy, v11);
  v15 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v13, v14);
  LODWORD(messageCopy) = objc_msgSend_isRCSEncryptionOptInTestEnabled(v15, v16, v17);

  if (messageCopy)
  {
    v20 = objc_msgSend_name(serviceCopy, v18, v19);
    if (objc_msgSend_isEqualToString_(v20, v21, *MEMORY[0x1E69A7AF0]))
    {
      v24 = objc_msgSend_chatStyle(self, v22, v23);

      if (v24 == 45)
      {
        objc_msgSend_sendRCSEncryptionTestMessageIfNecessary(self, v25, v26);
      }
    }

    else
    {
    }
  }
}

- (void)sendMessage:(id)message onAccount:(id)account
{
  v135[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v131 = messageCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Client request to send message: %@", buf, 0xCu);
    }
  }

  kdebug_trace();
  if (objc_msgSend_isFinished(messageCopy, v7, v8))
  {
    v11 = objc_msgSend_service(accountCopy, v9, v10);
    v14 = objc_msgSend_iMessageService(IMServiceImpl, v12, v13);
    v15 = v11 == v14;

    if (v15)
    {
      v18 = objc_msgSend_fileTransferGUIDs(messageCopy, v16, v17);
      v21 = objc_msgSend_count(v18, v19, v20) == 0;

      if (!v21)
      {
        v24 = objc_msgSend_guid(messageCopy, v22, v23);
        _signpostSendFileMessage();
      }

      v25 = objc_msgSend_guid(messageCopy, v22, v23);
      v28 = objc_msgSend_fileTransferGUIDs(messageCopy, v26, v27);
      objc_msgSend_count(v28, v29, v30);
      _signpostSendMessage();
    }

    v31 = MEMORY[0x1E69A8CD8];
    v32 = objc_msgSend_deviceIndependentID(self, v16, v17);
    v33 = IMTextInputIdentifier(v32);
    objc_msgSend_sendSignal_toChannel_withNullableUniqueStringID_withPayload_(v31, v34, *MEMORY[0x1E69A8CB0], *MEMORY[0x1E69A8C38], v33, 0);
  }

  v35 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v9, v10);
  v121 = objc_msgSend_bundleIdentifier(v35, v36, v37);

  if (objc_msgSend_length(v121, v38, v39))
  {
    v134 = *MEMORY[0x1E69A7288];
    v135[0] = v121;
    v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v40, v135, &v134, 1);
    v45 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v43, v44);
    v48 = objc_msgSend_copy(v42, v46, v47);
    objc_msgSend_trackEvent_withDictionary_(v45, v49, *MEMORY[0x1E69A74E8], v48);
  }

  if ((objc_msgSend_isFinished(messageCopy, v40, v41) & 1) == 0 && (objc_msgSend_isLocatingMessage(messageCopy, v50, v51) & 1) == 0)
  {
    isAudioMessage = objc_msgSend_isAudioMessage(messageCopy, v50, v51);
    v55 = @"__kIMChatComposeTyping";
    if (isAudioMessage)
    {
      v55 = @"__kIMChatComposeRecording";
    }

    goto LABEL_19;
  }

  if (objc_msgSend_isEmpty(messageCopy, v50, v51) && objc_msgSend_isFinished(messageCopy, v52, v53))
  {
    v54 = objc_msgSend_isAudioMessage(messageCopy, v52, v53);
    v55 = @"__kIMChatComposeRecording";
    if (!v54)
    {
      v55 = 0;
    }

LABEL_19:
    v56 = v55;
    v59 = objc_msgSend_guid(messageCopy, v57, v58);
    objc_msgSend__setLocalUserIsComposing_suppliedGUID_(self, v60, v56, v59);
    goto LABEL_54;
  }

  if (objc_msgSend_isStewieChat(self, v52, v53) && (objc_msgSend_text(messageCopy, v61, v62), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v63, v64, v65), v66 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend_lengthOfBytesUsingEncoding_(v66, v67, 4) > 0xA0, v66, v63, v68))
  {
    v69 = objc_msgSend_messagesSeparatedByByteLength_(messageCopy, v61, 160);
  }

  else if (objc_msgSend_hasDataDetectorResults(messageCopy, v61, v62) && (objc_msgSend_isSOS(messageCopy, v70, v71) & 1) == 0)
  {
    v69 = objc_msgSend_messagesBySeparatingRichLinks(messageCopy, v72, v73);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v75 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        hasDataDetectorResults = objc_msgSend_hasDataDetectorResults(messageCopy, v76, v77);
        v81 = objc_msgSend_service(accountCopy, v79, v80);
        v82 = v81;
        v83 = @"NO";
        if (hasDataDetectorResults)
        {
          v83 = @"YES";
        }

        *buf = 138412546;
        v131 = v83;
        v132 = 2112;
        v133 = v81;
        _os_log_impl(&dword_1A823F000, v75, OS_LOG_TYPE_INFO, "Not splitting message rich links, has data detected results (%@) and service %@", buf, 0x16u);
      }
    }

    v129 = messageCopy;
    v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v74, &v129, 1);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v56 = v69;
  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v85, &v124, v128, 16);
  if (v88)
  {
    v89 = *v125;
    do
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v125 != v89)
        {
          objc_enumerationMutation(v56);
        }

        v91 = *(*(&v124 + 1) + 8 * i);
        v92 = objc_msgSend_notificationIDSTokenURI(messageCopy, v86, v87);
        if (!objc_msgSend_length(v92, v93, v94))
        {
          goto LABEL_46;
        }

        v97 = objc_msgSend_notificationIDSTokenURI(messageCopy, v95, v96);
        v100 = objc_msgSend_notificationIDSTokenURI(v91, v98, v99);
        isEqualToString = objc_msgSend_isEqualToString_(v97, v101, v100);

        if ((isEqualToString & 1) == 0)
        {
          v105 = objc_msgSend_notificationIDSTokenURI(messageCopy, v103, v104);
          objc_msgSend_setNotificationIDSTokenURI_(v91, v106, v105);

          if (IMOSLoggingEnabled())
          {
            v92 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
            {
              v109 = objc_msgSend_notificationIDSTokenURI(v91, v107, v108);
              *buf = 138412290;
              v131 = v109;
              _os_log_impl(&dword_1A823F000, v92, OS_LOG_TYPE_INFO, "New immessage does not have notificationIDSTokenURI, it is now set to %@ before sending.", buf, 0xCu);
            }

LABEL_46:
          }
        }

        if (IMOSLoggingEnabled())
        {
          v111 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            v114 = objc_msgSend_guid(messageCopy, v112, v113);
            *buf = 138412546;
            v131 = messageCopy;
            v132 = 2112;
            v133 = v114;
            _os_log_impl(&dword_1A823F000, v111, OS_LOG_TYPE_INFO, "Add sending message: %@ guid: %@", buf, 0x16u);
          }
        }

        objc_msgSend__sendMessage_withAccount_adjustingSender_shouldQueue_(self, v110, v91, accountCopy, 1, 0);
      }

      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v86, &v124, v128, 16);
    }

    while (v88);
  }

  v59 = v56;
LABEL_54:

  if ((IMIsRunningInMessagesAssistantExtension() & 1) == 0)
  {
    v117 = objc_msgSend_sharedInstance(IMBalloonPluginAttributionController, v115, v116);
    objc_msgSend_startExpiryTimer(v117, v118, v119);
  }

  v120 = *MEMORY[0x1E69E9840];
}

- (void)sendCurrentLocationMessage
{
  v8 = objc_msgSend_sharedInstance(IMLocationManagerUtils, a2, v2);
  v6 = objc_msgSend_sharedInstance(IMLocationManager, v4, v5);
  objc_msgSend_sendCurrentLocationMessageWithChat_withLocationManager_withSourceApplicationIdentifier_foregroundAssertionForBundleIdentifier_completion_(v8, v7, self, v6, 0, 0, 0);
}

- (void)retractMessagePart:(id)part
{
  v44 = *MEMORY[0x1E69E9840];
  partCopy = part;
  v7 = objc_msgSend_messageItem(partCopy, v5, v6);
  v10 = objc_msgSend_index(partCopy, v8, v9);
  hasSubject = objc_msgSend_hasSubject(partCopy, v11, v12);
  v18 = objc_msgSend_scheduleType(v7, v14, v15) == 2 && objc_msgSend_scheduleState(v7, v16, v17) == 2;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v23 = objc_msgSend_guid(v7, v21, v22);
      v38 = 138412802;
      v39 = v23;
      v40 = 2048;
      v41 = objc_msgSend_scheduleType(v7, v24, v25);
      v42 = 2048;
      v43 = objc_msgSend_scheduleState(v7, v26, v27);
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Retracting/Cancelling message with guid: %@, scheduleType: %lu, scheduleState %lu", &v38, 0x20u);
    }
  }

  if (v18)
  {
    objc_msgSend_cancelScheduledMessageItem_atPartIndex_shouldRetractSubject_(self, v19, v7, v10, hasSubject);
  }

  else
  {
    v28 = objc_msgSend_editedMessageItemWithOriginalMessageItem_retractedPartIndex_shouldRetractSubject_(MEMORY[0x1E69A8138], v19, v7, v10, hasSubject);
    v31 = objc_msgSend_chatRegistry(self, v29, v30);
    objc_msgSend__chat_sendEditedMessageItem_previousMessageItem_partIndex_editType_backwardCompatabilityText_(v31, v32, self, v28, v7, v10, 2, 0);

    v35 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v33, v34);
    objc_msgSend_trackEvent_(v35, v36, *MEMORY[0x1E69A77C0]);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)retractScheduledMessagePartIndexes:(id)indexes fromChatItem:(id)item
{
  v52 = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  itemCopy = item;
  v10 = objc_msgSend_messageItem(itemCopy, v8, v9);
  hasSubject = objc_msgSend_hasSubject(itemCopy, v11, v12);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = objc_msgSend_guid(v10, v17, v18);
      v44 = 138413058;
      v45 = indexesCopy;
      v46 = 2112;
      v47 = v19;
      v48 = 2048;
      v49 = objc_msgSend_scheduleType(v10, v20, v21);
      v50 = 2048;
      v51 = objc_msgSend_scheduleState(v10, v22, v23);
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Retracting/Cancelling scheduled message part indexes (%@) from message with guid: %@, scheduleType: %lu, scheduleState %lu", &v44, 0x2Au);
    }
  }

  if (objc_msgSend_partCount(v10, v14, v15) == 1)
  {
    v26 = objc_msgSend_participantsWithState_(self, v24, 16);
    v28 = objc_msgSend___imArrayByApplyingBlock_(v26, v27, &unk_1F1B6E9C0);

    v31 = objc_msgSend_guid(v10, v29, v30);
    v33 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v32, v28);
    objc_msgSend_cancelScheduledMessageWithGUID_destinations_cancelType_(self, v34, v31, v33, 1);
  }

  else
  {
    v35 = objc_msgSend_failedRetractPartIndexes(v10, v24, v25);
    v28 = objc_msgSend_mutableCopy(v35, v36, v37);

    if (v28)
    {
      objc_msgSend_removeIndexes_(v28, v38, indexesCopy);
      objc_msgSend_setFailedRetractPartIndexes_(v10, v39, v28);
    }

    v31 = objc_msgSend_editedMessageItemWithOriginalMessageItem_retractedPartIndexes_shouldRetractSubject_(MEMORY[0x1E69A8138], v38, v10, indexesCopy, hasSubject);
    v33 = objc_msgSend_chatRegistry(self, v40, v41);
    objc_msgSend__chat_editScheduledMessageItem_previousMessageItem_retractingPartIndexes_(v33, v42, self, v31, v10, indexesCopy);
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)editMessageItem:(id)item atPartIndex:(int64_t)index withNewPartText:(id)text newPartTranslation:(id)translation backwardCompatabilityText:(id)compatabilityText
{
  v46 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  textCopy = text;
  translationCopy = translation;
  compatabilityTextCopy = compatabilityText;
  v20 = objc_msgSend_scheduleType(itemCopy, v16, v17) == 2 && objc_msgSend_scheduleState(itemCopy, v18, v19) == 2;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = objc_msgSend_guid(itemCopy, v23, v24);
      v40 = 138412802;
      v41 = v25;
      v42 = 2048;
      v43 = objc_msgSend_scheduleType(itemCopy, v26, v27);
      v44 = 2048;
      v45 = objc_msgSend_scheduleState(itemCopy, v28, v29);
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Editing Message with guid: %@, scheduleType: %lu, scheduleState: %lu", &v40, 0x20u);
    }
  }

  if (v20)
  {
    objc_msgSend_editScheduledMessageItem_atPartIndex_withNewPartText_newPartTranslation_(self, v21, itemCopy, index, textCopy, translationCopy);
  }

  else
  {
    v30 = objc_msgSend_editedMessageItemWithOriginalMessageItem_editedPartIndex_newPartText_newPartTranslation_(MEMORY[0x1E69A8138], v21, itemCopy, index, textCopy, translationCopy);
    v33 = objc_msgSend_chatRegistry(self, v31, v32);
    objc_msgSend__chat_sendEditedMessageItem_previousMessageItem_partIndex_editType_backwardCompatabilityText_(v33, v34, self, v30, itemCopy, index, 1, compatabilityTextCopy);

    v37 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v35, v36);
    objc_msgSend_trackEvent_(v37, v38, *MEMORY[0x1E69A72E0]);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)resendEditedMessageItem:(id)item forPartIndex:(int64_t)index withBackwardCompatabilityText:(id)text
{
  textCopy = text;
  itemCopy = item;
  v13 = objc_msgSend_chatRegistry(self, v10, v11);
  objc_msgSend__chat_resendEditedMessageItem_partIndex_withBackwardCompatabilityText_(v13, v12, self, itemCopy, index, textCopy);
}

- (void)appendTranslation:(id)translation toMessageItem:(id)item forPartIndex:(int64_t)index
{
  itemCopy = item;
  translationCopy = translation;
  v13 = objc_msgSend_chatRegistry(self, v10, v11);
  objc_msgSend__chat_appendTranslation_toMessageItem_partIndex_(v13, v12, self, translationCopy, itemCopy, index);
}

- (void)downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally
{
  locallyCopy = locally;
  codesCopy = codes;
  v11 = objc_msgSend_chatRegistry(self, v8, v9);
  objc_msgSend__chat_downloadTranslationAssetsForLanguageCodes_messageItemsToTranslateLocally_(v11, v10, self, codesCopy, locallyCopy);
}

- (void)beginShowingEditHistoryForChatItemGUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_showingEditHistoryForChatItemGUIDs(self, v5, v6);

  if (!v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_msgSend_setShowingEditHistoryForChatItemGUIDs_(self, v11, v10);
  }

  v12 = objc_msgSend_showingEditHistoryForChatItemGUIDs(self, v8, v9);
  objc_msgSend_addObject_(v12, v13, dCopy);

  objc_msgSend_setFilterControllersNeedsUpdateChatItems(self, v14, v15);

  objc_msgSend__updateChatItemsWithReason_block_(self, v16, @"Begin showing edit history", &unk_1F1B6E9E0);
}

- (void)endShowingEditHistoryForChatItemGUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_showingEditHistoryForChatItemGUIDs(self, v5, v6);
  objc_msgSend_removeObject_(v7, v8, dCopy);

  objc_msgSend_setFilterControllersNeedsUpdateChatItems(self, v9, v10);

  objc_msgSend__updateChatItemsWithReason_block_(self, v11, @"End showing edit history", &unk_1F1B6EA00);
}

- (void)endShowingEditHistoryForAllChatItems
{
  v4 = objc_msgSend_showingEditHistoryForChatItemGUIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_showingEditHistoryForChatItemGUIDs(self, v8, v9);
    objc_msgSend_removeAllObjects(v10, v11, v12);

    objc_msgSend_setFilterControllersNeedsUpdateChatItems(self, v13, v14);

    objc_msgSend__updateChatItemsWithReason_block_(self, v15, @"End showing edit history for all items", &unk_1F1B6EA20);
  }
}

- (BOOL)isShowingEditHistoryForChatItemGUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_showingEditHistoryForChatItemGUIDs(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, dCopy);

  return v9;
}

- (BOOL)isShowingEditHistoryForAnyChatItem
{
  v3 = objc_msgSend_showingEditHistoryForChatItemGUIDs(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) != 0;

  return v6;
}

- (void)repositionSticker:(id)sticker associatedChatItem:(id)item
{
  v35 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v33 = 138412290;
      v34 = stickerCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Client request to reposition sticker: %@", &v33, 0xCu);
    }
  }

  v11 = objc_msgSend__imMessageItem(stickerCopy, v8, v9);
  v14 = objc_msgSend_guid(stickerCopy, v12, v13);
  v17 = objc_msgSend__stripFZIDPrefix(v14, v15, v16);
  v19 = objc_msgSend__itemForGUID_(self, v18, v17);

  v22 = objc_msgSend_fileTransferGUIDs(v19, v20, v21);
  objc_msgSend_setFileTransferGUIDs_(v11, v23, v22);

  v26 = objc_msgSend_body(v19, v24, v25);
  objc_msgSend_setBody_(v11, v27, v26);

  v30 = objc_msgSend_chatRegistry(self, v28, v29);
  objc_msgSend__chat_repositionSticker_(v30, v31, self, v11);

  v32 = *MEMORY[0x1E69E9840];
}

- (id)messagesForScheduledMessageSectionWithTranscriptItem:(id)item
{
  v46 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v44) = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Client requested messages for scheduled message section", &v44, 2u);
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_msgSend_chatItems(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  v15 = v12 + 1;
  do
  {
    if ((v15 - 2) < 0)
    {
      if (IMOSLoggingEnabled())
      {
        v39 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v44 = 138412290;
          v45 = itemCopy;
          _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_INFO, "Couldn't find requested transcriptItem: %@ in chatItems", &v44, 0xCu);
        }
      }

      v40 = v6;
      goto LABEL_21;
    }

    v16 = objc_msgSend_chatItems(self, v13, v14);
    v18 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, v15 - 2);

    LODWORD(v16) = objc_msgSend_isEqual_(v18, v19, itemCopy);
    --v15;
  }

  while (!v16);
  v20 = objc_msgSend_chatItems(self, v13, v14);
  v23 = v15 < objc_msgSend_count(v20, v21, v22);

  if (v23)
  {
    while (1)
    {
      v26 = objc_msgSend_chatItems(self, v24, v25);
      v28 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, v15);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = objc_msgSend_messageItem(v28, v29, v30);
        objc_msgSend_addObject_(v6, v32, v31);
      }

      v35 = objc_msgSend_chatItems(self, v33, v34);
      v38 = objc_msgSend_count(v35, v36, v37);

      if (++v15 >= v38)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_20:
  v40 = objc_msgSend_copy(v6, v24, v25);
LABEL_21:
  v41 = v40;

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (void)sendPendingSatelliteMessages
{
  v71 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Client request to send pending satellite messages", buf, 2u);
    }
  }

  v6 = objc_msgSend_iMessageLiteService(IMService, v3, v4);
  objc_msgSend__targetToService_newComposition_supportsEncryption_(self, v7, v6, 0, 1);
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = objc_msgSend__items(self, v8, v9);
  obj = objc_msgSend_reverseObjectEnumerator(v10, v11, v12);

  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v63, v70, 16);
  if (v14)
  {
    v15 = 0;
    v16 = *v64;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v64 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v63 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v18;
          isPendingSatelliteSend = objc_msgSend_isPendingSatelliteSend(v20, v21, v22);
          if (isPendingSatelliteSend)
          {
            objc_msgSend_insertObject_atIndex_(v52, v23, v20, 0);
            if (IMOSLoggingEnabled())
            {
              v25 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v28 = objc_msgSend_guid(v20, v26, v27);
                *buf = 138412290;
                v69 = v28;
                _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, " => Enqueuing message for satellite send %@", buf, 0xCu);
              }
            }
          }

          else if (v15)
          {
            if (IMOSLoggingEnabled())
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v32 = objc_msgSend_guid(v20, v30, v31);
                *buf = 138412290;
                v69 = v32;
                _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, " => Reached message without pending flag %@", buf, 0xCu);
              }
            }

            goto LABEL_26;
          }

          v15 = isPendingSatelliteSend;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v63, v70, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = sub_1A8329228;
  v59[3] = &unk_1E7810D08;
  v53 = v52;
  v60 = v53;
  selfCopy = self;
  v33 = v51;
  v62 = v33;
  objc_msgSend__updateChatItemsWithReason_block_(self, v34, @"Sending via satellite", v59);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = v33;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v55, v67, 16);
  if (v37)
  {
    v38 = *v56;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v55 + 1) + 8 * j);
        if (IMOSLoggingEnabled())
        {
          v43 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v46 = objc_msgSend_guid(v40, v44, v45);
            *buf = 138412290;
            v69 = v46;
            _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, " => Dispatching message for satellite send %@", buf, 0xCu);
          }
        }

        v47 = objc_msgSend_message(v40, v41, v42);
        objc_msgSend_sendMessage_onService_(self, v48, v47, v6);
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v49, &v55, v67, 16);
    }

    while (v37);
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (void)fetchIncomingPendingMessagesOverSatellite
{
  v4 = objc_msgSend_lastSatelliteFetchDate(self, a2, v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v7 = v4;
  v8 = objc_msgSend_now(MEMORY[0x1E695DF00], v5, v6);
  v11 = objc_msgSend_lastSatelliteFetchDate(self, v9, v10);
  objc_msgSend_timeIntervalSinceDate_(v8, v12, v11);
  v14 = v13;

  if (v14 >= 180.0)
  {
LABEL_9:
    if (objc_msgSend_pendingIncomingSatelliteMessageCount(self, v5, v6))
    {
      v17 = objc_msgSend_now(MEMORY[0x1E695DF00], v15, v16);
      objc_msgSend_setLastSatelliteFetchDate_(self, v18, v17);

      v22 = objc_msgSend_chatRegistry(self, v19, v20);
      objc_msgSend__chat_fetchIncomingPendingMessagesOverSatellite_(v22, v21, self);
    }
  }
}

- (void)setTranscriptBackgroundAndSendToChat:(id)chat transferID:(id)d
{
  chatCopy = chat;
  dCopy = d;
  v9 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v7, v8);
  isTranscriptBackgroundsEnabled = objc_msgSend_isTranscriptBackgroundsEnabled(v9, v10, v11);

  if (isTranscriptBackgroundsEnabled)
  {
    v15 = objc_msgSend_chatRegistry(self, v13, v14);
    objc_msgSend__chat_setTranscriptBackgroundAndSendToChat_transferID_(v15, v16, self, chatCopy, dCopy);
  }
}

- (void)sendGroupPhotoUpdate:(id)update
{
  v30 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = objc_msgSend_valueForChatProperty_(self, v5, *MEMORY[0x1E69A6B80]);
  v7 = IMAreObjectsLogicallySame();
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = objc_msgSend_guid(self, v10, v11);
        v24 = 138412802;
        selfCopy2 = v12;
        v26 = 2112;
        v27 = v6;
        v28 = 2112;
        v29 = updateCopy;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Not updating group photo guid for chatGuid %@ from %@ to %@", &v24, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, " => Chat: %@", &v24, 0xCu);
      }
    }
  }

  else
  {
    if (v8)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = objc_msgSend_guid(self, v15, v16);
        v24 = 138412802;
        selfCopy2 = v17;
        v26 = 2112;
        v27 = v6;
        v28 = 2112;
        v29 = updateCopy;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Updating group photo guid for chatGuid %@ from %@ to %@", &v24, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, " => Chat: %@", &v24, 0xCu);
      }
    }

    v21 = objc_msgSend_chatRegistry(self, v18, v19);
    objc_msgSend__chat_sendGroupPhotoUpdate_(v21, v22, self, updateCopy);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)resendGroupPhoto
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_valueForChatProperty_(self, a2, *MEMORY[0x1E69A6B80]);
  if (objc_msgSend_length(v3, v4, v5))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v3;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Resending group photo: %@", &v12, 0xCu);
      }
    }

    v9 = objc_msgSend_chatRegistry(self, v6, v7);
    objc_msgSend__chat_sendGroupPhotoUpdate_(v9, v10, self, v3);
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1504();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)retryGroupPhotoUploadIfNecessary
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_valueForChatProperty_(self, a2, *MEMORY[0x1E69A6B80]);
  v6 = objc_msgSend_sharedInstance(IMFileTransferCenter, v4, v5);
  v8 = objc_msgSend_transferForGUID_(v6, v7, v3);

  if (objc_msgSend_transferState(v8, v9, v10) == 7 && objc_msgSend_error(v8, v11, v12) == 27)
  {
    v15 = objc_msgSend_chatRegistry(self, v13, v14);
    objc_msgSend__chat_retryGroupPhotoUpload_(v15, v16, self, v3);
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Not retrying group photo upload for transfer %@", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)retryTranscriptBackgroundUploadIfNecessary
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_transcriptBackgroundPath(self, a2, v2);
  v7 = objc_msgSend_transcriptBackgroundGUID(self, v5, v6);
  v9 = objc_msgSend_valueForChatProperty_(self, v8, *MEMORY[0x1E69A6CC8]);
  v11 = v9;
  if (v4 && (objc_msgSend_objectForKey_(v9, v10, *MEMORY[0x1E69A7D30]), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v16 = objc_msgSend_chatRegistry(self, v13, v14);
    objc_msgSend__chat_retryTranscriptBackgroundUpload_transferID_(v16, v17, self, v4, v7);
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v7;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Not retrying transcript background upload for transfer ID %@", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)refetchLocalTranscriptBackgroundAssetIfNecessary
{
  v5 = objc_msgSend_chatRegistry(self, a2, v2);
  objc_msgSend__refetchLocalTranscriptBackgroundAssetIfNecessaryForChat_(v5, v4, self);
}

- (BOOL)_shouldSendCancelTypingIndicator
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2);
  objc_msgSend_timeIntervalSince1970(v4, v5, v6);
  v8 = v7;

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_latestTypingIndicatorTimeInterval(self, v12, v13);
      v18 = 134218240;
      v19 = v8;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "currentTimeInterval %f, latestTypingIndicatorTimeInterval %f", &v18, 0x16u);
    }
  }

  objc_msgSend_latestTypingIndicatorTimeInterval(self, v9, v10);
  result = v8 - v15 > 3.0;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)_flagsForCancelTypingIndicatorMessage
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  if (objc_msgSend_isGroupTypingIndicatorsEnabled(v4, v5, v6))
  {
    isGroupChat = objc_msgSend_isGroupChat(self, v7, v8);

    if (isGroupChat)
    {
      return 1073741837;
    }

    else
    {
      return 13;
    }
  }

  else
  {

    return 13;
  }
}

- (BOOL)_chatStyleSupportsTypingAndCancelTypingIndicators
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  if (objc_msgSend_isGroupTypingIndicatorsEnabled(v4, v5, v6))
  {
    v9 = objc_msgSend_chatStyle(self, v7, v8);

    if (v9 == 43)
    {
      return 1;
    }
  }

  else
  {
  }

  return objc_msgSend_chatStyle(self, v10, v11) == 45;
}

- (double)typingIndicatorResendDelayInSecs
{
  if (qword_1EB2EA368 != -1)
  {
    sub_1A84E1540();
  }

  return *&qword_1EB2EA360;
}

- (void)_setLocalUserIsComposing:(id)composing suppliedGUID:(id)d typingIndicatorData:(id)data
{
  v76 = *MEMORY[0x1E69E9840];
  composingCopy = composing;
  dCopy = d;
  dataCopy = data;
  if ((objc_msgSend_hasKnownParticipants(self, v12, v13) & 1) == 0)
  {
    v16 = objc_msgSend_lastSentMessage(self, v14, v15);

    if (!v16)
    {
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_DEBUG, "Not setting local user composing for chat because this chat has no known participants, and we have never sent them a message before. Bailing. Chat: %@.", buf, 0xCu);
        }
      }

      goto LABEL_58;
    }
  }

  v17 = objc_msgSend_date(MEMORY[0x1E695DF00], v14, v15);
  objc_msgSend_timeIntervalSince1970(v17, v18, v19);
  v21 = v20;

  objc_msgSend_latestTypingIndicatorSendTimeInterval(self, v22, v23);
  v25 = v24;
  objc_msgSend_typingIndicatorResendDelayInSecs(self, v26, v27);
  localUserIsComposing = self->_localUserIsComposing;
  if (localUserIsComposing != composingCopy)
  {
    if (!composingCopy)
    {
      goto LABEL_18;
    }

LABEL_11:
    v35 = 0;
LABEL_20:
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        selfCopy = composingCopy;
        v72 = 2112;
        selfCopy2 = self;
        v74 = 2112;
        v75 = dCopy;
        _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_DEBUG, "Setting local user is composing with %@ for chat: %@   supplied guid: %@", buf, 0x20u);
      }
    }

    v38 = IMOSLoggingEnabled();
    if (v35)
    {
      if (v38)
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          selfCopy = 0x4008000000000000;
          _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "Dispatching cancel typing indicator after %f seconds", buf, 0xCu);
        }
      }

      v42 = dispatch_time(0, 3000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A832A608;
      block[3] = &unk_1E780FCB0;
      block[4] = self;
      dispatch_after(v42, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      if (v38)
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          objc_msgSend_latestTypingIndicatorTimeInterval(self, v44, v45);
          *buf = 134217984;
          selfCopy = v46;
          _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "Setting typing indicator time to %f", buf, 0xCu);
        }
      }

      if (self->_typingGUID && IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy = composingCopy;
          _os_log_impl(&dword_1A823F000, v47, OS_LOG_TYPE_INFO, " => Updating existing composing message to recording message: %@", buf, 0xCu);
        }
      }

      if (dCopy)
      {
        v48 = dCopy;
      }

      else
      {
        v48 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v39, v40);
      }

      typingGUID = self->_typingGUID;
      self->_typingGUID = v48;

      objc_storeStrong(&self->_localUserIsComposing, composing);
      if (objc_msgSend__chatStyleSupportsTypingAndCancelTypingIndicators(self, v51, v52))
      {
        isEqualToString = objc_msgSend_isEqualToString_(composingCopy, v53, @"__kIMChatComposeRecording");
        if (objc_msgSend_isEqualToString_(composingCopy, v55, @"__kIMChatComposeTyping") & 1) != 0 || (objc_msgSend_isEqualToString_(composingCopy, v56, @"__kIMChatComposeTyping"))
        {
          v58 = 0;
        }

        else
        {
          v58 = composingCopy;
        }

        objc_msgSend_setLatestTypingIndicatorSendTimeInterval_(self, v56, v57, v21);
        v60 = [IMMessage alloc];
        v62 = objc_msgSend__flagsForTypingIndicatorMessage_(self, v61, isEqualToString);
        v64 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_balloonBundleID_payloadData_expressiveSendStyleID_threadIdentifier_(v60, v63, 0, 0, 0, 0, 0, v62, 0, self->_typingGUID, 0, v58, 0, 0, 0);
        objc_msgSend_setCustomTypingIndicatorIcon_(v64, v65, dataCopy);
        if (IMOSLoggingEnabled())
        {
          v67 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = v64;
            _os_log_impl(&dword_1A823F000, v67, OS_LOG_TYPE_INFO, " => Sending start typing message: %@", buf, 0xCu);
          }
        }

        objc_msgSend__sendMessage_adjustingSender_shouldQueue_(self, v66, v64, 1, 0);
      }

      else if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, " => Not sending start typing message, the chat style does not support it", buf, 2u);
        }
      }
    }

    goto LABEL_58;
  }

  v32 = v30;
  v33 = v21 - v25;
  if (composingCopy)
  {
    if (objc_msgSend_isEqualToString_(localUserIsComposing, v28, composingCopy))
    {
      v34 = v33 <= v32;
    }

    else
    {
      v34 = 0;
    }

    if (!v34)
    {
      goto LABEL_11;
    }

LABEL_17:
    objc_msgSend_setLatestTypingIndicatorTimeInterval_(self, v28, v29, v21);
    goto LABEL_58;
  }

  if (v33 <= v30)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (self->_typingGUID)
  {
    v35 = 1;
    goto LABEL_20;
  }

  v49 = self->_localUserIsComposing;
  if (v49)
  {
    self->_localUserIsComposing = 0;
  }

LABEL_58:

  v68 = *MEMORY[0x1E69E9840];
}

- (void)forceCancelTypingIndicator
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_localUserIsComposing && self->_typingGUID)
  {
    if (objc_msgSend__chatStyleSupportsTypingAndCancelTypingIndicators(self, a2, v2))
    {
      v4 = [IMMessage alloc];
      v7 = objc_msgSend__flagsForCancelTypingIndicatorMessage(self, v5, v6);
      v9 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_threadIdentifier_(v4, v8, 0, 0, 0, 0, 0, v7, 0, self->_typingGUID, 0, 0);
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, " => Sending forced cancel typing message:: %@", buf, 0xCu);
        }
      }

      objc_msgSend__sendMessage_adjustingSender_shouldQueue_(self, v10, v9, 1, 0);
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, " => Not sending forced cancel typing message, the chat style does not support it", buf, 2u);
      }
    }

    typingGUID = self->_typingGUID;
    self->_typingGUID = 0;

    localUserIsComposing = self->_localUserIsComposing;
    self->_localUserIsComposing = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setLocalUserIsTyping:(BOOL)typing
{
  if (typing)
  {
    v3 = @"__kIMChatComposeTyping";
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1EEE66B58](self, sel_setLocalUserIsComposing_, v3);
}

- (void)setLocalUserIsRecording:(BOOL)recording
{
  if (recording)
  {
    v3 = @"__kIMChatComposeRecording";
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1EEE66B58](self, sel_setLocalUserIsComposing_, v3);
}

- (BOOL)canSendMessage:(id)message
{
  v33 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v7 = objc_msgSend_account(self, v5, v6);
  hasCapability = objc_msgSend_hasCapability_(v7, v8, 1024);

  if (hasCapability)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = objc_msgSend_fileTransferGUIDs(messageCopy, v10, v11, 0);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v32, 16);
    if (v14)
    {
      v17 = v14;
      v18 = *v29;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = objc_msgSend_sharedInstance(IMFileTransferCenter, v15, v16);
          v23 = objc_msgSend_transferForGUID_(v21, v22, v20);

          if (v23 && !objc_msgSend_canSendTransfer_(self, v24, v23))
          {

            v25 = 0;
            goto LABEL_14;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v28, v32, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v25 = 1;
LABEL_14:
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)canSendTransfer:(id)transfer
{
  v4 = objc_msgSend_account(self, a2, transfer);
  hasCapability = objc_msgSend_hasCapability_(v4, v5, 32);

  if (hasCapability)
  {
    if (objc_msgSend_chatStyle(self, v7, v8) == 45)
    {
      v11 = 1;
    }

    else
    {
      v12 = objc_msgSend_account(self, v9, v10);
      v15 = objc_msgSend_service(v12, v13, v14);
      v11 = objc_msgSend_supportsGroupAttachments(v15, v16, v17);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)authorizationToSendCurrentLocationMessageDetermined
{
  v3 = objc_msgSend_sharedInstance(IMLocationManager, a2, v2);
  v6 = objc_msgSend_locationAuthorizationDetermined(v3, v4, v5);

  return v6;
}

- (BOOL)authorizedToSendCurrentLocationMessage
{
  v3 = objc_msgSend_sharedInstance(IMLocationManager, a2, v2);
  v6 = objc_msgSend_locationAuthorizationDetermined(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_sharedInstance(IMLocationManager, v7, v8);
    v12 = objc_msgSend_locationAuthorizationDenied(v9, v10, v11) ^ 1;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (BOOL)authorizationToSendCurrentLocationMessageDenied
{
  v3 = objc_msgSend_sharedInstance(IMLocationManager, a2, v2);
  v6 = objc_msgSend_locationAuthorizationDenied(v3, v4, v5);

  return v6;
}

- (void)updateMessage:(id)message withIndexesOfDeletedItems:(id)items withIndexToRangeMapOfDeletedItems:(id)deletedItems deleteDate:(id)date
{
  v30 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  dateCopy = date;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v26 = 138412546;
      selfCopy3 = self;
      v28 = 2112;
      selfCopy2 = messageCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "chat: %@   message: %@", &v26, 0x16u);
    }
  }

  v15 = IMOSLoggingEnabled();
  if (messageCopy)
  {
    if (v15)
    {
      v18 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v26 = 138412546;
        selfCopy3 = messageCopy;
        v28 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Sending update message %@ to daemon (Chat: %@)", &v26, 0x16u);
      }
    }

    v19 = objc_msgSend_remoteDaemon(self, v16, v17);
    v22 = objc_msgSend__imMessageItem(messageCopy, v20, v21);
    objc_msgSend_updateMessage_withIndexesOfDeletedItems_withIndexToRangeMapOfDeletedItems_deleteDate_(v19, v23, v22, itemsCopy, deletedItemsCopy, dateCopy);
  }

  else if (v15)
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Asked to update empty message in chat: %@", &v26, 0xCu);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)__clearReadMessageCache
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Clearing read message cache", v8, 2u);
    }
  }

  v6 = objc_msgSend_chatRegistry(self, v3, v4);
  objc_msgSend__updateUnreadCountForChat_(v6, v7, self);
}

- (void)_setTimerForReadMessageCache
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel___clearReadMessageCache, 0);

  objc_msgSend_performSelector_withObject_afterDelay_(self, v3, sel___clearReadMessageCache, 0, 3.0);
}

- (void)markMessageAsRead:(id)read
{
  if (read)
  {
    v5 = IMSingleObjectArray();
    objc_msgSend_markMessagesAsRead_(self, v4, v5);
  }
}

- (void)markMessagesAsRead:(id)read
{
  v46 = *MEMORY[0x1E69E9840];
  readCopy = read;
  if (objc_msgSend_count(readCopy, v5, v6))
  {
    v7 = objc_alloc(MEMORY[0x1E695DF70]);
    v10 = objc_msgSend_count(readCopy, v8, v9);
    v12 = objc_msgSend_initWithCapacity_(v7, v11, v10);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = readCopy;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v41, v45, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v42;
      do
      {
        v20 = 0;
        do
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = objc_msgSend_guid(*(*(&v41 + 1) + 8 * v20), v16, v17);
          v23 = objc_msgSend__itemForGUID_(self, v22, v21);

          if ((objc_msgSend_isRead(v23, v24, v25) & 1) == 0 && (objc_msgSend_isFromMe(v23, v26, v27) & 1) == 0)
          {
            objc_msgSend_addObject_(v12, v28, v23);
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v41, v45, 16);
      }

      while (v18);
    }

    v31 = objc_msgSend_chatRegistry(self, v29, v30);
    objc_msgSend__chat_sendReadReceiptForMessages_(v31, v32, self, v12);

    objc_msgSend__setTimerForReadMessageCache(self, v33, v34);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1A832B4A0;
    v38[3] = &unk_1E7810140;
    v39 = v12;
    selfCopy = self;
    v35 = v12;
    objc_msgSend__updateChatItemsWithReason_block_(self, v36, @"(IMChat) Mark as read", v38);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)markRepliedForMessageGUID:(id)d
{
  dCopy = d;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_1A832B67C;
  v14 = &unk_1E7810140;
  selfCopy = self;
  v16 = dCopy;
  v5 = dCopy;
  objc_msgSend__updateChatItemsWithReason_block_(self, v6, @"Suggested replies selected", &v11);
  v9 = objc_msgSend_chatRegistry(self, v7, v8, v11, v12, v13, v14, selfCopy);
  objc_msgSend__chat_markRepliedForMessageGUID_(v9, v10, v5);
}

- (void)replaceItemWhenReplied:(id)replied
{
  v56 = *MEMORY[0x1E69E9840];
  repliedCopy = replied;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = objc_msgSend__items(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v50, v55, 16);
  if (!v9)
  {
    v13 = v7;
    goto LABEL_18;
  }

  v12 = v9;
  selfCopy = self;
  v13 = 0;
  v14 = *v51;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v51 != v14)
      {
        objc_enumerationMutation(v7);
      }

      v16 = *(*(&v50 + 1) + 8 * i);
      v17 = objc_msgSend_guid(v16, v10, v11);
      if (objc_msgSend_isEqualToString_(repliedCopy, v18, v17))
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          continue;
        }

        v17 = v13;
        v13 = v16;
      }
    }

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v50, v55, 16);
  }

  while (v12);

  if (v13)
  {
    v22 = objc_msgSend_body(v13, v20, v21);
    if (objc_msgSend_length(v22, v23, v24))
    {
      v27 = objc_msgSend_string(v22, v25, v26);
      v30 = objc_msgSend_length(v22, v28, v29);
      v32 = objc_msgSend_substringFromIndex_(v27, v31, v30 - 1);
      isEqualToString = objc_msgSend_isEqualToString_(v32, v33, *MEMORY[0x1E69A6CF0]);

      if (isEqualToString)
      {
        v37 = objc_msgSend_copyAsReplied(v13, v35, v36);
        v40 = objc_msgSend_messageID(v13, v38, v39);
        objc_msgSend__setMessageID_(v37, v41, v40);
        v44 = objc_msgSend_copyAsReplied(v13, v42, v43);
        v54 = v44;
        v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v45, &v54, 1);
        objc_msgSend__replaceItems_(selfCopy, v47, v46);
      }
    }

LABEL_18:
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)markLastMessageAsUnread
{
  if (objc_msgSend_unreadMessageCount(self, a2, v2))
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "We already have unread messages, ignoring request", buf, 2u);
      }
    }
  }

  else
  {
    v8 = objc_msgSend_chatRegistry(self, v4, v5);
    objc_msgSend__chat_markLastMessageAsUnread_(v8, v7, self);
  }
}

- (void)markMessageAsUnread:(id)unread
{
  if (unread)
  {
    unreadCopy = unread;
    v8 = objc_msgSend_chatRegistry(self, v5, v6);
    objc_msgSend__chat_markMessageAsUnread_message_(v8, v7, self, unreadCopy);
  }
}

- (void)markAllMessagesAsRead
{
  v25 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Request to mark all messages as read: %@", &v23, 0xCu);
    }
  }

  objc_msgSend_markKTFailureSeen(self, v3, v4);
  v8 = objc_msgSend_unreadMessageCount(self, v6, v7) == 0;
  v9 = IMOSLoggingEnabled();
  if (v8)
  {
    if (v9)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Chat has no unread messages, tell the daemon that we tried to mark it as read since this could affect message suppression", &v23, 2u);
      }
    }

    v20 = objc_msgSend_chatRegistry(self, v10, v11);
    objc_msgSend__chat_sendReadReceiptForAllMessages_(v20, v21, self);
  }

  else
  {
    if (v9)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Chat has unread messages", &v23, 2u);
      }
    }

    objc_msgSend__clearUnreadCount(self, v10, v11);
    v15 = objc_msgSend_chatRegistry(self, v13, v14);
    objc_msgSend__chat_sendReadReceiptForAllMessages_(v15, v16, self);

    objc_msgSend__setTimerForReadMessageCache(self, v17, v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)recoverFromJunkTo:(int64_t)to
{
  if (objc_msgSend_isFiltered(self, a2, to) == 2)
  {
    objc_msgSend_setRecovered_(self, v5, 1);
    objc_msgSend_updateIsFiltered_(self, v6, to);
    objc_msgSend__reloadChatItemsForFilteringChange(self, v7, v8);
    v11 = objc_msgSend_chatRegistry(self, v9, v10);
    objc_msgSend__chat_recoverFromJunk_(v11, v12, self);

    v17 = objc_msgSend_chatRegistry(self, v13, v14);
    objc_msgSend__chatDidRecoverFromJunk_(v17, v15, self);
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Chat is not a junk chat, not recovering", buf, 2u);
    }
  }
}

- (void)markAsKnownAndSaveInContacts:(BOOL)contacts completion:(id)completion
{
  contactsCopy = contacts;
  completionCopy = completion;
  v9 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v7, v8);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v9, v10, v11);

  if (isIntroductionsEnabled)
  {
    objc_msgSend_setCurrentlyMarkingAsKnown_(self, v13, 1);
    if (objc_msgSend_isFiltered(self, v14, v15))
    {
      objc_msgSend_updateIsFiltered_(self, v16, 0);
      v19 = objc_msgSend_chatRegistry(self, v17, v18);
      objc_msgSend__chat_acceptChat_(v19, v20, self);

      if ((objc_msgSend_isGroupChat(self, v21, v22) & 1) != 0 || !contactsCopy)
      {
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1, 0);
          objc_msgSend_setCurrentlyMarkingAsKnown_(self, v25, 0);
        }
      }

      else
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = sub_1A832BF14;
        v26[3] = &unk_1E7812840;
        v26[4] = self;
        v27 = completionCopy;
        objc_msgSend__recordMarkedAsKnownForParticipantsWithCompletion_(self, v23, v26);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Chat is already accepted", buf, 2u);
      }
    }
  }
}

- (void)_recordMarkedAsKnownForParticipantsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Recording accepted introductions for chat: %@", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A832C0B0;
  v9[3] = &unk_1E7812890;
  v9[4] = self;
  v10 = completionCopy;
  v6 = completionCopy;
  objc_msgSend__introductionsForParticipantsWithCompletion_(self, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_introductionsForParticipantsWithCompletion:(id)completion
{
  v58 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = dispatch_group_create();
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = objc_msgSend_participants(self, v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v53, v57, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v54;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v53 + 1) + 8 * i);
        v19 = objc_msgSend_ID(v18, v13, v14, completionCopy);
        v22 = objc_msgSend_im_stripCategoryLabel(v19, v20, v21);

        if (objc_msgSend_hasSuggestedName(v18, v23, v24))
        {
          dispatch_group_enter(v4);
          v29 = objc_msgSend_sharedInstance(IMSuggestionsService, v27, v28);
          v32 = objc_msgSend_displayID(v18, v30, v31);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = sub_1A832C628;
          v49[3] = &unk_1E78128B8;
          v50 = v22;
          v51 = v7;
          v52 = v4;
          objc_msgSend_fetchUncachedSuggestedRealNameForDisplayName_prependMaybe_queue_block_(v29, v33, v32, 0, MEMORY[0x1E69E96A0], v49);

          v34 = v50;
        }

        else
        {
          v35 = objc_msgSend_nicknameFromNicknameController(v18, v25, v26);

          if (v35)
          {
            v34 = objc_msgSend_nicknameFromNicknameController(v18, v36, v37);
            v39 = objc_msgSend_introductionWithHandle_suggestedName_(MEMORY[0x1E69A80C8], v38, v22, v34);
            objc_msgSend_addObject_(v7, v40, v39);
          }

          else
          {
            v34 = objc_msgSend_introductionWithHandle_suggestedName_(MEMORY[0x1E69A80C8], v36, v22, 0);
            objc_msgSend_addObject_(v7, v41, v34);
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v53, v57, 16);
    }

    while (v15);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A832C694;
  block[3] = &unk_1E7810230;
  v47 = v7;
  v48 = completionCopy;
  v42 = v7;
  v43 = completionCopy;
  dispatch_group_notify(v4, MEMORY[0x1E69E96A0], block);

  v44 = *MEMORY[0x1E69E9840];
}

- (void)_setChatProperties:(id)properties isCurrentGUID:(BOOL)d
{
  v145 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  chatProperties = self->_chatProperties;
  if (chatProperties != propertiesCopy)
  {
    dCopy = d;
    isEqualToDictionary = 0;
    if (propertiesCopy && chatProperties)
    {
      v12 = objc_msgSend_count(chatProperties, v7, v8);
      if (v12 == objc_msgSend_count(propertiesCopy, v13, v14))
      {
        isEqualToDictionary = objc_msgSend_isEqualToDictionary_(self->_chatProperties, v7, propertiesCopy);
      }

      else
      {
        isEqualToDictionary = 0;
      }
    }

    v15 = objc_msgSend_valueForKey_(propertiesCopy, v7, @"wasAutoDetectedForSpam");
    v124 = objc_msgSend_BOOLValue(v15, v16, v17);
    v19 = objc_msgSend_valueForKey_(self->_chatProperties, v18, @"wasAutoDetectedForSpam");
    v123 = objc_msgSend_BOOLValue(v19, v20, v21);

    if (isEqualToDictionary)
    {
      v122 = 0;
    }

    else
    {
      v24 = objc_msgSend_valueForKey_(propertiesCopy, v22, *MEMORY[0x1E69A6AF8]);
      v27 = objc_msgSend_associatedBusinessID(self, v25, v26);
      v122 = objc_msgSend_isEqualToString_(v24, v28, v27) ^ 1;
    }

    v136 = objc_msgSend_translationLanguageCode(self, v22, v23);
    v29 = *MEMORY[0x1E69A6CE0];
    v135 = objc_msgSend_valueForKey_(self->_chatProperties, v30, *MEMORY[0x1E69A6CE0]);
    v134 = objc_msgSend_incomingTranslationLanguageCode(self, v31, v32);
    v133 = objc_msgSend_objectForKeyedSubscript_(propertiesCopy, v33, *MEMORY[0x1E69A6B60]);
    v132 = objc_msgSend_objectForKeyedSubscript_(propertiesCopy, v34, *MEMORY[0x1E69A6B08]);
    v131 = objc_msgSend_objectForKeyedSubscript_(propertiesCopy, v35, v29);
    v130 = objc_msgSend_objectForKeyedSubscript_(propertiesCopy, v36, *MEMORY[0x1E69A6C30]);
    v118 = *MEMORY[0x1E69A6CC8];
    v138 = objc_msgSend_objectForKeyedSubscript_(propertiesCopy, v37, *MEMORY[0x1E69A6CC8]);
    v40 = objc_msgSend_transcriptBackgroundDetails(self, v38, v39);
    v43 = objc_msgSend_copy(v40, v41, v42);

    v137 = v43;
    v119 = *MEMORY[0x1E69A7D40];
    v128 = objc_msgSend_objectForKeyedSubscript_(v43, v44, *MEMORY[0x1E69A7D40]);
    v45 = *MEMORY[0x1E69A7D38];
    v126 = objc_msgSend_objectForKeyedSubscript_(v43, v46, *MEMORY[0x1E69A7D38]);
    v127 = objc_msgSend_transcriptBackgroundChannelTransferGUID(self, v47, v48);
    v51 = objc_msgSend_BOOLValue(v133, v49, v50);
    isAutomaticTranslationEnabled = objc_msgSend_isAutomaticTranslationEnabled(self, v52, v53);
    v57 = (objc_msgSend_isEqualToString_(v132, v55, v136) & 1) == 0 && (v132 | v136) != 0;
    v59 = (objc_msgSend_isEqualToString_(v131, v56, v135) & 1) == 0 && (v131 | v135) != 0;
    v60 = v51 ^ isAutomaticTranslationEnabled;
    v63 = (objc_msgSend_isEqualToString_(v130, v58, v134) & 1) == 0 && (v130 | v134) != 0;
    if ((isEqualToDictionary | v57 | v60))
    {
      v64 = isEqualToDictionary ^ 1;
    }

    else
    {
      v64 = v59 || v63;
    }

    v121 = v64;
    v129 = objc_msgSend_transcriptBackgroundGUID(self, v61, v62);
    v66 = objc_msgSend_objectForKeyedSubscript_(v138, v65, v45);
    v69 = (objc_msgSend_isEqualToString_(v129, v67, v66) & 1) == 0 && (v129 | v66) != 0;
    v70 = *MEMORY[0x1E69A7870];
    v72 = objc_msgSend_objectForKeyedSubscript_(propertiesCopy, v68, *MEMORY[0x1E69A7870]);
    if (v72)
    {
      v73 = objc_msgSend_objectForKeyedSubscript_(self->_chatProperties, v71, v70);
      v120 = v73 == 0;
    }

    else
    {
      v120 = 0;
    }

    objc_storeStrong(&self->_chatProperties, properties);
    if (self->_chatProperties)
    {
      if (isEqualToDictionary)
      {
        goto LABEL_64;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v76 = self->_chatProperties;
      self->_chatProperties = Mutable;

      if (isEqualToDictionary)
      {
LABEL_64:

        goto LABEL_65;
      }
    }

    if (!dCopy)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_chatProperties, v74, v127, *MEMORY[0x1E69A6CC0]);
    }

    if (v69)
    {
      v77 = objc_msgSend_objectForKeyedSubscript_(v138, v74, v119);
      v79 = objc_msgSend_objectForKeyedSubscript_(v138, v78, v45);
      v82 = objc_msgSend_unsignedLongLongValue(v128, v80, v81);
      v85 = objc_msgSend_unsignedLongLongValue(v77, v83, v84);
      v88 = objc_msgSend_unsignedLongLongValue(v128, v86, v87);
      v92 = v88 == objc_msgSend_unsignedLongLongValue(v77, v89, v90) && objc_msgSend_compare_(v79, v91, v126) == -1;
      v93 = v82 > v85;
      if (IMOSLoggingEnabled())
      {
        v96 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          selfCopy = v77;
          v141 = 2112;
          v142 = v128;
          v143 = 1024;
          v144 = v92;
          _os_log_impl(&dword_1A823F000, v96, OS_LOG_TYPE_INFO, "incomingVersion: %@, oldBackgroundVersion: %@, Performing tie break: %{BOOL}d", buf, 0x1Cu);
        }
      }

      if (v93 || v92)
      {
        if (IMOSLoggingEnabled())
        {
          v98 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            selfCopy = v137;
            v141 = 2112;
            v142 = v138;
            _os_log_impl(&dword_1A823F000, v98, OS_LOG_TYPE_INFO, "Tried to set properties that contain an older version of the background. Reverting to older version: %@. Incoming properties: %@", buf, 0x16u);
          }
        }

        objc_msgSend_setObject_forKeyedSubscript_(self->_chatProperties, v97, v137, v118);
      }

      else
      {
        v99 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v94, v95);
        objc_msgSend_postNotificationName_object_userInfo_(v99, v100, @"__kIMChatTranscriptBackgroundChangedNotification", self, 0);
      }
    }

    objc_msgSend_setWasDetectedAsSMSSpamCacheStatus_(self, v74, 0);
    objc_msgSend__postNotification_userInfo_(self, v101, @"__kIMChatPropertiesChangedNotification", 0);
    if (v121)
    {
      objc_msgSend__postNotification_userInfo_(self, v102, @"__kIMChatAutomaticTranslationChangedNotification", 0);
    }

    objc_msgSend__delayedInvalidateDowngradeState(self, v102, v103);
    if (v124 != v123)
    {
      objc_msgSend__updateChatItemsWithReason_block_(self, v104, @"(IMChat) Report spam", &unk_1F1B6EA60);
    }

    if (v122)
    {
      v106 = objc_msgSend_recipient(self, v104, v105);
      objc_msgSend_associatedBusinessIDChanged(v106, v107, v108);
    }

    v109 = objc_msgSend_objectForKeyedSubscript_(propertiesCopy, v104, *MEMORY[0x1E69A6A60]);

    if (v109)
    {
      objc_msgSend_fetchBrandInfoIfNecessary(self, v110, v111);
    }

    if (v120)
    {
      if (IMOSLoggingEnabled())
      {
        v114 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_1A823F000, v114, OS_LOG_TYPE_INFO, "Persistent Menu - Adding new persistent menu to chat: %@", buf, 0xCu);
        }
      }

      v115 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v112, v113);
      objc_msgSend_postNotificationName_object_(v115, v116, *MEMORY[0x1E69A6AC8], self);
    }

    goto LABEL_64;
  }

LABEL_65:

  v117 = *MEMORY[0x1E69E9840];
}

- (id)valueForChatProperty:(id)property
{
  v3 = objc_msgSend_objectForKey_(self->_chatProperties, a2, property);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (void)setValue:(id)value forChatProperty:(id)property
{
  v49 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  if (propertyCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v43 = 138412802;
        v44 = valueCopy;
        v45 = 2112;
        v46 = propertyCopy;
        v47 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Attempt to set value: %@ for chatProperty: %@ on chat: %@", &v43, 0x20u);
      }
    }

    if (qword_1ED7679D8 != -1)
    {
      sub_1A84E15C4();
    }

    if (objc_msgSend_containsObject_(qword_1ED7679D0, v8, propertyCopy))
    {
      v11 = objc_msgSend_valueForChatProperty_(self, v10, propertyCopy);
      v13 = v11;
      if (v11 == valueCopy || valueCopy && v11 && objc_msgSend_isEqual_(valueCopy, v12, v11))
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            LOWORD(v43) = 0;
            _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Attempt to update a chat property to the same value.", &v43, 2u);
          }
        }
      }

      else
      {
        if ((objc_msgSend_isEqualToString_(propertyCopy, v12, @"wasDetectedAsSMSSpam") & 1) != 0 || objc_msgSend_isEqualToString_(propertyCopy, v17, @"SMSCategory"))
        {
          objc_msgSend_setWasDetectedAsSMSSpamCacheStatus_(self, v17, 0);
        }

        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v43 = 138412546;
            v44 = propertyCopy;
            v45 = 2112;
            v46 = valueCopy;
            _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Setting chatProperty: %@ to value: %@", &v43, 0x16u);
          }
        }

        chatProperties = self->_chatProperties;
        if (!chatProperties)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v23 = self->_chatProperties;
          self->_chatProperties = Mutable;

          chatProperties = self->_chatProperties;
        }

        if ((objc_msgSend___imIsMutable(chatProperties, v18, v19) & 1) == 0)
        {
          v26 = objc_msgSend_mutableCopy(self->_chatProperties, v24, v25);
          if (!v26)
          {
            v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v27 = self->_chatProperties;
          self->_chatProperties = v26;
        }

        if (!valueCopy || (objc_msgSend_null(MEMORY[0x1E695DFB0], v24, v25), v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 == valueCopy, v28, v29))
        {
          objc_msgSend_removeObjectForKey_(self->_chatProperties, v24, propertyCopy);
        }

        else
        {
          v31 = self->_chatProperties;
          v32 = objc_msgSend_copy(valueCopy, v24, v30);
          objc_msgSend_setObject_forKey_(v31, v33, v32, propertyCopy);
        }

        v36 = objc_msgSend_chatRegistry(self, v34, v35);
        objc_msgSend__chat_setValue_forChatProperty_(v36, v37, self, valueCopy, propertyCopy);

        if (!objc_msgSend_count(self->_chatProperties, v38, v39))
        {
          v41 = self->_chatProperties;
          self->_chatProperties = 0;
        }

        objc_msgSend__postNotification_userInfo_(self, v40, @"__kIMChatPropertiesChangedNotification", 0);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v43 = 138412290;
        v44 = propertyCopy;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Attempt to modify chat property: %@ which is not in the allowlist", &v43, 0xCu);
      }
    }
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E15EC();
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)consumeSummaryIfNeeded
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], a2, v2))
  {
    v5 = *MEMORY[0x1E69A6B28];
    v6 = objc_msgSend_valueForChatProperty_(self, v4, *MEMORY[0x1E69A6B28]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *MEMORY[0x1E69A6B20];
      v9 = objc_msgSend_objectForKey_(v6, v7, *MEMORY[0x1E69A6B20]);
      v12 = objc_msgSend_BOOLValue(v9, v10, v11);

      if ((v12 & 1) == 0)
      {
        v15 = objc_msgSend_mutableCopy(v6, v13, v14);
        objc_msgSend_setObject_forKey_(v15, v16, MEMORY[0x1E695E118], v8);
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v22 = objc_msgSend_guid(self, v20, v21);
            v26 = 138412290;
            v27 = v22;
            _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Marking summary as consumed on chat with GUID %@", &v26, 0xCu);
          }
        }

        v23 = objc_msgSend_copy(v15, v17, v18);
        objc_msgSend_setValue_forChatProperty_(self, v24, v23, v5);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_syncChatItemProperties:(id)properties
{
  v48 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = propertiesCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Sending generic notification to update chat properties for properties: %@", buf, 0xCu);
    }
  }

  v8 = objc_msgSend_sharedInstance(IMAccountController, v5, v6);
  v11 = objc_msgSend_iMessageService(IMServiceImpl, v9, v10);
  v14 = objc_msgSend_strippedLogin(self->_account, v12, v13);
  v16 = objc_msgSend_bestOperationalAccountForService_withLogin_(v8, v15, v11, v14);

  if (v16)
  {
    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = objc_msgSend_strippedLogin(self->_account, v20, v21);
      *buf = 138412290;
      v47 = v22;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Could not find operational account with login %@, looking for next best operational account.", buf, 0xCu);
    }
  }

  v23 = objc_msgSend_sharedInstance(IMAccountController, v17, v18);
  v26 = objc_msgSend_iMessageService(IMServiceImpl, v24, v25);
  v16 = objc_msgSend_bestOperationalAccountForService_(v23, v27, v26);

  if (v16)
  {
LABEL_23:
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v16;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Found account for sending: %@", buf, 0xCu);
      }
    }

    v31 = objc_msgSend_remoteDaemon(self, v28, v29);
    v33 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v32, 60000);
    v36 = objc_msgSend_loginIMHandle(self->_account, v34, v35);
    v39 = objc_msgSend_ID(v36, v37, v38);
    v42 = objc_msgSend_uniqueID(v16, v40, v41);
    objc_msgSend_sendCommand_withProperties_toPerson_account_toChatID_identifier_style_(v31, v43, v33, propertiesCopy, v39, v42, self->_guid, self->_identifier, self->_style);
  }

  else if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "Could not find operational account to use for syncing chat properties.", buf, 2u);
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (id)allPropertiesOfParticipant:(id)participant
{
  participantProperties = self->_participantProperties;
  v4 = objc_msgSend_guid(participant, a2, participant);
  v6 = objc_msgSend_objectForKey_(participantProperties, v5, v4);

  return v6;
}

- (id)valueForProperty:(id)property ofParticipant:(id)participant
{
  propertyCopy = property;
  v8 = objc_msgSend_allPropertiesOfParticipant_(self, v7, participant);
  v10 = objc_msgSend_objectForKey_(v8, v9, propertyCopy);

  return v10;
}

- (void)setValue:(id)value forProperty:(id)property ofParticipant:(id)participant
{
  valueCopy = value;
  propertyCopy = property;
  participantCopy = participant;
  v11 = participantCopy;
  if (propertyCopy && participantCopy)
  {
    v13 = objc_msgSend_allPropertiesOfParticipant_(self, v10, participantCopy);
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      participantProperties = self->_participantProperties;
      if (!participantProperties)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v18 = self->_participantProperties;
        self->_participantProperties = Mutable;

        participantProperties = self->_participantProperties;
      }

      v19 = objc_msgSend_guid(v11, v14, v15);
      objc_msgSend_setObject_forKey_(participantProperties, v20, v13, v19);
    }

    objc_msgSend_setObject_forKey_(v13, v12, valueCopy, propertyCopy);
    v23 = objc_msgSend_chatRegistry(self, v21, v22);
    objc_msgSend__chat_setProperties_ofParticipant_(v23, v24, self, v13, v11);
  }
}

- (id)_mergeParticipantIDs
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = objc_msgSend_participants(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);
  v11 = objc_msgSend_initWithCapacity_(v3, v10, v9);

  if (objc_msgSend_chatStyle(self, v12, v13) == 43)
  {
    v16 = objc_msgSend_displayName(self, v14, v15);
    v19 = objc_msgSend_length(v16, v17, v18) == 0;
  }

  else
  {
    v19 = 1;
  }

  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    v22 = IMMergeNamedGroups() ^ 1 | v19;
  }

  else
  {
    v22 = 0;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v23 = objc_msgSend_participants(self, v20, v21, 0);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v48, v52, 16);
  if (v25)
  {
    v28 = v25;
    v29 = *v49;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(v23);
        }

        v31 = *(*(&v48 + 1) + 8 * i);
        if ((v22 & 1) == 0)
        {
          goto LABEL_18;
        }

        if (objc_msgSend_isContact(*(*(&v48 + 1) + 8 * i), v26, v27) && IMSharedHelperContactsBasedMergingEnabled())
        {
          v33 = objc_msgSend_cnContactWithKeys_(v31, v32, MEMORY[0x1E695E0F0]);
          v36 = objc_msgSend_identifier(v33, v34, v35);

          v39 = objc_msgSend_length(v36, v37, v38);
          goto LABEL_20;
        }

        if (IMSharedHelperPersonCentricMergingEnabled())
        {
          v36 = objc_msgSend_personCentricID(v31, v26, v27);
          v39 = objc_msgSend_length(v36, v42, v43);
        }

        else
        {
LABEL_18:
          v36 = 0;
          v39 = objc_msgSend_length(0, v26, v27);
        }

LABEL_20:
        if (!v39)
        {
          v44 = objc_msgSend_ID(v31, v40, v41);

          v36 = v44;
        }

        if (objc_msgSend_length(v36, v40, v41))
        {
          objc_msgSend_addObject_(v11, v45, v36);
        }

        else
        {
          objc_msgSend_addObject_(v11, v45, @"invalidHandle");
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v48, v52, 16);
    }

    while (v28);
  }

  v46 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_generatePersonCentricID
{
  v36 = MEMORY[0x1E69A7F78];
  v4 = objc_msgSend_guid(self, a2, v2);
  v7 = objc_msgSend_chatIdentifier(self, v5, v6);
  v10 = objc_msgSend_chatStyle(self, v8, v9);
  v13 = objc_msgSend_groupID(self, v11, v12);
  v16 = objc_msgSend_displayName(self, v14, v15);
  KnownHybridState = objc_msgSend__lastKnownHybridState(self, v17, v18);
  v22 = objc_msgSend_account(self, v20, v21);
  v25 = objc_msgSend_service(v22, v23, v24);
  v28 = objc_msgSend_groupsMergeDisplayNames(v25, v26, v27);
  v31 = objc_msgSend__mergeParticipantIDs(self, v29, v30);
  v35 = v28;
  v33 = objc_msgSend_personCentricIDForChatWithGUID_chatIdentifier_chatStyle_groupID_displayName_lastKnownToBeHybrid_mergeDisplayNames_participantIDs_(v36, v32, v4, v7, v10, v13, v16, KnownHybridState, v35, v31);

  return v33;
}

- (BOOL)supportsEncryption
{
  v3 = objc_msgSend_chatProperties(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x1E69A6CB0]);

  if (v5)
  {
    v8 = objc_msgSend_BOOLValue(v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_hasCommunicatedOnService:(id)service
{
  serviceCopy = service;
  v7 = objc_msgSend_account(self, v5, v6);
  v10 = objc_msgSend_service(v7, v8, v9);

  if (v10 == serviceCopy)
  {
    hasChat_forService = 1;
  }

  else
  {
    v13 = objc_msgSend_chatRegistry(self, v11, v12);
    hasChat_forService = objc_msgSend__hasChat_forService_(v13, v14, self, serviceCopy);
  }

  return hasChat_forService;
}

- (void)_setAccount:(id)account
{
  v99 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = objc_msgSend_service(accountCopy, v5, v6);
  v10 = objc_msgSend_supportsMessaging(v7, v8, v9);

  if (!accountCopy)
  {
    goto LABEL_50;
  }

  if (self->_account == accountCopy || v10 == 0)
  {
    goto LABEL_50;
  }

  v14 = objc_msgSend_joinState(self, v11, v12) != 3;
  v17 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v15, v16);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v17, v18, v19);

  v86 = isOneChatEnabled | v14;
  account = self->_account;
  if (account != accountCopy)
  {
    style = self->_style;
    if (style == 35 || style == 43)
    {
LABEL_17:
      v31 = objc_msgSend_service(account, v11, v12);
      v34 = objc_msgSend_service(accountCopy, v32, v33);

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v38 = objc_msgSend_uniqueID(self->_account, v36, v37);
          v41 = objc_msgSend_uniqueID(accountCopy, v39, v40);
          v42 = v41;
          v43 = @"YES";
          *buf = 138412802;
          v94 = v38;
          v95 = 2112;
          if (v31 == v34)
          {
            v43 = @"NO";
          }

          v96 = v41;
          v97 = 2112;
          v98 = v43;
          _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "Trying to change group chat account from %@ to %@ (service change: %@)", buf, 0x20u);
        }
      }

      objc_storeStrong(&self->_account, account);
      v46 = objc_msgSend_participants(self, v44, v45);
      v49 = objc_msgSend_copy(v46, v47, v48);

      v50 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      participants = self->_participants;
      self->_participants = v50;

      objc_msgSend_removeAllObjects(self->_participantStates, v52, v53);
      v54 = objc_alloc(MEMORY[0x1E695DF70]);
      v57 = objc_msgSend_count(v49, v55, v56);
      v59 = objc_msgSend_initWithCapacity_(v54, v58, v57);
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v60 = v49;
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v88, v92, 16);
      if (v63)
      {
        v64 = *v89;
        do
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v89 != v64)
            {
              objc_enumerationMutation(v60);
            }

            v66 = *(*(&v88 + 1) + 8 * i);
            v67 = objc_msgSend_imHandleForOtherAccount_(v66, v62, accountCopy);
            if (IMOSLoggingEnabled())
            {
              v69 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v94 = v66;
                v95 = 2112;
                v96 = v67;
                _os_log_impl(&dword_1A823F000, v69, OS_LOG_TYPE_INFO, " Old handle: %@     New handle: %@", buf, 0x16u);
              }
            }

            if (v67)
            {
              objc_msgSend_addObject_(v59, v68, v67);
            }
          }

          v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v62, &v88, v92, 16);
        }

        while (v63);
      }

      if (v86)
      {
        objc_msgSend__addParticipants_withState_(self, v70, v59, 16);
      }

      else
      {
        objc_msgSend__addParticipants_withState_(self, v70, v59, 1);
      }

      if (IMOSLoggingEnabled())
      {
        v73 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v76 = objc_msgSend_participants(self, v74, v75);
          *buf = 138412546;
          v94 = v60;
          v95 = 2112;
          v96 = v76;
          _os_log_impl(&dword_1A823F000, v73, OS_LOG_TYPE_INFO, " Old participants: %@        New participants: %@", buf, 0x16u);
        }
      }

      v77 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v71, v72);
      objc_msgSend_postNotificationName_object_(v77, v78, @"__kIMChatSendingServiceChangedNotification", self);

      goto LABEL_44;
    }

    if (style == 45)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = self->_account;
          *buf = 138412546;
          v94 = v26;
          v95 = 2112;
          v96 = accountCopy;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Trying to change 1-1 account from %@ to %@", buf, 0x16u);
        }
      }

      v27 = objc_msgSend_recipient(self, v23, v24);
      v29 = objc_msgSend_imHandleForOtherAccount_(v27, v28, accountCopy);

      if (v29)
      {
        objc_msgSend_setRecipient_(self, v30, v29);
      }

      account = self->_account;
      goto LABEL_17;
    }
  }

LABEL_44:
  if ((v86 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v81 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        v84 = objc_msgSend_guid(self, v82, v83);
        *buf = 138412290;
        v94 = v84;
        _os_log_impl(&dword_1A823F000, v81, OS_LOG_TYPE_INFO, "Transitioning %@ to joining state due to account change", buf, 0xCu);
      }
    }

    self->_joinState = 2;
    objc_msgSend_join(self, v79, v80);
  }

LABEL_50:
  objc_msgSend__clearCachedIdentifier(self, v11, v12);

  v85 = *MEMORY[0x1E69E9840];
}

- (void)_resetParticipants:(id)participants
{
  v58 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_participants(self, v9, v10);
      v52 = 138412802;
      v53 = v11;
      v54 = 2112;
      v55 = participantsCopy;
      v56 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Trying to change participants from %@ to %@ (Chat: %@)", &v52, 0x20u);
    }
  }

  if (objc_msgSend_count(participantsCopy, v6, v7))
  {
    v14 = objc_msgSend_count(participantsCopy, v12, v13);
    v17 = objc_msgSend_participants(self, v15, v16);
    LODWORD(v14) = v14 == objc_msgSend_count(v17, v18, v19);

    if (v14)
    {
      v22 = objc_msgSend_chatRegistry(self, v20, v21);
      v25 = objc_msgSend_participants(self, v23, v24);
      v27 = objc_msgSend__sortedParticipantIDHashForParticipants_usesPersonCentricID_fallbackToContactID_(v22, v26, v25, 0, 0);

      v30 = objc_msgSend_chatRegistry(self, v28, v29);
      v32 = objc_msgSend__sortedParticipantIDHashForParticipants_usesPersonCentricID_fallbackToContactID_(v30, v31, participantsCopy, 0, 0);

      if (objc_msgSend_isEqualToString_(v27, v33, v32))
      {
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            LOWORD(v52) = 0;
            _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, "Handles are identical, not updating the participants.", &v52, 2u);
          }
        }
      }

      else
      {
        v37 = objc_msgSend_chatRegistry(self, v34, v35);
        v40 = objc_msgSend_participants(self, v38, v39);
        v42 = objc_msgSend__sortedParticipantIDHashForParticipants_usesPersonCentricID_fallbackToContactID_(v37, v41, v40, 0, 1);

        v45 = objc_msgSend_chatRegistry(self, v43, v44);
        v47 = objc_msgSend__sortedParticipantIDHashForParticipants_usesPersonCentricID_fallbackToContactID_(v45, v46, participantsCopy, 0, 1);

        if (objc_msgSend_isEqualToString_(v42, v48, v47))
        {
          objc_storeStrong(&self->_participants, participants);
          objc_msgSend__postNotification_userInfo_(self, v49, @"__kIMChatParticipantsDidChangeNotification", 0);
        }

        else if (IMOSLoggingEnabled())
        {
          v50 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            LOWORD(v52) = 0;
            _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "Cannot reset participants due to mismatching participant hashes.", &v52, 2u);
          }
        }
      }
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)setRecipient:(id)recipient
{
  v90 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_recipient(self, v8, v9);
      *buf = 138412802;
      v85 = v10;
      v86 = 2112;
      v87 = recipientCopy;
      v88 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Trying to change recipient from %@ to %@ (Chat: %@)", buf, 0x20u);
    }
  }

  if (recipientCopy)
  {
    v83 = objc_msgSend_recipient(self, v5, v6);
    if (objc_msgSend_isEqual_(v83, v11, recipientCopy))
    {
LABEL_39:

      goto LABEL_40;
    }

    if (v83 && objc_msgSend_chatStyle(self, v12, v13) == 45 && (objc_msgSend__isChatSiblingOf_(recipientCopy, v12, v83) & 1) == 0 && (IMSharedHelperPersonCentricMergingEnabled() & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v85 = v83;
          v86 = 2112;
          v87 = recipientCopy;
          _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "** Cannot change recipient from %@ => %@, this is not a chat sibling", buf, 0x16u);
        }
      }

      goto LABEL_39;
    }

    if (objc_msgSend_chatStyle(self, v12, v13) == 45)
    {
      v16 = objc_msgSend_originalID(recipientCopy, v14, v15);
      v19 = objc_msgSend_originalID(v83, v17, v18);
      if (objc_msgSend_isEqualToString_(v16, v20, v19))
      {
        v23 = objc_msgSend_ID(recipientCopy, v21, v22);
        v26 = objc_msgSend_originalID(v83, v24, v25);
        if ((objc_msgSend_isEqualToString_(v23, v27, v26) & 1) == 0)
        {
          v30 = objc_msgSend_ID(recipientCopy, v28, v29);
          if (MEMORY[0x1AC56C3C0]())
          {
            v33 = objc_msgSend_ID(v83, v31, v32);
            if (MEMORY[0x1AC56C3C0]())
            {
              v81 = objc_msgSend_ID(recipientCopy, v34, v35);
              v80 = IMCountryCodeForNumber();
              v38 = objc_msgSend_ID(v83, v36, v37);
              v39 = IMCountryCodeForNumber();
              isEqualToString = objc_msgSend_isEqualToString_(v80, v40, v39);

              if ((isEqualToString & 1) == 0)
              {
                v41 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v14, v15);
                objc_msgSend_forceAutoBugCaptureWithSubType_errorPayload_type_context_(v41, v42, @"Country Code Swap", 0, @"DSDS Privacy Violation", @"Detected an attempt to retarget a chat at the same destination, but with a different country code");

                goto LABEL_39;
              }

              goto LABEL_26;
            }
          }
        }
      }
    }

LABEL_26:
    v44 = objc_msgSend_recipient(self, v14, v15);
    v45 = recipientCopy;
    v82 = self->_account;
    v48 = objc_msgSend_account(v45, v46, v47);
    v52 = objc_msgSend_mutableCopy(self->_participants, v49, v50);
    if (!v52)
    {
      v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (objc_msgSend_containsObjectIdenticalTo_(v52, v51, v44))
    {
      objc_msgSend_removeObject_(v52, v53, v44);
    }

    objc_msgSend_addObject_(v52, v53, v45);
    objc_storeStrong(&self->_participants, v52);
    v56 = objc_msgSend_service(v48, v54, v55);
    v59 = objc_msgSend_supportsMessaging(v56, v57, v58);

    if (((v82 != v48) & v59) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v62 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v85 = v82;
          v86 = 2112;
          v87 = v48;
          v88 = 2112;
          selfCopy2 = self;
          _os_log_impl(&dword_1A823F000, v62, OS_LOG_TYPE_INFO, "Setting to a new account from %@ to %@ for (Chat: %@)", buf, 0x20u);
        }
      }

      objc_storeStrong(&self->_account, v48);
      self->_senderBlackholeWarningStatus = 0;
      v65 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v63, v64);
      objc_msgSend_postNotificationName_object_(v65, v66, @"__kIMChatSendingServiceChangedNotification", self);
    }

    objc_msgSend__clearCachedIdentifier(self, v60, v61);
    v67 = objc_alloc(MEMORY[0x1E695DF20]);
    v69 = objc_msgSend_initWithObjectsAndKeys_(v67, v68, v45, @"__kIMChatValueKey", v44, @"__kIMChatOldValueKey", 0);
    objc_msgSend__postNotification_userInfo_(self, v70, @"__kIMChatRecipientDidChangeNotification", v69);
    objc_msgSend__postNotification_userInfo_(self, v71, @"__kIMChatParticipantsDidChangeNotification", 0);
    if (objc_msgSend_joinState(self, v72, v73) == 3)
    {
      v76 = objc_msgSend_chatRegistry(self, v74, v75);
      objc_msgSend__chat_joinWithProperties_(v76, v77, self, self->_chatProperties);
    }

    goto LABEL_39;
  }

LABEL_40:

  v78 = *MEMORY[0x1E69E9840];
}

- (void)join
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Request to join chat: %@", &v15, 0xCu);
    }
  }

  if ((self->_joinState - 3) >= 2)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = objc_msgSend_chatIdentifier(self, v6, v7);
        joinState = self->_joinState;
        v15 = 138412546;
        selfCopy = v8;
        v17 = 2048;
        v18 = joinState;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Transitioning %@ to joining state due to join from state %ld", &v15, 0x16u);
      }
    }

    objc_msgSend__setJoinState_(self, v4, 2);
    v12 = objc_msgSend_chatRegistry(self, v10, v11);
    objc_msgSend__chat_joinWithProperties_(v12, v13, self, self->_chatProperties);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)leave
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Request to leave chat: %@", &v10, 0xCu);
    }
  }

  if (self->_style == 45)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Not allowed to leave 1:1 chat: %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    if (self->_joinState == 3)
    {
      objc_msgSend__setJoinState_(self, v3, 1);
    }

    v7 = objc_msgSend_chatRegistry(self, v3, v4);
    objc_msgSend__chat_leave_(v7, v8, self);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)remove
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Request to remove chat: %@", &v9, 0xCu);
    }
  }

  if (self->_joinState == 3)
  {
    objc_msgSend__setJoinState_(self, v3, 1);
  }

  v6 = objc_msgSend_chatRegistry(self, v3, v4);
  objc_msgSend__chat_remove_(v6, v7, self);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_addParticipants:(id)participants withState:(unint64_t)state
{
  v37 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  if (objc_msgSend_count(participantsCopy, v7, v8))
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v12 = objc_msgSend_count(participantsCopy, v10, v11);
    v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = participantsCopy;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v32, v36, 16);
    if (v17)
    {
      v19 = v17;
      v20 = *v33;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(self->_participants, v18, v22, v32) & 1) == 0)
          {
            objc_msgSend_addObject_(v14, v18, v22);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v32, v36, 16);
      }

      while (v19);
    }

    if (objc_msgSend_count(v14, v23, v24))
    {
      v29 = objc_msgSend_mutableCopy(self->_participants, v25, v26);
      if (!v29)
      {
        v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      if (self->_style == 45)
      {
        objc_msgSend_removeAllObjects(v29, v27, v28);
      }

      objc_msgSend_addObjectsFromArray_(v29, v27, v14, v32);
      participants = self->_participants;
      self->_participants = v29;

      self->_senderBlackholeWarningStatus = 0;
    }

    objc_msgSend__setParticipantState_forHandles_postNotification_(self, v25, state, v15, 1, v32);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)canAddParticipant:(id)participant
{
  v58 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  v7 = objc_msgSend_participants(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, participantCopy);

  if (v9)
  {
    v12 = 1;
  }

  else if (objc_msgSend_chatStyle(self, v10, v11) == 45 || objc_msgSend_joinState(self, v13, v14) >= 1 && (objc_msgSend_account(self, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_service(v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend_supportsMutatingGroupMembers(v20, v21, v22), v20, v17, !v23))
  {
    v12 = 0;
  }

  else
  {
    v26 = objc_msgSend_service(participantCopy, v15, v16);
    if (!v26)
    {
      v27 = objc_msgSend_account(self, v24, v25);
      v26 = objc_msgSend_service(v27, v28, v29);
    }

    v30 = objc_msgSend_lastAddressedHandleID(self, v24, v25);
    v33 = objc_msgSend_lastAddressedSIMID(self, v31, v32);
    v35 = objc_msgSend_maxChatParticipantsForHandle_simID_(v26, v34, v30, v33);

    if (v35 < 1)
    {
      goto LABEL_16;
    }

    v38 = objc_msgSend_participants(self, v36, v37);
    v41 = objc_msgSend_count(v38, v39, v40);
    v44 = objc_msgSend_lastAddressedHandleID(self, v42, v43);
    v47 = objc_msgSend_lastAddressedSIMID(self, v45, v46);
    v48 = v41 + 1;
    v50 = objc_msgSend_maxChatParticipantsForHandle_simID_(v26, v49, v44, v47);

    if (v48 <= v50)
    {
LABEL_16:
      v12 = 1;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v54 = 138412546;
          v55 = participantCopy;
          v56 = 1024;
          v57 = v35;
          _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "Cannot add participant %@  that would put us over our max size of: %d", &v54, 0x12u);
        }
      }

      v12 = 0;
    }
  }

  v52 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)canAddParticipants:(id)participants
{
  v63 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  if (objc_msgSend_count(participantsCopy, v5, v6) && objc_msgSend_chatStyle(self, v7, v8) != 45)
  {
    v12 = objc_msgSend_lastObject(participantsCopy, v9, v10);
    v15 = objc_msgSend_service(v12, v13, v14);

    if (!v15)
    {
      v18 = objc_msgSend_account(self, v16, v17);
      v15 = objc_msgSend_service(v18, v19, v20);
    }

    v21 = objc_msgSend_lastAddressedHandleID(self, v16, v17);
    v24 = objc_msgSend_lastAddressedSIMID(self, v22, v23);
    v26 = objc_msgSend_maxChatParticipantsForHandle_simID_(v15, v25, v21, v24);

    if (v26 < 1)
    {
      goto LABEL_13;
    }

    v29 = objc_msgSend_count(participantsCopy, v27, v28);
    v32 = objc_msgSend_participants(self, v30, v31);
    v35 = objc_msgSend_count(v32, v33, v34);
    v38 = objc_msgSend_lastAddressedHandleID(self, v36, v37);
    v41 = objc_msgSend_lastAddressedSIMID(self, v39, v40);
    v42 = v35 + v29;
    v44 = objc_msgSend_maxChatParticipantsForHandle_simID_(v15, v43, v38, v41);

    if (v42 <= v44)
    {
LABEL_13:
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v46 = participantsCopy;
      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v54, v58, 16);
      if (v49)
      {
        v50 = *v55;
        while (2)
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v55 != v50)
            {
              objc_enumerationMutation(v46);
            }

            if (!objc_msgSend_canAddParticipant_(self, v48, *(*(&v54 + 1) + 8 * i), v54))
            {
              v11 = 0;
              goto LABEL_23;
            }
          }

          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v54, v58, 16);
          if (v49)
          {
            continue;
          }

          break;
        }
      }

      v11 = 1;
LABEL_23:
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v60 = participantsCopy;
          v61 = 1024;
          v62 = v26;
          _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "Cannot add participants: %@ that would put us over our max size of: %d", buf, 0x12u);
        }
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int64_t)maximumChatParticipantsForHandles:(id)handles
{
  v4 = objc_msgSend_lastObject(handles, a2, handles);
  v7 = objc_msgSend_service(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_account(self, v8, v9);
    v7 = objc_msgSend_service(v10, v11, v12);
  }

  v13 = objc_msgSend_lastAddressedHandleID(self, v8, v9);
  v16 = objc_msgSend_lastAddressedSIMID(self, v14, v15);
  v18 = objc_msgSend_maxChatParticipantsForHandle_simID_(v7, v17, v13, v16);

  return v18;
}

- (void)inviteParticipants:(id)participants reason:(id)reason
{
  v103 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = participantsCopy;
      *&buf[22] = 2112;
      v100 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Request to invite participants to chat: %@   handles: %@  reason: %@", buf, 0x20u);
    }
  }

  if (objc_msgSend_chatStyle(self, v8, v9) == 45)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Cannot mutate participants on 1-1 chat: %@", buf, 0xCu);
      }

LABEL_9:
    }
  }

  else
  {
    v14 = objc_msgSend_account(self, v11, v12);
    v17 = objc_msgSend_service(v14, v15, v16);
    v20 = objc_msgSend_supportsMutatingGroupMembers(v17, v18, v19);

    if ((v20 & 1) == 0)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_45;
      }

      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v57 = objc_msgSend_account(self, v55, v56);
        v60 = objc_msgSend_service(v57, v58, v59);
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v60;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Cannot mutate participants on chat: %@   service doesn't support it: %@", buf, 0x16u);
      }

      goto LABEL_9;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v100 = sub_1A8259BC0;
    v101 = sub_1A825AF0C;
    v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = sub_1A8330E70;
    v93[3] = &unk_1E78128E0;
    v93[4] = self;
    v93[5] = buf;
    objc_msgSend_enumerateObjectsUsingBlock_(participantsCopy, v21, v93);
    v23 = objc_msgSend_maximumChatParticipantsForHandles_(self, v22, participantsCopy);
    if (objc_msgSend_count(*(*&buf[8] + 40), v24, v25))
    {
      if (v23 >= 1)
      {
        v28 = objc_msgSend_count(*(*&buf[8] + 40), v26, v27);
        v31 = objc_msgSend_participants(self, v29, v30);
        LODWORD(v28) = objc_msgSend_count(v31, v32, v33) + v28 > v23;

        if (v28)
        {
          if (IMOSLoggingEnabled())
          {
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *v97 = 67109120;
              LODWORD(v98) = v23;
              _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, "Failing to invite some participants that would put us over our max size of: %d", v97, 8u);
            }
          }

          v37 = objc_msgSend_participants(self, v34, v35);
          v40 = objc_msgSend_count(v37, v38, v39) < v23;

          if (v40)
          {
            v43 = objc_msgSend_participants(self, v41, v42);
            v46 = objc_msgSend_count(v43, v44, v45);
            v49 = objc_msgSend_count(*(*&buf[8] + 40), v47, v48);

            v50 = *(*&buf[8] + 40);
            v53 = objc_msgSend_count(v50, v51, v52);
            objc_msgSend_removeObjectsInRange_(v50, v54, v53 - (v46 - v23 + v49));
          }

          else
          {
            objc_msgSend_removeAllObjects(*(*&buf[8] + 40), v41, v42);
          }

          if (IMOSLoggingEnabled())
          {
            v61 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v62 = *(*&buf[8] + 40);
              *v97 = 138412290;
              v98 = v62;
              _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, "  => Will invite: %@", v97, 0xCu);
            }
          }
        }
      }
    }

    v63 = objc_alloc(MEMORY[0x1E695DF70]);
    v66 = objc_msgSend_count(*(*&buf[8] + 40), v64, v65);
    v68 = objc_msgSend_initWithCapacity_(v63, v67, v66);
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v69 = *(*&buf[8] + 40);
    v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v89, v96, 16);
    if (v72)
    {
      v73 = *v90;
      do
      {
        for (i = 0; i != v72; ++i)
        {
          if (*v90 != v73)
          {
            objc_enumerationMutation(v69);
          }

          v75 = *(*(&v89 + 1) + 8 * i);
          if (objc_msgSend_stateForParticipant_(self, v71, v75, v89) != 16)
          {
            objc_msgSend_addObject_(v68, v71, v75);
          }
        }

        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v71, &v89, v96, 16);
      }

      while (v72);
    }

    if (objc_msgSend_count(v68, v76, v77))
    {
      objc_msgSend_addHandlesToGroupFaceTimeChatIfRegistered_(self, v78, v68);
      objc_msgSend__addParticipants_withState_(self, v79, v68, 4);
      if (IMOSLoggingEnabled())
      {
        v82 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          *v97 = 138412290;
          v98 = v68;
          _os_log_impl(&dword_1A823F000, v82, OS_LOG_TYPE_INFO, "Inviting: %@", v97, 0xCu);
        }
      }

      v83 = objc_msgSend_chatRegistry(self, v80, v81, v89);
      objc_msgSend__chat_inviteParticipants_reason_(v83, v84, self, v68, reasonCopy);

      v94 = @"__kIMChatParticipantsDidChangeAddedParticipantsKey";
      v95 = participantsCopy;
      v86 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v85, &v95, &v94, 1);
      objc_msgSend__postNotification_userInfo_(self, v87, @"__kIMChatParticipantsDidChangeNotification", v86);
    }

    _Block_object_dispose(buf, 8);
  }

LABEL_45:

  v88 = *MEMORY[0x1E69E9840];
}

- (void)removeParticipants:(id)participants reason:(id)reason
{
  v67 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy4 = self;
      v63 = 2112;
      v64 = participantsCopy;
      v65 = 2112;
      v66 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "chat: %@   handles: %@  reason: %@", buf, 0x20u);
    }
  }

  if (objc_msgSend_chatStyle(self, v8, v9) == 45)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Cannot mutate participants on 1-1 chat: %@", buf, 0xCu);
      }

LABEL_37:

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v14 = objc_msgSend_account(self, v11, v12);
  v17 = objc_msgSend_service(v14, v15, v16);
  v20 = objc_msgSend_supportsMutatingGroupMembers(v17, v18, v19);

  if ((v20 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v50 = objc_msgSend_account(self, v48, v49);
        v53 = objc_msgSend_service(v50, v51, v52);
        *buf = 138412546;
        selfCopy4 = self;
        v63 = 2112;
        v64 = v53;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Cannot mutate participants on chat: %@   service doesn't support it: %@", buf, 0x16u);
      }

      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v23 = objc_msgSend_participants(self, v21, v22);
  if (!objc_msgSend_count(v23, v24, v25))
  {

LABEL_29:
    if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_INFO, "Tried to remove too many participants, ignoring", buf, 2u);
      }
    }

    goto LABEL_33;
  }

  v27 = objc_msgSend_canRemoveParticipants_(self, v26, participantsCopy);

  if ((v27 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (objc_msgSend_joinState(self, v28, v29))
  {
    v30 = objc_alloc(MEMORY[0x1E695DF70]);
    v33 = objc_msgSend_count(participantsCopy, v31, v32);
    v35 = objc_msgSend_initWithCapacity_(v30, v34, v33);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v36 = participantsCopy;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v56, v60, 16);
    if (v39)
    {
      v40 = *v57;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v57 != v40)
          {
            objc_enumerationMutation(v36);
          }

          v42 = *(*(&v56 + 1) + 8 * i);
          if (objc_msgSend_containsObject_(self->_participants, v38, v42, v56))
          {
            objc_msgSend_addObject_(v35, v38, v42);
          }
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v56, v60, 16);
      }

      while (v39);
    }

    objc_msgSend__setParticipantState_forHandles_postNotification_(self, v43, 256, v35, 1);
    v46 = objc_msgSend_chatRegistry(self, v44, v45);
    objc_msgSend__chat_removeParticipants_reason_(v46, v47, self, v35, reasonCopy);
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Cannot mutate participants if already left chat: %@", buf, 0xCu);
    }

    goto LABEL_37;
  }

LABEL_33:

  v55 = *MEMORY[0x1E69E9840];
}

- (BOOL)canRemoveParticipants:(id)participants
{
  participantsCopy = participants;
  v7 = objc_msgSend_participants(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v13 = objc_msgSend_count(participantsCopy, v11, v12);

  return (v10 - v13 + 1) > 2;
}

- (id)momentShareCache
{
  momentShareCache = self->_momentShareCache;
  if (!momentShareCache)
  {
    v5 = objc_msgSend_sharedInstance(IMMomentShareCache, a2, v2);
    v6 = self->_momentShareCache;
    self->_momentShareCache = v5;

    v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
    objc_msgSend_addObserver_selector_name_object_(v9, v10, self, sel__momentShareCacheDidChange_, @"IMMomentShareCacheDidChangeNotification", self->_momentShareCache);

    momentShareCache = self->_momentShareCache;
  }

  return momentShareCache;
}

- (IMMomentSharePresentationCache)momentSharePresentationCache
{
  momentSharePresentationCache = self->_momentSharePresentationCache;
  if (!momentSharePresentationCache)
  {
    v5 = objc_msgSend_momentShareCache(self, a2, v2);
    v6 = [IMMomentSharePresentationCache alloc];
    v8 = objc_msgSend_initWithMomentShareCache_(v6, v7, v5);
    v9 = self->_momentSharePresentationCache;
    self->_momentSharePresentationCache = v8;

    objc_msgSend_setDelegate_(self->_momentSharePresentationCache, v10, self);
    momentSharePresentationCache = self->_momentSharePresentationCache;
  }

  return momentSharePresentationCache;
}

- (BOOL)shouldDisplayOffGridModeStatus
{
  if (objc_msgSend_chatStyle(self, a2, v2) != 45)
  {
    return 0;
  }

  v6 = objc_msgSend_account(self, v4, v5);
  v9 = objc_msgSend_service(v6, v7, v8);
  v12 = objc_msgSend_internalName(v9, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x1E69A7AF0]);

  if (!isEqualToString)
  {
    return 0;
  }

  if (objc_msgSend_isReadOnly(self, v15, v16))
  {
    return 0;
  }

  v21 = objc_msgSend_recipient(self, v17, v18);
  v19 = objc_msgSend_offGridMode(v21, v22, v23) == 2;

  return v19;
}

- (void)autoInviteToViewOffGridModeIfNeeded
{
  if ((objc_msgSend__canShareStatus(self, a2, v2) & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v19 = 0;
    v15 = "Not able to share off grid mode";
    v16 = &v19;
    goto LABEL_12;
  }

  if ((objc_msgSend_containsMessageFromContactOrMe(self, v4, v5) & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v15 = "Not sharing off grid mode in chat with non contact that I have not participated in";
    v16 = buf;
LABEL_12:
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, v15, v16, 2u);
    goto LABEL_16;
  }

  v8 = objc_msgSend_lastAddressedHandleID(self, v6, v7);
  if (objc_msgSend_length(v8, v9, v10))
  {
    v13 = objc_msgSend_recipient(self, v11, v12);
    objc_msgSend_autoInviteToViewOffGridModeIfNeededFromHandleID_(v13, v14, v8);
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Not sharing off grid mode in chat with no lastAddressedHandleID", v17, 2u);
    }
  }

LABEL_16:
}

- (BOOL)shouldDisplayUnavailabilityIndicator
{
  if (!objc_msgSend_supportsCapabilities_(self, a2, 0x200000))
  {
    return 0;
  }

  v5 = objc_msgSend_recipient(self, v3, v4);
  v8 = objc_msgSend_availability(v5, v6, v7) == 2;

  return v8;
}

- (BOOL)isDisplayingUnavailabilityIndicator
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_chatItems(self, a2, v2);
  objc_opt_class();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = objc_msgSend_reverseObjectEnumerator(v3, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v17, v21, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)shouldDisplayAutomaticTranslation
{
  if (objc_msgSend_supportsCapabilities_(self, a2, 0x800000) && objc_msgSend_isTranslationSupportedForSystemLanguage(self, v3, v4))
  {
    isAutomaticTranslationEnabled = objc_msgSend_isAutomaticTranslationEnabled(self, v5, v6);
    v10 = objc_msgSend_translationLanguageCode(self, v8, v9);

    if (v10 || (objc_msgSend_incomingTranslationLanguageCode(self, v11, v12), v15 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_length(v15, v16, v17), v15, !v18))
    {
      v13 = 0;
    }

    else
    {
      v21 = objc_msgSend_incomingTranslationLanguageCode(self, v19, v20);
      v23 = objc_msgSend_preferredLanguagesContainVariantForCode_(self, v22, v21);

      v13 = v23 ^ 1;
    }

    v14 = isAutomaticTranslationEnabled | v13;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (NSString)userTranslationLanguageCode
{
  v3 = objc_msgSend_valueForChatProperty_(self, a2, *MEMORY[0x1E69A6CE0]);
  if (objc_msgSend_length(v3, v4, v5))
  {
    v8 = v3;
  }

  else
  {
    v8 = objc_msgSend_usersPreferredLanguageIdentifier(self, v6, v7);
  }

  v9 = v8;

  return v9;
}

- (NSDate)availabilityStatusPublishedDate
{
  if (objc_msgSend_chatStyle(self, a2, v2) == 45)
  {
    v6 = objc_msgSend_recipient(self, v4, v5);
    v9 = objc_msgSend_availabilityStatusPublishedDate(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)isInvitedToViewMyFocusStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if (objc_msgSend_chatStyle(self, v5, v6) == 45)
  {
    v9 = objc_msgSend_lastAddressedHandleID(self, v7, v8);
    if (objc_msgSend_length(v9, v10, v11))
    {
      v14 = objc_msgSend_recipient(self, v12, v13);
      objc_msgSend_isInvitedToViewMyFocusStatusFromHandleID_completion_(v14, v15, v9, completionCopy);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *v20 = 0;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Not able to determine if sender if invited with no lastAddressedHandleID", v20, 2u);
        }
      }

      v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v18, *MEMORY[0x1E69A68D8], 2, 0);
      completionCopy[2](completionCopy, 0, v14);
    }
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1664();
    }

    v9 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v17, *MEMORY[0x1E69A68D8], 1, 0);
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (id)beginObservingHandleStatuses
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Beginning observing of handle status", buf, 2u);
    }
  }

  if (objc_msgSend_chatStyle(self, v3, v4) == 45)
  {
    v8 = objc_msgSend_recipient(self, v6, v7);
    v11 = objc_msgSend_beginObservingAvailability(v8, v9, v10);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Chat is not 1:1, bailing", v14, 2u);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (void)_reloadChatItemsForTranslationEnabledChange
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_guid(self, v6, v7);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Translation enabled changed, updating chat items for chat: %@", &v11, 0xCu);
    }
  }

  objc_msgSend_setFilterControllersNeedsUpdateChatItems(self, v3, v4);
  objc_msgSend__updateChatItemsWithReason_block_(self, v9, @"(IMChat) Translation enabled changed", &unk_1F1B6EAE0);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_reloadChatItemsForPhotoSaveStatusChange
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_guid(self, v6, v7);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Translation enabled changed, updating chat items for chat: %@", &v11, 0xCu);
    }
  }

  objc_msgSend_setFilterControllersNeedsUpdateChatItems(self, v3, v4);
  objc_msgSend__updateChatItemsWithReason_block_(self, v9, @"(IMChat) Photo save status changed", &unk_1F1B6EB00);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_reloadChatItemsForTranslationLanguageStatusChange
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_guid(self, v6, v7);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Translation language status changed, updating chat items for chat: %@", &v11, 0xCu);
    }
  }

  objc_msgSend_setFilterControllersNeedsUpdateChatItems(self, v3, v4);
  objc_msgSend__updateChatItemsWithReason_block_(self, v9, @"(IMChat) Translation language status changed", &unk_1F1B6EB20);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_reloadChatItemsForScreenTimeChange
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_guid(self, v5, v6);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "ScreenTime status changed, updating chat items for chat: %@", &v9, 0xCu);
    }
  }

  objc_msgSend__updateChatItemsWithReason_block_(self, v3, @"(IMChat) ScreenTime status changed", &unk_1F1B6EB40);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_reloadChatItemsForHandleAvailabilityChange
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_guid(self, v5, v6);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Availability changed, updating chat items for chat: %@", &v9, 0xCu);
    }
  }

  objc_msgSend__updateChatItemsWithReason_block_(self, v3, @"(IMChat) IMHandle availability changed", &unk_1F1B6EB60);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_reloadChatItemsForKeyTransparencyStatusChange
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_guid(self, v5, v6);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Key Transparency changed, updating chat items for chat: %@", &v9, 0xCu);
    }
  }

  objc_msgSend__updateChatItemsWithReason_block_(self, v3, @"(IMChat) IMHandle key transparency changed", &unk_1F1B6EB80);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_reloadChatItemsForSatelliteStateChangeIfRequired:(id)required
{
  v25 = *MEMORY[0x1E69E9840];
  requiredCopy = required;
  chatItemRules = self->_chatItemRules;
  v8 = objc_msgSend_chatItems(self, v6, v7);
  LODWORD(chatItemRules) = objc_msgSend__shouldReloadSatelliteChatItems_(chatItemRules, v9, v8);

  v10 = IMOSLoggingEnabled();
  if (chatItemRules)
  {
    if (v10)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = objc_msgSend_guid(self, v13, v14);
        v21 = 138412546;
        v22 = requiredCopy;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "%@, updating chat items for chat: %@", &v21, 0x16u);
      }
    }

    objc_msgSend__updateChatItemsWithReason_block_(self, v11, requiredCopy, &unk_1F1B6EBA0);
  }

  else if (v10)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = objc_msgSend_guid(self, v17, v18);
      v21 = 138412546;
      v22 = requiredCopy;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Skipping chat items update (%@) for chat: %@. Items don't need update", &v21, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_reloadChatItemsForJunkFilteringSettingChange
{
  objc_msgSend_invalidateSpamIndicatorCachedValuesIfNeeded(self, a2, v2);

  objc_msgSend__updateChatItemsWithReason_block_(self, v4, @"(IMChat) Chat item update in response to the Filter Junk setting being changed", &unk_1F1B6EBC0);
}

- (void)_reloadChatItemsForUnknownSendersFilteringSettingChange
{
  objc_msgSend_invalidateSpamIndicatorCachedValuesIfNeeded(self, a2, v2);

  objc_msgSend__updateChatItemsWithReason_block_(self, v4, @"(IMChat) Chat item update in response to the Screen Unknown Senders setting being changed", &unk_1F1B6EBE0);
}

- (void)_reloadChatItemsForFilteringChange
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_guid(self, v5, v6);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Filtering status changed, updating chat items for chat: %@", &v9, 0xCu);
    }
  }

  objc_msgSend__updateChatItemsWithReason_block_(self, v3, @"(IMChat) Filtering status changed", &unk_1F1B6EC00);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)reloadChatItemsForSuggestedRepliesChange
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_guid(self, v5, v6);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Suggested replies changed, updating chat items for chat: %@", &v9, 0xCu);
    }
  }

  objc_msgSend__updateChatItemsWithReason_block_(self, v3, @"(IMChat) Suggested replies changed", &unk_1F1B6EC20);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)autoInviteToViewAvailabilityIfNeeded
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8332A90;
  v4[3] = &unk_1E7812908;
  objc_copyWeak(&v5, &location);
  objc_msgSend_canShareFocusStatusWithCompletion_(self, v3, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)canShareFocusStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A8332E58;
  aBlock[3] = &unk_1E7812958;
  v5 = completionCopy;
  v21 = v5;
  v6 = _Block_copy(aBlock);
  if ((objc_msgSend__canShareStatus(self, v7, v8) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v16 = "Not able to share focus status";
LABEL_10:
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, v16, buf, 2u);
      }

LABEL_11:
    }

LABEL_12:
    v6[2](v6, 0);
    goto LABEL_13;
  }

  if ((objc_msgSend_isMessagesAuthorizedToAccessFocusStatus(self, v9, v10) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v16 = "Not able to share focus status because Messages is not authorized to access that status";
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F08], v11, v12);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A8332F04;
  v17[3] = &unk_1E7812958;
  v18 = v6;
  objc_msgSend_fetchIsFocusConfigurationShareAcrossDevicesEnabledWithCompletion_(v13, v14, v17);

LABEL_13:
}

- (BOOL)isMessagesAuthorizedToAccessFocusStatus
{
  v2 = MEMORY[0x1AC56C550](@"INFocusStatusCenter", @"Intents");
  v5 = objc_msgSend_defaultCenter(v2, v3, v4);
  v8 = objc_msgSend_authorizationStatus(v5, v6, v7);
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = IMLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E16A0();
        }

        goto LABEL_15;
      }

LABEL_16:
      v10 = 0;
      goto LABEL_17;
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v11 = "Focus Status authorization status is not determined. This is unexpected, as we should have prompted on app launch. Treating as not authorized.";
      v12 = &v14;
LABEL_14:
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, v11, v12, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (v8 == 2)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "Focus Status authorization status is denied.";
      v12 = buf;
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  v10 = v8 == 3;
LABEL_17:

  return v10;
}

- (BOOL)_canShareStatus
{
  if (objc_msgSend_isSMS(self, a2, v2))
  {
    v6 = IMOSLoggingEnabled();
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v31 = 0;
        v8 = "Not able to share status in SMS chat";
        v9 = &v31;
LABEL_29:
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
        goto LABEL_30;
      }

      goto LABEL_30;
    }
  }

  else if (objc_msgSend_isRCS(self, v4, v5))
  {
    v6 = IMOSLoggingEnabled();
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v30 = 0;
        v8 = "Not able to share status in RCS chat";
        v9 = &v30;
        goto LABEL_29;
      }

LABEL_30:

      LOBYTE(v6) = 0;
    }
  }

  else if (objc_msgSend_isInAppleStoreDemoMode(MEMORY[0x1E69A7EE0], v10, v11))
  {
    v6 = IMOSLoggingEnabled();
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v29 = 0;
        v8 = "Not able to share status in Apple Store Demo mode.";
        v9 = &v29;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if (objc_msgSend_isBusinessChat(self, v12, v13))
  {
    v6 = IMOSLoggingEnabled();
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v28 = 0;
        v8 = "Not able to share status in business chat";
        v9 = &v28;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if (objc_msgSend_isStewieChat(self, v14, v15))
  {
    v6 = IMOSLoggingEnabled();
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v27 = 0;
        v8 = "Not able to share status in stewie chat";
        v9 = &v27;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if (objc_msgSend_chatStyle(self, v16, v17) == 45)
  {
    v20 = objc_msgSend_recipient(self, v18, v19);
    v23 = objc_msgSend_matchesLoginHandleForAnyAccount(v20, v21, v22);

    if (v23)
    {
      v6 = IMOSLoggingEnabled();
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v25 = 0;
          v8 = "Not able to share status with myself";
          v9 = &v25;
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    v6 = IMOSLoggingEnabled();
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v8 = "Not able to share status in non 1-1 chat";
        v9 = buf;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  return v6;
}

- (void)_handleAddressBookChangeForRecipientUID:(id)d
{
  dCopy = d;
  if (objc_msgSend_isBusinessChat(self, v5, v6) && (objc_msgSend_recipient(self, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_ID(v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(dCopy, v13, v12), v12, v9, isEqualToString))
  {
    v15 = objc_msgSend_recipient(self, v7, v8);
    v18 = objc_msgSend_name(v15, v16, v17);
    objc_msgSend__setDisplayName_(self, v19, v18);
  }

  else if (!dCopy)
  {
    objc_msgSend_invalidateSpamIndicatorCachedValues(self, v7, v8);
    if (objc_msgSend_isFiltered(self, v20, v21) && objc_msgSend_hasKnownParticipants(self, v22, v23))
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *v26 = 0;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "A contact has been added to the chat: Updating isFiltered to NO", v26, 2u);
        }
      }

      objc_msgSend_updateIsFiltered_(self, v24, 0);
    }

    objc_msgSend__updateChatItemsWithReason_block_(self, v22, @"(IMChat) AddressBook changed", &unk_1F1B6EC40);
  }
}

- (void)_reloadChatItemsForBlockedContactsListChange
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Blocked contacts list changed to, updating chat items", v5, 2u);
    }
  }

  objc_msgSend__updateChatItemsWithReason_block_(self, v3, @"(IMChat) Blocked contacts list changed", &unk_1F1B6EC60);
}

- (BOOL)_sanityCheckAccounts
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_account(self, a2, v2);
  selfCopy = self;
  v8 = objc_msgSend_sharedInstance(IMAccountController, v6, v7);
  v11 = objc_msgSend_accounts(v8, v9, v10);
  v13 = objc_msgSend_containsObjectIdenticalTo_(v11, v12, v4);

  if ((v13 & 1) == 0)
  {
    v16 = objc_msgSend_chatStyle(selfCopy, v14, v15) == 45;
    v19 = objc_msgSend_service(v4, v17, v18);
    v22 = objc_msgSend_sharedInstance(IMAccountController, v20, v21);
    v24 = objc_msgSend_bestAccountForService_(v22, v23, v19);

    if (v16)
    {
      if (!v24)
      {
        v30 = objc_msgSend_recipient(selfCopy, v25, v26);
        v53 = objc_msgSend__chatSiblings(v30, v31, v32);
        if (objc_msgSend_count(v53, v33, v34))
        {
          v52 = objc_msgSend__bestChatSibling(v30, v35, v36);
          v39 = objc_msgSend_sharedInstance(IMAccountController, v37, v38);
          v42 = objc_msgSend_accounts(v39, v40, v41);
          v45 = objc_msgSend_account(v52, v43, v44);
          v47 = objc_msgSend_containsObjectIdenticalTo_(v42, v46, v45);

          if (v47)
          {
            if (IMOSLoggingEnabled())
            {
              v49 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v55 = v30;
                v56 = 2112;
                v57 = v52;
                v58 = 2112;
                v59 = selfCopy;
                _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "This is a 1-1 chat, the account attached to it is gone, we're re-targeting from: %@ to: %@ (Chat: %@)", buf, 0x20u);
              }
            }

            objc_msgSend_setRecipient_(selfCopy, v48, v52);
          }
        }

        goto LABEL_25;
      }

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v55 = v24;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "This is a 1-1 chat, the account attached to it is gone, we're re-targeting to this account: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (!v24 || v4 == v24)
      {
        goto LABEL_25;
      }

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v55 = v24;
          v56 = 2112;
          v57 = selfCopy;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "This is a group chat, found a new account to attach to: %@  (Chat: %@)", buf, 0x16u);
        }
      }
    }

    objc_msgSend__setAccount_(selfCopy, v27, v24);
LABEL_25:
  }

  v50 = *MEMORY[0x1E69E9840];
  return v13 ^ 1;
}

- (void)_accountControllerUpdated:(id)updated
{
  v15 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "chat: %@", &v13, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_object(updatedCopy, v9, v10);
      v13 = 138412290;
      selfCopy = v11;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "_accountControllerUpdated: %@", &v13, 0xCu);
    }
  }

  objc_msgSend__sanityCheckAccounts(self, v6, v7);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_daemonAlive:(id)alive
{
  v11 = *MEMORY[0x1E69E9840];
  aliveCopy = alive;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "chat: %@", &v9, 0xCu);
    }
  }

  objc_msgSend__sanityCheckAccounts(self, v5, v6);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_daemonDied:(id)died
{
  v9 = *MEMORY[0x1E69E9840];
  diedCopy = died;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "chat: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasStoredMessageWithGUID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = objc_msgSend_chatItems(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v29, v33, 16);
  if (v11)
  {
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend__item(*(*(&v29 + 1) + 8 * i), v9, v10);
        if (objc_msgSend_type(v14, v15, v16))
        {
          v19 = 0;
          objc_msgSend_guid(0, v17, v18);
        }

        else
        {
          v19 = objc_msgSend_message(v14, v17, v18);
          objc_msgSend_guid(v19, v20, v21);
        }
        v22 = ;
        if (objc_msgSend_isEqualToIgnoringCase_(v22, v23, dCopy))
        {
          v26 = objc_msgSend_messageID(v19, v24, v25);

          if (v26 > 0)
          {

            LOBYTE(v11) = 1;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v29, v33, 16);
    }

    while (v11);
  }

LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_initWithDictionaryRepresentation:(id)representation items:(id)items participantsHint:(id)hint accountHint:(id)accountHint
{
  v153 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  itemsCopy = items;
  hintCopy = hint;
  accountHintCopy = accountHint;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = MarcoLoggingStringForMessageData();
      *buf = 138412802;
      selfCopy = self;
      v149 = 2112;
      v150 = v12;
      v151 = 2112;
      v152 = itemsCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEBUG, "chat: _initWithDictionaryRepresentation: %@  dictionary: %@  messages: %@", buf, 0x20u);
    }
  }

  v127 = objc_msgSend_objectForKey_(representationCopy, v10, @"guid");
  v126 = objc_msgSend_objectForKey_(representationCopy, v13, @"roomName");
  v125 = objc_msgSend_objectForKey_(representationCopy, v14, @"displayName");
  v122 = objc_msgSend_objectForKey_(representationCopy, v15, @"properties");
  v134 = objc_msgSend_objectForKey_(representationCopy, v16, @"lastAddressedLocalHandle");
  v133 = objc_msgSend_objectForKey_(representationCopy, v17, @"lastAddressedSIMID");
  v135 = objc_msgSend_objectForKey_(representationCopy, v18, @"groupID");
  v121 = objc_msgSend_objectForKey_(representationCopy, v19, @"originalGroupID");
  v21 = objc_msgSend_objectForKey_(representationCopy, v20, @"isFiltered");
  v23 = objc_msgSend_objectForKey_(representationCopy, v22, @"hasHadSuccessfulQuery");
  v120 = objc_msgSend_objectForKey_(representationCopy, v24, @"lastMessageTimeStampOnLoad");
  v132 = objc_msgSend_objectForKey_(representationCopy, v25, *MEMORY[0x1E69A6C48]);
  v131 = objc_msgSend_objectForKey_(representationCopy, v26, @"replySuggestions");
  v129 = objc_msgSend_objectForKey_(representationCopy, v27, @"isRecovered");
  v128 = objc_msgSend_objectForKey_(representationCopy, v28, @"isDeletingIncomingMessages");
  v30 = MEMORY[0x1E695E118];
  if (v21)
  {
    v30 = v21;
  }

  v124 = v30;
  v31 = MEMORY[0x1E695E110];
  if (v23)
  {
    v31 = v23;
  }

  v123 = v31;
  v32 = objc_msgSend_objectForKey_(representationCopy, v29, @"style");
  v117 = objc_msgSend_intValue(v32, v33, v34);

  v36 = objc_msgSend_objectForKey_(representationCopy, v35, @"state");
  v119 = objc_msgSend_intValue(v36, v37, v38);

  if (accountHintCopy)
  {
    v141 = accountHintCopy;
  }

  else
  {
    v41 = objc_msgSend_sharedInstance(IMAccountController, v39, v40);
    v43 = objc_msgSend_objectForKey_(representationCopy, v42, @"accountID");
    v141 = objc_msgSend_accountForUniqueID_(v41, v44, v43);

    if (!v141)
    {
      v47 = objc_msgSend_sharedInstance(IMAccountController, v45, v46);
      v49 = objc_msgSend_objectForKey_(representationCopy, v48, @"serviceName");
      v51 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v50, v49);
      v141 = objc_msgSend_bestAccountForService_(v47, v52, v51);
    }
  }

  v137 = hintCopy;
  v140 = v137;
  if (!objc_msgSend_count(v137, v53, v54))
  {
    v140 = objc_alloc_init(MEMORY[0x1E695DF70]);

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    obj = objc_msgSend_objectForKey_(representationCopy, v57, @"participants");
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v142, v146, 16);
    if (v60)
    {
      v61 = *v143;
      v62 = *MEMORY[0x1E69A6310];
      v63 = *MEMORY[0x1E69A6390];
      v64 = *MEMORY[0x1E69A62E8];
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v143 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v66 = *(*(&v142 + 1) + 8 * i);
          v67 = objc_msgSend_objectForKey_(v66, v59, v62);
          v69 = objc_msgSend_objectForKey_(v66, v68, v63);
          v71 = objc_msgSend_objectForKey_(v66, v70, v64);
          v74 = objc_msgSend__appearsToBePhoneNumber(v67, v72, v73);
          v77 = objc_msgSend_imHandleWithID_alreadyCanonical_(v141, v75, v67, v74);
          if (v77)
          {
            objc_msgSend_addObject_(v140, v76, v77);
            objc_msgSend__setOriginalID_countryCode_updateSiblings_(v77, v78, v69, v71, 1);
          }
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &v142, v146, 16);
      }

      while (v60);
    }
  }

  v79 = objc_msgSend_integerValue(v124, v55, v56);
  v82 = objc_msgSend_BOOLValue(v123, v80, v81);
  v85 = objc_msgSend_BOOLValue(v129, v83, v84);
  BYTE2(v116) = objc_msgSend_BOOLValue(v128, v86, v87);
  BYTE1(v116) = v85;
  LOBYTE(v116) = v82;
  isDeletingIncomingMessages = objc_msgSend__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_(self, v88, v127, v141, v117, v126, v125, 0, 0, itemsCopy, v140, v79, v116);
  if (isDeletingIncomingMessages)
  {
    if (IMOSLoggingEnabled())
    {
      v90 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(selfCopy) = v119;
        _os_log_impl(&dword_1A823F000, v90, OS_LOG_TYPE_DEBUG, "Setting initial join state: %d", buf, 8u);
      }
    }

    *(isDeletingIncomingMessages + 168) = v119;
    objc_storeStrong((isDeletingIncomingMessages + 344), v122);
    if (!*(isDeletingIncomingMessages + 344))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v92 = *(isDeletingIncomingMessages + 344);
      *(isDeletingIncomingMessages + 344) = Mutable;
    }

    if (*(isDeletingIncomingMessages + 104) != v135)
    {
      objc_storeStrong((isDeletingIncomingMessages + 104), v135);
    }

    objc_storeStrong((isDeletingIncomingMessages + 664), v121);
    if (*(isDeletingIncomingMessages + 96) != v134)
    {
      objc_storeStrong((isDeletingIncomingMessages + 96), v134);
    }

    if (*(isDeletingIncomingMessages + 640) != v133)
    {
      objc_storeStrong((isDeletingIncomingMessages + 640), v133);
    }

    if ((v119 - 3) <= 1)
    {
      v95 = objc_msgSend_participants(isDeletingIncomingMessages, v93, v94);
      objc_msgSend__setParticipantState_forHandles_postNotification_(isDeletingIncomingMessages, v96, 16, v95, 0);
    }

    *(isDeletingIncomingMessages + 272) = objc_msgSend_longLongValue(v120, v93, v94);
    if (objc_msgSend_count(v132, v97, v98))
    {
      v101 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v99, v132);
      v102 = *(isDeletingIncomingMessages + 184);
      *(isDeletingIncomingMessages + 184) = v101;
    }

    if (objc_msgSend_count(v131, v99, v100))
    {
      objc_storeStrong((isDeletingIncomingMessages + 192), v131);
    }

    v104 = objc_msgSend_objectForKey_(representationCopy, v103, *MEMORY[0x1E69A6B88]);
    *(isDeletingIncomingMessages + 49) = objc_msgSend_BOOLValue(v104, v105, v106);

    v107 = [IMMergedDomainIdentifiers alloc];
    v109 = objc_msgSend_objectForKey_(representationCopy, v108, *MEMORY[0x1E69A6B50]);
    v111 = objc_msgSend_initWithDomainIdentifiers_chatGUID_(v107, v110, v109, *(isDeletingIncomingMessages + 120));
    v112 = *(isDeletingIncomingMessages + 624);
    *(isDeletingIncomingMessages + 624) = v111;

    v113 = isDeletingIncomingMessages;
  }

  v114 = *MEMORY[0x1E69E9840];
  return isDeletingIncomingMessages;
}

- (void)setSendProgressDelegate:(id)delegate
{
  v36 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  sendProgress = self->_sendProgress;
  if (delegateCopy)
  {
    v8 = objc_msgSend_context(sendProgress, v4, v5);

    if (v8 != delegateCopy)
    {
      objc_msgSend_setDelegate_(self->_sendProgress, v9, 0);
      objc_msgSend_setContext_(self->_sendProgress, v10, 0);
      objc_msgSend_invalidate(self->_sendProgress, v11, v12);
      v13 = [IMSendProgress alloc];
      v15 = objc_msgSend_initWithDelegate_context_(v13, v14, self, delegateCopy);
      v16 = self->_sendProgress;
      self->_sendProgress = v15;

      v17 = self->_sendProgress;
      v20 = objc_msgSend__items(self, v18, v19);
      objc_msgSend_updateForItems_forced_(v17, v21, v20, 1);
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = objc_msgSend_guid(self, v23, v24);
        v26 = self->_sendProgress;
        v32 = 138412546;
        v33 = v25;
        v34 = 2112;
        v35 = v26;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Set send progress delegate for chat %@. Send progress: %@", &v32, 0x16u);
      }
    }
  }

  else
  {
    objc_msgSend_setDelegate_(sendProgress, v4, 0);
    objc_msgSend_setContext_(self->_sendProgress, v27, 0);
    objc_msgSend_invalidate(self->_sendProgress, v28, v29);
    v30 = self->_sendProgress;
    self->_sendProgress = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)downloadPurgedAttachments
{
  v5 = objc_msgSend_chatRegistry(self, a2, v2);
  objc_msgSend__chat_downloadPurgedAttachmentsForChat_(v5, v4, self);
}

- (void)updateSendProgressForPendingTranslation
{
  objc_msgSend_setStartSendProgressImmediately_(self->_sendProgress, a2, 1);
  sendProgress = self->_sendProgress;

  MEMORY[0x1EEE66B58](sendProgress, sel_updateForPendingComposition, v3);
}

- (void)loadInlineRepliesForThreadIdentifier:(id)identifier threadOriginator:(id)originator messageGuid:(id)guid
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  originatorCopy = originator;
  guidCopy = guid;
  v11 = [IMInlineReplyController alloc];
  v13 = objc_msgSend_initWithChat_threadIdentifier_threadOriginator_(v11, v12, self, identifierCopy, originatorCopy);
  inlineReplyController = self->_inlineReplyController;
  self->_inlineReplyController = v13;

  objc_msgSend_setCapacity_(self->_inlineReplyController, v15, 50);
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v20 = objc_msgSend_guid(self, v18, v19);
      v23 = 136316162;
      v24 = "[IMChat loadInlineRepliesForThreadIdentifier:threadOriginator:messageGuid:]";
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = identifierCopy;
      v29 = 2112;
      v30 = guidCopy;
      v31 = 2112;
      v32 = originatorCopy;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "%s chatGUID: %@, threadIdentifier: %@, messageGUID: %@, threadOriginator: %@", &v23, 0x34u);
    }
  }

  v21 = objc_msgSend_loadMessagesBeforeAndAfterGUID_numberOfMessagesToLoadBeforeGUID_numberOfMessagesToLoadAfterGUID_loadImmediately_threadIdentifier_(self, v16, guidCopy, 25, 25, 1, identifierCopy);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)dismissInlineReplies
{
  inlineReplyController = self->_inlineReplyController;
  self->_inlineReplyController = 0;
  MEMORY[0x1EEE66BB8]();
}

- (id)filterControllers
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = objc_msgSend_initWithCapacity_(v3, v4, 2);
  v7 = v5;
  inlineReplyController = self->_inlineReplyController;
  if (inlineReplyController)
  {
    objc_msgSend_addObject_(v5, v6, inlineReplyController);
  }

  return v7;
}

- (void)setFilterControllersNeedsUpdateChatItems
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_filterControllers(self, a2, v2, 0);
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

        objc_msgSend_setNeedsUpdateChatItems(*(*(&v12 + 1) + 8 * v10++), v6, v7);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v12, v16, 16);
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)canSend
{
  if (objc_msgSend_isStewieEmergencyChat(self, a2, v2) && (objc_msgSend_sharedInstance(IMChorosMonitor, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), isStewieEmergencyActive = objc_msgSend_isStewieEmergencyActive(v6, v7, v8), v6, (isStewieEmergencyActive & 1) == 0))
  {
    v12 = IMOSLoggingEnabled();
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v34 = 0;
        v14 = "canSend = NO: chat is emergency but emergency is not active";
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  else if (objc_msgSend_isStewieSharingChat(self, v4, v5))
  {
    v12 = IMOSLoggingEnabled();
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v34 = 0;
        v14 = "canSend = NO: chat is stewie sharing";
LABEL_31:
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, v14, v34, 2u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }
  }

  else if (objc_msgSend_isStewieRoadsideChat(self, v10, v11) && (objc_msgSend_sharedInstance(IMChorosMonitor, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), isStewieRoadsideActive = objc_msgSend_isStewieRoadsideActive(v17, v18, v19), v17, (isStewieRoadsideActive & 1) == 0))
  {
    v12 = IMOSLoggingEnabled();
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v34 = 0;
        v14 = "canSend = NO: chat is roadside and roadside is not active";
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  else if (objc_msgSend_allowedByScreenTime(self, v15, v16))
  {
    if (objc_msgSend_isOscarChat(self, v21, v22))
    {
      v12 = IMOSLoggingEnabled();
      if (v12)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v34 = 0;
          v14 = "canSend = NO: chat is oscar";
          goto LABEL_31;
        }

LABEL_32:

        LOBYTE(v12) = 0;
      }
    }

    else if (objc_msgSend_hasLeftGroup(self, v23, v24))
    {
      v12 = IMOSLoggingEnabled();
      if (v12)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v34 = 0;
          v14 = "canSend = NO: chat has left group";
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    else if (objc_msgSend_isReadOnly(self, v25, v26))
    {
      v12 = IMOSLoggingEnabled();
      if (v12)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v34 = 0;
          v14 = "canSend = NO: chat is read only";
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (objc_msgSend_isBusinessChat(self, v27, v28) && objc_msgSend_isMakoChat(self, v29, v30) && (objc_msgSend__isSendToMakoAllowed(self, v29, v30) & 1) == 0)
      {
        v12 = IMOSLoggingEnabled();
        if (!v12)
        {
          return v12;
        }

        v13 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        *v34 = 0;
        v14 = "canSend = NO: chat is business && mako and sending to mako is not allowed";
        goto LABEL_31;
      }

      if (objc_msgSend_isBusinessChat(self, v29, v30) && (objc_msgSend_supportsBusinessChat(MEMORY[0x1E69A8020], v31, v32) & 1) == 0)
      {
        v12 = IMOSLoggingEnabled();
        if (!v12)
        {
          return v12;
        }

        v13 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        *v34 = 0;
        v14 = "canSend = NO: chat is business but device does not support business chats";
        goto LABEL_31;
      }

      LOBYTE(v12) = 1;
    }
  }

  else
  {
    v12 = IMOSLoggingEnabled();
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v34 = 0;
        v14 = "canSend = NO: chat is blocked by screen time";
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  return v12;
}

- (BOOL)_isSendToMakoAllowed
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x1E69A53F0], a2, 0);
  v4 = objc_msgSend_objectForKey_(v2, v3, @"m-reply-enabled");
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_BOOLValue(v4, v5, v6);
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13[0] = 67109120;
        v13[1] = v8;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "_isSendToMakoAllowed: Server bag value found: return: %{BOOL}d", v13, 8u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13[0]) = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "_isSendToMakoAllowed: No server bag value found: defaulting to NO", v13, 2u);
      }
    }

    LOBYTE(v8) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)canSendInlineReply
{
  if (qword_1EB2EA378 != -1)
  {
    sub_1A84E16DC();
  }

  if (byte_1EB2EA370)
  {
    LOBYTE(canSend) = 1;
  }

  else
  {
    canSend = objc_msgSend_canSend(self, a2, v2);
    if (canSend)
    {

      LOBYTE(canSend) = objc_msgSend_supportsCapabilities_(self, v5, 4);
    }
  }

  return canSend;
}

- (int64_t)_uncachedInterworkingState
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__lastInterworkedMessage(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_originalServiceName(v4, v5, v6);
    if (v8)
    {
      v11 = v8;
      v12 = objc_msgSend_account(self, v9, v10);
      v15 = objc_msgSend_service(v12, v13, v14);

      if (v15)
      {
        v18 = MEMORY[0x1E695DFD8];
        v19 = objc_msgSend_service(v7, v16, v17);
        v22 = objc_msgSend_originalServiceName(v7, v20, v21);
        v24 = objc_msgSend_setWithObjects_(v18, v23, v19, v22, 0);

        v27 = objc_msgSend__lastSentMessage(self, v25, v26);
        v30 = v27;
        if (v7 == v27)
        {
          objc_msgSend_wasInterworked(v27, v28, v29);
          v43 = 1;
        }

        else
        {
          v31 = objc_msgSend_service(v27, v28, v29);
          v33 = objc_msgSend_containsObject_(v24, v32, v31);

          if (!v33)
          {
            goto LABEL_28;
          }

          v82 = v30;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v36 = objc_msgSend__sentMessagesSinceInterworking(self, v34, v35);
          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v83, v87, 16);
          if (v38)
          {
            v41 = v38;
            v42 = *v84;
            v43 = 1;
            while (1)
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v84 != v42)
                {
                  objc_enumerationMutation(v36);
                }

                v45 = *(*(&v83 + 1) + 8 * i);
                v46 = objc_msgSend_service(v45, v39, v40);
                if (!objc_msgSend_containsObject_(v24, v47, v46))
                {

LABEL_15:
                  v43 = 0;
                  continue;
                }

                isDelivered = objc_msgSend_isDelivered(v45, v48, v49);

                if (isDelivered)
                {
                  goto LABEL_15;
                }
              }

              v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v83, v87, 16);
              if (!v41)
              {
                goto LABEL_26;
              }
            }
          }

          v43 = 1;
LABEL_26:

          v30 = v82;
          if ((objc_msgSend_wasInterworked(v82, v70, v71) & 1) == 0 && (v43 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v54 = objc_msgSend_account(self, v52, v53);
        v57 = objc_msgSend_service(v54, v55, v56);
        v60 = objc_msgSend_name(v57, v58, v59);
        v62 = objc_msgSend_containsObject_(v24, v61, v60);

        if (v62)
        {
          v67 = objc_msgSend_lastIncomingFinishedMessageItem(self, v63, v64);
          if (!v67 || v43 & 1 | ((objc_msgSend_isOlderThanItem_(v7, v65, v67) & 1) == 0) || objc_msgSend_wasInterworked(v30, v65, v66) && (objc_msgSend_service(v67, v72, v73), v74 = objc_claimAutoreleasedReturnValue(), objc_msgSend_service(v30, v75, v76), v77 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v74, v78, v77), v77, v74, isEqualToString))
          {
            v68 = objc_msgSend_service(v7, v65, v66);
            objc_msgSend_setInterworkingService_(self, v69, v68);

            v51 = 1;
          }

          else
          {
            v51 = 2;
          }

          goto LABEL_33;
        }

LABEL_28:
        v51 = 2;
LABEL_33:

        goto LABEL_34;
      }
    }
  }

  v51 = 2;
LABEL_34:

  v80 = *MEMORY[0x1E69E9840];
  return v51;
}

- (void)_recalculateIsInterworking
{
  v4 = objc_msgSend_interworkingState(self, a2, v2);
  v7 = objc_msgSend__uncachedInterworkingState(self, v5, v6);
  objc_msgSend_setInterworkingState_(self, v8, v7);
  if (objc_msgSend_interworkingState(self, v9, v10) != v4)
  {

    objc_msgSend__postNotification_userInfo_(self, v11, @"__kIMChatInterworkingStateChangedNotification", 0);
  }
}

- (BOOL)isInterworking
{
  if (!objc_msgSend_interworkingState(self, a2, v2))
  {
    objc_msgSend__recalculateIsInterworking(self, v4, v5);
  }

  return objc_msgSend_interworkingState(self, v4, v5) == 1;
}

- (NSString)interworkingService
{
  if (objc_msgSend_isInterworking(self, a2, v2))
  {
    v4 = self->_interworkingService;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasLeftGroup
{
  isGroupChat = objc_msgSend_isGroupChat(self, a2, v2);
  if (isGroupChat)
  {
    v6 = objc_msgSend__serviceSupportsCapability_(self, v5, *MEMORY[0x1E69A7970]);
    isGroupChat = objc_msgSend__canLeaveChatIgnoringParticipantCount_(self, v7, v6);
    if (isGroupChat)
    {
      LOBYTE(isGroupChat) = objc_msgSend_joinState(self, v8, v9) != 3 && objc_msgSend_joinState(self, v10, v11) != 2;
    }
  }

  return isGroupChat;
}

- (void)_updateRepliesIfNecessaryWithItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = itemCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_threadOriginator(v6, v7, v8);
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;

    v18 = objc_msgSend_replyCountsByPart(v13, v14, v15);
    if (v18)
    {
      v19 = objc_msgSend_guid(v13, v16, v17);
      v22 = objc_msgSend__items(self, v20, v21);
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1A8335A38;
      v28[3] = &unk_1E78129D0;
      v29 = v22;
      v30 = v9;
      v31 = v18;
      v32 = v13;
      v33 = v19;
      v34 = v23;
      selfCopy = self;
      v24 = v23;
      v25 = v19;
      v26 = v22;
      objc_msgSend__updateChatItemsWithReason_block_(self, v27, @"Update items with thread originator (reply counts)", v28);
    }
  }
}

- (void)_updateRepliesIfNecessaryWithRemovedItems:(id)items threadIdentifiersOfRemovedParts:(id)parts
{
  v87 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  partsCopy = parts;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = itemsCopy;
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v78, v86, 16);
  if (v71)
  {
    v7 = 0;
    v68 = 0;
    Mutable = 0;
    v70 = *v79;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v79 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v78 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;
          v14 = objc_msgSend_replyCountsByPart(v11, v12, v13);

          if (v14)
          {
            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            v17 = objc_msgSend_guid(v11, v15, v16);
            objc_msgSend_addObject_(v7, v18, v17);

            v21 = objc_msgSend_guid(v11, v19, v20);
            objc_msgSend_removeObjectForKey_(Mutable, v22, v21);
          }

          v23 = objc_msgSend_threadOriginator(v11, v15, v16);

          if (v23)
          {
            if (!Mutable)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            if (!v68)
            {
              v68 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            v26 = objc_msgSend_guid(v11, v24, v25);
            objc_msgSend_addObject_(v68, v27, v26);

            v30 = objc_msgSend_threadOriginator(v11, v28, v29);
            v33 = objc_msgSend_guid(v30, v31, v32);
            v36 = objc_msgSend_threadIdentifier(v11, v34, v35);
            if ((objc_msgSend_containsObject_(v7, v37, v33) & 1) == 0 && (objc_msgSend_containsObject_(partsCopy, v38, v36) & 1) == 0)
            {
              v77 = 0;
              IMMessageThreadIdentifierGetComponents();
              v39 = 0;
              if (v39)
              {
                v41 = v39;
                v44 = objc_msgSend_objectForKey_(Mutable, v40, v33);
                if (!v44)
                {
                  v45 = objc_msgSend_replyCountsByPart(v30, v42, v43);
                  v44 = objc_msgSend_mutableCopy(v45, v46, v47);

                  if (v44)
                  {
                    objc_msgSend_setObject_forKey_(Mutable, v42, v44, v33);
                  }
                }

                v48 = objc_msgSend_objectForKey_(v44, v42, v41);
                v51 = objc_msgSend_unsignedIntegerValue(v48, v49, v50);

                if (v51)
                {
                  v53 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v52, v51 - 1);
                  objc_msgSend_setObject_forKey_(v44, v54, v53, v41);
                }
              }

              else if (IMOSLoggingEnabled())
              {
                v55 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  v58 = objc_msgSend_guid(v11, v56, v57);
                  *buf = 138412546;
                  v83 = v58;
                  v84 = 2112;
                  v85 = v36;
                  _os_log_impl(&dword_1A823F000, v55, OS_LOG_TYPE_INFO, "When attempting to remove message %@, no part identifier was found for thread identifier %@", buf, 0x16u);
                }
              }
            }
          }
        }
      }

      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v78, v86, 16);
    }

    while (v71);
  }

  else
  {
    v7 = 0;
    v68 = 0;
    Mutable = 0;
  }

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = sub_1A83362AC;
  v72[3] = &unk_1E78129F8;
  v72[4] = self;
  v73 = v68;
  v74 = v7;
  v75 = Mutable;
  v76 = partsCopy;
  v59 = partsCopy;
  v60 = Mutable;
  v61 = v7;
  v62 = v68;
  objc_msgSend__updateChatItemsWithReason_block_(self, v63, @"(IMChat) Decrement reply counts", v72);

  v64 = *MEMORY[0x1E69E9840];
}

- (id)muteUntilDate
{
  v4 = objc_msgSend_sharedList(MEMORY[0x1E69A8180], a2, v2);
  v6 = objc_msgSend_unmuteDateForChat_(v4, v5, self);

  return v6;
}

- (void)setMuteUntilDate:(id)date
{
  v4 = MEMORY[0x1E69A8180];
  dateCopy = date;
  v9 = objc_msgSend_sharedList(v4, v6, v7);
  objc_msgSend_muteChat_untilDate_(v9, v8, self, dateCopy);
}

- (IMDaemonProtocol)remoteDaemon
{
  v3 = objc_msgSend_daemonController(self, a2, v2);
  v6 = objc_msgSend_remoteDaemon(v3, v4, v5);

  return v6;
}

- (id)_lastKTVerifierResultForParticipant:(id)participant
{
  v53 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  v7 = objc_msgSend_sharedController(IMKeyTransparencyController, v5, v6);
  v10 = objc_msgSend_ID(participantCopy, v8, v9);
  v13 = objc_msgSend__stripFZIDPrefix(v10, v11, v12);
  v15 = objc_msgSend_ktVerifierResultForHandleID_(v7, v14, v13);

  if (v15)
  {
    inited = v15;
  }

  else
  {
    v19 = objc_msgSend__keyTransparencyVerifier(self, v16, v17);
    v22 = objc_msgSend_ID(participantCopy, v20, v21);
    v25 = objc_msgSend__stripFZIDPrefix(v22, v23, v24);
    v26 = IMChatCanonicalIDSIDsForAddress();

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v51 = 138412290;
        v52 = v26;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Could not find a kt verifier result for handle: %@  initializing to Pending", &v51, 0xCu);
      }
    }

    v30 = MEMORY[0x1E69DB500];
    v31 = objc_msgSend_applicationIdentifier(v19, v27, v28);
    v33 = objc_msgSend_addApplicationPrefixForIdentifier_uri_(v30, v32, v31, v26);

    v34 = objc_alloc(MEMORY[0x1E69DB4F8]);
    v37 = objc_msgSend_applicationIdentifier(v19, v35, v36);
    inited = objc_msgSend_initPendingForUri_application_(v34, v38, v33, v37);

    v41 = objc_msgSend_sharedController(IMKeyTransparencyController, v39, v40);
    v44 = objc_msgSend_ID(participantCopy, v42, v43);
    v47 = objc_msgSend__stripFZIDPrefix(v44, v45, v46);
    objc_msgSend_setKTVerifierResult_forHandleID_(v41, v48, inited, v47);
  }

  v49 = *MEMORY[0x1E69E9840];

  return inited;
}

- (id)_ktQueue
{
  if (qword_1EB2E9130 != -1)
  {
    sub_1A84E16F0();
  }

  v3 = qword_1EB2E9138;

  return v3;
}

- (void)markKTFailureSeen
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isKeyTransparencyEnabled = objc_msgSend_isKeyTransparencyEnabled(v4, v5, v6);

  if (isKeyTransparencyEnabled)
  {
    v10 = objc_msgSend__keyTransparencyVerifier(self, v8, v9);
    v13 = objc_msgSend_participants(self, v11, v12);
    v16 = objc_msgSend_copy(v13, v14, v15);

    v17 = MEMORY[0x1E695DF70];
    v20 = objc_msgSend_count(v16, v18, v19);
    v22 = objc_msgSend_arrayWithCapacity_(v17, v21, v20);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = v16;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v43, v47, 16);
    if (v25)
    {
      v27 = v25;
      v28 = *v44;
      do
      {
        v29 = 0;
        do
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(v23);
          }

          v31 = objc_msgSend__lastKTVerifierResultForParticipant_(self, v26, *(*(&v43 + 1) + 8 * v29));
          if (v31)
          {
            objc_msgSend_addObject_(v22, v30, v31);
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v43, v47, 16);
      }

      while (v27);
    }

    v34 = objc_msgSend__ktQueue(self, v32, v33);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8336CC0;
    block[3] = &unk_1E7810D08;
    v40 = v10;
    v41 = v22;
    v42 = v23;
    v35 = v23;
    v36 = v22;
    v37 = v10;
    dispatch_async(v34, block);
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)ignoreKTFailure
{
  v109 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isKeyTransparencyEnabled = objc_msgSend_isKeyTransparencyEnabled(v3, v4, v5);

  if (isKeyTransparencyEnabled)
  {
    v91 = objc_msgSend__keyTransparencyVerifier(self, v7, v8);
    v9 = MEMORY[0x1E695DF70];
    v12 = objc_msgSend_participants(self, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14);
    v92 = objc_msgSend_arrayWithCapacity_(v9, v16, v15);

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v19 = objc_msgSend_participants(self, v17, v18);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v99, v108, 16);
    if (v22)
    {
      v23 = *v100;
      do
      {
        v24 = 0;
        do
        {
          if (*v100 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v26 = objc_msgSend__lastKTVerifierResultForParticipant_(self, v21, *(*(&v99 + 1) + 8 * v24));
          if (v26)
          {
            objc_msgSend_addObject_(v92, v25, v26);
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v99, v108, 16);
      }

      while (v22);
    }

    v98 = 0;
    objc_msgSend_ignoreFailureForResults_error_(v91, v27, v92, &v98);
    v87 = v98;
    if (v87)
    {
      v30 = MEMORY[0x1E695DF70];
      v31 = objc_msgSend_participants(self, v28, v29);
      v34 = objc_msgSend_count(v31, v32, v33);
      v90 = objc_msgSend_arrayWithCapacity_(v30, v35, v34);

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      obj = objc_msgSend_participants(self, v36, v37);
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v94, v107, 16);
      if (v41)
      {
        v89 = *v95;
        do
        {
          v42 = 0;
          do
          {
            if (*v95 != v89)
            {
              objc_enumerationMutation(obj);
            }

            v43 = *(*(&v94 + 1) + 8 * v42);
            v44 = objc_msgSend_sharedController(IMKeyTransparencyController, v39, v40);
            v47 = objc_msgSend_ID(v43, v45, v46);
            v50 = objc_msgSend__stripFZIDPrefix(v47, v48, v49);
            v52 = objc_msgSend_idsIDInfoResultForHandleID_(v44, v51, v50);

            v55 = objc_msgSend_uri(v52, v53, v54);
            v56 = MEMORY[0x1E69DB500];
            v59 = objc_msgSend_applicationIdentifier(v91, v57, v58);
            v61 = objc_msgSend_addApplicationPrefixForIdentifier_uri_(v56, v60, v59, v55);

            v64 = objc_msgSend_sharedController(IMKeyTransparencyController, v62, v63);
            v67 = objc_msgSend_ID(v43, v65, v66);
            v70 = objc_msgSend__stripFZIDPrefix(v67, v68, v69);
            v72 = objc_msgSend_ktVerifierResultForHandleID_(v64, v71, v70);

            v73 = MEMORY[0x1E696AEC0];
            v76 = objc_msgSend_name(v43, v74, v75);
            v79 = objc_msgSend_uiStatus(v72, v77, v78);
            v81 = objc_msgSend_stringWithFormat_(v73, v80, @"(name:%@, uri:%@, uiStatus:%lu)", v76, v61, v79);

            objc_msgSend_addObject_(v90, v82, v81);
            ++v42;
          }

          while (v41 != v42);
          v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v94, v107, 16);
        }

        while (v41);
      }

      if (IMOSLoggingEnabled())
      {
        v83 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
        {
          v85 = objc_msgSend_componentsJoinedByString_(v90, v84, @" ");;
          *buf = 138412546;
          v104 = v85;
          v105 = 2112;
          v106 = v87;
          _os_log_impl(&dword_1A823F000, v83, OS_LOG_TYPE_INFO, "IMChat_KT There was an error ignoring the KT failure for participants [%@] with error: %@", buf, 0x16u);
        }
      }
    }

    objc_msgSend_fetchKTStatus(self, v28, v29);
  }

  v86 = *MEMORY[0x1E69E9840];
}

- (unint64_t)conversationKTUIStatus
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_participants(self, a2, v2);
  v8 = objc_msgSend_count(v5, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v4, v9, v8);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = objc_msgSend_participants(self, v11, v12, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v32, v36, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v33;
    do
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v21 = objc_msgSend__lastKTVerifierResultForParticipant_(self, v16, *(*(&v32 + 1) + 8 * v19));
        if (v21)
        {
          objc_msgSend_addObject_(v10, v20, v21);
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v32, v36, 16);
    }

    while (v17);
  }

  v24 = objc_msgSend__keyTransparencyVerifier(self, v22, v23);
  v27 = IMIsEnrolledInContactKeyVerification(v24, v25, v26);
  isSelfOptedIn = objc_msgSend_getDisplayStatusForResults_isSelfOptedIn_(v24, v28, v10, v27);

  v30 = *MEMORY[0x1E69E9840];
  return isSelfOptedIn;
}

- (id)getParticipantsWithKTUIStatus:(unint64_t)status
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, status);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = objc_msgSend_participants(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v31, v35, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = objc_msgSend_sharedController(IMKeyTransparencyController, v9, v10);
        v18 = objc_msgSend_ID(v14, v16, v17);
        v21 = objc_msgSend__stripFZIDPrefix(v18, v19, v20);
        v23 = objc_msgSend_ktVerifierResultForHandleID_(v15, v22, v21);

        if (objc_msgSend_uiStatus(v23, v24, v25) == status)
        {
          objc_msgSend_addObject_(v29, v26, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v31, v35, 16);
    }

    while (v11);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v29;
}

- (unint64_t)getKTDisplayStatusAndRelatedPeerHandles:(id *)handles
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, handles);
  isKeyTransparencyEnabled = objc_msgSend_isKeyTransparencyEnabled(v5, v6, v7);

  if (isKeyTransparencyEnabled)
  {
    v56 = objc_msgSend_conversationKTUIStatus(self, v9, v10);
    v57 = objc_msgSend_getParticipantsWithKTUIStatus_(self, v11, v56);
    isLastIncomingFinishedMessageNotiMessage = objc_msgSend_isLastIncomingFinishedMessageNotiMessage(self, v12, v13);
    v58 = IMKeyTransparencyStatusFromKTUIStatus(v56, isLastIncomingFinishedMessageNotiMessage ^ 1u);
    self->_ktStatus = v58;
    if (handles && v57)
    {
      *handles = v57;
    }

    if (v58)
    {
      v17 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16);
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v18 = v57;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v59, v69, 16);
      if (v22)
      {
        v23 = *v60;
        do
        {
          v24 = 0;
          do
          {
            if (*v60 != v23)
            {
              objc_enumerationMutation(v18);
            }

            v25 = *(*(&v59 + 1) + 8 * v24);
            v26 = objc_msgSend_sharedController(IMKeyTransparencyController, v20, v21);
            v29 = objc_msgSend_ID(v25, v27, v28);
            v32 = objc_msgSend__stripFZIDPrefix(v29, v30, v31);
            v34 = objc_msgSend_idsIDInfoResultForHandleID_(v26, v33, v32);

            v37 = objc_msgSend_uri(v34, v35, v36);

            if (v37)
            {
              v40 = objc_msgSend_uri(v34, v38, v39);
              objc_msgSend_addObject_(v17, v41, v40);
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v59, v69, 16);
        }

        while (v22);
      }

      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v44 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v43, v56);
          v46 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v45, v58);
          v48 = objc_msgSend_componentsJoinedByString_(v17, v47, @", ");
          *buf = 138412802;
          v64 = v44;
          v65 = 2112;
          v66 = v46;
          v67 = 2112;
          v68 = v48;
          _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "Received KT display status %@/IM status %@ for %@", buf, 0x20u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v51 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v50, v56);
        v53 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v52, 0);
        *buf = 138412546;
        v64 = v51;
        v65 = 2112;
        v66 = v53;
        _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "Received KT display status %@/IM status %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v58 = 0;
  }

  v54 = *MEMORY[0x1E69E9840];
  return v58;
}

- (void)fetchKTStatus
{
  if (IMIsEnrolledInContactKeyVerification(self, a2, v2))
  {

    MEMORY[0x1EEE66B58](self, sel__refreshKTData, v4);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Self is not opted in, returning early before requesting status.", v6, 2u);
      }
    }

    self->_ktStatus = 0;
  }
}

- (id)_keyTransparencyVerifier
{
  v3 = objc_msgSend_sharedController(IMKeyTransparencyController, a2, v2);
  v6 = objc_msgSend_verifier(v3, v4, v5);

  return v6;
}

- (BOOL)_lastKnownHybridState
{
  v2 = objc_msgSend_valueForChatProperty_(self, a2, *MEMORY[0x1E69A6C00]);
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (BOOL)_isBlackHoled
{
  v2 = objc_msgSend_valueForChatProperty_(self, a2, *MEMORY[0x1E69A6BA8]);
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (BOOL)_serviceSupportsCapability:(id)capability
{
  capabilityCopy = capability;
  v7 = objc_msgSend_account(self, v5, v6);
  hasSuppressionForCapability = objc_msgSend__hasSuppressionForCapability_(v7, v8, capabilityCopy);

  if ((hasSuppressionForCapability & 1) == 0)
  {
    v35 = objc_msgSend_account(self, v10, v11);
    v17 = objc_msgSend_service(v35, v36, v37);
    v39 = objc_msgSend_supportsCapability_(v17, v38, capabilityCopy);
    goto LABEL_12;
  }

  v12 = objc_msgSend_lastAddressedHandleID(self, v10, v11);
  v17 = objc_msgSend_lastAddressedSIMID(self, v13, v14);
  if (!(v12 | v17))
  {
    v26 = objc_msgSend_account(self, v15, v16);
    v12 = objc_msgSend_displayName(v26, v40, v41);
    goto LABEL_7;
  }

  v18 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], v15, v16);
  v21 = objc_msgSend_ctSubscriptionInfo(v18, v19, v20);
  v23 = objc_msgSend___im_subscriptionContextForForSimID_(v21, v22, v17);

  if (v23)
  {
    v26 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], v24, v25);
    v29 = objc_msgSend_ctSubscriptionInfo(v26, v27, v28);
    v31 = objc_msgSend___im_subscriptionContextForForSimID_(v29, v30, v17);
    v34 = objc_msgSend_phoneNumber(v31, v32, v33);

    v12 = v34;
LABEL_7:
  }

  v42 = objc_msgSend__stripFZIDPrefix(v12, v24, v25);

  if (objc_msgSend__appearsToBePhoneNumber(v42, v43, v44))
  {
    IMNormalizePhoneNumber();
  }

  else
  {
    IMCanonicalizeFormattedString();
  }
  v35 = ;

  v47 = objc_msgSend_account(self, v45, v46);
  v39 = objc_msgSend_supportsCapability_forAlias_simID_(v47, v48, capabilityCopy, v35, v17);

LABEL_12:
  return v39;
}

- (BOOL)accountMatchesLastFinishedMessageItem
{
  v4 = objc_msgSend_lastFinishedMessageItem(self, a2, v2);
  v7 = objc_msgSend_service(v4, v5, v6);
  v10 = objc_msgSend_account(self, v8, v9);
  v13 = objc_msgSend_service(v10, v11, v12);
  v16 = objc_msgSend_internalName(v13, v14, v15);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v17, v16);

  return isEqualToString;
}

- (void)_enumerateUnderlyingChatInfo:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = objc_msgSend__guids(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v23, v27, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = objc_msgSend_sharedRegistry(IMChatRegistry, v9, v10);
        v18 = objc_msgSend_chatGUIDToInfoMap(v15, v16, v17);
        v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v14);

        if (v20)
        {
          infoCopy[2](infoCopy, v14, v20);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v23, v27, 16);
    }

    while (v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)_processSupportsHistory
{
  v3 = objc_msgSend_daemonController(self, a2, v2);
  v6 = objc_msgSend_processCapabilities(v3, v4, v5);

  return ((v6 & 0x4000004) != 0) & (v6 >> 13);
}

- (id)loadMessagesUpToGUID:(id)d limit:(unint64_t)limit
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (objc_msgSend__processSupportsHistory(self, v7, v8))
  {
    v11 = objc_msgSend_date(MEMORY[0x1E695DF00], v9, v10);
    v13 = objc_msgSend_loadMessagesUpToGUID_date_limit_loadImmediately_(self, v12, dCopy, v11, limit, 1);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = objc_msgSend_guid(self, v15, v16);
        v20 = 138412546;
        v21 = dCopy;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Load messages up to GUID %@ for %@ rejected, client does not have history capability", &v20, 0x16u);
      }
    }

    v13 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)loadMessagesBeforeDate:(id)date limit:(unint64_t)limit
{
  v19 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (objc_msgSend__processSupportsHistory(self, v7, v8))
  {
    v10 = objc_msgSend_loadMessagesBeforeDate_limit_loadImmediately_(self, v9, dateCopy, limit, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = objc_msgSend_guid(self, v12, v13);
        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Load messages before date for %@ rejected, client does not have history capability", &v17, 0xCu);
      }
    }

    v10 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)fetchMessageHistoryForDateInterval:(id)interval completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v10 = objc_msgSend_guid(self, v8, v9);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = intervalCopy;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Queueing fetchMessageHistoryForDateInterval: %@ chatGUIDs: %@", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A833A1E8;
  v21[3] = &unk_1E7812AD8;
  v22 = intervalCopy;
  v23 = v10;
  selfCopy = self;
  v26 = 0;
  v25 = completionCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A833A4D0;
  v17[3] = &unk_1E7812B00;
  v18 = v22;
  v19 = v23;
  v20 = v25;
  v12 = v25;
  v13 = v23;
  v14 = v22;
  objc_msgSend__performQueryWithKey_loadImmediately_block_completion_(self, v15, @"MessageHistorySummaryLoading", 0, v21, v17);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)fetchOldestMessageDateWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = objc_msgSend_guid(self, v5, v6);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Queueing fetchOldestMessageDate chatGUID: %@", buf, 0xCu);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A833A814;
  v16[3] = &unk_1E7812B50;
  v17 = v7;
  selfCopy = self;
  v20 = 0;
  v19 = completionCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A833AADC;
  v13[3] = &unk_1E7812B78;
  v14 = v17;
  v15 = v19;
  v9 = v19;
  v10 = v17;
  objc_msgSend__performQueryWithKey_loadImmediately_block_completion_(self, v11, @"OldestMessageDateLoading", 0, v16, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_setAttachments:(id)attachments
{
  if (self->_attachments != attachments)
  {
    v4 = objc_msgSend_copy(attachments, a2, attachments);
    attachments = self->_attachments;
    self->_attachments = v4;

    MEMORY[0x1EEE66BB8](v4);
  }
}

- (void)_setCountOfMessagesMarkedAsSpam:(id)spam
{
  if (self->_countOfMessagesMarkedAsSpam != spam)
  {
    v4 = objc_msgSend_copy(spam, a2, spam);
    countOfMessagesMarkedAsSpam = self->_countOfMessagesMarkedAsSpam;
    self->_countOfMessagesMarkedAsSpam = v4;

    MEMORY[0x1EEE66BB8](v4);
  }
}

- (void)_setCountOfAttachmentsNotCachedLocally:(id)locally
{
  isEqualToNumber = locally;
  if (isEqualToNumber)
  {
    v8 = isEqualToNumber;
    isEqualToNumber = objc_msgSend_isEqualToNumber_(self->_countOfAttachmentsNotCachedLocally, isEqualToNumber, isEqualToNumber);
    if ((isEqualToNumber & 1) == 0)
    {
      v6 = objc_msgSend_copy(v8, v8, v5);
      countOfAttachmentsNotCachedLocally = self->_countOfAttachmentsNotCachedLocally;
      self->_countOfAttachmentsNotCachedLocally = v6;
    }
  }

  MEMORY[0x1EEE66BB8](isEqualToNumber);
}

- (void)loadAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A833B288;
  v10[3] = &unk_1E7812700;
  v10[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A833B2FC;
  v8[3] = &unk_1E7812B78;
  v8[4] = self;
  v9 = attachmentsCopy;
  v5 = attachmentsCopy;
  v7 = objc_msgSend__performQueryWithKey_loadImmediately_block_completion_(self, v6, @"LoadAttachmentsAsync", 0, v10, v8);
}

- (BOOL)isCurrentlyDownloadingPurgedAttachments
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A833B46C;
  v5[3] = &unk_1E7812700;
  v5[4] = self;
  v3 = objc_msgSend__performQueryWithKey_loadImmediately_block_(self, a2, @"IsCurrentlyDownloadingPurgedAttachments", 1, v5);
  return self->_isCurrentlyDownloadingPurgedAssets;
}

- (void)fetchIsCurrentlyDownloadingPurgedAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A833B5CC;
  v10[3] = &unk_1E7812700;
  v10[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A833B640;
  v8[3] = &unk_1E7812840;
  v8[4] = self;
  v9 = attachmentsCopy;
  v5 = attachmentsCopy;
  v7 = objc_msgSend__performQueryWithKey_loadImmediately_block_completion_(self, v6, @"IsCurrentlyDownloadingPurgedAttachments", 0, v10, v8);
}

- (void)deleteTransfers:(id)transfers
{
  transfersCopy = transfers;
  v8 = objc_msgSend_chatItems(self, v5, v6);
  objc_msgSend__deleteTransfersWithGUIDs_fromChatItems_(self, v7, transfersCopy, v8);
}

- (void)deleteChatItemsWithTransferGUIDs:(id)ds fromMessageItem:(id)item
{
  v16[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dsCopy = ds;
  objc_msgSend__refreshContextWithAccountHandles(itemCopy, v8, v9);
  v16[0] = itemCopy;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v16, 1);

  v13 = objc_msgSend_chatItemsForItems_(self, v12, v11);

  objc_msgSend__deleteTransfersWithGUIDs_fromChatItems_(self, v14, dsCopy, v13);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_deleteTransfersWithGUIDs:(id)ds fromChatItems:(id)items
{
  v83 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  itemsCopy = items;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v80 = dsCopy;
      v81 = 2112;
      v82 = itemsCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Delete transfer guids: %@ from chatItems: %@", buf, 0x16u);
    }
  }

  v7 = objc_alloc(MEMORY[0x1E695DFA8]);
  v9 = objc_msgSend_initWithArray_(v7, v8, dsCopy);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = itemsCopy;
  v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v72, v78, 16);
  if (v62)
  {
    v61 = *v73;
    do
    {
      v64 = 0;
      do
      {
        if (*v73 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v72 + 1) + 8 * v64);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = objc_msgSend_aggregateAttachmentParts(v12, v13, v14);
          }

          else
          {
            v77 = v12;
            v18 = MEMORY[0x1E695DEC8];
            v19 = v12;
            v17 = objc_msgSend_arrayWithObjects_count_(v18, v20, &v77, 1);
          }

          v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16);
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = sub_1A833BC48;
          v69[3] = &unk_1E7812BF0;
          v70 = v9;
          v22 = v21;
          v71 = v22;
          objc_msgSend_enumerateObjectsUsingBlock_(v17, v23, v69);
          v26 = objc_msgSend_count(v17, v24, v25);
          if (v26 == objc_msgSend_count(v22, v27, v28))
          {
            objc_msgSend_addObject_(v10, v29, v12);
          }

          else
          {
            objc_msgSend_addObjectsFromArray_(v10, v29, v22);
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v63 = objc_msgSend_visibleAssociatedMessageChatItems(v12, v30, v31);
          if (objc_msgSend_count(v63, v32, v33))
          {
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v34 = v63;
            v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v65, v76, 16);
            if (v36)
            {
              v37 = *v66;
              do
              {
                v38 = 0;
                do
                {
                  if (*v66 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v65 + 1) + 8 * v38);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v41 = v39;
                    v44 = objc_msgSend_transferGUID(v41, v42, v43);
                    v46 = objc_msgSend_containsObject_(v9, v45, v44);

                    if (v46)
                    {
                      v49 = objc_msgSend_transferGUID(v41, v47, v48);
                      objc_msgSend_removeObject_(v9, v50, v49);

                      objc_msgSend_addObject_(v10, v51, v41);
                    }
                  }

                  ++v38;
                }

                while (v36 != v38);
                v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v40, &v65, v76, 16);
              }

              while (v36);
            }
          }
        }

        ++v64;
      }

      while (v64 != v62);
      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v72, v78, 16);
    }

    while (v62);
  }

  v54 = objc_msgSend_remoteDaemon(self, v52, v53);
  objc_msgSend_fileTransfersRecoverablyDeleted_(v54, v55, v9);

  objc_msgSend_deleteChatItems_fromChatItems_(self, v56, v10, obj);
  v57 = *MEMORY[0x1E69E9840];
}

- (void)watermarkInForScrutinyMode
{
  if ((IMIsRunningInMessagesAssistantExtension() & 1) == 0)
  {
    v5 = objc_msgSend_scrutinyModeAttemptCount(self, v3, v4);
    v12 = objc_msgSend__renderingDataDictionary(self, v6, v7);
    v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v8, v5 + 1);
    objc_msgSend_setObject_forKey_(v12, v10, v9, @"acnt");

    objc_msgSend__setRenderingDataDictionary_(self, v11, v12);
  }
}

- (unint64_t)scrutinyModeAttemptCount
{
  Mutable = objc_msgSend__renderingDataDictionary(self, a2, v2);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v5 = objc_msgSend_objectForKey_(Mutable, v3, @"acnt");
  v8 = objc_msgSend_unsignedIntegerValue(v5, v6, v7);

  return v8;
}

- (BOOL)_serverBagPreventsScrutinyMode
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x1E69A53F0], a2, 1);
  v4 = objc_msgSend_objectForKey_(v2, v3, @"disableScrutinyMode");
  v7 = objc_msgSend_BOOLValue(v4, v5, v6);

  if (v7 && IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = @"YES";
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Server has disabled scrutiny mode %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isInScrutinyMode
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_msgSend__serverBagPreventsScrutinyMode(self, a2, v2) & 1) != 0 || (IMIsRunningInMessagesAssistantExtension())
  {
LABEL_3:
    result = 0;
    goto LABEL_4;
  }

  v8 = objc_msgSend_scrutinyModeAttemptCount(self, v4, v5);
  if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (v8 >= 4)
    {
      objc_msgSend_clearScrutinyMode(self, v9, v10);
    }

    goto LABEL_3;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = objc_msgSend_chatIdentifier(self, v12, v13);
      v15 = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = @"YES";
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "isInScrutinyModeForAttemptCount chat %@ result %@", &v15, 0x16u);
    }
  }

  result = 1;
LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)watermarkOutForScrutinyMode
{
  if ((IMIsRunningInMessagesAssistantExtension() & 1) == 0)
  {
    v7 = objc_msgSend__renderingDataDictionary(self, v3, v4);
    objc_msgSend_setObject_forKey_(v7, v5, &unk_1F1BA17B8, @"acnt");
    objc_msgSend__setRenderingDataDictionary_(self, v6, v7);
  }
}

+ (BOOL)isGUIDInAttemptingListInScrutinyMode:(id)mode
{
  modeCopy = mode;
  v4 = IMGetCachedDomainValueForKey();
  v6 = v4;
  v7 = v4 && (objc_msgSend_isEqualToString_(v4, v5, modeCopy) & 1) != 0;

  return v7;
}

- (void)clearScrutinyMode
{
  objc_msgSend__setRenderingDataDictionary_(self, a2, 0);
  v6 = objc_msgSend_chatScrutinyController(self, v3, v4);
  objc_msgSend_setTranscriptRenderingMetadata_forChatIdentifier_(v6, v5, 0, 0);
}

- (NSArray)chatItems
{
  v36 = *MEMORY[0x1E69E9840];
  chatItemRules = self->_chatItemRules;
  if (!chatItemRules)
  {
    v5 = objc_msgSend_IMCoreSetupTimingCollection(MEMORY[0x1E69A6170], a2, v2);
    objc_msgSend_startTimingForKey_(v5, v6, @"IMCoreSetup: Generate chat items");
    v9 = objc_alloc(objc_msgSend_chatItemRulesClass(IMChat, v7, v8));
    v11 = objc_msgSend__initWithChat_(v9, v10, self);
    v12 = self->_chatItemRules;
    self->_chatItemRules = v11;

    v15 = objc_msgSend__items(self, v13, v14);
    v16 = self->_chatItemRules;
    v19 = objc_msgSend__chatItems(v16, v17, v18);
    _IMChatItemsReplaceWithChatItemsForItems(v19, v16, v15);
    objc_msgSend__didProcessChatItems_(v16, v20, v19);
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = MEMORY[0x1E696AD98];
        v26 = objc_msgSend_count(v19, v23, v24);
        v28 = objc_msgSend_numberWithUnsignedInteger_(v25, v27, v26);
        v32 = 136315394;
        v33 = "[IMChat(IMChatItem) chatItems]";
        v34 = 2112;
        v35 = v28;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "%s Configuring chatItemRules and chatItems, count: %@", &v32, 0x16u);
      }
    }

    objc_msgSend_stopTimingForKey_(v5, v21, @"IMCoreSetup: Generate chat items");

    chatItemRules = self->_chatItemRules;
  }

  v29 = objc_msgSend__chatItems(chatItemRules, a2, v2);
  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (void)cleanupChatItems
{
  chatItemRules = self->_chatItemRules;
  self->_chatItemRules = 0;
  MEMORY[0x1EEE66BB8]();
}

- (BOOL)wantsSenderBlackholeWarning
{
  if (!self || (senderBlackholeWarningStatus = self->_senderBlackholeWarningStatus) == 0)
  {
    if (sub_1A84E180C(self, (self == 0), &v4))
    {
      return 0;
    }

    senderBlackholeWarningStatus = v4;
  }

  return senderBlackholeWarningStatus == 2;
}

- (void)beginHoldingChatItemsUpdatesForReason:(id)reason
{
  v15 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_guid(self, v6, v7);
    v11 = 138412546;
    v12 = v8;
    v13 = 2114;
    v14 = reasonCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Chat %@ will hold chat item updates for reason: %{public}@", &v11, 0x16u);
  }

  objc_msgSend_beginHoldingUpdatesForReason_(self->_chatItemsUpdater, v9, reasonCopy);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)endHoldingChatItemsUpdatesForReason:(id)reason
{
  v25 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_guid(self, v6, v7);
    v19 = 138412546;
    v20 = v8;
    v21 = 2114;
    v22 = reasonCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Chat %@ will end holding chat item updates for reason: %{public}@", &v19, 0x16u);
  }

  objc_msgSend_endHoldingUpdatesForReason_updateTriggeredIfNotHeldShouldBeDeferred_(self->_chatItemsUpdater, v9, reasonCopy, 1);
  active = objc_msgSend_activeUpdaterHoldsCount(self->_chatItemsUpdater, v10, v11);
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = objc_msgSend_guid(self, v14, v15);
    chatItemsUpdater = self->_chatItemsUpdater;
    v19 = 138412802;
    v20 = v16;
    v21 = 2050;
    v22 = active;
    v23 = 2112;
    v24 = chatItemsUpdater;
    _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "--> Chat %@ has %{public}ld remaining holds: %@", &v19, 0x20u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)endAllHoldsOnChatItemsUpdatesForReason:(id)reason
{
  v26 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (objc_msgSend_isHoldingUpdatesForReason_(self->_chatItemsUpdater, v5, reasonCopy))
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_guid(self, v7, v8);
      v20 = 138412546;
      v21 = v9;
      v22 = 2114;
      v23 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Chat %@ is ending holds on updates for reason: %{public}@", &v20, 0x16u);
    }

    active = objc_msgSend_activeUpdaterHoldsCount(self->_chatItemsUpdater, v10, v11);
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = objc_msgSend_guid(self, v14, v15);
      chatItemsUpdater = self->_chatItemsUpdater;
      v20 = 138412802;
      v21 = v16;
      v22 = 2050;
      v23 = active;
      v24 = 2112;
      v25 = chatItemsUpdater;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "--> Chat %@ has %{public}ld remaining holds: %@", &v20, 0x20u);
    }

    objc_msgSend_endAllHoldsOnUpdatesForReason_updateTriggeredIfNotHeldShouldBeDeferred_(self->_chatItemsUpdater, v18, reasonCopy, 1);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)endHoldingChatItemsUpdatesForAllReasons
{
  if (objc_msgSend_isHoldingUpdates(self->_chatItemsUpdater, a2, v2))
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E190C(self, v4, v5);
    }

    objc_msgSend_endHoldingUpdatesForAllReasonsWithPotentialUpdateDeferred_(self->_chatItemsUpdater, v6, 1);
  }
}

- (void)_updateChatItemsWithReason:(id)reason block:(id)block shouldPost:(BOOL)post
{
  postCopy = post;
  v225 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  blockCopy = block;
  v6 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  dispatch_assert_queue_V2(v6);

  v8 = IMLogHandleForCategory();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  v195 = v9 - 1;
  spid = v9;
  if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v13 = v11;
  }

  else
  {
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A823F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "updateChatItemsWithReason_all", "", buf, 2u);
    }

    v12 = v11;
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A823F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "updateChatItemsWithReason_beforePosting", "", buf, 2u);
    }
  }

  v200 = v11;

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = objc_msgSend_guid(self, v17, v18);
      *buf = 138412546;
      selfCopy4 = v19;
      v223 = 2112;
      v224 = reasonCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Update chat items (chatGUID: %@), reason: %@", buf, 0x16u);
    }
  }

  v20 = objc_msgSend_stateCaptureRecents(IMChat, v14, v15);
  objc_msgSend_promoteRecentObject_(v20, v21, self);

  objc_msgSend__validateChatRegistrationWithRegistry(self, v22, v23);
  selfCopy3 = self;
  v203 = self->_chatItemRules;
  if (!v203)
  {
    if ((objc_msgSend__isBlackHoled(self, v25, v26) & 1) != 0 || !IMIsRunningInMessagesUIProcess())
    {
      v203 = 0;
      selfCopy3 = self;
    }

    else
    {
      v29 = objc_alloc(objc_msgSend_chatItemRulesClass(IMChat, v27, v28));
      v31 = objc_msgSend__initWithChat_(v29, v30, self);
      chatItemRules = self->_chatItemRules;
      self->_chatItemRules = v31;

      selfCopy3 = self;
      v203 = self->_chatItemRules;
    }
  }

  if (selfCopy3->_isUpdatingChatItems)
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "Update already in progress, executing update block", buf, 2u);
      }
    }

    blockCopy[2]();
    goto LABEL_120;
  }

  selfCopy3->_isUpdatingChatItems = 1;
  blockCopy[2]();
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  v36 = objc_msgSend_filterControllers(self, v34, v35);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v215, v220, 16);
  if (v40)
  {
    v41 = *v216;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v216 != v41)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend_updateChatItemsIfNeeded(*(*(&v215 + 1) + 8 * i), v38, v39);
      }

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v215, v220, 16);
    }

    while (v40);
  }

  objc_msgSend_cancelAllPendingDeferredUpdates(self->_chatItemsUpdater, v43, v44);
  self->_isUpdatingChatItems = 0;
  if (v203)
  {
    v193 = objc_msgSend__items(self, v45, v46);
    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v52 = MEMORY[0x1E696AD98];
        v53 = objc_msgSend_count(v193, v50, v51);
        v55 = objc_msgSend_numberWithUnsignedInteger_(v52, v54, v53);
        *buf = 138412290;
        selfCopy4 = v55;
        _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "\tIMItem count = %@", buf, 0xCu);
      }
    }

    v56 = objc_msgSend__chatItems(v203, v47, v48);
    v59 = objc_msgSend_copy(v56, v57, v58);
    _IMChatItemsReplaceWithChatItemsForItems(v56, v203, v193);
    objc_msgSend__didProcessChatItems_(v203, v60, v56);
    if (!v59)
    {
      v59 = objc_msgSend_array(MEMORY[0x1E695DF70], v61, v62);
    }

    v205 = v59;

    if (!v56)
    {
      v56 = objc_msgSend_array(MEMORY[0x1E695DF70], v63, v64);
    }

    v65 = v56;

    v192 = objc_msgSend_differenceFromArray_(v65, v66, v205);
    v213 = 0;
    v214 = 0;
    IMIndexesFromOrderedCollectionDifference(v192, &v214, &v213);
    v198 = v214;
    v197 = v213;
    v191 = objc_msgSend_date(MEMORY[0x1E695DF00], v67, v68);
    if (objc_msgSend_count(v198, v69, v70))
    {
      v211[0] = MEMORY[0x1E69E9820];
      v211[1] = 3221225472;
      v211[2] = sub_1A833DBD8;
      v211[3] = &unk_1E7811FA8;
      v212 = v191;
      objc_msgSend_enumerateObjectsAtIndexes_options_usingBlock_(v65, v73, v198, 0, v211);
    }

    v202 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v71, v72);
    v204 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v74, v75);
    v76 = objc_alloc(MEMORY[0x1E696AD50]);
    v79 = objc_msgSend_count(v205, v77, v78);
    v81 = objc_msgSend_initWithIndexesInRange_(v76, v80, 0, v79);
    v82 = objc_alloc(MEMORY[0x1E696AD50]);
    v85 = objc_msgSend_count(v65, v83, v84);
    v87 = objc_msgSend_initWithIndexesInRange_(v82, v86, 0, v85);
    objc_msgSend_removeIndexes_(v81, v88, v197);
    objc_msgSend_removeIndexes_(v87, v89, v198);
    Index = objc_msgSend_firstIndex(v81, v90, v91);
    v95 = objc_msgSend_firstIndex(v87, v93, v94);
    if (Index != 0x7FFFFFFFFFFFFFFFLL)
    {
      v97 = v95;
      if (v95 != 0x7FFFFFFFFFFFFFFFLL)
      {
        do
        {
          v98 = objc_msgSend_objectAtIndex_(v205, v96, Index);
          v101 = objc_msgSend_objectAtIndex_(v65, v99, v97);
          if (v98 != v101)
          {
            objc_msgSend_addIndex_(v204, v100, v97);
            v104 = objc_msgSend__timeAdded(v98, v102, v103);
            objc_msgSend__setTimeAdded_(v101, v105, v104);
          }

          if (objc_msgSend__shouldReloadChatItem_oldChatItem_(self->_chatItemRules, v100, v101, v98))
          {
            objc_msgSend_addIndex_(v202, v106, v97);
          }

          Index = objc_msgSend_indexGreaterThanIndex_(v81, v106, Index);
          v97 = objc_msgSend_indexGreaterThanIndex_(v87, v107, v97);
        }

        while (Index != 0x7FFFFFFFFFFFFFFFLL && v97 != 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v108 = v65;
    v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v207, v219, 16);
    if (v112)
    {
      v113 = 0;
      v114 = *v208;
      do
      {
        for (j = 0; j != v112; ++j)
        {
          if (*v208 != v114)
          {
            objc_enumerationMutation(v108);
          }

          v116 = objc_msgSend__timeStale(*(*(&v207 + 1) + 8 * j), v110, v111);
          v118 = v116;
          if (v116)
          {
            v119 = objc_msgSend_earlierDate_(v116, v117, v113);
            v120 = v119 == v118;

            if (v120)
            {
              v121 = v118;

              v113 = v121;
            }
          }
        }

        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v110, &v207, v219, 16);
      }

      while (v112);

      if (v113)
      {
        v124 = objc_msgSend__nextStaleTime(v203, v122, v123);
        isEqualToDate = objc_msgSend_isEqualToDate_(v113, v125, v124);

        if ((isEqualToDate & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v128 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy4 = v113;
              _os_log_impl(&dword_1A823F000, v128, OS_LOG_TYPE_INFO, "\tSchedule _replaceStaleChatItems for nextStaleTime:%@", buf, 0xCu);
            }
          }

          objc_msgSend__setNextStaleTime_(v203, v127, v113);
          objc_msgSend_timeIntervalSinceReferenceDate(v113, v129, v130);
          v132 = v131;
          objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v133, v134);
          v137 = 0.0;
          if (v132 > v138)
          {
            objc_msgSend_timeIntervalSinceReferenceDate(v113, v135, v136);
            v140 = v139;
            objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v141, v142);
            v137 = v140 - v143;
          }

          objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v135, self, sel__replaceStaleChatItems, 0);
          objc_msgSend_performSelector_withObject_afterDelay_(self, v144, sel__replaceStaleChatItems, 0, v137);
        }
      }
    }

    else
    {

      v113 = 0;
    }

    if (objc_msgSend_count(v197, v122, v123) || objc_msgSend_count(v198, v148, v149) || objc_msgSend_count(v202, v150, v151) || objc_msgSend_count(v204, v152, v153))
    {
      if (IMOSLoggingEnabled())
      {
        v156 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
        {
          v159 = objc_msgSend_guid(self, v157, v158);
          *buf = 138412546;
          selfCopy4 = self;
          v223 = 2112;
          v224 = v159;
          _os_log_impl(&dword_1A823F000, v156, OS_LOG_TYPE_INFO, "\tchat: %@, guid: %@", buf, 0x16u);
        }
      }

      if (objc_msgSend_count(v198, v154, v155) && IMOSLoggingEnabled())
      {
        v162 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy4 = v198;
          _os_log_impl(&dword_1A823F000, v162, OS_LOG_TYPE_INFO, "\tinserted: %@", buf, 0xCu);
        }
      }

      if (objc_msgSend_count(v197, v160, v161) && IMOSLoggingEnabled())
      {
        v165 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy4 = v197;
          _os_log_impl(&dword_1A823F000, v165, OS_LOG_TYPE_INFO, "\tremoved: %@", buf, 0xCu);
        }
      }

      if (objc_msgSend_count(v202, v163, v164) && IMOSLoggingEnabled())
      {
        v168 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy4 = v202;
          _os_log_impl(&dword_1A823F000, v168, OS_LOG_TYPE_INFO, "\treload: %@", buf, 0xCu);
        }
      }

      if (objc_msgSend_count(v204, v166, v167) && IMOSLoggingEnabled())
      {
        v169 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy4 = v204;
          _os_log_impl(&dword_1A823F000, v169, OS_LOG_TYPE_INFO, "\tregenerate: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v170 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
        {
          v173 = MEMORY[0x1E696AD98];
          v174 = objc_msgSend_count(v205, v171, v172);
          v176 = objc_msgSend_numberWithUnsignedInteger_(v173, v175, v174);
          v177 = MEMORY[0x1E696AD98];
          v180 = objc_msgSend_count(v108, v178, v179);
          v182 = objc_msgSend_numberWithUnsignedInteger_(v177, v181, v180);
          *buf = 138412546;
          selfCopy4 = v176;
          v223 = 2112;
          v224 = v182;
          _os_log_impl(&dword_1A823F000, v170, OS_LOG_TYPE_INFO, "\toldChatItems: %@, newChatItems: %@", buf, 0x16u);
        }
      }

      v183 = v200;
      v184 = v183;
      if (v195 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v183))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A823F000, v184, OS_SIGNPOST_INTERVAL_END, spid, "updateChatItemsWithReason_beforePosting", "", buf, 2u);
      }

      objc_msgSend__recalculateIsInterworking(self, v185, v186);
      if (postCopy)
      {
        objc_msgSend__postIMChatItemsDidChangeNotificationWithInserted_removed_reload_regenerate_oldChatItems_newChatItems_(self, v187, v198, v197, v202, v204, v205, v108);
      }

      v188 = v184;
      v189 = v188;
      if (v195 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v188))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A823F000, v189, OS_SIGNPOST_INTERVAL_END, spid, "updateChatItemsWithReason_all", "", buf, 2u);
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_119;
      }

      v189 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v189, OS_LOG_TYPE_INFO, "\tDon't post update, no significant updates to chatItems.", buf, 2u);
      }
    }

LABEL_119:
    goto LABEL_120;
  }

  if (IMOSLoggingEnabled())
  {
    v145 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v145, OS_LOG_TYPE_INFO, "ChatItem Rules undefined", buf, 2u);
    }
  }

  if (postCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v147 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v147, OS_LOG_TYPE_INFO, "Posting nil update for compatiblity.", buf, 2u);
      }
    }

    objc_msgSend__postIMChatItemsDidChangeNotificationWithInserted_removed_reload_regenerate_oldChatItems_newChatItems_(self, v146, 0, 0, 0, 0, 0, 0);
  }

LABEL_120:

  v190 = *MEMORY[0x1E69E9840];
}

- (void)_replaceStaleChatItems
{
  v55 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "(IMChat) _replaceStaleChatItems", buf, 2u);
    }
  }

  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = objc_msgSend_chatItems(self, v4, v5);
  v8 = 0;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v48, v54, 16);
  if (v11)
  {
    v12 = *v49;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        v17 = objc_msgSend__timeStale(v14, v9, v10);
        if (v17)
        {
          v18 = objc_msgSend_date(MEMORY[0x1E695DF00], v15, v16);
          objc_msgSend_timeIntervalSinceReferenceDate(v18, v19, v20);
          v22 = v21;
          objc_msgSend_timeIntervalSinceReferenceDate(v17, v23, v24);
          v26 = v22 < v25;

          if (!v26)
          {
            v29 = objc_msgSend__item(v14, v27, v28);
            v30 = v29;
            if (v8 == v29)
            {
              v31 = v8;
            }

            else
            {
              v31 = v29;

              v30 = objc_msgSend__copy(v31, v32, v33);
              objc_msgSend_addObject_(v43, v34, v30);
            }

            v8 = v31;
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v48, v54, 16);
    }

    while (v11);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v35 = v43;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v44, v53, 16);
  if (v38)
  {
    v39 = *v45;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(v35);
        }

        objc_msgSend__handleItem_(self, v37, *(*(&v44 + 1) + 8 * j));
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v44, v53, 16);
    }

    while (v38);
  }

  objc_msgSend__setNextStaleTime_(self->_chatItemRules, v41, 0);
  v42 = *MEMORY[0x1E69E9840];
}

- (id)_getDeleteChatItemMap:(id)map
{
  v55 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v4 = objc_alloc_init(MEMORY[0x1E69A6110]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = mapCopy;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v47, v54, 16);
  if (v42)
  {
    v41 = *v48;
    *&v8 = 138412290;
    v38 = v8;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v48 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        if (objc_msgSend_canDelete(v10, v6, v7, v38))
        {
          v13 = objc_msgSend__item(v10, v11, v12);
          v16 = objc_msgSend_guid(v13, v14, v15);

          objc_msgSend_pushObject_forKey_(v4, v17, v10, v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = objc_msgSend_visibleAssociatedMessageChatItems(v10, v18, v19);
            if (objc_msgSend_count(v40, v20, v21))
            {
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v22 = v40;
              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v43, v53, 16);
              if (v26)
              {
                v27 = *v44;
                do
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v44 != v27)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v29 = *(*(&v43 + 1) + 8 * j);
                    if (objc_msgSend_canDelete(v29, v24, v25))
                    {
                      v30 = objc_msgSend__item(v29, v24, v25);
                      v33 = objc_msgSend_guid(v30, v31, v32);

                      objc_msgSend_pushObject_forKey_(v4, v34, v29, v33);
                    }
                  }

                  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v43, v53, 16);
                }

                while (v26);
              }
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = v38;
            v52 = v10;
            _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "Request to delete chatItem %@ which can't be deleted", buf, 0xCu);
          }
        }
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v47, v54, 16);
    }

    while (v42);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_getMessageChatItemMap:(id)map withDeleteMap:(id)deleteMap andAllChatItems:(id)items
{
  v61 = *MEMORY[0x1E69E9840];
  deleteMapCopy = deleteMap;
  itemsCopy = items;
  v8 = objc_alloc_init(MEMORY[0x1E69A6110]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = itemsCopy;
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v55, v60, 16);
  if (v50)
  {
    v12 = *v56;
    v13 = 0x1E780D000uLL;
    v47 = *v56;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        if (objc_msgSend_canDelete(v15, v10, v11, v47))
        {
          v18 = objc_msgSend__parentItem(v15, v16, v17);
          v21 = objc_msgSend_guid(v18, v19, v20);

          v23 = objc_msgSend_peekObjectForKey_(deleteMapCopy, v22, v21);

          if (v23)
          {
            objc_msgSend_pushObject_forKey_(v8, v24, v15, v21);
          }
        }

        v25 = *(v13 + 2808);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = objc_msgSend_visibleAssociatedMessageChatItems(v15, v10, v11);
          if (objc_msgSend_count(v26, v27, v28))
          {
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = v26;
            v29 = v26;
            v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v51, v59, 16);
            if (v31)
            {
              v34 = v31;
              v35 = *v52;
              do
              {
                for (j = 0; j != v34; ++j)
                {
                  if (*v52 != v35)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v37 = *(*(&v51 + 1) + 8 * j);
                  if (objc_msgSend_canDelete(v37, v32, v33))
                  {
                    v38 = objc_msgSend__parentItem(v37, v32, v33);
                    v41 = objc_msgSend_guid(v38, v39, v40);

                    v43 = objc_msgSend_peekObjectForKey_(deleteMapCopy, v42, v41);

                    if (v43)
                    {
                      objc_msgSend_pushObject_forKey_(v8, v44, v37, v41);
                    }
                  }
                }

                v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v51, v59, 16);
              }

              while (v34);
            }

            v12 = v47;
            v13 = 0x1E780D000;
            v26 = v49;
          }
        }
      }

      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v55, v60, 16);
    }

    while (v50);
  }

  v45 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)deleteChatItems:(id)items
{
  itemsCopy = items;
  v8 = objc_msgSend_chatItems(self, v5, v6);
  objc_msgSend_deleteChatItems_fromChatItems_(self, v7, itemsCopy, v8);
}

- (void)deleteChatItems:(id)items fromChatItems:(id)chatItems
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  chatItemsCopy = chatItems;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = objc_msgSend_count(itemsCopy, v9, v10);
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Processing %lu chat items for deletion", buf, 0xCu);
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A833E66C;
  v15[3] = &unk_1E7810D08;
  v15[4] = self;
  v16 = itemsCopy;
  v17 = chatItemsCopy;
  v11 = chatItemsCopy;
  v12 = itemsCopy;
  objc_msgSend__updateChatItemsWithReason_block_(self, v13, @"(IMChat) Delete chat items", v15);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)deleteIMMessageItems:(id)items
{
  v13 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = itemsCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Delete message items: %@", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A833F358;
  v9[3] = &unk_1E7810140;
  v9[4] = self;
  v10 = itemsCopy;
  v6 = itemsCopy;
  objc_msgSend__updateChatItemsWithReason_block_(self, v7, @"(IMChat) Delete message items", v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleDaemonDidDeleteMessageGUIDs:(id)ds
{
  v13 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = dsCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Handle daemon did delete message guids: %@", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A833F6D0;
  v9[3] = &unk_1E7810140;
  v9[4] = self;
  v10 = dsCopy;
  v6 = dsCopy;
  objc_msgSend__updateChatItemsWithReason_block_(self, v7, @"(IMChat) Daemon did delete message guids", v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)markChatItemAsSaved:(id)saved
{
  v22 = *MEMORY[0x1E69E9840];
  savedCopy = saved;
  v7 = objc_msgSend__item(savedCopy, v5, v6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_expireState(v7, v8, v9) <= 2)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = savedCopy;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Mark chat item as saved: %@", buf, 0xCu);
      }
    }

    v13 = objc_msgSend_chatRegistry(self, v10, v11);
    objc_msgSend__chat_sendSavedReceiptForMessage_(v13, v14, self, v7);

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A833F880;
    v17[3] = &unk_1E7810140;
    v18 = v7;
    selfCopy = self;
    objc_msgSend__updateChatItemsWithReason_block_(self, v15, @"(IMChat) Mark as saved", v17);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)markChatItemAsNotifyRecipient:(id)recipient
{
  v20 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v7 = objc_msgSend__item(recipientCopy, v5, v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = recipientCopy;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Mark chat item as notify recipient: %@", buf, 0xCu);
      }
    }

    v11 = objc_msgSend_chatRegistry(self, v8, v9);
    objc_msgSend__chat_sendNotifyRecipientCommandForMessage_(v11, v12, self, v7);

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A833FA70;
    v15[3] = &unk_1E7810140;
    v16 = v7;
    selfCopy = self;
    objc_msgSend__updateChatItemsWithReason_block_(self, v13, @"(IMChat) Mark as notify recipient", v15);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setSelectedIndexOnCarouselChatItem:(id)item selectedIndex:(int64_t)index
{
  v6 = objc_msgSend__item(item, a2, item);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A833FB80;
  v9[3] = &unk_1E7812C40;
  selfCopy = self;
  indexCopy = index;
  v10 = v6;
  v7 = v6;
  objc_msgSend__updateChatItemsWithReason_block_(self, v8, @"(IMChat) Set selected rich card index", v9);
}

- (void)markChatItemAsPlayed:(id)played
{
  v5 = objc_msgSend__item(played, a2, played);
  objc_msgSend__markItemAsPlayed_(self, v4, v5);
}

- (void)_markItemAsPlayed:(id)played
{
  v21 = *MEMORY[0x1E69E9840];
  playedCopy = played;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isPlayed(playedCopy, v5, v6) & 1) == 0 && (objc_msgSend_isFromMe(playedCopy, v7, v8) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = playedCopy;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Mark chat item as played: %@", buf, 0xCu);
      }
    }

    v12 = objc_msgSend_chatRegistry(self, v9, v10);
    objc_msgSend__chat_sendPlayedReceiptForMessage_(v12, v13, self, playedCopy);

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A833FDFC;
    v16[3] = &unk_1E7810140;
    v17 = playedCopy;
    selfCopy = self;
    objc_msgSend__updateChatItemsWithReason_block_(self, v14, @"(IMChat) Mark as played", v16);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)markChatItemAsPlayedExpressiveSend:(id)send
{
  v23 = *MEMORY[0x1E69E9840];
  sendCopy = send;
  v7 = objc_msgSend__item(sendCopy, v5, v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_timeExpressiveSendPlayed(v7, v8, v9);

    if (!v10)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v22 = sendCopy;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Mark chat item as having played expressive send: %@", buf, 0xCu);
        }
      }

      v14 = objc_msgSend_chatRegistry(self, v11, v12);
      objc_msgSend__chat_setPlayedExpressiveSendForMessage_(v14, v15, self, v7);

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1A8340058;
      v18[3] = &unk_1E7810140;
      v19 = v7;
      selfCopy = self;
      objc_msgSend__updateChatItemsWithReason_block_(self, v16, @"(IMChat) Mark as played expressive send", v18);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (NSArray)replySuggestions
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_lastFinishedMessage(self, a2, v2);
  if (objc_msgSend_isFromMe(v4, v5, v6) && !objc_msgSend_isAssociatedMessage(v4, v7, v8))
  {
    v30 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9 = objc_msgSend_lastMessage(self, v7, v8);
    if (objc_msgSend_isFromMe(v9, v10, v11) && !objc_msgSend_isAssociatedMessage(v4, v12, v13))
    {
      v30 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = objc_msgSend_chatItems(self, v12, v13, 0);
      v17 = objc_msgSend_messages(v14, v15, v16);
      v20 = objc_msgSend_reverseObjectEnumerator(v17, v18, v19);

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v33, v37, 16);
      if (v24)
      {
        v25 = *v34;
        while (2)
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v34 != v25)
            {
              objc_enumerationMutation(v20);
            }

            v27 = *(*(&v33 + 1) + 8 * i);
            if ((objc_msgSend_isAssociatedMessageItem(v27, v22, v23) & 1) == 0)
            {
              v24 = objc_msgSend_message(v27, v22, v23);
              goto LABEL_15;
            }
          }

          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v33, v37, 16);
          if (v24)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      if (objc_msgSend_isFromMe(v24, v28, v29))
      {
        v30 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v30 = self->_replySuggestions;
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (BOOL)hasCommSafetySensitiveMessage
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = objc_msgSend__items(self, a2, v2);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v34, v39, 16);
  if (v29)
  {
    v7 = *v35;
    v28 = *v35;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v10 = objc_msgSend_fileTransferGUIDs(v9, v5, v6, v28);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v30, v38, 16);
        if (v12)
        {
          v15 = v12;
          v16 = *v31;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v10);
              }

              v18 = *(*(&v30 + 1) + 8 * j);
              v19 = objc_msgSend_sharedInstance(IMFileTransferCenter, v13, v14);
              v21 = objc_msgSend_transferForGUID_(v19, v20, v18);
              v24 = objc_msgSend_commSafetySensitive(v21, v22, v23);

              if ((v24 - 3) > 0xFFFFFFFFFFFFFFFDLL)
              {

                v25 = 1;
                goto LABEL_19;
              }
            }

            v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v30, v38, 16);
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v7 = v28;
      }

      v25 = 0;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v34, v39, 16);
    }

    while (v29);
  }

  else
  {
    v25 = 0;
  }

LABEL_19:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)hasCommSafetySensitiveMessageFromSomeoneElse
{
  v44 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = objc_msgSend__items(self, a2, v2);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v38, v43, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v8 = 0x1E69A8000uLL;
    v32 = *v39;
    do
    {
      v9 = 0;
      v33 = v6;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        v11 = *(v8 + 312);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_isFromMe(v10, v12, v13) & 1) == 0)
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v14 = objc_msgSend_fileTransferGUIDs(v10, v12, v13, v32);
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v34, v42, 16);
          if (v16)
          {
            v19 = v16;
            v20 = *v35;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v35 != v20)
                {
                  objc_enumerationMutation(v14);
                }

                v22 = *(*(&v34 + 1) + 8 * i);
                v23 = objc_msgSend_sharedInstance(IMFileTransferCenter, v17, v18);
                v25 = objc_msgSend_transferForGUID_(v23, v24, v22);
                v28 = objc_msgSend_commSafetySensitive(v25, v26, v27);

                if ((v28 - 3) > 0xFFFFFFFFFFFFFFFDLL)
                {

                  v29 = 1;
                  goto LABEL_22;
                }
              }

              v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v34, v42, 16);
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v7 = v32;
          v6 = v33;
          v8 = 0x1E69A8000;
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v12, &v38, v43, 16);
      v29 = 0;
    }

    while (v6);
  }

  else
  {
    v29 = 0;
  }

LABEL_22:

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)isCommSafetySensitiveMessageRecent
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = objc_msgSend__items(self, a2, v2);
  v6 = objc_msgSend_reverseObjectEnumerator(v3, v4, v5);

  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v41, v46, 16);
  if (v36)
  {
    v8 = *v42;
    v9 = 0x1E69A8000uLL;
    v34 = *v42;
    v35 = 0;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v42 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v41 + 1) + 8 * v10);
      v12 = *(v9 + 312);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (objc_msgSend_isFromMe(v11, v13, v14))
        {
          if (++v35 > 2)
          {
            break;
          }
        }
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v15 = objc_msgSend_fileTransferGUIDs(v11, v13, v14);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v37, v45, 16);
      if (v17)
      {
        v20 = v17;
        v21 = *v38;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v15);
            }

            v23 = *(*(&v37 + 1) + 8 * i);
            v24 = objc_msgSend_sharedInstance(IMFileTransferCenter, v18, v19);
            v26 = objc_msgSend_transferForGUID_(v24, v25, v23);
            v29 = objc_msgSend_commSafetySensitive(v26, v27, v28);

            if ((v29 - 3) > 0xFFFFFFFFFFFFFFFDLL)
            {

              v31 = 1;
              goto LABEL_22;
            }
          }

          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v37, v45, 16);
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      ++v10;
      v8 = v34;
      v9 = 0x1E69A8000;
      if (v10 == v36)
      {
        v31 = 0;
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v30, &v41, v46, 16);
        if (v36)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }
  }

  v31 = 0;
LABEL_22:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)updateCommSafety:(int64_t)safety forChatItem:(id)item
{
  v13 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = MEMORY[0x1E695DEC8];
  itemCopy2 = item;
  v9 = objc_msgSend_arrayWithObjects_count_(v6, v8, &itemCopy, 1);

  objc_msgSend_updateCommSafety_forChatItems_parentChatItem_(self, v10, safety, v9, 0, itemCopy, v13);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)updateCommSafety:(int64_t)safety forChatItems:(id)items parentChatItem:(id)item
{
  selfCopy = self;
  v76 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemCopy = item;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = itemsCopy;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v66, v75, 16);
  if (v56)
  {
    v55 = *v67;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v67 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v66 + 1) + 8 * i);
        if (objc_msgSend_supportsCommunicationSafety(v12, v9, v10, selfCopy))
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v16 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v15, safety);
              *buf = 138412546;
              v72 = v12;
              v73 = 2112;
              v74 = v16;
              _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Mark chat item %@ for CommSafety: %@", buf, 0x16u);
            }
          }

          objc_msgSend_setNeedsReloadForTransferStatusChangeWithType_(v12, v13, 1);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v12;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v22 = objc_msgSend_acknowledgments(v19, v20, v21);
            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v62, v70, 16);
            if (v26)
            {
              v27 = *v63;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v63 != v27)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v29 = objc_msgSend_commSafetyTransferGUID(*(*(&v62 + 1) + 8 * j), v24, v25);
                  v32 = objc_msgSend_sharedInstance(IMFileTransferCenter, v30, v31);
                  objc_msgSend_setCommSafetySensitiveForTransfer_value_(v32, v33, v29, safety);
                }

                v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v62, v70, 16);
              }

              while (v26);
            }
          }

          else
          {
            v19 = objc_msgSend_sharedInstance(IMFileTransferCenter, v17, v18);
            v22 = objc_msgSend_commSafetyTransferGUID(v12, v34, v35);
            objc_msgSend_setCommSafetySensitiveForTransfer_value_(v19, v36, v22, safety);
          }
        }
      }

      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v66, v75, 16);
    }

    while (v56);
  }

  v38 = itemCopy;
  if (itemCopy)
  {
    objc_msgSend_setNeedsReloadForTransferStatusChangeWithType_(itemCopy, v37, 1);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v38 = itemCopy;
    if (isKindOfClass)
    {
      v42 = objc_msgSend_text(itemCopy, v40, v41);
      v45 = objc_msgSend_length(v42, v43, v44);
      v46 = *MEMORY[0x1E69A5F68];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = sub_1A8340E18;
      v61[3] = &unk_1E7812C60;
      v61[4] = safety;
      objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v42, v47, v46, 0, v45, 0, v61);

      v38 = itemCopy;
    }
  }

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_1A8340EBC;
  v57[3] = &unk_1E7810D08;
  v58 = obj;
  v59 = selfCopy;
  v60 = v38;
  v48 = v38;
  v49 = obj;
  objc_msgSend__updateChatItemsWithReason_block_(selfCopy, v50, @"(IMChat) Update communication safety flag", v57);

  v51 = *MEMORY[0x1E69E9840];
}

- (id)_renderingDataDictionary
{
  v4 = objc_msgSend_chatScrutinyController(self, a2, v2);
  v7 = objc_msgSend_chatIdentifier(self, v5, v6);
  v9 = objc_msgSend_transcriptRenderingMetadataForChatIdentifier_(v4, v8, v7);
  Mutable = objc_msgSend_mutableCopy(v9, v10, v11);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return Mutable;
}

- (void)_setRenderingDataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11 = objc_msgSend_chatScrutinyController(self, v5, v6);
  v9 = objc_msgSend_chatIdentifier(self, v7, v8);
  objc_msgSend_setTranscriptRenderingMetadata_forChatIdentifier_(v11, v10, dictionaryCopy, v9);
}

- (void)stickerRepositionedForAssociatedChatItem:(id)item
{
  itemCopy = item;
  objc_msgSend_setNeedsReloadForTransferStatusChangeWithType_(itemCopy, v5, 2);
  v8 = objc_msgSend__item(itemCopy, v6, v7);
  v11 = objc_msgSend__item(itemCopy, v9, v10);

  v14 = objc_msgSend_flags(v11, v12, v13);
  v20 = objc_msgSend__copyWithFlags_(v8, v15, v14);

  v16 = [IMChatItem alloc];
  v18 = objc_msgSend__initWithItem_(v16, v17, v20);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setNeedsReloadForTransferStatusChangeWithType_(v18, v19, 0);
  }

  objc_msgSend__handleItem_(self, v19, v20);
}

- (id)chatItemsForItems:(id)items
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = itemsCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        _IMAppendChatItemsForItem(v5, self->_chatItemRules, *(*(&v18 + 1) + 8 * i));
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, &v18, v22, 16);
    }

    while (v9);
  }

  v15 = objc_msgSend_copy(v5, v13, v14, v18);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)allMessagesToReportAsSpam
{
  v4 = objc_msgSend_chatItems(self, a2, v2);
  v6 = objc_msgSend_messagesToReportAsSpamFromChatItems_(self, v5, v4);

  return v6;
}

- (id)messagesToReportAsSpamFromChatItems:(id)items
{
  v30 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = objc_msgSend___imItems(itemsCopy, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_msgSend_fileTransferGUIDs(v13, v14, v15);
          v19 = objc_msgSend_count(v16, v17, v18);

          if (!v19)
          {
            objc_msgSend_addObject_(v4, v14, v13);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v25, v29, 16);
    }

    while (v10);
  }

  v22 = objc_msgSend_copy(v4, v20, v21);
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)_configureLocationShareItem:(id)item
{
  itemCopy = item;
  v24 = objc_msgSend_account(self, v5, v6);
  v9 = objc_msgSend_sender(itemCopy, v7, v8);
  v11 = objc_msgSend_imHandleWithID_alreadyCanonical_(v24, v10, v9, 1);

  v14 = objc_msgSend_sharedInstance(IMFMFSession, v12, v13);
  IsSharingLocationWithMe = objc_msgSend_handleIsSharingLocationWithMe_(v14, v15, v11);

  v19 = objc_msgSend_sharedInstance(IMFMFSession, v17, v18);
  IsFollowingMyLocation = objc_msgSend_handleIsFollowingMyLocation_(v19, v20, v11);

  objc_msgSend_setExpired_(itemCopy, v22, IsSharingLocationWithMe ^ 1u);
  objc_msgSend_setActionable_(itemCopy, v23, IsFollowingMyLocation ^ 1u);
}

- (void)_updateLocationShareItemsForSender:(id)sender
{
  v66 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  v7 = objc_msgSend__items(self, v5, v6);
  v55 = objc_msgSend_account(self, v8, v9);
  v53 = senderCopy;
  v11 = objc_msgSend_imHandleWithID_alreadyCanonical_(v55, v10, senderCopy, 1);
  v14 = objc_msgSend_sharedInstance(IMFMFSession, v12, v13);
  IsSharingLocationWithMe = objc_msgSend_handleIsSharingLocationWithMe_(v14, v15, v11);

  v17 = objc_alloc(MEMORY[0x1E695DF70]);
  v20 = objc_msgSend_count(v7, v18, v19);
  v54 = objc_msgSend_initWithCapacity_(v17, v21, v20);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v22 = v7;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v60, v65, 16);
  if (v24)
  {
    v27 = v24;
    v28 = *v61;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v61 != v28)
        {
          objc_enumerationMutation(v22);
        }

        v30 = *(*(&v60 + 1) + 8 * i);
        if (objc_msgSend_type(v30, v25, v26) == 4)
        {
          v31 = v30;
          v34 = objc_msgSend_sender(v31, v32, v33);
          v36 = objc_msgSend_imHandleWithID_alreadyCanonical_(v55, v35, v34, 1);

          if (objc_msgSend_isEqual_(v11, v37, v36) && IsSharingLocationWithMe == objc_msgSend_expired(v31, v38, v39))
          {
            objc_msgSend_addObject_(v54, v40, v31);
          }
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v60, v65, 16);
    }

    while (v27);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v41 = v54;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v56, v64, 16);
  if (v43)
  {
    v46 = v43;
    v47 = *v57;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v57 != v47)
        {
          objc_enumerationMutation(v41);
        }

        v49 = objc_msgSend_copy(*(*(&v56 + 1) + 8 * j), v44, v45);
        objc_msgSend_setExpired_(v49, v50, IsSharingLocationWithMe ^ 1u);
        objc_msgSend__handleItem_(self, v51, v49);
      }

      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v44, &v56, v64, 16);
    }

    while (v46);
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (NSSet)fmfHandles
{
  v4 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  v6 = objc_msgSend_findMyHandlesForChat_(v4, v5, self);
  v9 = objc_msgSend___im_fmfHandles(v6, v7, v8);

  return v9;
}

- (NSSet)findMyHandles
{
  v4 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  v6 = objc_msgSend_findMyHandlesForChat_(v4, v5, self);

  return v6;
}

- (void)markAllLocationShareItemsAsUnactionable
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A8341AA4;
  v2[3] = &unk_1E780FCB0;
  v2[4] = self;
  objc_msgSend__updateChatItemsWithReason_block_(self, a2, @"(IMChat) Mark as unactionable", v2);
}

- (NSSet)allSiblingFMFHandles
{
  v4 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  v6 = objc_msgSend_allSiblingFindMyHandlesForChat_(v4, v5, self);
  v9 = objc_msgSend___im_fmfHandles(v6, v7, v8);

  return v9;
}

- (NSSet)allSiblingFindMyHandles
{
  v4 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  v6 = objc_msgSend_allSiblingFindMyHandlesForChat_(v4, v5, self);

  return v6;
}

- (BOOL)hasRecipientsFollowingLocation
{
  v4 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  LOBYTE(self) = objc_msgSend_chatHasParticipantsFollowingMyLocation_(v4, v5, self);

  return self;
}

- (BOOL)allRecipientsFollowingLocation
{
  v4 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  LOBYTE(self) = objc_msgSend_allChatParticipantsFollowingMyLocation_(v4, v5, self);

  return self;
}

- (BOOL)hasRecipientsSharingLocation
{
  v4 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  LOBYTE(self) = objc_msgSend_chatHasParticipantsSharingLocationWithMe_(v4, v5, self);

  return self;
}

- (BOOL)hasSiblingRecipientsSharingLocation
{
  v4 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  LOBYTE(self) = objc_msgSend_chatHasSiblingParticipantsSharingLocationWithMe_(v4, v5, self);

  return self;
}

- (BOOL)allRecipientsSharingLocation
{
  v4 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  LOBYTE(self) = objc_msgSend_allChatParticipantsSharingLocationWithMe_(v4, v5, self);

  return self;
}

- (void)shareLocationWithDuration:(int64_t)duration
{
  v6 = objc_msgSend_sharedInstance(IMFMFSession, a2, duration);
  objc_msgSend_startSharingWithChat_withDuration_(v6, v5, self, duration);
}

- (void)stopSharingLocation
{
  v5 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  objc_msgSend_stopSharingWithChat_(v5, v4, self);
}

- (void)startTrackingParticipantLocations
{
  v5 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  objc_msgSend_startTrackingLocationForChat_(v5, v4, self);
}

- (void)stopTrackingParticipantLocations
{
  v5 = objc_msgSend_sharedInstance(IMFMFSession, a2, v2);
  objc_msgSend_stopTrackingLocationForChat_(v5, v4, self);
}

- (void)_automation_markAsRead:(BOOL)read messageGUID:(id)d forChatGUID:(id)iD fromMe:(BOOL)me
{
  dCopy = d;
  iDCopy = iD;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A83421F4;
  v16[3] = &unk_1E7812C88;
  readCopy = read;
  v17 = dCopy;
  v18 = iDCopy;
  meCopy = me;
  v12 = iDCopy;
  v13 = dCopy;
  v15 = objc_msgSend__performQueryWithKey_loadImmediately_block_(self, v14, @"AutomationMarkAsRead", 1, v16);
}

- (BOOL)repliedToChat
{
  v3 = objc_msgSend_lastSentMessage(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)receivedResponseForChat
{
  v3 = objc_msgSend_lastIncomingFinishedMessage(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

+ (id)stateCaptureRecents
{
  if (qword_1ED7676A8 != -1)
  {
    sub_1A84E19F8();
  }

  v3 = qword_1ED7676B0;

  return v3;
}

- (id)stateDictionaryForDiagnosticsRequest
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DFA8]);
  v6 = objc_msgSend__items(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);
  v11 = objc_msgSend_initWithCapacity_(v3, v10, v9);

  v12 = objc_alloc(MEMORY[0x1E695DF70]);
  v15 = objc_msgSend__items(self, v13, v14);
  if (objc_msgSend_count(v15, v16, v17) >= 0x64)
  {
    v25 = objc_msgSend_initWithCapacity_(v12, v18, 100);
  }

  else
  {
    v20 = objc_msgSend__items(self, v18, v19);
    v23 = objc_msgSend_count(v20, v21, v22);
    v25 = objc_msgSend_initWithCapacity_(v12, v24, v23);
  }

  v80 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = objc_msgSend_chatItems(self, v27, v28);
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = sub_1A83427A0;
  v85[3] = &unk_1E7812CB0;
  v30 = v11;
  v86 = v30;
  v79 = v26;
  v87 = v79;
  v77 = v25;
  v88 = v77;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v29, v31, 2, v85);

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  selfCopy = self;
  v34 = objc_msgSend__items(self, v32, v33);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v81, v91, 16);
  if (v36)
  {
    v39 = v36;
    v40 = *v82;
    v41 = 0x1E69A8000;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v82 != v40)
        {
          objc_enumerationMutation(v34);
        }

        v43 = *(*(&v81 + 1) + 8 * i);
        v44 = objc_msgSend_guid(v43, v37, v38);
        if ((objc_msgSend_containsObject_(v30, v45, v44) & 1) == 0 && (objc_msgSend_isAssociatedMessageItem(v43, v46, v47) & 1) == 0)
        {
          v48 = MEMORY[0x1E696AEC0];
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          v53 = objc_msgSend_guid(v43, v51, v52);
          v55 = objc_msgSend_stringWithFormat_(v48, v54, @"%@: %@", v50, v53);
          objc_msgSend_addObject_(v80, v56, v55);

          v41 = 0x1E69A8000uLL;
        }

        v57 = *(v41 + 312);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v58 = v43;
          if (objc_msgSend_isTypingMessage(v58, v59, v60))
          {
            v61 = MEMORY[0x1E696AEC0];
            v62 = objc_opt_class();
            v63 = NSStringFromClass(v62);
            v66 = objc_msgSend_guid(v58, v64, v65);
            v68 = objc_msgSend_stringWithFormat_(v61, v67, @"i:%@: %@", v63, v66);
            objc_msgSend_addObject_(v79, v69, v68);

            v41 = 0x1E69A8000;
          }
        }
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v81, v91, 16);
    }

    while (v39);
  }

  v89[0] = @"debugDescription";
  v72 = objc_msgSend_debugDescription(selfCopy, v70, v71);
  v90[0] = v72;
  v90[1] = v77;
  v89[1] = @"bottomChatItemGUIDs";
  v89[2] = @"unrepresentedItems";
  v89[3] = @"typingIndicators";
  v90[2] = v80;
  v90[3] = v79;
  v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v73, v90, v89, 4);

  v75 = *MEMORY[0x1E69E9840];

  return v74;
}

- (void)invalidateSpamIndicatorCachedValues
{
  objc_msgSend_setCachedShouldShowReportSpam_(self, a2, 0);

  objc_msgSend_setCachedShouldShowSpam_(self, v3, 0);
}

- (id)contacts
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, v2);
  v7 = objc_msgSend_account(self, v5, v6);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = objc_msgSend_participants(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v31, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v28;
    v17 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v19 = objc_msgSend_ID(*(*(&v27 + 1) + 8 * i), v13, v14);
        v21 = objc_msgSend_imHandleWithID_(v7, v20, v19);

        v24 = objc_msgSend_cnContactWithKeys_(v21, v22, v17);
        if (v24)
        {
          objc_msgSend_addObject_(v4, v23, v24);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v27, v31, 16);
    }

    while (v15);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSDictionary)internalLastAddressedHandleAndSimIDForDebugMenu
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8342B7C;
  v7[3] = &unk_1E7812CD8;
  v4 = v3;
  v8 = v4;
  objc_msgSend__enumerateUnderlyingChatInfo_(self, v5, v7);

  return v4;
}

- (NSString)downgradeStateForDebugMenu
{
  v3 = objc_msgSend_downgradeState(self, a2, v2);

  return sub_1A8267378(v3);
}

- (void)queryTrustKitDecisioningIfNeededWithItems:(id)items reply:(id)reply
{
  itemsCopy = items;
  replyCopy = reply;
  if (objc_msgSend_numberOfTimesRespondedToThread(self, v8, v9) > 2)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24[0] = 0;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "TrustKit query skipped because chat has 3+ replies", v24, 2u);
      }
    }

    isFiltered = objc_msgSend_isFiltered(self, v20, v21);
    replyCopy[2](replyCopy, isFiltered);
  }

  else
  {
    v12 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
    v15 = objc_msgSend_remoteDaemon(v12, v13, v14);
    v18 = objc_msgSend_guid(self, v16, v17);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A8342E08;
    v25[3] = &unk_1E7812D28;
    v25[4] = self;
    v26 = replyCopy;
    objc_msgSend_queryTrustKitDecisioningIfNeededForChatGUID_items_reply_(v15, v19, v18, itemsCopy, v25);
  }
}

- (BOOL)allowedToShowConversation
{
  if (!objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, a2, v2))
  {
    return 1;
  }

  v6 = objc_msgSend_sharedInstance(IMDowntimeController, v4, v5);
  v8 = objc_msgSend_allowedToShowConversationForChat_sync_(v6, v7, self, 0);

  return v8;
}

- (BOOL)allowedToShowConversationSync
{
  if (!objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, a2, v2))
  {
    return 1;
  }

  v6 = objc_msgSend_sharedInstance(IMDowntimeController, v4, v5);
  v8 = objc_msgSend_conversationContextForChat_(v6, v7, self);
  v11 = v8;
  if (v8)
  {
    v12 = objc_msgSend_allowedByScreenTime(v8, v9, v10);
  }

  else
  {
    v12 = objc_msgSend_allowedToShowConversationForChat_sync_(v6, v9, self, 1);
  }

  v13 = v12;

  return v13;
}

- (id)conversationContext
{
  if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, a2, v2))
  {
    v6 = objc_msgSend_sharedInstance(IMDowntimeController, v4, v5);
    v8 = objc_msgSend_conversationContextForChat_(v6, v7, self);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hashOfParticipantIDs
{
  if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, a2, v2) && (objc_msgSend_participants(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend_count(v6, v7, v8), v6, v9))
  {
    v12 = objc_msgSend_participantHandleIDs(self, v10, v11);
    v14 = IMHashOfHashesForStringArray(v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)updateReplySuggestions
{
  v4 = objc_msgSend_chatItemsUpdater(self, a2, v2);
  isHoldingUpdates = objc_msgSend_isHoldingUpdates(v4, v5, v6);

  if ((isHoldingUpdates & 1) == 0)
  {

    objc_msgSend__updateChatItemsWithReason_block_(self, v8, @"Update Smart Replies", &unk_1F1B6F480);
  }
}

- (id)recentIncomingMessagesWithTextContentForReplySuggestions
{
  v3 = MEMORY[0x1E69A81F8];
  v4 = objc_msgSend__items(self, a2, v2);
  v6 = objc_msgSend_recentIncomingMessagesWithTextContentForReplySuggestions_(v3, v5, v4);

  return v6;
}

- (id)recentOugoingMessagesWithTextContentForReplySuggestions
{
  v3 = MEMORY[0x1E69A81F8];
  v4 = objc_msgSend__items(self, a2, v2);
  v6 = objc_msgSend_recentOugoingMessagesWithTextContentForReplySuggestions_(v3, v5, v4);

  return v6;
}

- (BOOL)isRecipientAbleToDowngradeToSMS
{
  v67[1] = *MEMORY[0x1E69E9840];
  if (objc_msgSend_chatStyle(self, a2, v2) == 45)
  {
    v7 = objc_msgSend_recipient(self, v5, v6);
    v10 = objc_msgSend_ID(v7, v8, v9);
    v11 = IMChatCanonicalIDSIDsForAddress();

    v12 = objc_alloc(MEMORY[0x1E69A5428]);
    v17 = objc_msgSend_lastAddressedHandleID(self, v13, v14);
    v18 = v17;
    if (!v17)
    {
      v3 = objc_msgSend_account(self, v15, v16);
      v18 = objc_msgSend_login(v3, v19, v20);
    }

    v21 = IMChatCanonicalIDSIDsForAddress();
    v23 = objc_msgSend_initWithPrefixedURI_(v12, v22, v21);

    if (!v17)
    {
    }

    v24 = MEMORY[0x1E69A80B0];
    v67[0] = v11;
    v25 = 1;
    v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v67, 1);
    v29 = objc_msgSend__currentCachedRemoteDevicesForDestinations_service_preferredFromID_listenerID_(v24, v28, v27, @"com.apple.madrid", v23, @"IMChat+LiteService");

    if (v29)
    {
      v56 = v23;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v32 = objc_msgSend_allValues(v29, v30, v31);
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v61, v66, 16);
      if (v55)
      {
        v34 = *v62;
        v35 = *MEMORY[0x1E69A5088];
        v53 = v11;
        v54 = v7;
        v52 = *v62;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v62 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v61 + 1) + 8 * i);
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v38 = v37;
            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v57, v65, 16);
            if (v40)
            {
              v43 = v40;
              v44 = *v58;
              while (2)
              {
                for (j = 0; j != v43; ++j)
                {
                  if (*v58 != v44)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v46 = objc_msgSend_capabilities(*(*(&v57 + 1) + 8 * j), v41, v42);
                  v48 = objc_msgSend_valueForCapability_(v46, v47, v35);

                  if (v48)
                  {

                    v25 = 1;
                    v11 = v53;
                    v7 = v54;
                    goto LABEL_26;
                  }
                }

                v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v57, v65, 16);
                if (v43)
                {
                  continue;
                }

                break;
              }
            }

            v34 = v52;
          }

          v25 = 0;
          v11 = v53;
          v7 = v54;
          v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v49, &v61, v66, 16);
        }

        while (v55);
      }

      else
      {
        v25 = 0;
      }

LABEL_26:

      v23 = v56;
    }
  }

  else
  {
    v25 = 0;
  }

  v50 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)isSatelliteMessagingCompatible
{
  if (objc_msgSend_isGroupChat(self, a2, v2) & 1) != 0 || (objc_msgSend_isReadOnly(self, v4, v5) & 1) != 0 || (objc_msgSend_hasLeftGroup(self, v6, v7) & 1) != 0 || (objc_msgSend_isBusinessChat(self, v8, v9) & 1) != 0 || (objc_msgSend_isStewieChat(self, v10, v11))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_isStewieSharingChat(self, v12, v13) ^ 1;
  }
}

- (void)sendRCSEncryptionTestMessageIfNecessary
{
  selfCopy = self;
  sub_1A83F82A0();
}

- (void)sendRCSMessage:(id)message fromChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  selfCopy = self;
  sub_1A83FADA8(messageCopy, chatCopy);
}

- (BOOL)isEncryptionTestOptedIn
{
  selfCopy = self;
  v3 = sub_1A83F88C4();

  return v3 & 1;
}

- (id)rcsChat
{
  selfCopy = self;
  sub_1A83F8AD8();
  v4 = v3;

  return v4;
}

- (id)textMessageForTest
{
  v2 = sub_1A83FB1B8();

  return v2;
}

- (id)attachmentMessageForTest
{
  sub_1A83FA264();

  return v2;
}

- (id)attachmentFileNameForTest
{
  v2 = sub_1A84E570C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x1E69A7880];
  v8 = sub_1A84E5DBC();
  v10 = v9;
  sub_1A84E56FC();
  v11 = sub_1A84E56EC();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  v16[0] = v8;
  v16[1] = v10;

  MEMORY[0x1AC56A990](v11, v13);

  v14 = sub_1A84E5D8C();

  return v14;
}

- (id)randomDataWithSize:(int64_t)size
{
  v4 = sub_1A83F8FDC(0, size);
  v5 = *MEMORY[0x1E697B308];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1A83EEE14(0, *(v4 + 16), 0, v4);
  }

  SecRandomCopyBytes(v5, size, (v4 + 32));
  v6 = sub_1A83FA188(v4);
  v8 = v7;

  v9 = sub_1A84E55EC();
  sub_1A83F5994(v6, v8);

  return v9;
}

- (id)randomStringWithLength:(int64_t)length
{
  sub_1A83FAF38(length);
  v3 = sub_1A84E5D8C();

  return v3;
}

- (int64_t)randomIntWithUpTo:(int64_t)to
{
  if (to >= 1)
  {
    return sub_1A83F98D4(to) + 1;
  }

  __break(1u);
  return self;
}

- (id)tempfileURLFor:(id)for
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  sub_1A84E5DBC();
  v8 = objc_opt_self();
  selfCopy = self;
  defaultManager = [v8 defaultManager];
  v11 = sub_1A84E5D8C();
  v12 = [defaultManager im:v11 randomTemporaryFileURLWithFileName:?];

  if (v12)
  {
    sub_1A84E554C();

    v13 = sub_1A84E558C();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  }

  else
  {
    v13 = sub_1A84E558C();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1A84E558C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v7, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_1A84E551C();
    (*(v14 + 8))(v7, v13);
    v16 = v17;
  }

  return v16;
}

- (int64_t)priorityClassification
{
  selfCopy = self;
  v3 = sub_1A84431B8();

  return v3;
}

- (BOOL)wasDetectedAsSMSCategory
{
  selfCopy = self;
  v3 = IMChat.wasDetectedAsSMSCategory.getter();

  return v3 & 1;
}

- (BOOL)isKnownSenderWithUnknownFilteringEnabled:(BOOL)enabled
{
  selfCopy = self;
  v5 = IMChat.isKnownSender(withUnknownFilteringEnabled:)(enabled);

  return v5;
}

- (void)_refreshServiceForSendingWithDaemonWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1A8490148;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1A84878C0(v7, v6);
  sub_1A8245638(v7);
}

- (void)_refreshKTData
{
  selfCopy = self;
  sub_1A8488980();
}

- (BOOL)isChatBot
{
  selfCopy = self;
  v3 = sub_1A84AA32C();

  return v3 & 1;
}

- (id)brandLogoURL
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_1A84AA5A0(v6);

  v8 = sub_1A84E558C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1A84E551C();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (id)brandLogoData
{
  selfCopy = self;
  v3 = sub_1A84AA904();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1A84E55EC();
    sub_1A83F5980(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (BOOL)needPersistentMenuFromRelay
{
  selfCopy = self;
  v3 = sub_1A84AAC70();

  return v3 & 1;
}

- (BOOL)needBrandInfoFromRelay
{
  selfCopy = self;
  v3 = sub_1A84AB380();

  return v3 & 1;
}

- (BOOL)shouldShowIncomingTranslationIndicator
{
  selfCopy = self;
  incomingTranslationLanguageCode = [(IMChat *)selfCopy incomingTranslationLanguageCode];
  if (incomingTranslationLanguageCode)
  {
    v4 = incomingTranslationLanguageCode;
    v5 = sub_1A84E5DBC();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (int64_t)checkTranslationLanguageStatusForLanguageCode:(id)code
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1A84ACED4(v4, v6);

  return v8;
}

- (id)ensureUserTranslationLanguageIsResolvedForCode:(id)code
{
  if (code)
  {
    sub_1A84E5DBC();
  }

  else
  {
    selfCopy = self;
    userTranslationLanguageCode = [(IMChat *)selfCopy userTranslationLanguageCode];
    sub_1A84E5DBC();
  }

  v5 = sub_1A84E5D8C();

  return v5;
}

- (id)usersPreferredLanguageIdentifier
{
  v2 = sub_1A84E574C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E59BC();
  sub_1A84E59AC();
  sub_1A84E572C();
  (*(v3 + 8))(v6, v2);
  v7 = sub_1A84E5D8C();

  return v7;
}

- (BOOL)preferredLanguagesContainVariantForCode:(id)code
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1A84AD314(v4, v6);

  return v4 & 1;
}

- (BOOL)isLastMessageTypingIndicator
{
  selfCopy = self;
  lastMessage = [(IMChat *)selfCopy lastMessage];
  if (lastMessage)
  {
    v4 = lastMessage;
    isTypingMessage = [(IMMessage *)lastMessage isTypingMessage];
    isFromMe = [(IMMessage *)v4 isFromMe];

    return isTypingMessage & (isFromMe ^ 1);
  }

  else
  {

    return 0;
  }
}

@end
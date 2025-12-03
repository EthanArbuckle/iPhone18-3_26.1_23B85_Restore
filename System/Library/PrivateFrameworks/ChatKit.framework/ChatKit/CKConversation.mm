@interface CKConversation
+ (BOOL)_iMessage_canAcceptMediaObjectType:(int)type givenMediaObjects:(id)objects;
+ (BOOL)_iMessage_canSendComposition:(id)composition reachabilityContext:(id)context forceSMS:(BOOL)s error:(id *)error;
+ (BOOL)_iMessage_canSendMessageWithMediaObjectTypes:(int *)types errorCode:(int64_t *)code;
+ (BOOL)_sms_canAcceptMediaObjectType:(int)type givenMediaObjects:(id)objects phoneNumber:(id)number simID:(id)d;
+ (BOOL)_sms_canSendComposition:(id)composition lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d recipientsContainEmail:(BOOL)email skipMMSCheck:(BOOL)check error:(id *)error;
+ (BOOL)_sms_canSendMessageWithMediaObjectTypes:(int *)types phoneNumber:(id)number simID:(id)d errorCode:(int64_t *)code;
+ (BOOL)_sms_mediaObjectPassesDurationCheck:(id)check;
+ (BOOL)_sms_mediaObjectPassesRestriction:(id)restriction;
+ (double)_iMessage_maxTrimDurationForMediaType:(int)type;
+ (double)_sms_maxTrimDurationForMediaType:(int)type;
+ (id)_iMessage_localizedErrorForReason:(int64_t)reason;
+ (id)_sms_localizedErrorForReason:(int64_t)reason;
+ (id)conversationForAddresses:(id)addresses allowRetargeting:(BOOL)retargeting candidateConversation:(id)conversation;
+ (id)conversationForContacts:(id)contacts candidateConversation:(id)conversation;
+ (id)newPendingConversation;
+ (unint64_t)_iMessage_maxTransferFileSizeForWiFi:(BOOL)fi;
- (BOOL)_allowedByScreenTime;
- (BOOL)_allowedToSendTypingIndicators;
- (BOOL)_chatHasValidUnreadMessageToLoad;
- (BOOL)_contactsForVisualIdentityHaveKeys:(id)keys;
- (BOOL)_handleIsForThisConversation:(id)conversation;
- (BOOL)_isOTPChatBotRelayChat;
- (BOOL)_isSendButtonDisabledForCarrierMessaging;
- (BOOL)_sharedShouldSuppressTranscriptBackground;
- (BOOL)_shouldMarkAllInputContextHistoryEntriesAsJunk;
- (BOOL)_sms_canSendToRecipients:(id)recipients alertIfUnable:(BOOL)unable;
- (BOOL)_sms_willSendMMSByDefaultForAddresses:(id)addresses;
- (BOOL)allowToSendWithCurrentServiceForSatellite;
- (BOOL)allowsMentions;
- (BOOL)allowsShowingDetailsView;
- (BOOL)canAcceptMediaObjectType:(int)type givenMediaObjects:(id)objects;
- (BOOL)canInsertMoreRecipients;
- (BOOL)canLeave;
- (BOOL)canModifyParticipants;
- (BOOL)canMuteStateBeToggled;
- (BOOL)canReplyToChatItem:(id)item;
- (BOOL)canSendComposition:(id)composition error:(id *)error;
- (BOOL)canSendComposition:(id)composition forCapabilities:(unint64_t)capabilities error:(id *)error;
- (BOOL)canSendToRecipients:(id)recipients alertIfUnable:(BOOL)unable;
- (BOOL)containsCachedFilterModeWithTargetFilterNumberModes:(id)modes;
- (BOOL)containsCachedFilterModeWithTargetfilterMode:(unint64_t)mode;
- (BOOL)containsHandleWithUID:(id)d;
- (BOOL)deletingIncomingMessages;
- (BOOL)eligibleToSendWithMadrid;
- (BOOL)forceMMS;
- (BOOL)hasCancellableScheduledMessage;
- (BOOL)hasDisplayName;
- (BOOL)hasKnownParticipants;
- (BOOL)hasLeft;
- (BOOL)hasLeftGroupChat;
- (BOOL)hasReplyEnabled;
- (BOOL)hasTranscriptBackground;
- (BOOL)hasVerifiedBusiness;
- (BOOL)inUnknownSendersFilter;
- (BOOL)isAdHocGroupConversation;
- (BOOL)isAppleConversation;
- (BOOL)isBlockedByCommunicationLimits;
- (BOOL)isBusinessChatDisabled;
- (BOOL)isBusinessConversation;
- (BOOL)isChatBot;
- (BOOL)isDowngraded;
- (BOOL)isEmergencyTranscriptSharingConversation;
- (BOOL)isGroupConversation;
- (BOOL)isHidden;
- (BOOL)isKnownChat;
- (BOOL)isKnownSender;
- (BOOL)isMakoConversation;
- (BOOL)isMapKitBusinessConversation;
- (BOOL)isMuted;
- (BOOL)isPending;
- (BOOL)isPinned;
- (BOOL)isPlaceholder;
- (BOOL)isPreviewTextForAttachment;
- (BOOL)isReadOnlyChat;
- (BOOL)isReportedAsSpam;
- (BOOL)isSatelliteEmergencyConversation;
- (BOOL)isSatelliteSendingService;
- (BOOL)isStewieConversation;
- (BOOL)isToEmailAddress;
- (BOOL)isUserDeletable;
- (BOOL)isWithMyself;
- (BOOL)localUserIsRecording;
- (BOOL)localUserIsTyping;
- (BOOL)shouldAutomaticallyTranslate;
- (BOOL)shouldDisplayGroupIdentity;
- (BOOL)shouldHaveRoundRectAvatar;
- (BOOL)shouldPresentSpamReasonPicker;
- (BOOL)shouldReloadPreviewTextForGeneratedAdaptiveImageGlyphWithFileTransferGUID:(id)d;
- (BOOL)shouldSendReadReceipts;
- (BOOL)shouldShowCharacterCount;
- (BOOL)shouldShowDownloadingPendingMessages;
- (BOOL)shouldShowSatelliteServiceUnavailableIndicator;
- (BOOL)shouldShowSatelliteSummary;
- (BOOL)shouldShowVerifiedCheckmark;
- (BOOL)shouldSuppressTranscriptBackgroundEditing;
- (BOOL)showUnreadIndicator;
- (BOOL)supportsAutomaticTranslation;
- (BOOL)supportsDeleteAndBlockGroup;
- (BOOL)supportsEncryption;
- (BOOL)supportsHandleSelection;
- (BOOL)supportsInlineAdaptiveImageGlyphs;
- (BOOL)supportsMessageEditing;
- (BOOL)supportsMutatingGroupIdentity;
- (BOOL)supportsMutatingGroupMembers;
- (BOOL)supportsPolls;
- (BOOL)supportsSendLater;
- (BOOL)supportsSurf;
- (BOOL)supportsWaldo;
- (BOOL)suppressesMutationsFromLocalDevice;
- (BOOL)wantsLabelForDSDS;
- (BOOL)wasDetectedAsSMSCategory;
- (CKComposition)unsentComposition;
- (CKConversation)init;
- (CKConversation)initWithChat:(id)chat;
- (CKEntity)recipient;
- (IMHandle)businessHandle;
- (IMService)sendingService;
- (IMServiceReachabilityContext)serviceReachabilityContext;
- (IMWatchBackground)transcriptWatchBackground;
- (NSArray)frequentReplies;
- (NSArray)handles;
- (NSArray)pendingEntities;
- (NSArray)recipientStrings;
- (NSArray)recipients;
- (NSAttributedString)attributedName;
- (NSAttributedString)pendingMessageCountText;
- (NSAttributedString)previewText;
- (NSSet)mergedPinningIdentifiers;
- (NSSet)mergedThreadFilterModes;
- (NSSet)recipientNames;
- (NSString)chatPriorityLocalizedStringKey;
- (NSString)chatbotURI;
- (NSString)conversationListCollectionViewJunkItemIdentifier;
- (NSString)conversationListCollectionViewListItemIdentifier;
- (NSString)conversationListCollectionViewPinnedItemIdentifier;
- (NSString)conversationListCollectionViewRecentlyDeletedListItemIdentifier;
- (NSString)deviceIndependentID;
- (NSString)displayName;
- (NSString)fallbackSendString;
- (NSString)groupID;
- (NSString)lastAddressedHandle;
- (NSString)lastAddressedSIMID;
- (NSString)localUserIsComposing;
- (NSString)pinningIdentifier;
- (NSString)satelliteSummaryMessage;
- (NSString)searchDisplayName;
- (NSString)senderIdentifier;
- (NSString)serviceDisplayName;
- (NSString)translationLanguageCode;
- (NSString)userTranslationLanguageCode;
- (_TtC7ChatKit22CKTranscriptBackground)transcriptBackground;
- (char)buttonColor;
- (char)outgoingBubbleColor;
- (char)sendButtonColor;
- (double)maxTrimDurationForMedia:(id)media;
- (id)_backwardCompatabilityTextForEditedMessagePartText:(id)text;
- (id)_contactsForVisualIdentityWithKeys:(id)keys numberOfContacts:(unint64_t)contacts;
- (id)_groupPhotoFileURL;
- (id)_headerTitleForPendingMediaObjects:(id)objects subject:(id)subject onService:(id)service;
- (id)_headerTitleForService:(id)service shouldListParticipants:(BOOL)participants;
- (id)_inputContextIdentifiersForMe;
- (id)_inputContextIdentifiersForRecipients:(id)recipients;
- (id)_makeTranscriptBackgroundFromIMChatProperties;
- (id)_nameForHandle:(id)handle;
- (id)_navigationBarDisplayTitle;
- (id)_participantsNameMapFromRecipients:(id)recipients mySenderIdentifiers:(id)identifiers;
- (id)acquireHandleStatusObservationAssertion;
- (id)activityForNewSceneCreatedViaDrag:(BOOL)drag;
- (id)calculateFilterModeNumbers;
- (id)carPlayMessageListItemWithTraitCollection:(id)collection dateFormatter:(id)formatter timeFormatter:(id)timeFormatter avatarImageRenderer:(id)renderer;
- (id)contactNameByHandle;
- (id)conversationVisualIdentityWithKeys:(id)keys requestedNumberOfContactsToFetch:(unint64_t)fetch;
- (id)copyForPendingConversation;
- (id)createInputContextHistoryWithChatItems:(id)items;
- (id)date;
- (id)displayNameForDisplayContext:(int64_t)context;
- (id)displayNameForMediaObjects:(id)objects subject:(id)subject shouldListParticipants:(BOOL)participants;
- (id)ensureMessageWithGUIDIsLoaded:(id)loaded;
- (id)entityMatchingHandle:(id)handle;
- (id)fastPreviewTextIgnoringPluginContent;
- (id)groupPhotoData;
- (id)groupPhotoFileTransfer;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)messageWithComposition:(id)composition;
- (id)messagesFromComposition:(id)composition;
- (id)nameWithRawAddresses:(BOOL)addresses;
- (id)orderedContactsWithMaxCount:(unint64_t)count keysToFetch:(id)fetch;
- (id)pinnedConversationDisplayNamePreferringShortName:(BOOL)name;
- (id)recipientEmailAddresses;
- (id)recipientPhoneNumbers;
- (id)recipientsSortedByIsContact:(BOOL)contact alphabetically:(BOOL)alphabetically;
- (id)renderedAvatarImageWithSize:(CGSize)size traitCollection:(id)collection;
- (id)renderedAvatarImageWithSize:(CGSize)size traitCollection:(id)collection avatarImageRenderer:(id)renderer;
- (id)selectedSenderIdentity;
- (id)sendingServiceImpl;
- (id)shortDescription;
- (id)sortedHandles;
- (id)transcriptBackgroundGUID;
- (id)uniqueIdentifier;
- (int)wasDetectedAsSMSSpam;
- (int)wasDetectedAsiMessageSpam;
- (int64_t)compareBySequenceNumberAndDateDescending:(id)descending;
- (int64_t)maximumRecipientsForSendingService;
- (int64_t)spamCategory;
- (int64_t)spamSubCategory;
- (unint64_t)recipientCount;
- (unint64_t)targetFilterModeForOpeningConversationURL;
- (void)_chatItemsDidChange:(id)change;
- (void)_chatPropertiesChanged:(id)changed;
- (void)_clearTypingIndicatorsIfNecessary;
- (void)_createConversationVisualIdentityWithKeys:(id)keys numberOfContacts:(unint64_t)contacts;
- (void)_deleteAllMessagesAndRemoveGroup:(BOOL)group;
- (void)_handleChatJoinStateDidChange:(id)change;
- (void)_handleChatParticipantsDidChange:(id)change;
- (void)_handleEngroupFinishedUpdating:(id)updating;
- (void)_handleLazuliCapabilitiesUpdatedNotification:(id)notification;
- (void)_handlePreferredServiceChangedNotification:(id)notification;
- (void)_handleTranscriptBackgroundChangeNotification:(id)notification;
- (void)_invalidateApplicationSnapshotIfNeeded;
- (void)_setProofReadingInfoForChat:(id)chat withMessage:(id)message;
- (void)_updateContactsForVisualIdentityWithKeys:(id)keys numberOfContacts:(unint64_t)contacts;
- (void)_updateGroupNameForVisualIdentity;
- (void)_updateGroupPhotoForVisualIdentity;
- (void)acceptTransfer:(id)transfer;
- (void)acceptTransferAndUpdateReasonForTapped:(id)tapped;
- (void)addRecipientHandles:(id)handles;
- (void)appendTranslation:(id)translation toMessageItem:(id)item forPartIndex:(int64_t)index;
- (void)canShareFocusStatusWithCompletion:(id)completion;
- (void)dealloc;
- (void)deleteBrandLogos;
- (void)didBecomeActive;
- (void)editMessageItem:(id)item partIndex:(int64_t)index withNewComposition:(id)composition;
- (void)enumerateMessagesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)fetchAllMessages:(id)messages;
- (void)fetchMoreMessages:(id)messages;
- (void)fetchMoreMessagesAfterLastMessage:(id)message;
- (void)fetchMoreMessagesBeforeFirstMessage:(id)message;
- (void)fetchOldestMessageDateWithCompletion:(id)completion;
- (void)fetchSuggestedNameIfNecessary;
- (void)generateMissingWatchAssetIfNecessaryWithCompletion:(id)completion;
- (void)isInvitedToViewMyFocusStatusWithCompletion:(id)completion;
- (void)leave;
- (void)loadAllMessages;
- (void)loadAllUnreadMessagesUpToMessageGUID:(id)d;
- (void)loadFrequentReplies;
- (void)loadMoreMessages;
- (void)loadMoreMessagesAfterLastMessage;
- (void)loadMoreMessagesBeforeFirstMessage;
- (void)markAllMessagesAsRead;
- (void)markLastMessageAsUnread;
- (void)messageHistoryForDateInterval:(id)interval completion:(id)completion;
- (void)prepareForRecoverableDeletionWithDeleteDate:(id)date;
- (void)recoverableDeleteAllMessagesGivenDeleteDate:(id)date;
- (void)refreshServiceForSending;
- (void)reloadIfNeeded;
- (void)removeRecipientHandles:(id)handles;
- (void)repositionSticker:(id)sticker associatedChatItem:(id)item;
- (void)resendEditedMessageItem:(id)item forPartIndex:(int64_t)index;
- (void)resetCaches;
- (void)resetNameCaches;
- (void)resortMessagesIfNecessary;
- (void)retractMessagePart:(id)part;
- (void)retractScheduledMessageParts:(id)parts fromAggregateChatItem:(id)item;
- (void)retrieveLocalFileURLForTransferGUID:(id)d;
- (void)retryMessage:(id)message onService:(id)service;
- (void)sendAutoDonationUpdate:(BOOL)update;
- (void)sendMessage:(id)message newComposition:(BOOL)composition;
- (void)sendMessage:(id)message onService:(id)service newComposition:(BOOL)composition;
- (void)senderIdentifier;
- (void)setAutomaticallyTranslate:(BOOL)translate languageCode:(id)code userLanguageCode:(id)languageCode;
- (void)setDisplayName:(id)name;
- (void)setForceMMS:(BOOL)s;
- (void)setLoadedMessageCount:(unint64_t)count loadImmediately:(BOOL)immediately;
- (void)setLocalUserIsComposing:(id)composing;
- (void)setLocalUserIsComposing:(id)composing typingIndicatorIcon:(id)icon;
- (void)setLocalUserIsRecording:(BOOL)recording;
- (void)setLocalUserIsTyping:(BOOL)typing;
- (void)setMutedUntilDate:(id)date;
- (void)setPendingComposeRecipients:(id)recipients;
- (void)setPendingHandles:(id)handles;
- (void)setPendingRecipients:(id)recipients;
- (void)setPendingTranscriptBackground:(id)background transferID:(id)d;
- (void)setSendReadReceipts:(BOOL)receipts;
- (void)setUnsentComposition:(id)composition;
- (void)switchToSenderIdentity:(id)identity;
- (void)unmute;
- (void)updateCalculatedFilterModesCache;
- (void)updateConversationVisualIdentityDisplayNameWithSender:(id)sender;
- (void)updateConversationVisualIdentityGroupPhotoWithSender:(id)sender;
- (void)updateDeletingIncomingMessages:(BOOL)messages;
- (void)updateDisplayNameIfSMSSpam;
- (void)updateKeyTransparencyStatusForChatParticipantsDidChange:(id)change;
- (void)updateLastViewedDate;
- (void)updateUnsentCompositionByAppendingComposition:(id)composition;
- (void)updateUserActivity;
- (void)updateWasKnownSender;
- (void)willBecomeInactive;
@end

@implementation CKConversation

- (CKConversation)init
{
  v7.receiver = self;
  v7.super_class = CKConversation;
  v2 = [(CKConversation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_limitToLoad = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleLazuliCapabilitiesUpdatedNotification_ name:*MEMORY[0x1E69A5720] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__handleTranscriptBackgroundChangeNotification_ name:*MEMORY[0x1E69A5918] object:0];
  }

  return v3;
}

- (id)date
{
  chat = [(CKConversation *)self chat];
  __ck_watermarkDate = [chat __ck_watermarkDate];
  lastTUConversationCreatedDate = [chat lastTUConversationCreatedDate];
  lastScheduledMessageCreatedDate = [chat lastScheduledMessageCreatedDate];
  lastFinishedMessageDate = [chat lastFinishedMessageDate];
  if (__ck_watermarkDate)
  {
    v7 = [__ck_watermarkDate laterDate:lastFinishedMessageDate];

    lastFinishedMessageDate = v7;
  }

  if (lastTUConversationCreatedDate)
  {
    v8 = [lastFinishedMessageDate laterDate:lastTUConversationCreatedDate];

    lastFinishedMessageDate = v8;
  }

  if (lastScheduledMessageCreatedDate)
  {
    v9 = [lastFinishedMessageDate laterDate:lastScheduledMessageCreatedDate];

    lastFinishedMessageDate = v9;
  }

  return lastFinishedMessageDate;
}

- (void)updateCalculatedFilterModesCache
{
  calculateFilterModeNumbers = [(CKConversation *)self calculateFilterModeNumbers];
  [(CKConversation *)self setCachedCalculatedFilterModes:calculateFilterModeNumbers];
}

- (id)calculateFilterModeNumbers
{
  selfCopy = self;
  CKConversation.calculateFilterModes()();
  sub_190D57440();

  sub_19021DC70();
  sub_190218944();
  v3 = sub_190D57400();

  return v3;
}

- (BOOL)isPinned
{
  chat = [(CKConversation *)self chat];
  isPinned = [chat isPinned];

  return isPinned;
}

- (BOOL)isPlaceholder
{
  selfCopy = self;
  v3 = CKConversation.isPlaceholder.getter();

  return v3 & 1;
}

- (NSString)conversationListCollectionViewListItemIdentifier
{
  conversationListCollectionViewListItemIdentifier = self->_conversationListCollectionViewListItemIdentifier;
  if (!conversationListCollectionViewListItemIdentifier)
  {
    chat = [(CKConversation *)self chat];
    guid = [chat guid];
    v6 = guid;
    v7 = &stru_1F04268F8;
    if (guid)
    {
      v7 = guid;
    }

    v8 = v7;

    v9 = [@"list-" stringByAppendingString:v8];

    v10 = self->_conversationListCollectionViewListItemIdentifier;
    self->_conversationListCollectionViewListItemIdentifier = v9;

    conversationListCollectionViewListItemIdentifier = self->_conversationListCollectionViewListItemIdentifier;
  }

  return conversationListCollectionViewListItemIdentifier;
}

- (BOOL)isMuted
{
  chat = [(CKConversation *)self chat];
  isMuted = [chat isMuted];

  return isMuted;
}

- (BOOL)isGroupConversation
{
  chat = [(CKConversation *)self chat];
  isGroupChat = [chat isGroupChat];

  return isGroupChat;
}

- (BOOL)hasDisplayName
{
  displayName = [(CKConversation *)self displayName];
  if (displayName)
  {
    displayName2 = [(CKConversation *)self displayName];
    v5 = [displayName2 isEqualToString:&stru_1F04268F8] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSString)displayName
{
  shouldDisplayGroupIdentity = [(CKConversation *)self shouldDisplayGroupIdentity];
  chat = CKConversationGroupPhoto();
  v5 = os_log_type_enabled(chat, OS_LOG_TYPE_DEFAULT);
  if (shouldDisplayGroupIdentity)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, chat, OS_LOG_TYPE_DEFAULT, "Using chat display name.", buf, 2u);
    }

    chat = [(CKConversation *)self chat];
    displayName = [chat displayName];
  }

  else
  {
    if (v5)
    {
      *v20 = 0;
      _os_log_impl(&dword_19020E000, chat, OS_LOG_TYPE_DEFAULT, "Withholding chat display name because shouldDisplayGroupIdentity == false.", v20, 2u);
    }

    displayName = 0;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    chat2 = [(CKConversation *)self chat];
    isStewieSharingChat = [chat2 isStewieSharingChat];

    if (isStewieSharingChat)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = CKFrameworkBundle();
      v13 = [v12 localizedStringForKey:@"TS_CONVERSATION_NAME" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
      chat3 = [(CKConversation *)self chat];
      emergencyUserHandle = [chat3 emergencyUserHandle];
      chat4 = [(CKConversation *)self chat];
      v17 = [emergencyUserHandle displayNameForChat:chat4];
      v18 = [v11 localizedStringWithFormat:v13, v17];

      displayName = v18;
    }
  }

  return displayName;
}

- (id)fastPreviewTextIgnoringPluginContent
{
  p_previewText = &self->_previewText;
  previewText = self->_previewText;
  if (previewText)
  {
    v4 = previewText;
  }

  else
  {
    chat = [(CKConversation *)self chat];
    lastFinishedMessage = [chat lastFinishedMessage];
    v4 = [lastFinishedMessage __ck_previewTextWithChat:chat ignorePluginContent:1];
    balloonBundleID = [lastFinishedMessage balloonBundleID];

    if (!balloonBundleID)
    {
      objc_storeStrong(p_previewText, v4);
    }
  }

  return v4;
}

- (BOOL)wantsLabelForDSDS
{
  if (+[CKApplicationState isResizing]&& [(CKConversation *)self hasCachedWantsLabelForDSDS])
  {

    return [(CKConversation *)self wantsLabelForDSDSCached];
  }

  else if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
  {
    sendingService = [(CKConversation *)self sendingService];
    __ck_isCarrierBased = [sendingService __ck_isCarrierBased];

    [(CKConversation *)self setWantsLabelForDSDSCached:1];
    [(CKConversation *)self setHasCachedWantsLabelForDSDS:1];
    return __ck_isCarrierBased;
  }

  else
  {
    [(CKConversation *)self setWantsLabelForDSDSCached:0];
    [(CKConversation *)self setHasCachedWantsLabelForDSDS:1];
    return 0;
  }
}

- (BOOL)shouldShowVerifiedCheckmark
{
  hasVerifiedBusiness = [(CKConversation *)self hasVerifiedBusiness];
  if (hasVerifiedBusiness)
  {
    chat = [(CKConversation *)self chat];
    chatIdentifier = [chat chatIdentifier];
    v6 = MEMORY[0x193AF5D00]();

    LOBYTE(hasVerifiedBusiness) = v6;
  }

  return hasVerifiedBusiness;
}

- (BOOL)hasVerifiedBusiness
{
  isBusinessConversation = [(CKConversation *)self isBusinessConversation];
  if (isBusinessConversation)
  {
    businessHandle = [(CKConversation *)self businessHandle];
    brand = [businessHandle brand];
    isVerified = [brand isVerified];

    LOBYTE(isBusinessConversation) = isVerified;
  }

  return isBusinessConversation;
}

- (BOOL)isBusinessConversation
{
  v21 = *MEMORY[0x1E69E9840];
  businessConversation = self->_businessConversation;
  if (!businessConversation)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    handles = [(CKConversation *)self handles];
    v5 = [handles countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(handles);
          }

          if ([*(*(&v16 + 1) + 8 * i) isBusiness])
          {
            v9 = 1;
            goto LABEL_12;
          }
        }

        v6 = [handles countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:

    chat = [(CKConversation *)self chat];
    isBusinessChat = [chat isBusinessChat];

    _isOTPChatBotRelayChat = [(CKConversation *)self _isOTPChatBotRelayChat];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:(_isOTPChatBotRelayChat | (v9 | isBusinessChat)) & 1];
    v14 = self->_businessConversation;
    self->_businessConversation = v13;

    businessConversation = self->_businessConversation;
  }

  return [(NSNumber *)businessConversation BOOLValue];
}

- (NSArray)handles
{
  if ([(CKConversation *)self isPending])
  {
    pendingHandles = [(CKConversation *)self pendingHandles];
    chat = pendingHandles;
    v5 = MEMORY[0x1E695E0F0];
    if (pendingHandles)
    {
      v5 = pendingHandles;
    }

    participants = v5;
  }

  else
  {
    chat = [(CKConversation *)self chat];
    participants = [chat participants];
  }

  v7 = participants;

  return v7;
}

- (BOOL)isPending
{
  if (!CKIsRunningInMessages() && !IMIsRunningInMessagesComposeViewService())
  {
    return self->_chat == 0;
  }

  v3 = +[CKConversationList sharedConversationList];
  pendingConversation = [v3 pendingConversation];
  v5 = pendingConversation == self;

  return v5;
}

- (BOOL)_isOTPChatBotRelayChat
{
  chat = [(CKConversation *)self chat];

  if (!chat)
  {
    return 0;
  }

  chat2 = [(CKConversation *)self chat];
  chatStyle = [chat2 chatStyle];

  if (chatStyle != 45)
  {
    return 0;
  }

  if (![(CKConversation *)self isReadOnlyChat])
  {
    chat3 = [(CKConversation *)self chat];
    brandInfo = [chat3 brandInfo];

    if (!brandInfo)
    {
      return 0;
    }
  }

  if (![(CKConversation *)self hasDisplayName])
  {
    return 0;
  }

  chat4 = [(CKConversation *)self chat];
  isRCS = [chat4 isRCS];

  return isRCS;
}

- (BOOL)shouldShowDownloadingPendingMessages
{
  selfCopy = self;
  chat = [(CKConversation *)selfCopy chat];
  if (chat)
  {
    v4 = chat;
    isDownloadingPendingSatelliteMessages = [(IMChat *)chat isDownloadingPendingSatelliteMessages];
  }

  else
  {
    isDownloadingPendingSatelliteMessages = 0;
  }

  sharedInstance = [objc_opt_self() sharedInstance];
  isMessagingActiveOverSatellite = [sharedInstance isMessagingActiveOverSatellite];

  return isMessagingActiveOverSatellite & isDownloadingPendingSatelliteMessages;
}

- (NSArray)recipients
{
  v27 = *MEMORY[0x1E69E9840];
  recipients = self->_recipients;
  if (!recipients)
  {
    chat = [(CKConversation *)self chat];

    if (chat)
    {
      chat2 = [(CKConversation *)self chat];
      participants = [chat2 participants];
      v7 = [participants copy];
    }

    else
    {
      chat2 = [(CKConversation *)self pendingHandles];
      v7 = [chat2 copy];
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [CKEntity alloc];
          chat3 = [(CKConversation *)self chat];
          v17 = [(CKEntity *)v15 initWithChat:chat3 imHandle:v14];

          [(NSArray *)v8 addObject:v17];
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v18 = self->_recipients;
    self->_recipients = v8;
    v19 = v8;

    businessConversation = self->_businessConversation;
    self->_businessConversation = 0;

    recipients = self->_recipients;
  }

  return recipients;
}

- (id)groupPhotoData
{
  v21 = *MEMORY[0x1E69E9840];
  if (![(CKConversation *)self isGroupConversation])
  {
    v7 = 0;
    goto LABEL_38;
  }

  if ([(CKConversation *)self shouldDisplayGroupIdentity])
  {
    _groupPhotoFileURL = [(CKConversation *)self _groupPhotoFileURL];
    v4 = _groupPhotoFileURL;
    if (_groupPhotoFileURL)
    {
      path = [_groupPhotoFileURL path];
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = path;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "groupPhotoFilePath is: %@", buf, 0xCu);
        }
      }

      if (![path length])
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v18 = path;
            _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "groupPhotoFilePath is nil: %@", buf, 0xCu);
          }
        }

        v7 = 0;
        goto LABEL_36;
      }

      v16 = 0;
      v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:path options:8 error:&v16];
      v8 = v16;
      v9 = IMOSLoggingEnabled();
      if (v8)
      {
        if (v9)
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v18 = path;
            v19 = 2112;
            v20 = v8;
            _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Error loading group photo at path %@ error: %@", buf, 0x16u);
          }
        }

        if (!IMOSLoggingEnabled())
        {
          goto LABEL_35;
        }

        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = path;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Error loading group photo: %@", buf, 0xCu);
        }
      }

      else
      {
        if (!v9)
        {
LABEL_35:

LABEL_36:
          goto LABEL_37;
        }

        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = path;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "no error in loading group photo data at path: %@", buf, 0xCu);
        }
      }

      goto LABEL_35;
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "groupPhotoFileURL is nil: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = CKConversationGroupPhoto();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      chatIdentifier = [(IMChat *)self->_chat chatIdentifier];
      *buf = 138412290;
      v18 = chatIdentifier;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEFAULT, "Not returning group photo because shouldDisplayGroupIdentity == NO, for chat with identifier: %@", buf, 0xCu);
    }
  }

  v7 = 0;
LABEL_37:

LABEL_38:

  return v7;
}

- (id)_groupPhotoFileURL
{
  v19 = *MEMORY[0x1E69E9840];
  groupPhotoFileTransfer = [(CKConversation *)self groupPhotoFileTransfer];
  v4 = groupPhotoFileTransfer;
  if (groupPhotoFileTransfer)
  {
    guid = [groupPhotoFileTransfer guid];
    if ([v4 existsAtLocalPath])
    {
      localPath = [v4 localPath];
      __ck_stringByExpandingTildeInPath = [localPath __ck_stringByExpandingTildeInPath];

      if ([__ck_stringByExpandingTildeInPath length])
      {
        v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:__ck_stringByExpandingTildeInPath isDirectory:0];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            chatIdentifier = [(IMChat *)self->_chat chatIdentifier];
            v15 = 138412546;
            v16 = guid;
            v17 = 2112;
            selfCopy = chatIdentifier;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Could not determine path for group photo file tranfer with guid %@ for chat with identifier %@", &v15, 0x16u);
          }
        }

        v8 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          chatIdentifier2 = [(IMChat *)self->_chat chatIdentifier];
          v15 = 138412546;
          v16 = guid;
          v17 = 2112;
          selfCopy = chatIdentifier2;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Group photo with guid %@ does not exist at local path for chat with identifier %@", &v15, 0x16u);
        }
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "retrieved group photo URL %@ for conversation %@", &v15, 0x16u);
    }
  }

  return v8;
}

- (id)groupPhotoFileTransfer
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(CKConversation *)self shouldDisplayGroupIdentity])
  {
    v7 = 0;
    goto LABEL_19;
  }

  allChatProperties = [(IMChat *)self->_chat allChatProperties];
  v4 = [allChatProperties objectForKey:*MEMORY[0x1E69A6B80]];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "retrieving group photo URL for conversation %@ using groupPhotoGuid %@", &v13, 0x16u);
    }
  }

  if ([(CKConversation *)v4 length])
  {
    mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
    v7 = [mEMORY[0x1E69A5B80] transferForGUID:v4];

    v8 = IMOSLoggingEnabled();
    if (v7)
    {
      if (v8)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          selfCopy = v7;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "found transfer %@", &v13, 0xCu);
        }
      }

      goto LABEL_18;
    }

    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        chatIdentifier = [(IMChat *)self->_chat chatIdentifier];
        v13 = 138412546;
        selfCopy = v4;
        v15 = 2112;
        v16 = chatIdentifier;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Could not find file transfer matching groupPhotoGuid %@ for chat with identifier %@", &v13, 0x16u);
      }
    }
  }

  v7 = 0;
LABEL_18:

LABEL_19:

  return v7;
}

- (unint64_t)recipientCount
{
  recipients = [(CKConversation *)self recipients];
  v3 = [recipients count];

  return v3;
}

- (BOOL)shouldHaveRoundRectAvatar
{
  if ([(CKConversation *)self isChatBot])
  {
    return 1;
  }

  return [(CKConversation *)self isBusinessConversation];
}

- (BOOL)isChatBot
{
  chatBot = self->_chatBot;
  if (!chatBot)
  {
    chat = [(CKConversation *)self chat];
    if (chat)
    {
      v5 = chat;
      chat2 = [(CKConversation *)self chat];
      chatStyle = [chat2 chatStyle];

      if (chatStyle != 45)
      {
        return 0;
      }
    }

    handles = [(CKConversation *)self handles];
    firstObject = [handles firstObject];
    if ([firstObject isChatBot])
    {
    }

    else
    {
      _isOTPChatBotRelayChat = [(CKConversation *)self _isOTPChatBotRelayChat];

      if (!_isOTPChatBotRelayChat)
      {
        v11 = 0;
        goto LABEL_10;
      }
    }

    v11 = 1;
LABEL_10:
    chat3 = [(CKConversation *)self chat];
    isChatBot = [chat3 isChatBot];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:v11 | isChatBot];
    v16 = self->_chatBot;
    self->_chatBot = v15;

    chatBot = self->_chatBot;
  }

  return [(NSNumber *)chatBot BOOLValue];
}

- (BOOL)hasCancellableScheduledMessage
{
  chat = [(CKConversation *)self chat];
  hasCancellableScheduledMessage = [chat hasCancellableScheduledMessage];

  return hasCancellableScheduledMessage;
}

- (void)fetchSuggestedNameIfNecessary
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(CKConversation *)self isBusinessConversation])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    recipients = [(CKConversation *)self recipients];
    v4 = [recipients countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(recipients);
          }

          defaultIMHandle = [*(*(&v9 + 1) + 8 * v7) defaultIMHandle];
          [defaultIMHandle scheduleSuggestedNameFetchIfNecessary];

          ++v7;
        }

        while (v5 != v7);
        v5 = [recipients countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)isReadOnlyChat
{
  chat = [(CKConversation *)self chat];
  isReadOnly = [chat isReadOnly];

  return isReadOnly;
}

- (NSAttributedString)previewText
{
  previewText = self->_previewText;
  if (!previewText)
  {
    chat = [(CKConversation *)self chat];
    lastFinishedMessageItem = [chat lastFinishedMessageItem];
    if ([lastFinishedMessageItem isCorrupt])
    {
      v6 = objc_alloc(MEMORY[0x1E696AAB0]);
      lastFinishedMessage = CKFrameworkBundle();
      v8 = [lastFinishedMessage localizedStringForKey:@"CORRUPT_MESSAGE_FALLBACK_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
      v9 = [v6 initWithString:v8];
      v10 = self->_previewText;
      self->_previewText = v9;
    }

    else
    {
      lastFinishedMessage = [chat lastFinishedMessage];
      v11 = [lastFinishedMessage __ck_previewTextWithChat:chat ignorePluginContent:0];
      v8 = self->_previewText;
      self->_previewText = v11;
    }

    previewText = self->_previewText;
  }

  return previewText;
}

- (int)wasDetectedAsSMSSpam
{
  chat = [(CKConversation *)self chat];
  self->_wasDetectedAsSMSSpam = [chat wasDetectedAsSMSSpam];

  return self->_wasDetectedAsSMSSpam;
}

- (int)wasDetectedAsiMessageSpam
{
  chat = [(CKConversation *)self chat];
  v4 = [chat valueForChatProperty:*MEMORY[0x1E69A5D60]];
  self->_wasDetectedAsiMessageSpam = [v4 intValue];

  return self->_wasDetectedAsiMessageSpam;
}

- (id)uniqueIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  groupID = [(CKConversation *)self groupID];
  v4 = [v2 stringWithFormat:@"%@", groupID];

  return v4;
}

- (NSString)groupID
{
  chat = [(CKConversation *)self chat];
  persistentID = [chat persistentID];

  return persistentID;
}

- (NSString)deviceIndependentID
{
  chat = [(CKConversation *)self chat];
  deviceIndependentID = [chat deviceIndependentID];

  return deviceIndependentID;
}

- (BOOL)isStewieConversation
{
  chat = [(CKConversation *)self chat];
  isStewieChat = [chat isStewieChat];

  return isStewieChat;
}

- (IMService)sendingService
{
  chat = [(CKConversation *)self chat];
  account = [chat account];
  service = [account service];

  if (!service)
  {
    if ([(CKConversation *)self isChatBot])
    {
      [MEMORY[0x1E69A5C90] rcsService];
    }

    else
    {
      [MEMORY[0x1E69A5C90] smsService];
    }
    service = ;
  }

  return service;
}

- (NSString)senderIdentifier
{
  v19 = *MEMORY[0x1E69E9840];
  chat = [(CKConversation *)self chat];
  lastAddressedHandleID = [chat lastAddressedHandleID];

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [lastAddressedHandleID stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v7 = [v6 length];

  if (v7)
  {
    strippedLogin = lastAddressedHandleID;
  }

  else
  {
    if (lastAddressedHandleID && IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        chat2 = [(CKConversation *)self chat];
        v17 = 138412290;
        v18 = chat2;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "lastAddressedHandleID is empty but not nil for chat %@", &v17, 0xCu);
      }
    }

    chat3 = [(CKConversation *)self chat];
    account = [chat3 account];

    if (!account)
    {
      mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
      sendingService = [(CKConversation *)self sendingService];
      account = [mEMORY[0x1E69A5A80] bestActiveAccountForService:sendingService];
    }

    strippedLogin = [account strippedLogin];

    if (!strippedLogin)
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CKConversation *)account senderIdentifier];
      }
    }
  }

  return strippedLogin;
}

- (NSString)lastAddressedHandle
{
  chat = [(CKConversation *)self chat];
  lastAddressedHandleID = [chat lastAddressedHandleID];
  v5 = [lastAddressedHandleID length];

  if (v5)
  {
    chat2 = [(CKConversation *)self chat];
    lastAddressedHandleID2 = [chat2 lastAddressedHandleID];
  }

  else
  {
    lastAddressedHandleID2 = [(CKConversation *)self selectedLastAddressedHandle];
  }

  return lastAddressedHandleID2;
}

- (NSString)lastAddressedSIMID
{
  chat = [(CKConversation *)self chat];
  lastAddressedSIMID = [chat lastAddressedSIMID];
  v5 = [lastAddressedSIMID length];

  if (v5)
  {
    chat2 = [(CKConversation *)self chat];
    lastAddressedSIMID2 = [chat2 lastAddressedSIMID];
  }

  else
  {
    lastAddressedSIMID2 = [(CKConversation *)self selectedLastAddressedSIMID];
  }

  return lastAddressedSIMID2;
}

- (BOOL)isBlockedByCommunicationLimits
{
  chat = [(CKConversation *)self chat];
  v3 = chat;
  if (chat)
  {
    v4 = [chat allowedToShowConversationSync] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isMapKitBusinessConversation
{
  v20 = *MEMORY[0x1E69E9840];
  mapKitBusinessConversation = self->_mapKitBusinessConversation;
  if (!mapKitBusinessConversation)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    handles = [(CKConversation *)self handles];
    v5 = [handles countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(handles);
          }

          if ([*(*(&v15 + 1) + 8 * v8) isMapKitBusiness])
          {
            v9 = 1;
            goto LABEL_12;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [handles countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:

    chat = [(CKConversation *)self chat];
    isMapKitBusinessChat = [chat isMapKitBusinessChat];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:v9 | isMapKitBusinessChat];
    v13 = self->_mapKitBusinessConversation;
    self->_mapKitBusinessConversation = v12;

    mapKitBusinessConversation = self->_mapKitBusinessConversation;
  }

  return [(NSNumber *)mapKitBusinessConversation BOOLValue];
}

- (char)sendButtonColor
{
  if ([(CKConversation *)self _isSendButtonDisabledForCarrierMessaging])
  {
    return -1;
  }

  if ([(CKConversation *)self isMapKitBusinessConversation]|| [(CKConversation *)self isStewieConversation])
  {
    sendingService = +[CKUIBehavior sharedBehaviors];
    businessConversationSendButtonColor = [sendingService businessConversationSendButtonColor];
  }

  else
  {
    sendingService = [(CKConversation *)self sendingService];
    businessConversationSendButtonColor = [sendingService __ck_displayColor];
  }

  v3 = businessConversationSendButtonColor;

  return v3;
}

- (BOOL)_isSendButtonDisabledForCarrierMessaging
{
  if ([(CKConversation *)self recipientCount])
  {
    sendingService = [(CKConversation *)self sendingService];
    if ([sendingService __ck_isSMS] && -[CKConversation isPending](self, "isPending"))
    {
      smsEnabled = [MEMORY[0x1E69A5CA0] smsEnabled];

      if (!smsEnabled)
      {
        LOBYTE(v5) = 1;
        return v5;
      }
    }

    else
    {
    }
  }

  if ([(CKConversation *)self recipientCount])
  {
    sendingService2 = [(CKConversation *)self sendingService];
    if ([sendingService2 __ck_isRCS] && -[CKConversation isPending](self, "isPending"))
    {
      mEMORY[0x1E69A8280] = [MEMORY[0x1E69A8280] sharedInstance];
      v5 = [mEMORY[0x1E69A8280] isRCSEnabled] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isEmergencyTranscriptSharingConversation
{
  chat = [(CKConversation *)self chat];
  isStewieSharingChat = [chat isStewieSharingChat];

  return isStewieSharingChat;
}

- (BOOL)isSatelliteSendingService
{
  sendingService = [(CKConversation *)self sendingService];
  iMessageLiteService = [MEMORY[0x1E69A5CA0] iMessageLiteService];
  if (sendingService == iMessageLiteService)
  {
    v7 = 1;
  }

  else
  {
    sendingService2 = [(CKConversation *)self sendingService];
    satelliteSMSService = [MEMORY[0x1E69A5CA0] satelliteSMSService];
    v7 = sendingService2 == satelliteSMSService;
  }

  return v7;
}

- (CKEntity)recipient
{
  recipients = [(CKConversation *)self recipients];
  v4 = [recipients count];

  if (v4 == 1)
  {
    recipients2 = [(CKConversation *)self recipients];
    lastObject = [recipients2 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)renderedAvatarImageWithSize:(CGSize)size traitCollection:(id)collection
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x1E695D098];
  collectionCopy = collection;
  v9 = [v7 alloc];
  defaultSettings = [MEMORY[0x1E695D0A8] defaultSettings];
  v11 = [v9 initWithSettings:defaultSettings];

  height = [(CKConversation *)self renderedAvatarImageWithSize:collectionCopy traitCollection:v11 avatarImageRenderer:width, height];

  return height;
}

- (id)renderedAvatarImageWithSize:(CGSize)size traitCollection:(id)collection avatarImageRenderer:(id)renderer
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  rendererCopy = renderer;
  maxContactAvatars = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v12 = [(CKConversation *)self conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:maxContactAvatars];
  groupPhoto = [v12 groupPhoto];

  if (groupPhoto)
  {
    v14 = MEMORY[0x1E69DCAB8];
    groupPhoto2 = [v12 groupPhoto];
    v16 = [v14 imageWithData:groupPhoto2];

    v17 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __104__CKConversation_AvatarImageRendering__renderedAvatarImageWithSize_traitCollection_avatarImageRenderer___block_invoke;
    v26[3] = &unk_1E72ECBC0;
    v28 = 0;
    v29 = 0;
    v30 = width;
    v31 = height;
    v32 = width * 0.5;
    v27 = v16;
    contacts = v16;
    v19 = [v17 imageWithActions:v26];
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v22 = v21;

    if (collectionCopy)
    {
      [collectionCopy displayScale];
      v22 = v23;
      if ([collectionCopy userInterfaceStyle] == 1)
      {
        v24 = 2;
      }

      else
      {
        v24 = 3;
      }
    }

    else
    {
      v24 = 0;
    }

    v17 = [MEMORY[0x1E695D0B0] scopeWithPointSize:0 scale:0 rightToLeft:v24 style:width backgroundStyle:{height, v22}];
    contacts = [v12 contacts];
    v19 = [rendererCopy avatarImageForContacts:contacts scope:v17];
  }

  return v19;
}

void __104__CKConversation_AvatarImageRendering__renderedAvatarImageWithSize_traitCollection_avatarImageRenderer___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*(a1 + 40) cornerRadius:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v2 addClip];
  [*(a1 + 32) drawInRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (id)pinnedConversationDisplayNamePreferringShortName:(BOOL)name
{
  nameCopy = name;
  if ([(CKConversation *)self recipientCount]== 1)
  {
    if (nameCopy)
    {
      recipients = [(CKConversation *)self recipients];
      firstObject = [recipients firstObject];

      defaultIMHandle = [firstObject defaultIMHandle];
      v8 = defaultIMHandle;
      if (defaultIMHandle)
      {
        [defaultIMHandle _displayNameWithAbbreviation];
      }

      else
      {
        [(CKConversation *)self name];
      }
      v10 = ;

      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (![(CKConversation *)self hasDisplayName])
  {
LABEL_7:
    name = [(CKConversation *)self name];
    goto LABEL_8;
  }

  name = [(CKConversation *)self displayName];
LABEL_8:
  v10 = name;
LABEL_11:

  return v10;
}

- (void)fetchOldestMessageDateWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  chat = [(CKConversation *)self chat];
  v6 = chat;
  if (chat)
  {
    guid = [chat guid];
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = guid;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Fetch oldest message date for chat: %@", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__CKConversation_MessageHistoryViewControllerDataSource__fetchOldestMessageDateWithCompletion___block_invoke;
    v10[3] = &unk_1E72F1150;
    v11 = completionCopy;
    [v6 fetchOldestMessageDateWithCompletion:v10];
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Oldest message date fetch skipped for conversation with no backing chat (e.g. new compose).", buf, 2u);
    }

    guid = [MEMORY[0x1E695DF00] date];
    (*(completionCopy + 2))(completionCopy, guid);
  }
}

void __95__CKConversation_MessageHistoryViewControllerDataSource__fetchOldestMessageDateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __95__CKConversation_MessageHistoryViewControllerDataSource__fetchOldestMessageDateWithCompletion___block_invoke_cold_1(v6, v7);
    }

    v8 = [MEMORY[0x1E695DF00] distantPast];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = IMLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Message history fetch completed with non nil result", buf, 2u);
      }

      v11 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (v10)
      {
        *v12 = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Message history fetch completed with nil result", v12, 2u);
      }

      v11 = *(*(a1 + 32) + 16);
    }

    v11();
  }
}

- (void)messageHistoryForDateInterval:(id)interval completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  chat = [(CKConversation *)self chat];
  v9 = chat;
  if (chat)
  {
    guid = [chat guid];
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = guid;
      v21 = 2112;
      v22 = intervalCopy;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Message history fetch beginning for chat: %@, dateInterval: %@", buf, 0x16u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __99__CKConversation_MessageHistoryViewControllerDataSource__messageHistoryForDateInterval_completion___block_invoke;
    v15[3] = &unk_1E72F1178;
    v16 = guid;
    v17 = intervalCopy;
    v18 = completionCopy;
    v12 = guid;
    [v9 fetchMessageHistoryForDateInterval:v17 completion:v15];
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Message history fetch skipped for conversation with no backing chat (e.g. new compose).", buf, 2u);
    }

    v14 = objc_alloc(MEMORY[0x1E69A8128]);
    v12 = [v14 initWithDateInterval:intervalCopy messages:MEMORY[0x1E695E0F0]];
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

void __99__CKConversation_MessageHistoryViewControllerDataSource__messageHistoryForDateInterval_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = IMLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 messages];
      v10 = [v9 count];
      v11 = a1[4];
      v12 = a1[5];
      v15 = 134218498;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Message history fetch completed with %ld results for chatGUID: %@, dateInterval: %@", &v15, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __95__CKConversation_MessageHistoryViewControllerDataSource__fetchOldestMessageDateWithCompletion___block_invoke_cold_1(v6, v8);
    }

    v13 = objc_alloc(MEMORY[0x1E69A8128]);
    v14 = [v13 initWithDateInterval:a1[5] messages:MEMORY[0x1E695E0F0]];
    (*(a1[6] + 16))();
  }
}

- (void)dealloc
{
  if ([(IMChat *)self->_chat contextInfo]== self)
  {
    [(IMChat *)self->_chat setContextInfo:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69A5720] object:0];
  }

  v4.receiver = self;
  v4.super_class = CKConversation;
  [(CKConversation *)&v4 dealloc];
}

- (CKConversation)initWithChat:(id)chat
{
  chatCopy = chat;
  v5 = [(CKConversation *)self init];
  v6 = v5;
  if (v5)
  {
    [(CKConversation *)v5 setChat:chatCopy];
  }

  return v6;
}

- (void)willBecomeInactive
{
  chat = [(CKConversation *)self chat];
  [chat endListeningToAttributionChanges];
}

- (void)_createConversationVisualIdentityWithKeys:(id)keys numberOfContacts:(unint64_t)contacts
{
  v17 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Create group photo for visual identity on conversation %@", &v15, 0xCu);
    }
  }

  v8 = [(CKConversation *)self _contactsForVisualIdentityWithKeys:keysCopy numberOfContacts:contacts];
  groupPhotoData = [(CKConversation *)self groupPhotoData];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (!groupPhotoData)
      {
        v11 = @"YES";
      }

      v15 = 138412290;
      selfCopy = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "groupImageData is nil: %@", &v15, 0xCu);
    }
  }

  displayName = [(CKConversation *)self displayName];
  v13 = [[CKVisualGroupIdentity alloc] initGroupWithName:displayName photo:groupPhotoData visualContacts:v8 groupParticipantCount:[(CKConversation *)self recipientCount]];
  conversationVisualIdentity = self->__conversationVisualIdentity;
  self->__conversationVisualIdentity = v13;
}

- (id)conversationVisualIdentityWithKeys:(id)keys requestedNumberOfContactsToFetch:(unint64_t)fetch
{
  v29 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if (!self->__conversationVisualIdentity)
  {
    [(CKConversation *)self _createConversationVisualIdentityWithKeys:keysCopy numberOfContacts:fetch];
    [(CKConversation *)self setNeedsUpdatedContactsForVisualIdentity:0];
    [(CKConversation *)self setNeedsUpdatedGroupPhotoForVisualIdentity:0];
    [(CKConversation *)self setNeedsUpdatedGroupNameForVisualIdentity:0];
    goto LABEL_24;
  }

  if ([(CKConversation *)self needsUpdatedContactsForVisualIdentity])
  {
    goto LABEL_3;
  }

  contacts = [(CKVisualGroupIdentity *)self->__conversationVisualIdentity contacts];
  if ([contacts count] >= fetch)
  {
  }

  else
  {
    contacts2 = [(CKVisualGroupIdentity *)self->__conversationVisualIdentity contacts];
    v18 = [contacts2 count];
    recipients = [(CKConversation *)self recipients];
    v20 = [recipients count];

    if (v18 < v20)
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_3:
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v23 = 138412290;
            selfCopy5 = self;
            _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Updating contacts for conversationVisualIdentity on conversation %@", &v23, 0xCu);
          }
        }

        contacts3 = [(CKVisualGroupIdentity *)self->__conversationVisualIdentity contacts];
        v9 = [contacts3 count];

        if (v9 <= fetch)
        {
          fetchCopy = fetch;
        }

        else
        {
          fetchCopy = v9;
        }

        [(CKConversation *)self _updateContactsForVisualIdentityWithKeys:keysCopy numberOfContacts:fetchCopy];
        [(CKConversation *)self setNeedsUpdatedContactsForVisualIdentity:0];
        goto LABEL_11;
      }

      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        contacts4 = [(CKVisualGroupIdentity *)self->__conversationVisualIdentity contacts];
        v23 = 134218498;
        selfCopy5 = [contacts4 count];
        v25 = 2048;
        fetchCopy2 = fetch;
        v27 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Additional contacts needed for conversationVisualIdentity, had %ld, fetching %ld, conversation: %@", &v23, 0x20u);
      }

LABEL_30:

      goto LABEL_3;
    }
  }

  if (![(CKConversation *)self _contactsForVisualIdentityHaveKeys:keysCopy])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_3;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      selfCopy5 = self;
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Contacts need additional keys for conversationVisualIdentity on conversation %@", &v23, 0xCu);
    }

    goto LABEL_30;
  }

LABEL_11:
  if ([(CKConversation *)self needsUpdatedGroupPhotoForVisualIdentity])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        selfCopy5 = self;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Updating group photo for conversationVisualIdentity on conversation %@", &v23, 0xCu);
      }
    }

    [(CKConversation *)self _updateGroupPhotoForVisualIdentity];
    [(CKConversation *)self setNeedsUpdatedGroupPhotoForVisualIdentity:0];
  }

  if ([(CKConversation *)self needsUpdatedGroupNameForVisualIdentity])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        selfCopy5 = self;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Updating group name for conversationVisualIdentity on conversation %@", &v23, 0xCu);
      }
    }

    [(CKConversation *)self _updateGroupNameForVisualIdentity];
    [(CKConversation *)self setNeedsUpdatedGroupNameForVisualIdentity:0];
  }

LABEL_24:
  conversationVisualIdentity = self->__conversationVisualIdentity;
  v14 = conversationVisualIdentity;

  return conversationVisualIdentity;
}

- (id)_contactsForVisualIdentityWithKeys:(id)keys numberOfContacts:(unint64_t)contacts
{
  if (contacts)
  {
    v5 = [(CKConversation *)self orderedContactsWithMaxCount:contacts keysToFetch:keys];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (BOOL)_contactsForVisualIdentityHaveKeys:(id)keys
{
  v18 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  contacts = [(CKVisualGroupIdentity *)self->__conversationVisualIdentity contacts];
  if ([keysCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = contacts;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![*(*(&v13 + 1) + 8 * i) areKeysAvailable:{keysCopy, v13}])
          {
            v11 = 0;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_12:
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)_updateContactsForVisualIdentityWithKeys:(id)keys numberOfContacts:(unint64_t)contacts
{
  v6 = MEMORY[0x1E695D0C0];
  keysCopy = keys;
  maxContactAvatars = [v6 maxContactAvatars];
  maxContactAvatars2 = [MEMORY[0x1E695D150] maxContactAvatars];
  if (maxContactAvatars <= maxContactAvatars2)
  {
    v10 = maxContactAvatars2;
  }

  else
  {
    v10 = maxContactAvatars;
  }

  if (v10 <= contacts)
  {
    contactsCopy = contacts;
  }

  else
  {
    contactsCopy = v10;
  }

  v12 = [(CKConversation *)self _contactsForVisualIdentityWithKeys:keysCopy numberOfContacts:contactsCopy];

  [(CKVisualGroupIdentity *)self->__conversationVisualIdentity updateVisualContacts:v12 groupParticipantCount:[(CKConversation *)self recipientCount]];
}

- (void)_updateGroupPhotoForVisualIdentity
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Updating group photo for visual identity on conversation %@", &v5, 0xCu);
    }
  }

  groupPhotoData = [(CKConversation *)self groupPhotoData];
  [(CKVisualGroupIdentity *)self->__conversationVisualIdentity updateGroupPhoto:groupPhotoData];
}

- (void)updateConversationVisualIdentityGroupPhotoWithSender:(id)sender
{
  senderCopy = sender;
  [(CKConversation *)self setNeedsUpdatedGroupPhotoForVisualIdentity:1];
  groupIdentityUpdateHandleID = self->_groupIdentityUpdateHandleID;
  self->_groupIdentityUpdateHandleID = senderCopy;
}

- (void)updateConversationVisualIdentityDisplayNameWithSender:(id)sender
{
  senderCopy = sender;
  [(CKConversation *)self setNeedsUpdatedGroupNameForVisualIdentity:1];
  groupIdentityUpdateHandleID = self->_groupIdentityUpdateHandleID;
  self->_groupIdentityUpdateHandleID = senderCopy;
}

- (void)_updateGroupNameForVisualIdentity
{
  displayName = [(CKConversation *)self displayName];
  [(CKVisualGroupIdentity *)self->__conversationVisualIdentity updateGroupName:displayName];
}

- (BOOL)shouldDisplayGroupIdentity
{
  if (!IMSharedHelperGroupNameAndPhotoEnabled())
  {
    return 0;
  }

  v3 = IMSharedHelperGroupNameAndPhotoRequiresParticipantContact();
  chat = [(CKConversation *)self chat];
  v5 = chat;
  if (v3)
  {
    if ([chat hasKnownParticipantsCache])
    {
      containsMessageFromContact = 1;
    }

    else
    {
      chat2 = [(CKConversation *)self chat];
      containsMessageFromContact = [chat2 containsMessageFromContact];
    }
  }

  else
  {
    containsMessageFromContact = [chat isKnownSenderWithUnknownFilteringEnabled:CKMessageUnknownFilteringEnabled() != 0];
  }

  return containsMessageFromContact;
}

- (id)transcriptBackgroundGUID
{
  if ([(CKConversation *)self _isDisplayingPendingTranscriptBackground])
  {
    pendingTranscriptBackgroundID = [(CKConversation *)self pendingTranscriptBackgroundID];
  }

  else
  {
    chat = [(CKConversation *)self chat];
    pendingTranscriptBackgroundID = [chat transcriptBackgroundGUID];
  }

  return pendingTranscriptBackgroundID;
}

- (_TtC7ChatKit22CKTranscriptBackground)transcriptBackground
{
  p_transcriptBackground = &self->_transcriptBackground;
  backgroundIdentifier = [(CKTranscriptBackground *)self->_transcriptBackground backgroundIdentifier];
  transcriptBackgroundGUID = [(CKConversation *)self transcriptBackgroundGUID];
  if ([backgroundIdentifier isEqualToString:transcriptBackgroundGUID])
  {

LABEL_4:
    if (![(CKConversation *)self hasTranscriptBackground]|| *p_transcriptBackground || [(CKConversation *)self _isDisplayingPendingTranscriptBackground])
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  _isDisplayingPendingTranscriptBackground = [(CKConversation *)self _isDisplayingPendingTranscriptBackground];

  if (_isDisplayingPendingTranscriptBackground)
  {
    goto LABEL_4;
  }

LABEL_7:
  _makeTranscriptBackgroundFromIMChatProperties = [(CKConversation *)self _makeTranscriptBackgroundFromIMChatProperties];
  if (_makeTranscriptBackgroundFromIMChatProperties || (-[CKConversation chat](self, "chat"), v8 = objc_claimAutoreleasedReturnValue(), [v8 transcriptBackgroundPath], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    objc_storeStrong(p_transcriptBackground, _makeTranscriptBackgroundFromIMChatProperties);
  }

LABEL_11:
  v10 = *p_transcriptBackground;

  return v10;
}

- (IMWatchBackground)transcriptWatchBackground
{
  transcriptBackground = [(CKConversation *)self transcriptBackground];
  if (transcriptBackground && (v4 = transcriptBackground, -[CKConversation transcriptBackground](self, "transcriptBackground"), v5 = objc_claimAutoreleasedReturnValue(), [v5 watchData], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    v7 = objc_alloc(MEMORY[0x1E69A8358]);
    transcriptBackground2 = [(CKConversation *)self transcriptBackground];
    watchData = [transcriptBackground2 watchData];
    v10 = [v7 initWithPayloadData:watchData];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasTranscriptBackground
{
  chat = [(CKConversation *)self chat];
  transcriptBackgroundPath = [chat transcriptBackgroundPath];

  return transcriptBackgroundPath != 0;
}

- (BOOL)_sharedShouldSuppressTranscriptBackground
{
  if (![(CKConversation *)self isKnownChat])
  {
    return 1;
  }

  chat = [(CKConversation *)self chat];
  v4 = chat;
  if (chat && [chat supportsCapabilities:0x1000000])
  {
    mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
    isFeatureEnabled = [mEMORY[0x1E69A7FC8] isFeatureEnabled];

    if (isFeatureEnabled)
    {
      v7 = [v4 transcriptBackgroundCommSafetyState] == 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldSuppressTranscriptBackgroundEditing
{
  if ([(CKConversation *)self isSatelliteSendingService])
  {
    return 1;
  }

  return [(CKConversation *)self _sharedShouldSuppressTranscriptBackground];
}

- (void)setPendingTranscriptBackground:(id)background transferID:(id)d
{
  backgroundCopy = background;
  dCopy = d;
  transcriptBackground = self->_transcriptBackground;
  self->_transcriptBackground = backgroundCopy;
  v9 = backgroundCopy;

  pendingTranscriptBackgroundID = self->_pendingTranscriptBackgroundID;
  self->_pendingTranscriptBackgroundID = dCopy;
  v11 = dCopy;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"CKConversationTranscriptBackgroundChangedNotification" object:self];
}

- (id)_makeTranscriptBackgroundFromIMChatProperties
{
  chat = [(CKConversation *)self chat];
  transcriptBackgroundPath = [chat transcriptBackgroundPath];
  if (transcriptBackgroundPath)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:transcriptBackgroundPath];
    lastPathComponent = [v4 lastPathComponent];
    v6 = [_TtC7ChatKit22CKTranscriptBackground alloc];
    transcriptBackgroundGUID = [chat transcriptBackgroundGUID];
    v8 = [(CKTranscriptBackground *)v6 initWithPosterFileURL:v4 fileName:lastPathComponent backgroundIdentifier:transcriptBackgroundGUID extensionIdentifier:@"unknown" extensionIsPlayground:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)generateMissingWatchAssetIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  chat = [(CKConversation *)self chat];
  transcriptBackgroundPath = [chat transcriptBackgroundPath];

  if (transcriptBackgroundPath)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:transcriptBackgroundPath];
    im_associatedWatchBackgroundURL = [v7 im_associatedWatchBackgroundURL];

    if (im_associatedWatchBackgroundURL && ([MEMORY[0x1E696AC08] defaultManager], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(im_associatedWatchBackgroundURL, "path"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "fileExistsAtPath:", v10), v10, v9, (v11 & 1) == 0))
    {
      _makeTranscriptBackgroundFromIMChatProperties = [(CKConversation *)self _makeTranscriptBackgroundFromIMChatProperties];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __69__CKConversation_generateMissingWatchAssetIfNecessaryWithCompletion___block_invoke;
      v13[3] = &unk_1E72F23B0;
      v14 = im_associatedWatchBackgroundURL;
      v15 = completionCopy;
      [_makeTranscriptBackgroundFromIMChatProperties createBackgroundWithWatchDataWithCompletion:v13];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __69__CKConversation_generateMissingWatchAssetIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [a2 watchData];
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v3 writeToURL:v4 options:1 error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 length];
      *buf = 134218242;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Unable to generate replacement watch data file. Failed to write watch data (%lu bytes) due to: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_handleTranscriptBackgroundChangeNotification:(id)notification
{
  object = [notification object];
  if (!object || ([(CKConversation *)self chat], v5 = objc_claimAutoreleasedReturnValue(), v5, object == v5))
  {
    if (!-[CKConversation _isDisplayingPendingTranscriptBackground](self, "_isDisplayingPendingTranscriptBackground") || (v6 = self->_pendingTranscriptBackgroundID, [object transcriptBackgroundGUID], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = -[NSString isEqualToString:](v6, "isEqualToString:", v7), v7, (v6 & 1) == 0))
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "IMChat notified the conversation of a transcript background change.", v13, 2u);
      }

      _makeTranscriptBackgroundFromIMChatProperties = [(CKConversation *)self _makeTranscriptBackgroundFromIMChatProperties];
      transcriptBackground = self->_transcriptBackground;
      self->_transcriptBackground = _makeTranscriptBackgroundFromIMChatProperties;

      pendingTranscriptBackgroundID = self->_pendingTranscriptBackgroundID;
      self->_pendingTranscriptBackgroundID = 0;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CKConversationTranscriptBackgroundChangedNotification" object:self];
    }
  }
}

- (void)didBecomeActive
{
  chat = [(CKConversation *)self chat];
  if (!chat && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "No chat found, bailing", v4, 2u);
    }
  }

  if (!CKIsRunningInMessagesNotificationExtension() && !CKIsRunningInMessagesViewService() && (IMSharedHelperIsOlderDevice() & 1) == 0)
  {
    [chat beginListeningToAttributionChanges];
  }
}

- (id)acquireHandleStatusObservationAssertion
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Beginning listening to status changes", buf, 2u);
    }
  }

  chat = [(CKConversation *)self chat];
  v5 = chat;
  if (chat)
  {
    beginObservingHandleStatuses = [chat beginObservingHandleStatuses];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "No chat found, bailing", v9, 2u);
      }
    }

    beginObservingHandleStatuses = 0;
  }

  return beginObservingHandleStatuses;
}

+ (id)newPendingConversation
{
  v2 = [CKPendingConversation alloc];

  return [(CKConversation *)v2 initWithChat:0];
}

+ (id)conversationForAddresses:(id)addresses allowRetargeting:(BOOL)retargeting candidateConversation:(id)conversation
{
  retargetingCopy = retargeting;
  v43 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  conversationCopy = conversation;
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v37 = 0;
  v32 = [mEMORY[0x1E69A5AF8] existingChatForAddresses:addressesCopy allowRetargeting:retargetingCopy bestHandles:&v37];
  v30 = v37;

  v8 = conversationCopy;
  v9 = v8;
  if (v32)
  {
    chat = [v8 chat];
    v11 = [chat isEqual:v32];

    copyForPendingConversation = v9;
    if ((v11 & 1) == 0)
    {
      [v9 setUnsentComposition:0];
      v13 = +[CKConversationList sharedConversationList];
      v14 = [v13 conversationForExistingChat:v32];
      copyForPendingConversation = [v14 copyForPendingConversation];
    }

    [copyForPendingConversation refreshServiceForSending];
  }

  else
  {
    [v8 setUnsentComposition:0];
    v15 = +[CKConversationList sharedConversationList];
    copyForPendingConversation = [v15 pendingConversationCreatingIfNecessary];

    if (retargetingCopy && (v16 = [v30 count], v16 == objc_msgSend(addressesCopy, "count")))
    {
      v17 = v30;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
      v19 = [mEMORY[0x1E69A5A80] __ck_bestAccountForAddresses:addressesCopy];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = addressesCopy;
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v21)
      {
        v22 = *v34;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = IMStripFormattingFromAddress();
            v25 = [v19 imHandleWithID:v24];

            if (v25)
            {
              [v17 addObject:v25];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v21);
      }
    }

    [copyForPendingConversation setPendingHandles:v17];
    v30 = v17;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = @"NO";
      if (retargetingCopy)
      {
        v27 = @"YES";
      }

      *buf = 138412546;
      v39 = v27;
      v40 = 2112;
      v41 = copyForPendingConversation;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "conversationForAddresses (allowRetargeting is %@) using %@", buf, 0x16u);
    }
  }

  return copyForPendingConversation;
}

+ (id)conversationForContacts:(id)contacts candidateConversation:(id)conversation
{
  v23 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  conversationCopy = conversation;
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v20 = 0;
  v8 = [mEMORY[0x1E69A5AF8] existingChatForContacts:contactsCopy bestHandles:&v20];
  v9 = v20;

  v10 = conversationCopy;
  v11 = v10;
  if (v8)
  {
    chat = [v10 chat];
    v13 = [chat isEqual:v8];

    copyForPendingConversation = v11;
    if ((v13 & 1) == 0)
    {
      [v11 setUnsentComposition:0];
      v15 = +[CKConversationList sharedConversationList];
      v16 = [v15 conversationForExistingChat:v8];
      copyForPendingConversation = [v16 copyForPendingConversation];
    }

    [copyForPendingConversation refreshServiceForSending];
  }

  else
  {
    [v10 setUnsentComposition:0];
    v17 = +[CKConversationList sharedConversationList];
    copyForPendingConversation = [v17 pendingConversationCreatingIfNecessary];

    [copyForPendingConversation setPendingHandles:v9];
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = copyForPendingConversation;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "conversationForContacts using %@", buf, 0xCu);
    }
  }

  return copyForPendingConversation;
}

- (void)resetNameCaches
{
  name = self->_name;
  self->_name = 0;
}

- (void)resetCaches
{
  [(CKConversation *)self resetNameCaches];
  recipients = self->_recipients;
  self->_recipients = 0;

  conversationVisualIdentity = self->__conversationVisualIdentity;
  self->__conversationVisualIdentity = 0;
}

- (void)reloadIfNeeded
{
  if (self->_needsReload)
  {
    [(CKConversation *)self clearConversationLoadFromSpotlight];

    [(CKConversation *)self loadAllMessages];
  }
}

- (id)sortedHandles
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"isContact" ascending:0];
  v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"fullName" ascending:1 selector:sel_caseInsensitiveCompare_];
  v9[0] = v3;
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  handles = [(CKConversation *)self handles];
  v7 = [handles sortedArrayUsingDescriptors:v5];

  return v7;
}

- (BOOL)containsHandleWithUID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  handles = [(CKConversation *)self handles];
  v6 = [handles countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(handles);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) ID];
        v10 = [v9 isEqualToString:dCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [handles countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)acceptTransfer:(id)transfer
{
  v9 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(19);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = transferCopy;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Accept transfer %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v6 = transferCopy;
    _CKLogExternal();
  }

  mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
  [mEMORY[0x1E69A5B80] acceptTransfer:transferCopy];
}

- (void)acceptTransferAndUpdateReasonForTapped:(id)tapped
{
  v9 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(19);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = tappedCopy;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Accept transfer %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v6 = tappedCopy;
    _CKLogExternal();
  }

  mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
  [mEMORY[0x1E69A5B80] acceptTransferAndUpdateReasonForTapped:tappedCopy];
}

- (void)retrieveLocalFileURLForTransferGUID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(19);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = dCopy;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Retrieve local file URL for transfer %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v6 = dCopy;
    _CKLogExternal();
  }

  mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
  [mEMORY[0x1E69A5B80] retrieveLocalFileURLForFileTransferWithGUID:dCopy options:0 completion:0];
}

- (void)_handleChatParticipantsDidChange:(id)change
{
  object = [change object];
  chat = [(CKConversation *)self chat];
  v5 = [object isEqual:chat];

  if (v5)
  {
    recipients = self->_recipients;
    self->_recipients = 0;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationParticipantsDidChangeNotification" object:self];

    [(CKConversation *)self updateKeyTransparencyStatusForChatParticipantsDidChange:object];
  }
}

- (void)_handleChatJoinStateDidChange:(id)change
{
  object = [change object];
  chat = [(CKConversation *)self chat];
  v5 = [object isEqual:chat];

  if (v5)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationJoinStateDidChangeNotification" object:self];
  }
}

- (void)_handleEngroupFinishedUpdating:(id)updating
{
  object = [updating object];
  chat = [(CKConversation *)self chat];
  v5 = [object isEqual:chat];

  if (v5)
  {
    pendingRecipients = self->_pendingRecipients;
    self->_pendingRecipients = 0;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationPendingRecipientsUpdatedNotification" object:self];
  }
}

- (void)_handleLazuliCapabilitiesUpdatedNotification:(id)notification
{
  v24 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  chat = [(CKConversation *)self chat];
  participants = [chat participants];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __63__CKConversation__handleLazuliCapabilitiesUpdatedNotification___block_invoke;
  v13 = &unk_1E72ED2F8;
  v8 = object;
  v14 = v8;
  v15 = &v16;
  [participants enumerateObjectsUsingBlock:&v10];

  if (*(v17 + 24) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v21 = v8;
        v22 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Handle %@ is part of %@ and it's RCS capabilities got updated. Refreshing service...", buf, 0x16u);
      }
    }

    [(CKConversation *)self refreshServiceForSending:v10];
  }

  _Block_object_dispose(&v16, 8);
}

void __63__CKConversation__handleLazuliCapabilitiesUpdatedNotification___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 ID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)setUnsentComposition:(id)composition
{
  compositionCopy = composition;
  v5 = +[CKDraftManager sharedInstance];
  [v5 setDraft:compositionCopy forConversation:self];
}

- (void)updateUnsentCompositionByAppendingComposition:(id)composition
{
  compositionCopy = composition;
  unsentComposition = [(CKConversation *)self unsentComposition];
  if (([unsentComposition isAudioComposition] & 1) == 0)
  {
    if (unsentComposition)
    {
      v5 = [unsentComposition compositionByAppendingComposition:compositionCopy];
    }

    else
    {
      v5 = compositionCopy;
    }

    v6 = v5;
    [(CKConversation *)self setUnsentComposition:v5];
  }
}

- (CKComposition)unsentComposition
{
  v3 = +[CKDraftManager sharedInstance];
  v4 = [v3 draftForConversation:self];

  return v4;
}

- (BOOL)isDowngraded
{
  chat = [(CKConversation *)self chat];
  isDowngraded = [chat isDowngraded];

  return isDowngraded;
}

- (BOOL)forceMMS
{
  chat = [(CKConversation *)self chat];
  forceMMS = [chat forceMMS];

  return forceMMS;
}

- (void)setForceMMS:(BOOL)s
{
  sCopy = s;
  chat = [(CKConversation *)self chat];
  [chat setForceMMS:sCopy];
}

- (NSString)fallbackSendString
{
  if ([(CKConversation *)self isToEmailAddress])
  {
    v3 = CKFrameworkBundle();
    v4 = v3;
    v5 = @"MADRID_SEND_TO_EMAIL";
  }

  else
  {
    chat = [(CKConversation *)self chat];
    isRCS = [chat isRCS];

    v3 = CKFrameworkBundle();
    v4 = v3;
    if (isRCS)
    {
      v5 = @"LAZULI_SEND_AS_TEXT_MESSAGE";
    }

    else
    {
      v5 = @"MADRID_SEND_AS_TEXT_MESSAGE";
    }
  }

  v8 = [v3 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];

  return v8;
}

- (BOOL)canLeave
{
  chat = [(CKConversation *)self chat];
  canLeaveChat = [chat canLeaveChat];

  return canLeaveChat;
}

- (BOOL)hasLeft
{
  chat = [(CKConversation *)self chat];
  joinState = [chat joinState];

  return ((joinState - 4) < 0xFFFFFFFFFFFFFFFELL) & ~[(CKConversation *)self isPending];
}

- (BOOL)hasLeftGroupChat
{
  chat = [(CKConversation *)self chat];
  hasLeftGroup = [chat hasLeftGroup];

  return hasLeftGroup;
}

- (void)leave
{
  chat = [(CKConversation *)self chat];
  [chat leave];
}

- (BOOL)isBusinessChatDisabled
{
  isBusinessConversation = [(CKConversation *)self isBusinessConversation];
  if (isBusinessConversation)
  {
    LOBYTE(isBusinessConversation) = [MEMORY[0x1E69A8020] supportsBusinessChat] ^ 1;
  }

  return isBusinessConversation;
}

- (BOOL)supportsMutatingGroupMembers
{
  if ((CKIsRunningUITests() || CKIsRunningForDevelopmentOnSimulator()) && [(CKConversation *)self isGroupConversation])
  {
    return 1;
  }

  chat = [(CKConversation *)self chat];
  v5 = [chat supportsCapabilities:32];

  return v5;
}

- (BOOL)supportsAutomaticTranslation
{
  chat = [(CKConversation *)self chat];
  isTranslationSupportedForSystemLanguage = [chat isTranslationSupportedForSystemLanguage];

  if (!isTranslationSupportedForSystemLanguage)
  {
    return 0;
  }

  chat2 = [(CKConversation *)self chat];
  v6 = [chat2 supportsCapabilities:0x800000];

  return v6;
}

- (BOOL)supportsMutatingGroupIdentity
{
  chat = [(CKConversation *)self chat];
  if ([chat supportsCapabilities:16])
  {
    shouldDisplayGroupIdentity = [(CKConversation *)self shouldDisplayGroupIdentity];
  }

  else
  {
    shouldDisplayGroupIdentity = 0;
  }

  return shouldDisplayGroupIdentity;
}

- (BOOL)supportsDeleteAndBlockGroup
{
  chat = [(CKConversation *)self chat];
  v3 = [chat supportsCapabilities:256];

  return v3;
}

- (BOOL)suppressesMutationsFromLocalDevice
{
  chat = [(CKConversation *)self chat];
  _suppressesMutationsFromLocalDevice = [chat _suppressesMutationsFromLocalDevice];

  return _suppressesMutationsFromLocalDevice;
}

- (BOOL)isAdHocGroupConversation
{
  if (![(CKConversation *)self isGroupConversation])
  {
    return 0;
  }

  v3 = [(CKConversation *)self conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:0];
  groupPhoto = [v3 groupPhoto];
  v5 = [groupPhoto length] == 0;

  return v5;
}

- (BOOL)canReplyToChatItem:(id)item
{
  itemCopy = item;
  chat = [(CKConversation *)self chat];
  chat2 = [(CKConversation *)self chat];
  if ([chat2 isStewieChat])
  {
    v7 = 0;
  }

  else
  {
    chat3 = [(CKConversation *)self chat];
    isStewieSharingChat = [chat3 isStewieSharingChat];

    v7 = isStewieSharingChat ^ 1;
  }

  mEMORY[0x1E6994658] = [MEMORY[0x1E6994658] sharedSystemShellSwitcher];
  isClarityBoardEnabled = [mEMORY[0x1E6994658] isClarityBoardEnabled];

  if (![chat supportsCapabilities:4] || -[CKConversation hasLeftGroupChat](self, "hasLeftGroupChat") || -[CKConversation isReadOnlyChat](self, "isReadOnlyChat") || (objc_msgSend(chat, "isBusinessChat") & 1) != 0)
  {
    v12 = 0;
  }

  else if ([chat isOscarChat])
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 & (isClarityBoardEnabled ^ 1);
  }

  canInlineReply = [itemCopy canInlineReply];

  return v12 & canInlineReply;
}

- (int64_t)maximumRecipientsForSendingService
{
  sendingService = [(CKConversation *)self sendingService];
  lastAddressedHandle = [(CKConversation *)self lastAddressedHandle];
  lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
  if (sendingService)
  {
    v6 = [sendingService __ck_maxRecipientCountForHandle:lastAddressedHandle simID:lastAddressedSIMID];
  }

  else
  {
    smsService = [MEMORY[0x1E69A5CA0] smsService];
    v6 = [smsService __ck_maxRecipientCountForHandle:lastAddressedHandle simID:lastAddressedSIMID];
  }

  return v6;
}

- (BOOL)canInsertMoreRecipients
{
  if (![(CKConversation *)self recipientCount])
  {
    return 1;
  }

  recipientCount = [(CKConversation *)self recipientCount];
  return recipientCount < [(CKConversation *)self maximumRecipientsForSendingService];
}

- (BOOL)canMuteStateBeToggled
{
  chat = [(CKConversation *)self chat];

  if (chat)
  {
    chat2 = [(CKConversation *)self chat];
    v5 = [chat2 isStewieChat] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (IMHandle)businessHandle
{
  if ([(CKConversation *)self isBusinessConversation])
  {
    p_businessHandle = &self->_businessHandle;
    businessHandle = self->_businessHandle;
    if (!businessHandle)
    {
      handles = [(CKConversation *)self handles];
      firstObject = [handles firstObject];

      if ([firstObject isBusiness])
      {
        objc_storeStrong(&self->_businessHandle, firstObject);
      }

      if (!*p_businessHandle)
      {
        chat = [(CKConversation *)self chat];
        businessHandle = [chat businessHandle];
        v9 = self->_businessHandle;
        self->_businessHandle = businessHandle;
      }

      businessHandle = *p_businessHandle;
    }

    v10 = businessHandle;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldPresentSpamReasonPicker
{
  isBusinessConversation = [(CKConversation *)self isBusinessConversation];
  if (isBusinessConversation)
  {
    LOBYTE(isBusinessConversation) = ![(CKConversation *)self isChatBot];
  }

  return isBusinessConversation;
}

- (NSString)chatbotURI
{
  if ([(CKConversation *)self isChatBot])
  {
    chat = [(CKConversation *)self chat];
    chatIdentifier = [chat chatIdentifier];
    v5 = [chatIdentifier stringByReplacingOccurrencesOfString:@"sip:" withString:&stru_1F04268F8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)deleteBrandLogos
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      businessHandle = [(CKConversation *)self businessHandle];
      brand = [businessHandle brand];
      brandURI = [brand brandURI];
      v9 = 138412290;
      v10 = brandURI;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Messages for Business delete brand logos for brand URI: %@", &v9, 0xCu);
    }
  }

  businessHandle2 = [(CKConversation *)self businessHandle];
  brand2 = [businessHandle2 brand];
  [brand2 clearCachedAssets:&__block_literal_global_96];
}

void __34__CKConversation_deleteBrandLogos__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __34__CKConversation_deleteBrandLogos__block_invoke_cold_1(v2, v3);
    }
  }
}

- (BOOL)isUserDeletable
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(CKConversation *)self isStewieConversation])
  {
    mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
    isStewieActive = [mEMORY[0x1E69A5B00] isStewieActive];
  }

  else
  {
    isStewieActive = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"YES";
      if (isStewieActive)
      {
        v5 = @"NO";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Conversation can be deleted: %@", &v7, 0xCu);
    }
  }

  return isStewieActive ^ 1;
}

- (BOOL)isAppleConversation
{
  isBusinessConversation = [(CKConversation *)self isBusinessConversation];
  if (isBusinessConversation)
  {
    chat = [(CKConversation *)self chat];
    isAppleChat = [chat isAppleChat];

    LOBYTE(isBusinessConversation) = isAppleChat;
  }

  return isBusinessConversation;
}

- (BOOL)isMakoConversation
{
  isBusinessConversation = [(CKConversation *)self isBusinessConversation];
  if (isBusinessConversation)
  {
    chat = [(CKConversation *)self chat];
    isMakoChat = [chat isMakoChat];

    LOBYTE(isBusinessConversation) = isMakoChat;
  }

  return isBusinessConversation;
}

- (BOOL)isWithMyself
{
  v22 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
  sendingService = [(CKConversation *)self sendingService];
  v5 = [mEMORY[0x1E69A5A80] bestActiveAccountForService:sendingService];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  handles = [(CKConversation *)self handles];
  v7 = [handles countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(handles);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        aliases = [v5 aliases];
        v13 = [v11 ID];
        v14 = [aliases containsObject:v13];

        if (!v14)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v8 = [handles countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (BOOL)hasReplyEnabled
{
  chat = [(CKConversation *)self chat];
  if (chat)
  {
    chat2 = [(CKConversation *)self chat];
    isReplyEnabled = [chat2 isReplyEnabled];
  }

  else
  {
    isReplyEnabled = 1;
  }

  return isReplyEnabled;
}

- (void)unmute
{
  chat = [(CKConversation *)self chat];
  [chat setMuteUntilDate:0];
}

- (void)setMutedUntilDate:(id)date
{
  dateCopy = date;
  chat = [(CKConversation *)self chat];
  [chat setMuteUntilDate:dateCopy];
}

- (BOOL)shouldSendReadReceipts
{
  chat = [(CKConversation *)self chat];
  __ck_sendReadReceipts = [chat __ck_sendReadReceipts];

  return __ck_sendReadReceipts;
}

- (void)setSendReadReceipts:(BOOL)receipts
{
  receiptsCopy = receipts;
  chat = [(CKConversation *)self chat];
  [chat __ck_setSendReadReceipts:receiptsCopy];
}

- (BOOL)shouldAutomaticallyTranslate
{
  chat = [(CKConversation *)self chat];
  isAutomaticTranslationEnabled = [chat isAutomaticTranslationEnabled];

  return isAutomaticTranslationEnabled;
}

- (NSString)translationLanguageCode
{
  chat = [(CKConversation *)self chat];
  translationLanguageCode = [chat translationLanguageCode];

  return translationLanguageCode;
}

- (void)setAutomaticallyTranslate:(BOOL)translate languageCode:(id)code userLanguageCode:(id)languageCode
{
  translateCopy = translate;
  languageCodeCopy = languageCode;
  codeCopy = code;
  chat = [(CKConversation *)self chat];
  [chat setAutomaticallyTranslate:translateCopy languageCode:codeCopy userLanguageCode:languageCodeCopy];
}

- (NSString)userTranslationLanguageCode
{
  chat = [(CKConversation *)self chat];
  userTranslationLanguageCode = [chat userTranslationLanguageCode];

  return userTranslationLanguageCode;
}

- (void)canShareFocusStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  chat = [(CKConversation *)self chat];

  if (chat)
  {
    chat2 = [(CKConversation *)self chat];
    [chat2 canShareFocusStatusWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)isInvitedToViewMyFocusStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  chat = [(CKConversation *)self chat];

  if (chat)
  {
    chat2 = [(CKConversation *)self chat];
    [chat2 isInvitedToViewMyFocusStatusWithCompletion:completionCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Requested to share focus mode in conversation with no chat.", v8, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)addRecipientHandles:(id)handles
{
  v4 = MEMORY[0x1E695DFD8];
  handlesCopy = handles;
  v6 = [v4 setWithArray:handlesCopy];
  [(CKConversation *)self setPendingRecipients:v6];

  chat = [(CKConversation *)self chat];
  [chat inviteParticipants:handlesCopy reason:0];
}

- (void)removeRecipientHandles:(id)handles
{
  v4 = MEMORY[0x1E695DFD8];
  handlesCopy = handles;
  v6 = [v4 setWithArray:handlesCopy];
  [(CKConversation *)self setPendingRecipients:v6];

  chat = [(CKConversation *)self chat];
  [chat removeParticipants:handlesCopy reason:0];
}

- (BOOL)canModifyParticipants
{
  if ([(CKConversation *)self isGroupConversation])
  {
    supportsMutatingGroupMembers = [(CKConversation *)self supportsMutatingGroupMembers];
  }

  else
  {
    supportsMutatingGroupMembers = 0;
  }

  if ([(CKConversation *)self canLeave])
  {
    v4 = ![(CKConversation *)self hasLeft];
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return supportsMutatingGroupMembers & v4;
}

- (id)entityMatchingHandle:(id)handle
{
  v23 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  [(CKConversation *)self recipients];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      defaultIMHandle = [v9 defaultIMHandle];
      if ([defaultIMHandle matchesIMHandle:handleCopy])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v9;

    if (v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = handleCopy;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Recipient not found on conversation mathing handle: %@. Creating a new CKEntity.", buf, 0xCu);
    }
  }

  v13 = [CKEntity alloc];
  chat = [(CKConversation *)self chat];
  v11 = [(CKEntity *)v13 initWithChat:chat imHandle:handleCopy];

LABEL_16:

  return v11;
}

- (void)updateDisplayNameIfSMSSpam
{
  if ([(CKConversation *)self wasDetectedAsSMSSpam])
  {

    [(CKConversation *)self resetNameCaches];
  }
}

- (id)orderedContactsWithMaxCount:(unint64_t)count keysToFetch:(id)fetch
{
  countCopy = count;
  v63 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  recipients = [(CKConversation *)self recipients];
  if ([recipients count])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

    if (isTranscriptSharingEnabled)
    {
      chat = [(CKConversation *)self chat];
      isStewieSharingChat = [chat isStewieSharingChat];

      if (isStewieSharingChat)
      {
        array = [MEMORY[0x1E695DF70] array];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v12 = recipients;
        v13 = [v12 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v13)
        {
          v14 = *v53;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v53 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v52 + 1) + 8 * i);
              defaultIMHandle = [v16 defaultIMHandle];
              isStewieTranscriptSharingHandle = [defaultIMHandle isStewieTranscriptSharingHandle];

              if (isStewieTranscriptSharingHandle)
              {
                [array addObject:v16];
                goto LABEL_19;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:

        recipients = [array copy];
      }
    }

    if ([recipients count] == 1)
    {
      firstObject = [recipients firstObject];
      v23 = [firstObject cnContactWithKeys:fetchCopy];

      if (v23)
      {
        v61 = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v57 = 0x3032000000;
      v58 = __Block_byref_object_copy__31;
      v59 = __Block_byref_object_dispose__31;
      array2 = [MEMORY[0x1E695DF70] array];
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x3032000000;
      v50[3] = __Block_byref_object_copy__31;
      v50[4] = __Block_byref_object_dispose__31;
      array3 = [MEMORY[0x1E695DF70] array];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__CKConversation_orderedContactsWithMaxCount_keysToFetch___block_invoke;
      aBlock[3] = &unk_1E72F2400;
      v25 = recipients;
      v46 = v25;
      v48 = v50;
      v26 = fetchCopy;
      v47 = v26;
      p_buf = &buf;
      v27 = _Block_copy(aBlock);
      if ([(CKConversation *)self completedInitialChatMessagesLoad])
      {
        chat2 = [(CKConversation *)self chat];
        chatItems = [chat2 chatItems];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __58__CKConversation_orderedContactsWithMaxCount_keysToFetch___block_invoke_3;
        v41[3] = &unk_1E72F2428;
        v42 = v27;
        v43 = &buf;
        v44 = v35;
        [chatItems enumerateMessagesWithOptions:2 usingBlock:v41];

        lastIncomingFinishedMessage = v42;
      }

      else
      {
        chat3 = [(CKConversation *)self chat];
        lastIncomingFinishedMessage = [chat3 lastIncomingFinishedMessage];

        if (lastIncomingFinishedMessage)
        {
          (*(v27 + 2))(v27, lastIncomingFinishedMessage);
        }
      }

      v32 = [*(*(&buf + 1) + 40) count];
      if (v32 < [v25 count] && objc_msgSend(*(*(&buf + 1) + 40), "count") < v35)
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __58__CKConversation_orderedContactsWithMaxCount_keysToFetch___block_invoke_4;
        v36[3] = &unk_1E72F2450;
        v38 = v50;
        v37 = v26;
        v39 = &buf;
        v40 = v35;
        [v25 enumerateObjectsUsingBlock:v36];
      }

      v24 = *(*(&buf + 1) + 40);

      _Block_object_dispose(v50, 8);
      _Block_object_dispose(&buf, 8);
    }

    v21 = v24;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        chat4 = [(CKConversation *)self chat];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = chat4;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "No recipients found for chat %@", &buf, 0xCu);
      }
    }

    v21 = 0;
  }

  return v21;
}

void __58__CKConversation_orderedContactsWithMaxCount_keysToFetch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__CKConversation_orderedContactsWithMaxCount_keysToFetch___block_invoke_2;
    v9[3] = &unk_1E72F23D8;
    v10 = v3;
    v6 = [v5 indexOfObjectPassingTest:v9];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [*(a1 + 32) objectAtIndex:v6];
      if (([*(*(*(a1 + 48) + 8) + 40) containsObject:v7] & 1) == 0)
      {
        v8 = [v7 cnContactWithKeys:*(a1 + 40)];
        [*(*(*(a1 + 56) + 8) + 40) addObject:v8];
        [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
      }
    }
  }
}

uint64_t __58__CKConversation_orderedContactsWithMaxCount_keysToFetch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 defaultIMHandle];
  v4 = [*(a1 + 32) sender];
  v5 = [v3 matchesIMHandle:v4];

  return v5;
}

void __58__CKConversation_orderedContactsWithMaxCount_keysToFetch___block_invoke_3(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (([v5 isFromMe] & 1) == 0 && (objc_msgSend(v5, "isTypingMessage") & 1) == 0)
  {
    (*(a1[4] + 16))();
    if ([*(*(a1[5] + 8) + 40) count] >= a1[6])
    {
      *a3 = 1;
    }
  }
}

void __58__CKConversation_orderedContactsWithMaxCount_keysToFetch___block_invoke_4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [*(*(a1[5] + 8) + 40) containsObject:v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = [v9 cnContactWithKeys:a1[4]];
    [*(*(a1[6] + 8) + 40) addObject:v8];
    if ([*(*(a1[6] + 8) + 40) count] >= a1[7])
    {
      *a4 = 1;
    }

    v7 = v9;
  }
}

- (void)refreshServiceForSending
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(38);
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v7 = "[CKConversation refreshServiceForSending]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v5 = "[CKConversation refreshServiceForSending]";
    _CKLog();
  }

  chat = [(CKConversation *)self chat];
  [chat refreshServiceForSending];
}

- (id)sendingServiceImpl
{
  chat = [(CKConversation *)self chat];
  account = [chat account];
  service = [account service];

  if (!service)
  {
    service = [MEMORY[0x1E69A5C90] smsService];
  }

  return service;
}

- (BOOL)_handleIsForThisConversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (conversationCopy)
  {
    [(CKConversation *)self handles];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if (![*(*(&v10 + 1) + 8 * i) compareIDs:{conversationCopy, v10}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_handlePreferredServiceChangedNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(38);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v9 = "[CKConversation _handlePreferredServiceChangedNotification:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = "[CKConversation _handlePreferredServiceChangedNotification:]";
    _CKLog();
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKConversationPreferredServiceChangedNotification" object:self userInfo:0];

  [(CKConversation *)self _clearTypingIndicatorsIfNecessary];
}

- (void)_chatItemsDidChange:(id)change
{
  previewText = self->_previewText;
  self->_previewText = 0;
}

- (void)_chatPropertiesChanged:(id)changed
{
  v3 = +[CKConversationList sharedConversationList];
  [v3 _postConversationListChangedNotification];
}

- (NSString)pinningIdentifier
{
  chat = [(CKConversation *)self chat];
  pinningIdentifier = [chat pinningIdentifier];

  return pinningIdentifier;
}

- (BOOL)wasDetectedAsSMSCategory
{
  chat = [(CKConversation *)self chat];
  wasDetectedAsSMSCategory = [chat wasDetectedAsSMSCategory];

  return wasDetectedAsSMSCategory;
}

- (BOOL)isReportedAsSpam
{
  chat = [(CKConversation *)self chat];
  v3 = [chat valueForChatProperty:*MEMORY[0x1E69A5D50]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int64_t)spamCategory
{
  chat = [(CKConversation *)self chat];
  v4 = [chat valueForChatProperty:*MEMORY[0x1E69A5D58]];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    return 2;
  }

  v7 = MEMORY[0x1E69A8210];
  chat2 = [(CKConversation *)self chat];
  v9 = [chat2 valueForChatProperty:*MEMORY[0x1E69A5D40]];
  v10 = [v7 filterActionForCategory:{objc_msgSend(v9, "intValue")}];

  return v10;
}

- (int64_t)spamSubCategory
{
  chat = [(CKConversation *)self chat];
  v4 = [chat valueForChatProperty:*MEMORY[0x1E69A5D40]];
  intValue = [v4 intValue];

  chat2 = [(CKConversation *)self chat];
  v7 = [chat2 valueForChatProperty:*MEMORY[0x1E69A5D48]];
  intValue2 = [v7 intValue];

  v9 = MEMORY[0x1E69A8210];

  return [v9 filterSubActionForCategory:intValue subCategory:intValue2];
}

- (NSSet)mergedThreadFilterModes
{
  chat = [(CKConversation *)self chat];
  mergedThreadFilterModes = [chat mergedThreadFilterModes];
  v4 = [mergedThreadFilterModes copy];

  return v4;
}

- (BOOL)hasKnownParticipants
{
  chat = [(CKConversation *)self chat];
  hasKnownParticipants = [chat hasKnownParticipants];

  return hasKnownParticipants;
}

- (id)recipientsSortedByIsContact:(BOOL)contact alphabetically:(BOOL)alphabetically
{
  alphabeticallyCopy = alphabetically;
  contactCopy = contact;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (contactCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"defaultIMHandle.isContact" ascending:0];
    [v7 addObject:v8];
  }

  if (alphabeticallyCopy)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"fullName" ascending:1 selector:sel_caseInsensitiveCompare_];
    [v7 addObject:v9];
  }

  recipients = [(CKConversation *)self recipients];
  v11 = [recipients sortedArrayUsingDescriptors:v7];

  return v11;
}

- (BOOL)isToEmailAddress
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  recipients = [(CKConversation *)self recipients];
  v3 = [recipients countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(recipients);
        }

        rawAddress = [*(*(&v9 + 1) + 8 * i) rawAddress];
        _appearsToBeEmail = [rawAddress _appearsToBeEmail];

        if (_appearsToBeEmail)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [recipients countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_deleteAllMessagesAndRemoveGroup:(BOOL)group
{
  groupCopy = group;
  v26 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy = self;
      v24 = 1024;
      v25 = groupCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "deleting all messages involving conversation %@ and removing group: %d", buf, 0x12u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    selfCopy2 = self;
    v21 = groupCopy;
    _CKLog();
  }

  v6 = [(CKConversation *)self chat:selfCopy2];
  isBusinessChat = [v6 isBusinessChat];
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  if ([mEMORY[0x1E69A7FC8] isFeatureEnabled])
  {
    hasCommSafetySensitiveMessage = [v6 hasCommSafetySensitiveMessage];

    if (!hasCommSafetySensitiveMessage)
    {
      goto LABEL_12;
    }

    v10 = MEMORY[0x1E69A5B30];
    mEMORY[0x1E69A7FC8] = [(CKConversation *)self chat];
    [v10 registerEvent:2 eventType:3 messageGUID:0 chat:mEMORY[0x1E69A7FC8] forImages:0];
  }

LABEL_12:
  if (groupCopy)
  {
    [v6 remove];
  }

  else
  {
    [v6 deleteAllHistory];
  }

  if (isBusinessChat)
  {
    [v6 deleteExtensionPayloadData];
  }

  if (![(CKConversation *)self isGroupConversation])
  {
    recipient = [(CKConversation *)self recipient];
    rawAddress = [recipient rawAddress];
    v13 = rawAddress == 0;

    if (!v13)
    {
      v14 = objc_alloc_init(CKDetailsContactsManager);
      recipient2 = [(CKConversation *)self recipient];
      rawAddress2 = [recipient2 rawAddress];
      [(CKDetailsContactsManager *)v14 setPreferredCallService:0 forID:rawAddress2];
    }
  }

  v17 = +[CKDraftManager sharedInstance];
  [v17 setDraft:0 forConversation:self];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      selfCopy = "[CKConversation _deleteAllMessagesAndRemoveGroup:]";
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "%s requesting purge of default snapshot", buf, 0xCu);
    }
  }

  v19 = objc_alloc_init(MEMORY[0x1E69D41A0]);
  [v19 deleteSnapshotsForApplicationIdentifier:@"com.apple.MobileSMS"];
  [v19 invalidate];
}

- (void)loadAllMessages
{
  v3 = _os_activity_create(&dword_19020E000, "com.apple.messages.HistoryLoad", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    limitToLoad = [(CKConversation *)self limitToLoad];
    if ([(CKConversation *)self _chatHasValidUnreadMessageToLoad])
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "First unread message is not loaded. Increasing limitToLoad to 100 for Catch Up.", buf, 2u);
        }
      }

      limitToLoad = 100;
    }

    v6 = CKIsRunningInRemoteIntentClient();
    if (limitToLoad && ((-[IMChat setNumberOfMessagesToKeepLoaded:](self->_chat, "setNumberOfMessagesToKeepLoaded:", limitToLoad), [MEMORY[0x1E69A8070] sharedFeatureFlags], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isMergeFilteredThreadsEnabled"), v7, !v8) ? (v9 = 0) : (v9 = -[IMChat supportsMergingFilteredThreads](self->_chat, "supportsMergingFilteredThreads")), limitToLoad != 1 || v9))
    {
      chat = self->_chat;
      if (!v6)
      {
        v11 = [(IMChat *)chat loadMessagesBeforeDate:0 limit:limitToLoad loadImmediately:1];
LABEL_19:
        self->_needsReload = 0;
        [(CKConversation *)self setCompletedInitialChatMessagesLoad:1];
        goto LABEL_20;
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __33__CKConversation_loadAllMessages__block_invoke;
      v12[3] = &unk_1E72F2478;
      v12[4] = self;
      [(IMChat *)chat fetchMessagesUpToLimit:limitToLoad completion:v12];
    }

    else if (!v6)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  os_activity_scope_leave(&state);
}

uint64_t __33__CKConversation_loadAllMessages__block_invoke(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2);
  *(*(a1 + 32) + 13) = 0;
  v3 = *(a1 + 32);

  return [v3 setCompletedInitialChatMessagesLoad:1];
}

- (void)fetchAllMessages:(id)messages
{
  messagesCopy = messages;
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    limitToLoad = [(CKConversation *)self limitToLoad];
    if (limitToLoad)
    {
      v6 = limitToLoad;
      v7 = limitToLoad;
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:limitToLoad];
      if (v6 != 1)
      {
        chat = self->_chat;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __35__CKConversation_fetchAllMessages___block_invoke;
        v9[3] = &unk_1E72F24A0;
        v9[4] = self;
        v10 = messagesCopy;
        [(IMChat *)chat fetchMessagesUpToLimit:v7 completion:v9];
      }
    }
  }
}

uint64_t __35__CKConversation_fetchAllMessages___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 13) = 0;
  v2 = *(a1 + 32);

  return [v2 setCompletedInitialChatMessagesLoad:1];
}

- (void)loadAllUnreadMessagesUpToMessageGUID:(id)d
{
  dCopy = d;
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    limitToLoad = [(CKConversation *)self limitToLoad];
    if (limitToLoad)
    {
      v5 = limitToLoad;
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:limitToLoad];
      if (v5 != 1)
      {
        v6 = [(IMChat *)self->_chat loadUnreadMessagesWithLimit:v5 fallbackToMessagesUpToGUID:dCopy];
      }
    }

    self->_needsReload = 0;
  }
}

- (void)loadMoreMessagesBeforeFirstMessage
{
  v3 = _os_activity_create(&dword_19020E000, "com.apple.messages.HistoryLoadMore", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v3, &v10);
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    defaultConversationLoadMoreCount = [v4 defaultConversationLoadMoreCount];

    limitToLoad = [(CKConversation *)self limitToLoad];
    if (limitToLoad)
    {
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:limitToLoad];
      if (limitToLoad != 1)
      {
        firstNonAssociatedItem = [(IMChat *)self->_chat firstNonAssociatedItem];
        guid = [firstNonAssociatedItem guid];
        v9 = [(IMChat *)self->_chat loadMessagesBeforeAndAfterGUID:guid numberOfMessagesToLoadBeforeGUID:defaultConversationLoadMoreCount numberOfMessagesToLoadAfterGUID:0 loadImmediately:1 threadIdentifier:0];
      }
    }
  }

  os_activity_scope_leave(&v10);
}

- (void)fetchMoreMessagesBeforeFirstMessage:(id)message
{
  messageCopy = message;
  v5 = _os_activity_create(&dword_19020E000, "com.apple.messages.HistoryLoadMore", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v5, &v11);
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    defaultConversationLoadMoreCount = [v6 defaultConversationLoadMoreCount];

    limitToLoad = [(CKConversation *)self limitToLoad];
    if (limitToLoad)
    {
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:limitToLoad];
      if (limitToLoad != 1)
      {
        firstNonAssociatedItem = [(IMChat *)self->_chat firstNonAssociatedItem];
        guid = [firstNonAssociatedItem guid];
        [(IMChat *)self->_chat fetchMessagesBeforeAndAfterGUID:guid numberOfMessagesToLoadBeforeGUID:defaultConversationLoadMoreCount numberOfMessagesToLoadAfterGUID:0 threadIdentifier:0 completion:messageCopy];
      }
    }
  }

  os_activity_scope_leave(&v11);
}

- (void)loadMoreMessagesAfterLastMessage
{
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    defaultConversationLoadMoreCount = [v3 defaultConversationLoadMoreCount];

    [(CKConversation *)self setLimitToLoad:[(CKConversation *)self limitToLoad]+ defaultConversationLoadMoreCount];
    limitToLoad = [(CKConversation *)self limitToLoad];
    if (limitToLoad)
    {
      v6 = limitToLoad;
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:limitToLoad];
      if (v6 != 1)
      {
        lastNonAssociatedItem = [(IMChat *)self->_chat lastNonAssociatedItem];
        guid = [lastNonAssociatedItem guid];
        v8 = [(IMChat *)self->_chat loadMessagesBeforeAndAfterGUID:guid numberOfMessagesToLoadBeforeGUID:0 numberOfMessagesToLoadAfterGUID:defaultConversationLoadMoreCount loadImmediately:1 threadIdentifier:0];
      }
    }
  }
}

- (void)fetchMoreMessagesAfterLastMessage:(id)message
{
  messageCopy = message;
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    defaultConversationLoadMoreCount = [v4 defaultConversationLoadMoreCount];

    [(CKConversation *)self setLimitToLoad:[(CKConversation *)self limitToLoad]+ defaultConversationLoadMoreCount];
    limitToLoad = [(CKConversation *)self limitToLoad];
    if (limitToLoad)
    {
      v7 = limitToLoad;
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:limitToLoad];
      if (v7 != 1)
      {
        lastNonAssociatedItem = [(IMChat *)self->_chat lastNonAssociatedItem];
        guid = [lastNonAssociatedItem guid];
        [(IMChat *)self->_chat fetchMessagesBeforeAndAfterGUID:guid numberOfMessagesToLoadBeforeGUID:0 numberOfMessagesToLoadAfterGUID:defaultConversationLoadMoreCount threadIdentifier:0 completion:messageCopy];
      }
    }
  }
}

- (NSArray)frequentReplies
{
  frequentReplies = [(IMChat *)self->_chat frequentReplies];
  v3 = frequentReplies;
  if (frequentReplies)
  {
    v4 = frequentReplies;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (void)loadFrequentReplies
{
  v14 = *MEMORY[0x1E69E9840];
  if (CKIsRunningInMessagesOrSpringBoard() || (IMIsRunningInMessagesComposeViewService() & 1) != 0 || CKIsRunningInMessagesNotificationExtension())
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(21);
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        chat = self->_chat;
        *buf = 138412546;
        v11 = chat;
        v12 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "Loading common replies for imchat %@ on conversation %@", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_CKShouldLog())
      {
        v8 = self->_chat;
        selfCopy2 = self;
        _CKLog();
      }
    }

    v5 = [CKUIBehavior sharedBehaviors:v8];
    commonRepliesLoadLimit = [v5 commonRepliesLoadLimit];

    v7 = [(IMChat *)self->_chat loadFrequentRepliesLimit:commonRepliesLoadLimit loadImmediately:1];
  }
}

- (void)loadMoreMessages
{
  v3 = +[CKUIBehavior sharedBehaviors];
  defaultConversationLoadMoreCount = [v3 defaultConversationLoadMoreCount];

  [(CKConversation *)self setLimitToLoad:[(CKConversation *)self limitToLoad]+ defaultConversationLoadMoreCount];
  if ([(CKConversation *)self hasLoadedFromSpotlight])
  {

    [(CKConversation *)self loadMoreMessagesBeforeFirstMessage];
  }

  else
  {

    [(CKConversation *)self loadAllMessages];
  }
}

- (void)fetchMoreMessages:(id)messages
{
  messagesCopy = messages;
  v4 = +[CKUIBehavior sharedBehaviors];
  defaultConversationLoadMoreCount = [v4 defaultConversationLoadMoreCount];

  [(CKConversation *)self setLimitToLoad:[(CKConversation *)self limitToLoad]+ defaultConversationLoadMoreCount];
  [(CKConversation *)self fetchMoreMessagesBeforeFirstMessage:messagesCopy];
}

- (void)setLoadedMessageCount:(unint64_t)count loadImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v23 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      limitToLoad = self->_limitToLoad;
      shortDescription = [(CKConversation *)self shortDescription];
      *buf = 67109634;
      v18 = limitToLoad;
      v19 = 2048;
      countCopy = count;
      v21 = 2112;
      v22 = shortDescription;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Setting limit to load (old: %d   new: %lu) for conversation: %@", buf, 0x1Cu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v10 = self->_limitToLoad;
    [(CKConversation *)self shortDescription];
    v16 = v15 = count;
    v14 = v10;
    _CKLogExternal();
  }

  if (self->_limitToLoad == count)
  {
    if (![(CKConversation *)self hasLoadedFromSpotlight])
    {
      if (self->_limitToLoad)
      {
        chat = [(CKConversation *)self chat];
        _items = [chat _items];
        v13 = [_items count] == 0;

        if (v13)
        {
          [(CKConversation *)self setNeedsReload];
        }
      }

      [(CKConversation *)self reloadIfNeeded:v14];
    }
  }

  else
  {
    [(CKConversation *)self setLimitToLoad:count];
    if (immediatelyCopy && ![(CKConversation *)self hasLoadedFromSpotlight])
    {
      [(CKConversation *)self loadAllMessages];
    }
  }
}

- (BOOL)_chatHasValidUnreadMessageToLoad
{
  if (!CKIsCatchUpEnabled())
  {
    return 0;
  }

  unreadMessageCount = [(IMChat *)self->_chat unreadMessageCount];
  lastSeenMessageGuid = [(IMChat *)self->_chat lastSeenMessageGuid];
  v5 = [(IMChat *)self->_chat messageForGUID:lastSeenMessageGuid];
  if (unreadMessageCount)
  {
    v6 = [lastSeenMessageGuid length] != 0;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)ensureMessageWithGUIDIsLoaded:(id)loaded
{
  loadedCopy = loaded;
  v5 = [(IMChat *)self->_chat messageForGUID:loadedCopy];
  if (!v5)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    defaultConversationViewingMessageCount = [v6 defaultConversationViewingMessageCount];

    v8 = [(IMChat *)self->_chat loadMessagesBeforeAndAfterGUID:loadedCopy numberOfMessagesToLoadBeforeGUID:defaultConversationViewingMessageCount numberOfMessagesToLoadAfterGUID:defaultConversationViewingMessageCount loadImmediately:1 threadIdentifier:0];
    v5 = [(IMChat *)self->_chat messageForGUID:loadedCopy];
    if (v5)
    {
      _sHasLoadedGuidFromSpotlight = 1;
      [(CKConversation *)self setNeedsReload];
    }

    limitToLoad = [(CKConversation *)self limitToLoad];
    messageCount = [(IMChat *)self->_chat messageCount];
    if (limitToLoad <= messageCount)
    {
      v11 = messageCount;
    }

    else
    {
      v11 = limitToLoad;
    }

    [(CKConversation *)self setLimitToLoad:v11];
  }

  return v5;
}

- (void)enumerateMessagesWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  chat = [(CKConversation *)self chat];
  chatItems = [chat chatItems];
  [chatItems enumerateMessagesWithOptions:options usingBlock:blockCopy];
}

- (void)markAllMessagesAsRead
{
  if (![MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    goto LABEL_5;
  }

  chat = [(CKConversation *)self chat];
  v4 = chat;
  if (!chat || (v6 = chat, v5 = [chat allowedByScreenTime], v4 = v6, v5))
  {

LABEL_5:
    chat2 = [(CKConversation *)self chat];
    [chat2 markAllMessagesAsRead];
    v4 = chat2;
  }
}

- (void)markLastMessageAsUnread
{
  chat = [(CKConversation *)self chat];
  [chat markLastMessageAsUnread];
}

- (void)updateLastViewedDate
{
  date = [MEMORY[0x1E695DF00] date];
  [(CKConversation *)self setDateLastViewed:date];
}

- (id)shortDescription
{
  v3 = objc_getAssociatedObject(self, "CKConversationShortDescriptionKey");
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = objc_opt_class();
    chat = [(CKConversation *)self chat];
    persistentID = [chat persistentID];
    chat2 = [(CKConversation *)self chat];
    guid = [chat2 guid];
    chat3 = [(CKConversation *)self chat];
    participants = [chat3 participants];
    v3 = [v4 initWithFormat:@"%@<%p>{identifier:'%@'  guid:'%@'}%@", v5, self, persistentID, guid, participants];

    objc_setAssociatedObject(self, "CKConversationShortDescriptionKey", v3, 1);
  }

  return v3;
}

- (int64_t)compareBySequenceNumberAndDateDescending:(id)descending
{
  descendingCopy = descending;
  date = [descendingCopy date];
  date2 = [(CKConversation *)self date];
  v7 = [date compare:date2];

  if (!v7)
  {
    v7 = [(IMChat *)self->_chat compareChatByLastFinishedMessageDate:descendingCopy[6]];
  }

  return v7;
}

- (void)setPendingComposeRecipients:(id)recipients
{
  composeRecipientHandles = [recipients composeRecipientHandles];
  [(CKConversation *)self setPendingHandles:composeRecipientHandles];
}

- (void)setPendingRecipients:(id)recipients
{
  v12 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  if (![(NSSet *)self->_pendingRecipients isEqualToSet:recipientsCopy])
  {
    objc_storeStrong(&self->_pendingRecipients, recipients);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationPendingRecipientsUpdatedNotification" object:self];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412546;
        v9 = recipientsCopy;
        v10 = 2112;
        v11 = @"CKConversationPendingRecipientsUpdatedNotification";
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Setting pending recipients to: %@ and firing notification: %@", &v8, 0x16u);
      }
    }
  }
}

- (void)setPendingHandles:(id)handles
{
  handlesCopy = handles;
  if (self->_pendingHandles != handlesCopy)
  {
    v6 = handlesCopy;
    objc_storeStrong(&self->_pendingHandles, handles);
    [(CKConversation *)self resetCaches];
    handlesCopy = v6;
  }
}

- (NSArray)pendingEntities
{
  v20 = *MEMORY[0x1E69E9840];
  pendingHandles = [(CKConversation *)self pendingHandles];
  v4 = [pendingHandles count];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    pendingHandles2 = [(CKConversation *)self pendingHandles];
    v7 = [v5 initWithCapacity:{objc_msgSend(pendingHandles2, "count")}];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    pendingHandles3 = [(CKConversation *)self pendingHandles];
    v9 = [pendingHandles3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(pendingHandles3);
          }

          v13 = [[CKEntity alloc] initWithIMHandle:*(*(&v15 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [pendingHandles3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)recipientStrings
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  recipients = [(CKConversation *)self recipients];
  v5 = [recipients countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(recipients);
        }

        rawAddress = [*(*(&v12 + 1) + 8 * i) rawAddress];
        if (rawAddress)
        {
          [v3 addObject:rawAddress];
        }
      }

      v6 = [recipients countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (NSSet)recipientNames
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  recipients = [(CKConversation *)self recipients];
  v5 = [recipients countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(recipients);
        }

        fullName = [*(*(&v12 + 1) + 8 * i) fullName];
        if (fullName)
        {
          [v3 addObject:fullName];
        }
      }

      v6 = [recipients countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (BOOL)canAcceptMediaObjectType:(int)type givenMediaObjects:(id)objects
{
  v4 = *&type;
  objectsCopy = objects;
  sendingService = [(CKConversation *)self sendingService];
  lastAddressedHandle = [(CKConversation *)self lastAddressedHandle];
  lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
  __ck_isSMS = [sendingService __ck_isSMS];
  v11 = objc_opt_class();
  if (__ck_isSMS)
  {
    v12 = [v11 _sms_canAcceptMediaObjectType:v4 givenMediaObjects:objectsCopy phoneNumber:lastAddressedHandle simID:lastAddressedSIMID];
  }

  else
  {
    v12 = [v11 _iMessage_canAcceptMediaObjectType:v4 givenMediaObjects:objectsCopy];
  }

  v13 = v12;

  return v13;
}

- (BOOL)_allowedByScreenTime
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] && (-[CKConversation chat](self, "chat"), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    chat = [(CKConversation *)self chat];
    allowedToShowConversationSync = [chat allowedToShowConversationSync];
  }

  else
  {
    allowedToShowConversationSync = 1;
  }

  return allowedToShowConversationSync & 1;
}

- (BOOL)canSendComposition:(id)composition error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  v7 = [(CKConversation *)self canSendComposition:compositionCopy forCapabilities:0x10000 error:error];
  if (error && !v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [*error localizedDescription];
        v20 = 138412290;
        v21 = localizedDescription;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Cannot send composition due to error %@", &v20, 0xCu);
      }
    }

    goto LABEL_17;
  }

  if (![(CKConversation *)self _allowedByScreenTime])
  {
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  sendingService = [(CKConversation *)self sendingService];
  isToEmailAddress = [(CKConversation *)self isToEmailAddress];
  if ([sendingService __ck_isSMS])
  {
    v12 = objc_opt_class();
    lastAddressedHandle = [(CKConversation *)self lastAddressedHandle];
    lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
    v15 = [v12 _sms_canSendComposition:compositionCopy lastAddressedHandle:lastAddressedHandle lastAddressedSIMID:lastAddressedSIMID recipientsContainEmail:isToEmailAddress error:error];
  }

  else if ([sendingService __ck_isRCS])
  {
    v16 = objc_opt_class();
    lastAddressedHandle = [(CKConversation *)self lastAddressedHandle];
    lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
    v15 = [v16 _rcs_canSendComposition:compositionCopy lastAddressedHandle:lastAddressedHandle lastAddressedSIMID:lastAddressedSIMID recipientsContainEmail:isToEmailAddress error:error];
  }

  else
  {
    if (![sendingService __ck_isMadrid])
    {
      v18 = 1;
      goto LABEL_15;
    }

    v17 = objc_opt_class();
    lastAddressedHandle = [(CKConversation *)self serviceReachabilityContext];
    lastAddressedSIMID = [(CKConversation *)self chat];
    v15 = [v17 _iMessage_canSendComposition:compositionCopy reachabilityContext:lastAddressedHandle forceSMS:objc_msgSend(lastAddressedSIMID error:{"shouldForceToSMS"), error}];
  }

  v18 = v15;

LABEL_15:
LABEL_18:

  return v18;
}

- (IMServiceReachabilityContext)serviceReachabilityContext
{
  mEMORY[0x1E69A5CA8] = [MEMORY[0x1E69A5CA8] sharedController];
  chat = [(CKConversation *)self chat];
  v5 = [mEMORY[0x1E69A5CA8] reachabilityContextForChat:chat];

  return v5;
}

- (BOOL)eligibleToSendWithMadrid
{
  v2 = MEMORY[0x1E69A5CA0];
  serviceReachabilityContext = [(CKConversation *)self serviceReachabilityContext];
  LOBYTE(v2) = [v2 iMessageEnabledForReachabilityContext:serviceReachabilityContext];

  return v2;
}

- (BOOL)canSendToRecipients:(id)recipients alertIfUnable:(BOOL)unable
{
  unableCopy = unable;
  recipientsCopy = recipients;
  sendingService = [(CKConversation *)self sendingService];
  if ([sendingService __ck_isSMS])
  {
    v8 = [(CKConversation *)self _sms_canSendToRecipients:recipientsCopy alertIfUnable:unableCopy];
  }

  else
  {
    v8 = [(CKConversation *)self _iMessage_canSendToRecipients:recipientsCopy alertIfUnable:unableCopy];
  }

  v9 = v8;

  return v9;
}

- (double)maxTrimDurationForMedia:(id)media
{
  mediaType = [media mediaType];
  sendingService = [(CKConversation *)self sendingService];
  __ck_isSMS = [sendingService __ck_isSMS];
  v7 = objc_opt_class();
  if (__ck_isSMS)
  {
    [v7 _sms_maxTrimDurationForMediaType:mediaType];
  }

  else
  {
    [v7 _iMessage_maxTrimDurationForMediaType:mediaType];
  }

  v9 = v8;

  return v9;
}

- (void)resortMessagesIfNecessary
{
  v24 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  dateLastViewed = [(CKConversation *)self dateLastViewed];
  if (dateLastViewed)
  {
    dateLastViewed2 = [(CKConversation *)self dateLastViewed];
    [date timeIntervalSinceDate:dateLastViewed2];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptResortTimeout];
    v10 = v9;

    if (v7 > v10)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          dateLastViewed3 = [(CKConversation *)self dateLastViewed];
          v13 = +[CKUIBehavior sharedBehaviors];
          [v13 transcriptResortTimeout];
          v16 = 138413058;
          selfCopy = self;
          v18 = 2112;
          v19 = dateLastViewed3;
          v20 = 2112;
          v21 = date;
          v22 = 2048;
          v23 = v14;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "re-sorting messages in conversation: %@ date last viewed: %@, date now: %@, resort timeout: %f", &v16, 0x2Au);
        }
      }

      chat = [(CKConversation *)self chat];
      [chat resortMessages];
    }
  }
}

- (id)messageWithComposition:(id)composition
{
  compositionCopy = composition;
  chat = [(CKConversation *)self chat];
  localTypingMessageGUID = [chat localTypingMessageGUID];

  sendingServiceImpl = [(CKConversation *)self sendingServiceImpl];
  if (([sendingServiceImpl shouldReuseTypingIndicatorGUID] & 1) == 0)
  {

    goto LABEL_5;
  }

  chat2 = [(CKConversation *)self chat];
  isGroupChat = [chat2 isGroupChat];

  if (isGroupChat)
  {
LABEL_5:
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];

    localTypingMessageGUID = stringGUID;
  }

  v11 = [compositionCopy messageWithGUID:localTypingMessageGUID];

  return v11;
}

- (id)messagesFromComposition:(id)composition
{
  v25 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  chat = [(CKConversation *)self chat];
  localTypingMessageGUID = [chat localTypingMessageGUID];

  sendingServiceImpl = [(CKConversation *)self sendingServiceImpl];
  if (([sendingServiceImpl shouldReuseTypingIndicatorGUID] & 1) == 0)
  {

    goto LABEL_5;
  }

  chat2 = [(CKConversation *)self chat];
  isGroupChat = [chat2 isGroupChat];

  if (isGroupChat)
  {
LABEL_5:
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];

    localTypingMessageGUID = stringGUID;
  }

  sendingService = [(CKConversation *)self sendingService];
  v12 = [compositionCopy messagesFromCompositionFirstGUIDForMessage:localTypingMessageGUID sendingService:sendingService];

  chat3 = [(CKConversation *)self chat];
  LODWORD(sendingService) = [chat3 shouldDisplayOffGridModeStatus];

  if (sendingService)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * i) setPendingSatelliteSend:{1, v20}];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  return v12;
}

- (void)retryMessage:(id)message onService:(id)service
{
  messageCopy = message;
  serviceCopy = service;
  [messageCopy setIsTapToRetry:1];
  if (([messageCopy scheduleState] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [messageCopy setScheduleState:1];
  }

  [(CKConversation *)self sendMessage:messageCopy onService:serviceCopy newComposition:0];
  [messageCopy setIsTapToRetry:0];
}

- (void)sendMessage:(id)message onService:(id)service newComposition:(BOOL)composition
{
  compositionCopy = composition;
  v61 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  serviceCopy = service;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      *buf = 138412802;
      v56 = messageCopy;
      v57 = 2112;
      if (compositionCopy)
      {
        v10 = @"YES";
      }

      v58 = serviceCopy;
      v59 = 2112;
      v60 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "sendMessage:onService:newComposition: [%@] [%@] [%@]", buf, 0x20u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    if (compositionCopy)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v46 = serviceCopy;
    v47 = v11;
    v44 = messageCopy;
    _CKLogExternal();
  }

  if ([(CKConversation *)self hasLeftGroupChat:v44])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(27);
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_DEBUG, "Failing to send message on a group chat we've left before", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
LABEL_20:
      _CKLog();
    }
  }

  else if ([(CKConversation *)self isReadOnlyChat])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(27);
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_DEBUG, "Failing to send message on a read only chat", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      goto LABEL_20;
    }
  }

  else
  {
    chat = [(CKConversation *)self chat];
    if (serviceCopy)
    {
      mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
      account = [mEMORY[0x1E69A5A80] bestAccountForService:serviceCopy];
    }

    else
    {
      account = [chat account];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    fileTransferGUIDs = [messageCopy fileTransferGUIDs];
    v17 = [fileTransferGUIDs countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v17)
    {
      v18 = *v51;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(fileTransferGUIDs);
          }

          v20 = *(*(&v50 + 1) + 8 * i);
          mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
          [mEMORY[0x1E69A5B80] assignTransfer:v20 toMessage:messageCopy account:account];
        }

        v17 = [fileTransferGUIDs countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v17);
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        guid = [messageCopy guid];
        *buf = 138412290;
        v56 = guid;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Sending message with guid: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      guid2 = [messageCopy guid];
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v56 = chat;
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "  => Chat: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      guid2 = chat;
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        account2 = [chat account];
        *buf = 138412290;
        v56 = account2;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "  => Sending account: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      guid2 = [chat account];
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        account3 = [chat account];
        displayName = [account3 displayName];
        *buf = 138412290;
        v56 = displayName;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "  => Display name: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      account4 = [chat account];
      guid2 = [account4 displayName];
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        participants = [chat participants];
        v33 = [participants componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v56 = v33;
        _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "  => Recipients: [%@]", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      participants2 = [chat participants];
      guid2 = [participants2 componentsJoinedByString:{@", "}];
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        fileTransferGUIDs2 = [messageCopy fileTransferGUIDs];
        v37 = [fileTransferGUIDs2 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v56 = v37;
        _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "  => Transfers: [%@]", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      fileTransferGUIDs3 = [messageCopy fileTransferGUIDs];
      guid2 = [fileTransferGUIDs3 componentsJoinedByString:{@", "}];
      _CKLogExternal();
    }

    [chat sendMessage:messageCopy onService:{serviceCopy, guid2}];
    chat2 = [(CKConversation *)self chat];
    if ([chat2 unreadMessageCount] && CKIsRunningInMessages())
    {
      isTypingMessage = [messageCopy isTypingMessage];

      if ((isTypingMessage & 1) == 0 && (!+[CKStarkManager isCarPlayConnected]|| !CKIsScreenLocked()))
      {
        if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            chat3 = [(CKConversation *)self chat];
            chatIdentifier = [chat3 chatIdentifier];
            *buf = 138412290;
            v56 = chatIdentifier;
            _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Marking chat %@ as read on message send ", buf, 0xCu);
          }
        }

        [(CKConversation *)self markAllMessagesAsRead];
      }
    }

    else
    {
    }

    [(CKConversation *)self _setProofReadingInfoForChat:chat withMessage:messageCopy];
  }
}

- (void)_setProofReadingInfoForChat:(id)chat withMessage:(id)message
{
  v59[2] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  messageCopy = message;
  text = [messageCopy text];
  __im_messagePartIndexes = [text __im_messagePartIndexes];
  lastIndex = [__im_messagePartIndexes lastIndex];

  v10 = [text __im_messagePartMatchingPartIndex:lastIndex];
  messagePartBody = [v10 messagePartBody];
  string = [messagePartBody string];

  v13 = [string length];
  proofreadingInfo = [chatCopy proofreadingInfo];
  v15 = *MEMORY[0x1E69A5860];
  v16 = [proofreadingInfo objectForKeyedSubscript:*MEMORY[0x1E69A5860]];

  if ([v16 count])
  {
    v49 = v10;
    v50 = messageCopy;
    v17 = string;
    proofreadingInfo2 = [chatCopy proofreadingInfo];
    v19 = [proofreadingInfo2 objectForKeyedSubscript:v15];
    v20 = [v19 objectForKeyedSubscript:@"UnderlineRanges"];

    v21 = v20;
    if ([v20 count])
    {
      guid = [v50 guid];
      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"p:%ld/%@", lastIndex, guid];
      v10 = v49;
      string = v17;
      if (lastIndex && CKIsRunningInMacCatalyst())
      {
        v46 = v21;
        v22 = [text attributedSubstringFromRange:{0, v13}];
        string2 = [v22 string];

        proofreadingInfo3 = [chatCopy proofreadingInfo];
        v25 = [proofreadingInfo3 objectForKeyedSubscript:v15];
        v26 = [v25 objectForKeyedSubscript:@"TextCorrections"];

        lastObject = [v26 lastObject];
        if (lastObject)
        {
          lastObject2 = [v46 lastObject];
          [lastObject2 rangeValue];
          v42 = v28;
          v29 = [string2 length];
          v40 = v29 - [lastObject length];
          proofreadingInfo4 = [chatCopy proofreadingInfo];
          v31 = [proofreadingInfo4 objectForKeyedSubscript:v15];
          [v31 objectForKeyedSubscript:@"ReplacedStrings"];
          v39 = v43 = v26;

          v55 = lastObject;
          v56[0] = @"TextCorrections";
          v45 = lastObject;
          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
          v57[0] = v41;
          v56[1] = @"ReplacedStrings";
          lastObject3 = [v39 lastObject];
          v54 = lastObject3;
          v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
          v57[1] = v32;
          v56[2] = @"UnderlineRanges";
          v33 = [MEMORY[0x1E696B098] valueWithRange:{v40, v42}];
          v53 = v33;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
          v57[2] = v34;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];

          lastObject = v45;
          v51[0] = *MEMORY[0x1E69A5868];
          v51[1] = v15;
          v52[0] = v48;
          v52[1] = v35;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
          [chatCopy setProofreadingInfo:v36];

          v26 = v43;
        }

        v10 = v49;
        messageCopy = v50;
        v21 = v46;
        v37 = v48;
      }

      else
      {
        v58[0] = *MEMORY[0x1E69A5868];
        v58[1] = v15;
        v37 = v48;
        v59[0] = v48;
        v59[1] = v16;
        string2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
        [chatCopy setProofreadingInfo:string2];
        messageCopy = v50;
      }
    }

    else
    {

      string = v17;
      v10 = v49;
      messageCopy = v50;
    }
  }
}

- (void)sendMessage:(id)message newComposition:(BOOL)composition
{
  compositionCopy = composition;
  v12 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v11 = compositionCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "sending message on preferred service (newComposition: %d)", buf, 8u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v9 = compositionCopy;
    _CKLog();
  }

  sendingService = [(CKConversation *)self sendingService];
  [(CKConversation *)self sendMessage:messageCopy onService:sendingService newComposition:compositionCopy];
}

- (void)retractMessagePart:(id)part
{
  partCopy = part;
  chat = [(CKConversation *)self chat];
  [chat retractMessagePart:partCopy];
}

- (void)retractScheduledMessageParts:(id)parts fromAggregateChatItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  partsCopy = parts;
  itemCopy = item;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = partsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [indexSet addIndex:{objc_msgSend(*(*(&v16 + 1) + 8 * v13++), "index", v16)}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  chat = [(CKConversation *)self chat];
  v15 = [indexSet copy];
  [chat retractScheduledMessagePartIndexes:v15 fromChatItem:itemCopy];
}

- (void)editMessageItem:(id)item partIndex:(int64_t)index withNewComposition:(id)composition
{
  compositionCopy = composition;
  itemCopy = item;
  v9 = [compositionCopy superFormatText:0];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

  v12 = 0;
  if (isAutomaticOutgoingTranslationEnabled)
  {
    superFormatTranslation = [compositionCopy superFormatTranslation];
    if (superFormatTranslation)
    {
      v14 = objc_alloc(MEMORY[0x1E69A8308]);
      sourceLanguageID = [compositionCopy sourceLanguageID];
      destinationLanguageID = [compositionCopy destinationLanguageID];
      v12 = [v14 initWithSourceLanguage:sourceLanguageID translationLanguage:destinationLanguageID translatedText:superFormatTranslation];
    }

    else
    {
      v12 = 0;
    }
  }

  v17 = [(CKConversation *)self _backwardCompatabilityTextForEditedMessagePartText:v9];
  chat = [(CKConversation *)self chat];
  [chat editMessageItem:itemCopy atPartIndex:index withNewPartText:v9 newPartTranslation:v12 backwardCompatabilityText:v17];
}

- (void)resendEditedMessageItem:(id)item forPartIndex:(int64_t)index
{
  itemCopy = item;
  body = [itemCopy body];
  v7 = [body __im_messagePartMatchingPartIndex:index];
  messagePartBody = [v7 messagePartBody];
  if ([messagePartBody length])
  {
    v9 = [(CKConversation *)self _backwardCompatabilityTextForEditedMessagePartText:messagePartBody];
  }

  else
  {
    v9 = 0;
  }

  chat = [(CKConversation *)self chat];
  [chat resendEditedMessageItem:itemCopy forPartIndex:index withBackwardCompatabilityText:v9];
}

- (void)appendTranslation:(id)translation toMessageItem:(id)item forPartIndex:(int64_t)index
{
  itemCopy = item;
  translationCopy = translation;
  chat = [(CKConversation *)self chat];
  [chat appendTranslation:translationCopy toMessageItem:itemCopy forPartIndex:index];
}

- (id)_backwardCompatabilityTextForEditedMessagePartText:(id)text
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD0E8];
  textCopy = text;
  currentInputMode = [v3 currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];

  v7 = IMSharedUtilitiesFrameworkBundle();
  v8 = MEMORY[0x1E696AAE8];
  localizations = [v7 localizations];
  v22[0] = primaryLanguage;
  preferredLocalizations = [v7 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v22[1] = firstObject;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v13 = [v8 preferredLocalizationsFromArray:localizations forPreferences:v12];
  firstObject2 = [v13 firstObject];

  v15 = [v7 localizedStringForKey:@"EDITED_MESSAGE_BACKWARD_COMPATIBILITY_EDITED" value:0 table:@"IMSharedUtilities" localization:firstObject2];
  v16 = [v7 localizedStringForKey:@"EDITED_MESSAGE_BACKWARD_COMPATIBILITY_FORMAT" value:0 table:@"IMSharedUtilities" localization:firstObject2];
  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16];
  v18 = [textCopy mutableCopy];

  [v18 removeAttribute:*MEMORY[0x1E69A5FD8] range:{0, objc_msgSend(v18, "length")}];
  v19 = [v18 copy];
  v20 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v17, v15, v19];

  return v20;
}

- (BOOL)supportsMessageEditing
{
  if ([(CKConversation *)self hasLeftGroupChat])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v11 = 0;
        v4 = "Not allowing message editing because the user is no longer a member of this group chat.";
        v5 = &v11;
LABEL_9:
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    return 0;
  }

  chat = [(CKConversation *)self chat];
  v7 = 1;
  v8 = [chat supportsCapabilities:1];

  if ((v8 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v10 = 0;
        v4 = "Not allowing message editing because the capability is not allowed.";
        v5 = &v10;
        goto LABEL_9;
      }

LABEL_10:
    }

    return 0;
  }

  return v7;
}

- (BOOL)supportsInlineAdaptiveImageGlyphs
{
  chat = [(CKConversation *)self chat];
  v3 = chat;
  if (chat)
  {
    v4 = [chat supportsCapabilities:0x400000];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)supportsSendLater
{
  recipient = [(CKConversation *)self recipient];
  defaultIMHandle = [recipient defaultIMHandle];
  matchesLoginHandleForAnyAccount = [defaultIMHandle matchesLoginHandleForAnyAccount];

  if (matchesLoginHandleForAnyAccount)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    chat = [(CKConversation *)self chat];

    if (chat)
    {
      chat2 = [(CKConversation *)self chat];
      LOBYTE(v6) = [chat2 supportsCapabilities:0x80000];
    }

    else
    {
      chat2 = [(CKConversation *)self sendingService];
      iMessageService = [MEMORY[0x1E69A5C90] iMessageService];
      v6 = chat2 == iMessageService;
    }
  }

  return v6;
}

- (BOOL)supportsEncryption
{
  chat = [(CKConversation *)self chat];
  supportsEncryption = [chat supportsEncryption];

  return supportsEncryption;
}

- (BOOL)supportsPolls
{
  v17 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPollsEnabled = [mEMORY[0x1E69A8070] isPollsEnabled];

  if (!isPollsEnabled)
  {
    goto LABEL_20;
  }

  recipient = [(CKConversation *)self recipient];
  defaultIMHandle = [recipient defaultIMHandle];
  matchesLoginHandleForAnyAccount = [defaultIMHandle matchesLoginHandleForAnyAccount];

  if (matchesLoginHandleForAnyAccount)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(27);
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_DEBUG, "[Polls] Cannot send to self", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    goto LABEL_20;
  }

  chat = [(CKConversation *)self chat];

  if (!chat)
  {
LABEL_20:
    LOBYTE(v11) = 0;
    return v11;
  }

  chat2 = [(CKConversation *)self chat];
  v11 = [chat2 supportsCapabilities:0x2000000];

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = @"NO";
      if (v11)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v16 = v13;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_DEBUG, "[Polls] Supported? %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  return v11;
}

- (void)repositionSticker:(id)sticker associatedChatItem:(id)item
{
  v14 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = stickerCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "repositionSticker: [%@]", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v11 = stickerCopy;
    _CKLogExternal();
  }

  if ([(CKConversation *)self hasLeftGroupChat])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(27);
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_DEBUG, "Failing to send message on a group chat we've left before", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
LABEL_15:
      _CKLog();
    }
  }

  else
  {
    if (![(CKConversation *)self isReadOnlyChat])
    {
      [(IMChat *)self->_chat repositionSticker:stickerCopy associatedChatItem:itemCopy];
      goto LABEL_25;
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(27);
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_DEBUG, "Failing to send message on a read only chat", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      goto LABEL_15;
    }
  }

LABEL_25:
}

- (BOOL)_allowedToSendTypingIndicators
{
  if ([(CKConversation *)self isIgnoringTypingUpdates]|| !CKIsRunningInMessagesOrSpringBoard() && !CKIsRunningInMessagesNotificationViewService() && (IMIsRunningInMessagesComposeViewService() & 1) == 0 && !CKIsRunningInMessagesNotificationExtension())
  {
    return 0;
  }

  chat = [(CKConversation *)self chat];
  supportsSendingTypingIndicators = [chat supportsSendingTypingIndicators];

  return supportsSendingTypingIndicators;
}

- (void)setLocalUserIsComposing:(id)composing
{
  composingCopy = composing;
  if ([(CKConversation *)self _allowedToSendTypingIndicators])
  {
    chat = [(CKConversation *)self chat];
    [chat setLocalUserIsComposing:composingCopy];
  }
}

- (void)setLocalUserIsComposing:(id)composing typingIndicatorIcon:(id)icon
{
  composingCopy = composing;
  iconCopy = icon;
  if ([(CKConversation *)self _allowedToSendTypingIndicators])
  {
    chat = [(CKConversation *)self chat];
    [chat setLocalUserIsComposing:composingCopy typingIndicatorData:iconCopy];
  }
}

- (NSString)localUserIsComposing
{
  chat = [(CKConversation *)self chat];
  localUserIsComposing = [chat localUserIsComposing];

  return localUserIsComposing;
}

- (void)setLocalUserIsTyping:(BOOL)typing
{
  typingCopy = typing;
  if ([(CKConversation *)self _allowedToSendTypingIndicators])
  {
    chat = [(CKConversation *)self chat];
    [chat setLocalUserIsTyping:typingCopy];
  }
}

- (BOOL)localUserIsTyping
{
  chat = [(CKConversation *)self chat];
  localUserIsTyping = [chat localUserIsTyping];

  return localUserIsTyping;
}

- (void)setLocalUserIsRecording:(BOOL)recording
{
  recordingCopy = recording;
  if ([(CKConversation *)self _allowedToSendTypingIndicators])
  {
    chat = [(CKConversation *)self chat];
    [chat setLocalUserIsRecording:recordingCopy];
  }
}

- (BOOL)localUserIsRecording
{
  chat = [(CKConversation *)self chat];
  localUserIsRecording = [chat localUserIsRecording];

  return localUserIsRecording;
}

- (void)updateUserActivity
{
  if ([(CKConversation *)self isPending])
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    [mEMORY[0x1E69A5AF8] setUserActivityForChat:0 orHandles:0];
  }

  else
  {
    mEMORY[0x1E69A5AF8] = [(CKConversation *)self chat];
    handles = [(CKConversation *)self handles];
    mEMORY[0x1E69A5AF8]2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    [mEMORY[0x1E69A5AF8]2 setUserActivityForChat:mEMORY[0x1E69A5AF8] orHandles:handles];
  }
}

- (void)_clearTypingIndicatorsIfNecessary
{
  chat = [(CKConversation *)self chat];
  localUserIsTyping = [chat localUserIsTyping];

  if (localUserIsTyping)
  {
    chat2 = [(CKConversation *)self chat];
    supportsSendingTypingIndicators = [chat2 supportsSendingTypingIndicators];

    if ((supportsSendingTypingIndicators & 1) == 0)
    {
      chat3 = [(CKConversation *)self chat];
      [chat3 setLocalUserIsTyping:0];
    }
  }
}

- (BOOL)shouldShowCharacterCount
{
  if (![(CKConversation *)self isStewieConversation])
  {
    sendingService = [(CKConversation *)self sendingService];
    recipientStrings = [(CKConversation *)self recipientStrings];
    if ([sendingService __ck_isSMS])
    {
      v6 = [(CKConversation *)self _sms_supportsCharacterCountForAddresses:recipientStrings];
    }

    else
    {
      if ([sendingService __ck_isiMessageLite] & 1) != 0 || (objc_msgSend(sendingService, "__ck_isSatelliteSMS") & 1) != 0 || (-[CKConversation chat](self, "chat"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "shouldDisplayOffGridModeStatus"), v7, (v8))
      {
        v3 = 1;
        goto LABEL_10;
      }

      v6 = [(CKConversation *)self _iMessage_supportsCharacterCountForAddresses:recipientStrings];
    }

    v3 = v6;
LABEL_10:

    return v3;
  }

  return 1;
}

- (NSAttributedString)attributedName
{
  v14 = *MEMORY[0x1E69E9840];
  recipients = [(CKConversation *)self recipients];

  if (!recipients)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      guid = [(IMChat *)self->_chat guid];
      v12 = 138412290;
      v13 = guid;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Determining conversation attributed name for chat guid: %@", &v12, 0xCu);
    }
  }

  chat = self->_chat;
  v7 = +[CKConversation isSMSSpamFilteringEnabled];
  v8 = CKBlockedIndicatorAttachment();
  v9 = [(IMChat *)chat attributedDisplayNameWithIsSpamFilteringEnabled:v7 withBlockingAttachment:v8];
  v10 = [v9 copy];

  if (!v10)
  {
LABEL_7:
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_name];
  }

  return v10;
}

- (NSString)searchDisplayName
{
  if (+[CKConversation isSMSSpamFilteringEnabled])
  {
    v3 = 65792;
  }

  else
  {
    v3 = 0x10000;
  }

  chat = self->_chat;

  return [(IMChat *)chat displayNameWithDescriptor:v3, 3];
}

- (id)nameWithRawAddresses:(BOOL)addresses
{
  addressesCopy = addresses;
  v15 = *MEMORY[0x1E69E9840];
  recipients = [(CKConversation *)self recipients];

  if (recipients)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        guid = [(IMChat *)self->_chat guid];
        v13 = 138412290;
        v14 = guid;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Determining conversation name for chat guid: %@", &v13, 0xCu);
      }
    }

    v8 = [(IMChat *)self->_chat displayNameWithRawAddress:addressesCopy isSpamFilteringEnabled:+[CKConversation isSMSSpamFilteringEnabled]];
    v9 = [v8 copy];
    name = self->_name;
    self->_name = v9;
  }

  v11 = self->_name;

  return v11;
}

- (id)displayNameForDisplayContext:(int64_t)context
{
  selfCopy = self;
  if (context == 1)
  {
    self = [(CKConversation *)self _navigationBarDisplayTitle];
  }

  else if (!context)
  {
    if ([(CKConversation *)self hasDisplayName])
    {
      [(CKConversation *)selfCopy displayName];
    }

    else
    {
      [(CKConversation *)selfCopy name];
    }
    self = ;
  }

  return self;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  chat = [(CKConversation *)self chat];
  [chat setDisplayName:nameCopy];
}

- (BOOL)isPreviewTextForAttachment
{
  chat = [(CKConversation *)self chat];
  lastFinishedMessageItem = [chat lastFinishedMessageItem];

  if (([lastFinishedMessageItem isCorrupt] & 1) != 0 || (objc_msgSend(lastFinishedMessageItem, "retractedPartIndexes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = 0;
  }

  else
  {
    chat2 = [(CKConversation *)self chat];
    lastFinishedMessage = [chat2 lastFinishedMessage];

    error = [lastFinishedMessage error];

    if (error || ([lastFinishedMessage balloonBundleID], v12 = objc_claimAutoreleasedReturnValue(), v12, v12) || (-[CKConversation chat](self, "chat"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lastFinishedMessage, "__ck_previewTextWithChat:ignorePluginContent:", v13, 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, !v15))
    {
      v7 = 0;
    }

    else
    {
      plainBody = [lastFinishedMessage plainBody];
      v17 = [plainBody stringByReplacingOccurrencesOfString:*MEMORY[0x1E69A5F00] withString:&stru_1F04268F8];
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v19 = [v17 stringByTrimmingCharactersInSet:newlineCharacterSet];

      messageSubject = [lastFinishedMessage messageSubject];
      string = [messageSubject string];

      v22 = [v19 length];
      if (v22 | [string length])
      {
        v7 = 0;
      }

      else
      {
        v7 = ([lastFinishedMessage flags] & 0x1000000) == 0;
      }
    }
  }

  return v7;
}

- (BOOL)shouldReloadPreviewTextForGeneratedAdaptiveImageGlyphWithFileTransferGUID:(id)d
{
  dCopy = d;
  chat = [(CKConversation *)self chat];
  lastFinishedMessage = [chat lastFinishedMessage];
  fileTransferGUIDs = [lastFinishedMessage fileTransferGUIDs];
  v8 = [fileTransferGUIDs containsObject:dCopy];

  if (!v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      associatedMessagePartText = [lastFinishedMessage associatedMessagePartText];
      mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __92__CKConversation_shouldReloadPreviewTextForGeneratedAdaptiveImageGlyphWithFileTransferGUID___block_invoke;
      aBlock[3] = &unk_1E72EBF70;
      v18 = mEMORY[0x1E69A5B80];
      v13 = mEMORY[0x1E69A5B80];
      v14 = _Block_copy(aBlock);
      if ([associatedMessagePartText __im_containsAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v14])
      {
        previewText = self->_previewText;
        self->_previewText = 0;

        goto LABEL_3;
      }
    }

    v10 = 0;
    goto LABEL_9;
  }

  v9 = self->_previewText;
  self->_previewText = 0;

LABEL_3:
  v10 = 1;
LABEL_9:

  return v10;
}

- (NSSet)mergedPinningIdentifiers
{
  chat = [(CKConversation *)self chat];
  mergedPinningIdentifiers = [chat mergedPinningIdentifiers];

  return mergedPinningIdentifiers;
}

- (char)buttonColor
{
  sendingService = [(CKConversation *)self sendingService];
  if ([(CKConversation *)self isStewieConversation])
  {
    __ck_displayColor = 12;
  }

  else if ([(CKConversation *)self isBusinessConversation])
  {
    __ck_displayColor = 6;
  }

  else
  {
    __ck_displayColor = [sendingService __ck_displayColor];
  }

  return __ck_displayColor;
}

- (char)outgoingBubbleColor
{
  sendingService = [(CKConversation *)self sendingService];
  if ([(CKConversation *)self isStewieConversation])
  {
    __ck_displayColor = 12;
  }

  else if ([(CKConversation *)self isBusinessConversation])
  {
    __ck_displayColor = 6;
  }

  else
  {
    __ck_displayColor = [sendingService __ck_displayColor];
  }

  return __ck_displayColor;
}

- (NSString)serviceDisplayName
{
  sendingService = [(CKConversation *)self sendingService];
  __ck_displayName = [sendingService __ck_displayName];

  return __ck_displayName;
}

- (id)_nameForHandle:(id)handle
{
  handleCopy = handle;
  if ([handleCopy isLoginIMHandle])
  {
    _displayNameWithAbbreviation = CKFrameworkBundle();
    v5 = [_displayNameWithAbbreviation localizedStringForKey:@"ME" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  _displayNameWithAbbreviation = [handleCopy _displayNameWithAbbreviation];
  if ([_displayNameWithAbbreviation length])
  {
    v5 = _displayNameWithAbbreviation;
    _displayNameWithAbbreviation = v5;
    goto LABEL_5;
  }

  v8 = CKFrameworkBundle();
  v6 = [v8 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];

LABEL_6:

  return v6;
}

- (id)_headerTitleForService:(id)service shouldListParticipants:(BOOL)participants
{
  serviceCopy = service;
  handles = [(CKConversation *)self handles];
  v8 = [handles count];
  __ck_isSMS = [serviceCopy __ck_isSMS];

  if (!__ck_isSMS)
  {
    if ([handles count] < 2)
    {
      businessHandle = [(CKConversation *)self businessHandle];

      if (businessHandle)
      {
        [(CKConversation *)self businessHandle];
      }

      else
      {
        [handles lastObject];
      }
      displayName = ;
      name = [(CKConversation *)self _nameForHandle:displayName];
    }

    else
    {
      displayName = [(CKConversation *)self displayName];
      if ([(CKConversation *)self hasDisplayName])
      {
        goto LABEL_23;
      }

      if (!participants)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = CKFrameworkBundle();
        v21 = [v20 localizedStringForKey:@"GROUP_PEOPLE_COUNT" value:&stru_1F04268F8 table:@"ChatKit"];
        lastAddressedSIMID = [v19 localizedStringWithFormat:v21, v8];

        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection == 1)
        {
          v24 = @"\u200F";
        }

        else
        {
          v24 = @"\u200E";
        }

        name2 = [(__CFString *)v24 stringByAppendingString:lastAddressedSIMID];
        goto LABEL_30;
      }

      name = [(CKConversation *)self name];
    }

    v17 = name;
    goto LABEL_22;
  }

  displayName = [(CKConversation *)self lastAddressedHandle];
  lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
  if ([MEMORY[0x1E69A5CA0] mmsEnabledforPhoneNumber:displayName simID:lastAddressedSIMID] && objc_msgSend(handles, "count") >= 2 && objc_msgSend(MEMORY[0x1E69A7F58], "IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:simID:", displayName, lastAddressedSIMID))
  {
    if (participants)
    {
      name2 = [(CKConversation *)self name];
LABEL_30:
      v17 = name2;
      goto LABEL_18;
    }

    v25 = MEMORY[0x1E696AEC0];
    v26 = CKFrameworkBundle();
    v27 = [v26 localizedStringForKey:@"GROUP_PEOPLE_COUNT" value:&stru_1F04268F8 table:@"ChatKit"];
    lastObject = [v25 localizedStringWithFormat:v27, v8];

    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection2 == 1)
    {
      v30 = @"\u200F";
    }

    else
    {
      v30 = @"\u200E";
    }

    v15 = [(__CFString *)v30 stringByAppendingString:lastObject];
  }

  else
  {
    if ([handles count] < 2)
    {
      lastObject = [handles lastObject];
      [(CKConversation *)self _nameForHandle:lastObject];
    }

    else
    {
      lastObject = CKFrameworkBundle();
      [lastObject localizedStringForKey:@"OUTGOING" value:&stru_1F04268F8 table:@"ChatKit"];
    }
    v15 = ;
  }

  v17 = v15;

LABEL_18:
LABEL_22:

  displayName = v17;
LABEL_23:

  return displayName;
}

- (id)_headerTitleForPendingMediaObjects:(id)objects subject:(id)subject onService:(id)service
{
  serviceCopy = service;
  if ([(CKConversation *)self isBusinessConversation])
  {
    businessHandle = [(CKConversation *)self businessHandle];
    name = [businessHandle name];
LABEL_5:
    v9 = name;
    goto LABEL_18;
  }

  if ([serviceCopy __ck_isiMessage])
  {
    businessHandle = CKFrameworkBundle();
    name = [businessHandle localizedStringForKey:@"NEW_MADRID_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    goto LABEL_5;
  }

  businessHandle = [(CKConversation *)self pendingHandles];
  lastAddressedHandle = [(CKConversation *)self lastAddressedHandle];
  lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
  if ([serviceCopy __ck_isRCS] && objc_msgSend(businessHandle, "count") >= 2)
  {
    mEMORY[0x1E69A7F50] = [MEMORY[0x1E69A7F50] sharedManager];
    v13 = [mEMORY[0x1E69A7F50] groupMessagingEnabledForPhoneNumber:lastAddressedHandle simID:lastAddressedSIMID];

    goto LABEL_13;
  }

  if ([serviceCopy __ck_isSMS] && objc_msgSend(MEMORY[0x1E69A5CA0], "mmsEnabledforPhoneNumber:simID:", lastAddressedHandle, lastAddressedSIMID) && objc_msgSend(businessHandle, "count") >= 2)
  {
    v13 = [MEMORY[0x1E69A7F58] IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:lastAddressedHandle simID:lastAddressedSIMID];
LABEL_13:
    v14 = CKFrameworkBundle();
    v15 = v14;
    if (v13)
    {
      v16 = @"NEW_GROUP_MESSAGE";
    }

    else
    {
      v16 = @"NEW_BROADCAST_MESSAGE";
    }

    goto LABEL_17;
  }

  v14 = CKFrameworkBundle();
  v15 = v14;
  v16 = @"NEW_MESSAGE";
LABEL_17:
  v9 = [v14 localizedStringForKey:v16 value:&stru_1F04268F8 table:@"ChatKit"];

LABEL_18:

  return v9;
}

- (id)displayNameForMediaObjects:(id)objects subject:(id)subject shouldListParticipants:(BOOL)participants
{
  participantsCopy = participants;
  objectsCopy = objects;
  subjectCopy = subject;
  sendingService = [(CKConversation *)self sendingService];
  if ([(CKConversation *)self isPending])
  {
    [(CKConversation *)self _headerTitleForPendingMediaObjects:objectsCopy subject:subjectCopy onService:sendingService];
  }

  else
  {
    [(CKConversation *)self _headerTitleForService:sendingService shouldListParticipants:participantsCopy];
  }
  v11 = ;

  return v11;
}

- (id)copyForPendingConversation
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [CKPendingConversation alloc];
  chat = [(CKConversation *)self chat];
  v5 = [(CKConversation *)v3 initWithChat:chat];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      chat2 = [(CKConversation *)self chat];
      v9 = 138412290;
      v10 = chat2;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Created pending conversation for chat: %@", &v9, 0xCu);
    }
  }

  return v5;
}

- (BOOL)deletingIncomingMessages
{
  chat = [(CKConversation *)self chat];
  isDeletingIncomingMessages = [chat isDeletingIncomingMessages];

  return isDeletingIncomingMessages;
}

- (void)updateDeletingIncomingMessages:(BOOL)messages
{
  messagesCopy = messages;
  chat = [(CKConversation *)self chat];
  [chat setDeletingIncomingMessages:messagesCopy];
}

- (void)updateWasKnownSender
{
  if ([(CKConversation *)self _unknownFilteringEnabled])
  {
    _conversationList = [(CKConversation *)self _conversationList];
    isHoldingWasKnownSenderUpdates = [_conversationList isHoldingWasKnownSenderUpdates];

    if ((isHoldingWasKnownSenderUpdates & 1) == 0)
    {
      self->_wasKnownSender = [(CKConversation *)self isKnownSender];
    }
  }
}

- (BOOL)inUnknownSendersFilter
{
  chat = [(CKConversation *)self chat];
  inUnknownSendersFilter = [chat inUnknownSendersFilter];

  return inUnknownSendersFilter;
}

- (NSString)conversationListCollectionViewPinnedItemIdentifier
{
  conversationListCollectionViewPinnedItemIdentifier = self->_conversationListCollectionViewPinnedItemIdentifier;
  if (!conversationListCollectionViewPinnedItemIdentifier)
  {
    chat = [(CKConversation *)self chat];
    guid = [chat guid];
    v6 = guid;
    v7 = &stru_1F04268F8;
    if (guid)
    {
      v7 = guid;
    }

    v8 = v7;

    v9 = [@"pinned-" stringByAppendingString:v8];

    v10 = self->_conversationListCollectionViewPinnedItemIdentifier;
    self->_conversationListCollectionViewPinnedItemIdentifier = v9;

    conversationListCollectionViewPinnedItemIdentifier = self->_conversationListCollectionViewPinnedItemIdentifier;
  }

  return conversationListCollectionViewPinnedItemIdentifier;
}

- (NSString)conversationListCollectionViewJunkItemIdentifier
{
  conversationListCollectionViewJunkItemIdentifier = self->_conversationListCollectionViewJunkItemIdentifier;
  if (!conversationListCollectionViewJunkItemIdentifier)
  {
    chat = [(CKConversation *)self chat];
    guid = [chat guid];
    v6 = guid;
    v7 = &stru_1F04268F8;
    if (guid)
    {
      v7 = guid;
    }

    v8 = v7;

    v9 = [@"junk-" stringByAppendingString:v8];

    v10 = self->_conversationListCollectionViewJunkItemIdentifier;
    self->_conversationListCollectionViewJunkItemIdentifier = v9;

    conversationListCollectionViewJunkItemIdentifier = self->_conversationListCollectionViewJunkItemIdentifier;
  }

  return conversationListCollectionViewJunkItemIdentifier;
}

- (NSString)conversationListCollectionViewRecentlyDeletedListItemIdentifier
{
  conversationListCollectionViewRecentlyDeletedListItemIdentifier = self->_conversationListCollectionViewRecentlyDeletedListItemIdentifier;
  if (!conversationListCollectionViewRecentlyDeletedListItemIdentifier)
  {
    chat = [(CKConversation *)self chat];
    guid = [chat guid];
    v6 = guid;
    v7 = &stru_1F04268F8;
    if (guid)
    {
      v7 = guid;
    }

    v8 = v7;

    v9 = [@"recoverable-" stringByAppendingString:v8];

    v10 = self->_conversationListCollectionViewRecentlyDeletedListItemIdentifier;
    self->_conversationListCollectionViewRecentlyDeletedListItemIdentifier = v9;

    conversationListCollectionViewRecentlyDeletedListItemIdentifier = self->_conversationListCollectionViewRecentlyDeletedListItemIdentifier;
  }

  return conversationListCollectionViewRecentlyDeletedListItemIdentifier;
}

- (void)prepareForRecoverableDeletionWithDeleteDate:(id)date
{
  v16 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dateCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "moving all messages before date: %@ to recently deleted", &v14, 0xCu);
    }
  }

  chat = [(CKConversation *)self chat];
  if ([chat isBusinessChat])
  {
    [chat deleteExtensionPayloadData];
  }

  if (![(CKConversation *)self isGroupConversation])
  {
    recipient = [(CKConversation *)self recipient];
    rawAddress = [recipient rawAddress];
    v9 = rawAddress == 0;

    if (!v9)
    {
      v10 = objc_alloc_init(CKDetailsContactsManager);
      recipient2 = [(CKConversation *)self recipient];
      rawAddress2 = [recipient2 rawAddress];
      [(CKDetailsContactsManager *)v10 setPreferredCallService:0 forID:rawAddress2];
    }
  }

  v13 = +[CKDraftManager sharedInstance];
  [v13 setDraft:0 forConversation:self];

  [(CKConversation *)self _invalidateApplicationSnapshotIfNeeded];
}

- (void)recoverableDeleteAllMessagesGivenDeleteDate:(id)date
{
  v8[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  [(CKConversation *)self prepareForRecoverableDeletionWithDeleteDate:dateCopy];
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  chat = [(CKConversation *)self chat];
  v8[0] = chat;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [mEMORY[0x1E69A5AF8] moveMessagesInChatsToRecentlyDeleted:v7 deleteDate:dateCopy synchronously:0 completionHandler:&__block_literal_global_528_0];
}

void __62__CKConversation_recoverableDeleteAllMessagesGivenDeleteDate___block_invoke()
{
  v0 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [v0 updateRecoverableMessagesMetadataSynchronously:0 completionHandler:0];
}

- (void)_invalidateApplicationSnapshotIfNeeded
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[CKConversation _invalidateApplicationSnapshotIfNeeded]";
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%s requesting purge of default snapshot", &v4, 0xCu);
    }
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D41A0]);
  [v3 deleteSnapshotsForApplicationIdentifier:@"com.apple.MobileSMS"];
  [v3 invalidate];
}

- (id)recipientEmailAddresses
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  recipientStrings = [(CKConversation *)self recipientStrings];
  v5 = [recipientStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(recipientStrings);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (IMStringIsEmail())
        {
          [array addObject:v9];
        }
      }

      v6 = [recipientStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [array copy];

  return v10;
}

- (id)recipientPhoneNumbers
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  recipientStrings = [(CKConversation *)self recipientStrings];
  v5 = [recipientStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(recipientStrings);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (MEMORY[0x193AF5D40](v9))
        {
          [array addObject:v9];
        }
      }

      v6 = [recipientStrings countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [array copy];

  return v10;
}

- (id)contactNameByHandle
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  recipients = [(CKConversation *)self recipients];
  v5 = [recipients countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(recipients);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        defaultIMHandle = [v9 defaultIMHandle];
        v11 = [defaultIMHandle ID];

        fullName = [v9 fullName];
        if ([fullName length] && objc_msgSend(v11, "length"))
        {
          [dictionary setObject:fullName forKeyedSubscript:v11];
        }
      }

      v6 = [recipients countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (BOOL)allowsMentions
{
  v3 = +[CKUIBehavior sharedBehaviors];
  platformSupportsMentioning = [v3 platformSupportsMentioning];

  if (!platformSupportsMentioning)
  {
    return 0;
  }

  chat = [(CKConversation *)self chat];

  if (chat)
  {
    chat2 = [(CKConversation *)self chat];
    v7 = [chat2 supportsCapabilities:128];

    return v7;
  }

  sendingService = [(CKConversation *)self sendingService];
  if ([sendingService __ck_isSMS])
  {
    isGroupConversation = [(CKConversation *)self isGroupConversation];

    if (!isGroupConversation)
    {
      return 0;
    }
  }

  else
  {
  }

  if ([(CKConversation *)self isStewieConversation])
  {
    return 0;
  }

  return ![(CKConversation *)self isBusinessConversation];
}

- (void)updateKeyTransparencyStatusForChatParticipantsDidChange:(id)change
{
  v16 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  if (isKeyTransparencyEnabled)
  {
    ktStatus = [changeCopy ktStatus];
    [changeCopy fetchKTStatus];
    v8 = [changeCopy keyTransparencyStatusForAffectedHandles:0];
    if (ktStatus != v8)
    {
      v9 = v8;
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = 134218240;
          v13 = ktStatus;
          v14 = 2048;
          v15 = v9;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "chat participants changed status %lu->%lu: sending status change notification", &v12, 0x16u);
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter __mainThreadPostNotificationName:*MEMORY[0x1E69A5810] object:self];
    }
  }
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  handlerCopy = handler;
  chat = [(CKConversation *)self chat];
  guid = [chat guid];
  v8 = [guid dataUsingEncoding:4];

  handlerCopy[2](handlerCopy, v8, 0);
  return 0;
}

+ (BOOL)_iMessage_canAcceptMediaObjectType:(int)type givenMediaObjects:(id)objects
{
  v20 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  memset(v19, 0, 44);
  ++*(v19 + type);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [objectsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(objectsCopy);
        }

        mediaType = [*(*(&v14 + 1) + 8 * i) mediaType];
        ++*(v19 + mediaType);
      }

      v8 = [objectsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [self _iMessage_canSendMessageWithMediaObjectTypes:v19];

  return v12;
}

+ (BOOL)_iMessage_canSendMessageWithMediaObjectTypes:(int *)types errorCode:(int64_t *)code
{
  v5 = 0;
  v6 = 0;
  v25 = *MEMORY[0x1E69E9840];
  do
  {
    v6 += types[v5++];
  }

  while (v5 != 11);
  _iMessage_maxAttachmentCount = [self _iMessage_maxAttachmentCount];
  if (_iMessage_maxAttachmentCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v10 = _iMessage_maxAttachmentCount;
    v9 = v6 <= _iMessage_maxAttachmentCount;
    if (v6 > _iMessage_maxAttachmentCount)
    {
      v8 = 2001;
    }

    else
    {
      v8 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(24);
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = @"NO";
        *buf = 138412802;
        if (v6 <= v10)
        {
          v12 = @"YES";
        }

        v20 = v12;
        v21 = 2048;
        v22 = v6;
        v23 = 2048;
        v24 = v10;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_DEBUG, "(iMessage) Accept: %@: total count: %ld, max attachment count: %ld", buf, 0x20u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(24);
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = @"NO";
      if (v9)
      {
        v14 = @"YES";
      }

      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_DEBUG, "(iMessage) Accept: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  if (code)
  {
    v15 = v9;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(24);
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v20 = v8;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "(iMessage) Error code: %ld", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    *code = v8;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(24);
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_DEBUG, "---------", buf, 2u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  return v9;
}

+ (BOOL)_iMessage_canSendComposition:(id)composition reachabilityContext:(id)context forceSMS:(BOOL)s error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  contextCopy = context;
  if (CKIsRunningInFullCKClient() && !CKIsRunningUnitTests() && !CKIsRunningUITests() && !CKIsRunningForDevelopmentOnSimulator())
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    if ([mEMORY[0x1E69DC668] isRunningTest])
    {
    }

    else
    {
      v12 = [MEMORY[0x1E69A5CA0] iMessageEnabledForReachabilityContext:contextCopy];

      if (!v12)
      {
        v19 = 3001;
        if (!error)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }
  }

  memset(v28, 0, 44);
  mediaObjects = [compositionCopy mediaObjects];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [mediaObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(mediaObjects);
        }

        mediaType = [*(*(&v23 + 1) + 8 * i) mediaType];
        ++v28[mediaType];
      }

      v15 = [mediaObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  if ([mediaObjects count])
  {
    v22 = 0;
    v12 = [self _iMessage_canSendMessageWithMediaObjectTypes:v28 errorCode:&v22];
    if (v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = v22;
    }
  }

  else
  {
    v19 = 0;
    LOBYTE(v12) = 1;
  }

  if (error)
  {
LABEL_21:
    if ((v12 & 1) == 0)
    {
      v20 = [self _iMessage_localizedErrorForReason:v19];
      if (v20)
      {
        v20 = v20;
        *error = v20;
      }
    }
  }

LABEL_25:

  return v12;
}

+ (id)_iMessage_localizedErrorForReason:(int64_t)reason
{
  reasonCopy = reason;
  v16 = *MEMORY[0x1E69E9840];
  switch(reason)
  {
    case 0:
      goto LABEL_30;
    case 2001:
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(44);
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v15 = 2001;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_DEBUG, "iMessage: Not handing back error for too many attachments: %ld", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v13 = 2001;
        _CKLog();
      }

      break;
    case 3001:
      v4 = CKFrameworkBundle();
      v5 = [v4 localizedStringForKey:@"ERR_NEED_IMESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

      goto LABEL_20;
    default:
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(44);
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v15 = reasonCopy;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "iMessage: Not handing back error with: %ld", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v13 = reasonCopy;
        _CKLog();
      }

      break;
  }

  v5 = 0;
LABEL_20:
  v8 = CKShowInternalErrors();
  v9 = v8;
  if (v5 || v8)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v5)
    {
      if (v9)
      {
        reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[INTERNAL]\niMessage Content Error: %ld", v5, reasonCopy];

        v5 = reasonCopy;
      }

      [v10 setObject:v5 forKey:{*MEMORY[0x1E696A578], v13}];
    }

    else
    {
      v5 = 0;
    }

    reasonCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"CKMessageContentErrorDomain" code:reasonCopy userInfo:{v10, v13}];
  }

  else
  {
    reasonCopy = 0;
    v5 = 0;
  }

LABEL_30:

  return reasonCopy;
}

+ (unint64_t)_iMessage_maxTransferFileSizeForWiFi:(BOOL)fi
{
  fiCopy = fi;
  v9 = 0;
  v10 = 0;
  if (!CKIsRunningInMessages() && (IMIsRunningInMessagesComposeViewService() & 1) == 0 && !CKIsRunningInMessagesNotificationViewService() && !CKIsRunningInMessagesNotificationExtension() || (v4 = MEMORY[0x1E69A7F58], [MEMORY[0x1E699BEA8] sharedInstanceForBagType:{1, v9}], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "IMiMessageMaxTransferFileSizeForWifiForPhoneNumber:cellSize:serverConfigurationBag:phoneNumber:simID:", &v10, &v9, v5, 0, 0), v5, (v6 = v10) == 0))
  {
    v6 = 10485760;
  }

  v7 = v9;
  if (!v9)
  {
    v7 = 0x200000;
  }

  if (fiCopy)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

+ (double)_iMessage_maxTrimDurationForMediaType:(int)type
{
  v3 = *&type;
  v21 = *MEMORY[0x1E69E9840];
  if (_iMessage_maxTrimDurationForMediaType___pred_CMTimeGetSecondsCoreMedia != -1)
  {
    +[CKConversation(Content_Utilities) _iMessage_maxTrimDurationForMediaType:];
  }

  v5 = MEMORY[0x1E695DF20];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_iMessage_maxTransferFileSizeForWiFi:", 1)}];
  v7 = [v5 dictionaryWithObject:v6 forKey:@"fileLengthLimit"];

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(19);
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v20) = v3;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_DEBUG, "maxTrimDurationForMediaType: %d", buf, 8u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v18 = v3;
    _CKLog();
  }

  if ((v3 - 3) >= 9 && v3)
  {
    if (v3 == 2)
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(19);
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "video!", buf, 2u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog();
      }

      v17 = _iMessage_maxTrimDurationForMediaType___CMTimeGetSeconds;
      [MEMORY[0x1E6987E60] maximumDurationForPreset:*MEMORY[0x1E6987328] properties:{v7, v18}];
      v15 = v17(buf);
    }

    else
    {
      v10 = 0.0;
      if (v3 != 1)
      {
        goto LABEL_19;
      }

      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(19);
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_DEBUG, "audio!", buf, 2u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog();
      }

      v14 = _iMessage_maxTrimDurationForMediaType___CMTimeGetSeconds;
      [MEMORY[0x1E6987E60] maximumDurationForPreset:*MEMORY[0x1E6987330] properties:{v7, v18}];
      v14(buf);
    }

    v10 = v15;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_DEBUG, "default/unsupported mediaType!", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v10 = 9.22337204e18;
  }

LABEL_19:
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(19);
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v20 = v10;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_DEBUG, "Max trim answer: %f", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  return v10;
}

void *__75__CKConversation_Content_Utilities___iMessage_maxTrimDurationForMediaType___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CMTimeGetSeconds", @"CoreMedia");
  _iMessage_maxTrimDurationForMediaType___CMTimeGetSeconds = result;
  return result;
}

+ (BOOL)_sms_mediaObjectPassesRestriction:(id)restriction
{
  v30 = *MEMORY[0x1E69E9840];
  restrictionCopy = restriction;
  data = [restrictionCopy data];
  v5 = [data length];

  if ([restrictionCopy mediaType] == 3)
  {
    v6 = MEMORY[0x1E69DCAB8];
    data2 = [restrictionCopy data];
    v8 = [v6 ckImageWithData:data2];

    [v8 size];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  mimeType = [restrictionCopy mimeType];
  CanBeSent = IMMMSPartCanBeSent();

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(24);
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      if (CanBeSent)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      mimeType2 = [restrictionCopy mimeType];
      v31.width = v10;
      v31.height = v12;
      v18 = NSStringFromCGSize(v31);
      *buf = 138413058;
      v23 = v16;
      v24 = 2112;
      v25 = mimeType2;
      v26 = 2048;
      v27 = v5;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_DEBUG, "(MMS) Accept: %@ (MIME Type: %@, length %lu, sz %@)", buf, 0x2Au);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    mimeType3 = [restrictionCopy mimeType];
    v32.width = v10;
    v32.height = v12;
    v21 = NSStringFromCGSize(v32);
    _CKLog();
  }

  return CanBeSent;
}

- (BOOL)_sms_willSendMMSByDefaultForAddresses:(id)addresses
{
  addressesCopy = addresses;
  v5 = MEMORY[0x1E69A5CA0];
  lastAddressedHandle = [(CKConversation *)self lastAddressedHandle];
  lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
  LODWORD(v5) = [v5 mmsEnabledforPhoneNumber:lastAddressedHandle simID:lastAddressedSIMID];

  if (v5 && [addressesCopy count] && (objc_msgSend(addressesCopy, "count") != 1 || (objc_msgSend(addressesCopy, "lastObject"), v8 = objc_claimAutoreleasedReturnValue(), IsEmail = IMStringIsEmail(), v8, IsEmail)))
  {
    if ([addressesCopy count] < 2)
    {
      v13 = 1;
    }

    else
    {
      v10 = MEMORY[0x1E69A7F58];
      lastAddressedHandle2 = [(CKConversation *)self lastAddressedHandle];
      lastAddressedSIMID2 = [(CKConversation *)self lastAddressedSIMID];
      v13 = [v10 IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:lastAddressedHandle2 simID:lastAddressedSIMID2];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

+ (BOOL)_sms_canSendMessageWithMediaObjectTypes:(int *)types phoneNumber:(id)number simID:(id)d errorCode:(int64_t *)code
{
  *&v51[13] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  v12 = 0;
  LODWORD(v13) = 0;
  do
  {
    v13 = types[v12++] + v13;
  }

  while (v12 != 11);
  v14 = [self _sms_maxAttachmentCountForPhoneNumber:numberCopy simID:dCopy];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v15 = v14;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(24);
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *&v17 = COERCE_DOUBLE(@"YES");
      *buf = 138412802;
      if (v15 < v13)
      {
        *&v17 = COERCE_DOUBLE(@"NO");
      }

      v49 = *&v17;
      v50 = 1024;
      *v51 = v13;
      v51[2] = 2048;
      *&v51[3] = v15;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "(MMS) Accept: %@: total count: %d, max attachment count: %ld", buf, 0x1Cu);
    }
  }

  if (!os_log_shim_legacy_logging_enabled() || !_CKShouldLog())
  {
    if (v15 >= v13)
    {
      goto LABEL_15;
    }

LABEL_19:
    v21 = 0;
    v19 = 2001;
    goto LABEL_63;
  }

  v18 = @"YES";
  if (v15 < v13)
  {
    v18 = @"NO";
  }

  v44 = v13;
  v47 = v15;
  v43 = v18;
  _CKLog();
  if (v15 < v13)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (types[1] >= 1)
  {
    if (v13 <= 1)
    {
      *&v19 = 0.0;
      v20 = 1;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *&v19 = 0.0;
  v20 = 1;
  if (types[2] >= 1 && v13 > 1)
  {
LABEL_22:
    v20 = 0;
    v19 = 2004;
  }

LABEL_23:
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(24);
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *&v23 = COERCE_DOUBLE(@"NO");
      if (v20)
      {
        *&v23 = COERCE_DOUBLE(@"YES");
      }

      v24 = types[1];
      v25 = types[2];
      *buf = 138412802;
      v49 = *&v23;
      v50 = 1024;
      *v51 = v13;
      v51[2] = 1024;
      *&v51[3] = v25 + v24;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_DEBUG, "(MMS) Accept: %@: total count: %d, avCount: %d", buf, 0x18u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v26 = @"NO";
    if (v20)
    {
      v26 = @"YES";
    }

    v44 = v13;
    v47 = (types[2] + types[1]);
    v43 = v26;
    _CKLog();
    if ((v20 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (!v20)
  {
LABEL_34:
    v21 = 0;
    goto LABEL_63;
  }

  *&v27 = [MEMORY[0x1E69A7F58] IMMMSMaximumMessageByteCountForPhoneNumber:numberCopy simID:{dCopy, v43, v44, v47}];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(24);
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v49 = v27;
      _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_DEBUG, "(MMS) Max Message Byte Count: %lld", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(24);
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v49 = SLODWORD(v27) * 0.95;
      _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_DEBUG, "(MMS) Max Message Byte Count (less backoff): %f", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  v30 = SLODWORD(v27) * 0.95 / 10240.0;
  v31 = floorf(v30);
  if (v31 < 1.0)
  {
    v31 = 1.0;
  }

  v32 = v31;
  v33 = types[3];
  v21 = v33 <= v31;
  if (v33 > v31)
  {
    v19 = 2002;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(24);
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *&v35 = COERCE_DOUBLE(@"NO");
      *buf = 138412802;
      if (v33 <= v32)
      {
        *&v35 = COERCE_DOUBLE(@"YES");
      }

      v49 = *&v35;
      v50 = 1024;
      *v51 = v32;
      v51[2] = 1024;
      *&v51[3] = v33;
      _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_DEBUG, "(MMS) Accept: %@: maximumImageCount: %d, asked for %d", buf, 0x18u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

LABEL_63:
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(24);
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      if (v21)
      {
        *&v37 = COERCE_DOUBLE(@"YES");
      }

      else
      {
        *&v37 = COERCE_DOUBLE(@"NO");
      }

      v38 = CKErrorStringForCKMessageContentError(v19);
      *buf = 138412546;
      v49 = *&v37;
      v50 = 2112;
      *v51 = v38;
      _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_DEBUG, "(MMS) Accept: %@ reason [%@]", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v45 = CKErrorStringForCKMessageContentError(v19);
    _CKLog();
  }

  if (code)
  {
    v39 = v21;
  }

  else
  {
    v39 = 1;
  }

  if ((v39 & 1) == 0)
  {
    *code = v19;
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(24);
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v41 = CKErrorStringForCKMessageContentError(v19);
        *buf = 134218242;
        v49 = *&v19;
        v50 = 2112;
        *v51 = v41;
        _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_DEBUG, "Error code: %ld description: %@", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v46 = CKErrorStringForCKMessageContentError(v19);
      _CKLog();
    }
  }

  return v21;
}

+ (BOOL)_sms_canAcceptMediaObjectType:(int)type givenMediaObjects:(id)objects phoneNumber:(id)number simID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  numberCopy = number;
  dCopy = d;
  memset(v25, 0, 44);
  ++*(v25 + type);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [objectsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(objectsCopy);
        }

        mediaType = [*(*(&v20 + 1) + 8 * i) mediaType];
        ++*(v25 + mediaType);
      }

      v14 = [objectsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [self _sms_canSendMessageWithMediaObjectTypes:v25 phoneNumber:numberCopy simID:dCopy];

  return v18;
}

+ (BOOL)_sms_canSendComposition:(id)composition lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d recipientsContainEmail:(BOOL)email skipMMSCheck:(BOOL)check error:(id *)error
{
  emailCopy = email;
  v75 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  handleCopy = handle;
  dCopy = d;
  v49 = [MEMORY[0x1E69A5CA0] mmsEnabledforPhoneNumber:handleCopy simID:dCopy];
  v53 = handleCopy;
  v54 = dCopy;
  v14 = [MEMORY[0x1E69A7F58] IMMMSRestrictedModeEnabledForPhoneNumber:handleCopy simID:dCopy];
  memset(v74, 0, 44);
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(24);
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = @"NO";
      if (v14)
      {
        v16 = @"YES";
      }

      *buf = 138412290;
      *&buf[4] = v16;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_DEBUG, "(MMS) Restricted Mode Enabled [%@]", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v17 = @"NO";
    if (v14)
    {
      v17 = @"YES";
    }

    v48 = v17;
    _CKLog();
  }

  shelfPluginPayload = [compositionCopy shelfPluginPayload];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = shelfPluginPayload;
  if ((isKindOfClass & 1) == 0)
  {
    v19 = 0;
  }

  v56 = v19;
  shouldSendAsMediaObject = [v56 shouldSendAsMediaObject];
  if (shouldSendAsMediaObject)
  {
    mediaObjectFromPayload = [v56 mediaObjectFromPayload];
    v22 = [compositionCopy compositionByAppendingMediaObject:mediaObjectFromPayload];

    v23 = v22;
  }

  else
  {
    v23 = compositionCopy;
  }

  v55 = v23;
  mediaObjects = [v23 mediaObjects];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v25 = 0;
  v26 = 0;
  v27 = [mediaObjects countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v27)
  {
    v28 = *v67;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v67 != v28)
        {
          objc_enumerationMutation(mediaObjects);
        }

        mediaType = [*(*(&v66 + 1) + 8 * i) mediaType];
        ++*(v74 + mediaType);
        v26 |= mediaType == 2;
        v25 |= mediaType == 7;
      }

      v27 = [mediaObjects countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v27);
  }

  if ([mediaObjects count])
  {
    v31 = 1;
  }

  else
  {
    v31 = shouldSendAsMediaObject;
  }

  if (v31)
  {
    v32 = 1;
  }

  else
  {
    subject = [v55 subject];
    v32 = [subject length] != 0;
  }

  if (v25)
  {
    LOBYTE(v34) = 0;
    v35 = 2003;
  }

  else
  {
    LOBYTE(v34) = 1;
    if (!emailCopy && !v32 || check)
    {
      goto LABEL_56;
    }

    v34 = v49;
    if (v49)
    {
      v35 = 0;
    }

    else
    {
      v35 = 3000;
    }

    if ((v49 & v31) == 1)
    {
      *buf = 0;
      v34 = [self _sms_canSendMessageWithMediaObjectTypes:v74 phoneNumber:v53 simID:v54 errorCode:buf];
      if (v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = *buf;
      }
    }

    if ((v31 & v34 & v14) == 1)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v37 = mediaObjects;
      v38 = [v37 countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v38)
      {
        v39 = *v63;
        while (2)
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v63 != v39)
            {
              objc_enumerationMutation(v37);
            }

            if (![self _sms_mediaObjectPassesRestriction:*(*(&v62 + 1) + 8 * j)])
            {
              v34 = 0;
              v35 = 2003;
              goto LABEL_58;
            }
          }

          v38 = [v37 countByEnumeratingWithState:&v62 objects:v71 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v34 = 1;
LABEL_58:
    }

    if ((v34 & v26) == 1)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v42 = mediaObjects;
      v43 = [v42 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v43)
      {
        v44 = *v59;
        LOBYTE(v34) = 1;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v59 != v44)
            {
              objc_enumerationMutation(v42);
            }

            v46 = *(*(&v58 + 1) + 8 * k);
            if ([v46 mediaType] - 1 <= 1)
            {
              v47 = [self _sms_mediaObjectPassesDurationCheck:v46];
              if (!v47)
              {
                v35 = 2005;
              }

              LOBYTE(v34) = v47 & v34;
            }
          }

          v43 = [v42 countByEnumeratingWithState:&v58 objects:v70 count:16];
        }

        while (v43);
      }

      else
      {
        LOBYTE(v34) = 1;
      }
    }
  }

  if (error && (v34 & 1) == 0)
  {
    v36 = [self _sms_localizedErrorForReason:v35];
    if (v36)
    {
      v36 = v36;
      *error = v36;
    }

    LOBYTE(v34) = 0;
  }

LABEL_56:

  return v34 & 1;
}

+ (id)_sms_localizedErrorForReason:(int64_t)reason
{
  reasonCopy = reason;
  v16 = *MEMORY[0x1E69E9840];
  if ((reason - 2001) >= 5)
  {
    if (!reason)
    {
      goto LABEL_17;
    }

    if (reason != 3000)
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(44);
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v15 = reasonCopy;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_DEBUG, "SMS: Not generating NSError for message content error: %ld", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v13 = reasonCopy;
        _CKLog();
      }

      v6 = 0;
      goto LABEL_4;
    }

    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"ERR_NEED_MMS" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"ERR_NEED_IMESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v6 = v5;

LABEL_4:
  v7 = CKShowInternalErrors();
  v8 = v7;
  if (v6 || v7)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v6)
    {
      if (v8)
      {
        reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[INTERNAL]\nSMS Content Error: %ld", v6, reasonCopy];

        v6 = reasonCopy;
      }

      [v9 setObject:v6 forKey:{*MEMORY[0x1E696A578], v13}];
    }

    else
    {
      v6 = 0;
    }

    reasonCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"CKMessageContentErrorDomain" code:reasonCopy userInfo:{v9, v13}];
  }

  else
  {
    reasonCopy = 0;
    v6 = 0;
  }

LABEL_17:

  return reasonCopy;
}

+ (double)_sms_maxTrimDurationForMediaType:(int)type
{
  if (type == 1)
  {
    [MEMORY[0x1E69A7F58] IMMMSMaximumAudioDurationForPhoneNumber:0 simID:0];
  }

  else
  {
    [MEMORY[0x1E69A7F58] IMMMSMaximumVideoDurationForPhoneNumber:0 simID:0];
  }

  return result;
}

+ (BOOL)_sms_mediaObjectPassesDurationCheck:(id)check
{
  v16 = *MEMORY[0x1E69E9840];
  checkCopy = check;
  if (checkCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([checkCopy duration], v6 = v5, objc_msgSend(self, "_sms_maxTrimDurationForMediaType:", objc_msgSend(checkCopy, "mediaType")), v8 = v7, v6 >= v7 + 0.00000011920929))
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(44);
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v13 = v6;
        v14 = 2048;
        v15 = v8;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_DEBUG, "SMS: Media has duration:%f   max: %f", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_sms_canSendToRecipients:(id)recipients alertIfUnable:(BOOL)unable
{
  LODWORD(v4) = unable;
  v34 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  v7 = MEMORY[0x1E69A5CA0];
  lastAddressedHandle = [(CKConversation *)self lastAddressedHandle];
  lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
  v10 = [v7 mmsEnabledforPhoneNumber:lastAddressedHandle simID:lastAddressedSIMID];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = recipientsCopy;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    v15 = *MEMORY[0x1E695C208];
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if ((v10 & 1) == 0)
        {
          propertyType = [*(*(&v29 + 1) + 8 * i) propertyType];

          if (propertyType == v15)
          {
            if (v4)
            {
              v18 = CKFrameworkBundle();
              v4 = [v18 localizedStringForKey:@"CANNOT_SEND_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

              v19 = CKFrameworkBundle();
              v20 = [v19 localizedStringForKey:@"ERR_NEED_MMS_TO_EMAIL" value:&stru_1F04268F8 table:@"ChatKit"];

              v21 = [CKAlertController alertControllerWithTitle:v4 message:v20 preferredStyle:1];
              v22 = CKFrameworkBundle();
              v23 = [v22 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
              v24 = [CKAlertAction actionWithTitle:v23 style:0 handler:0];

              [v21 addAction:v24];
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __80__CKConversation_SMS_Content_Utilities___sms_canSendToRecipients_alertIfUnable___block_invoke;
              block[3] = &unk_1E72EBA18;
              v28 = v21;
              v25 = v21;
              dispatch_async(MEMORY[0x1E69E96A0], block);

              LOBYTE(v4) = 0;
            }

            goto LABEL_13;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v4) = 1;
LABEL_13:

  return v4;
}

void __80__CKConversation_SMS_Content_Utilities___sms_canSendToRecipients_alertIfUnable___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 keyWindow];
  v4 = [v3 rootViewController];

  [*(a1 + 32) presentFromViewController:v4 animated:1 completion:0];
}

- (BOOL)supportsSurf
{
  if (supportsSurf__pred_PKCashGroupsEnabledPassKitCore != -1)
  {
    [CKConversation(Plugin_Utilities) supportsSurf];
  }

  v3 = supportsSurf__PKCashGroupsEnabled;
  isGroupConversation = [(CKConversation *)self isGroupConversation];
  if (v3)
  {
    if (isGroupConversation && (![(CKConversation *)self isGroupConversation]|| !supportsSurf__PKCashGroupsEnabled()))
    {
      return 0;
    }
  }

  else if (isGroupConversation)
  {
    return 0;
  }

  if ([(CKConversation *)self isBusinessConversation])
  {
    return 0;
  }

  sendingService = [(CKConversation *)self sendingService];
  __ck_isiMessage = [sendingService __ck_isiMessage];

  return __ck_isiMessage;
}

void *__48__CKConversation_Plugin_Utilities__supportsSurf__block_invoke()
{
  result = MEMORY[0x193AF5ED0]("PKCashGroupsEnabled", @"PassKitCore");
  supportsSurf__PKCashGroupsEnabled = result;
  return result;
}

- (BOOL)supportsWaldo
{
  if ([(CKConversation *)self isBusinessConversation])
  {
    return 0;
  }

  sendingService = [(CKConversation *)self sendingService];
  __ck_isiMessage = [sendingService __ck_isiMessage];

  return __ck_isiMessage;
}

- (id)createInputContextHistoryWithChatItems:(id)items
{
  itemsCopy = items;
  if ([(CKConversation *)self isKnownSender])
  {
    v21 = itemsCopy;
    deviceIndependentID = [(CKConversation *)self deviceIndependentID];
    v6 = CKTextInputIdentifier();

    chat = [(CKConversation *)self chat];
    inlineReplyController = [chat inlineReplyController];
    threadIdentifier = [inlineReplyController threadIdentifier];

    recipients = [(CKConversation *)self recipients];
    v11 = [(CKConversation *)self _inputContextIdentifiersForRecipients:recipients];
    _inputContextIdentifiersForMe = [(CKConversation *)self _inputContextIdentifiersForMe];
    v13 = [(CKConversation *)self _participantsNameMapFromRecipients:recipients mySenderIdentifiers:_inputContextIdentifiersForMe];
    v14 = objc_alloc(MEMORY[0x1E69DCAF8]);
    v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v16 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v22 = v6;
    v17 = [v14 initWithThreadIdentifier:v6 participantsIDtoNames:v13 firstPerson:_inputContextIdentifiersForMe primaryRecipients:v11 secondaryRecipients:v15 info:v16];

    if ([threadIdentifier length])
    {
      AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();
      tiInputContextHistory = [v17 tiInputContextHistory];
      [tiInputContextHistory setFocusedEntryIdentifier:AssociatedMessageGUIDFromThreadIdentifier];
    }

    itemsCopy = v21;
    [v17 addChatItems:v21 withConversation:self];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_inputContextIdentifiersForRecipients:(id)recipients
{
  v19 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = recipientsCopy;
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

        rawAddress = [*(*(&v14 + 1) + 8 * i) rawAddress];
        v11 = MEMORY[0x193AF5D70]();

        if ([v11 length])
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (id)_inputContextIdentifiersForMe
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
  senderIdentifiers = [mEMORY[0x1E69A5A80] senderIdentifiers];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = senderIdentifiers;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = MEMORY[0x193AF5D70](*(*(&v13 + 1) + 8 * i));
        if ([v10 length])
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];

  return v11;
}

- (id)_participantsNameMapFromRecipients:(id)recipients mySenderIdentifiers:(id)identifiers
{
  v44[1] = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  identifiersCopy = identifiers;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  descriptorForUsedKeys = [MEMORY[0x1E696ADF0] descriptorForUsedKeys];
  v44[0] = descriptorForUsedKeys;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = recipientsCopy;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        rawAddress = [v14 rawAddress];
        v16 = MEMORY[0x193AF5D70]();

        v17 = [v14 cnContactWithKeys:v8];
        v18 = [MEMORY[0x1E696ADF0] componentsForContact:v17];
        v19 = v18;
        if (v16)
        {
          v20 = v18 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          [v6 setObject:v18 forKeyedSubscript:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  v22 = [mEMORY[0x1E69A7FD0] fetchMeContactWithKeys:v8];

  v23 = [MEMORY[0x1E696ADF0] componentsForContact:v22];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = identifiersCopy;
  v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = MEMORY[0x193AF5D70](*(*(&v34 + 1) + 8 * j));
        if ([v29 length])
        {
          v30 = v23 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          [v6 setObject:v23 forKeyedSubscript:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v26);
  }

  v31 = [v6 copy];

  return v31;
}

- (BOOL)_shouldMarkAllInputContextHistoryEntriesAsJunk
{
  chat = [(CKConversation *)self chat];
  v3 = chat;
  if (chat)
  {
    v4 = [chat isFiltered] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)activityForNewSceneCreatedViaDrag:(BOOL)drag
{
  dragCopy = drag;
  v19 = *MEMORY[0x1E69E9840];
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    groupID = [(CKConversation *)self groupID];
    *buf = 138412290;
    v18 = groupID;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Creating user activity for new scene with conversation: %@", buf, 0xCu);
  }

  v7 = [CKSceneDelegateState alloc];
  groupID2 = [(CKConversation *)self groupID];
  v9 = [(CKSceneDelegateState *)v7 initWithGroupID:groupID2];

  v10 = [CKSceneDelegate userInfoDictionaryForState:v9];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.Messages.StateRestoration"];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{!dragCopy, @"CKCanvasStateRestorationContainerType", @"CKSceneInitiationTypeKey", &unk_1F04E8670}];
    v16[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:2];
    [v11 addUserInfoEntriesFromDictionary:v13];

    [v11 addUserInfoEntriesFromDictionary:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)supportsHandleSelection
{
  selfCopy = self;
  chat = [(CKConversation *)selfCopy chat];
  if (chat && (v4 = chat, v5 = [(IMChat *)chat supportsCapabilities:0x2000], v4, v5))
  {
    fromPickerEnabled = [objc_opt_self() fromPickerEnabled];
  }

  else
  {
    fromPickerEnabled = 0;
  }

  return fromPickerEnabled;
}

- (id)selectedSenderIdentity
{
  selfCopy = self;
  v3 = CKConversation.selectedSenderIdentity()();

  return v3;
}

- (void)switchToSenderIdentity:(id)identity
{
  identityCopy = identity;
  v7._handle = self;
  handle = v7._handle;
  v7.super.isa = identityCopy;
  CKConversation.switchToSenderIdentity(_:)(v7);
}

- (id)carPlayMessageListItemWithTraitCollection:(id)collection dateFormatter:(id)formatter timeFormatter:(id)timeFormatter avatarImageRenderer:(id)renderer
{
  collectionCopy = collection;
  formatterCopy = formatter;
  timeFormatterCopy = timeFormatter;
  rendererCopy = renderer;
  selfCopy = self;
  v15 = CKConversation.carPlayMessageListItem(traitCollection:dateFormatter:timeFormatter:avatarImageRenderer:)(collectionCopy, formatterCopy, timeFormatterCopy, rendererCopy);

  return v15;
}

- (void)sendAutoDonationUpdate:(BOOL)update
{
  updateCopy = update;
  selfCopy = self;
  chat = [(CKConversation *)selfCopy chat];
  [(IMChat *)chat sendAutoDonationUpdate:updateCopy];
}

- (BOOL)canSendComposition:(id)composition forCapabilities:(unint64_t)capabilities error:(id *)error
{
  compositionCopy = composition;
  selfCopy = self;
  CKConversation.canSendComposition(_:forCapabilities:)(compositionCopy, capabilities);

  return 1;
}

- (BOOL)shouldShowSatelliteServiceUnavailableIndicator
{
  selfCopy = self;
  v3 = CKConversation.shouldShowSatelliteServiceUnavailableIndicator.getter();

  return v3 & 1;
}

- (BOOL)isSatelliteEmergencyConversation
{
  selfCopy = self;
  if ([(CKConversation *)selfCopy isStewieConversation])
  {
    isEmergencyTranscriptSharingConversation = 1;
  }

  else
  {
    isEmergencyTranscriptSharingConversation = [(CKConversation *)selfCopy isEmergencyTranscriptSharingConversation];
  }

  return isEmergencyTranscriptSharingConversation;
}

- (BOOL)allowToSendWithCurrentServiceForSatellite
{
  selfCopy = self;
  v3 = CKConversation.allowToSendWithCurrentServiceForSatellite.getter();

  return v3 & 1;
}

- (BOOL)shouldShowSatelliteSummary
{
  selfCopy = self;
  v3 = CKConversation.shouldShowSatelliteSummary.getter();

  return v3 & 1;
}

- (NSString)satelliteSummaryMessage
{
  selfCopy = self;
  CKConversation.satelliteSummaryMessage.getter();

  v3 = sub_190D56ED0();

  return v3;
}

- (NSAttributedString)pendingMessageCountText
{
  selfCopy = self;
  v3 = CKConversation.pendingMessageCountText.getter();

  return v3;
}

- (BOOL)showUnreadIndicator
{
  selfCopy = self;
  chat = [(CKConversation *)selfCopy chat];
  if (chat && (v4 = chat, v5 = [(IMChat *)chat unreadMessageCount], v4, v5 >= 1))
  {
    shouldShowSatelliteSummary = 1;
  }

  else
  {
    shouldShowSatelliteSummary = [(CKConversation *)selfCopy shouldShowSatelliteSummary];
  }

  return shouldShowSatelliteSummary;
}

- (id)_navigationBarDisplayTitle
{
  selfCopy = self;
  CKConversation._navigationBarDisplayTitle()();

  v3 = sub_190D56ED0();

  return v3;
}

- (BOOL)isHidden
{
  selfCopy = self;
  v3 = CKConversation.isHidden.getter();

  return v3 & 1;
}

- (BOOL)isKnownChat
{
  selfCopy = self;
  chat = [(CKConversation *)selfCopy chat];
  if (chat)
  {
    v4 = chat;
    isFiltered = [(IMChat *)chat isFiltered];

    return isFiltered == 0;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isKnownSender
{
  selfCopy = self;
  v3 = CKConversation.isKnownSender()();

  return v3;
}

- (unint64_t)targetFilterModeForOpeningConversationURL
{
  selfCopy = self;
  v3 = CKConversation.targetFilterModeForOpeningConversationURL()();

  return v3;
}

- (BOOL)containsCachedFilterModeWithTargetfilterMode:(unint64_t)mode
{
  selfCopy = self;
  LOBYTE(mode) = CKConversation.containsCachedFilterMode(targetfilterMode:)(mode);

  return mode & 1;
}

- (BOOL)containsCachedFilterModeWithTargetFilterNumberModes:(id)modes
{
  sub_19021DC70();
  v4 = sub_190D57180();
  selfCopy = self;
  sub_190CAC6A8(v4);
  v6 = sub_190D574B0();

  cachedCalculatedFilterModes = [(CKConversation *)selfCopy cachedCalculatedFilterModes];
  if (cachedCalculatedFilterModes)
  {
    v8 = cachedCalculatedFilterModes;
    sub_190218944();
    sub_190D57410();

    v9 = sub_190D574B0();

    v10 = sub_1908A9438(v9, v6);
  }

  else
  {

    v10 = 0;
  }

  return v10 & 1;
}

- (NSString)chatPriorityLocalizedStringKey
{
  selfCopy = self;
  CKConversation.chatPriorityLocalizedStringKey.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_190D56ED0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)allowsShowingDetailsView
{
  selfCopy = self;
  v3 = CKConversation.allowsShowingDetailsView.getter();

  return v3 & 1;
}

void __95__CKConversation_MessageHistoryViewControllerDataSource__fetchOldestMessageDateWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Message history fetch failed with error: %@", &v2, 0xCu);
}

void __34__CKConversation_deleteBrandLogos__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Unable to delete logos from cache. Error %@.", &v2, 0xCu);
}

- (void)sendMessage:(void *)a1 onService:newComposition:.cold.1(void *a1)
{

  objc_end_catch();
}

- (void)senderIdentifier
{
  v10 = *MEMORY[0x1E69E9840];
  chat = [a2 chat];
  v6 = 138412546;
  selfCopy = self;
  v8 = 2112;
  v9 = chat;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "senderIdentifier is nil for account: %@, chat: %@", &v6, 0x16u);
}

@end
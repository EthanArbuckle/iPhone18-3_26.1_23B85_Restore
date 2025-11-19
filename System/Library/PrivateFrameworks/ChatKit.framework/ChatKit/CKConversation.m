@interface CKConversation
+ (BOOL)_iMessage_canAcceptMediaObjectType:(int)a3 givenMediaObjects:(id)a4;
+ (BOOL)_iMessage_canSendComposition:(id)a3 reachabilityContext:(id)a4 forceSMS:(BOOL)a5 error:(id *)a6;
+ (BOOL)_iMessage_canSendMessageWithMediaObjectTypes:(int *)a3 errorCode:(int64_t *)a4;
+ (BOOL)_sms_canAcceptMediaObjectType:(int)a3 givenMediaObjects:(id)a4 phoneNumber:(id)a5 simID:(id)a6;
+ (BOOL)_sms_canSendComposition:(id)a3 lastAddressedHandle:(id)a4 lastAddressedSIMID:(id)a5 recipientsContainEmail:(BOOL)a6 skipMMSCheck:(BOOL)a7 error:(id *)a8;
+ (BOOL)_sms_canSendMessageWithMediaObjectTypes:(int *)a3 phoneNumber:(id)a4 simID:(id)a5 errorCode:(int64_t *)a6;
+ (BOOL)_sms_mediaObjectPassesDurationCheck:(id)a3;
+ (BOOL)_sms_mediaObjectPassesRestriction:(id)a3;
+ (double)_iMessage_maxTrimDurationForMediaType:(int)a3;
+ (double)_sms_maxTrimDurationForMediaType:(int)a3;
+ (id)_iMessage_localizedErrorForReason:(int64_t)a3;
+ (id)_sms_localizedErrorForReason:(int64_t)a3;
+ (id)conversationForAddresses:(id)a3 allowRetargeting:(BOOL)a4 candidateConversation:(id)a5;
+ (id)conversationForContacts:(id)a3 candidateConversation:(id)a4;
+ (id)newPendingConversation;
+ (unint64_t)_iMessage_maxTransferFileSizeForWiFi:(BOOL)a3;
- (BOOL)_allowedByScreenTime;
- (BOOL)_allowedToSendTypingIndicators;
- (BOOL)_chatHasValidUnreadMessageToLoad;
- (BOOL)_contactsForVisualIdentityHaveKeys:(id)a3;
- (BOOL)_handleIsForThisConversation:(id)a3;
- (BOOL)_isOTPChatBotRelayChat;
- (BOOL)_isSendButtonDisabledForCarrierMessaging;
- (BOOL)_sharedShouldSuppressTranscriptBackground;
- (BOOL)_shouldMarkAllInputContextHistoryEntriesAsJunk;
- (BOOL)_sms_canSendToRecipients:(id)a3 alertIfUnable:(BOOL)a4;
- (BOOL)_sms_willSendMMSByDefaultForAddresses:(id)a3;
- (BOOL)allowToSendWithCurrentServiceForSatellite;
- (BOOL)allowsMentions;
- (BOOL)allowsShowingDetailsView;
- (BOOL)canAcceptMediaObjectType:(int)a3 givenMediaObjects:(id)a4;
- (BOOL)canInsertMoreRecipients;
- (BOOL)canLeave;
- (BOOL)canModifyParticipants;
- (BOOL)canMuteStateBeToggled;
- (BOOL)canReplyToChatItem:(id)a3;
- (BOOL)canSendComposition:(id)a3 error:(id *)a4;
- (BOOL)canSendComposition:(id)a3 forCapabilities:(unint64_t)a4 error:(id *)a5;
- (BOOL)canSendToRecipients:(id)a3 alertIfUnable:(BOOL)a4;
- (BOOL)containsCachedFilterModeWithTargetFilterNumberModes:(id)a3;
- (BOOL)containsCachedFilterModeWithTargetfilterMode:(unint64_t)a3;
- (BOOL)containsHandleWithUID:(id)a3;
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
- (BOOL)shouldReloadPreviewTextForGeneratedAdaptiveImageGlyphWithFileTransferGUID:(id)a3;
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
- (CKConversation)initWithChat:(id)a3;
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
- (double)maxTrimDurationForMedia:(id)a3;
- (id)_backwardCompatabilityTextForEditedMessagePartText:(id)a3;
- (id)_contactsForVisualIdentityWithKeys:(id)a3 numberOfContacts:(unint64_t)a4;
- (id)_groupPhotoFileURL;
- (id)_headerTitleForPendingMediaObjects:(id)a3 subject:(id)a4 onService:(id)a5;
- (id)_headerTitleForService:(id)a3 shouldListParticipants:(BOOL)a4;
- (id)_inputContextIdentifiersForMe;
- (id)_inputContextIdentifiersForRecipients:(id)a3;
- (id)_makeTranscriptBackgroundFromIMChatProperties;
- (id)_nameForHandle:(id)a3;
- (id)_navigationBarDisplayTitle;
- (id)_participantsNameMapFromRecipients:(id)a3 mySenderIdentifiers:(id)a4;
- (id)acquireHandleStatusObservationAssertion;
- (id)activityForNewSceneCreatedViaDrag:(BOOL)a3;
- (id)calculateFilterModeNumbers;
- (id)carPlayMessageListItemWithTraitCollection:(id)a3 dateFormatter:(id)a4 timeFormatter:(id)a5 avatarImageRenderer:(id)a6;
- (id)contactNameByHandle;
- (id)conversationVisualIdentityWithKeys:(id)a3 requestedNumberOfContactsToFetch:(unint64_t)a4;
- (id)copyForPendingConversation;
- (id)createInputContextHistoryWithChatItems:(id)a3;
- (id)date;
- (id)displayNameForDisplayContext:(int64_t)a3;
- (id)displayNameForMediaObjects:(id)a3 subject:(id)a4 shouldListParticipants:(BOOL)a5;
- (id)ensureMessageWithGUIDIsLoaded:(id)a3;
- (id)entityMatchingHandle:(id)a3;
- (id)fastPreviewTextIgnoringPluginContent;
- (id)groupPhotoData;
- (id)groupPhotoFileTransfer;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)messageWithComposition:(id)a3;
- (id)messagesFromComposition:(id)a3;
- (id)nameWithRawAddresses:(BOOL)a3;
- (id)orderedContactsWithMaxCount:(unint64_t)a3 keysToFetch:(id)a4;
- (id)pinnedConversationDisplayNamePreferringShortName:(BOOL)a3;
- (id)recipientEmailAddresses;
- (id)recipientPhoneNumbers;
- (id)recipientsSortedByIsContact:(BOOL)a3 alphabetically:(BOOL)a4;
- (id)renderedAvatarImageWithSize:(CGSize)a3 traitCollection:(id)a4;
- (id)renderedAvatarImageWithSize:(CGSize)a3 traitCollection:(id)a4 avatarImageRenderer:(id)a5;
- (id)selectedSenderIdentity;
- (id)sendingServiceImpl;
- (id)shortDescription;
- (id)sortedHandles;
- (id)transcriptBackgroundGUID;
- (id)uniqueIdentifier;
- (int)wasDetectedAsSMSSpam;
- (int)wasDetectedAsiMessageSpam;
- (int64_t)compareBySequenceNumberAndDateDescending:(id)a3;
- (int64_t)maximumRecipientsForSendingService;
- (int64_t)spamCategory;
- (int64_t)spamSubCategory;
- (unint64_t)recipientCount;
- (unint64_t)targetFilterModeForOpeningConversationURL;
- (void)_chatItemsDidChange:(id)a3;
- (void)_chatPropertiesChanged:(id)a3;
- (void)_clearTypingIndicatorsIfNecessary;
- (void)_createConversationVisualIdentityWithKeys:(id)a3 numberOfContacts:(unint64_t)a4;
- (void)_deleteAllMessagesAndRemoveGroup:(BOOL)a3;
- (void)_handleChatJoinStateDidChange:(id)a3;
- (void)_handleChatParticipantsDidChange:(id)a3;
- (void)_handleEngroupFinishedUpdating:(id)a3;
- (void)_handleLazuliCapabilitiesUpdatedNotification:(id)a3;
- (void)_handlePreferredServiceChangedNotification:(id)a3;
- (void)_handleTranscriptBackgroundChangeNotification:(id)a3;
- (void)_invalidateApplicationSnapshotIfNeeded;
- (void)_setProofReadingInfoForChat:(id)a3 withMessage:(id)a4;
- (void)_updateContactsForVisualIdentityWithKeys:(id)a3 numberOfContacts:(unint64_t)a4;
- (void)_updateGroupNameForVisualIdentity;
- (void)_updateGroupPhotoForVisualIdentity;
- (void)acceptTransfer:(id)a3;
- (void)acceptTransferAndUpdateReasonForTapped:(id)a3;
- (void)addRecipientHandles:(id)a3;
- (void)appendTranslation:(id)a3 toMessageItem:(id)a4 forPartIndex:(int64_t)a5;
- (void)canShareFocusStatusWithCompletion:(id)a3;
- (void)dealloc;
- (void)deleteBrandLogos;
- (void)didBecomeActive;
- (void)editMessageItem:(id)a3 partIndex:(int64_t)a4 withNewComposition:(id)a5;
- (void)enumerateMessagesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)fetchAllMessages:(id)a3;
- (void)fetchMoreMessages:(id)a3;
- (void)fetchMoreMessagesAfterLastMessage:(id)a3;
- (void)fetchMoreMessagesBeforeFirstMessage:(id)a3;
- (void)fetchOldestMessageDateWithCompletion:(id)a3;
- (void)fetchSuggestedNameIfNecessary;
- (void)generateMissingWatchAssetIfNecessaryWithCompletion:(id)a3;
- (void)isInvitedToViewMyFocusStatusWithCompletion:(id)a3;
- (void)leave;
- (void)loadAllMessages;
- (void)loadAllUnreadMessagesUpToMessageGUID:(id)a3;
- (void)loadFrequentReplies;
- (void)loadMoreMessages;
- (void)loadMoreMessagesAfterLastMessage;
- (void)loadMoreMessagesBeforeFirstMessage;
- (void)markAllMessagesAsRead;
- (void)markLastMessageAsUnread;
- (void)messageHistoryForDateInterval:(id)a3 completion:(id)a4;
- (void)prepareForRecoverableDeletionWithDeleteDate:(id)a3;
- (void)recoverableDeleteAllMessagesGivenDeleteDate:(id)a3;
- (void)refreshServiceForSending;
- (void)reloadIfNeeded;
- (void)removeRecipientHandles:(id)a3;
- (void)repositionSticker:(id)a3 associatedChatItem:(id)a4;
- (void)resendEditedMessageItem:(id)a3 forPartIndex:(int64_t)a4;
- (void)resetCaches;
- (void)resetNameCaches;
- (void)resortMessagesIfNecessary;
- (void)retractMessagePart:(id)a3;
- (void)retractScheduledMessageParts:(id)a3 fromAggregateChatItem:(id)a4;
- (void)retrieveLocalFileURLForTransferGUID:(id)a3;
- (void)retryMessage:(id)a3 onService:(id)a4;
- (void)sendAutoDonationUpdate:(BOOL)a3;
- (void)sendMessage:(id)a3 newComposition:(BOOL)a4;
- (void)sendMessage:(id)a3 onService:(id)a4 newComposition:(BOOL)a5;
- (void)senderIdentifier;
- (void)setAutomaticallyTranslate:(BOOL)a3 languageCode:(id)a4 userLanguageCode:(id)a5;
- (void)setDisplayName:(id)a3;
- (void)setForceMMS:(BOOL)a3;
- (void)setLoadedMessageCount:(unint64_t)a3 loadImmediately:(BOOL)a4;
- (void)setLocalUserIsComposing:(id)a3;
- (void)setLocalUserIsComposing:(id)a3 typingIndicatorIcon:(id)a4;
- (void)setLocalUserIsRecording:(BOOL)a3;
- (void)setLocalUserIsTyping:(BOOL)a3;
- (void)setMutedUntilDate:(id)a3;
- (void)setPendingComposeRecipients:(id)a3;
- (void)setPendingHandles:(id)a3;
- (void)setPendingRecipients:(id)a3;
- (void)setPendingTranscriptBackground:(id)a3 transferID:(id)a4;
- (void)setSendReadReceipts:(BOOL)a3;
- (void)setUnsentComposition:(id)a3;
- (void)switchToSenderIdentity:(id)a3;
- (void)unmute;
- (void)updateCalculatedFilterModesCache;
- (void)updateConversationVisualIdentityDisplayNameWithSender:(id)a3;
- (void)updateConversationVisualIdentityGroupPhotoWithSender:(id)a3;
- (void)updateDeletingIncomingMessages:(BOOL)a3;
- (void)updateDisplayNameIfSMSSpam;
- (void)updateKeyTransparencyStatusForChatParticipantsDidChange:(id)a3;
- (void)updateLastViewedDate;
- (void)updateUnsentCompositionByAppendingComposition:(id)a3;
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__handleLazuliCapabilitiesUpdatedNotification_ name:*MEMORY[0x1E69A5720] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v3 selector:sel__handleTranscriptBackgroundChangeNotification_ name:*MEMORY[0x1E69A5918] object:0];
  }

  return v3;
}

- (id)date
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 __ck_watermarkDate];
  v4 = [v2 lastTUConversationCreatedDate];
  v5 = [v2 lastScheduledMessageCreatedDate];
  v6 = [v2 lastFinishedMessageDate];
  if (v3)
  {
    v7 = [v3 laterDate:v6];

    v6 = v7;
  }

  if (v4)
  {
    v8 = [v6 laterDate:v4];

    v6 = v8;
  }

  if (v5)
  {
    v9 = [v6 laterDate:v5];

    v6 = v9;
  }

  return v6;
}

- (void)updateCalculatedFilterModesCache
{
  v3 = [(CKConversation *)self calculateFilterModeNumbers];
  [(CKConversation *)self setCachedCalculatedFilterModes:v3];
}

- (id)calculateFilterModeNumbers
{
  v2 = self;
  CKConversation.calculateFilterModes()();
  sub_190D57440();

  sub_19021DC70();
  sub_190218944();
  v3 = sub_190D57400();

  return v3;
}

- (BOOL)isPinned
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 isPinned];

  return v3;
}

- (BOOL)isPlaceholder
{
  v2 = self;
  v3 = CKConversation.isPlaceholder.getter();

  return v3 & 1;
}

- (NSString)conversationListCollectionViewListItemIdentifier
{
  conversationListCollectionViewListItemIdentifier = self->_conversationListCollectionViewListItemIdentifier;
  if (!conversationListCollectionViewListItemIdentifier)
  {
    v4 = [(CKConversation *)self chat];
    v5 = [v4 guid];
    v6 = v5;
    v7 = &stru_1F04268F8;
    if (v5)
    {
      v7 = v5;
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
  v2 = [(CKConversation *)self chat];
  v3 = [v2 isMuted];

  return v3;
}

- (BOOL)isGroupConversation
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 isGroupChat];

  return v3;
}

- (BOOL)hasDisplayName
{
  v3 = [(CKConversation *)self displayName];
  if (v3)
  {
    v4 = [(CKConversation *)self displayName];
    v5 = [v4 isEqualToString:&stru_1F04268F8] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSString)displayName
{
  v3 = [(CKConversation *)self shouldDisplayGroupIdentity];
  v4 = CKConversationGroupPhoto();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEFAULT, "Using chat display name.", buf, 2u);
    }

    v4 = [(CKConversation *)self chat];
    v6 = [v4 displayName];
  }

  else
  {
    if (v5)
    {
      *v20 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEFAULT, "Withholding chat display name because shouldDisplayGroupIdentity == false.", v20, 2u);
    }

    v6 = 0;
  }

  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isTranscriptSharingEnabled];

  if (v8)
  {
    v9 = [(CKConversation *)self chat];
    v10 = [v9 isStewieSharingChat];

    if (v10)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = CKFrameworkBundle();
      v13 = [v12 localizedStringForKey:@"TS_CONVERSATION_NAME" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
      v14 = [(CKConversation *)self chat];
      v15 = [v14 emergencyUserHandle];
      v16 = [(CKConversation *)self chat];
      v17 = [v15 displayNameForChat:v16];
      v18 = [v11 localizedStringWithFormat:v13, v17];

      v6 = v18;
    }
  }

  return v6;
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
    v5 = [(CKConversation *)self chat];
    v6 = [v5 lastFinishedMessage];
    v4 = [v6 __ck_previewTextWithChat:v5 ignorePluginContent:1];
    v7 = [v6 balloonBundleID];

    if (!v7)
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
    v4 = [(CKConversation *)self sendingService];
    v5 = [v4 __ck_isCarrierBased];

    [(CKConversation *)self setWantsLabelForDSDSCached:1];
    [(CKConversation *)self setHasCachedWantsLabelForDSDS:1];
    return v5;
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
  v3 = [(CKConversation *)self hasVerifiedBusiness];
  if (v3)
  {
    v4 = [(CKConversation *)self chat];
    v5 = [v4 chatIdentifier];
    v6 = MEMORY[0x193AF5D00]();

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)hasVerifiedBusiness
{
  v3 = [(CKConversation *)self isBusinessConversation];
  if (v3)
  {
    v4 = [(CKConversation *)self businessHandle];
    v5 = [v4 brand];
    v6 = [v5 isVerified];

    LOBYTE(v3) = v6;
  }

  return v3;
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
    v4 = [(CKConversation *)self handles];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v16 + 1) + 8 * i) isBusiness])
          {
            v9 = 1;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:

    v10 = [(CKConversation *)self chat];
    v11 = [v10 isBusinessChat];

    v12 = [(CKConversation *)self _isOTPChatBotRelayChat];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:(v12 | (v9 | v11)) & 1];
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
    v3 = [(CKConversation *)self pendingHandles];
    v4 = v3;
    v5 = MEMORY[0x1E695E0F0];
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v4 = [(CKConversation *)self chat];
    v6 = [v4 participants];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isPending
{
  if (!CKIsRunningInMessages() && !IMIsRunningInMessagesComposeViewService())
  {
    return self->_chat == 0;
  }

  v3 = +[CKConversationList sharedConversationList];
  v4 = [v3 pendingConversation];
  v5 = v4 == self;

  return v5;
}

- (BOOL)_isOTPChatBotRelayChat
{
  v3 = [(CKConversation *)self chat];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CKConversation *)self chat];
  v5 = [v4 chatStyle];

  if (v5 != 45)
  {
    return 0;
  }

  if (![(CKConversation *)self isReadOnlyChat])
  {
    v6 = [(CKConversation *)self chat];
    v7 = [v6 brandInfo];

    if (!v7)
    {
      return 0;
    }
  }

  if (![(CKConversation *)self hasDisplayName])
  {
    return 0;
  }

  v8 = [(CKConversation *)self chat];
  v9 = [v8 isRCS];

  return v9;
}

- (BOOL)shouldShowDownloadingPendingMessages
{
  v2 = self;
  v3 = [(CKConversation *)v2 chat];
  if (v3)
  {
    v4 = v3;
    v5 = [(IMChat *)v3 isDownloadingPendingSatelliteMessages];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 isMessagingActiveOverSatellite];

  return v7 & v5;
}

- (NSArray)recipients
{
  v27 = *MEMORY[0x1E69E9840];
  recipients = self->_recipients;
  if (!recipients)
  {
    v4 = [(CKConversation *)self chat];

    if (v4)
    {
      v5 = [(CKConversation *)self chat];
      v6 = [v5 participants];
      v7 = [v6 copy];
    }

    else
    {
      v5 = [(CKConversation *)self pendingHandles];
      v7 = [v5 copy];
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
          v16 = [(CKConversation *)self chat];
          v17 = [(CKEntity *)v15 initWithChat:v16 imHandle:v14];

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
    v3 = [(CKConversation *)self _groupPhotoFileURL];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 path];
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v5;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "groupPhotoFilePath is: %@", buf, 0xCu);
        }
      }

      if (![v5 length])
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v18 = v5;
            _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "groupPhotoFilePath is nil: %@", buf, 0xCu);
          }
        }

        v7 = 0;
        goto LABEL_36;
      }

      v16 = 0;
      v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5 options:8 error:&v16];
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
            v18 = v5;
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
          v18 = v5;
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
          v18 = v5;
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
      v12 = [(IMChat *)self->_chat chatIdentifier];
      *buf = 138412290;
      v18 = v12;
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
  v3 = [(CKConversation *)self groupPhotoFileTransfer];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 guid];
    if ([v4 existsAtLocalPath])
    {
      v6 = [v4 localPath];
      v7 = [v6 __ck_stringByExpandingTildeInPath];

      if ([v7 length])
      {
        v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [(IMChat *)self->_chat chatIdentifier];
            v15 = 138412546;
            v16 = v5;
            v17 = 2112;
            v18 = v12;
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
          v10 = [(IMChat *)self->_chat chatIdentifier];
          v15 = 138412546;
          v16 = v5;
          v17 = 2112;
          v18 = v10;
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
      v18 = self;
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

  v3 = [(IMChat *)self->_chat allChatProperties];
  v4 = [v3 objectForKey:*MEMORY[0x1E69A6B80]];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = self;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "retrieving group photo URL for conversation %@ using groupPhotoGuid %@", &v13, 0x16u);
    }
  }

  if ([(CKConversation *)v4 length])
  {
    v6 = [MEMORY[0x1E69A5B80] sharedInstance];
    v7 = [v6 transferForGUID:v4];

    v8 = IMOSLoggingEnabled();
    if (v7)
    {
      if (v8)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = v7;
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
        v11 = [(IMChat *)self->_chat chatIdentifier];
        v13 = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v11;
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
  v2 = [(CKConversation *)self recipients];
  v3 = [v2 count];

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
    v4 = [(CKConversation *)self chat];
    if (v4)
    {
      v5 = v4;
      v6 = [(CKConversation *)self chat];
      v7 = [v6 chatStyle];

      if (v7 != 45)
      {
        return 0;
      }
    }

    v8 = [(CKConversation *)self handles];
    v9 = [v8 firstObject];
    if ([v9 isChatBot])
    {
    }

    else
    {
      v10 = [(CKConversation *)self _isOTPChatBotRelayChat];

      if (!v10)
      {
        v11 = 0;
        goto LABEL_10;
      }
    }

    v11 = 1;
LABEL_10:
    v13 = [(CKConversation *)self chat];
    v14 = [v13 isChatBot];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:v11 | v14];
    v16 = self->_chatBot;
    self->_chatBot = v15;

    chatBot = self->_chatBot;
  }

  return [(NSNumber *)chatBot BOOLValue];
}

- (BOOL)hasCancellableScheduledMessage
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 hasCancellableScheduledMessage];

  return v3;
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
    v3 = [(CKConversation *)self recipients];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v9 + 1) + 8 * v7) defaultIMHandle];
          [v8 scheduleSuggestedNameFetchIfNecessary];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)isReadOnlyChat
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 isReadOnly];

  return v3;
}

- (NSAttributedString)previewText
{
  previewText = self->_previewText;
  if (!previewText)
  {
    v4 = [(CKConversation *)self chat];
    v5 = [v4 lastFinishedMessageItem];
    if ([v5 isCorrupt])
    {
      v6 = objc_alloc(MEMORY[0x1E696AAB0]);
      v7 = CKFrameworkBundle();
      v8 = [v7 localizedStringForKey:@"CORRUPT_MESSAGE_FALLBACK_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
      v9 = [v6 initWithString:v8];
      v10 = self->_previewText;
      self->_previewText = v9;
    }

    else
    {
      v7 = [v4 lastFinishedMessage];
      v11 = [v7 __ck_previewTextWithChat:v4 ignorePluginContent:0];
      v8 = self->_previewText;
      self->_previewText = v11;
    }

    previewText = self->_previewText;
  }

  return previewText;
}

- (int)wasDetectedAsSMSSpam
{
  v3 = [(CKConversation *)self chat];
  self->_wasDetectedAsSMSSpam = [v3 wasDetectedAsSMSSpam];

  return self->_wasDetectedAsSMSSpam;
}

- (int)wasDetectedAsiMessageSpam
{
  v3 = [(CKConversation *)self chat];
  v4 = [v3 valueForChatProperty:*MEMORY[0x1E69A5D60]];
  self->_wasDetectedAsiMessageSpam = [v4 intValue];

  return self->_wasDetectedAsiMessageSpam;
}

- (id)uniqueIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(CKConversation *)self groupID];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (NSString)groupID
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 persistentID];

  return v3;
}

- (NSString)deviceIndependentID
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 deviceIndependentID];

  return v3;
}

- (BOOL)isStewieConversation
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 isStewieChat];

  return v3;
}

- (IMService)sendingService
{
  v3 = [(CKConversation *)self chat];
  v4 = [v3 account];
  v5 = [v4 service];

  if (!v5)
  {
    if ([(CKConversation *)self isChatBot])
    {
      [MEMORY[0x1E69A5C90] rcsService];
    }

    else
    {
      [MEMORY[0x1E69A5C90] smsService];
    }
    v5 = ;
  }

  return v5;
}

- (NSString)senderIdentifier
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CKConversation *)self chat];
  v4 = [v3 lastAddressedHandleID];

  v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];
  v7 = [v6 length];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    if (v4 && IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(CKConversation *)self chat];
        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "lastAddressedHandleID is empty but not nil for chat %@", &v17, 0xCu);
      }
    }

    v11 = [(CKConversation *)self chat];
    v12 = [v11 account];

    if (!v12)
    {
      v13 = [MEMORY[0x1E69A5A80] sharedInstance];
      v14 = [(CKConversation *)self sendingService];
      v12 = [v13 bestActiveAccountForService:v14];
    }

    v8 = [v12 strippedLogin];

    if (!v8)
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CKConversation *)v12 senderIdentifier];
      }
    }
  }

  return v8;
}

- (NSString)lastAddressedHandle
{
  v3 = [(CKConversation *)self chat];
  v4 = [v3 lastAddressedHandleID];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(CKConversation *)self chat];
    v7 = [v6 lastAddressedHandleID];
  }

  else
  {
    v7 = [(CKConversation *)self selectedLastAddressedHandle];
  }

  return v7;
}

- (NSString)lastAddressedSIMID
{
  v3 = [(CKConversation *)self chat];
  v4 = [v3 lastAddressedSIMID];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(CKConversation *)self chat];
    v7 = [v6 lastAddressedSIMID];
  }

  else
  {
    v7 = [(CKConversation *)self selectedLastAddressedSIMID];
  }

  return v7;
}

- (BOOL)isBlockedByCommunicationLimits
{
  v2 = [(CKConversation *)self chat];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 allowedToShowConversationSync] ^ 1;
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
    v4 = [(CKConversation *)self handles];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v15 + 1) + 8 * v8) isMapKitBusiness])
          {
            v9 = 1;
            goto LABEL_12;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:

    v10 = [(CKConversation *)self chat];
    v11 = [v10 isMapKitBusinessChat];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:v9 | v11];
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
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 businessConversationSendButtonColor];
  }

  else
  {
    v4 = [(CKConversation *)self sendingService];
    v5 = [v4 __ck_displayColor];
  }

  v3 = v5;

  return v3;
}

- (BOOL)_isSendButtonDisabledForCarrierMessaging
{
  if ([(CKConversation *)self recipientCount])
  {
    v3 = [(CKConversation *)self sendingService];
    if ([v3 __ck_isSMS] && -[CKConversation isPending](self, "isPending"))
    {
      v4 = [MEMORY[0x1E69A5CA0] smsEnabled];

      if (!v4)
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
    v6 = [(CKConversation *)self sendingService];
    if ([v6 __ck_isRCS] && -[CKConversation isPending](self, "isPending"))
    {
      v7 = [MEMORY[0x1E69A8280] sharedInstance];
      v5 = [v7 isRCSEnabled] ^ 1;
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
  v2 = [(CKConversation *)self chat];
  v3 = [v2 isStewieSharingChat];

  return v3;
}

- (BOOL)isSatelliteSendingService
{
  v3 = [(CKConversation *)self sendingService];
  v4 = [MEMORY[0x1E69A5CA0] iMessageLiteService];
  if (v3 == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = [(CKConversation *)self sendingService];
    v6 = [MEMORY[0x1E69A5CA0] satelliteSMSService];
    v7 = v5 == v6;
  }

  return v7;
}

- (CKEntity)recipient
{
  v3 = [(CKConversation *)self recipients];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(CKConversation *)self recipients];
    v6 = [v5 lastObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)renderedAvatarImageWithSize:(CGSize)a3 traitCollection:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = MEMORY[0x1E695D098];
  v8 = a4;
  v9 = [v7 alloc];
  v10 = [MEMORY[0x1E695D0A8] defaultSettings];
  v11 = [v9 initWithSettings:v10];

  v12 = [(CKConversation *)self renderedAvatarImageWithSize:v8 traitCollection:v11 avatarImageRenderer:width, height];

  return v12;
}

- (id)renderedAvatarImageWithSize:(CGSize)a3 traitCollection:(id)a4 avatarImageRenderer:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v12 = [(CKConversation *)self conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:v11];
  v13 = [v12 groupPhoto];

  if (v13)
  {
    v14 = MEMORY[0x1E69DCAB8];
    v15 = [v12 groupPhoto];
    v16 = [v14 imageWithData:v15];

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
    v18 = v16;
    v19 = [v17 imageWithActions:v26];
  }

  else
  {
    v20 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v20 scale];
    v22 = v21;

    if (v9)
    {
      [v9 displayScale];
      v22 = v23;
      if ([v9 userInterfaceStyle] == 1)
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
    v18 = [v12 contacts];
    v19 = [v10 avatarImageForContacts:v18 scope:v17];
  }

  return v19;
}

void __104__CKConversation_AvatarImageRendering__renderedAvatarImageWithSize_traitCollection_avatarImageRenderer___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*(a1 + 40) cornerRadius:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v2 addClip];
  [*(a1 + 32) drawInRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (id)pinnedConversationDisplayNamePreferringShortName:(BOOL)a3
{
  v3 = a3;
  if ([(CKConversation *)self recipientCount]== 1)
  {
    if (v3)
    {
      v5 = [(CKConversation *)self recipients];
      v6 = [v5 firstObject];

      v7 = [v6 defaultIMHandle];
      v8 = v7;
      if (v7)
      {
        [v7 _displayNameWithAbbreviation];
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
    v9 = [(CKConversation *)self name];
    goto LABEL_8;
  }

  v9 = [(CKConversation *)self displayName];
LABEL_8:
  v10 = v9;
LABEL_11:

  return v10;
}

- (void)fetchOldestMessageDateWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKConversation *)self chat];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 guid];
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Fetch oldest message date for chat: %@", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__CKConversation_MessageHistoryViewControllerDataSource__fetchOldestMessageDateWithCompletion___block_invoke;
    v10[3] = &unk_1E72F1150;
    v11 = v4;
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

    v7 = [MEMORY[0x1E695DF00] date];
    (*(v4 + 2))(v4, v7);
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

- (void)messageHistoryForDateInterval:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKConversation *)self chat];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 guid];
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Message history fetch beginning for chat: %@, dateInterval: %@", buf, 0x16u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __99__CKConversation_MessageHistoryViewControllerDataSource__messageHistoryForDateInterval_completion___block_invoke;
    v15[3] = &unk_1E72F1178;
    v16 = v10;
    v17 = v6;
    v18 = v7;
    v12 = v10;
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
    v12 = [v14 initWithDateInterval:v6 messages:MEMORY[0x1E695E0F0]];
    (*(v7 + 2))(v7, v12);
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x1E69A5720] object:0];
  }

  v4.receiver = self;
  v4.super_class = CKConversation;
  [(CKConversation *)&v4 dealloc];
}

- (CKConversation)initWithChat:(id)a3
{
  v4 = a3;
  v5 = [(CKConversation *)self init];
  v6 = v5;
  if (v5)
  {
    [(CKConversation *)v5 setChat:v4];
  }

  return v6;
}

- (void)willBecomeInactive
{
  v2 = [(CKConversation *)self chat];
  [v2 endListeningToAttributionChanges];
}

- (void)_createConversationVisualIdentityWithKeys:(id)a3 numberOfContacts:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = self;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Create group photo for visual identity on conversation %@", &v15, 0xCu);
    }
  }

  v8 = [(CKConversation *)self _contactsForVisualIdentityWithKeys:v6 numberOfContacts:a4];
  v9 = [(CKConversation *)self groupPhotoData];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (!v9)
      {
        v11 = @"YES";
      }

      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "groupImageData is nil: %@", &v15, 0xCu);
    }
  }

  v12 = [(CKConversation *)self displayName];
  v13 = [[CKVisualGroupIdentity alloc] initGroupWithName:v12 photo:v9 visualContacts:v8 groupParticipantCount:[(CKConversation *)self recipientCount]];
  conversationVisualIdentity = self->__conversationVisualIdentity;
  self->__conversationVisualIdentity = v13;
}

- (id)conversationVisualIdentityWithKeys:(id)a3 requestedNumberOfContactsToFetch:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!self->__conversationVisualIdentity)
  {
    [(CKConversation *)self _createConversationVisualIdentityWithKeys:v6 numberOfContacts:a4];
    [(CKConversation *)self setNeedsUpdatedContactsForVisualIdentity:0];
    [(CKConversation *)self setNeedsUpdatedGroupPhotoForVisualIdentity:0];
    [(CKConversation *)self setNeedsUpdatedGroupNameForVisualIdentity:0];
    goto LABEL_24;
  }

  if ([(CKConversation *)self needsUpdatedContactsForVisualIdentity])
  {
    goto LABEL_3;
  }

  v16 = [(CKVisualGroupIdentity *)self->__conversationVisualIdentity contacts];
  if ([v16 count] >= a4)
  {
  }

  else
  {
    v17 = [(CKVisualGroupIdentity *)self->__conversationVisualIdentity contacts];
    v18 = [v17 count];
    v19 = [(CKConversation *)self recipients];
    v20 = [v19 count];

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
            v24 = self;
            _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Updating contacts for conversationVisualIdentity on conversation %@", &v23, 0xCu);
          }
        }

        v8 = [(CKVisualGroupIdentity *)self->__conversationVisualIdentity contacts];
        v9 = [v8 count];

        if (v9 <= a4)
        {
          v10 = a4;
        }

        else
        {
          v10 = v9;
        }

        [(CKConversation *)self _updateContactsForVisualIdentityWithKeys:v6 numberOfContacts:v10];
        [(CKConversation *)self setNeedsUpdatedContactsForVisualIdentity:0];
        goto LABEL_11;
      }

      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [(CKVisualGroupIdentity *)self->__conversationVisualIdentity contacts];
        v23 = 134218498;
        v24 = [v22 count];
        v25 = 2048;
        v26 = a4;
        v27 = 2112;
        v28 = self;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Additional contacts needed for conversationVisualIdentity, had %ld, fetching %ld, conversation: %@", &v23, 0x20u);
      }

LABEL_30:

      goto LABEL_3;
    }
  }

  if (![(CKConversation *)self _contactsForVisualIdentityHaveKeys:v6])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_3;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24 = self;
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
        v24 = self;
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
        v24 = self;
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

- (id)_contactsForVisualIdentityWithKeys:(id)a3 numberOfContacts:(unint64_t)a4
{
  if (a4)
  {
    v5 = [(CKConversation *)self orderedContactsWithMaxCount:a4 keysToFetch:a3];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (BOOL)_contactsForVisualIdentityHaveKeys:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKVisualGroupIdentity *)self->__conversationVisualIdentity contacts];
  if ([v4 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
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

          if (![*(*(&v13 + 1) + 8 * i) areKeysAvailable:{v4, v13}])
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

- (void)_updateContactsForVisualIdentityWithKeys:(id)a3 numberOfContacts:(unint64_t)a4
{
  v6 = MEMORY[0x1E695D0C0];
  v7 = a3;
  v8 = [v6 maxContactAvatars];
  v9 = [MEMORY[0x1E695D150] maxContactAvatars];
  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  v12 = [(CKConversation *)self _contactsForVisualIdentityWithKeys:v7 numberOfContacts:v11];

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
      v6 = self;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Updating group photo for visual identity on conversation %@", &v5, 0xCu);
    }
  }

  v4 = [(CKConversation *)self groupPhotoData];
  [(CKVisualGroupIdentity *)self->__conversationVisualIdentity updateGroupPhoto:v4];
}

- (void)updateConversationVisualIdentityGroupPhotoWithSender:(id)a3
{
  v4 = a3;
  [(CKConversation *)self setNeedsUpdatedGroupPhotoForVisualIdentity:1];
  groupIdentityUpdateHandleID = self->_groupIdentityUpdateHandleID;
  self->_groupIdentityUpdateHandleID = v4;
}

- (void)updateConversationVisualIdentityDisplayNameWithSender:(id)a3
{
  v4 = a3;
  [(CKConversation *)self setNeedsUpdatedGroupNameForVisualIdentity:1];
  groupIdentityUpdateHandleID = self->_groupIdentityUpdateHandleID;
  self->_groupIdentityUpdateHandleID = v4;
}

- (void)_updateGroupNameForVisualIdentity
{
  v3 = [(CKConversation *)self displayName];
  [(CKVisualGroupIdentity *)self->__conversationVisualIdentity updateGroupName:v3];
}

- (BOOL)shouldDisplayGroupIdentity
{
  if (!IMSharedHelperGroupNameAndPhotoEnabled())
  {
    return 0;
  }

  v3 = IMSharedHelperGroupNameAndPhotoRequiresParticipantContact();
  v4 = [(CKConversation *)self chat];
  v5 = v4;
  if (v3)
  {
    if ([v4 hasKnownParticipantsCache])
    {
      v6 = 1;
    }

    else
    {
      v7 = [(CKConversation *)self chat];
      v6 = [v7 containsMessageFromContact];
    }
  }

  else
  {
    v6 = [v4 isKnownSenderWithUnknownFilteringEnabled:CKMessageUnknownFilteringEnabled() != 0];
  }

  return v6;
}

- (id)transcriptBackgroundGUID
{
  if ([(CKConversation *)self _isDisplayingPendingTranscriptBackground])
  {
    v3 = [(CKConversation *)self pendingTranscriptBackgroundID];
  }

  else
  {
    v4 = [(CKConversation *)self chat];
    v3 = [v4 transcriptBackgroundGUID];
  }

  return v3;
}

- (_TtC7ChatKit22CKTranscriptBackground)transcriptBackground
{
  p_transcriptBackground = &self->_transcriptBackground;
  v4 = [(CKTranscriptBackground *)self->_transcriptBackground backgroundIdentifier];
  v5 = [(CKConversation *)self transcriptBackgroundGUID];
  if ([v4 isEqualToString:v5])
  {

LABEL_4:
    if (![(CKConversation *)self hasTranscriptBackground]|| *p_transcriptBackground || [(CKConversation *)self _isDisplayingPendingTranscriptBackground])
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v6 = [(CKConversation *)self _isDisplayingPendingTranscriptBackground];

  if (v6)
  {
    goto LABEL_4;
  }

LABEL_7:
  v7 = [(CKConversation *)self _makeTranscriptBackgroundFromIMChatProperties];
  if (v7 || (-[CKConversation chat](self, "chat"), v8 = objc_claimAutoreleasedReturnValue(), [v8 transcriptBackgroundPath], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    objc_storeStrong(p_transcriptBackground, v7);
  }

LABEL_11:
  v10 = *p_transcriptBackground;

  return v10;
}

- (IMWatchBackground)transcriptWatchBackground
{
  v3 = [(CKConversation *)self transcriptBackground];
  if (v3 && (v4 = v3, -[CKConversation transcriptBackground](self, "transcriptBackground"), v5 = objc_claimAutoreleasedReturnValue(), [v5 watchData], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    v7 = objc_alloc(MEMORY[0x1E69A8358]);
    v8 = [(CKConversation *)self transcriptBackground];
    v9 = [v8 watchData];
    v10 = [v7 initWithPayloadData:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasTranscriptBackground
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 transcriptBackgroundPath];

  return v3 != 0;
}

- (BOOL)_sharedShouldSuppressTranscriptBackground
{
  if (![(CKConversation *)self isKnownChat])
  {
    return 1;
  }

  v3 = [(CKConversation *)self chat];
  v4 = v3;
  if (v3 && [v3 supportsCapabilities:0x1000000])
  {
    v5 = [MEMORY[0x1E69A7FC8] sharedManager];
    v6 = [v5 isFeatureEnabled];

    if (v6)
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

- (void)setPendingTranscriptBackground:(id)a3 transferID:(id)a4
{
  v6 = a3;
  v7 = a4;
  transcriptBackground = self->_transcriptBackground;
  self->_transcriptBackground = v6;
  v9 = v6;

  pendingTranscriptBackgroundID = self->_pendingTranscriptBackgroundID;
  self->_pendingTranscriptBackgroundID = v7;
  v11 = v7;

  v12 = [MEMORY[0x1E696AD88] defaultCenter];

  [v12 postNotificationName:@"CKConversationTranscriptBackgroundChangedNotification" object:self];
}

- (id)_makeTranscriptBackgroundFromIMChatProperties
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 transcriptBackgroundPath];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
    v5 = [v4 lastPathComponent];
    v6 = [_TtC7ChatKit22CKTranscriptBackground alloc];
    v7 = [v2 transcriptBackgroundGUID];
    v8 = [(CKTranscriptBackground *)v6 initWithPosterFileURL:v4 fileName:v5 backgroundIdentifier:v7 extensionIdentifier:@"unknown" extensionIsPlayground:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)generateMissingWatchAssetIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CKConversation *)self chat];
  v6 = [v5 transcriptBackgroundPath];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    v8 = [v7 im_associatedWatchBackgroundURL];

    if (v8 && ([MEMORY[0x1E696AC08] defaultManager], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "path"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "fileExistsAtPath:", v10), v10, v9, (v11 & 1) == 0))
    {
      v12 = [(CKConversation *)self _makeTranscriptBackgroundFromIMChatProperties];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __69__CKConversation_generateMissingWatchAssetIfNecessaryWithCompletion___block_invoke;
      v13[3] = &unk_1E72F23B0;
      v14 = v8;
      v15 = v4;
      [v12 createBackgroundWithWatchDataWithCompletion:v13];
    }

    else
    {
      (*(v4 + 2))(v4, 1);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 1);
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

- (void)_handleTranscriptBackgroundChangeNotification:(id)a3
{
  v4 = [a3 object];
  if (!v4 || ([(CKConversation *)self chat], v5 = objc_claimAutoreleasedReturnValue(), v5, v4 == v5))
  {
    if (!-[CKConversation _isDisplayingPendingTranscriptBackground](self, "_isDisplayingPendingTranscriptBackground") || (v6 = self->_pendingTranscriptBackgroundID, [v4 transcriptBackgroundGUID], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = -[NSString isEqualToString:](v6, "isEqualToString:", v7), v7, (v6 & 1) == 0))
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "IMChat notified the conversation of a transcript background change.", v13, 2u);
      }

      v9 = [(CKConversation *)self _makeTranscriptBackgroundFromIMChatProperties];
      transcriptBackground = self->_transcriptBackground;
      self->_transcriptBackground = v9;

      pendingTranscriptBackgroundID = self->_pendingTranscriptBackgroundID;
      self->_pendingTranscriptBackgroundID = 0;

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:@"CKConversationTranscriptBackgroundChangedNotification" object:self];
    }
  }
}

- (void)didBecomeActive
{
  v2 = [(CKConversation *)self chat];
  if (!v2 && IMOSLoggingEnabled())
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
    [v2 beginListeningToAttributionChanges];
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

  v4 = [(CKConversation *)self chat];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 beginObservingHandleStatuses];
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

    v6 = 0;
  }

  return v6;
}

+ (id)newPendingConversation
{
  v2 = [CKPendingConversation alloc];

  return [(CKConversation *)v2 initWithChat:0];
}

+ (id)conversationForAddresses:(id)a3 allowRetargeting:(BOOL)a4 candidateConversation:(id)a5
{
  v29 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v6 = a5;
  v7 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v37 = 0;
  v32 = [v7 existingChatForAddresses:v31 allowRetargeting:v29 bestHandles:&v37];
  v30 = v37;

  v8 = v6;
  v9 = v8;
  if (v32)
  {
    v10 = [v8 chat];
    v11 = [v10 isEqual:v32];

    v12 = v9;
    if ((v11 & 1) == 0)
    {
      [v9 setUnsentComposition:0];
      v13 = +[CKConversationList sharedConversationList];
      v14 = [v13 conversationForExistingChat:v32];
      v12 = [v14 copyForPendingConversation];
    }

    [v12 refreshServiceForSending];
  }

  else
  {
    [v8 setUnsentComposition:0];
    v15 = +[CKConversationList sharedConversationList];
    v12 = [v15 pendingConversationCreatingIfNecessary];

    if (v29 && (v16 = [v30 count], v16 == objc_msgSend(v31, "count")))
    {
      v17 = v30;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v18 = [MEMORY[0x1E69A5A80] sharedInstance];
      v19 = [v18 __ck_bestAccountForAddresses:v31];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = v31;
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

    [v12 setPendingHandles:v17];
    v30 = v17;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = @"NO";
      if (v29)
      {
        v27 = @"YES";
      }

      *buf = 138412546;
      v39 = v27;
      v40 = 2112;
      v41 = v12;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "conversationForAddresses (allowRetargeting is %@) using %@", buf, 0x16u);
    }
  }

  return v12;
}

+ (id)conversationForContacts:(id)a3 candidateConversation:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v20 = 0;
  v8 = [v7 existingChatForContacts:v5 bestHandles:&v20];
  v9 = v20;

  v10 = v6;
  v11 = v10;
  if (v8)
  {
    v12 = [v10 chat];
    v13 = [v12 isEqual:v8];

    v14 = v11;
    if ((v13 & 1) == 0)
    {
      [v11 setUnsentComposition:0];
      v15 = +[CKConversationList sharedConversationList];
      v16 = [v15 conversationForExistingChat:v8];
      v14 = [v16 copyForPendingConversation];
    }

    [v14 refreshServiceForSending];
  }

  else
  {
    [v10 setUnsentComposition:0];
    v17 = +[CKConversationList sharedConversationList];
    v14 = [v17 pendingConversationCreatingIfNecessary];

    [v14 setPendingHandles:v9];
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "conversationForContacts using %@", buf, 0xCu);
    }
  }

  return v14;
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
  v6 = [(CKConversation *)self handles];
  v7 = [v6 sortedArrayUsingDescriptors:v5];

  return v7;
}

- (BOOL)containsHandleWithUID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CKConversation *)self handles];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) ID];
        v10 = [v9 isEqualToString:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)acceptTransfer:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(19);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Accept transfer %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v6 = v3;
    _CKLogExternal();
  }

  v5 = [MEMORY[0x1E69A5B80] sharedInstance];
  [v5 acceptTransfer:v3];
}

- (void)acceptTransferAndUpdateReasonForTapped:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(19);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Accept transfer %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v6 = v3;
    _CKLogExternal();
  }

  v5 = [MEMORY[0x1E69A5B80] sharedInstance];
  [v5 acceptTransferAndUpdateReasonForTapped:v3];
}

- (void)retrieveLocalFileURLForTransferGUID:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(19);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Retrieve local file URL for transfer %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v6 = v3;
    _CKLogExternal();
  }

  v5 = [MEMORY[0x1E69A5B80] sharedInstance];
  [v5 retrieveLocalFileURLForFileTransferWithGUID:v3 options:0 completion:0];
}

- (void)_handleChatParticipantsDidChange:(id)a3
{
  v8 = [a3 object];
  v4 = [(CKConversation *)self chat];
  v5 = [v8 isEqual:v4];

  if (v5)
  {
    recipients = self->_recipients;
    self->_recipients = 0;

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"CKConversationParticipantsDidChangeNotification" object:self];

    [(CKConversation *)self updateKeyTransparencyStatusForChatParticipantsDidChange:v8];
  }
}

- (void)_handleChatJoinStateDidChange:(id)a3
{
  v7 = [a3 object];
  v4 = [(CKConversation *)self chat];
  v5 = [v7 isEqual:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"CKConversationJoinStateDidChangeNotification" object:self];
  }
}

- (void)_handleEngroupFinishedUpdating:(id)a3
{
  v8 = [a3 object];
  v4 = [(CKConversation *)self chat];
  v5 = [v8 isEqual:v4];

  if (v5)
  {
    pendingRecipients = self->_pendingRecipients;
    self->_pendingRecipients = 0;

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"CKConversationPendingRecipientsUpdatedNotification" object:self];
  }
}

- (void)_handleLazuliCapabilitiesUpdatedNotification:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = [(CKConversation *)self chat];
  v7 = [v6 participants];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __63__CKConversation__handleLazuliCapabilitiesUpdatedNotification___block_invoke;
  v13 = &unk_1E72ED2F8;
  v8 = v5;
  v14 = v8;
  v15 = &v16;
  [v7 enumerateObjectsUsingBlock:&v10];

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
        v23 = self;
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

- (void)setUnsentComposition:(id)a3
{
  v4 = a3;
  v5 = +[CKDraftManager sharedInstance];
  [v5 setDraft:v4 forConversation:self];
}

- (void)updateUnsentCompositionByAppendingComposition:(id)a3
{
  v7 = a3;
  v4 = [(CKConversation *)self unsentComposition];
  if (([v4 isAudioComposition] & 1) == 0)
  {
    if (v4)
    {
      v5 = [v4 compositionByAppendingComposition:v7];
    }

    else
    {
      v5 = v7;
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
  v2 = [(CKConversation *)self chat];
  v3 = [v2 isDowngraded];

  return v3;
}

- (BOOL)forceMMS
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 forceMMS];

  return v3;
}

- (void)setForceMMS:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKConversation *)self chat];
  [v4 setForceMMS:v3];
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
    v6 = [(CKConversation *)self chat];
    v7 = [v6 isRCS];

    v3 = CKFrameworkBundle();
    v4 = v3;
    if (v7)
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
  v2 = [(CKConversation *)self chat];
  v3 = [v2 canLeaveChat];

  return v3;
}

- (BOOL)hasLeft
{
  v3 = [(CKConversation *)self chat];
  v4 = [v3 joinState];

  return ((v4 - 4) < 0xFFFFFFFFFFFFFFFELL) & ~[(CKConversation *)self isPending];
}

- (BOOL)hasLeftGroupChat
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 hasLeftGroup];

  return v3;
}

- (void)leave
{
  v2 = [(CKConversation *)self chat];
  [v2 leave];
}

- (BOOL)isBusinessChatDisabled
{
  v2 = [(CKConversation *)self isBusinessConversation];
  if (v2)
  {
    LOBYTE(v2) = [MEMORY[0x1E69A8020] supportsBusinessChat] ^ 1;
  }

  return v2;
}

- (BOOL)supportsMutatingGroupMembers
{
  if ((CKIsRunningUITests() || CKIsRunningForDevelopmentOnSimulator()) && [(CKConversation *)self isGroupConversation])
  {
    return 1;
  }

  v4 = [(CKConversation *)self chat];
  v5 = [v4 supportsCapabilities:32];

  return v5;
}

- (BOOL)supportsAutomaticTranslation
{
  v3 = [(CKConversation *)self chat];
  v4 = [v3 isTranslationSupportedForSystemLanguage];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKConversation *)self chat];
  v6 = [v5 supportsCapabilities:0x800000];

  return v6;
}

- (BOOL)supportsMutatingGroupIdentity
{
  v3 = [(CKConversation *)self chat];
  if ([v3 supportsCapabilities:16])
  {
    v4 = [(CKConversation *)self shouldDisplayGroupIdentity];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)supportsDeleteAndBlockGroup
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 supportsCapabilities:256];

  return v3;
}

- (BOOL)suppressesMutationsFromLocalDevice
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 _suppressesMutationsFromLocalDevice];

  return v3;
}

- (BOOL)isAdHocGroupConversation
{
  if (![(CKConversation *)self isGroupConversation])
  {
    return 0;
  }

  v3 = [(CKConversation *)self conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:0];
  v4 = [v3 groupPhoto];
  v5 = [v4 length] == 0;

  return v5;
}

- (BOOL)canReplyToChatItem:(id)a3
{
  v4 = a3;
  v5 = [(CKConversation *)self chat];
  v6 = [(CKConversation *)self chat];
  if ([v6 isStewieChat])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CKConversation *)self chat];
    v9 = [v8 isStewieSharingChat];

    v7 = v9 ^ 1;
  }

  v10 = [MEMORY[0x1E6994658] sharedSystemShellSwitcher];
  v11 = [v10 isClarityBoardEnabled];

  if (![v5 supportsCapabilities:4] || -[CKConversation hasLeftGroupChat](self, "hasLeftGroupChat") || -[CKConversation isReadOnlyChat](self, "isReadOnlyChat") || (objc_msgSend(v5, "isBusinessChat") & 1) != 0)
  {
    v12 = 0;
  }

  else if ([v5 isOscarChat])
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 & (v11 ^ 1);
  }

  v13 = [v4 canInlineReply];

  return v12 & v13;
}

- (int64_t)maximumRecipientsForSendingService
{
  v3 = [(CKConversation *)self sendingService];
  v4 = [(CKConversation *)self lastAddressedHandle];
  v5 = [(CKConversation *)self lastAddressedSIMID];
  if (v3)
  {
    v6 = [v3 __ck_maxRecipientCountForHandle:v4 simID:v5];
  }

  else
  {
    v7 = [MEMORY[0x1E69A5CA0] smsService];
    v6 = [v7 __ck_maxRecipientCountForHandle:v4 simID:v5];
  }

  return v6;
}

- (BOOL)canInsertMoreRecipients
{
  if (![(CKConversation *)self recipientCount])
  {
    return 1;
  }

  v3 = [(CKConversation *)self recipientCount];
  return v3 < [(CKConversation *)self maximumRecipientsForSendingService];
}

- (BOOL)canMuteStateBeToggled
{
  v3 = [(CKConversation *)self chat];

  if (v3)
  {
    v4 = [(CKConversation *)self chat];
    v5 = [v4 isStewieChat] ^ 1;
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
      v5 = [(CKConversation *)self handles];
      v6 = [v5 firstObject];

      if ([v6 isBusiness])
      {
        objc_storeStrong(&self->_businessHandle, v6);
      }

      if (!*p_businessHandle)
      {
        v7 = [(CKConversation *)self chat];
        v8 = [v7 businessHandle];
        v9 = self->_businessHandle;
        self->_businessHandle = v8;
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
  v3 = [(CKConversation *)self isBusinessConversation];
  if (v3)
  {
    LOBYTE(v3) = ![(CKConversation *)self isChatBot];
  }

  return v3;
}

- (NSString)chatbotURI
{
  if ([(CKConversation *)self isChatBot])
  {
    v3 = [(CKConversation *)self chat];
    v4 = [v3 chatIdentifier];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"sip:" withString:&stru_1F04268F8];
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
      v4 = [(CKConversation *)self businessHandle];
      v5 = [v4 brand];
      v6 = [v5 brandURI];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Messages for Business delete brand logos for brand URI: %@", &v9, 0xCu);
    }
  }

  v7 = [(CKConversation *)self businessHandle];
  v8 = [v7 brand];
  [v8 clearCachedAssets:&__block_literal_global_96];
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
    v2 = [MEMORY[0x1E69A5B00] sharedInstance];
    v3 = [v2 isStewieActive];
  }

  else
  {
    v3 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"YES";
      if (v3)
      {
        v5 = @"NO";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Conversation can be deleted: %@", &v7, 0xCu);
    }
  }

  return v3 ^ 1;
}

- (BOOL)isAppleConversation
{
  v3 = [(CKConversation *)self isBusinessConversation];
  if (v3)
  {
    v4 = [(CKConversation *)self chat];
    v5 = [v4 isAppleChat];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isMakoConversation
{
  v3 = [(CKConversation *)self isBusinessConversation];
  if (v3)
  {
    v4 = [(CKConversation *)self chat];
    v5 = [v4 isMakoChat];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isWithMyself
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5A80] sharedInstance];
  v4 = [(CKConversation *)self sendingService];
  v5 = [v3 bestActiveAccountForService:v4];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(CKConversation *)self handles];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v5 aliases];
        v13 = [v11 ID];
        v14 = [v12 containsObject:v13];

        if (!v14)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v3 = [(CKConversation *)self chat];
  if (v3)
  {
    v4 = [(CKConversation *)self chat];
    v5 = [v4 isReplyEnabled];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)unmute
{
  v2 = [(CKConversation *)self chat];
  [v2 setMuteUntilDate:0];
}

- (void)setMutedUntilDate:(id)a3
{
  v4 = a3;
  v5 = [(CKConversation *)self chat];
  [v5 setMuteUntilDate:v4];
}

- (BOOL)shouldSendReadReceipts
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 __ck_sendReadReceipts];

  return v3;
}

- (void)setSendReadReceipts:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKConversation *)self chat];
  [v4 __ck_setSendReadReceipts:v3];
}

- (BOOL)shouldAutomaticallyTranslate
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 isAutomaticTranslationEnabled];

  return v3;
}

- (NSString)translationLanguageCode
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 translationLanguageCode];

  return v3;
}

- (void)setAutomaticallyTranslate:(BOOL)a3 languageCode:(id)a4 userLanguageCode:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(CKConversation *)self chat];
  [v10 setAutomaticallyTranslate:v6 languageCode:v9 userLanguageCode:v8];
}

- (NSString)userTranslationLanguageCode
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 userTranslationLanguageCode];

  return v3;
}

- (void)canShareFocusStatusWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(CKConversation *)self chat];

  if (v4)
  {
    v5 = [(CKConversation *)self chat];
    [v5 canShareFocusStatusWithCompletion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)isInvitedToViewMyFocusStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CKConversation *)self chat];

  if (v5)
  {
    v6 = [(CKConversation *)self chat];
    [v6 isInvitedToViewMyFocusStatusWithCompletion:v4];
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

    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)addRecipientHandles:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithArray:v5];
  [(CKConversation *)self setPendingRecipients:v6];

  v7 = [(CKConversation *)self chat];
  [v7 inviteParticipants:v5 reason:0];
}

- (void)removeRecipientHandles:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithArray:v5];
  [(CKConversation *)self setPendingRecipients:v6];

  v7 = [(CKConversation *)self chat];
  [v7 removeParticipants:v5 reason:0];
}

- (BOOL)canModifyParticipants
{
  if ([(CKConversation *)self isGroupConversation])
  {
    v3 = [(CKConversation *)self supportsMutatingGroupMembers];
  }

  else
  {
    v3 = 0;
  }

  if ([(CKConversation *)self canLeave])
  {
    v4 = ![(CKConversation *)self hasLeft];
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v3 & v4;
}

- (id)entityMatchingHandle:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v10 = [v9 defaultIMHandle];
      if ([v10 matchesIMHandle:v4])
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
      v21 = v4;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Recipient not found on conversation mathing handle: %@. Creating a new CKEntity.", buf, 0xCu);
    }
  }

  v13 = [CKEntity alloc];
  v14 = [(CKConversation *)self chat];
  v11 = [(CKEntity *)v13 initWithChat:v14 imHandle:v4];

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

- (id)orderedContactsWithMaxCount:(unint64_t)a3 keysToFetch:(id)a4
{
  v34 = a3;
  v63 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CKConversation *)self recipients];
  if ([v6 count])
  {
    v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v8 = [v7 isTranscriptSharingEnabled];

    if (v8)
    {
      v9 = [(CKConversation *)self chat];
      v10 = [v9 isStewieSharingChat];

      if (v10)
      {
        v11 = [MEMORY[0x1E695DF70] array];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v12 = v6;
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
              v17 = [v16 defaultIMHandle];
              v18 = [v17 isStewieTranscriptSharingHandle];

              if (v18)
              {
                [v11 addObject:v16];
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

        v6 = [v11 copy];
      }
    }

    if ([v6 count] == 1)
    {
      v22 = [v6 firstObject];
      v23 = [v22 cnContactWithKeys:v5];

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
      v60 = [MEMORY[0x1E695DF70] array];
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x3032000000;
      v50[3] = __Block_byref_object_copy__31;
      v50[4] = __Block_byref_object_dispose__31;
      v51 = [MEMORY[0x1E695DF70] array];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__CKConversation_orderedContactsWithMaxCount_keysToFetch___block_invoke;
      aBlock[3] = &unk_1E72F2400;
      v25 = v6;
      v46 = v25;
      v48 = v50;
      v26 = v5;
      v47 = v26;
      p_buf = &buf;
      v27 = _Block_copy(aBlock);
      if ([(CKConversation *)self completedInitialChatMessagesLoad])
      {
        v28 = [(CKConversation *)self chat];
        v29 = [v28 chatItems];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __58__CKConversation_orderedContactsWithMaxCount_keysToFetch___block_invoke_3;
        v41[3] = &unk_1E72F2428;
        v42 = v27;
        v43 = &buf;
        v44 = v35;
        [v29 enumerateMessagesWithOptions:2 usingBlock:v41];

        v30 = v42;
      }

      else
      {
        v31 = [(CKConversation *)self chat];
        v30 = [v31 lastIncomingFinishedMessage];

        if (v30)
        {
          (*(v27 + 2))(v27, v30);
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
        v20 = [(CKConversation *)self chat];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v20;
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

  v4 = [(CKConversation *)self chat];
  [v4 refreshServiceForSending];
}

- (id)sendingServiceImpl
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 account];
  v4 = [v3 service];

  if (!v4)
  {
    v4 = [MEMORY[0x1E69A5C90] smsService];
  }

  return v4;
}

- (BOOL)_handleIsForThisConversation:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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

          if (![*(*(&v10 + 1) + 8 * i) compareIDs:{v4, v10}])
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

- (void)_handlePreferredServiceChangedNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"CKConversationPreferredServiceChangedNotification" object:self userInfo:0];

  [(CKConversation *)self _clearTypingIndicatorsIfNecessary];
}

- (void)_chatItemsDidChange:(id)a3
{
  previewText = self->_previewText;
  self->_previewText = 0;
}

- (void)_chatPropertiesChanged:(id)a3
{
  v3 = +[CKConversationList sharedConversationList];
  [v3 _postConversationListChangedNotification];
}

- (NSString)pinningIdentifier
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 pinningIdentifier];

  return v3;
}

- (BOOL)wasDetectedAsSMSCategory
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 wasDetectedAsSMSCategory];

  return v3;
}

- (BOOL)isReportedAsSpam
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 valueForChatProperty:*MEMORY[0x1E69A5D50]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int64_t)spamCategory
{
  v3 = [(CKConversation *)self chat];
  v4 = [v3 valueForChatProperty:*MEMORY[0x1E69A5D58]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    return 2;
  }

  v7 = MEMORY[0x1E69A8210];
  v8 = [(CKConversation *)self chat];
  v9 = [v8 valueForChatProperty:*MEMORY[0x1E69A5D40]];
  v10 = [v7 filterActionForCategory:{objc_msgSend(v9, "intValue")}];

  return v10;
}

- (int64_t)spamSubCategory
{
  v3 = [(CKConversation *)self chat];
  v4 = [v3 valueForChatProperty:*MEMORY[0x1E69A5D40]];
  v5 = [v4 intValue];

  v6 = [(CKConversation *)self chat];
  v7 = [v6 valueForChatProperty:*MEMORY[0x1E69A5D48]];
  v8 = [v7 intValue];

  v9 = MEMORY[0x1E69A8210];

  return [v9 filterSubActionForCategory:v5 subCategory:v8];
}

- (NSSet)mergedThreadFilterModes
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 mergedThreadFilterModes];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)hasKnownParticipants
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 hasKnownParticipants];

  return v3;
}

- (id)recipientsSortedByIsContact:(BOOL)a3 alphabetically:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"defaultIMHandle.isContact" ascending:0];
    [v7 addObject:v8];
  }

  if (v4)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"fullName" ascending:1 selector:sel_caseInsensitiveCompare_];
    [v7 addObject:v9];
  }

  v10 = [(CKConversation *)self recipients];
  v11 = [v10 sortedArrayUsingDescriptors:v7];

  return v11;
}

- (BOOL)isToEmailAddress
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CKConversation *)self recipients];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) rawAddress];
        v7 = [v6 _appearsToBeEmail];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)_deleteAllMessagesAndRemoveGroup:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v23 = self;
      v24 = 1024;
      v25 = v3;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "deleting all messages involving conversation %@ and removing group: %d", buf, 0x12u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v20 = self;
    v21 = v3;
    _CKLog();
  }

  v6 = [(CKConversation *)self chat:v20];
  v7 = [v6 isBusinessChat];
  v8 = [MEMORY[0x1E69A7FC8] sharedManager];
  if ([v8 isFeatureEnabled])
  {
    v9 = [v6 hasCommSafetySensitiveMessage];

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = MEMORY[0x1E69A5B30];
    v8 = [(CKConversation *)self chat];
    [v10 registerEvent:2 eventType:3 messageGUID:0 chat:v8 forImages:0];
  }

LABEL_12:
  if (v3)
  {
    [v6 remove];
  }

  else
  {
    [v6 deleteAllHistory];
  }

  if (v7)
  {
    [v6 deleteExtensionPayloadData];
  }

  if (![(CKConversation *)self isGroupConversation])
  {
    v11 = [(CKConversation *)self recipient];
    v12 = [v11 rawAddress];
    v13 = v12 == 0;

    if (!v13)
    {
      v14 = objc_alloc_init(CKDetailsContactsManager);
      v15 = [(CKConversation *)self recipient];
      v16 = [v15 rawAddress];
      [(CKDetailsContactsManager *)v14 setPreferredCallService:0 forID:v16];
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
      v23 = "[CKConversation _deleteAllMessagesAndRemoveGroup:]";
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
    v4 = [(CKConversation *)self limitToLoad];
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

      v4 = 100;
    }

    v6 = CKIsRunningInRemoteIntentClient();
    if (v4 && ((-[IMChat setNumberOfMessagesToKeepLoaded:](self->_chat, "setNumberOfMessagesToKeepLoaded:", v4), [MEMORY[0x1E69A8070] sharedFeatureFlags], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isMergeFilteredThreadsEnabled"), v7, !v8) ? (v9 = 0) : (v9 = -[IMChat supportsMergingFilteredThreads](self->_chat, "supportsMergingFilteredThreads")), v4 != 1 || v9))
    {
      chat = self->_chat;
      if (!v6)
      {
        v11 = [(IMChat *)chat loadMessagesBeforeDate:0 limit:v4 loadImmediately:1];
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
      [(IMChat *)chat fetchMessagesUpToLimit:v4 completion:v12];
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

- (void)fetchAllMessages:(id)a3
{
  v4 = a3;
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    v5 = [(CKConversation *)self limitToLoad];
    if (v5)
    {
      v6 = v5;
      v7 = v5;
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:v5];
      if (v6 != 1)
      {
        chat = self->_chat;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __35__CKConversation_fetchAllMessages___block_invoke;
        v9[3] = &unk_1E72F24A0;
        v9[4] = self;
        v10 = v4;
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

- (void)loadAllUnreadMessagesUpToMessageGUID:(id)a3
{
  v7 = a3;
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    v4 = [(CKConversation *)self limitToLoad];
    if (v4)
    {
      v5 = v4;
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:v4];
      if (v5 != 1)
      {
        v6 = [(IMChat *)self->_chat loadUnreadMessagesWithLimit:v5 fallbackToMessagesUpToGUID:v7];
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
    v5 = [v4 defaultConversationLoadMoreCount];

    v6 = [(CKConversation *)self limitToLoad];
    if (v6)
    {
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:v6];
      if (v6 != 1)
      {
        v7 = [(IMChat *)self->_chat firstNonAssociatedItem];
        v8 = [v7 guid];
        v9 = [(IMChat *)self->_chat loadMessagesBeforeAndAfterGUID:v8 numberOfMessagesToLoadBeforeGUID:v5 numberOfMessagesToLoadAfterGUID:0 loadImmediately:1 threadIdentifier:0];
      }
    }
  }

  os_activity_scope_leave(&v10);
}

- (void)fetchMoreMessagesBeforeFirstMessage:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_19020E000, "com.apple.messages.HistoryLoadMore", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v5, &v11);
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 defaultConversationLoadMoreCount];

    v8 = [(CKConversation *)self limitToLoad];
    if (v8)
    {
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:v8];
      if (v8 != 1)
      {
        v9 = [(IMChat *)self->_chat firstNonAssociatedItem];
        v10 = [v9 guid];
        [(IMChat *)self->_chat fetchMessagesBeforeAndAfterGUID:v10 numberOfMessagesToLoadBeforeGUID:v7 numberOfMessagesToLoadAfterGUID:0 threadIdentifier:0 completion:v4];
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
    v4 = [v3 defaultConversationLoadMoreCount];

    [(CKConversation *)self setLimitToLoad:[(CKConversation *)self limitToLoad]+ v4];
    v5 = [(CKConversation *)self limitToLoad];
    if (v5)
    {
      v6 = v5;
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:v5];
      if (v6 != 1)
      {
        v9 = [(IMChat *)self->_chat lastNonAssociatedItem];
        v7 = [v9 guid];
        v8 = [(IMChat *)self->_chat loadMessagesBeforeAndAfterGUID:v7 numberOfMessagesToLoadBeforeGUID:0 numberOfMessagesToLoadAfterGUID:v4 loadImmediately:1 threadIdentifier:0];
      }
    }
  }
}

- (void)fetchMoreMessagesAfterLastMessage:(id)a3
{
  v10 = a3;
  if (![(CKConversation *)self _earlyReturnHistoryLoad])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 defaultConversationLoadMoreCount];

    [(CKConversation *)self setLimitToLoad:[(CKConversation *)self limitToLoad]+ v5];
    v6 = [(CKConversation *)self limitToLoad];
    if (v6)
    {
      v7 = v6;
      [(IMChat *)self->_chat setNumberOfMessagesToKeepLoaded:v6];
      if (v7 != 1)
      {
        v8 = [(IMChat *)self->_chat lastNonAssociatedItem];
        v9 = [v8 guid];
        [(IMChat *)self->_chat fetchMessagesBeforeAndAfterGUID:v9 numberOfMessagesToLoadBeforeGUID:0 numberOfMessagesToLoadAfterGUID:v5 threadIdentifier:0 completion:v10];
      }
    }
  }
}

- (NSArray)frequentReplies
{
  v2 = [(IMChat *)self->_chat frequentReplies];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
        v13 = self;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "Loading common replies for imchat %@ on conversation %@", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_CKShouldLog())
      {
        v8 = self->_chat;
        v9 = self;
        _CKLog();
      }
    }

    v5 = [CKUIBehavior sharedBehaviors:v8];
    v6 = [v5 commonRepliesLoadLimit];

    v7 = [(IMChat *)self->_chat loadFrequentRepliesLimit:v6 loadImmediately:1];
  }
}

- (void)loadMoreMessages
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 defaultConversationLoadMoreCount];

  [(CKConversation *)self setLimitToLoad:[(CKConversation *)self limitToLoad]+ v4];
  if ([(CKConversation *)self hasLoadedFromSpotlight])
  {

    [(CKConversation *)self loadMoreMessagesBeforeFirstMessage];
  }

  else
  {

    [(CKConversation *)self loadAllMessages];
  }
}

- (void)fetchMoreMessages:(id)a3
{
  v6 = a3;
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 defaultConversationLoadMoreCount];

  [(CKConversation *)self setLimitToLoad:[(CKConversation *)self limitToLoad]+ v5];
  [(CKConversation *)self fetchMoreMessagesBeforeFirstMessage:v6];
}

- (void)setLoadedMessageCount:(unint64_t)a3 loadImmediately:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      limitToLoad = self->_limitToLoad;
      v9 = [(CKConversation *)self shortDescription];
      *buf = 67109634;
      v18 = limitToLoad;
      v19 = 2048;
      v20 = a3;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Setting limit to load (old: %d   new: %lu) for conversation: %@", buf, 0x1Cu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v10 = self->_limitToLoad;
    [(CKConversation *)self shortDescription];
    v16 = v15 = a3;
    v14 = v10;
    _CKLogExternal();
  }

  if (self->_limitToLoad == a3)
  {
    if (![(CKConversation *)self hasLoadedFromSpotlight])
    {
      if (self->_limitToLoad)
      {
        v11 = [(CKConversation *)self chat];
        v12 = [v11 _items];
        v13 = [v12 count] == 0;

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
    [(CKConversation *)self setLimitToLoad:a3];
    if (v4 && ![(CKConversation *)self hasLoadedFromSpotlight])
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

  v3 = [(IMChat *)self->_chat unreadMessageCount];
  v4 = [(IMChat *)self->_chat lastSeenMessageGuid];
  v5 = [(IMChat *)self->_chat messageForGUID:v4];
  if (v3)
  {
    v6 = [v4 length] != 0;
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

- (id)ensureMessageWithGUIDIsLoaded:(id)a3
{
  v4 = a3;
  v5 = [(IMChat *)self->_chat messageForGUID:v4];
  if (!v5)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 defaultConversationViewingMessageCount];

    v8 = [(IMChat *)self->_chat loadMessagesBeforeAndAfterGUID:v4 numberOfMessagesToLoadBeforeGUID:v7 numberOfMessagesToLoadAfterGUID:v7 loadImmediately:1 threadIdentifier:0];
    v5 = [(IMChat *)self->_chat messageForGUID:v4];
    if (v5)
    {
      _sHasLoadedGuidFromSpotlight = 1;
      [(CKConversation *)self setNeedsReload];
    }

    v9 = [(CKConversation *)self limitToLoad];
    v10 = [(IMChat *)self->_chat messageCount];
    if (v9 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    [(CKConversation *)self setLimitToLoad:v11];
  }

  return v5;
}

- (void)enumerateMessagesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v8 = [(CKConversation *)self chat];
  v7 = [v8 chatItems];
  [v7 enumerateMessagesWithOptions:a3 usingBlock:v6];
}

- (void)markAllMessagesAsRead
{
  if (![MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    goto LABEL_5;
  }

  v3 = [(CKConversation *)self chat];
  v4 = v3;
  if (!v3 || (v6 = v3, v5 = [v3 allowedByScreenTime], v4 = v6, v5))
  {

LABEL_5:
    v7 = [(CKConversation *)self chat];
    [v7 markAllMessagesAsRead];
    v4 = v7;
  }
}

- (void)markLastMessageAsUnread
{
  v2 = [(CKConversation *)self chat];
  [v2 markLastMessageAsUnread];
}

- (void)updateLastViewedDate
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(CKConversation *)self setDateLastViewed:v3];
}

- (id)shortDescription
{
  v3 = objc_getAssociatedObject(self, "CKConversationShortDescriptionKey");
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = objc_opt_class();
    v6 = [(CKConversation *)self chat];
    v7 = [v6 persistentID];
    v8 = [(CKConversation *)self chat];
    v9 = [v8 guid];
    v10 = [(CKConversation *)self chat];
    v11 = [v10 participants];
    v3 = [v4 initWithFormat:@"%@<%p>{identifier:'%@'  guid:'%@'}%@", v5, self, v7, v9, v11];

    objc_setAssociatedObject(self, "CKConversationShortDescriptionKey", v3, 1);
  }

  return v3;
}

- (int64_t)compareBySequenceNumberAndDateDescending:(id)a3
{
  v4 = a3;
  v5 = [v4 date];
  v6 = [(CKConversation *)self date];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v7 = [(IMChat *)self->_chat compareChatByLastFinishedMessageDate:v4[6]];
  }

  return v7;
}

- (void)setPendingComposeRecipients:(id)a3
{
  v4 = [a3 composeRecipientHandles];
  [(CKConversation *)self setPendingHandles:v4];
}

- (void)setPendingRecipients:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(NSSet *)self->_pendingRecipients isEqualToSet:v5])
  {
    objc_storeStrong(&self->_pendingRecipients, a3);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"CKConversationPendingRecipientsUpdatedNotification" object:self];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412546;
        v9 = v5;
        v10 = 2112;
        v11 = @"CKConversationPendingRecipientsUpdatedNotification";
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Setting pending recipients to: %@ and firing notification: %@", &v8, 0x16u);
      }
    }
  }
}

- (void)setPendingHandles:(id)a3
{
  v5 = a3;
  if (self->_pendingHandles != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pendingHandles, a3);
    [(CKConversation *)self resetCaches];
    v5 = v6;
  }
}

- (NSArray)pendingEntities
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(CKConversation *)self pendingHandles];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = [(CKConversation *)self pendingHandles];
    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(CKConversation *)self pendingHandles];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[CKEntity alloc] initWithIMHandle:*(*(&v15 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v4 = [(CKConversation *)self recipients];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) rawAddress];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(CKConversation *)self recipients];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) fullName];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (BOOL)canAcceptMediaObjectType:(int)a3 givenMediaObjects:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(CKConversation *)self sendingService];
  v8 = [(CKConversation *)self lastAddressedHandle];
  v9 = [(CKConversation *)self lastAddressedSIMID];
  v10 = [v7 __ck_isSMS];
  v11 = objc_opt_class();
  if (v10)
  {
    v12 = [v11 _sms_canAcceptMediaObjectType:v4 givenMediaObjects:v6 phoneNumber:v8 simID:v9];
  }

  else
  {
    v12 = [v11 _iMessage_canAcceptMediaObjectType:v4 givenMediaObjects:v6];
  }

  v13 = v12;

  return v13;
}

- (BOOL)_allowedByScreenTime
{
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] && (-[CKConversation chat](self, "chat"), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [(CKConversation *)self chat];
    v6 = [v5 allowedToShowConversationSync];
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (BOOL)canSendComposition:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CKConversation *)self canSendComposition:v6 forCapabilities:0x10000 error:a4];
  if (a4 && !v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*a4 localizedDescription];
        v20 = 138412290;
        v21 = v9;
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

  v10 = [(CKConversation *)self sendingService];
  v11 = [(CKConversation *)self isToEmailAddress];
  if ([v10 __ck_isSMS])
  {
    v12 = objc_opt_class();
    v13 = [(CKConversation *)self lastAddressedHandle];
    v14 = [(CKConversation *)self lastAddressedSIMID];
    v15 = [v12 _sms_canSendComposition:v6 lastAddressedHandle:v13 lastAddressedSIMID:v14 recipientsContainEmail:v11 error:a4];
  }

  else if ([v10 __ck_isRCS])
  {
    v16 = objc_opt_class();
    v13 = [(CKConversation *)self lastAddressedHandle];
    v14 = [(CKConversation *)self lastAddressedSIMID];
    v15 = [v16 _rcs_canSendComposition:v6 lastAddressedHandle:v13 lastAddressedSIMID:v14 recipientsContainEmail:v11 error:a4];
  }

  else
  {
    if (![v10 __ck_isMadrid])
    {
      v18 = 1;
      goto LABEL_15;
    }

    v17 = objc_opt_class();
    v13 = [(CKConversation *)self serviceReachabilityContext];
    v14 = [(CKConversation *)self chat];
    v15 = [v17 _iMessage_canSendComposition:v6 reachabilityContext:v13 forceSMS:objc_msgSend(v14 error:{"shouldForceToSMS"), a4}];
  }

  v18 = v15;

LABEL_15:
LABEL_18:

  return v18;
}

- (IMServiceReachabilityContext)serviceReachabilityContext
{
  v3 = [MEMORY[0x1E69A5CA8] sharedController];
  v4 = [(CKConversation *)self chat];
  v5 = [v3 reachabilityContextForChat:v4];

  return v5;
}

- (BOOL)eligibleToSendWithMadrid
{
  v2 = MEMORY[0x1E69A5CA0];
  v3 = [(CKConversation *)self serviceReachabilityContext];
  LOBYTE(v2) = [v2 iMessageEnabledForReachabilityContext:v3];

  return v2;
}

- (BOOL)canSendToRecipients:(id)a3 alertIfUnable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKConversation *)self sendingService];
  if ([v7 __ck_isSMS])
  {
    v8 = [(CKConversation *)self _sms_canSendToRecipients:v6 alertIfUnable:v4];
  }

  else
  {
    v8 = [(CKConversation *)self _iMessage_canSendToRecipients:v6 alertIfUnable:v4];
  }

  v9 = v8;

  return v9;
}

- (double)maxTrimDurationForMedia:(id)a3
{
  v4 = [a3 mediaType];
  v5 = [(CKConversation *)self sendingService];
  v6 = [v5 __ck_isSMS];
  v7 = objc_opt_class();
  if (v6)
  {
    [v7 _sms_maxTrimDurationForMediaType:v4];
  }

  else
  {
    [v7 _iMessage_maxTrimDurationForMediaType:v4];
  }

  v9 = v8;

  return v9;
}

- (void)resortMessagesIfNecessary
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(CKConversation *)self dateLastViewed];
  if (v4)
  {
    v5 = [(CKConversation *)self dateLastViewed];
    [v3 timeIntervalSinceDate:v5];
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
          v12 = [(CKConversation *)self dateLastViewed];
          v13 = +[CKUIBehavior sharedBehaviors];
          [v13 transcriptResortTimeout];
          v16 = 138413058;
          v17 = self;
          v18 = 2112;
          v19 = v12;
          v20 = 2112;
          v21 = v3;
          v22 = 2048;
          v23 = v14;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "re-sorting messages in conversation: %@ date last viewed: %@, date now: %@, resort timeout: %f", &v16, 0x2Au);
        }
      }

      v15 = [(CKConversation *)self chat];
      [v15 resortMessages];
    }
  }
}

- (id)messageWithComposition:(id)a3
{
  v4 = a3;
  v5 = [(CKConversation *)self chat];
  v6 = [v5 localTypingMessageGUID];

  v7 = [(CKConversation *)self sendingServiceImpl];
  if (([v7 shouldReuseTypingIndicatorGUID] & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = [(CKConversation *)self chat];
  v9 = [v8 isGroupChat];

  if (v9)
  {
LABEL_5:
    v10 = [MEMORY[0x1E696AEC0] stringGUID];

    v6 = v10;
  }

  v11 = [v4 messageWithGUID:v6];

  return v11;
}

- (id)messagesFromComposition:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKConversation *)self chat];
  v6 = [v5 localTypingMessageGUID];

  v7 = [(CKConversation *)self sendingServiceImpl];
  if (([v7 shouldReuseTypingIndicatorGUID] & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = [(CKConversation *)self chat];
  v9 = [v8 isGroupChat];

  if (v9)
  {
LABEL_5:
    v10 = [MEMORY[0x1E696AEC0] stringGUID];

    v6 = v10;
  }

  v11 = [(CKConversation *)self sendingService];
  v12 = [v4 messagesFromCompositionFirstGUIDForMessage:v6 sendingService:v11];

  v13 = [(CKConversation *)self chat];
  LODWORD(v11) = [v13 shouldDisplayOffGridModeStatus];

  if (v11)
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

- (void)retryMessage:(id)a3 onService:(id)a4
{
  v7 = a3;
  v6 = a4;
  [v7 setIsTapToRetry:1];
  if (([v7 scheduleState] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [v7 setScheduleState:1];
  }

  [(CKConversation *)self sendMessage:v7 onService:v6 newComposition:0];
  [v7 setIsTapToRetry:0];
}

- (void)sendMessage:(id)a3 onService:(id)a4 newComposition:(BOOL)a5
{
  v5 = a5;
  v61 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v49 = a4;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      *buf = 138412802;
      v56 = v8;
      v57 = 2112;
      if (v5)
      {
        v10 = @"YES";
      }

      v58 = v49;
      v59 = 2112;
      v60 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "sendMessage:onService:newComposition: [%@] [%@] [%@]", buf, 0x20u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    if (v5)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v46 = v49;
    v47 = v11;
    v44 = v8;
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
    v48 = [(CKConversation *)self chat];
    if (v49)
    {
      v14 = [MEMORY[0x1E69A5A80] sharedInstance];
      v15 = [v14 bestAccountForService:v49];
    }

    else
    {
      v15 = [v48 account];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v16 = [v8 fileTransferGUIDs];
    v17 = [v16 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v17)
    {
      v18 = *v51;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v50 + 1) + 8 * i);
          v21 = [MEMORY[0x1E69A5B80] sharedInstance];
          [v21 assignTransfer:v20 toMessage:v8 account:v15];
        }

        v17 = [v16 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v17);
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v8 guid];
        *buf = 138412290;
        v56 = v23;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Sending message with guid: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v45 = [v8 guid];
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v56 = v48;
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "  => Chat: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v45 = v48;
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v48 account];
        *buf = 138412290;
        v56 = v26;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "  => Sending account: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v45 = [v48 account];
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v48 account];
        v29 = [v28 displayName];
        *buf = 138412290;
        v56 = v29;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "  => Display name: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v30 = [v48 account];
      v45 = [v30 displayName];
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [v48 participants];
        v33 = [v32 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v56 = v33;
        _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "  => Recipients: [%@]", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v34 = [v48 participants];
      v45 = [v34 componentsJoinedByString:{@", "}];
      _CKLogExternal();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [v8 fileTransferGUIDs];
        v37 = [v36 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v56 = v37;
        _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "  => Transfers: [%@]", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v38 = [v8 fileTransferGUIDs];
      v45 = [v38 componentsJoinedByString:{@", "}];
      _CKLogExternal();
    }

    [v48 sendMessage:v8 onService:{v49, v45}];
    v39 = [(CKConversation *)self chat];
    if ([v39 unreadMessageCount] && CKIsRunningInMessages())
    {
      v40 = [v8 isTypingMessage];

      if ((v40 & 1) == 0 && (!+[CKStarkManager isCarPlayConnected]|| !CKIsScreenLocked()))
      {
        if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = [(CKConversation *)self chat];
            v43 = [v42 chatIdentifier];
            *buf = 138412290;
            v56 = v43;
            _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Marking chat %@ as read on message send ", buf, 0xCu);
          }
        }

        [(CKConversation *)self markAllMessagesAsRead];
      }
    }

    else
    {
    }

    [(CKConversation *)self _setProofReadingInfoForChat:v48 withMessage:v8];
  }
}

- (void)_setProofReadingInfoForChat:(id)a3 withMessage:(id)a4
{
  v59[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 text];
  v8 = [v7 __im_messagePartIndexes];
  v9 = [v8 lastIndex];

  v10 = [v7 __im_messagePartMatchingPartIndex:v9];
  v11 = [v10 messagePartBody];
  v12 = [v11 string];

  v13 = [v12 length];
  v14 = [v5 proofreadingInfo];
  v15 = *MEMORY[0x1E69A5860];
  v16 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69A5860]];

  if ([v16 count])
  {
    v49 = v10;
    v50 = v6;
    v17 = v12;
    v18 = [v5 proofreadingInfo];
    v19 = [v18 objectForKeyedSubscript:v15];
    v20 = [v19 objectForKeyedSubscript:@"UnderlineRanges"];

    v21 = v20;
    if ([v20 count])
    {
      v47 = [v50 guid];
      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"p:%ld/%@", v9, v47];
      v10 = v49;
      v12 = v17;
      if (v9 && CKIsRunningInMacCatalyst())
      {
        v46 = v21;
        v22 = [v7 attributedSubstringFromRange:{0, v13}];
        v23 = [v22 string];

        v24 = [v5 proofreadingInfo];
        v25 = [v24 objectForKeyedSubscript:v15];
        v26 = [v25 objectForKeyedSubscript:@"TextCorrections"];

        v27 = [v26 lastObject];
        if (v27)
        {
          v44 = [v46 lastObject];
          [v44 rangeValue];
          v42 = v28;
          v29 = [v23 length];
          v40 = v29 - [v27 length];
          v30 = [v5 proofreadingInfo];
          v31 = [v30 objectForKeyedSubscript:v15];
          [v31 objectForKeyedSubscript:@"ReplacedStrings"];
          v39 = v43 = v26;

          v55 = v27;
          v56[0] = @"TextCorrections";
          v45 = v27;
          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
          v57[0] = v41;
          v56[1] = @"ReplacedStrings";
          v38 = [v39 lastObject];
          v54 = v38;
          v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
          v57[1] = v32;
          v56[2] = @"UnderlineRanges";
          v33 = [MEMORY[0x1E696B098] valueWithRange:{v40, v42}];
          v53 = v33;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
          v57[2] = v34;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];

          v27 = v45;
          v51[0] = *MEMORY[0x1E69A5868];
          v51[1] = v15;
          v52[0] = v48;
          v52[1] = v35;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
          [v5 setProofreadingInfo:v36];

          v26 = v43;
        }

        v10 = v49;
        v6 = v50;
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
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
        [v5 setProofreadingInfo:v23];
        v6 = v50;
      }
    }

    else
    {

      v12 = v17;
      v10 = v49;
      v6 = v50;
    }
  }
}

- (void)sendMessage:(id)a3 newComposition:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v11 = v4;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "sending message on preferred service (newComposition: %d)", buf, 8u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v9 = v4;
    _CKLog();
  }

  v8 = [(CKConversation *)self sendingService];
  [(CKConversation *)self sendMessage:v6 onService:v8 newComposition:v4];
}

- (void)retractMessagePart:(id)a3
{
  v4 = a3;
  v5 = [(CKConversation *)self chat];
  [v5 retractMessagePart:v4];
}

- (void)retractScheduledMessageParts:(id)a3 fromAggregateChatItem:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AD50] indexSet];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
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

        [v8 addIndex:{objc_msgSend(*(*(&v16 + 1) + 8 * v13++), "index", v16)}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [(CKConversation *)self chat];
  v15 = [v8 copy];
  [v14 retractScheduledMessagePartIndexes:v15 fromChatItem:v7];
}

- (void)editMessageItem:(id)a3 partIndex:(int64_t)a4 withNewComposition:(id)a5
{
  v19 = a5;
  v8 = a3;
  v9 = [v19 superFormatText:0];
  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isAutomaticOutgoingTranslationEnabled];

  v12 = 0;
  if (v11)
  {
    v13 = [v19 superFormatTranslation];
    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E69A8308]);
      v15 = [v19 sourceLanguageID];
      v16 = [v19 destinationLanguageID];
      v12 = [v14 initWithSourceLanguage:v15 translationLanguage:v16 translatedText:v13];
    }

    else
    {
      v12 = 0;
    }
  }

  v17 = [(CKConversation *)self _backwardCompatabilityTextForEditedMessagePartText:v9];
  v18 = [(CKConversation *)self chat];
  [v18 editMessageItem:v8 atPartIndex:a4 withNewPartText:v9 newPartTranslation:v12 backwardCompatabilityText:v17];
}

- (void)resendEditedMessageItem:(id)a3 forPartIndex:(int64_t)a4
{
  v6 = a3;
  v11 = [v6 body];
  v7 = [v11 __im_messagePartMatchingPartIndex:a4];
  v8 = [v7 messagePartBody];
  if ([v8 length])
  {
    v9 = [(CKConversation *)self _backwardCompatabilityTextForEditedMessagePartText:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CKConversation *)self chat];
  [v10 resendEditedMessageItem:v6 forPartIndex:a4 withBackwardCompatabilityText:v9];
}

- (void)appendTranslation:(id)a3 toMessageItem:(id)a4 forPartIndex:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CKConversation *)self chat];
  [v10 appendTranslation:v9 toMessageItem:v8 forPartIndex:a5];
}

- (id)_backwardCompatabilityTextForEditedMessagePartText:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD0E8];
  v4 = a3;
  v5 = [v3 currentInputMode];
  v6 = [v5 primaryLanguage];

  v7 = IMSharedUtilitiesFrameworkBundle();
  v8 = MEMORY[0x1E696AAE8];
  v9 = [v7 localizations];
  v22[0] = v6;
  v10 = [v7 preferredLocalizations];
  v11 = [v10 firstObject];
  v22[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v13 = [v8 preferredLocalizationsFromArray:v9 forPreferences:v12];
  v14 = [v13 firstObject];

  v15 = [v7 localizedStringForKey:@"EDITED_MESSAGE_BACKWARD_COMPATIBILITY_EDITED" value:0 table:@"IMSharedUtilities" localization:v14];
  v16 = [v7 localizedStringForKey:@"EDITED_MESSAGE_BACKWARD_COMPATIBILITY_FORMAT" value:0 table:@"IMSharedUtilities" localization:v14];
  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16];
  v18 = [v4 mutableCopy];

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

  v6 = [(CKConversation *)self chat];
  v7 = 1;
  v8 = [v6 supportsCapabilities:1];

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
  v2 = [(CKConversation *)self chat];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 supportsCapabilities:0x400000];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)supportsSendLater
{
  v3 = [(CKConversation *)self recipient];
  v4 = [v3 defaultIMHandle];
  v5 = [v4 matchesLoginHandleForAnyAccount];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [(CKConversation *)self chat];

    if (v7)
    {
      v8 = [(CKConversation *)self chat];
      LOBYTE(v6) = [v8 supportsCapabilities:0x80000];
    }

    else
    {
      v8 = [(CKConversation *)self sendingService];
      v9 = [MEMORY[0x1E69A5C90] iMessageService];
      v6 = v8 == v9;
    }
  }

  return v6;
}

- (BOOL)supportsEncryption
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 supportsEncryption];

  return v3;
}

- (BOOL)supportsPolls
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isPollsEnabled];

  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = [(CKConversation *)self recipient];
  v6 = [v5 defaultIMHandle];
  v7 = [v6 matchesLoginHandleForAnyAccount];

  if (v7)
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

  v9 = [(CKConversation *)self chat];

  if (!v9)
  {
LABEL_20:
    LOBYTE(v11) = 0;
    return v11;
  }

  v10 = [(CKConversation *)self chat];
  v11 = [v10 supportsCapabilities:0x2000000];

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

- (void)repositionSticker:(id)a3 associatedChatItem:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(27);
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "repositionSticker: [%@]", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v11 = v6;
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
      [(IMChat *)self->_chat repositionSticker:v6 associatedChatItem:v7];
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

  v4 = [(CKConversation *)self chat];
  v5 = [v4 supportsSendingTypingIndicators];

  return v5;
}

- (void)setLocalUserIsComposing:(id)a3
{
  v5 = a3;
  if ([(CKConversation *)self _allowedToSendTypingIndicators])
  {
    v4 = [(CKConversation *)self chat];
    [v4 setLocalUserIsComposing:v5];
  }
}

- (void)setLocalUserIsComposing:(id)a3 typingIndicatorIcon:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CKConversation *)self _allowedToSendTypingIndicators])
  {
    v7 = [(CKConversation *)self chat];
    [v7 setLocalUserIsComposing:v8 typingIndicatorData:v6];
  }
}

- (NSString)localUserIsComposing
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 localUserIsComposing];

  return v3;
}

- (void)setLocalUserIsTyping:(BOOL)a3
{
  v3 = a3;
  if ([(CKConversation *)self _allowedToSendTypingIndicators])
  {
    v5 = [(CKConversation *)self chat];
    [v5 setLocalUserIsTyping:v3];
  }
}

- (BOOL)localUserIsTyping
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 localUserIsTyping];

  return v3;
}

- (void)setLocalUserIsRecording:(BOOL)a3
{
  v3 = a3;
  if ([(CKConversation *)self _allowedToSendTypingIndicators])
  {
    v5 = [(CKConversation *)self chat];
    [v5 setLocalUserIsRecording:v3];
  }
}

- (BOOL)localUserIsRecording
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 localUserIsRecording];

  return v3;
}

- (void)updateUserActivity
{
  if ([(CKConversation *)self isPending])
  {
    v5 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    [v5 setUserActivityForChat:0 orHandles:0];
  }

  else
  {
    v5 = [(CKConversation *)self chat];
    v3 = [(CKConversation *)self handles];
    v4 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    [v4 setUserActivityForChat:v5 orHandles:v3];
  }
}

- (void)_clearTypingIndicatorsIfNecessary
{
  v3 = [(CKConversation *)self chat];
  v4 = [v3 localUserIsTyping];

  if (v4)
  {
    v5 = [(CKConversation *)self chat];
    v6 = [v5 supportsSendingTypingIndicators];

    if ((v6 & 1) == 0)
    {
      v7 = [(CKConversation *)self chat];
      [v7 setLocalUserIsTyping:0];
    }
  }
}

- (BOOL)shouldShowCharacterCount
{
  if (![(CKConversation *)self isStewieConversation])
  {
    v4 = [(CKConversation *)self sendingService];
    v5 = [(CKConversation *)self recipientStrings];
    if ([v4 __ck_isSMS])
    {
      v6 = [(CKConversation *)self _sms_supportsCharacterCountForAddresses:v5];
    }

    else
    {
      if ([v4 __ck_isiMessageLite] & 1) != 0 || (objc_msgSend(v4, "__ck_isSatelliteSMS") & 1) != 0 || (-[CKConversation chat](self, "chat"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "shouldDisplayOffGridModeStatus"), v7, (v8))
      {
        v3 = 1;
        goto LABEL_10;
      }

      v6 = [(CKConversation *)self _iMessage_supportsCharacterCountForAddresses:v5];
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
  v3 = [(CKConversation *)self recipients];

  if (!v3)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(IMChat *)self->_chat guid];
      v12 = 138412290;
      v13 = v5;
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

- (id)nameWithRawAddresses:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(CKConversation *)self recipients];

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(IMChat *)self->_chat guid];
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Determining conversation name for chat guid: %@", &v13, 0xCu);
      }
    }

    v8 = [(IMChat *)self->_chat displayNameWithRawAddress:v3 isSpamFilteringEnabled:+[CKConversation isSMSSpamFilteringEnabled]];
    v9 = [v8 copy];
    name = self->_name;
    self->_name = v9;
  }

  v11 = self->_name;

  return v11;
}

- (id)displayNameForDisplayContext:(int64_t)a3
{
  v3 = self;
  if (a3 == 1)
  {
    self = [(CKConversation *)self _navigationBarDisplayTitle];
  }

  else if (!a3)
  {
    if ([(CKConversation *)self hasDisplayName])
    {
      [(CKConversation *)v3 displayName];
    }

    else
    {
      [(CKConversation *)v3 name];
    }
    self = ;
  }

  return self;
}

- (void)setDisplayName:(id)a3
{
  v4 = a3;
  v5 = [(CKConversation *)self chat];
  [v5 setDisplayName:v4];
}

- (BOOL)isPreviewTextForAttachment
{
  v3 = [(CKConversation *)self chat];
  v4 = [v3 lastFinishedMessageItem];

  if (([v4 isCorrupt] & 1) != 0 || (objc_msgSend(v4, "retractedPartIndexes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = 0;
  }

  else
  {
    v9 = [(CKConversation *)self chat];
    v10 = [v9 lastFinishedMessage];

    v11 = [v10 error];

    if (v11 || ([v10 balloonBundleID], v12 = objc_claimAutoreleasedReturnValue(), v12, v12) || (-[CKConversation chat](self, "chat"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "__ck_previewTextWithChat:ignorePluginContent:", v13, 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, !v15))
    {
      v7 = 0;
    }

    else
    {
      v16 = [v10 plainBody];
      v17 = [v16 stringByReplacingOccurrencesOfString:*MEMORY[0x1E69A5F00] withString:&stru_1F04268F8];
      v18 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v19 = [v17 stringByTrimmingCharactersInSet:v18];

      v20 = [v10 messageSubject];
      v21 = [v20 string];

      v22 = [v19 length];
      if (v22 | [v21 length])
      {
        v7 = 0;
      }

      else
      {
        v7 = ([v10 flags] & 0x1000000) == 0;
      }
    }
  }

  return v7;
}

- (BOOL)shouldReloadPreviewTextForGeneratedAdaptiveImageGlyphWithFileTransferGUID:(id)a3
{
  v4 = a3;
  v5 = [(CKConversation *)self chat];
  v6 = [v5 lastFinishedMessage];
  v7 = [v6 fileTransferGUIDs];
  v8 = [v7 containsObject:v4];

  if (!v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v6 associatedMessagePartText];
      v12 = [MEMORY[0x1E69A5B80] sharedInstance];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __92__CKConversation_shouldReloadPreviewTextForGeneratedAdaptiveImageGlyphWithFileTransferGUID___block_invoke;
      aBlock[3] = &unk_1E72EBF70;
      v18 = v12;
      v13 = v12;
      v14 = _Block_copy(aBlock);
      if ([v11 __im_containsAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v14])
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
  v2 = [(CKConversation *)self chat];
  v3 = [v2 mergedPinningIdentifiers];

  return v3;
}

- (char)buttonColor
{
  v3 = [(CKConversation *)self sendingService];
  if ([(CKConversation *)self isStewieConversation])
  {
    v4 = 12;
  }

  else if ([(CKConversation *)self isBusinessConversation])
  {
    v4 = 6;
  }

  else
  {
    v4 = [v3 __ck_displayColor];
  }

  return v4;
}

- (char)outgoingBubbleColor
{
  v3 = [(CKConversation *)self sendingService];
  if ([(CKConversation *)self isStewieConversation])
  {
    v4 = 12;
  }

  else if ([(CKConversation *)self isBusinessConversation])
  {
    v4 = 6;
  }

  else
  {
    v4 = [v3 __ck_displayColor];
  }

  return v4;
}

- (NSString)serviceDisplayName
{
  v2 = [(CKConversation *)self sendingService];
  v3 = [v2 __ck_displayName];

  return v3;
}

- (id)_nameForHandle:(id)a3
{
  v3 = a3;
  if ([v3 isLoginIMHandle])
  {
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"ME" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v4 = [v3 _displayNameWithAbbreviation];
  if ([v4 length])
  {
    v5 = v4;
    v4 = v5;
    goto LABEL_5;
  }

  v8 = CKFrameworkBundle();
  v6 = [v8 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];

LABEL_6:

  return v6;
}

- (id)_headerTitleForService:(id)a3 shouldListParticipants:(BOOL)a4
{
  v6 = a3;
  v7 = [(CKConversation *)self handles];
  v8 = [v7 count];
  v9 = [v6 __ck_isSMS];

  if (!v9)
  {
    if ([v7 count] < 2)
    {
      v16 = [(CKConversation *)self businessHandle];

      if (v16)
      {
        [(CKConversation *)self businessHandle];
      }

      else
      {
        [v7 lastObject];
      }
      v10 = ;
      v13 = [(CKConversation *)self _nameForHandle:v10];
    }

    else
    {
      v10 = [(CKConversation *)self displayName];
      if ([(CKConversation *)self hasDisplayName])
      {
        goto LABEL_23;
      }

      if (!a4)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = CKFrameworkBundle();
        v21 = [v20 localizedStringForKey:@"GROUP_PEOPLE_COUNT" value:&stru_1F04268F8 table:@"ChatKit"];
        v11 = [v19 localizedStringWithFormat:v21, v8];

        v22 = [MEMORY[0x1E69DC668] sharedApplication];
        v23 = [v22 userInterfaceLayoutDirection];

        if (v23 == 1)
        {
          v24 = @"\u200F";
        }

        else
        {
          v24 = @"\u200E";
        }

        v12 = [(__CFString *)v24 stringByAppendingString:v11];
        goto LABEL_30;
      }

      v13 = [(CKConversation *)self name];
    }

    v17 = v13;
    goto LABEL_22;
  }

  v10 = [(CKConversation *)self lastAddressedHandle];
  v11 = [(CKConversation *)self lastAddressedSIMID];
  if ([MEMORY[0x1E69A5CA0] mmsEnabledforPhoneNumber:v10 simID:v11] && objc_msgSend(v7, "count") >= 2 && objc_msgSend(MEMORY[0x1E69A7F58], "IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:simID:", v10, v11))
  {
    if (a4)
    {
      v12 = [(CKConversation *)self name];
LABEL_30:
      v17 = v12;
      goto LABEL_18;
    }

    v25 = MEMORY[0x1E696AEC0];
    v26 = CKFrameworkBundle();
    v27 = [v26 localizedStringForKey:@"GROUP_PEOPLE_COUNT" value:&stru_1F04268F8 table:@"ChatKit"];
    v14 = [v25 localizedStringWithFormat:v27, v8];

    v28 = [MEMORY[0x1E69DC668] sharedApplication];
    v29 = [v28 userInterfaceLayoutDirection];

    if (v29 == 1)
    {
      v30 = @"\u200F";
    }

    else
    {
      v30 = @"\u200E";
    }

    v15 = [(__CFString *)v30 stringByAppendingString:v14];
  }

  else
  {
    if ([v7 count] < 2)
    {
      v14 = [v7 lastObject];
      [(CKConversation *)self _nameForHandle:v14];
    }

    else
    {
      v14 = CKFrameworkBundle();
      [v14 localizedStringForKey:@"OUTGOING" value:&stru_1F04268F8 table:@"ChatKit"];
    }
    v15 = ;
  }

  v17 = v15;

LABEL_18:
LABEL_22:

  v10 = v17;
LABEL_23:

  return v10;
}

- (id)_headerTitleForPendingMediaObjects:(id)a3 subject:(id)a4 onService:(id)a5
{
  v6 = a5;
  if ([(CKConversation *)self isBusinessConversation])
  {
    v7 = [(CKConversation *)self businessHandle];
    v8 = [v7 name];
LABEL_5:
    v9 = v8;
    goto LABEL_18;
  }

  if ([v6 __ck_isiMessage])
  {
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"NEW_MADRID_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    goto LABEL_5;
  }

  v7 = [(CKConversation *)self pendingHandles];
  v10 = [(CKConversation *)self lastAddressedHandle];
  v11 = [(CKConversation *)self lastAddressedSIMID];
  if ([v6 __ck_isRCS] && objc_msgSend(v7, "count") >= 2)
  {
    v12 = [MEMORY[0x1E69A7F50] sharedManager];
    v13 = [v12 groupMessagingEnabledForPhoneNumber:v10 simID:v11];

    goto LABEL_13;
  }

  if ([v6 __ck_isSMS] && objc_msgSend(MEMORY[0x1E69A5CA0], "mmsEnabledforPhoneNumber:simID:", v10, v11) && objc_msgSend(v7, "count") >= 2)
  {
    v13 = [MEMORY[0x1E69A7F58] IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:v10 simID:v11];
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

- (id)displayNameForMediaObjects:(id)a3 subject:(id)a4 shouldListParticipants:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(CKConversation *)self sendingService];
  if ([(CKConversation *)self isPending])
  {
    [(CKConversation *)self _headerTitleForPendingMediaObjects:v8 subject:v9 onService:v10];
  }

  else
  {
    [(CKConversation *)self _headerTitleForService:v10 shouldListParticipants:v5];
  }
  v11 = ;

  return v11;
}

- (id)copyForPendingConversation
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [CKPendingConversation alloc];
  v4 = [(CKConversation *)self chat];
  v5 = [(CKConversation *)v3 initWithChat:v4];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(CKConversation *)self chat];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Created pending conversation for chat: %@", &v9, 0xCu);
    }
  }

  return v5;
}

- (BOOL)deletingIncomingMessages
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 isDeletingIncomingMessages];

  return v3;
}

- (void)updateDeletingIncomingMessages:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKConversation *)self chat];
  [v4 setDeletingIncomingMessages:v3];
}

- (void)updateWasKnownSender
{
  if ([(CKConversation *)self _unknownFilteringEnabled])
  {
    v3 = [(CKConversation *)self _conversationList];
    v4 = [v3 isHoldingWasKnownSenderUpdates];

    if ((v4 & 1) == 0)
    {
      self->_wasKnownSender = [(CKConversation *)self isKnownSender];
    }
  }
}

- (BOOL)inUnknownSendersFilter
{
  v2 = [(CKConversation *)self chat];
  v3 = [v2 inUnknownSendersFilter];

  return v3;
}

- (NSString)conversationListCollectionViewPinnedItemIdentifier
{
  conversationListCollectionViewPinnedItemIdentifier = self->_conversationListCollectionViewPinnedItemIdentifier;
  if (!conversationListCollectionViewPinnedItemIdentifier)
  {
    v4 = [(CKConversation *)self chat];
    v5 = [v4 guid];
    v6 = v5;
    v7 = &stru_1F04268F8;
    if (v5)
    {
      v7 = v5;
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
    v4 = [(CKConversation *)self chat];
    v5 = [v4 guid];
    v6 = v5;
    v7 = &stru_1F04268F8;
    if (v5)
    {
      v7 = v5;
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
    v4 = [(CKConversation *)self chat];
    v5 = [v4 guid];
    v6 = v5;
    v7 = &stru_1F04268F8;
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = [@"recoverable-" stringByAppendingString:v8];

    v10 = self->_conversationListCollectionViewRecentlyDeletedListItemIdentifier;
    self->_conversationListCollectionViewRecentlyDeletedListItemIdentifier = v9;

    conversationListCollectionViewRecentlyDeletedListItemIdentifier = self->_conversationListCollectionViewRecentlyDeletedListItemIdentifier;
  }

  return conversationListCollectionViewRecentlyDeletedListItemIdentifier;
}

- (void)prepareForRecoverableDeletionWithDeleteDate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "moving all messages before date: %@ to recently deleted", &v14, 0xCu);
    }
  }

  v6 = [(CKConversation *)self chat];
  if ([v6 isBusinessChat])
  {
    [v6 deleteExtensionPayloadData];
  }

  if (![(CKConversation *)self isGroupConversation])
  {
    v7 = [(CKConversation *)self recipient];
    v8 = [v7 rawAddress];
    v9 = v8 == 0;

    if (!v9)
    {
      v10 = objc_alloc_init(CKDetailsContactsManager);
      v11 = [(CKConversation *)self recipient];
      v12 = [v11 rawAddress];
      [(CKDetailsContactsManager *)v10 setPreferredCallService:0 forID:v12];
    }
  }

  v13 = +[CKDraftManager sharedInstance];
  [v13 setDraft:0 forConversation:self];

  [(CKConversation *)self _invalidateApplicationSnapshotIfNeeded];
}

- (void)recoverableDeleteAllMessagesGivenDeleteDate:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CKConversation *)self prepareForRecoverableDeletionWithDeleteDate:v4];
  v5 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v6 = [(CKConversation *)self chat];
  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 moveMessagesInChatsToRecentlyDeleted:v7 deleteDate:v4 synchronously:0 completionHandler:&__block_literal_global_528_0];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CKConversation *)self recipientStrings];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (IMStringIsEmail())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)recipientPhoneNumbers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CKConversation *)self recipientStrings];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (MEMORY[0x193AF5D40](v9))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)contactNameByHandle
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CKConversation *)self recipients];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 defaultIMHandle];
        v11 = [v10 ID];

        v12 = [v9 fullName];
        if ([v12 length] && objc_msgSend(v11, "length"))
        {
          [v3 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)allowsMentions
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 platformSupportsMentioning];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKConversation *)self chat];

  if (v5)
  {
    v6 = [(CKConversation *)self chat];
    v7 = [v6 supportsCapabilities:128];

    return v7;
  }

  v9 = [(CKConversation *)self sendingService];
  if ([v9 __ck_isSMS])
  {
    v10 = [(CKConversation *)self isGroupConversation];

    if (!v10)
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

- (void)updateKeyTransparencyStatusForChatParticipantsDidChange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isKeyTransparencyEnabled];

  if (v6)
  {
    v7 = [v4 ktStatus];
    [v4 fetchKTStatus];
    v8 = [v4 keyTransparencyStatusForAffectedHandles:0];
    if (v7 != v8)
    {
      v9 = v8;
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = 134218240;
          v13 = v7;
          v14 = 2048;
          v15 = v9;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "chat participants changed status %lu->%lu: sending status change notification", &v12, 0x16u);
        }
      }

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 __mainThreadPostNotificationName:*MEMORY[0x1E69A5810] object:self];
    }
  }
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = [(CKConversation *)self chat];
  v7 = [v6 guid];
  v8 = [v7 dataUsingEncoding:4];

  v5[2](v5, v8, 0);
  return 0;
}

+ (BOOL)_iMessage_canAcceptMediaObjectType:(int)a3 givenMediaObjects:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  memset(v19, 0, 44);
  ++*(v19 + a3);
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
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) mediaType];
        ++*(v19 + v11);
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [a1 _iMessage_canSendMessageWithMediaObjectTypes:v19];

  return v12;
}

+ (BOOL)_iMessage_canSendMessageWithMediaObjectTypes:(int *)a3 errorCode:(int64_t *)a4
{
  v5 = 0;
  v6 = 0;
  v25 = *MEMORY[0x1E69E9840];
  do
  {
    v6 += a3[v5++];
  }

  while (v5 != 11);
  v7 = [a1 _iMessage_maxAttachmentCount];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v10 = v7;
    v9 = v6 <= v7;
    if (v6 > v7)
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

  if (a4)
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

    *a4 = v8;
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

+ (BOOL)_iMessage_canSendComposition:(id)a3 reachabilityContext:(id)a4 forceSMS:(BOOL)a5 error:(id *)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (CKIsRunningInFullCKClient() && !CKIsRunningUnitTests() && !CKIsRunningUITests() && !CKIsRunningForDevelopmentOnSimulator())
  {
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v11 isRunningTest])
    {
    }

    else
    {
      v12 = [MEMORY[0x1E69A5CA0] iMessageEnabledForReachabilityContext:v10];

      if (!v12)
      {
        v19 = 3001;
        if (!a6)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }
  }

  memset(v28, 0, 44);
  v13 = [v9 mediaObjects];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v23 + 1) + 8 * i) mediaType];
        ++v28[v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  if ([v13 count])
  {
    v22 = 0;
    v12 = [a1 _iMessage_canSendMessageWithMediaObjectTypes:v28 errorCode:&v22];
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

  if (a6)
  {
LABEL_21:
    if ((v12 & 1) == 0)
    {
      v20 = [a1 _iMessage_localizedErrorForReason:v19];
      if (v20)
      {
        v20 = v20;
        *a6 = v20;
      }
    }
  }

LABEL_25:

  return v12;
}

+ (id)_iMessage_localizedErrorForReason:(int64_t)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  switch(a3)
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
          v15 = v3;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "iMessage: Not handing back error with: %ld", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v13 = v3;
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
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[INTERNAL]\niMessage Content Error: %ld", v5, v3];

        v5 = v11;
      }

      [v10 setObject:v5 forKey:{*MEMORY[0x1E696A578], v13}];
    }

    else
    {
      v5 = 0;
    }

    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CKMessageContentErrorDomain" code:v3 userInfo:{v10, v13}];
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

LABEL_30:

  return v3;
}

+ (unint64_t)_iMessage_maxTransferFileSizeForWiFi:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

+ (double)_iMessage_maxTrimDurationForMediaType:(int)a3
{
  v3 = *&a3;
  v21 = *MEMORY[0x1E69E9840];
  if (_iMessage_maxTrimDurationForMediaType___pred_CMTimeGetSecondsCoreMedia != -1)
  {
    +[CKConversation(Content_Utilities) _iMessage_maxTrimDurationForMediaType:];
  }

  v5 = MEMORY[0x1E695DF20];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "_iMessage_maxTransferFileSizeForWiFi:", 1)}];
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

+ (BOOL)_sms_mediaObjectPassesRestriction:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 data];
  v5 = [v4 length];

  if ([v3 mediaType] == 3)
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = [v3 data];
    v8 = [v6 ckImageWithData:v7];

    [v8 size];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  v13 = [v3 mimeType];
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

      v17 = [v3 mimeType];
      v31.width = v10;
      v31.height = v12;
      v18 = NSStringFromCGSize(v31);
      *buf = 138413058;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      v26 = 2048;
      v27 = v5;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_DEBUG, "(MMS) Accept: %@ (MIME Type: %@, length %lu, sz %@)", buf, 0x2Au);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v19 = [v3 mimeType];
    v32.width = v10;
    v32.height = v12;
    v21 = NSStringFromCGSize(v32);
    _CKLog();
  }

  return CanBeSent;
}

- (BOOL)_sms_willSendMMSByDefaultForAddresses:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69A5CA0];
  v6 = [(CKConversation *)self lastAddressedHandle];
  v7 = [(CKConversation *)self lastAddressedSIMID];
  LODWORD(v5) = [v5 mmsEnabledforPhoneNumber:v6 simID:v7];

  if (v5 && [v4 count] && (objc_msgSend(v4, "count") != 1 || (objc_msgSend(v4, "lastObject"), v8 = objc_claimAutoreleasedReturnValue(), IsEmail = IMStringIsEmail(), v8, IsEmail)))
  {
    if ([v4 count] < 2)
    {
      v13 = 1;
    }

    else
    {
      v10 = MEMORY[0x1E69A7F58];
      v11 = [(CKConversation *)self lastAddressedHandle];
      v12 = [(CKConversation *)self lastAddressedSIMID];
      v13 = [v10 IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:v11 simID:v12];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

+ (BOOL)_sms_canSendMessageWithMediaObjectTypes:(int *)a3 phoneNumber:(id)a4 simID:(id)a5 errorCode:(int64_t *)a6
{
  *&v51[13] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = 0;
  LODWORD(v13) = 0;
  do
  {
    v13 = a3[v12++] + v13;
  }

  while (v12 != 11);
  v14 = [a1 _sms_maxAttachmentCountForPhoneNumber:v10 simID:v11];
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
  if (a3[1] >= 1)
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
  if (a3[2] >= 1 && v13 > 1)
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

      v24 = a3[1];
      v25 = a3[2];
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
    v47 = (a3[2] + a3[1]);
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

  *&v27 = [MEMORY[0x1E69A7F58] IMMMSMaximumMessageByteCountForPhoneNumber:v10 simID:{v11, v43, v44, v47}];
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
  v33 = a3[3];
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

  if (a6)
  {
    v39 = v21;
  }

  else
  {
    v39 = 1;
  }

  if ((v39 & 1) == 0)
  {
    *a6 = v19;
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

+ (BOOL)_sms_canAcceptMediaObjectType:(int)a3 givenMediaObjects:(id)a4 phoneNumber:(id)a5 simID:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  memset(v25, 0, 44);
  ++*(v25 + a3);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v10);
        }

        v17 = [*(*(&v20 + 1) + 8 * i) mediaType];
        ++*(v25 + v17);
      }

      v14 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [a1 _sms_canSendMessageWithMediaObjectTypes:v25 phoneNumber:v11 simID:v12];

  return v18;
}

+ (BOOL)_sms_canSendComposition:(id)a3 lastAddressedHandle:(id)a4 lastAddressedSIMID:(id)a5 recipientsContainEmail:(BOOL)a6 skipMMSCheck:(BOOL)a7 error:(id *)a8
{
  v51 = a6;
  v75 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v49 = [MEMORY[0x1E69A5CA0] mmsEnabledforPhoneNumber:v12 simID:v13];
  v53 = v12;
  v54 = v13;
  v14 = [MEMORY[0x1E69A7F58] IMMMSRestrictedModeEnabledForPhoneNumber:v12 simID:v13];
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

  v57 = [v11 shelfPluginPayload];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = v57;
  if ((isKindOfClass & 1) == 0)
  {
    v19 = 0;
  }

  v56 = v19;
  v20 = [v56 shouldSendAsMediaObject];
  if (v20)
  {
    v21 = [v56 mediaObjectFromPayload];
    v22 = [v11 compositionByAppendingMediaObject:v21];

    v23 = v22;
  }

  else
  {
    v23 = v11;
  }

  v55 = v23;
  v24 = [v23 mediaObjects];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v25 = 0;
  v26 = 0;
  v27 = [v24 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v27)
  {
    v28 = *v67;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v67 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = [*(*(&v66 + 1) + 8 * i) mediaType];
        ++*(v74 + v30);
        v26 |= v30 == 2;
        v25 |= v30 == 7;
      }

      v27 = [v24 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v27);
  }

  if ([v24 count])
  {
    v31 = 1;
  }

  else
  {
    v31 = v20;
  }

  if (v31)
  {
    v32 = 1;
  }

  else
  {
    v33 = [v55 subject];
    v32 = [v33 length] != 0;
  }

  if (v25)
  {
    LOBYTE(v34) = 0;
    v35 = 2003;
  }

  else
  {
    LOBYTE(v34) = 1;
    if (!v51 && !v32 || a7)
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
      v34 = [a1 _sms_canSendMessageWithMediaObjectTypes:v74 phoneNumber:v53 simID:v54 errorCode:buf];
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
      v37 = v24;
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

            if (![a1 _sms_mediaObjectPassesRestriction:*(*(&v62 + 1) + 8 * j)])
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
      v42 = v24;
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
              v47 = [a1 _sms_mediaObjectPassesDurationCheck:v46];
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

  if (a8 && (v34 & 1) == 0)
  {
    v36 = [a1 _sms_localizedErrorForReason:v35];
    if (v36)
    {
      v36 = v36;
      *a8 = v36;
    }

    LOBYTE(v34) = 0;
  }

LABEL_56:

  return v34 & 1;
}

+ (id)_sms_localizedErrorForReason:(int64_t)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  if ((a3 - 2001) >= 5)
  {
    if (!a3)
    {
      goto LABEL_17;
    }

    if (a3 != 3000)
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(44);
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v15 = v3;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_DEBUG, "SMS: Not generating NSError for message content error: %ld", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v13 = v3;
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
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[INTERNAL]\nSMS Content Error: %ld", v6, v3];

        v6 = v10;
      }

      [v9 setObject:v6 forKey:{*MEMORY[0x1E696A578], v13}];
    }

    else
    {
      v6 = 0;
    }

    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CKMessageContentErrorDomain" code:v3 userInfo:{v9, v13}];
  }

  else
  {
    v3 = 0;
    v6 = 0;
  }

LABEL_17:

  return v3;
}

+ (double)_sms_maxTrimDurationForMediaType:(int)a3
{
  if (a3 == 1)
  {
    [MEMORY[0x1E69A7F58] IMMMSMaximumAudioDurationForPhoneNumber:0 simID:0];
  }

  else
  {
    [MEMORY[0x1E69A7F58] IMMMSMaximumVideoDurationForPhoneNumber:0 simID:0];
  }

  return result;
}

+ (BOOL)_sms_mediaObjectPassesDurationCheck:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v4 duration], v6 = v5, objc_msgSend(a1, "_sms_maxTrimDurationForMediaType:", objc_msgSend(v4, "mediaType")), v8 = v7, v6 >= v7 + 0.00000011920929))
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

- (BOOL)_sms_canSendToRecipients:(id)a3 alertIfUnable:(BOOL)a4
{
  LODWORD(v4) = a4;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E69A5CA0];
  v8 = [(CKConversation *)self lastAddressedHandle];
  v9 = [(CKConversation *)self lastAddressedSIMID];
  v10 = [v7 mmsEnabledforPhoneNumber:v8 simID:v9];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v6;
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
          v17 = [*(*(&v29 + 1) + 8 * i) propertyType];

          if (v17 == v15)
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
  v4 = [(CKConversation *)self isGroupConversation];
  if (v3)
  {
    if (v4 && (![(CKConversation *)self isGroupConversation]|| !supportsSurf__PKCashGroupsEnabled()))
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if ([(CKConversation *)self isBusinessConversation])
  {
    return 0;
  }

  v6 = [(CKConversation *)self sendingService];
  v7 = [v6 __ck_isiMessage];

  return v7;
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

  v4 = [(CKConversation *)self sendingService];
  v5 = [v4 __ck_isiMessage];

  return v5;
}

- (id)createInputContextHistoryWithChatItems:(id)a3
{
  v4 = a3;
  if ([(CKConversation *)self isKnownSender])
  {
    v21 = v4;
    v5 = [(CKConversation *)self deviceIndependentID];
    v6 = CKTextInputIdentifier();

    v7 = [(CKConversation *)self chat];
    v8 = [v7 inlineReplyController];
    v9 = [v8 threadIdentifier];

    v10 = [(CKConversation *)self recipients];
    v11 = [(CKConversation *)self _inputContextIdentifiersForRecipients:v10];
    v12 = [(CKConversation *)self _inputContextIdentifiersForMe];
    v13 = [(CKConversation *)self _participantsNameMapFromRecipients:v10 mySenderIdentifiers:v12];
    v14 = objc_alloc(MEMORY[0x1E69DCAF8]);
    v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v16 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v22 = v6;
    v17 = [v14 initWithThreadIdentifier:v6 participantsIDtoNames:v13 firstPerson:v12 primaryRecipients:v11 secondaryRecipients:v15 info:v16];

    if ([v9 length])
    {
      AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();
      v19 = [v17 tiInputContextHistory];
      [v19 setFocusedEntryIdentifier:AssociatedMessageGUIDFromThreadIdentifier];
    }

    v4 = v21;
    [v17 addChatItems:v21 withConversation:self];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_inputContextIdentifiersForRecipients:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
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

        v10 = [*(*(&v14 + 1) + 8 * i) rawAddress];
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
  v3 = [MEMORY[0x1E69A5A80] sharedInstance];
  v4 = [v3 senderIdentifiers];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
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

- (id)_participantsNameMapFromRecipients:(id)a3 mySenderIdentifiers:(id)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v33 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696ADF0] descriptorForUsedKeys];
  v44[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v5;
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
        v15 = [v14 rawAddress];
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

  v21 = [MEMORY[0x1E69A7FD0] sharedInstance];
  v22 = [v21 fetchMeContactWithKeys:v8];

  v23 = [MEMORY[0x1E696ADF0] componentsForContact:v22];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = v33;
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
  v2 = [(CKConversation *)self chat];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isFiltered] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)activityForNewSceneCreatedViaDrag:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(CKConversation *)self groupID];
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Creating user activity for new scene with conversation: %@", buf, 0xCu);
  }

  v7 = [CKSceneDelegateState alloc];
  v8 = [(CKConversation *)self groupID];
  v9 = [(CKSceneDelegateState *)v7 initWithGroupID:v8];

  v10 = [CKSceneDelegate userInfoDictionaryForState:v9];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.Messages.StateRestoration"];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{!v3, @"CKCanvasStateRestorationContainerType", @"CKSceneInitiationTypeKey", &unk_1F04E8670}];
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
  v2 = self;
  v3 = [(CKConversation *)v2 chat];
  if (v3 && (v4 = v3, v5 = [(IMChat *)v3 supportsCapabilities:0x2000], v4, v5))
  {
    v6 = [objc_opt_self() fromPickerEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)selectedSenderIdentity
{
  v2 = self;
  v3 = CKConversation.selectedSenderIdentity()();

  return v3;
}

- (void)switchToSenderIdentity:(id)a3
{
  v4 = a3;
  v7._handle = self;
  handle = v7._handle;
  v7.super.isa = v4;
  CKConversation.switchToSenderIdentity(_:)(v7);
}

- (id)carPlayMessageListItemWithTraitCollection:(id)a3 dateFormatter:(id)a4 timeFormatter:(id)a5 avatarImageRenderer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = CKConversation.carPlayMessageListItem(traitCollection:dateFormatter:timeFormatter:avatarImageRenderer:)(v10, v11, v12, v13);

  return v15;
}

- (void)sendAutoDonationUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  v4 = [(CKConversation *)v5 chat];
  [(IMChat *)v4 sendAutoDonationUpdate:v3];
}

- (BOOL)canSendComposition:(id)a3 forCapabilities:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  CKConversation.canSendComposition(_:forCapabilities:)(v7, a4);

  return 1;
}

- (BOOL)shouldShowSatelliteServiceUnavailableIndicator
{
  v2 = self;
  v3 = CKConversation.shouldShowSatelliteServiceUnavailableIndicator.getter();

  return v3 & 1;
}

- (BOOL)isSatelliteEmergencyConversation
{
  v2 = self;
  if ([(CKConversation *)v2 isStewieConversation])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(CKConversation *)v2 isEmergencyTranscriptSharingConversation];
  }

  return v3;
}

- (BOOL)allowToSendWithCurrentServiceForSatellite
{
  v2 = self;
  v3 = CKConversation.allowToSendWithCurrentServiceForSatellite.getter();

  return v3 & 1;
}

- (BOOL)shouldShowSatelliteSummary
{
  v2 = self;
  v3 = CKConversation.shouldShowSatelliteSummary.getter();

  return v3 & 1;
}

- (NSString)satelliteSummaryMessage
{
  v2 = self;
  CKConversation.satelliteSummaryMessage.getter();

  v3 = sub_190D56ED0();

  return v3;
}

- (NSAttributedString)pendingMessageCountText
{
  v2 = self;
  v3 = CKConversation.pendingMessageCountText.getter();

  return v3;
}

- (BOOL)showUnreadIndicator
{
  v2 = self;
  v3 = [(CKConversation *)v2 chat];
  if (v3 && (v4 = v3, v5 = [(IMChat *)v3 unreadMessageCount], v4, v5 >= 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(CKConversation *)v2 shouldShowSatelliteSummary];
  }

  return v6;
}

- (id)_navigationBarDisplayTitle
{
  v2 = self;
  CKConversation._navigationBarDisplayTitle()();

  v3 = sub_190D56ED0();

  return v3;
}

- (BOOL)isHidden
{
  v2 = self;
  v3 = CKConversation.isHidden.getter();

  return v3 & 1;
}

- (BOOL)isKnownChat
{
  v2 = self;
  v3 = [(CKConversation *)v2 chat];
  if (v3)
  {
    v4 = v3;
    v5 = [(IMChat *)v3 isFiltered];

    return v5 == 0;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isKnownSender
{
  v2 = self;
  v3 = CKConversation.isKnownSender()();

  return v3;
}

- (unint64_t)targetFilterModeForOpeningConversationURL
{
  v2 = self;
  v3 = CKConversation.targetFilterModeForOpeningConversationURL()();

  return v3;
}

- (BOOL)containsCachedFilterModeWithTargetfilterMode:(unint64_t)a3
{
  v4 = self;
  LOBYTE(a3) = CKConversation.containsCachedFilterMode(targetfilterMode:)(a3);

  return a3 & 1;
}

- (BOOL)containsCachedFilterModeWithTargetFilterNumberModes:(id)a3
{
  sub_19021DC70();
  v4 = sub_190D57180();
  v5 = self;
  sub_190CAC6A8(v4);
  v6 = sub_190D574B0();

  v7 = [(CKConversation *)v5 cachedCalculatedFilterModes];
  if (v7)
  {
    v8 = v7;
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
  v2 = self;
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
  v2 = self;
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
  v5 = [a2 chat];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "senderIdentifier is nil for account: %@, chat: %@", &v6, 0x16u);
}

@end
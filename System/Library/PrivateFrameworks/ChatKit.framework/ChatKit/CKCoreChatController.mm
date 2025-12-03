@interface CKCoreChatController
+ (BOOL)_sharedShouldSuppressTranscriptBackgroundStatesForConversation:(id)conversation;
+ (BOOL)forceTranscriptBackgroundForTesting;
+ (BOOL)shouldSuppressTranscriptBackgroundEditingForConversation:(id)conversation;
+ (BOOL)shouldSuppressTranscriptBackgroundRenderingForConversation:(id)conversation;
+ (Class)transcriptControllerClass;
+ (double)transcriptDockingDelayInDays;
- (BOOL)_backgroundEligibleForTranscriptDocking;
- (BOOL)_conversationHasReplyEnabled;
- (BOOL)_currentBackgroundIsPhotos;
- (BOOL)_displayNewComposeSatelliteStatusItemIfNeeded;
- (BOOL)_haveUpdateAlready:(id)already forContact:(id)contact;
- (BOOL)_shouldAllowReply;
- (BOOL)_shouldAllowReplyFromLockScreen;
- (BOOL)_shouldProcessNotification:(id)notification;
- (BOOL)_shouldSuppressTranscriptBackgroundInUI;
- (BOOL)_transcriptContentSizeEligibleForTranscriptDocking:(CGSize)docking;
- (BOOL)_transcriptShouldBeDockedOnPush;
- (BOOL)accountCanCreateNickname;
- (BOOL)chatSupportsStickerTapbacks;
- (BOOL)conversationAllowedByScreenTime;
- (BOOL)isCollapsed;
- (BOOL)isFullScreenBalloonViewOnScreen;
- (BOOL)isReadOnly;
- (BOOL)isSafeToMarkAsRead;
- (BOOL)isTranscriptDockingEnabled;
- (BOOL)saveContact:(id)contact shouldUpdate:(BOOL)update;
- (BOOL)shouldDisplayTextEntry;
- (BOOL)shouldShowFullScreenAcknowledgmentPickerForChatItem:(id)item;
- (BOOL)shouldShowSetBackgroundContextMenuItem;
- (BOOL)shouldShowTapbackAttributionForChatItem:(id)item;
- (BOOL)shouldShowTapbackAttributionForFullScreenBalloonViewController:(id)controller;
- (BOOL)shouldShowTapbackPickerForChatItem:(id)item;
- (BOOL)shouldShowTapbackPickerForFullScreenBalloonViewController:(id)controller;
- (BOOL)shouldUpdateScrollPositionForKeyboardScreenFrameChanges;
- (BOOL)showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:(id)path;
- (BOOL)wantsReplyButton;
- (CGPoint)contentOffsetForIndexPath:(id)path viewToAlignWith:(id)with allowOverScroll:(BOOL)scroll;
- (CGPoint)contentOffsetForIndexPath:(id)path viewToAlignWith:(id)with allowOverScroll:(BOOL)scroll scrollPosition:(unint64_t)position;
- (CGRect)_initialFrameForCollectionView;
- (CGRect)_initialFrameForGradientReferenceView;
- (CGRect)fullScreenBalloonViewController:(id)controller balloonFrameForChatItem:(id)item;
- (CGRect)fullScreenBalloonViewControllerSafeAreaLayoutFrame:(id)frame;
- (CGRect)gradientFrameWithInsets:(UIEdgeInsets)insets;
- (CGRect)salientTranscriptBackgroundRect;
- (CGRect)transcriptBackground:(id)background convertRect:(CGRect)rect toView:(id)view;
- (CGSize)initialViewSize;
- (CKCoreChatController)initWithConversation:(id)conversation;
- (CKCoreChatControllerDelegate)delegate;
- (CKMacToolbarController)macToolbarController;
- (CKTranscriptBackgroundChannelController)transcriptBackgroundChannelController;
- (CKTranscriptCollectionView)collectionView;
- (IMChat)chat;
- (UIEdgeInsets)calculateTranscriptMarginInsets;
- (UIEdgeInsets)calculateTranscriptSafeAreaInsets;
- (UIProgressView)progressBar;
- (id)_handleIDsForCurrentConversation;
- (id)_lastBackgroundTransferGUIDSetOnChannel;
- (id)_nicknameBannerUpdatesAndStyle:(unint64_t *)style;
- (id)_retrieveNicknameBannerUpdatesIfNeeded:(unint64_t *)needed;
- (id)_threadChatItemForReplyCountChatItem:(id)item chatItems:(id)items;
- (id)associatedTapbackPileViewForFullScreenBalloonViewController:(id)controller;
- (id)balloonViewForChatItem:(id)item;
- (id)contextualChatItemsForFullScreenBalloonViewController:(id)controller;
- (id)contextualChatItemsForTapbackPicker;
- (id)createMutableContact:(id)contact withNicknameUpdate:(id)update updateType:(unint64_t)type addHandleToContact:(BOOL)toContact;
- (id)currentPosterBundleIdentifier;
- (id)currentlyFocusedChatItemForTapbackInTranscriptCollectionViewController:(id)controller;
- (id)fullScreenBalloonViewController:(id)controller duplicatedViewForChatItem:(id)item;
- (id)fullScreenBalloonViewControllerSmartEmojiResponses:(id)responses;
- (id)generateDefaultFullScreenBalloonViewControllerWithChatItem:(id)item;
- (id)generateFullScreenBalloonViewControllerWithChatItem:(id)item displayConfiguration:(id)configuration;
- (id)indexPathForMessageGUID:(id)d messagePartIndex:(int64_t)index;
- (id)indexPathOfParentChatItemForIndexPath:(id)path;
- (id)lazyCreatedActivePinningInputViewReasons;
- (id)posterSnapshotView;
- (id)scrollView;
- (id)textInputContextIdentifier;
- (id)textInputContextIdentifierForFullScreenBalloonViewController:(id)controller;
- (id)transcriptBackground:(id)background balloonAttributesForChatItemGuid:(id)guid;
- (id)transcriptCollectionViewControllerOuterEffectPresentingView:(id)view;
- (id)transcriptContentOcclusionRects;
- (id)viewToInsertTranscriptCollectionViewBelow;
- (void)____removeCurrentBackgroundViewController;
- (void)___updateUIWithNewTranscriptBackground:(id)background;
- (void)__createNewPosterRenderingBackground:(id)background;
- (void)__updateUIWithPosterChannel:(id)channel;
- (void)_activeAppearanceTraitDidChange;
- (void)_cancelSatelliteFetch;
- (void)_chatRegistryDidReloadNotification:(id)notification;
- (void)_chatsRemergedNotification:(id)notification;
- (void)_cleanupOutgoingPosterSnapshot:(BOOL)snapshot delay:(double)delay animateAlongside:(id)alongside;
- (void)_collectSuppressBackgroundEvent;
- (void)_configureTranscriptForBackground;
- (void)_conversationListFinishedMerging:(id)merging;
- (void)_deregisterSendProgressDelegate;
- (void)_didSendCompositionInConversation:(id)conversation;
- (void)_dismissFullScreenBubbleViewControllerAnimated:(BOOL)animated withSendAnimation:(BOOL)animation completion:(id)completion;
- (void)_displayNameUpdatedNotification:(id)notification;
- (void)_displayNewComposeServiceStatusItem;
- (void)_displayNewComposeServiceStatusItemIfNeeded;
- (void)_downgradeStateChangedNotification:(id)notification;
- (void)_handleBlockedContactsChangedNotification:(id)notification;
- (void)_handleShowInlineReplyForItemWithIndexPath:(id)path replyTransitionProperties:(id)properties;
- (void)_handleStatusChangedNotification:(id)notification;
- (void)_handleStatusInvitationReceivedNotification:(id)notification;
- (void)_handleStatusStateChangedNotification:(id)notification;
- (void)_handleTapEventForBalloonView:(id)view atIndexPath:(id)path;
- (void)_handleTranscriptBackgroundChangedNotification:(id)notification;
- (void)_handleUltraConstrainedStatusUpdatedNotification:(id)notification;
- (void)_increaseContrastDidChangeNotification:(id)notification;
- (void)_insertNewComposeInitialStatusLabelWithAttributedString:(id)string;
- (void)_inviteToViewStatusesIfNeeded;
- (void)_lastAddressedInfoChangedNotification:(id)notification;
- (void)_localeDidChangeNotification:(id)notification;
- (void)_markAsReadIfNecessary;
- (void)_messageSomeonePressed;
- (void)_performResume;
- (void)_preferredServiceChangedNotification:(id)notification;
- (void)_reassignConversationWithDeferredReload:(BOOL)reload;
- (void)_refreshServiceForSending;
- (void)_refreshServiceForSendingForSatelliteStateChange;
- (void)_registerCommSafetyReceivedEventForTransfer:(id)transfer messageGUID:(id)d;
- (void)_registerForChatItemTraitCollectionChanges;
- (void)_registerSendProgressDelegate;
- (void)_removeExistingCollectionViewController;
- (void)_satelliteStateChangedNotification:(id)notification;
- (void)_serviceSwitchNotification:(id)notification;
- (void)_setTranscriptCustomScrollAnimationFromAnimationProperties:(id)properties;
- (void)_setTranscriptDockingEnabled:(BOOL)enabled;
- (void)_setupTranscriptBackgroundIfNeeded;
- (void)_startSatelliteFetchIfNecessary;
- (void)_statusDaemonDisconnectedNotification:(id)notification;
- (void)_transitionToPosterKitPosterConfiguration:(id)configuration onChannel:(id)channel;
- (void)_updateBalloonBackdropGroupTrait;
- (void)_updateChannelToUseConfigurationDuringTestWithCompletion:(id)completion;
- (void)_updateGradientReferenceViewForContentInset:(UIEdgeInsets)inset withAnimationProperties:(id)properties;
- (void)_updateLastBackgroundTransferGUIDSetOnChannel:(id)channel;
- (void)_updateNewComposeServiceStatusItem;
- (void)_updateStaticPocketColor;
- (void)_updateTranscriptBackgroundFrame;
- (void)_updateTranscriptDockingStateIfNeeded;
- (void)_willSendComposition:(id)composition inConversation:(id)conversation;
- (void)beginPinningInputViewsForReason:(id)reason;
- (void)chat:(id)chat progressDidChange:(float)change sendingMessages:(id)messages sendCount:(unint64_t)count totalCount:(unint64_t)totalCount finished:(BOOL)finished;
- (void)checkForSensitiveContentAndSendComposition:(id)composition willPresentInterventionHandler:(id)handler sendHandler:(id)sendHandler;
- (void)configureTapbackBackdropCaptureView;
- (void)configureWithToolbarController:(id)controller;
- (void)contentInsetDidChangeWithAnimationProperties:(id)properties;
- (void)contentInsetWillChange:(UIEdgeInsets)change withAnimationProperties:(id)properties;
- (void)copyChatItem:(id)item;
- (void)dealloc;
- (void)deleteChatItem:(id)item;
- (void)didConfirmForInterventionViewController:(id)controller;
- (void)didRejectForInterventionViewController:(id)controller;
- (void)displayPollDetailsForChatItem:(id)item sourceView:(id)view;
- (void)endPinningInputViewsForReason:(id)reason;
- (void)fullScreenBalloonViewController:(id)controller didAppearAnimated:(BOOL)animated;
- (void)fullScreenBalloonViewController:(id)controller didDeselectTapback:(id)tapback;
- (void)fullScreenBalloonViewController:(id)controller didSelectTapback:(id)tapback;
- (void)fullScreenBalloonViewController:(id)controller requestedPresentPlugin:(id)plugin withPayloadID:(id)d;
- (void)fullScreenBalloonViewController:(id)controller sendMessageHighlight:(BOOL)highlight forChatItem:(id)item;
- (void)fullScreenBalloonViewController:(id)controller updateTapbackPileAppearanceAsHidden:(BOOL)hidden;
- (void)fullScreenBalloonViewController:(id)controller updateTranscriptBalloonViewAppearanceAsHidden:(BOOL)hidden;
- (void)fullScreenBalloonViewControllerDidDisappear:(id)disappear;
- (void)fullScreenBalloonViewControllerHandleDismissTap:(id)tap;
- (void)fullScreenBalloonViewControllerRequestedAppCardDismiss:(id)dismiss;
- (void)handleContentSizeCategoryDidChangeNotification:(id)notification;
- (void)handleStickerTapbackConfirmCommSafetySendContext:(id)context;
- (void)handleiOSConfirmCommSafetySendContext:(id)context;
- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)needed;
- (void)keyboardWillHideViaGesture;
- (void)loadView;
- (void)parentControllerDidBecomeActive;
- (void)parentControllerDidResume:(BOOL)resume animating:(BOOL)animating;
- (void)preferredSendingServiceChanged;
- (void)prepareForSuspend;
- (void)presentAttachmentDownloadFailedErrorForTransfer:(id)transfer;
- (void)presentCommSafetyInterventionIfNecessaryForFileURL:(id)l withSendContext:(id)context completion:(id)completion;
- (void)presentCommSafetyInterventionWithSendContext:(id)context;
- (void)presentMacToolbarController;
- (void)refreshServiceForSending;
- (void)registerNotifications;
- (void)removeTapbackBackdropCaptureView;
- (void)scrollToHighlightedMessageScrollContext:(id)context;
- (void)sendStickerTapback:(id)tapback mediaObject:(id)object parentMessagePartChatItem:(id)item;
- (void)sendTapback:(id)tapback chatItem:(id)item isRemoval:(BOOL)removal;
- (void)setCollectionViewController:(id)controller;
- (void)setConversation:(id)conversation forceReload:(BOOL)reload;
- (void)setHandleStatusAssertion:(id)assertion;
- (void)setNeedsPosterSaliencyAndOcclusionRectUpdate;
- (void)setNewTranscriptBackground:(id)background;
- (void)setupScrollingForKeyboardInteraction;
- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)item;
- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)item displayConfiguration:(id)configuration;
- (void)showFullScreenTapbackKeyboardInputForChatItem:(id)item;
- (void)showInlineReplyControllerForChatItem:(id)item presentKeyboard:(BOOL)keyboard;
- (void)significantTimeChange;
- (void)systemApplicationDidResume;
- (void)systemApplicationWillEnterForeground;
- (void)transcriptBackground:(id)background enumerateVisbleBalloonChatItemGUIDsInReverse:(BOOL)reverse usingBlock:(id)block;
- (void)transcriptBackgroundViewDidChange:(BOOL)change;
- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view selectedItemAtIndexPath:(id)path;
- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view showInlineReplyForItemWithIndexPath:(id)path;
- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view tappedForChatItem:(id)item;
- (void)transcriptCollectionViewController:(id)controller collectionViewContentSizeDidChange:(CGSize)change;
- (void)transcriptCollectionViewController:(id)controller didInsertChatItems:(id)items associatedChatItems:(id)chatItems;
- (void)transcriptCollectionViewController:(id)controller didRemoveChatItems:(id)items associatedChatItems:(id)chatItems;
- (void)transcriptCollectionViewController:(id)controller dockedStateDidChange:(BOOL)change;
- (void)transcriptCollectionViewController:(id)controller requestDeleteJunkConversation:(id)conversation;
- (void)transcriptCollectionViewController:(id)controller requestRecoverJunkConversation:(id)conversation;
- (void)transcriptCollectionViewController:(id)controller viewedCommSafetyAssociatedItemsWithIndexPath:(id)path;
- (void)transcriptCollectionViewController:(id)controller viewedCommSafetyItemWithIndexPath:(id)path;
- (void)transcriptCollectionViewController:(id)controller willDeleteChatItems:(id)items;
- (void)transcriptCollectionViewControllerDidAddTapback:(id)tapback tapbackChatItem:(id)item;
- (void)transcriptCollectionViewControllerDidChangeAssociatedChatItem:(id)item chatItemDiff:(id)diff;
- (void)transcriptCollectionViewControllerDidInset:(id)inset;
- (void)transcriptCollectionViewControllerDidRemoveTapback:(id)tapback tapbackChatItem:(id)item;
- (void)transcriptCollectionViewControllerDidSetChatItems:(id)items;
- (void)transcriptCollectionViewControllerReportSpamButtonTapped:(id)tapped;
- (void)transcriptCollectionViewControllerUnsubscribeButtonTapped:(id)tapped;
- (void)transcriptCollectionViewControllerWillDisplayLastBalloon:(id)balloon;
- (void)updateContact:(id)contact withHandle:(id)handle;
- (void)updateTranscriptBackground:(id)background transferID:(id)d;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidLayoutSubviews;
- (void)viewDidLayoutSubviewsForTranscriptCollectionViewController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKCoreChatController

- (id)textInputContextIdentifier
{
  conversation = [(CKCoreChatController *)self conversation];
  deviceIndependentID = [conversation deviceIndependentID];
  v4 = CKTextInputIdentifier();

  return v4;
}

- (void)setNeedsPosterSaliencyAndOcclusionRectUpdate
{
  transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
  if (transcriptBackground)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [transcriptBackground setNeedsPosterSaliencyAndOcclusionRectUpdate];
    }
  }
}

- (BOOL)_backgroundEligibleForTranscriptDocking
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  return isTranscriptBackgroundsEnabled && [(CKCoreChatController *)self _currentBackgroundIsPhotos];
}

- (id)currentPosterBundleIdentifier
{
  transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
  rootViewController = [transcriptBackground rootViewController];
  if (!rootViewController)
  {
    providerBundleIdentifier = 0;
    goto LABEL_5;
  }

  v5 = rootViewController;
  transcriptBackground2 = [(CKCoreChatController *)self transcriptBackground];
  rootViewController2 = [transcriptBackground2 rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    transcriptBackground3 = [(CKCoreChatController *)self transcriptBackground];
    transcriptBackground = [transcriptBackground3 rootViewController];

    channelViewController = [transcriptBackground channelViewController];
    channel = [channelViewController channel];
    posterConfiguration = [channel posterConfiguration];
    providerBundleIdentifier = [posterConfiguration providerBundleIdentifier];

LABEL_5:
    goto LABEL_7;
  }

  providerBundleIdentifier = 0;
LABEL_7:

  return providerBundleIdentifier;
}

- (id)scrollView
{
  if (IMEnableModernTranscript())
  {
    collectionView = 0;
  }

  else
  {
    collectionViewController = [(CKCoreChatController *)self collectionViewController];
    collectionView = [collectionViewController collectionView];
  }

  return collectionView;
}

- (CKCoreChatControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isFullScreenBalloonViewOnScreen
{
  fullScreenBalloonViewController = [(CKCoreChatController *)self fullScreenBalloonViewController];
  view = [fullScreenBalloonViewController view];
  superview = [view superview];
  v5 = superview != 0;

  return v5;
}

+ (BOOL)forceTranscriptBackgroundForTesting
{
  if (forceTranscriptBackgroundForTesting_onceToken != -1)
  {
    +[CKCoreChatController(Backgrounds) forceTranscriptBackgroundForTesting];
  }

  return forceTranscriptBackgroundForTesting_forceBackground;
}

void __72__CKCoreChatController_Backgrounds__forceTranscriptBackgroundForTesting__block_invoke()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    forceTranscriptBackgroundForTesting_forceBackground = [v2 BOOLForKey:@"ForceTranscriptBackgroundForTesting"];
  }

  else
  {
    forceTranscriptBackgroundForTesting_forceBackground = 0;
  }
}

- (void)_updateChannelToUseConfigurationDuringTestWithCompletion:(id)completion
{
  completionCopy = completion;
  if (_updateChannelToUseConfigurationDuringTestWithCompletion__onceToken != -1)
  {
    [CKCoreChatController(Backgrounds) _updateChannelToUseConfigurationDuringTestWithCompletion:];
  }

  if (_updateChannelToUseConfigurationDuringTestWithCompletion__prepareChannelLogToken != -1)
  {
    [CKCoreChatController(Backgrounds) _updateChannelToUseConfigurationDuringTestWithCompletion:];
  }

  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];
  guid = [chat guid];

  if (guid)
  {
    v8 = os_signpost_id_generate(_updateChannelToUseConfigurationDuringTestWithCompletion__prepareChannelLog);
    v9 = _updateChannelToUseConfigurationDuringTestWithCompletion__prepareChannelLog;
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19020E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "prepareTranscriptBackgroundChannel", "", buf, 2u);
    }

    v11 = _updateChannelToUseConfigurationDuringTestWithCompletion__prepareChannelQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_214;
    v12[3] = &unk_1E72EDE78;
    v12[4] = self;
    v13 = guid;
    v15 = v8;
    v14 = completionCopy;
    dispatch_async(v11, v12);
  }
}

void __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.CKCoreChatControllerPrepareChannelQueue", v2);
  v1 = _updateChannelToUseConfigurationDuringTestWithCompletion__prepareChannelQueue;
  _updateChannelToUseConfigurationDuringTestWithCompletion__prepareChannelQueue = v0;
}

void __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_2()
{
  v0 = os_log_create("com.apple.Messages", "CKCoreChatControllerPrepareChannelLog");
  v1 = _updateChannelToUseConfigurationDuringTestWithCompletion__prepareChannelLog;
  _updateChannelToUseConfigurationDuringTestWithCompletion__prepareChannelLog = v0;
}

void __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_214(void *a1, double a2)
{
  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterConfigurationBuilder(a2);
  v4 = objc_alloc(*(v3 + 176));
  Helper_x8__PRSPosterRoleBackdrop = gotLoadHelper_x8__PRSPosterRoleBackdrop(v5);
  v9 = [v8 initWithProvider:@"com.apple.transcriptBackgroundPoster.DynamicExtension" role:{**(v7 + 104), Helper_x8__PRSPosterRoleBackdrop}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_2_219;
  v15[3] = &unk_1E72EE8C8;
  v10 = a1[5];
  v15[4] = a1[4];
  v11 = v10;
  v13 = a1[6];
  v12 = a1[7];
  v16 = v11;
  v18 = v12;
  v17 = v13;
  v14 = [v9 buildPosterConfigurationWithCompletion:v15];
}

void __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_2_219(void *a1, void *a2)
{
  v3 = a2;
  [v3 storeUserInfo:&unk_1F04E90A0 error:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_3;
  block[3] = &unk_1E72EE8A0;
  v4 = a1[5];
  block[4] = a1[4];
  v8 = v4;
  v9 = v3;
  v5 = a1[6];
  v11 = a1[7];
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  v3 = [v2 chat];
  v4 = [v3 deviceIndependentID];

  v5 = [*(a1 + 32) transcriptBackgroundChannelController];
  objc_initWeak(&location, *(a1 + 32));
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_4;
  v10[3] = &unk_1E72EE878;
  objc_copyWeak(v12, &location);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10[4] = *(a1 + 32);
  v12[1] = v8;
  v11 = v9;
  [v5 updateChannelUsingChatGUID:v6 deviceIndependentID:v4 backgroundGUID:0 posterConfiguration:v7 completion:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_5;
  block[3] = &unk_1E72EE850;
  v8 = v3;
  v4 = v3;
  objc_copyWeak(v11, (a1 + 48));
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v9 = *(a1 + 32);
  v11[1] = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v11);
}

void __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_5(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v12 = v1;
    v13 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = [WeakRetained transcriptBackgroundChannelController];
    v6 = [*(a1 + 40) conversation];
    v7 = [v6 chat];
    v8 = [v7 guid];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_6;
    v9[3] = &unk_1E72EE828;
    v11 = *(a1 + 64);
    v10 = *(a1 + 48);
    [v5 channelForChatGUID:v8 completion:v9];
  }
}

void __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_7;
  block[3] = &unk_1E72EE800;
  v4 = *(a1 + 32);
  v9 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __94__CKCoreChatController_Backgrounds___updateChannelToUseConfigurationDuringTestWithCompletion___block_invoke_7(uint64_t a1)
{
  v2 = _updateChannelToUseConfigurationDuringTestWithCompletion__prepareChannelLog;
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "prepareTranscriptBackgroundChannel", "", v6, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

+ (BOOL)_sharedShouldSuppressTranscriptBackgroundStatesForConversation:(id)conversation
{
  supportsTranscriptBackground = [self supportsTranscriptBackground];
  result = 1;
  if (conversation && supportsTranscriptBackground)
  {
    syncedSettingsManager = [self syncedSettingsManager];
    v8 = [syncedSettingsManager settingValueForKey:9];
    bOOLValue = [v8 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Backgrounds disabled in Settings; suppress in UI.", v11, 2u);
      }
    }

    return bOOLValue ^ 1;
  }

  return result;
}

+ (BOOL)shouldSuppressTranscriptBackgroundEditingForConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([self _sharedShouldSuppressTranscriptBackgroundStatesForConversation:conversationCopy])
  {
    shouldSuppressTranscriptBackgroundEditing = 1;
  }

  else
  {
    shouldSuppressTranscriptBackgroundEditing = [conversationCopy shouldSuppressTranscriptBackgroundEditing];
  }

  return shouldSuppressTranscriptBackgroundEditing;
}

+ (BOOL)shouldSuppressTranscriptBackgroundRenderingForConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([self _sharedShouldSuppressTranscriptBackgroundStatesForConversation:conversationCopy])
  {
    shouldSuppressTranscriptBackgroundRendering = 1;
  }

  else
  {
    shouldSuppressTranscriptBackgroundRendering = [conversationCopy shouldSuppressTranscriptBackgroundRendering];
  }

  return shouldSuppressTranscriptBackgroundRendering;
}

- (BOOL)shouldShowSetBackgroundContextMenuItem
{
  v3 = objc_opt_class();
  conversation = [(CKCoreChatController *)self conversation];
  LOBYTE(v3) = [v3 shouldSuppressTranscriptBackgroundEditingForConversation:conversation];

  return v3 ^ 1;
}

- (void)_setupTranscriptBackgroundIfNeeded
{
  [(CKCoreChatController *)self setIsInitialTranscriptBackgroundSetup:1];
  if ([objc_opt_class() forceTranscriptBackgroundForTesting])
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke;
    v55[3] = &unk_1E72EE8F0;
    v55[4] = self;
    [(CKCoreChatController *)self _updateChannelToUseConfigurationDuringTestWithCompletion:v55];
    return;
  }

  syncedSettingsManager = [objc_opt_class() syncedSettingsManager];
  [syncedSettingsManager addObserver:self selector:sel__handleTranscriptBackgroundChangedNotification_ key:9];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_2;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    if ([(CKCoreChatController *)self _shouldSuppressTranscriptBackgroundInUI])
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "CKCoreChatController will not configure for a background because it is either not set or suppressed.", &buf, 2u);
      }

      v4[2](v4);
      conversation = [(CKCoreChatController *)self conversation];
      chat = [conversation chat];
      transcriptBackgroundPath = [chat transcriptBackgroundPath];

      if (transcriptBackgroundPath)
      {
        [(CKCoreChatController *)self _collectSuppressBackgroundEvent];
      }

      goto LABEL_33;
    }

    conversation2 = [(CKCoreChatController *)self conversation];
    chat2 = [conversation2 chat];

    if (!chat2)
    {
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "No chat associated with this conversation, not setting up transcript background", &buf, 2u);
        }
      }

      [(CKCoreChatController *)self ___updateUIWithNewTranscriptBackground:0];
      goto LABEL_33;
    }

    conversation3 = [(CKCoreChatController *)self conversation];
    chat3 = [conversation3 chat];
    transcriptBackgroundPath2 = [chat3 transcriptBackgroundPath];
    if (transcriptBackgroundPath2)
    {
      v16 = transcriptBackgroundPath2;
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      conversation4 = [(CKCoreChatController *)self conversation];
      chat4 = [conversation4 chat];
      transcriptBackgroundPath3 = [chat4 transcriptBackgroundPath];
      v21 = [defaultManager fileExistsAtPath:transcriptBackgroundPath3];

      if (v21)
      {
LABEL_16:
        conversation5 = [(CKCoreChatController *)self conversation];
        transcriptBackground = [conversation5 transcriptBackground];

        conversation6 = [(CKCoreChatController *)self conversation];
        transcriptBackgroundGUID = [conversation6 transcriptBackgroundGUID];

        _lastBackgroundTransferGUIDSetOnChannel = [(CKCoreChatController *)self _lastBackgroundTransferGUIDSetOnChannel];
        v28 = +[CKUIBehavior sharedBehaviors];
        isRunningInStoreDemoMode = [v28 isRunningInStoreDemoMode];

        objc_initWeak(&buf, self);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_236;
        v46[3] = &unk_1E72EE918;
        v30 = transcriptBackgroundGUID;
        v47 = v30;
        v31 = _lastBackgroundTransferGUIDSetOnChannel;
        v48 = v31;
        v52 = isRunningInStoreDemoMode;
        v32 = transcriptBackground;
        v49 = v32;
        selfCopy = self;
        objc_copyWeak(&v51, &buf);
        v33 = _Block_copy(v46);
        conversation7 = [(CKCoreChatController *)self conversation];
        chat5 = [conversation7 chat];
        guid = [chat5 guid];

        transcriptBackgroundChannelController = [(CKCoreChatController *)self transcriptBackgroundChannelController];
        v38 = [transcriptBackgroundChannelController channelForChatGUID:guid];

        if (v38)
        {
          if (IMOSLoggingEnabled())
          {
            v39 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *v45 = 0;
              _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "Channel controller is ready and has an inflated channel, returned sync", v45, 2u);
            }
          }

          v33[2](v33, v38);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v41 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              *v45 = 0;
              _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Channel controller was not ready, or does not have an inflated channel. Falling back to async", v45, 2u);
            }
          }

          transcriptBackgroundChannelController2 = [(CKCoreChatController *)self transcriptBackgroundChannelController];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_239;
          v43[3] = &unk_1E72EE940;
          v44 = v33;
          [transcriptBackgroundChannelController2 channelForChatGUID:guid completion:v43];
        }

        objc_destroyWeak(&v51);
        objc_destroyWeak(&buf);

        goto LABEL_33;
      }

      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CKCoreChatController(Backgrounds) *)self _setupTranscriptBackgroundIfNeeded];
      }

      conversation3 = [(CKCoreChatController *)self conversation];
      chat3 = [conversation3 chat];
      [chat3 refetchLocalTranscriptBackgroundAssetIfNecessary];
    }

    goto LABEL_16;
  }

LABEL_33:
}

uint64_t __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) transcriptBackgroundViewDidChange:0];
  v2 = *(a1 + 32);

  return [v2 _cleanupOutgoingPosterSnapshot:1 delay:0 animateAlongside:0.0];
}

void __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_236(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3 || ([*(a1 + 32) isEqualToString:*(a1 + 40)] & 1) == 0 && *(a1 + 72) != 1)
  {
    v5 = [*(a1 + 48) posterData];
    if (v5)
    {
      Helper_x8__OBJC_CLASS___PRSPosterArchiver = gotLoadHelper_x8__OBJC_CLASS___PRSPosterArchiver(v6);
      v9 = *(v8 + 4088);
      v28 = 0;
      v4 = [v9 unarchiveConfigurationFromData:v5 format:-1 error:{&v28, Helper_x8__OBJC_CLASS___PRSPosterArchiver}];
      v10 = v28;
      if (v4)
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v5 length];
        *buf = 134218242;
        v30 = v12;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to unarchive (%lu bytes) poster data due to error: %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 56) chat];
        *buf = 138412290;
        v30 = v13;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "No background data found for chat %@.", buf, 0xCu);
      }

      v10 = 0;
    }

    v4 = 0;
    goto LABEL_16;
  }

  v4 = [v3 posterConfiguration];
  if (!v4)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_236_cold_1();
    }

    v4 = 0;
    goto LABEL_17;
  }

LABEL_18:
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v15 = [WeakRetained transcriptBackground];
  v16 = [v15 rootViewController];
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = objc_loadWeakRetained((a1 + 64));
  v19 = [v18 transcriptBackground];
  v20 = [v19 rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_25:
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _transitionToPosterKitPosterConfiguration:v4 onChannel:v3];
    goto LABEL_26;
  }

  v22 = objc_loadWeakRetained((a1 + 64));
  v23 = [v22 transcriptBackground];
  WeakRetained = [v23 rootViewController];

  v24 = [WeakRetained channelViewController];
  v25 = [v24 channel];
  v15 = [v25 posterConfiguration];

  if (![v15 isEqual:v4])
  {
LABEL_24:

    goto LABEL_25;
  }

  v26 = IMLogHandleForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "We already have a configured poster rendering VC with the correct configuration. Updating transcript, bailing out of additional poster setup", buf, 2u);
  }

  v27 = objc_loadWeakRetained((a1 + 64));
  [v27 _configureTranscriptForBackground];

LABEL_26:
}

void __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_239(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_2_240;
  v6[3] = &unk_1E72EE5D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (BOOL)_shouldSuppressTranscriptBackgroundInUI
{
  v3 = objc_opt_class();
  conversation = [(CKCoreChatController *)self conversation];
  LOBYTE(v3) = [v3 shouldSuppressTranscriptBackgroundRenderingForConversation:conversation];

  return v3;
}

- (id)_lastBackgroundTransferGUIDSetOnChannel
{
  chat = [(CKCoreChatController *)self chat];
  transcriptBackgroundChannelTransferGUID = [chat transcriptBackgroundChannelTransferGUID];

  return transcriptBackgroundChannelTransferGUID;
}

- (void)_updateLastBackgroundTransferGUIDSetOnChannel:(id)channel
{
  channelCopy = channel;
  chat = [(CKCoreChatController *)self chat];
  [chat updateTranscriptBackgroundChannelTransferGUID:channelCopy];
}

- (void)_handleTranscriptBackgroundChangedNotification:(id)notification
{
  v57 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v56 = notificationCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received notification %@.", buf, 0xCu);
  }

  if (-[CKCoreChatController _shouldProcessNotification:](self, "_shouldProcessNotification:", notificationCopy) && [objc_opt_class() supportsTranscriptBackground])
  {
    currentPosterBundleIdentifier = [(CKCoreChatController *)self currentPosterBundleIdentifier];
    v7 = currentPosterBundleIdentifier;
    if (currentPosterBundleIdentifier)
    {
      v53 = @"posterName";
      v54 = currentPosterBundleIdentifier;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    }

    else
    {
      v49 = 0;
    }

    date = [MEMORY[0x1E695DF00] date];
    [CKPowerLog sendTranscriptVisibilityChangedEvent:date event:1 metadata:v49];

    conversation = [(CKCoreChatController *)self conversation];
    transcriptBackground = [conversation transcriptBackground];

    transcriptBackgroundChannelController = [(CKCoreChatController *)self transcriptBackgroundChannelController];
    conversation2 = [(CKCoreChatController *)self conversation];
    chat = [conversation2 chat];
    guid = [chat guid];
    v14 = [transcriptBackgroundChannelController channelForChatGUIDBlockingIfNeeded:guid];

    if ([(CKCoreChatController *)self _shouldSuppressTranscriptBackgroundInUI])
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "CKCoreChatController will not configure for a background because we have determined that it should be suppressed. Transitioning to nil.", buf, 2u);
      }

      [(CKCoreChatController *)self _transitionToPosterKitPosterConfiguration:0 onChannel:v14];
      date2 = [MEMORY[0x1E695DF00] date];
      [CKPowerLog sendTranscriptVisibilityChangedEvent:date2 event:0 metadata:0];

      conversation3 = [(CKCoreChatController *)self conversation];
      [_TtC7ChatKit31CKTranscriptBackgroundAnalytics trackBackgroundChangedFrom:transcriptBackground to:0 inConversation:conversation3 context:2];

      [(CKCoreChatController *)self _collectSuppressBackgroundEvent];
      goto LABEL_51;
    }

    conversation4 = [(CKCoreChatController *)self conversation];
    transcriptBackground2 = [conversation4 transcriptBackground];

    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v56 = transcriptBackground2;
      _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Transitioning to background configuration: %@.", buf, 0xCu);
    }

    if (!transcriptBackground2)
    {
      [(CKCoreChatController *)self _transitionToPosterKitPosterConfiguration:0 onChannel:v14];
      date3 = [MEMORY[0x1E695DF00] date];
      [CKPowerLog sendTranscriptVisibilityChangedEvent:date3 event:0 metadata:0];

      conversation5 = [(CKCoreChatController *)self conversation];
      [_TtC7ChatKit31CKTranscriptBackgroundAnalytics trackBackgroundChangedFrom:transcriptBackground to:0 inConversation:conversation5 context:2];
LABEL_50:

LABEL_51:
      goto LABEL_52;
    }

    conversation6 = [(CKCoreChatController *)self conversation];
    conversation5 = [conversation6 transcriptBackgroundGUID];

    _lastBackgroundTransferGUIDSetOnChannel = [(CKCoreChatController *)self _lastBackgroundTransferGUIDSetOnChannel];
    if (v14 && [_lastBackgroundTransferGUIDSetOnChannel isEqualToString:conversation5])
    {
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Trying to use poster configuration that is cached on channel since IDs match.", buf, 2u);
      }

      posterConfiguration = [v14 posterConfiguration];
      if (posterConfiguration)
      {
        goto LABEL_42;
      }

      v24 = IMLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CKCoreChatController(Backgrounds) _handleTranscriptBackgroundChangedNotification:];
      }
    }

    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Did not get a configuration from channel, looking at CKTranscriptBackground", buf, 2u);
      }
    }

    editorConfiguration = [transcriptBackground2 editorConfiguration];
    v27 = editorConfiguration == 0;

    v28 = IMOSLoggingEnabled();
    if (v27)
    {
      if (v28)
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "CKTranscriptBackground has no editor configuration, inflating from archived poster configuration", buf, 2u);
        }
      }

      posterData = [transcriptBackground2 posterData];
      Helper_x8__OBJC_CLASS___PRSPosterArchiver = gotLoadHelper_x8__OBJC_CLASS___PRSPosterArchiver(v33);
      v36 = *(v35 + 4088);
      v50 = 0;
      posterConfiguration = [v36 unarchiveConfigurationFromData:posterData format:-1 error:{&v50, Helper_x8__OBJC_CLASS___PRSPosterArchiver}];
      v37 = v50;
      v38 = IMLogHandleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [CKCoreChatController(Backgrounds) _handleTranscriptBackgroundChangedNotification:];
      }
    }

    else
    {
      if (v28)
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "CKTranscriptBackground has an editor configuration available", buf, 2u);
        }
      }

      posterConfiguration = [transcriptBackground2 editorConfiguration];
    }

    if (!posterConfiguration)
    {
      v44 = IMLogHandleForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [CKCoreChatController(Backgrounds) _handleTranscriptBackgroundChangedNotification:v44];
      }

      [(CKCoreChatController *)self _transitionToPosterKitPosterConfiguration:0 onChannel:v14];
      date4 = [MEMORY[0x1E695DF00] date];
      [CKPowerLog sendTranscriptVisibilityChangedEvent:date4 event:0 metadata:0];

      posterConfiguration = [(CKCoreChatController *)self conversation];
      [_TtC7ChatKit31CKTranscriptBackgroundAnalytics trackBackgroundChangedFrom:transcriptBackground to:0 inConversation:posterConfiguration context:2];
      goto LABEL_49;
    }

LABEL_42:
    [(CKCoreChatController *)self _transitionToPosterKitPosterConfiguration:posterConfiguration onChannel:v14];
    providerBundleIdentifier = [posterConfiguration providerBundleIdentifier];
    if (providerBundleIdentifier)
    {
      v40 = providerBundleIdentifier;
    }

    else
    {
      v40 = @"und";
    }

    v51 = @"posterName";
    v52 = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    date5 = [MEMORY[0x1E695DF00] date];
    [CKPowerLog sendTranscriptVisibilityChangedEvent:date5 event:0 metadata:v41];

    conversation7 = [(CKCoreChatController *)self conversation];
    [_TtC7ChatKit31CKTranscriptBackgroundAnalytics trackBackgroundChangedFrom:transcriptBackground to:transcriptBackground2 withNewPosterConfiguration:posterConfiguration inConversation:conversation7 context:2];

LABEL_49:
    goto LABEL_50;
  }

LABEL_52:
}

- (void)_collectSuppressBackgroundEvent
{
  conversation = [(CKCoreChatController *)self conversation];
  transcriptBackgroundGUID = [conversation transcriptBackgroundGUID];
  [CKCommSafetyAnalytics recordObscuredViewShownWithContentType:1 subcontentType:2 identifier:transcriptBackgroundGUID];
}

- (BOOL)_shouldProcessNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  conversation = [(CKCoreChatController *)self conversation];

  if (conversation == object)
  {
    v8 = 1;
  }

  else
  {
    name = [notificationCopy name];
    v8 = [name isEqualToString:@"SSTranscriptBackgroundsSettingNotification"];
  }

  return v8;
}

- (void)_transitionToPosterKitPosterConfiguration:(id)configuration onChannel:(id)channel
{
  v35 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  channelCopy = channel;
  transcriptBackgroundChannelController = [(CKCoreChatController *)self transcriptBackgroundChannelController];
  conversation = [(CKCoreChatController *)self conversation];
  v10 = conversation;
  if (conversation)
  {
    chat = [conversation chat];
    v12 = chat;
    if (chat)
    {
      guid = [chat guid];
      if (guid)
      {
        deviceIndependentID = [v12 deviceIndependentID];
        if (configurationCopy)
        {
          transcriptBackgroundGUID = [v10 transcriptBackgroundGUID];
        }

        else
        {
          transcriptBackgroundGUID = 0;
        }

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v32 = "[CKCoreChatController(Backgrounds) _transitionToPosterKitPosterConfiguration:onChannel:]";
            v33 = 2112;
            v34 = configurationCopy;
            _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "%s Will update channel with configuration %@", buf, 0x16u);
          }
        }

        _lastBackgroundTransferGUIDSetOnChannel = [(CKCoreChatController *)self _lastBackgroundTransferGUIDSetOnChannel];
        v18 = _lastBackgroundTransferGUIDSetOnChannel;
        if (channelCopy && (!(transcriptBackgroundGUID | _lastBackgroundTransferGUIDSetOnChannel) || [_lastBackgroundTransferGUIDSetOnChannel isEqualToString:transcriptBackgroundGUID]))
        {
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v32 = "[CKCoreChatController(Backgrounds) _transitionToPosterKitPosterConfiguration:onChannel:]";
              _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "%s Channel not stale, updating UI only", buf, 0xCu);
            }
          }

          [(CKCoreChatController *)self __updateUIWithPosterChannel:channelCopy];
        }

        else
        {
          objc_initWeak(buf, self);
          transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
          [transcriptBackground channelControllerWillUpdate];

          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __89__CKCoreChatController_Backgrounds___transitionToPosterKitPosterConfiguration_onChannel___block_invoke;
          v24[3] = &unk_1E72EE990;
          v25 = channelCopy;
          v26 = configurationCopy;
          objc_copyWeak(&v30, buf);
          v27 = transcriptBackgroundGUID;
          v28 = transcriptBackgroundChannelController;
          v29 = guid;
          [v28 updateChannelUsingChatGUID:v29 deviceIndependentID:v22 backgroundGUID:v27 posterConfiguration:v26 completion:v24];

          objc_destroyWeak(&v30);
          objc_destroyWeak(buf);
        }

        v15 = v22;
      }

      else
      {
        v14 = IMLogHandleForCategory();
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CKCoreChatController(Backgrounds) _transitionToPosterKitPosterConfiguration:onChannel:];
          v15 = v14;
        }
      }
    }

    else
    {
      guid = IMLogHandleForCategory();
      if (os_log_type_enabled(guid, OS_LOG_TYPE_ERROR))
      {
        [CKCoreChatController(Backgrounds) _transitionToPosterKitPosterConfiguration:onChannel:];
      }
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKCoreChatController(Backgrounds) _transitionToPosterKitPosterConfiguration:onChannel:];
    }
  }
}

void __89__CKCoreChatController_Backgrounds___transitionToPosterKitPosterConfiguration_onChannel___block_invoke(id *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      *buf = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Channel %@ updated with error %@, will dispatch to update UI", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__CKCoreChatController_Backgrounds___transitionToPosterKitPosterConfiguration_onChannel___block_invoke_257;
  block[3] = &unk_1E72EE968;
  v8 = v3;
  v9 = a1[5];
  v10 = a1[4];
  v6 = v3;
  objc_copyWeak(&v14, a1 + 9);
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
}

void __89__CKCoreChatController_Backgrounds___transitionToPosterKitPosterConfiguration_onChannel___block_invoke_257(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __89__CKCoreChatController_Backgrounds___transitionToPosterKitPosterConfiguration_onChannel___block_invoke_257_cold_1();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 48);
        v5 = [v4 posterConfiguration];
        v10 = 138412546;
        v11 = v4;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Updated channel %@ with config %@, will update UI", &v10, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 80));
    [WeakRetained _updateLastBackgroundTransferGUIDSetOnChannel:*(a1 + 56)];

    v7 = objc_loadWeakRetained((a1 + 80));
    [v7 __updateUIWithPosterChannel:*(a1 + 48)];

    v8 = objc_loadWeakRetained((a1 + 80));
    v9 = [v8 transcriptBackground];
    [v9 channelControllerDidUpdate];

    [*(a1 + 64) cleanUpLegacyChannelsForChatGUID:*(a1 + 72) completion:0];
  }
}

- (void)__updateUIWithPosterChannel:(id)channel
{
  v37 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  v5 = channelCopy;
  if (channelCopy)
  {
    posterConfiguration = [channelCopy posterConfiguration];
    v7 = posterConfiguration != 0;
  }

  else
  {
    v7 = 0;
  }

  transcriptBackground = [(CKCoreChatController *)self transcriptBackground];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      posterConfiguration2 = [v5 posterConfiguration];
      *buf = 136315650;
      v32 = "[CKCoreChatController(Backgrounds) __updateUIWithPosterChannel:]";
      v33 = 2112;
      v34 = v5;
      v35 = 2112;
      v36 = posterConfiguration2;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%s channel %@ channel config %@", buf, 0x20u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__CKCoreChatController_Backgrounds____updateUIWithPosterChannel___block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  transcriptBackground2 = [(CKCoreChatController *)self transcriptBackground];
  rootViewController = [transcriptBackground2 rootViewController];
  if (rootViewController)
  {
    transcriptBackground3 = [(CKCoreChatController *)self transcriptBackground];
    rootViewController2 = [transcriptBackground3 rootViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      transcriptBackground4 = [(CKCoreChatController *)self transcriptBackground];
      rootViewController3 = [transcriptBackground4 rootViewController];

      channelViewController = [rootViewController3 channelViewController];
      channel = [channelViewController channel];
      channelIdentifier = [channel channelIdentifier];
      channelIdentifier2 = [v5 channelIdentifier];
      v23 = channelIdentifier != channelIdentifier2;

      if (v23 && v7)
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Currently-rendering channel doesn't match new channel, create a new background", buf, 2u);
          }
        }

        [(CKCoreChatController *)self __createNewPosterRenderingBackground:v5];

        goto LABEL_49;
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    rootViewController3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(rootViewController3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, rootViewController3, OS_LOG_TYPE_INFO, "Unable to find a CKPosterRenderingTranscriptBackground on the chat controller", buf, 2u);
    }

LABEL_20:
  }

  if (v7 && transcriptBackground)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "New configuration to display and already displaying background, channel controller will handle update", buf, 2u);
      }
    }

LABEL_37:
    v11[2](v11);
    goto LABEL_49;
  }

  if (transcriptBackground)
  {
    v26 = 1;
  }

  else
  {
    v26 = v7;
  }

  if ((v26 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "No new configuration to display, not currently displaying background, bailing from UI update", buf, 2u);
      }
    }

    goto LABEL_37;
  }

  if (transcriptBackground)
  {
    v27 = v7;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    if (v7 && transcriptBackground == 0)
    {
      [(CKCoreChatController *)self __createNewPosterRenderingBackground:v5];
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "No new configuration to display, IS currently showing background, removing previous background", buf, 2u);
    }
  }

  [(CKCoreChatController *)self ___updateUIWithNewTranscriptBackground:0];
LABEL_49:
}

uint64_t __65__CKCoreChatController_Backgrounds____updateUIWithPosterChannel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) transcriptBackgroundViewDidChange:0];
  v2 = *(a1 + 32);

  return [v2 _cleanupOutgoingPosterSnapshot:1 delay:0 animateAlongside:0.0];
}

- (void)__createNewPosterRenderingBackground:(id)background
{
  backgroundCopy = background;
  v5 = [[_TtC7ChatKit33CKTranscriptBackgroundEnvironment alloc] initWithTranscriptLayoutDelegate:self];
  v6 = [[CKPosterRenderingTranscriptBackground alloc] initWithChannel:backgroundCopy environment:v5];
  [(CKPosterRenderingTranscriptBackground *)v6 setBackgroundDelegate:self];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "New configuration to display, not currently displaying background, creating new poster background view controller", v8, 2u);
    }
  }

  [(CKCoreChatController *)self ___updateUIWithNewTranscriptBackground:v6];
}

- (void)____removeCurrentBackgroundViewController
{
  transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
  rootViewController = [transcriptBackground rootViewController];

  [rootViewController willMoveToParentViewController:0];
  view = [rootViewController view];
  [view removeFromSuperview];

  [rootViewController removeFromParentViewController];
}

- (void)___updateUIWithNewTranscriptBackground:(id)background
{
  v29 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  transcriptBackground = [(CKCoreChatController *)self transcriptBackground];

  v6 = IMLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (transcriptBackground == backgroundCopy)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Asked to update UI but background is the same, returning", buf, 2u);
    }

    if (!backgroundCopy)
    {
      [(CKCoreChatController *)self transcriptBackgroundViewDidChange:0];
      [(CKCoreChatController *)self _cleanupOutgoingPosterSnapshot:1 delay:0 animateAlongside:0.0];
    }
  }

  else
  {
    if (v7)
    {
      *buf = 138412290;
      v28 = backgroundCopy;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Asked to update UI to new transcript background: %@", buf, 0xCu);
    }

    _backgroundEligibleForTranscriptDocking = [(CKCoreChatController *)self _backgroundEligibleForTranscriptDocking];
    transcriptBackground2 = [(CKCoreChatController *)self transcriptBackground];

    if (transcriptBackground2)
    {
      transcriptBackground3 = [(CKCoreChatController *)self transcriptBackground];
      rootViewController = [transcriptBackground3 rootViewController];

      if (rootViewController)
      {
        [(CKCoreChatController *)self ____removeCurrentBackgroundViewController];
      }

      else
      {
        v12 = IMLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Background view controller is nil.", buf, 2u);
        }
      }
    }

    [(CKCoreChatController *)self setTranscriptBackground:backgroundCopy];
    transcriptBackground4 = [(CKCoreChatController *)self transcriptBackground];

    if (transcriptBackground4)
    {
      transcriptBackground5 = [(CKCoreChatController *)self transcriptBackground];
      rootViewController2 = [transcriptBackground5 rootViewController];

      if (rootViewController2)
      {
        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v28 = rootViewController2;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Adding background view controller to transcript: %@", buf, 0xCu);
        }

        [(CKCoreChatController *)self addChildViewController:rootViewController2];
        view = [(CKCoreChatController *)self view];
        view2 = [rootViewController2 view];
        [view addSubview:view2];

        view3 = [(CKCoreChatController *)self view];
        view4 = [rootViewController2 view];
        [view3 sendSubviewToBack:view4];

        view5 = [rootViewController2 view];
        view6 = [(CKCoreChatController *)self view];
        [view5 __ck_makeEdgesEqualTo:view6];

        [rootViewController2 didMoveToParentViewController:self];
        v23 = 1.0;
        if (![(CKCoreChatController *)self isCollapsed])
        {
          outgoingBackgroundSnapshotView = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];
          if (outgoingBackgroundSnapshotView)
          {
            v23 = 1.0;
          }

          else
          {
            v23 = 0.0;
          }
        }

        view7 = [rootViewController2 view];
        [view7 setAlpha:v23];
      }
    }

    [(CKCoreChatController *)self _configureTranscriptForBackground];
    [(CKCoreChatController *)self _updateBalloonBackdropGroupTrait];
    [(CKCoreChatController *)self configureTapbackBackdropCaptureView];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __76__CKCoreChatController_Backgrounds_____updateUIWithNewTranscriptBackground___block_invoke;
    v26[3] = &unk_1E72EBA18;
    v26[4] = self;
    [(CKCoreChatController *)self _cleanupOutgoingPosterSnapshot:1 delay:v26 animateAlongside:0.0];
    [(CKCoreChatController *)self transcriptBackgroundViewDidChange:_backgroundEligibleForTranscriptDocking ^ [(CKCoreChatController *)self _backgroundEligibleForTranscriptDocking]];
  }
}

void __76__CKCoreChatController_Backgrounds_____updateUIWithNewTranscriptBackground___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) transcriptBackground];
  v1 = [v3 rootViewController];
  v2 = [v1 view];
  [v2 setAlpha:1.0];
}

- (void)_cleanupOutgoingPosterSnapshot:(BOOL)snapshot delay:(double)delay animateAlongside:(id)alongside
{
  snapshotCopy = snapshot;
  alongsideCopy = alongside;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__CKCoreChatController_Backgrounds___cleanupOutgoingPosterSnapshot_delay_animateAlongside___block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  if (snapshotCopy)
  {
    v10 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __91__CKCoreChatController_Backgrounds___cleanupOutgoingPosterSnapshot_delay_animateAlongside___block_invoke_2;
    v13[3] = &unk_1E72ED1C8;
    v13[4] = self;
    v14 = alongsideCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__CKCoreChatController_Backgrounds___cleanupOutgoingPosterSnapshot_delay_animateAlongside___block_invoke_3;
    v11[3] = &unk_1E72ED1F0;
    v12 = v9;
    [v10 animateWithDuration:0 delay:v13 options:v11 animations:0.3 completion:delay];
  }

  else
  {
    if (alongsideCopy)
    {
      alongsideCopy[2](alongsideCopy);
    }

    v9[2](v9);
  }
}

void __91__CKCoreChatController_Backgrounds___cleanupOutgoingPosterSnapshot_delay_animateAlongside___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outgoingBackgroundSnapshotView];
  [v2 removeFromSuperview];

  [*(a1 + 32) setOutgoingBackgroundSnapshotView:0];
  v3 = [*(a1 + 32) transcriptBackground];
  v7 = 0;
  if (!v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v7 = [v5 transcriptBackgroundColor];
  }

  v6 = [*(a1 + 32) collectionViewController];
  [v6 setTranscriptBackgroundColor:v7];
}

uint64_t __91__CKCoreChatController_Backgrounds___cleanupOutgoingPosterSnapshot_delay_animateAlongside___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) outgoingBackgroundSnapshotView];
  [v2 setAlpha:0.0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_updateBalloonBackdropGroupTrait
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  if (collectionViewController)
  {
    v5 = collectionViewController;
    transcriptIdentifier = [collectionViewController transcriptIdentifier];
    [(UIViewController *)self setBalloonBackdropGroupTraitOverrideWithUniqueContextString:transcriptIdentifier];

    collectionViewController = v5;
  }
}

- (void)_configureTranscriptForBackground
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  transcriptBackground = [(CKCoreChatController *)self transcriptBackground];

  if (transcriptBackground)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [collectionViewController setTranscriptBackgroundColor:clearColor];

    transcriptBackground2 = [(CKCoreChatController *)self transcriptBackground];
    [transcriptBackground2 luminance];
    [collectionViewController setTranscriptBackgroundLuminance:?];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Background view controller is nil, reverting to normal background color.", v11, 2u);
    }

    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    transcriptBackgroundColor = [theme transcriptBackgroundColor];
    [collectionViewController setTranscriptBackgroundColor:transcriptBackgroundColor];

    [collectionViewController updateTranscriptBackgroundLuminanceToMatchBackgroundColor];
  }
}

- (void)updateTranscriptBackground:(id)background transferID:(id)d
{
  backgroundCopy = background;
  dCopy = d;
  v8 = +[CKUIBehavior sharedBehaviors];
  isRunningInStoreDemoMode = [v8 isRunningInStoreDemoMode];

  if (isRunningInStoreDemoMode)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "In store demo mode, not archiving/sending background", buf, 2u);
    }
  }

  else if (backgroundCopy)
  {
    objc_initWeak(buf, self);
    v11 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__CKCoreChatController_Backgrounds__updateTranscriptBackground_transferID___block_invoke;
    block[3] = &unk_1E72ED660;
    v16 = backgroundCopy;
    objc_copyWeak(&v18, buf);
    v17 = dCopy;
    dispatch_async(v11, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Will remove transcript background from chat.", buf, 2u);
    }

    conversation = [(CKCoreChatController *)self conversation];
    chat = [conversation chat];

    [chat setTranscriptBackgroundAndSendToChat:0 transferID:dCopy];
  }
}

void __75__CKCoreChatController_Backgrounds__updateTranscriptBackground_transferID___block_invoke(id *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];
  v7 = [v4 URLByAppendingPathComponent:v6 isDirectory:1];

  v8 = objc_opt_new();
  v34 = 0;
  v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v34];
  v10 = v34;
  if (v9)
  {
    v11 = [a1[4] posterData];
    v12 = [a1[4] fileName];
    v13 = [v7 URLByAppendingPathComponent:v12 isDirectory:0];
    v33 = 0;
    v14 = [v11 writeToURL:v13 options:1 error:&v33];
    v24 = v33;
    if (v14)
    {
      v22 = v12;
      v15 = [a1[4] watchData];
      v16 = [v13 im_associatedWatchBackgroundURL];
      v32 = 0;
      v17 = [v15 writeToURL:v16 options:1 error:&v32];
      v23 = v32;
      if (v17)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __75__CKCoreChatController_Backgrounds__updateTranscriptBackground_transferID___block_invoke_264;
        block[3] = &unk_1E72EE9B8;
        objc_copyWeak(&v31, a1 + 6);
        v26 = v13;
        v27 = v11;
        v28 = v16;
        v29 = v15;
        v30 = a1[5];
        dispatch_async(MEMORY[0x1E69E96A0], block);

        objc_destroyWeak(&v31);
      }

      else
      {
        v20 = IMLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v15 length];
          *buf = 134218242;
          v36 = v21;
          v37 = 2112;
          v38 = v23;
          _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Unable to update transcript background on chat. Failed to write watch data (%lu bytes) due to: %@", buf, 0x16u);
        }
      }

      v19 = v24;

      v12 = v22;
    }

    else
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = [v11 length];
        *buf = 134218242;
        v36 = v18;
        v37 = 2112;
        v19 = v24;
        v38 = v24;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Unable to update transcript background on chat. Failed to write poster data (%lu bytes) due to: %@", buf, 0x16u);
      }

      else
      {
        v19 = v24;
      }
    }
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v10;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Unable to update transcript background on chat. Failed to create temporary directory due to: %@", buf, 0xCu);
    }
  }
}

void __75__CKCoreChatController_Backgrounds__updateTranscriptBackground_transferID___block_invoke_264(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained conversation];
  v4 = [v3 chat];

  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) absoluteString];
    v7 = [*(a1 + 40) length];
    v8 = [*(a1 + 48) absoluteString];
    v9 = [*(a1 + 56) length];
    v11 = 138413314;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Will set transcript background on chat with files %@ (%lu bytes) %@ (%lu bytes). Chat: %@", &v11, 0x34u);
  }

  v10 = [*(a1 + 32) absoluteString];
  [v4 setTranscriptBackgroundAndSendToChat:v10 transferID:*(a1 + 64)];
}

- (CGRect)salientTranscriptBackgroundRect
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 balloonMaskTailWidth];
  v5 = v4;
  collectionView = [(CKCoreChatController *)self collectionView];
  [collectionView effectiveBalloonCellContentAlignmentInsets];
  v8 = v7;
  v10 = v9;

  v11 = v8 + v10 + v5 * 2.0;
  collectionView2 = [(CKCoreChatController *)self collectionView];
  [collectionView2 bounds];
  v14 = v13;
  v16 = v15;

  collectionView3 = [(CKCoreChatController *)self collectionView];
  [collectionView3 safeAreaInsets];
  v19 = v18;
  v21 = v20;

  v22 = 0.0;
  v23 = v5 + v8 + v19;
  v24 = v14 - v11 - v19 - v21;
  v25 = v16;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v22;
  result.origin.x = v23;
  return result;
}

- (id)transcriptContentOcclusionRects
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  view = [(CKCoreChatController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view2 = [(CKCoreChatController *)self view];
  [view2 safeAreaInsets];
  v15 = v14;
  v17 = v16;

  splitViewController = [(CKCoreChatController *)self splitViewController];
  if (([splitViewController isCollapsed] & 1) == 0 && v15 > 0.0)
  {
    *v30 = v6;
    *&v30[1] = v8;
    *&v30[2] = v15;
    *&v30[3] = v12;
    v19 = [MEMORY[0x1E696B098] valueWithBytes:v30 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v3 setObject:v19 forKeyedSubscript:@"primary"];
  }

  delegate = [(CKCoreChatController *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    delegate2 = [(CKCoreChatController *)self delegate];
    v24 = [delegate2 hasPresentedInspectorForChatController:self];

    if (v24)
    {
      if (v17 > 0.0)
      {
        v32.origin.x = v6;
        v32.origin.y = v8;
        v32.size.width = v10;
        v32.size.height = v12;
        v29[0] = CGRectGetMaxX(v32) - v17;
        v29[1] = v8;
        v29[2] = v17;
        v29[3] = v12;
        v25 = [MEMORY[0x1E696B098] valueWithBytes:v29 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        [v3 setObject:v25 forKeyedSubscript:@"inspector"];
      }
    }
  }

  gotLoadHelper_x8__OBJC_CLASS___PRPosterContentOcclusionRectSet(v22);
  v27 = [objc_alloc(*(v26 + 760)) initWithNameToRectMap:v3];

  return v27;
}

- (id)posterSnapshotView
{
  transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
  if (transcriptBackground && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    snapshotView = [transcriptBackground snapshotView];
  }

  else
  {
    snapshotView = 0;
  }

  return snapshotView;
}

- (void)setNewTranscriptBackground:(id)background
{
  backgroundCopy = background;
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  conversation = [(CKCoreChatController *)self conversation];
  [conversation setPendingTranscriptBackground:backgroundCopy transferID:stringGUID];

  if (backgroundCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__CKCoreChatController_Backgrounds__setNewTranscriptBackground___block_invoke;
    v7[3] = &unk_1E72EE9E0;
    v7[4] = self;
    v8 = stringGUID;
    [backgroundCopy createBackgroundWithWatchDataWithCompletion:v7];
  }

  else
  {
    [(CKCoreChatController *)self updateTranscriptBackground:0 transferID:stringGUID];
  }
}

- (BOOL)isTranscriptDockingEnabled
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  isDockingEnabled = [collectionViewController isDockingEnabled];

  return isDockingEnabled;
}

- (void)_setTranscriptDockingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController setDockingEnabled:enabledCopy];
}

- (void)_updateTranscriptDockingStateIfNeeded
{
  _backgroundEligibleForTranscriptDocking = [(CKCoreChatController *)self _backgroundEligibleForTranscriptDocking];
  if (_backgroundEligibleForTranscriptDocking != [(CKCoreChatController *)self isTranscriptDockingEnabled])
  {

    [(CKCoreChatController *)self _setTranscriptDockingEnabled:_backgroundEligibleForTranscriptDocking];
  }
}

- (BOOL)_currentBackgroundIsPhotos
{
  currentPosterBundleIdentifier = [(CKCoreChatController *)self currentPosterBundleIdentifier];
  v3 = [currentPosterBundleIdentifier isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];

  return v3;
}

- (BOOL)_transcriptContentSizeEligibleForTranscriptDocking:(CGSize)docking
{
  height = docking.height;
  _backgroundEligibleForTranscriptDocking = [(CKCoreChatController *)self _backgroundEligibleForTranscriptDocking];
  if (_backgroundEligibleForTranscriptDocking)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 textBalloonMinHeight];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 extraLargeTranscriptSpace];
    v10 = v7 + v9 * 2.0;

    LOBYTE(_backgroundEligibleForTranscriptDocking) = height > v10;
  }

  return _backgroundEligibleForTranscriptDocking;
}

+ (double)transcriptDockingDelayInDays
{
  if (transcriptDockingDelayInDays_onceToken != -1)
  {
    +[CKCoreChatController(Background_Crossplatform) transcriptDockingDelayInDays];
  }

  return *&transcriptDockingDelayInDays_delayInDays;
}

void __78__CKCoreChatController_Background_Crossplatform__transcriptDockingDelayInDays__block_invoke()
{
  transcriptDockingDelayInDays_delayInDays = 0x3FF0000000000000;
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([v3 BOOLForKey:@"useTranscriptDockingDelayInDaysOverride"])
    {
      [v3 doubleForKey:@"transcriptDockingDelayInDaysOverride"];
      transcriptDockingDelayInDays_delayInDays = fmax(v2, 0.0);
    }
  }
}

- (BOOL)_transcriptShouldBeDockedOnPush
{
  if (![(CKCoreChatController *)self _currentBackgroundIsPhotos])
  {
    return 0;
  }

  conversation = [(CKCoreChatController *)self conversation];
  hasUnreadMessages = [conversation hasUnreadMessages];

  if (hasUnreadMessages)
  {
    return 0;
  }

  conversation2 = [(CKCoreChatController *)self conversation];
  date = [conversation2 date];

  [objc_opt_class() transcriptDockingDelayInDays];
  if (date && (v9 = v8, [CKUtilities _daysSinceDate:date], v10 < v9))
  {
    bOOLValue = 0;
  }

  else
  {
    syncedSettingsManager = [objc_opt_class() syncedSettingsManager];
    v12 = [syncedSettingsManager settingValueForKey:10];
    bOOLValue = [v12 BOOLValue];
  }

  return bOOLValue;
}

- (void)_updateTranscriptBackgroundFrame
{
  view = [(CKCoreChatController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
  rootViewController = [transcriptBackground rootViewController];
  view2 = [rootViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)presentCommSafetyInterventionWithSendContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Asked to present intervention with context type {%@}.", &v10, 0xCu);
  }

  v8 = CKCommSafetySendContextDictionary(contextCopy);
  v9 = [MEMORY[0x1E69CA8E8] viewControllerWithWorkflow:1 contextDictionary:v8];
  [v9 setInterventionDelegate:self];
  [(CKCoreChatController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)presentCommSafetyInterventionIfNecessaryForFileURL:(id)l withSendContext:(id)context completion:(id)completion
{
  lCopy = l;
  contextCopy = context;
  completionCopy = completion;
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  if ([mEMORY[0x1E69A7FC8] checksForSensitivityOnSend])
  {
    mEMORY[0x1E69A7FC0] = [MEMORY[0x1E69A7FC0] sharedManager];
    conversation = [(CKCoreChatController *)self conversation];
    chat = [conversation chat];
    chatIdentifier = [chat chatIdentifier];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __114__CKCoreChatController_UserSafety__presentCommSafetyInterventionIfNecessaryForFileURL_withSendContext_completion___block_invoke;
    v16[3] = &unk_1E72F0178;
    v17 = contextCopy;
    selfCopy = self;
    v19 = completionCopy;
    [mEMORY[0x1E69A7FC0] isSensitiveContent:lCopy withChatID:chatIdentifier completionHandler:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __114__CKCoreChatController_UserSafety__presentCommSafetyInterventionIfNecessaryForFileURL_withSendContext_completion___block_invoke(uint64_t a1, char a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __114__CKCoreChatController_UserSafety__presentCommSafetyInterventionIfNecessaryForFileURL_withSendContext_completion___block_invoke_2;
  v6[3] = &unk_1E72F0150;
  v10 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __114__CKCoreChatController_UserSafety__presentCommSafetyInterventionIfNecessaryForFileURL_withSendContext_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "presentCommSafetyInterventionIfNecessaryForFileURL detected sensitive content with context type {%@}.", &v8, 0xCu);
    }

    v5 = CKCommSafetySendContextDictionary(*(a1 + 32));
    v6 = [MEMORY[0x1E69CA8E8] viewControllerWithWorkflow:1 contextDictionary:v5];
    [v6 setInterventionDelegate:*(a1 + 40)];
    [*(a1 + 40) presentViewController:v6 animated:1 completion:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

- (void)checkForSensitiveContentAndSendComposition:(id)composition willPresentInterventionHandler:(id)handler sendHandler:(id)sendHandler
{
  v96 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  handlerCopy = handler;
  sendHandlerCopy = sendHandler;
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  shelfPluginPayload = [compositionCopy shelfPluginPayload];
  if (shelfPluginPayload)
  {
    v8 = 1;
  }

  else
  {
    v8 = [objc_msgSend(compositionCopy "balloonViewClass")];
  }

  checksForSensitivityOnSend = [mEMORY[0x1E69A7FC8] checksForSensitivityOnSend];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (checksForSensitivityOnSend)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (v8)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v93 = v12;
      v94 = 2112;
      v95 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "isCheckingForSensitivity: %@, isCompositionEligibleForAnalysis: %@", buf, 0x16u);
    }
  }

  if ((checksForSensitivityOnSend & v8) == 1)
  {
    mEMORY[0x1E69A7FC0] = [MEMORY[0x1E69A7FC0] sharedManager];
    conversation = [(CKCoreChatController *)self conversation];
    chat = [conversation chat];
    chatIdentifier = [chat chatIdentifier];

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v20 = dispatch_group_create();
    inputController = [(CKCoreChatController *)self inputController];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke;
    v85[3] = &unk_1E72F01C8;
    v22 = v20;
    v86 = v22;
    v23 = mEMORY[0x1E69A7FC0];
    v87 = v23;
    v24 = chatIdentifier;
    v88 = v24;
    v25 = v17;
    v89 = v25;
    v43 = v18;
    v90 = v43;
    [inputController requestPhotoBrowserToEnumerateSelectedImagesUsingBlock:v85];

    mediaObjects = [compositionCopy mediaObjects];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_3;
    v79[3] = &unk_1E72F0218;
    v27 = v22;
    v80 = v27;
    v53 = v23;
    v81 = v53;
    v52 = v24;
    v82 = v52;
    v55 = v25;
    v83 = v55;
    v54 = v19;
    v84 = v54;
    [mediaObjects enumerateObjectsUsingBlock:v79];

    shelfPluginPayload2 = [compositionCopy shelfPluginPayload];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v29 = shelfPluginPayload2;
    if ((isKindOfClass & 1) == 0)
    {
      v29 = 0;
    }

    v44 = v29;
    if (v44)
    {
      mediaObjectFromPayload = [v44 mediaObjectFromPayload];
      if (mediaObjectFromPayload || ([compositionCopy shelfMediaObject], (mediaObjectFromPayload = objc_claimAutoreleasedReturnValue()) != 0))
      {
        dispatch_group_enter(v27);
        fileURL = [mediaObjectFromPayload fileURL];
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_5;
        v74[3] = &unk_1E72F01F0;
        v75 = v55;
        v76 = mediaObjectFromPayload;
        v77 = v54;
        v78 = v27;
        obj = mediaObjectFromPayload;
        [v53 isSensitiveContent:fileURL withChatID:v52 completionHandler:v74];
      }

      else
      {
        obj = [v44 __ck_photoCompositionMediaObjects];
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v37 = [obj countByEnumeratingWithState:&v70 objects:v91 count:16];
        if (v37)
        {
          v38 = *v71;
          v39 = MEMORY[0x1E69E9820];
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v71 != v38)
              {
                objc_enumerationMutation(obj);
              }

              v41 = *(*(&v70 + 1) + 8 * i);
              dispatch_group_enter(v27);
              fileURL2 = [v41 fileURL];
              v65[0] = v39;
              v65[1] = 3221225472;
              v65[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_6;
              v65[3] = &unk_1E72F01F0;
              v66 = v55;
              v67 = v41;
              v68 = v54;
              v69 = v27;
              [v53 isSensitiveContent:fileURL2 withChatID:v52 completionHandler:v65];
            }

            v37 = [obj countByEnumeratingWithState:&v70 objects:v91 count:16];
          }

          while (v37);
        }
      }
    }

    v32 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_7;
    block[3] = &unk_1E72F0268;
    v57 = v27;
    v58 = v55;
    v59 = v54;
    v60 = compositionCopy;
    v61 = v43;
    selfCopy = self;
    v63 = handlerCopy;
    v64 = sendHandlerCopy;
    v33 = v43;
    v34 = v54;
    v35 = v55;
    v36 = v27;
    dispatch_async(v32, block);
  }

  else
  {
    (*(sendHandlerCopy + 2))(sendHandlerCopy, compositionCopy);
  }
}

void __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 fileURL];

  if (v7)
  {
    dispatch_group_enter(*(a1 + 32));
    v8 = *(a1 + 40);
    v9 = [v5 fileURL];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_2;
    v11[3] = &unk_1E72F01A0;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = v5;
    v14 = v6;
    v15 = *(a1 + 64);
    v16 = *(a1 + 32);
    [v8 isSensitiveContent:v9 withChatID:v10 completionHandler:v11];
  }
}

void __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) fileURL];
    [v3 addObject:v4];

    if (*(a1 + 48))
    {
      [*(a1 + 56) addObject:?];
    }
  }

  v5 = *(a1 + 64);

  dispatch_group_leave(v5);
}

void __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fileURL];

  if (v4)
  {
    dispatch_group_enter(*(a1 + 32));
    v5 = *(a1 + 40);
    v6 = [v3 fileURL];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_4;
    v8[3] = &unk_1E72F01F0;
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = v3;
    v11 = *(a1 + 64);
    v12 = *(a1 + 32);
    [v5 isSensitiveContent:v6 withChatID:v7 completionHandler:v8];
  }
}

void __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) fileURL];
    [v3 addObject:v4];

    [*(a1 + 48) addObject:*(a1 + 40)];
  }

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_5(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) fileURL];
    [v3 addObject:v4];

    [*(a1 + 48) addObject:*(a1 + 40)];
  }

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_6(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) fileURL];
    [v3 addObject:v4];

    [*(a1 + 48) addObject:*(a1 + 40)];
  }

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v2, v3) && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Timed out waiting for media analysis to complete.", buf, 2u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_202;
  block[3] = &unk_1E72F0240;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v13 = v10;
  v14 = v9;
  v11 = *(a1 + 80);
  v15 = *(a1 + 72);
  v16 = v11;
  v17 = *(a1 + 88);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_202(uint64_t a1)
{
  if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "count"))
  {
    v6 = [*(a1 + 48) compositionWithExpressiveSendStyleID:&stru_1F04268F8];
    v2 = [CKiOSCommSafetySendContext contextWithComposition:"contextWithComposition:sensitiveMediaObjects:identifiersOfShelvedImages:" sensitiveMediaObjects:? identifiersOfShelvedImages:?];
    v3 = *(a1 + 72);
    if (v3)
    {
      (*(v3 + 16))();
    }

    [*(a1 + 64) presentCommSafetyInterventionWithSendContext:v2];
  }

  else
  {
    v4 = [MEMORY[0x1E69A8008] sharedInstance];
    [v4 logPrivatizedImageSentEvent:0];

    v5 = *(*(a1 + 80) + 16);

    v5();
  }
}

- (void)didConfirmForInterventionViewController:(id)controller
{
  controllerCopy = controller;
  contextDictionary = [controllerCopy contextDictionary];
  v5 = [contextDictionary objectForKey:@"CKCommSafetyContextKeyiOSSend"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [contextDictionary objectForKey:@"CKCommSafetyContextKeyStickerDropSend"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [contextDictionary objectForKey:@"CKCommSafetyContextKeyAutomaticallyPlacedStickerSend"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [contextDictionary objectForKey:@"CKCommSafetyContextKeyStickerTapbackSend"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  [(CKCoreChatController *)self _dismissInterventionController:controllerCopy];

  if (v7)
  {
    [(CKCoreChatController *)self handleiOSConfirmCommSafetySendContext:v7];
  }

  else if (v10)
  {
    [(CKCoreChatController *)self handleStickerDropConfirmCommSafetySendContext:v10];
  }

  else if (v16)
  {
    [(CKCoreChatController *)self handleStickerTapbackConfirmCommSafetySendContext:v16];
  }

  else if (v13)
  {
    [(CKCoreChatController *)self handleAutomaticallyPlacedStickerCommSafetySendContext:v13];
  }
}

- (void)didRejectForInterventionViewController:(id)controller
{
  controllerCopy = controller;
  contextDictionary = [controllerCopy contextDictionary];
  [(CKCoreChatController *)self clearStagedSensitiveContentUsingContextDictionary:contextDictionary];

  [(CKCoreChatController *)self _dismissInterventionController:controllerCopy];
}

- (void)handleiOSConfirmCommSafetySendContext:(id)context
{
  composition = [context composition];
  [(CKCoreChatController *)self sendComposition:composition];
}

- (void)handleStickerTapbackConfirmCommSafetySendContext:(id)context
{
  contextCopy = context;
  stickerTapback = [contextCopy stickerTapback];
  parentMessagePartChatItem = [contextCopy parentMessagePartChatItem];

  chat = [(CKCoreChatController *)self chat];
  [chat sendTapback:stickerTapback forChatItem:parentMessagePartChatItem];
}

- (id)_nicknameBannerUpdatesAndStyle:(unint64_t *)style
{
  v53 = *MEMORY[0x1E69E9840];
  if (!IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() || (-[CKCoreChatController conversation](self, "conversation"), v3 = objc_claimAutoreleasedReturnValue(), [v3 chat], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasKnownParticipantsCache"), v4, v3, (v5 & 1) != 0))
  {
    mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
    conversation = [(CKCoreChatController *)self conversation];
    recipients = [conversation recipients];

    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = recipients;
    v40 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (!v40)
    {
      v41 = 0;
      goto LABEL_49;
    }

    v41 = 0;
    v39 = *v45;
    while (1)
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        if (!IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() || (v10 = MEMORY[0x1E69A7FD0], [v9 cnContact], v11 = objc_claimAutoreleasedReturnValue(), LOBYTE(v10) = objc_msgSend(v10, "isCNContactAKnownContact:", v11), v11, (v10 & 1) != 0))
        {
          defaultIMHandle = [v9 defaultIMHandle];
          defaultIMHandle2 = [v9 defaultIMHandle];
          v42 = [defaultIMHandle2 ID];

          defaultIMHandle3 = [v9 defaultIMHandle];
          v43 = 0;
          v15 = [mEMORY[0x1E69A5C10] nicknameUpdateForHandle:defaultIMHandle3 nicknameIfAvailable:&v43];
          v16 = v43;

          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v49 = v42;
              v50 = 2048;
              v51 = v15;
              _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "handle ID %@ has nickname state %lu", buf, 0x16u);
            }
          }

          if (v15)
          {
            v18 = objc_opt_new();
            [v18 setHandle:defaultIMHandle];
            [v18 setUpdateType:v15];
            if (v16)
            {
              [v18 setNickname:v16];
            }

            keysForNicknameHandling = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
            v20 = [defaultIMHandle cnContactWithKeys:keysForNicknameHandling];

            if (v20)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [v18 setContact:v20];
              }
            }

            currentDevice = [MEMORY[0x1E69DC938] currentDevice];
            if ([currentDevice userInterfaceIdiom])
            {
              currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
              v23 = [currentDevice2 userInterfaceIdiom] == 1;
            }

            else
            {
              v23 = 1;
            }

            v27 = (v15 & 2) == 0 && v23;
            if (!v27 && ![(CKCoreChatController *)self _haveUpdateAlready:v37 forContact:v20])
            {
              [v37 addObject:v18];
            }

            if (v41)
            {
              v28 = [v37 count];
              v29 = v41;
              if (v28 > 1)
              {
                v29 = 4;
              }

              goto LABEL_42;
            }

            mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
            isNameAndPhotoC3Enabled = [mEMORY[0x1E69A8070] isNameAndPhotoC3Enabled];

            v41 = v15 & 2;
            if ((isNameAndPhotoC3Enabled & v23 & 1) == 0)
            {
              v29 = 2;
              if ((~v15 & 6) == 0)
              {
                v29 = 3;
              }

              if ((v15 & 2) == 0)
              {
                v29 = (v15 >> 2) & 1;
              }

LABEL_42:
              v41 = v29;
            }
          }

          continue;
        }

        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            defaultIMHandle4 = [v9 defaultIMHandle];
            v26 = [defaultIMHandle4 ID];
            *buf = 138412290;
            v49 = v26;
            _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Skipping update for handle %@ because it is not a known contact.", buf, 0xCu);
          }
        }
      }

      v40 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (!v40)
      {
LABEL_49:

        if (style)
        {
          *style = v41;
        }

        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            v49 = v41;
            v50 = 2112;
            v51 = v37;
            _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Returning style %lu for nicknames %@", buf, 0x16u);
          }
        }

        goto LABEL_59;
      }
    }
  }

  if (style)
  {
    *style = 0;
  }

  v37 = MEMORY[0x1E695E0F0];
LABEL_59:

  return v37;
}

- (id)createMutableContact:(id)contact withNicknameUpdate:(id)update updateType:(unint64_t)type addHandleToContact:(BOOL)toContact
{
  toContactCopy = toContact;
  typeCopy = type;
  v47 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  updateCopy = update;
  if (contactCopy)
  {
    v10 = [contactCopy mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695CF18]);
  }

  v11 = v10;
  nickname = [updateCopy nickname];
  v13 = nickname;
  if ((typeCopy & 2) != 0)
  {
    firstName = [nickname firstName];
    [v11 setGivenName:firstName];

    lastName = [v13 lastName];
    [v11 setFamilyName:lastName];
  }

  if ((typeCopy & 4) != 0)
  {
    avatar = [v13 avatar];
    imageData = [avatar imageData];

    if (imageData)
    {
      [v11 setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [v11 setThumbnailImageData:0];
      [v11 setImageData:imageData];
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = v13;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "CKCoreChatController_Nicknames: Trying to update contact avatar with nil image from nickname %@", buf, 0xCu);
      }
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isSwiftUIAvatarRenderingEnabled = [mEMORY[0x1E69A8070] isSwiftUIAvatarRenderingEnabled];

    if (isSwiftUIAvatarRenderingEnabled && (objc_opt_respondsToSelector() & 1) != 0)
    {
      avatarRecipe = [v13 avatarRecipe];
      recipeData = [avatarRecipe recipeData];
      [v11 setAvatarRecipeData:recipeData];
    }

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isNameAndPhotoC3Enabled = [mEMORY[0x1E69A8070]2 isNameAndPhotoC3Enabled];

    v24 = imageData;
    if (!isNameAndPhotoC3Enabled)
    {
      goto LABEL_32;
    }

    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v25 = objc_alloc(MEMORY[0x1E695CFC8]);
      wallpaper = [v13 wallpaper];
      filePath = [wallpaper filePath];
      wallpaper2 = [v13 wallpaper];
      wallpaperData = [wallpaper2 wallpaperData];
      wallpaper3 = [v13 wallpaper];
      v31 = [v25 initWithIdentifier:filePath posterArchiveData:wallpaperData contentIsSensitive:{objc_msgSend(wallpaper3, "contentIsSensitive")}];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v31 = 0;
        goto LABEL_23;
      }

      v32 = objc_alloc(MEMORY[0x1E695CFC8]);
      wallpaper = [v13 wallpaper];
      filePath = [wallpaper wallpaperData];
      v31 = [v32 initWithPosterArchiveData:filePath];
    }

LABEL_23:
    wallpaper4 = [v13 wallpaper];
    metadata = [wallpaper4 metadata];

    if (metadata)
    {
      v35 = [v31 wallpaperIncludingIMWallpaperMetadata:metadata];

      v31 = v35;
    }

    if (v31)
    {
      [v11 setWallpaper:v31];
    }

    else if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = v13;
        _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "Trying to update contact wallpaper with nil wallpaper from nickname %@", buf, 0xCu);
      }
    }

    v24 = imageData;
LABEL_32:
  }

  if (!toContactCopy)
  {
    goto LABEL_38;
  }

  handle = [v13 handle];
  v38 = [handle length] == 0;

  if (!v38)
  {
    handle2 = [v13 handle];
    [(CKCoreChatController *)self updateContact:v11 withHandle:handle2];
LABEL_36:

    goto LABEL_38;
  }

  if (!v13)
  {
    handle2 = [updateCopy handle];
    v41 = [handle2 ID];
    [(CKCoreChatController *)self updateContact:v11 withHandle:v41];

    goto LABEL_36;
  }

LABEL_38:

  return v11;
}

- (BOOL)saveContact:(id)contact shouldUpdate:(BOOL)update
{
  updateCopy = update;
  v18 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    getContactStore = [mEMORY[0x1E69A7FD0] getContactStore];

    v8 = objc_alloc_init(MEMORY[0x1E695CF88]);
    v9 = v8;
    if (updateCopy)
    {
      [v8 updateContact:contactCopy];
    }

    else
    {
      [v8 addContact:contactCopy toContainerWithIdentifier:0];
    }

    v15 = 0;
    v10 = [getContactStore executeSaveRequest:v9 error:&v15];
    v11 = v15;
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    if ((v12 & 1) == 0 && IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKCoreChatController_Nicknames: error saving contact: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_haveUpdateAlready:(id)already forContact:(id)contact
{
  v22 = *MEMORY[0x1E69E9840];
  alreadyCopy = already;
  contactCopy = contact;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [alreadyCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(alreadyCopy);
        }

        contact = [*(*(&v17 + 1) + 8 * i) contact];
        identifier = [contact identifier];
        identifier2 = [contactCopy identifier];
        v15 = [identifier isEqualToString:identifier2];

        v9 |= v15;
      }

      v8 = [alreadyCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)_retrieveNicknameBannerUpdatesIfNeeded:(unint64_t *)needed
{
  v47 = *MEMORY[0x1E69E9840];
  if (![(CKViewController *)self appearing]&& ![(CKViewController *)self appeared])
  {
    goto LABEL_9;
  }

  chat = [(CKCoreChatController *)self chat];
  if (![chat supportsCapabilities:8] || CKIsRunningForDevelopmentOnSimulator() || -[CKCoreChatController _isRunningPPT](self, "_isRunningPPT") || -[CKCoreChatController isInline](self, "isInline") || +[CKApplicationState isResizing](CKApplicationState, "isResizing"))
  {
    goto LABEL_8;
  }

  v8 = IMIsRunningInScreenshotTesting_IsolatedTranscriptUI();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  areBannersSupported = [v9 areBannersSupported];

  if (!areBannersSupported)
  {
    goto LABEL_9;
  }

  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    chat = IMSharedDowntimeController();
    if ([chat isDowntimeLimited])
    {
LABEL_8:

LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }

    conversation = [(CKCoreChatController *)self conversation];
    chat2 = [conversation chat];
    if (chat2)
    {
      conversation2 = [(CKCoreChatController *)self conversation];
      chat3 = [conversation2 chat];
      allowedByScreenTime = [chat3 allowedByScreenTime];

      if (!allowedByScreenTime)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v41 = 0;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Checking nickname banner state", buf, 2u);
    }
  }

  v17 = [(CKCoreChatController *)self _nicknameBannerUpdatesAndStyle:&v41];
  mEMORY[0x1E69A8108] = [MEMORY[0x1E69A8108] sharedInstance];
  if ([(CKCoreChatController *)self accountCanCreateNickname])
  {
    if (([mEMORY[0x1E69A8108] wasSharingEverEnabled] & 1) == 0)
    {
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isChatSNAPOnboardingBannerEnabled = [mEMORY[0x1E69A8070] isChatSNAPOnboardingBannerEnabled];

      if (isChatSNAPOnboardingBannerEnabled)
      {
        v41 = 6;
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            wasSharingEverEnabled = [mEMORY[0x1E69A8108] wasSharingEverEnabled];
            v23 = @"NO";
            if (wasSharingEverEnabled)
            {
              v23 = @"YES";
            }

            *buf = 138412290;
            v44 = v23;
            _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Showing outgoing share banner. Was sharing ever enabled: %@", buf, 0xCu);
          }
        }

        goto LABEL_43;
      }
    }

    if (-[CKCoreChatController _alwaysShowNicknameBanners](self, "_alwaysShowNicknameBanners", v41) || ([mEMORY[0x1E69A8108] sharingEnabled] & 1) != 0)
    {
LABEL_43:
      sharingEnabled = [mEMORY[0x1E69A8108] sharingEnabled];
      if (v41)
      {
        v28 = 0;
      }

      else
      {
        v28 = sharingEnabled;
      }

      if (v28 == 1)
      {
        mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
        chat4 = [(CKCoreChatController *)self chat];
        v31 = [mEMORY[0x1E69A5C10] shouldOfferNicknameSharingForChat:chat4];

        if (v31)
        {
          if (IMOSLoggingEnabled())
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v44 = v41;
              _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Should offer nickname sharing. Banner style set to %lu", buf, 0xCu);
            }
          }

          v41 = 5;
          v33 = objc_alloc_init(CKNicknameUpdate);
          mEMORY[0x1E69A5C10]2 = [MEMORY[0x1E69A5C10] sharedInstance];
          personalNickname = [mEMORY[0x1E69A5C10]2 personalNickname];
          [(CKNicknameUpdate *)v33 setNickname:personalNickname];

          v42 = v33;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];

          v17 = v36;
        }
      }

      if (needed)
      {
        *needed = v41;
      }

      v17 = v17;
      v6 = v17;
      goto LABEL_56;
    }

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        _alwaysShowNicknameBanners = [(CKCoreChatController *)self _alwaysShowNicknameBanners];
        sharingEnabled2 = [mEMORY[0x1E69A8108] sharingEnabled];
        v39 = @"NO";
        if (_alwaysShowNicknameBanners)
        {
          v40 = @"YES";
        }

        else
        {
          v40 = @"NO";
        }

        if (sharingEnabled2)
        {
          v39 = @"YES";
        }

        *buf = 138412546;
        v44 = v40;
        v45 = 2112;
        v46 = v39;
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Not showing banner. Always show nickname banners: %@ is sharing enabled: %@", buf, 0x16u);
      }

LABEL_39:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = IMSharedHelperNickNameEnabled();
      v26 = @"NO";
      if (v25)
      {
        v26 = @"YES";
      }

      *buf = 138412290;
      v44 = v26;
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Not showing banner. Nickname feature enabled: %@", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v6 = 0;
LABEL_56:

LABEL_10:

  return v6;
}

- (BOOL)accountCanCreateNickname
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAllowMultiplePhoneNumbersSNaPEnabled = [mEMORY[0x1E69A8070] isAllowMultiplePhoneNumbersSNaPEnabled];

  v4 = IMSharedHelperNickNameEnabled();
  if (isAllowMultiplePhoneNumbersSNaPEnabled)
  {
    if (v4)
    {
      mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
      LOBYTE(v6) = [mEMORY[0x1E69A5C10] iCloudSignedInToUseNicknames];
LABEL_9:

      return v6;
    }
  }

  else if (v4)
  {
    mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
    if ([mEMORY[0x1E69A5C10] iCloudSignedInToUseNicknames])
    {
      v6 = [MEMORY[0x1E69A5C10] multiplePhoneNumbersTiedToAppleID] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    goto LABEL_9;
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (void)updateContact:(id)contact withHandle:(id)handle
{
  v15[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  handleCopy = handle;
  v7 = handleCopy;
  if (contactCopy && [handleCopy length])
  {
    if ([v7 _appearsToBeEmail])
    {
      v8 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CB60] value:v7];
      emailAddresses = [contactCopy emailAddresses];

      if (!emailAddresses)
      {
        v15[0] = v8;
        emailAddresses2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [contactCopy setEmailAddresses:emailAddresses2];
LABEL_12:

        goto LABEL_13;
      }

      emailAddresses2 = [contactCopy emailAddresses];
      phoneNumbers2 = [emailAddresses2 arrayByAddingObject:v8];
      [contactCopy setEmailAddresses:phoneNumbers2];
LABEL_11:

      goto LABEL_12;
    }

    if ([v7 _appearsToBePhoneNumber])
    {
      v8 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v7];
      emailAddresses2 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CB90] value:v8];
      phoneNumbers = [contactCopy phoneNumbers];

      if (phoneNumbers)
      {
        phoneNumbers2 = [contactCopy phoneNumbers];
        v13 = [phoneNumbers2 arrayByAddingObject:emailAddresses2];
        [contactCopy setPhoneNumbers:v13];
      }

      else
      {
        v14 = emailAddresses2;
        phoneNumbers2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
        [contactCopy setPhoneNumbers:phoneNumbers2];
      }

      goto LABEL_11;
    }
  }

LABEL_13:
}

- (void)dealloc
{
  mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
  [mEMORY[0x1E69A6160] removeListener:self];

  chat = [(CKConversation *)self->_conversation chat];
  sendProgressDelegate = [chat sendProgressDelegate];

  if (sendProgressDelegate == self)
  {
    [chat setSendProgressDelegate:0];
  }

  mEMORY[0x1E69A5C30] = [MEMORY[0x1E69A5C30] sharedInstance];
  guid = [chat guid];
  [mEMORY[0x1E69A5C30] unregisterPhotoLibraryPersistenceManagerSession:guid];

  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController setDelegate:0];

  refreshServiceForSendingUpdater = [(CKCoreChatController *)self refreshServiceForSendingUpdater];
  [refreshServiceForSendingUpdater invalidate];

  [(CKConversation *)self->_conversation willBecomeInactive];
  v10.receiver = self;
  v10.super_class = CKCoreChatController;
  [(CKCoreChatController *)&v10 dealloc];
}

- (CKCoreChatController)initWithConversation:(id)conversation
{
  v13[1] = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v12.receiver = self;
  v12.super_class = CKCoreChatController;
  v5 = [(CKScrollViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_initialViewSize = *MEMORY[0x1E695F060];
    v7 = [[CKScheduledUpdater alloc] initWithTarget:v5 action:sel__refreshServiceForSending];
    [(CKCoreChatController *)v6 setRefreshServiceForSendingUpdater:v7];
    [(CKCoreChatController *)v6 setConversation:conversationCopy];
    [(CKCoreChatController *)v6 registerNotifications];
    [(CKCoreChatController *)v6 _updateTitleAnimated:0];
    [(CKCoreChatController *)v6 _updateNavigationButtons];
    mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
    [mEMORY[0x1E69A6160] addListener:v6];

    v13[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(CKCoreChatController *)v6 registerForTraitChanges:v9 withHandler:&__block_literal_global_261_0];
  }

  return v6;
}

- (void)loadView
{
  [(CKCoreChatController *)self _initialFrameForGradientReferenceView];
  v13 = [objc_alloc(objc_msgSend(objc_opt_class() "_gradientReferenceViewClass"))];
  [(CKCoreChatController *)self setView:v13];
  view = [(CKCoreChatController *)self view];
  [view setAutoresizingMask:18];

  view2 = [(CKCoreChatController *)self view];
  v9 = +[CKUIBehavior sharedBehaviors];
  theme = [v9 theme];
  transcriptBackgroundColor = [theme transcriptBackgroundColor];
  [view2 setBackgroundColor:transcriptBackgroundColor];

  view3 = [(CKCoreChatController *)self view];
  [view3 setLayoutMarginsFollowReadableWidth:1];

  [(CKCoreChatController *)self setAutomaticallyAdjustsScrollViewInsets:0];
}

- (void)_registerForChatItemTraitCollectionChanges
{
  systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v4 = [systemTraitsAffectingColorAppearance mutableCopy];

  [v4 addObject:objc_opt_class()];
  v5 = [v4 copy];
  objc_initWeak(&location, self);
  v6 = [v5 copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__CKCoreChatController__registerForChatItemTraitCollectionChanges__block_invoke;
  v8[3] = &unk_1E72F4EB8;
  objc_copyWeak(&v9, &location);
  v7 = [(CKCoreChatController *)self registerForTraitChanges:v6 withHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __66__CKCoreChatController__registerForChatItemTraitCollectionChanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v10 traitCollection];
  v7 = [v6 isTranscriptBackgroundActive];
  v8 = [v5 isTranscriptBackgroundActive];

  if (v7 != v8)
  {
    [v10 _updateStaticPocketColor];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:v5];
}

- (void)_updateStaticPocketColor
{
  traitCollection = [(CKCoreChatController *)self traitCollection];
  if ([traitCollection isTranscriptBackgroundActive])
  {
    systemBackgroundColor = 0;
  }

  else
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  collectionView = [(CKCoreChatController *)self collectionView];
  [collectionView _setPocketColor:systemBackgroundColor forEdge:1];

  collectionView2 = [(CKCoreChatController *)self collectionView];
  [collectionView2 _setPocketColor:systemBackgroundColor forEdge:4];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKCoreChatController;
  [(CKCoreChatController *)&v5 viewDidLoad];
  conversation = [(CKCoreChatController *)self conversation];
  [(CKCoreChatController *)self setConversation:conversation];

  [(CKCoreChatController *)self _registerForChatItemTraitCollectionChanges];
  chat = [(CKCoreChatController *)self chat];
  [chat _reloadChatItemsForSatelliteStateChangeIfRequired:@"CKChatController viewDidLoad"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CKCoreChatController;
  [(CKViewController *)&v8 viewWillAppear:appear];
  if (CKIsRunningInMacCatalyst())
  {
    macToolbarController = [(CKCoreChatController *)self macToolbarController];
    if (macToolbarController)
    {
      v5 = macToolbarController;
      v6 = [(CKCoreChatController *)self conformsToProtocol:&unk_1F051C328];

      if (v6)
      {
        macToolbarController2 = [(CKCoreChatController *)self macToolbarController];
        [macToolbarController2 setSecondaryItemProvider:self];
      }
    }
  }

  [(CKCoreChatController *)self _registerSendProgressDelegate];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKCoreChatController;
  [(CKViewController *)&v4 viewDidAppear:appear];
  [(CKCoreChatController *)self setViewIsVisible:1];
}

- (void)viewDidAppearDeferredSetup
{
  v6.receiver = self;
  v6.super_class = CKCoreChatController;
  [(CKViewController *)&v6 viewDidAppearDeferredSetup];
  if (CKIsRunningInMessages())
  {
    CKPrewarmPluginBalloonCacheIfNeeded();
  }

  v3 = +[CKPreviewDispatchCache genmojiPreviewCache];
  [v3 resume];

  v4 = +[CKPreviewDispatchCache transcriptPreviewCache];
  [v4 resume];

  v5 = +[CKPreviewDispatchCache snapshotCache];
  [v5 resume];

  [(CKCoreChatController *)self _markAsReadIfNecessary];
  [(CKCoreChatController *)self _inviteToViewStatusesIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13.receiver = self;
  v13.super_class = CKCoreChatController;
  [(CKViewController *)&v13 viewWillDisappear:?];
  [(CKCoreChatController *)self setHandleStatusAssertion:0];
  macToolbarController2 = +[CKUIBehavior sharedBehaviors];
  if (![macToolbarController2 useMacToolbar])
  {
    goto LABEL_5;
  }

  macToolbarController = [(CKCoreChatController *)self macToolbarController];
  if (!macToolbarController)
  {
    goto LABEL_5;
  }

  v7 = macToolbarController;
  v8 = [(CKCoreChatController *)self conformsToProtocol:&unk_1F051C328];

  if (v8)
  {
    macToolbarController2 = [(CKCoreChatController *)self macToolbarController];
    [macToolbarController2 removeItemProvider:self];
LABEL_5:
  }

  [(CKCoreChatController *)self _deregisterSendProgressDelegate];
  fullScreenBalloonViewController = [(CKCoreChatController *)self fullScreenBalloonViewController];

  if (fullScreenBalloonViewController)
  {
    fullScreenBalloonViewController2 = [(CKCoreChatController *)self fullScreenBalloonViewController];
    displayConfiguration = [fullScreenBalloonViewController2 displayConfiguration];
    shouldShowStickers = [displayConfiguration shouldShowStickers];

    if ((shouldShowStickers & 1) == 0)
    {
      [(CKCoreChatController *)self _dismissFullScreenBubbleViewControllerAnimated:disappearCopy withSendAnimation:0 completion:0];
    }
  }

  [(CKCoreChatController *)self setViewIsVisible:0];
  [(CKCoreChatController *)self _cancelSatelliteFetch];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = CKCoreChatController;
  [(CKCoreChatController *)&v10 viewDidLayoutSubviews];
  [(CKCoreChatController *)self _updateTranscriptDockingStateIfNeeded];
  if (![(CKCoreChatController *)self initialLayoutComplete])
  {
    [(CKCoreChatController *)self setInitialLayoutComplete:1];
    [(CKCoreChatController *)self _viewDidInitialLayoutSubviews];
    collectionView = [(CKCoreChatController *)self collectionView];
    v4 = MEMORY[0x1E69DD250];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__CKCoreChatController_viewDidLayoutSubviews__block_invoke;
    v8[3] = &unk_1E72EBA18;
    v9 = collectionView;
    v5 = collectionView;
    [v4 performWithoutAnimation:v8];
  }

  transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
  rootViewController = [transcriptBackground rootViewController];

  if (rootViewController)
  {
    [(CKCoreChatController *)self _updateTranscriptBackgroundFrame];
  }
}

void __45__CKCoreChatController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  v2 = +[CKScrollViewAnimationProperties unanimated];
  [*(a1 + 32) enforceTranscriptScrollIntentWithAnimationProperties:v2];
}

- (void)parentControllerDidBecomeActive
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "MarkAsRead - parentControllerDidBecomeActive", v4, 2u);
    }
  }

  [(CKCoreChatController *)self _markAsReadIfNecessary];
}

- (void)_activeAppearanceTraitDidChange
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "MarkAsRead - activeAppearanceTraitDidChange", v4, 2u);
    }
  }

  [(CKCoreChatController *)self _markAsReadIfNecessary];
}

- (void)systemApplicationWillEnterForeground
{
  v4.receiver = self;
  v4.super_class = CKCoreChatController;
  [(CKViewController *)&v4 systemApplicationWillEnterForeground];
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController systemApplicationWillEnterForeground];
}

- (void)parentControllerDidResume:(BOOL)resume animating:(BOOL)animating
{
  animatingCopy = animating;
  resumeCopy = resume;
  v8.receiver = self;
  v8.super_class = CKCoreChatController;
  [CKViewController parentControllerDidResume:sel_parentControllerDidResume_animating_ animating:?];
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController parentControllerDidResume:resumeCopy animating:animatingCopy];

  [(CKCoreChatController *)self _performResume];
}

- (void)_performResume
{
  [(CKCoreChatController *)self _registerSendProgressDelegate];
  [(CKCoreChatController *)self _markAsReadIfNecessary];
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController prepareForResume];

  [(CKCoreChatController *)self refreshServiceForSending];
}

- (void)prepareForSuspend
{
  v3.receiver = self;
  v3.super_class = CKCoreChatController;
  [(CKViewController *)&v3 prepareForSuspend];
  [(CKCoreChatController *)self _deregisterSendProgressDelegate];
}

+ (Class)transcriptControllerClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  transcriptCollectionViewControllerClass = [v2 transcriptCollectionViewControllerClass];

  return transcriptCollectionViewControllerClass;
}

- (CKTranscriptCollectionView)collectionView
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];

  return collectionView;
}

- (BOOL)shouldDisplayTextEntry
{
  conversation = [(CKCoreChatController *)self conversation];
  if (conversation)
  {
    conversation2 = [(CKCoreChatController *)self conversation];
    hasReplyEnabled = [conversation2 hasReplyEnabled];
  }

  else
  {
    hasReplyEnabled = 1;
  }

  return hasReplyEnabled;
}

- (IMChat)chat
{
  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];

  return chat;
}

- (BOOL)isReadOnly
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTextAccessFor3rdPartyEnabled = [mEMORY[0x1E69A8070] isTextAccessFor3rdPartyEnabled];

  if (isTextAccessFor3rdPartyEnabled)
  {
    conversation = [(CKCoreChatController *)self conversation];
    sendingService = [conversation sendingService];
    conversation2 = [(CKCoreChatController *)self conversation];
    chat = [conversation2 chat];
    v9 = [sendingService __ck_isSendingAllowedForChat:chat];

    if (!v9)
    {
      return 1;
    }
  }

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070]2 isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    if (([MEMORY[0x1E69A8198] isSpamFilteringEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x1E69A8198], "isTextMessageExtensionEnabled"))
    {
      chat2 = [(CKCoreChatController *)self chat];
      isFiltered = [chat2 isFiltered];

      if (isFiltered == 2)
      {
        return 1;
      }
    }
  }

  chat3 = [(CKCoreChatController *)self chat];
  isReadOnly = [chat3 isReadOnly];

  return isReadOnly;
}

- (id)_handleIDsForCurrentConversation
{
  conversation = [(CKCoreChatController *)self conversation];
  recipients = [conversation recipients];
  v4 = [recipients __imArrayByApplyingBlock:&__block_literal_global_358_0];

  return v4;
}

id __56__CKCoreChatController__handleIDsForCurrentConversation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 defaultIMHandle];
  v3 = [v2 ID];

  return v3;
}

- (BOOL)_conversationHasReplyEnabled
{
  conversation = [(CKCoreChatController *)self conversation];
  if (conversation)
  {
    conversation2 = [(CKCoreChatController *)self conversation];
    hasReplyEnabled = [conversation2 hasReplyEnabled];
  }

  else
  {
    hasReplyEnabled = 1;
  }

  return hasReplyEnabled;
}

- (BOOL)_shouldAllowReply
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      _shouldAllowReplyFromLockScreen = [(CKCoreChatController *)self _shouldAllowReplyFromLockScreen];
      conversation = [(CKCoreChatController *)self conversation];
      v9[0] = 67109376;
      v9[1] = _shouldAllowReplyFromLockScreen;
      v10 = 1024;
      hasLeftGroupChat = [conversation hasLeftGroupChat];
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "allow reply: %d has left: %d", v9, 0xEu);
    }
  }

  if (![(CKCoreChatController *)self _shouldAllowReplyFromLockScreen])
  {
    return 0;
  }

  conversation2 = [(CKCoreChatController *)self conversation];
  v7 = ([conversation2 hasLeftGroupChat] & 1) == 0 && -[CKCoreChatController _conversationHasReplyEnabled](self, "_conversationHasReplyEnabled");

  return v7;
}

- (BOOL)_shouldAllowReplyFromLockScreen
{
  CFPreferencesSynchronize(@"com.apple.mobilephone", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"LockScreenMessaging", @"com.apple.mobilephone", &keyExistsAndHasValidFormat);
  v4 = keyExistsAndHasValidFormat;
  mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x1E69A6160] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Under first unlock. Not allowing lock screen messaging", v9, 2u);
      }
    }

    return ![(CKCoreChatController *)self _deviceIsPasscodeLocked];
  }

  result = 1;
  if (v4 && !AppBooleanValue)
  {
    return ![(CKCoreChatController *)self _deviceIsPasscodeLocked];
  }

  return result;
}

- (BOOL)isCollapsed
{
  delegate = [(CKCoreChatController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CKCoreChatController *)self delegate];
    shouldConfigureChatControllerAsCollapsed = [delegate2 shouldConfigureChatControllerAsCollapsed];
  }

  else
  {
    delegate2 = [(CKCoreChatController *)self splitViewController];
    shouldConfigureChatControllerAsCollapsed = [delegate2 isCollapsed];
  }

  v7 = shouldConfigureChatControllerAsCollapsed;

  return v7;
}

- (BOOL)conversationAllowedByScreenTime
{
  if (![MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    return 1;
  }

  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];
  allowedToShowConversationSync = [chat allowedToShowConversationSync];

  return allowedToShowConversationSync;
}

- (CGRect)_initialFrameForCollectionView
{
  if ([(CKCoreChatController *)self shouldUseInitialViewSize])
  {
    width = self->_initialViewSize.width;
    height = self->_initialViewSize.height;
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    view = [(CKCoreChatController *)self view];
    [view bounds];
    v5 = v8;
    v6 = v9;
    width = v10;
    height = v11;
  }

  v12 = v5;
  v13 = v6;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_initialFrameForGradientReferenceView
{
  if ([(CKCoreChatController *)self shouldUseInitialViewSize])
  {
    width = self->_initialViewSize.width;
    height = self->_initialViewSize.height;
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v6 = v8;
    v5 = v9;
    width = v10;
    height = v11;
  }

  v12 = v6;
  v13 = v5;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setConversation:(id)conversation forceReload:(BOOL)reload
{
  reloadCopy = reload;
  v76 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(rect.origin.y) = 138412290;
      *(&rect.origin.y + 4) = conversationCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "setting conversation: %@", &rect.origin.y, 0xCu);
    }
  }

  if (self->_conversation != conversationCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        conversation = self->_conversation;
        LODWORD(rect.origin.y) = 138412290;
        *(&rect.origin.y + 4) = conversation;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "old conversation becoming inactive %@", &rect.origin.y, 0xCu);
      }
    }

    if (self->_conversation)
    {
      mEMORY[0x1E69A5C30] = [MEMORY[0x1E69A5C30] sharedInstance];
      chat = [(CKConversation *)self->_conversation chat];
      guid = [chat guid];
      [mEMORY[0x1E69A5C30] unregisterPhotoLibraryPersistenceManagerSession:guid];
    }

    objc_storeStrong(&self->_conversation, conversation);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = self->_conversation;
        LODWORD(rect.origin.y) = 138412290;
        *(&rect.origin.y + 4) = v15;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "new conversation becoming active %@", &rect.origin.y, 0xCu);
      }
    }

    [(CKConversation *)self->_conversation didBecomeActive];
    acquireHandleStatusObservationAssertion = [(CKConversation *)self->_conversation acquireHandleStatusObservationAssertion];
    [(CKCoreChatController *)self setHandleStatusAssertion:acquireHandleStatusObservationAssertion];

    mEMORY[0x1E69A5C30]2 = [MEMORY[0x1E69A5C30] sharedInstance];
    chat2 = [(CKConversation *)conversationCopy chat];
    guid2 = [chat2 guid];
    [mEMORY[0x1E69A5C30]2 registerPhotoLibraryPersistenceManagerSession:guid2];

    [(CKCoreChatController *)self _deregisterSendProgressDelegate];
    [(CKCoreChatController *)self refreshServiceForSending];
  }

  isViewLoaded = [(CKCoreChatController *)self isViewLoaded];
  v21 = IMOSLoggingEnabled();
  if (isViewLoaded)
  {
    if (v21)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LODWORD(rect.origin.y) = 136315138;
        *(&rect.origin.y + 4) = "[CKCoreChatController setConversation:forceReload:]";
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Initial layout is complete, proceeding with %s", &rect.origin.y, 0xCu);
      }
    }

    if (conversationCopy)
    {
      chat3 = [(CKConversation *)conversationCopy chat];
      if (chat3 && [(CKCoreChatController *)self conversationAllowedByScreenTime])
      {

LABEL_34:
        composeInitialStatusLabel = [(CKCoreChatController *)self composeInitialStatusLabel];
        [composeInitialStatusLabel removeFromSuperview];

        [(CKCoreChatController *)self setComposeInitialStatusLabel:0];
        collectionViewController = [(CKCoreChatController *)self collectionViewController];
        conversation = [collectionViewController conversation];
        conversation2 = [(CKCoreChatController *)self conversation];
        if (conversation != conversation2)
        {
          reloadCopy = 1;
        }

        if (reloadCopy)
        {
          [(CKCoreChatController *)self _removeExistingCollectionViewController];
          [(CKCoreChatController *)self calculateTranscriptMarginInsets];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          [(CKCoreChatController *)self balloonMaxWidth];
          v39 = v38;
          [(CKCoreChatController *)self _initialFrameForCollectionView];
          rect.origin.x = v40;
          v42 = v41;
          v44 = v43;
          v46 = v45;
          if (IMOSLoggingEnabled())
          {
            v47 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              v77.origin.x = rect.origin.x;
              v77.origin.y = v42;
              v77.size.width = v44;
              v77.size.height = v46;
              v48 = NSStringFromCGRect(v77);
              LODWORD(rect.origin.y) = 138412290;
              *(&rect.origin.y + 4) = v48;
              _os_log_impl(&dword_19020E000, v47, OS_LOG_TYPE_INFO, "Collection view's initialFrame is: %@", &rect.origin.y, 0xCu);
            }
          }

          v49 = objc_alloc([objc_opt_class() transcriptControllerClass]);
          conversation3 = [(CKCoreChatController *)self conversation];
          v51 = [v49 initWithConversation:conversation3 delegate:self balloonMaxWidth:v39 marginInsets:v31 collectionViewSize:{v33, v35, v37, v44, v46}];

          [(CKCoreChatController *)self setCollectionViewController:v51];
          [v51 setTransitionedFromComposing:{-[CKCoreChatController transitionedFromComposing](self, "transitionedFromComposing")}];
          [v51 setDelegate:self];
          [v51 __setCurrentTestName:__CurrentTestName];
          gradientReferenceView = [(CKCoreChatController *)self gradientReferenceView];
          [v51 setGradientReferenceView:gradientReferenceView];

          [(CKCoreChatController *)self addChildViewController:v51];
          collectionView = [v51 collectionView];
          [collectionView setFrame:{rect.origin.x, v42, v44, v46}];
          [collectionView setAutoresizingMask:18];
          delegate = [(CKCoreChatController *)self delegate];
          [delegate initialSafeAreaInsetsForChatController:self];
          [collectionView setInitialSafeAreaInsets:?];

          *&rect.origin.x = [(CKCoreChatController *)self view];
          viewToInsertTranscriptCollectionViewBelow = [(CKCoreChatController *)self viewToInsertTranscriptCollectionViewBelow];
          if (viewToInsertTranscriptCollectionViewBelow)
          {
            [*&rect.origin.x insertSubview:collectionView belowSubview:viewToInsertTranscriptCollectionViewBelow];
          }

          else
          {
            [*&rect.origin.x addSubview:collectionView];
          }

          [(CKCoreChatController *)self applyInitialContextToCollectionViewIfNeeded];
          [v51 reloadData];
          gradientReferenceView2 = [(CKCoreChatController *)self gradientReferenceView];
          [collectionView contentInset];
          [(CKCoreChatController *)self gradientFrameWithInsets:?];
          [gradientReferenceView2 setGradientFrame:?];

          collectionView2 = [v51 collectionView];
          collectionViewLayout = [collectionView2 collectionViewLayout];
          [collectionViewLayout prepareLayout];

          [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"ChangeConversation"];
          [(CKCoreChatController *)self _updateBalloonBackdropGroupTrait];
          [v51 didMoveToParentViewController:self];
          [(CKCoreChatController *)self _registerSendProgressDelegate];
          [(CKCoreChatController *)self _updateTitleAnimated:0];
          [(CKCoreChatController *)self _updateNavigationButtons];
          [(CKCoreChatController *)self _updateStaticPocketColor];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (+[CKConversationList sharedConversationList](CKConversationList, "sharedConversationList"), v59 = objc_claimAutoreleasedReturnValue(), -[CKConversation chat](conversationCopy, "chat"), v60 = objc_claimAutoreleasedReturnValue(), [v60 guid], v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "conversationForExistingChatWithGUID:", v61), v62 = objc_claimAutoreleasedReturnValue(), v61, v60, v59, v62))
          {
            [(CKCoreChatController *)self registerNotificationsForConversation:v62];
          }

          else
          {
            [(CKCoreChatController *)self registerNotificationsForConversation:conversationCopy];
          }

          [(CKCoreChatController *)self setInitialViewSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
          outgoingBackgroundSnapshotView = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];

          if (outgoingBackgroundSnapshotView)
          {
            [v51 setTranscriptBackgroundColor:0];
          }
        }

        goto LABEL_56;
      }

      previewingChatForScreenTime = [(CKCoreChatController *)self previewingChatForScreenTime];

      if (previewingChatForScreenTime)
      {
        goto LABEL_34;
      }

      if (![(CKConversation *)conversationCopy isPending])
      {
LABEL_56:
        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

        if (isTranscriptBackgroundsEnabled)
        {
          if ([objc_opt_class() supportsTranscriptBackground])
          {
            outgoingBackgroundSnapshotView2 = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];

            if (outgoingBackgroundSnapshotView2)
            {
              view = [(CKCoreChatController *)self view];
              outgoingBackgroundSnapshotView3 = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];
              [view addSubview:outgoingBackgroundSnapshotView3];

              view2 = [(CKCoreChatController *)self view];
              outgoingBackgroundSnapshotView4 = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];
              [view2 sendSubviewToBack:outgoingBackgroundSnapshotView4];

              outgoingBackgroundSnapshotView5 = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];
              view3 = [(CKCoreChatController *)self view];
              [outgoingBackgroundSnapshotView5 __ck_makeEdgesEqualTo:view3];
            }

            [(CKCoreChatController *)self _setupTranscriptBackgroundIfNeeded];
            [(CKCoreChatController *)self _updateBalloonBackdropGroupTrait];
            [(CKCoreChatController *)self configureTapbackBackdropCaptureView];
          }

          collectionView3 = [(CKCoreChatController *)self collectionView];
          [(CKCoreChatController *)self setContentScrollView:collectionView3 forEdge:1];
        }

        [(CKCoreChatController *)self _setConversationDeferredSetup];
        if ([(CKCoreChatController *)self needsEndPinningInputViewsForSwitchingConversationAfterConversationIsSet])
        {
          [(CKCoreChatController *)self setNeedsEndPinningInputViewsForSwitchingConversationAfterConversationIsSet:0];
          [(CKCoreChatController *)self endPinningInputViewsForReason:@"SwitchingActiveConversations"];
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ([(CKCoreChatController *)self previewingChatForScreenTime])
      {
        goto LABEL_34;
      }

      if (![0 isPending])
      {
        v64 = IMLogHandleForCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [CKCoreChatController setConversation:forceReload:];
        }

        goto LABEL_56;
      }
    }

    [(CKCoreChatController *)self _removeExistingCollectionViewController];
    goto LABEL_56;
  }

  if (v21)
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LODWORD(rect.origin.y) = 136315138;
      *(&rect.origin.y + 4) = "[CKCoreChatController setConversation:forceReload:]";
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "View is not loaded, bailing from %s", &rect.origin.y, 0xCu);
    }
  }

LABEL_64:
}

- (UIEdgeInsets)calculateTranscriptMarginInsets
{
  v3 = +[CKUIBehavior sharedBehaviors];
  if ([v3 forceMinTranscriptMarginInsets])
  {
    view = +[CKUIBehavior sharedBehaviors];
    [view minTranscriptMarginInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [(CKCoreChatController *)self systemMinimumLayoutMargins];
    v6 = v13;
    v12 = v14;
    v10 = v15;
    v17 = v16;
    view = [(CKCoreChatController *)self view];
    effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];
    if (effectiveUserInterfaceLayoutDirection)
    {
      v8 = v17;
    }

    else
    {
      v8 = v12;
    }

    if (!effectiveUserInterfaceLayoutDirection)
    {
      v12 = v17;
    }
  }

  if (*(MEMORY[0x1E69DDCE0] + 8) == v8 && *MEMORY[0x1E69DDCE0] == v6 && *(MEMORY[0x1E69DDCE0] + 24) == v12 && *(MEMORY[0x1E69DDCE0] + 16) == v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v23 = objc_loadWeakRetained(&self->_delegate);
      [v23 initialSystemMinimumLayoutMarginsForChatController:self];
      v6 = v24;
      v8 = v25;
      v10 = v26;
      v12 = v27;
    }
  }

  v28 = v6;
  v29 = v8;
  v30 = v10;
  v31 = v12;
  result.right = v31;
  result.bottom = v30;
  result.left = v29;
  result.top = v28;
  return result;
}

- (id)viewToInsertTranscriptCollectionViewBelow
{
  if (!-[CKCoreChatController isShowingLockoutView](self, "isShowingLockoutView") || (-[CKCoreChatController lockoutViewController](self, "lockoutViewController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 view], view = objc_claimAutoreleasedReturnValue(), v3, !view))
  {
    view = +[CKUIBehavior sharedBehaviors];
    if (![view useMacToolbar])
    {
      goto LABEL_7;
    }

    showingInStandAloneWindow = [(CKCoreChatController *)self showingInStandAloneWindow];

    if (!showingInStandAloneWindow)
    {
LABEL_8:
      view = 0;
      goto LABEL_9;
    }

    macToolbarController = [(CKCoreChatController *)self macToolbarController];
    view = [macToolbarController view];

    if (!view || (-[CKCoreChatController view](self, "view"), v7 = objc_claimAutoreleasedReturnValue(), [v7 subviews], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", view), v8, v7, (v9 & 1) == 0))
    {
LABEL_7:

      goto LABEL_8;
    }
  }

LABEL_9:

  return view;
}

- (UIEdgeInsets)calculateTranscriptSafeAreaInsets
{
  view = [(CKCoreChatController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 initialSafeAreaInsetsForChatController:self];
    v5 = v14;
    v7 = v15;
    v9 = v16;
    v11 = v17;
  }

  v18 = v5;
  v19 = v7;
  v20 = v9;
  v21 = v11;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)_removeExistingCollectionViewController
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];

  if (collectionViewController)
  {
    collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
    [collectionViewController2 willMoveToParentViewController:0];
    collectionView = [collectionViewController2 collectionView];
    [collectionView removeFromSuperview];

    [collectionViewController2 removeFromParentViewController];
  }
}

- (void)setCollectionViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_collectionViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_collectionViewController, controller);
    controllerCopy = v6;
  }
}

- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view tappedForChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionViewController = [(CKCoreChatController *)self collectionViewController];
    transcriptIdentifier = [collectionViewController transcriptIdentifier];
    v8 = [itemCopy contentViewControllerForContext:transcriptIdentifier];

    if (v8)
    {
      navigationController = [(CKCoreChatController *)self navigationController];
      [navigationController pushViewController:v8 animated:1];
    }
  }
}

- (void)displayPollDetailsForChatItem:(id)item sourceView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPollsEnabled = [mEMORY[0x1E69A8070] isPollsEnabled];

  if (isPollsEnabled)
  {
    iMChatItem = [itemCopy IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69A5C50]);
      iMChatItem2 = [itemCopy IMChatItem];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __65__CKCoreChatController_displayPollDetailsForChatItem_sourceView___block_invoke;
      v15[3] = &unk_1E72F4F08;
      v16 = v12;
      v17 = itemCopy;
      selfCopy = self;
      v19 = viewCopy;
      v14 = v12;
      [v14 pollOptionsFromChatItem:iMChatItem2 completionHandler:v15];
    }
  }
}

void __65__CKCoreChatController_displayPollDetailsForChatItem_sourceView___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) IMChatItem];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__CKCoreChatController_displayPollDetailsForChatItem_sourceView___block_invoke_2;
    v11[3] = &unk_1E72F4EE0;
    v8 = v5;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [v6 pollResponseFromChatItem:v7 completionHandler:v11];
  }
}

void __65__CKCoreChatController_displayPollDetailsForChatItem_sourceView___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__CKCoreChatController_displayPollDetailsForChatItem_sourceView___block_invoke_3;
  v6[3] = &unk_1E72EBEF8;
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __65__CKCoreChatController_displayPollDetailsForChatItem_sourceView___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) chat];
  v7 = [CKPollDetailsViewControllerBuilder buildViewControllerWithOptions:v2 responses:v3 chat:v4];

  if (CKIsRunningInMacCatalyst() || IMSharedHelperDeviceIsiPad())
  {
    [v7 setModalPresentationStyle:7];
    v5 = *(a1 + 56);
    v6 = [v7 popoverPresentationController];
    [v6 setSourceView:v5];

    [*(a1 + 48) presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    [*(a1 + 48) showViewController:v7 sender:*(a1 + 48)];
  }
}

- (void)_handleTapEventForBalloonView:(id)view atIndexPath:(id)path
{
  v53 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v47 = 136315650;
      v48 = "[CKCoreChatController _handleTapEventForBalloonView:atIndexPath:]";
      v49 = 2112;
      v50 = viewCopy;
      v51 = 2112;
      v52 = pathCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "%s: balloonView: %@, indexPath: %@", &v47, 0x20u);
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  v11 = collectionViewController;
  if (isKindOfClass)
  {
    associatedChatItems = [collectionViewController associatedChatItems];

    item = [pathCopy item];
    if (item < [associatedChatItems count])
    {
      v14 = [associatedChatItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];
      collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
      chatItems = [collectionViewController2 chatItems];
      associatedChatItemGUID = [v14 associatedChatItemGUID];
      associatedMessageRange = [v14 associatedMessageRange];
      v20 = [chatItems ck_indexOfChatItemContainingIMChatItemGUID:associatedChatItemGUID associatedMessageRange:{associatedMessageRange, v19}];

      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        collectionViewController3 = [(CKCoreChatController *)self collectionViewController];
        chatItems2 = [collectionViewController3 chatItems];
        v23 = [chatItems2 objectAtIndex:v20];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [MEMORY[0x1E696AC88] indexPathForItem:v20 inSection:0];
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              iMChatItem = [v23 IMChatItem];
              guid = [iMChatItem guid];
              v47 = 136315650;
              v48 = "[CKCoreChatController _handleTapEventForBalloonView:atIndexPath:]";
              v49 = 2112;
              v50 = v24;
              v51 = 2112;
              v52 = guid;
              _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "[Tapbacks] %s: re-routing tap to parent balloon for parentIndexPath: %@, chatItem.guid: %@", &v47, 0x20u);
            }
          }

          v28 = [(CKCoreChatController *)self showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:v24];
          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = @"not shown";
              if (v28)
              {
                v30 = @"shown";
              }

              v47 = 136315394;
              v48 = "[CKCoreChatController _handleTapEventForBalloonView:atIndexPath:]";
              v49 = 2112;
              v50 = v30;
              _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "[Tapbacks] %s: tapback overlay %@", &v47, 0x16u);
            }
          }
        }
      }

LABEL_52:

      goto LABEL_53;
    }

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        item2 = [pathCopy item];
        v34 = [associatedChatItems count];
        v47 = 134218240;
        v48 = item2;
        v49 = 2048;
        v50 = v34;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Attempted to present ack menu for associated chat item out of idx range. idx %lu count %lu", &v47, 0x16u);
      }

LABEL_28:
    }
  }

  else
  {
    associatedChatItems = [collectionViewController chatItems];

    item3 = [pathCopy item];
    if (item3 < [associatedChatItems count])
    {
      v14 = [associatedChatItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];
      if (([v14 isCommSafetySensitive] & 1) == 0)
      {
        if ([v14 isEditedMessageHistory])
        {
          if (IMOSLoggingEnabled())
          {
            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              LOWORD(v47) = 0;
              _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "Ignoring tap action for edited message history balloon", &v47, 2u);
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = v14;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E69A8070] sharedFeatureFlags], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isPollsEnabled"), v39, v40) && (objc_msgSend(v38, "bundleIdentifier"), v41 = objc_claimAutoreleasedReturnValue(), IMBalloonExtensionIDWithSuffix(), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v41, "isEqualToString:", v42), v42, v41, v43))
            {
              [(CKCoreChatController *)self displayPollDetailsForChatItem:v38 sourceView:viewCopy];
            }

            else if ([v38 isReplyContextPreview])
            {
              [(CKCoreChatController *)self showInlineReplyControllerForChatItem:v38 presentKeyboard:0];
            }

            else
            {
              v44 = [(CKCoreChatController *)self showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:pathCopy];
              if (IMOSLoggingEnabled())
              {
                v45 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  v46 = @"not shown";
                  v47 = 136315650;
                  v48 = "[CKCoreChatController _handleTapEventForBalloonView:atIndexPath:]";
                  v49 = 2112;
                  if (v44)
                  {
                    v46 = @"shown";
                  }

                  v50 = v46;
                  v51 = 2112;
                  v52 = pathCopy;
                  _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "[Tapbacks] %s: tapback overlay %@, at indexPath: %@", &v47, 0x20u);
                }
              }
            }
          }
        }
      }

      goto LABEL_52;
    }

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        item4 = [pathCopy item];
        v36 = [associatedChatItems count];
        v47 = 134218240;
        v48 = item4;
        v49 = 2048;
        v50 = v36;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "[Tapbacks] Attempted to present ack menu for chat item out of idx range. idx %lu count %lu", &v47, 0x16u);
      }

      goto LABEL_28;
    }
  }

LABEL_53:
}

- (void)_handleShowInlineReplyForItemWithIndexPath:(id)path replyTransitionProperties:(id)properties
{
  pathCopy = path;
  propertiesCopy = properties;
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  chatItems = [collectionViewController chatItems];

  item = [pathCopy item];
  if (item < [chatItems count])
  {
    v10 = [chatItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    v11 = +[CKUIBehavior sharedBehaviors];
    replyShouldShowKeyboard = [v11 replyShouldShowKeyboard];

    [(CKCoreChatController *)self showInlineReplyControllerForChatItem:v10 presentKeyboard:replyShouldShowKeyboard replyTransitionProperties:propertiesCopy];
  }
}

- (void)viewDidLayoutSubviewsForTranscriptCollectionViewController:(id)controller
{
  fullScreenBalloonViewController = [(CKCoreChatController *)self fullScreenBalloonViewController];

  if (fullScreenBalloonViewController)
  {
    fullScreenBalloonViewController2 = [(CKCoreChatController *)self fullScreenBalloonViewController];
    [fullScreenBalloonViewController2 updateBalloonViewFrame];
  }
}

- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view selectedItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController highlightItemAtIndexPathWhenDisplayed:pathCopy animated:1 autoDismiss:0];
}

- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view showInlineReplyForItemWithIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  controllerCopy = controller;
  v11 = +[CKInlineReplyTransitionProperties defaultProperties];
  [(CKCoreChatController *)self transcriptCollectionViewController:controllerCopy balloonView:viewCopy showInlineReplyForItemWithIndexPath:pathCopy withReplyTransitionProperties:v11];
}

- (void)transcriptCollectionViewControllerDidInset:(id)inset
{
  insetCopy = inset;
  gradientReferenceView = [(CKCoreChatController *)self gradientReferenceView];
  collectionView = [insetCopy collectionView];

  [collectionView contentInset];
  [(CKCoreChatController *)self gradientFrameWithInsets:?];
  [gradientReferenceView setGradientFrame:?];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(gradientReferenceView) = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (gradientReferenceView)
  {

    [(CKCoreChatController *)self setNeedsPosterSaliencyAndOcclusionRectUpdate];
  }
}

- (void)transcriptCollectionViewControllerDidSetChatItems:(id)items
{
  if ([(CKViewController *)self deferredAppeared])
  {

    [(CKCoreChatController *)self _inviteToViewStatusesIfNeeded];
  }
}

- (void)transcriptCollectionViewController:(id)controller collectionViewContentSizeDidChange:(CGSize)change
{
  v14 = [(CKCoreChatController *)self gradientReferenceView:controller];
  collectionView = [(CKCoreChatController *)self collectionView];
  [collectionView contentInset];
  [(CKCoreChatController *)self gradientFrameWithInsets:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v14 gradientFrame];
  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  if (!CGRectEqualToRect(v16, v17))
  {
    [v14 setGradientFrame:{v7, v9, v11, v13}];
    [v14 layoutGradientViewsIfNeeded];
  }
}

- (void)transcriptCollectionViewControllerReportSpamButtonTapped:(id)tapped
{
  delegate = [(CKCoreChatController *)self delegate];
  conversation = [(CKCoreChatController *)self conversation];
  [delegate chatController:self didReportSpamForConversation:conversation];
}

- (void)transcriptCollectionViewControllerUnsubscribeButtonTapped:(id)tapped
{
  delegate = [(CKCoreChatController *)self delegate];
  conversation = [(CKCoreChatController *)self conversation];
  [delegate chatController:self didUnsubscribeForConversation:conversation];
}

- (void)transcriptCollectionViewControllerWillDisplayLastBalloon:(id)balloon
{
  [(CKCoreChatController *)self setIgnoreLastBalloonVisibleInMarkAsReadCheck:1];
  [(CKCoreChatController *)self _markAsReadIfNecessary];

  [(CKCoreChatController *)self setIgnoreLastBalloonVisibleInMarkAsReadCheck:0];
}

- (void)transcriptCollectionViewControllerDidChangeAssociatedChatItem:(id)item chatItemDiff:(id)diff
{
  inserted = [diff inserted];
  v6 = [inserted count];

  if (v6)
  {

    [(CKCoreChatController *)self _markAsReadIfNecessary];
  }
}

- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)needed
{
  neededCopy = needed;
  traitCollection = [(CKCoreChatController *)self traitCollection];
  v5 = [traitCollection ck_chatItemLayoutNeedsInvalidationForPreviousTraitCollection:neededCopy];

  if (v5)
  {
    collectionViewController = [(CKCoreChatController *)self collectionViewController];
    [collectionViewController setNeedsChatItemLayoutInvalidation];
  }
}

- (id)transcriptCollectionViewControllerOuterEffectPresentingView:(id)view
{
  view = [view view];
  window = [view window];

  return window;
}

- (void)transcriptCollectionViewController:(id)controller viewedCommSafetyItemWithIndexPath:(id)path
{
  *&v44[5] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  pathCopy = path;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    v7 = pathCopy;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      conversation = [(CKCoreChatController *)self conversation];
      chat = [conversation chat];
      *buf = 138412290;
      *v44 = chat;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "User signified view sensitive photo for chat %@", buf, 0xCu);
    }

    pathCopy = v7;
  }

  item = [pathCopy item];
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  chatItems = [collectionViewController chatItems];

  v38 = [chatItems objectAtIndex:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Detected group action at indexPath of sensitive content.", buf, 2u);
      }
    }

    v40 = v38;
    if ([v40 actionType] == 5)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Sensitive group action is for sensitive transcript background. Updating to viewable and bailing.", buf, 2u);
        }
      }

      conversation2 = [(CKCoreChatController *)self conversation];
      chat2 = [conversation2 chat];

      [chat2 updateTranscriptBackgroundCommSafetyState:2];
      goto LABEL_44;
    }
  }

  if (item < 0)
  {
    v20 = 0;
  }

  else
  {
    while (1)
    {
      v17 = [chatItems objectAtIndex:item];
      iMChatItem = [v17 IMChatItem];
      if ([iMChatItem supportsCommunicationSafety])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v44 = iMChatItem;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "This chat item is not IMMessagePartChatItem: %@", buf, 0xCu);
        }
      }

      if (item-- <= 0)
      {
        v20 = 0;
        item = -1;
        goto LABEL_28;
      }
    }

    messageItem = [iMChatItem messageItem];
    message = [messageItem message];

    fileTransferGUIDs = [message fileTransferGUIDs];
    v20 = [fileTransferGUIDs count];
  }

LABEL_28:
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((item & 0x8000000000000000) == 0 && v20)
  {
    v24 = 0;
    do
    {
      v25 = [chatItems objectAtIndex:item];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
        transferGUID = [v26 transferGUID];
        v29 = [mEMORY[0x1E69A5B80] transferForGUID:transferGUID];

        if ([v29 commSafetySensitive] == 1)
        {
          iMChatItem2 = [v26 IMChatItem];
          [v40 addObject:iMChatItem2];

          message2 = [v26 message];
          guid = [message2 guid];
          [(CKCoreChatController *)self _registerCommSafetyReceivedEventForTransfer:v29 messageGUID:guid];
        }

        ++v24;
      }

      v33 = item-- != 0;
    }

    while (v33 && v24 < v20);
  }

  if ([v40 count])
  {
    collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __93__CKCoreChatController_transcriptCollectionViewController_viewedCommSafetyItemWithIndexPath___block_invoke;
    v41[3] = &unk_1E72EB8D0;
    v41[4] = self;
    v40 = v40;
    v42 = v40;
    [collectionViewController2 updateTranscript:v41 animated:1 completion:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v44[0] = v20;
      LOWORD(v44[1]) = 1024;
      *(&v44[1] + 2) = item;
      _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "Did not find chatItems to refresh. totalTransferCount: %d, indexForSensitiveAttachment: %d", buf, 0xEu);
    }
  }

LABEL_44:
}

void __93__CKCoreChatController_transcriptCollectionViewController_viewedCommSafetyItemWithIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chat];
  [v2 updateCommSafety:2 forChatItems:*(a1 + 40)];
}

- (void)transcriptCollectionViewController:(id)controller viewedCommSafetyAssociatedItemsWithIndexPath:(id)path
{
  v44 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  pathCopy = path;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      conversation = [(CKCoreChatController *)self conversation];
      chat = [conversation chat];
      *buf = 138412290;
      v43 = chat;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "User signified view multiple sensitive associated items for chat %@", buf, 0xCu);
    }
  }

  item = [pathCopy item];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (item < 0)
  {
    iMChatItem = 0;
  }

  else
  {
    while (1)
    {
      collectionViewController = [(CKCoreChatController *)self collectionViewController];
      chatItems = [collectionViewController chatItems];
      v32 = [chatItems objectAtIndex:item];

      iMChatItem = [v32 IMChatItem];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = iMChatItem;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "This chat item is not IMMessagePartChatItem: %@", buf, 0xCu);
        }
      }

      if (item-- <= 0)
      {
        iMChatItem = 0;
        LODWORD(item) = -1;
        goto LABEL_30;
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    visibleAssociatedMessageChatItems = [v32 visibleAssociatedMessageChatItems];
    v13 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v13)
    {
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(visibleAssociatedMessageChatItems);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          if ([v16 isCommSafetySensitiveNotViewable])
          {
            commSafetyTransferGUID = [v16 commSafetyTransferGUID];
            if (commSafetyTransferGUID)
            {
              mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
              commSafetyTransferGUID2 = [v16 commSafetyTransferGUID];
              v20 = [mEMORY[0x1E69A5B80] transferForGUID:commSafetyTransferGUID2];
            }

            else
            {
              v20 = 0;
            }

            iMChatItem2 = [v16 IMChatItem];
            [v8 addObject:iMChatItem2];

            if (v20)
            {
              commSafetyMessageGUID = [v16 commSafetyMessageGUID];
              v23 = commSafetyMessageGUID == 0;

              if (!v23)
              {
                commSafetyMessageGUID2 = [v16 commSafetyMessageGUID];
                [(CKCoreChatController *)self _registerCommSafetyReceivedEventForTransfer:v20 messageGUID:commSafetyMessageGUID2];
              }
            }
          }
        }

        v13 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v13);
    }
  }

LABEL_30:
  if ([v8 count] || iMChatItem)
  {
    collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __104__CKCoreChatController_transcriptCollectionViewController_viewedCommSafetyAssociatedItemsWithIndexPath___block_invoke;
    v34[3] = &unk_1E72EB880;
    v34[4] = self;
    v35 = v8;
    v36 = iMChatItem;
    [collectionViewController2 updateTranscript:v34 animated:1 completion:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v43) = item;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Did not find associated chatItems to refresh. indexForSensitiveAttachment: %d", buf, 8u);
    }
  }
}

void __104__CKCoreChatController_transcriptCollectionViewController_viewedCommSafetyAssociatedItemsWithIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chat];
  [v2 updateCommSafety:2 forChatItems:*(a1 + 40) parentChatItem:*(a1 + 48)];
}

- (void)_registerCommSafetyReceivedEventForTransfer:(id)transfer messageGUID:(id)d
{
  v16[1] = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  dCopy = d;
  localURL = [transferCopy localURL];
  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:localURL];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69A5B38]);
    guid = [transferCopy guid];
    v12 = [v10 initWithIdentifier:guid imageData:v9];

    v13 = MEMORY[0x1E69A5B30];
    chat = [(CKCoreChatController *)self chat];
    v16[0] = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v13 registerEvent:1 eventType:0 messageGUID:dCopy chat:chat forImages:v15];
  }
}

- (void)_messageSomeonePressed
{
  mEMORY[0x1E69A5B40] = [MEMORY[0x1E69A5B40] sharedInstance];
  [mEMORY[0x1E69A5B40] getOpenChatURLWith:&__block_literal_global_402_1];
}

void __46__CKCoreChatController__messageSomeonePressed__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC668];
  v3 = a2;
  v4 = [v2 sharedApplication];
  [v4 openURL:v3 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)sendStickerTapback:(id)tapback mediaObject:(id)object parentMessagePartChatItem:(id)item
{
  tapbackCopy = tapback;
  objectCopy = object;
  itemCopy = item;
  if (tapbackCopy)
  {
    if (objectCopy)
    {
      v11 = [CKStickerTapbackCommSafetySendContext contextWithStickerTapback:tapbackCopy mediaObject:objectCopy parentMessagePartChatItem:itemCopy];
      transfer = [objectCopy transfer];
      fileURL = [transfer fileURL];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __81__CKCoreChatController_sendStickerTapback_mediaObject_parentMessagePartChatItem___block_invoke;
      v14[3] = &unk_1E72F0360;
      v15 = tapbackCopy;
      selfCopy = self;
      v17 = itemCopy;
      [(CKCoreChatController *)self presentCommSafetyInterventionIfNecessaryForFileURL:fileURL withSendContext:v11 completion:v14];
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CKCoreChatController sendStickerTapback:mediaObject:parentMessagePartChatItem:];
      }
    }
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CKCoreChatController sendStickerTapback:mediaObject:parentMessagePartChatItem:];
    }
  }
}

void __81__CKCoreChatController_sendStickerTapback_mediaObject_parentMessagePartChatItem___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Sticker Tapback was sensitive, deferring send for intervention: %@", buf, 0xCu);
    }

    [*(a1 + 40) _dismissFullScreenBubbleViewControllerAnimated:1 withSendAnimation:0 completion:0];
  }

  else
  {
    v5 = [*(a1 + 40) chat];
    [v5 sendTapback:*(a1 + 32) forChatItem:*(a1 + 48)];
  }
}

- (CGRect)gradientFrameWithInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  [(CKCoreChatController *)self gradientBottomPlaceholderHeight:insets.top];
  v6 = v5;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  view = [(CKCoreChatController *)self view];
  v10 = view;
  if (userInterfaceIdiom > 1)
  {
    [view frame];
    v13 = v14;
  }

  else
  {
    [view bounds];
    v13 = fmax(v11, v12);
  }

  v15 = *MEMORY[0x1E695EFF8];
  view2 = [(CKCoreChatController *)self view];
  [view2 bounds];
  v18 = v17;

  v19 = v15 + 0.0;
  v20 = v13 - (v6 + 0.0);
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];

  view3 = [(CKCoreChatController *)self view];
  [view3 frame];
  v25 = v24 - (bottom + v20);

  v26 = v20 - (bottom + -44.0);
  [collectionView __ck_contentSize];
  if (v26 <= v27)
  {
    v28 = v25;
  }

  else
  {
    v28 = v25 - (v26 - v27);
  }

  v29 = v19;
  v30 = v28;
  v31 = v18;
  v32 = v20;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)transcriptCollectionViewController:(id)controller requestDeleteJunkConversation:(id)conversation
{
  conversationCopy = conversation;
  delegate = [(CKCoreChatController *)self delegate];
  [delegate chatController:self requestDeleteJunkConversation:conversationCopy];
}

- (void)transcriptCollectionViewController:(id)controller requestRecoverJunkConversation:(id)conversation
{
  conversationCopy = conversation;
  delegate = [(CKCoreChatController *)self delegate];
  [delegate chatController:self requestRecoverJunkConversation:conversationCopy];
}

- (void)transcriptCollectionViewController:(id)controller didInsertChatItems:(id)items associatedChatItems:(id)chatItems
{
  v6 = [(CKCoreChatController *)self insertItemsEmojiTapbacksCallBack:controller];

  if (v6)
  {
    insertItemsEmojiTapbacksCallBack = [(CKCoreChatController *)self insertItemsEmojiTapbacksCallBack];
    insertItemsEmojiTapbacksCallBack[2]();

    [(CKCoreChatController *)self setInsertItemsEmojiTapbacksCallBack:0];
  }
}

- (void)transcriptCollectionViewController:(id)controller didRemoveChatItems:(id)items associatedChatItems:(id)chatItems
{
  v6 = [(CKCoreChatController *)self removeItemsEmojiTapbacksCallBack:controller];

  if (v6)
  {
    removeItemsEmojiTapbacksCallBack = [(CKCoreChatController *)self removeItemsEmojiTapbacksCallBack];
    removeItemsEmojiTapbacksCallBack[2]();

    [(CKCoreChatController *)self setRemoveItemsEmojiTapbacksCallBack:0];
  }
}

- (void)refreshServiceForSending
{
  refreshServiceForSendingUpdater = [(CKCoreChatController *)self refreshServiceForSendingUpdater];
  [refreshServiceForSendingUpdater setNeedsUpdate];
}

- (void)_refreshServiceForSending
{
  conversation = [(CKCoreChatController *)self conversation];
  [conversation refreshServiceForSending];

  [(CKCoreChatController *)self _updatePollSuggestionAvailability];
}

- (void)_willSendComposition:(id)composition inConversation:(id)conversation
{
  compositionCopy = composition;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "_willSendComposition", v10, 2u);
    }
  }

  delegate = [(CKCoreChatController *)self delegate];
  [delegate chatController:self willSendComposition:compositionCopy inConversation:conversationCopy];
}

- (void)_didSendCompositionInConversation:(id)conversation
{
  conversationCopy = conversation;
  delegate = [(CKCoreChatController *)self delegate];
  [delegate chatController:self didSendCompositionInConversation:conversationCopy];
}

- (void)_inviteToViewStatusesIfNeeded
{
  chat = [(CKCoreChatController *)self chat];
  if (chat)
  {
    if (CKIsRunningInMessages())
    {
      if (CKIsRunningForDevelopmentOnSimulator())
      {
        if (IMOSLoggingEnabled())
        {
          v4 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            v9 = 0;
            v5 = "Not sharing focus status in simulator";
            v6 = &v9;
LABEL_18:
            _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
            goto LABEL_19;
          }

          goto LABEL_19;
        }
      }

      else if ([*MEMORY[0x1E69DDA98] isRunningTest])
      {
        if (IMOSLoggingEnabled())
        {
          v4 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            v8 = 0;
            v5 = "Not sharing focus status during PPT";
            v6 = &v8;
            goto LABEL_18;
          }

          goto LABEL_19;
        }
      }

      else
      {
        if (![(CKCoreChatController *)self isInline])
        {
          [chat autoInviteToViewAvailabilityIfNeeded];
          [chat autoInviteToViewOffGridModeIfNeeded];
          goto LABEL_20;
        }

        if (IMOSLoggingEnabled())
        {
          v4 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            v7 = 0;
            v5 = "Not sharing focus status from inline reply transcript";
            v6 = &v7;
            goto LABEL_18;
          }

          goto LABEL_19;
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v10 = 0;
        v5 = "Not sharing focus status from non messages process";
        v6 = &v10;
        goto LABEL_18;
      }

LABEL_19:
    }
  }

LABEL_20:
}

- (BOOL)isSafeToMarkAsRead
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [CKApplicationState isViewControllerForegroundActive:self]|| CKIsRunningInMessagesNotificationExtension() != 0;
  if ([(CKCoreChatController *)self ignoreLastBalloonVisibleInMarkAsReadCheck])
  {
    goto LABEL_7;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isCatchUpEnabled])
  {

LABEL_7:
    LODWORD(v5) = 1;
    goto LABEL_23;
  }

  chat = [(CKCoreChatController *)self chat];
  if ([chat chatStyle] == 45)
  {
    v7 = CKIsRunningInMessagesTranscriptExtension();

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  collectionView = [(CKCoreChatController *)self collectionView];
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  indexPathForLastItem = [collectionViewController indexPathForLastItem];
  item = [indexPathForLastItem item];

  [collectionView visibleCells];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v12 = v28 = 0u;
  v5 = [v12 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v5)
  {
    v13 = *v28;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = [collectionView indexPathForCell:{*(*(&v27 + 1) + 8 * i), v27}];
        v16 = [v15 row] == item;

        if (v16)
        {
          LODWORD(v5) = 1;
          goto LABEL_22;
        }
      }

      v5 = [v12 countByEnumeratingWithState:&v27 objects:v41 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

LABEL_23:
  if ([(CKViewController *)self appearing]|| [(CKViewController *)self appeared])
  {
    v17 = v3 & v5;
  }

  else
  {
    v17 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      if (v17)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      appearing = [(CKViewController *)self appearing];
      appeared = [(CKViewController *)self appeared];
      if (appearing)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      *buf = 138413314;
      if (appeared)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v32 = v19;
      v33 = 2112;
      if (v3)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v34 = v22;
      if (v5)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v35 = 2112;
      v36 = v23;
      v37 = 2112;
      v38 = v24;
      v39 = 2112;
      v40 = v25;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "MarkAsRead - isSafe %@ appearing %@ appeared %@ isActive %@ lastBalloonIsVisible %@", buf, 0x34u);
    }
  }

  return v17;
}

- (void)_markAsReadIfNecessary
{
  if ([(CKCoreChatController *)self isSafeToMarkAsRead])
  {
    conversation = [(CKCoreChatController *)self conversation];
    [conversation markAllMessagesAsRead];

    [(CKCoreChatController *)self _startSatelliteFetchIfNecessary];
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "MarkAsRead - Not safe to mark as read, bailing", v5, 2u);
    }
  }
}

- (void)_startSatelliteFetchIfNecessary
{
  v24 = *MEMORY[0x1E69E9840];
  satelliteFetchTimer = [(CKCoreChatController *)self satelliteFetchTimer];

  if (!satelliteFetchTimer)
  {
    mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
    isSatelliteConnectionActive = [mEMORY[0x1E69A5B00] isSatelliteConnectionActive];

    if (isSatelliteConnectionActive)
    {
      conversation = [(CKCoreChatController *)self conversation];
      chat = [conversation chat];
      pendingIncomingSatelliteMessageCount = [chat pendingIncomingSatelliteMessageCount];

      if (pendingIncomingSatelliteMessageCount)
      {
        v9 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
        v10 = [v9 objectForKey:@"satellite-fetch-delay-interval"];
        objc_opt_class();
        v11 = 3.0;
        if (objc_opt_isKindOfClass())
        {
          [v10 doubleValue];
          v11 = v12;
        }

        objc_initWeak(&location, self);
        v13 = MEMORY[0x1E695DFF0];
        v16 = MEMORY[0x1E69E9820];
        v17 = 3221225472;
        v18 = __55__CKCoreChatController__startSatelliteFetchIfNecessary__block_invoke;
        v19 = &unk_1E72F4BA8;
        objc_copyWeak(&v20, &location);
        v14 = [v13 scheduledTimerWithTimeInterval:0 repeats:&v16 block:v11];
        [(CKCoreChatController *)self setSatelliteFetchTimer:v14, v16, v17, v18, v19];

        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v23 = v11;
            _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Queued satellite fetch with %f second delay", buf, 0xCu);
          }
        }

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __55__CKCoreChatController__startSatelliteFetchIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained conversation];
  [v1 fetchIncomingPendingMessagesOverSatellite];

  [WeakRetained setSatelliteFetchTimer:0];
}

- (void)_cancelSatelliteFetch
{
  satelliteFetchTimer = [(CKCoreChatController *)self satelliteFetchTimer];

  if (satelliteFetchTimer)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Canceling satellite fetch", v6, 2u);
      }
    }

    satelliteFetchTimer2 = [(CKCoreChatController *)self satelliteFetchTimer];
    [satelliteFetchTimer2 invalidate];

    [(CKCoreChatController *)self setSatelliteFetchTimer:0];
  }
}

- (void)contentInsetWillChange:(UIEdgeInsets)change withAnimationProperties:(id)properties
{
  right = change.right;
  bottom = change.bottom;
  left = change.left;
  top = change.top;
  propertiesCopy = properties;
  [(CKCoreChatController *)self _updateGradientReferenceViewForContentInset:propertiesCopy withAnimationProperties:top, left, bottom, right];
  [(CKCoreChatController *)self _setTranscriptCustomScrollAnimationFromAnimationProperties:propertiesCopy];
}

- (void)_updateGradientReferenceViewForContentInset:(UIEdgeInsets)inset withAnimationProperties:(id)properties
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  propertiesCopy = properties;
  gradientReferenceView = [(CKCoreChatController *)self gradientReferenceView];
  [(CKCoreChatController *)self gradientFrameWithInsets:top, left, bottom, right];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [gradientReferenceView gradientFrame];
  v27.origin.x = v12;
  v27.origin.y = v14;
  v27.size.width = v16;
  v27.size.height = v18;
  if (!CGRectEqualToRect(v26, v27))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__CKCoreChatController__updateGradientReferenceViewForContentInset_withAnimationProperties___block_invoke;
    aBlock[3] = &unk_1E72EC7B0;
    v21 = gradientReferenceView;
    v22 = v12;
    v23 = v14;
    v24 = v16;
    v25 = v18;
    v19 = _Block_copy(aBlock);
    [propertiesCopy performAnimationBlock:v19];
  }
}

uint64_t __92__CKCoreChatController__updateGradientReferenceViewForContentInset_withAnimationProperties___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setGradientFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutGradientViewsIfNeeded];
}

- (void)_setTranscriptCustomScrollAnimationFromAnimationProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy animationType] == 1)
  {
    caBasicAnimation = [propertiesCopy caBasicAnimation];
  }

  else
  {
    caBasicAnimation = 0;
  }

  collectionView = [(CKCoreChatController *)self collectionView];
  [collectionView setTranscriptCustomScrollAnimation:caBasicAnimation];
}

- (void)contentInsetDidChangeWithAnimationProperties:(id)properties
{
  propertiesCopy = properties;
  collectionView = [(CKCoreChatController *)self collectionView];
  [collectionView enforceTranscriptScrollIntentWithAnimationProperties:propertiesCopy];

  [collectionView setTranscriptCustomScrollAnimation:0];
}

- (void)keyboardWillHideViaGesture
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];

  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CKCoreChatController_keyboardWillHideViaGesture__block_invoke;
  v6[3] = &unk_1E72EBA18;
  v7 = collectionView;
  v5 = collectionView;
  [v4 performWithoutAnimation:v6];
}

void __50__CKCoreChatController_keyboardWillHideViaGesture__block_invoke(uint64_t a1)
{
  v2 = +[CKScrollViewAnimationProperties unanimated];
  [*(a1 + 32) enforceTranscriptScrollIntentWithAnimationProperties:v2];
}

- (void)setupScrollingForKeyboardInteraction
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  [collectionView contentSize];
  v6 = v5;

  collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController2 setScrollAnchor:v6];
}

- (void)_registerSendProgressDelegate
{
  chat = [(CKConversation *)self->_conversation chat];
  [chat setSendProgressDelegate:self];
}

- (void)_deregisterSendProgressDelegate
{
  chat = [(CKConversation *)self->_conversation chat];
  sendProgressDelegate = [chat sendProgressDelegate];

  if (sendProgressDelegate == self)
  {
    chat2 = [(CKConversation *)self->_conversation chat];
    [chat2 setSendProgressDelegate:0];
  }

  [(UIProgressView *)self->_progressBar removeFromSuperview];
  [(CKCoreChatController *)self setProgressBar:0];
  self->_sendProgress = 0.0;
  self->_sendProgressSendCount = 0;
  self->_sendProgressTotalCount = 0;

  [(CKCoreChatController *)self _updateTitleAnimated:0];
}

- (void)chat:(id)chat progressDidChange:(float)change sendingMessages:(id)messages sendCount:(unint64_t)count totalCount:(unint64_t)totalCount finished:(BOOL)finished
{
  finishedCopy = finished;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"ShouldHideProgressBar"])
  {
    self->_sendProgressSendCount = count;
    self->_sendProgressTotalCount = totalCount;
    if (self->_sendProgressSendCount != count)
    {
      [(CKCoreChatController *)self _updateTitleAnimated:1];
    }

    if (finishedCopy)
    {
      self->_sendProgressSendCount = 0;
      self->_sendProgressTotalCount = 0;
      [(CKCoreChatController *)self _updateTitleAnimated:1];
    }
  }

  else
  {
    conversation = [(CKCoreChatController *)self conversation];
    sendButtonColor = [conversation sendButtonColor];

    v16 = +[CKUIBehavior sharedBehaviors];
    theme = [v16 theme];
    v18 = [theme sendButtonColorForColorType:sendButtonColor];

    changeCopy = change;
    if (change <= 0.0)
    {
      v35 = 0;
    }

    else
    {
      progressBar = [(CKCoreChatController *)self progressBar];
      [progressBar setTintColor:v18];
      v21 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v21 theme];
      progressBarTrackTintColor = [theme2 progressBarTrackTintColor];
      [progressBar setTrackTintColor:progressBarTrackTintColor];

      v35 = progressBar;
      [progressBar setAlpha:1.0];
    }

    v24 = v18;
    v25 = vabdd_f64(changeCopy, self->_sendProgress) * 0.25;
    if (self->_sendProgressSendCount == count && self->_sendProgressTotalCount == totalCount)
    {
      v26 = +[_TtC7ChatKit34CKTranscriptNavigationBarAnimation unanimated];
      v27 = 0;
    }

    else
    {
      v26 = [_TtC7ChatKit34CKTranscriptNavigationBarAnimation linearAnimationWithDuration:v25];
      v27 = 1;
    }

    v34 = v26;
    [(CKCoreChatController *)self updateSendProgress:v24 progressColor:v26 animation:change];
    self->_sendProgress = changeCopy;
    self->_sendProgressSendCount = count;
    self->_sendProgressTotalCount = totalCount;
    if (finishedCopy)
    {
      v28 = 0;
    }

    else
    {
      v29 = +[CKUIBehavior sharedBehaviors];
      [v29 sendProgressTitleTransitionProgressThreshold];
      v28 = v30 < changeCopy && change < 1.0;
    }

    if ((v27 | v28))
    {
      [(CKCoreChatController *)self _updateTitleAnimated:1];
    }

    if (finishedCopy)
    {
      self->_sendProgress = 0.0;
      self->_sendProgressSendCount = 0;
      self->_sendProgressTotalCount = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __93__CKCoreChatController_chat_progressDidChange_sendingMessages_sendCount_totalCount_finished___block_invoke;
      aBlock[3] = &unk_1E72EBA18;
      v39 = v35;
      v32 = _Block_copy(aBlock);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __93__CKCoreChatController_chat_progressDidChange_sendingMessages_sendCount_totalCount_finished___block_invoke_2;
      v36[3] = &unk_1E72ECCA8;
      v36[4] = self;
      v37 = v24;
      v33 = _Block_copy(v36);
      if ([(CKCoreChatController *)self disableAnimationsUnderTest])
      {
        v32[2](v32);
        v33[2](v33, 1);
      }

      else
      {
        [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v32 options:v33 animations:0.3 completion:v25];
      }
    }
  }
}

void __93__CKCoreChatController_chat_progressDidChange_sendingMessages_sendCount_totalCount_finished___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = +[_TtC7ChatKit34CKTranscriptNavigationBarAnimation unanimated];
  [v2 updateSendProgress:v3 progressColor:v4 animation:0.0];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__CKCoreChatController_chat_progressDidChange_sendingMessages_sendCount_totalCount_finished___block_invoke_3;
  block[3] = &unk_1E72EBA18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (UIProgressView)progressBar
{
  if (!self->_progressBar && !CKIsRunningInMessagesViewService())
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    showsProgressInNavigationBar = [v3 showsProgressInNavigationBar];

    v5 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:showsProgressInNavigationBar];
    progressBar = self->_progressBar;
    self->_progressBar = v5;
  }

  [(UIProgressView *)self->_progressBar setAlpha:0.0];
  v7 = self->_progressBar;

  return v7;
}

- (void)registerNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__preferredServiceChangedNotification_ name:@"CKConversationPreferredServiceChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__downgradeStateChangedNotification_ name:*MEMORY[0x1E69A5708] object:0];
  [defaultCenter addObserver:self selector:sel__serviceSwitchNotification_ name:*MEMORY[0x1E69A5910] object:0];
  [defaultCenter addObserver:self selector:sel__satelliteStateChangedNotification_ name:*MEMORY[0x1E69A5938] object:0];
  [defaultCenter addObserver:self selector:sel__handleUltraConstrainedStatusUpdatedNotification_ name:*MEMORY[0x1E69A7DC0] object:0];
  [defaultCenter addObserver:self selector:sel__displayNameUpdatedNotification_ name:*MEMORY[0x1E69A5700] object:0];
  [defaultCenter addObserver:self selector:sel__lastAddressedInfoChangedNotification_ name:*MEMORY[0x1E69A5820] object:0];
  [defaultCenter addObserver:self selector:sel__handleStatusChangedNotification_ name:*MEMORY[0x1E69A59A0] object:0];
  [defaultCenter addObserver:self selector:sel__handleStatusInvitationReceivedNotification_ name:*MEMORY[0x1E69A59B0] object:0];
  [defaultCenter addObserver:self selector:sel__handleStatusStateChangedNotification_ name:*MEMORY[0x1E69A59B8] object:0];
  [defaultCenter addObserver:self selector:sel__statusDaemonDisconnectedNotification_ name:*MEMORY[0x1E69A59A8] object:0];
  [defaultCenter addObserver:self selector:sel__transferFinishedNotification_ name:@"CKFileTransferFinishedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__localeDidChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
  [defaultCenter addObserver:self selector:sel_handleContentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  [defaultCenter addObserver:self selector:sel__handleBlockedContactsChangedNotification_ name:*MEMORY[0x1E69A6A58] object:0];
  [defaultCenter addObserver:self selector:sel__handleTranscriptBackgroundChangedNotification_ name:@"CKConversationTranscriptBackgroundChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleTranscriptDisplayPropertiesChanged_ name:@"TranscriptDisplayPropertiesChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__messageFilteringEnabledDidChange_ name:CKMessageFilteringChangedNotification[0] object:0];
  [defaultCenter addObserver:self selector:sel__increaseContrastDidChangeNotification_ name:*MEMORY[0x1E69DD8B8] object:0];
  [defaultCenter addObserver:self selector:sel__transferRestoredNotification_ name:@"CKFileTransferRestoredNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleAddressBookChangedNotification_ name:*MEMORY[0x1E69A6828] object:0];
  [defaultCenter addObserver:self selector:sel__conversationListFinishedMerging_ name:@"CKConversationListFinishedMergingChatsNotification" object:0];
  [defaultCenter addObserver:self selector:sel__refreshActiveChat_ name:*MEMORY[0x1E69A5688] object:0];
  [defaultCenter addObserver:self selector:sel__refreshActiveChat_ name:*MEMORY[0x1E69A5680] object:0];
  [defaultCenter addObserver:self selector:sel__chatRegistryDidReloadNotification_ name:*MEMORY[0x1E69A58A0] object:0];
  [defaultCenter addObserver:self selector:sel__chatsRemergedNotification_ name:*MEMORY[0x1E69A58C8] object:0];
  [defaultCenter addObserver:self selector:sel__handleStatusChangedNotification_ name:*MEMORY[0x1E69A7038] object:0];
  [defaultCenter addObserver:self selector:sel__handleStatusInvitationReceivedNotification_ name:*MEMORY[0x1E69A7048] object:0];
  [defaultCenter addObserver:self selector:sel__handleStatusStateChangedNotification_ name:*MEMORY[0x1E69A7050] object:0];
  [defaultCenter addObserver:self selector:sel__statusDaemonDisconnectedNotification_ name:*MEMORY[0x1E69A7040] object:0];
}

- (void)preferredSendingServiceChanged
{
  [(CKCoreChatController *)self _updateTitleAnimated:1];
  [(CKCoreChatController *)self _updatePollSuggestionAvailability];
  conversation = [(CKCoreChatController *)self conversation];
  v7 = conversation;
  if (!conversation)
  {
    if ([(CKCoreChatController *)self previewingChatForScreenTime])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  chat = [conversation chat];
  if (chat && [(CKCoreChatController *)self conversationAllowedByScreenTime])
  {

    goto LABEL_10;
  }

  previewingChatForScreenTime = [(CKCoreChatController *)self previewingChatForScreenTime];

  if (!previewingChatForScreenTime)
  {
LABEL_8:
    if ([v7 isPending])
    {
      [(CKCoreChatController *)self _updateNewComposeServiceStatusItem];
    }
  }

LABEL_10:
  chat2 = [(CKCoreChatController *)self chat];
  [chat2 _reloadChatItemsForServiceChange];
}

- (void)_preferredServiceChangedNotification:(id)notification
{
  object = [notification object];
  conversation = [(CKCoreChatController *)self conversation];
  if ([conversation isEqual:object])
  {
    [(CKCoreChatController *)self preferredSendingServiceChanged];
  }
}

- (void)_downgradeStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Refreshing service for sending due downgrade state change", v9, 2u);
    }
  }

  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];
  object = [notificationCopy object];

  if (chat == object)
  {
    [(CKCoreChatController *)self refreshServiceForSending];
  }
}

- (void)_serviceSwitchNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Refreshing service for sending due to service switch request", v9, 2u);
    }
  }

  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];
  object = [notificationCopy object];

  if (chat == object)
  {
    [(CKCoreChatController *)self refreshServiceForSending];
  }
}

- (void)_handleUltraConstrainedStatusUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Refreshing service for sending due to ultra constrained status change", v6, 2u);
    }
  }

  [(CKCoreChatController *)self refreshServiceForSending];
}

- (void)_satelliteStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received satellite state change.", v6, 2u);
    }
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__refreshServiceForSendingForSatelliteStateChange object:0];
  [(CKCoreChatController *)self performSelector:sel__refreshServiceForSendingForSatelliteStateChange withObject:0 afterDelay:3.0];
}

- (void)_refreshServiceForSendingForSatelliteStateChange
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Refreshing service for sending due to satellite state change", buf, 2u);
    }
  }

  chat = [(CKCoreChatController *)self chat];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CKCoreChatController__refreshServiceForSendingForSatelliteStateChange__block_invoke;
  v5[3] = &unk_1E72EB9C8;
  v5[4] = self;
  [chat refreshServiceForSendingWithCompletion:v5];
}

uint64_t __72__CKCoreChatController__refreshServiceForSendingForSatelliteStateChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chat];
  [v2 _reloadChatItemsForSatelliteStateChangeIfRequired:@"Satellite status changed"];

  v3 = *(a1 + 32);

  return [v3 _updatePollSuggestionAvailability];
}

- (void)_displayNameUpdatedNotification:(id)notification
{
  object = [notification object];
  chat = [(CKCoreChatController *)self chat];
  v5 = [object isEqual:chat];

  if (v5)
  {
    [(CKCoreChatController *)self _updateTitleAnimated:1];
  }
}

- (void)_lastAddressedInfoChangedNotification:(id)notification
{
  object = [notification object];
  chat = [(CKCoreChatController *)self chat];
  v5 = [object isEqual:chat];

  if (v5)
  {
    [object refreshServiceForSending];
  }
}

- (void)setHandleStatusAssertion:(id)assertion
{
  v13 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      handleStatusAssertion = self->_handleStatusAssertion;
      v9 = 134218240;
      v10 = assertionCopy;
      v11 = 2048;
      v12 = handleStatusAssertion;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Setting handle observer %p and invalidating old observer %p if necessary", &v9, 0x16u);
    }
  }

  v7 = self->_handleStatusAssertion;
  if (v7 != assertionCopy)
  {
    [(IMHandleStatusObserverAssertion *)v7 invalidate];
  }

  v8 = self->_handleStatusAssertion;
  self->_handleStatusAssertion = assertionCopy;
}

- (void)_statusDaemonDisconnectedNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = [name isEqualToString:*MEMORY[0x1E69A59A0]];

  if (v6)
  {
    v7 = @"Availability";
  }

  else
  {
    name2 = [notificationCopy name];
    v9 = [name2 isEqualToString:*MEMORY[0x1E69A7038]];

    if (v9)
    {
      v7 = @"Off grid";
    }

    else
    {
      v7 = 0;
    }
  }

  chat = [(CKCoreChatController *)self chat];
  if (chat)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = chat;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%@ daemon was disconnected while there was an active chat controller. Requesting that we continue observing availability for chat %@", &v13, 0x16u);
      }
    }

    beginObservingHandleStatuses = [chat beginObservingHandleStatuses];
    [(CKCoreChatController *)self setHandleStatusAssertion:beginObservingHandleStatuses];
  }
}

- (void)_handleStatusChangedNotification:(id)notification
{
  v32 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  chat = [(CKCoreChatController *)self chat];
  name = [notificationCopy name];
  v8 = [name isEqualToString:*MEMORY[0x1E69A59A0]];

  if (v8)
  {
    v9 = @"Availability";
  }

  else
  {
    name2 = [notificationCopy name];
    v11 = [name2 isEqualToString:*MEMORY[0x1E69A7038]];

    if (v11)
    {
      v9 = @"Off grid";
    }

    else
    {
      v9 = 0;
    }
  }

  isPersonalStatusSubscription = [object isPersonalStatusSubscription];
  v13 = IMOSLoggingEnabled();
  if (isPersonalStatusSubscription)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        subscriptionIdentifier = [object subscriptionIdentifier];
        guid = [chat guid];
        v22 = 138412546;
        v23 = subscriptionIdentifier;
        v24 = 2112;
        v25 = guid;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Personal status subscription %@ changed while there was an active chat controller displaying chat %@. Taking no action.", &v22, 0x16u);
      }
    }
  }

  else
  {
    if (v13)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        subscriptionIdentifier2 = [object subscriptionIdentifier];
        ownerHandles = [object ownerHandles];
        guid2 = [chat guid];
        v22 = 138413314;
        v23 = v9;
        v24 = 2112;
        v25 = subscriptionIdentifier2;
        v26 = 2112;
        v27 = ownerHandles;
        v28 = 2112;
        v29 = guid2;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%@ changed for subscription %@ owned by %@ while there was an active chat controller displaying chat %@. Re-observing all relevant %@ status for chat.", &v22, 0x34u);
      }
    }

    beginObservingHandleStatuses = [chat beginObservingHandleStatuses];
    [(CKCoreChatController *)self setHandleStatusAssertion:beginObservingHandleStatuses];
  }
}

- (void)_handleStatusInvitationReceivedNotification:(id)notification
{
  v32 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  chat = [(CKCoreChatController *)self chat];
  name = [notificationCopy name];
  v8 = [name isEqualToString:*MEMORY[0x1E69A59A0]];

  if (v8)
  {
    v9 = @"Availability";
  }

  else
  {
    name2 = [notificationCopy name];
    v11 = [name2 isEqualToString:*MEMORY[0x1E69A7038]];

    if (v11)
    {
      v9 = @"Off grid";
    }

    else
    {
      v9 = 0;
    }
  }

  isPersonalStatusSubscription = [object isPersonalStatusSubscription];
  v13 = IMOSLoggingEnabled();
  if (isPersonalStatusSubscription)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        subscriptionIdentifier = [object subscriptionIdentifier];
        guid = [chat guid];
        v22 = 138412802;
        v23 = v9;
        v24 = 2112;
        v25 = subscriptionIdentifier;
        v26 = 2112;
        v27 = guid;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "%@ invitation received for personal status subscription %@ while there was an active chat controller displaying chat %@. Taking no action.", &v22, 0x20u);
      }
    }
  }

  else
  {
    if (v13)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        subscriptionIdentifier2 = [object subscriptionIdentifier];
        ownerHandles = [object ownerHandles];
        guid2 = [chat guid];
        v22 = 138413314;
        v23 = v9;
        v24 = 2112;
        v25 = subscriptionIdentifier2;
        v26 = 2112;
        v27 = ownerHandles;
        v28 = 2112;
        v29 = guid2;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%@ invitation received for subscription %@ owned by %@ while there was an active chat controller displaying chat: %@. Re-observing all relevant %@ for chat", &v22, 0x34u);
      }
    }

    beginObservingHandleStatuses = [chat beginObservingHandleStatuses];
    [(CKCoreChatController *)self setHandleStatusAssertion:beginObservingHandleStatuses];
  }
}

- (void)_handleStatusStateChangedNotification:(id)notification
{
  v32 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  chat = [(CKCoreChatController *)self chat];
  name = [notificationCopy name];
  v8 = [name isEqualToString:*MEMORY[0x1E69A59A0]];

  if (v8)
  {
    v9 = @"Availability";
  }

  else
  {
    name2 = [notificationCopy name];
    v11 = [name2 isEqualToString:*MEMORY[0x1E69A7038]];

    if (v11)
    {
      v9 = @"Off grid";
    }

    else
    {
      v9 = 0;
    }
  }

  isPersonalStatusSubscription = [object isPersonalStatusSubscription];
  v13 = IMOSLoggingEnabled();
  if (isPersonalStatusSubscription)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        subscriptionIdentifier = [object subscriptionIdentifier];
        guid = [chat guid];
        v22 = 138412802;
        v23 = v9;
        v24 = 2112;
        v25 = subscriptionIdentifier;
        v26 = 2112;
        v27 = guid;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "%@ state changed for personal status subscription %@ while there was an active chat controller displaying chat %@. Taking no action.", &v22, 0x20u);
      }
    }
  }

  else
  {
    if (v13)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        subscriptionIdentifier2 = [object subscriptionIdentifier];
        ownerHandles = [object ownerHandles];
        v22 = 138413314;
        v23 = v9;
        v24 = 2112;
        v25 = subscriptionIdentifier2;
        v26 = 2112;
        v27 = ownerHandles;
        v28 = 2112;
        v29 = chat;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%@ state changed for subscription %@ owned by %@ while there was an active chat controller displaying chat. Re-observing all relevant %@ status for chat: %@", &v22, 0x34u);
      }
    }

    beginObservingHandleStatuses = [chat beginObservingHandleStatuses];
    [(CKCoreChatController *)self setHandleStatusAssertion:beginObservingHandleStatuses];

    name3 = [notificationCopy name];
    LODWORD(beginObservingHandleStatuses) = [name3 isEqualToString:*MEMORY[0x1E69A7050]];

    if (beginObservingHandleStatuses)
    {
      [chat refreshServiceForSending];
    }
  }
}

- (void)_localeDidChangeNotification:(id)notification
{
  conversation = [(CKCoreChatController *)self conversation];
  [(CKCoreChatController *)self setConversation:conversation forceReload:1];
}

- (void)_chatRegistryDidReloadNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_chatRegistryDidReloadNotification", v9, 2u);
    }
  }

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A5898]];
  bOOLValue = [v7 BOOLValue];

  [(CKCoreChatController *)self _reassignConversationWithDeferredReload:bOOLValue];
}

- (void)_chatsRemergedNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_chatsRemergedNotification", v6, 2u);
    }
  }

  [(CKCoreChatController *)self _reassignConversationWithDeferredReload:1];
}

- (void)_reassignConversationWithDeferredReload:(BOOL)reload
{
  reloadCopy = reload;
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v10 = reloadCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_reassignConversationWithDeferredReload: %{BOOL}d", buf, 8u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__CKCoreChatController__reassignConversationWithDeferredReload___block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (reloadCopy)
  {
    im_dispatch_after();
  }

  else
  {
    (*(v6 + 2))(v6);
  }
}

void __64__CKCoreChatController__reassignConversationWithDeferredReload___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conversation];
  v4 = [*v2 conversation];
  v5 = [v4 chat];

  if (!v5)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v6 = [v5 chatStyle] == 43;
  v7 = +[CKConversationList sharedConversationList];
  if (v6)
  {
    v8 = [v5 groupID];
    v9 = [v7 conversationForExistingChatWithGroupID:v8];
  }

  else
  {
    v11 = [v5 guid];
    v10 = [v7 conversationForExistingChatWithGUID:v11];

    if (v10)
    {
      goto LABEL_8;
    }

    v7 = +[CKConversationList sharedConversationList];
    v8 = [v5 personCentricID];
    v9 = [v7 conversationForExistingChatWithPersonCentricID:v8];
  }

  v10 = v9;

LABEL_8:
  v12 = [*(a1 + 32) conversation];
  [v10 setLoadedMessageCount:{objc_msgSend(v12, "limitToLoad")}];

  [v10 loadAllMessages];
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v5 == 0;
  }

  if (v13)
  {
    v10 = v3;
    v14 = +[CKConversationList sharedConversationList];
    [v14 setPendingConversation:v10];
  }

  [*(a1 + 32) setConversation:v10 forceReload:1];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "conversationToSet: %@, oldConversation: %@", &v16, 0x16u);
    }
  }
}

- (void)handleContentSizeCategoryDidChangeNotification:(id)notification
{
  [(CKCoreChatController *)self _dismissFullScreenBubbleViewControllerAnimated:1 withSendAnimation:0 completion:0];
  conversation = [(CKCoreChatController *)self conversation];
  [(CKCoreChatController *)self setConversation:conversation forceReload:1];
}

- (void)_handleBlockedContactsChangedNotification:(id)notification
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    chat = [(CKCoreChatController *)self chat];
    [chat _reloadChatItemsForBlockedContactsListChange];
  }
}

- (void)_increaseContrastDidChangeNotification:(id)notification
{
  conversation = [(CKCoreChatController *)self conversation];
  [(CKCoreChatController *)self setConversation:conversation forceReload:1];
}

- (void)_conversationListFinishedMerging:(id)merging
{
  v15 = *MEMORY[0x1E69E9840];
  mergingCopy = merging;
  conversation = [(CKCoreChatController *)self conversation];
  v6 = +[CKConversationList sharedConversationList];
  chat = [conversation chat];
  guid = [chat guid];
  v9 = [v6 conversationForExistingChatWithGUID:guid];

  if (v9)
  {
    if (conversation != v9)
    {
      [(CKCoreChatController *)self setConversation:v9 forceReload:1];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = 138412546;
          v12 = v9;
          v13 = 2112;
          v14 = conversation;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Conversation list performed re-merge, updating transcript conversation to %@ from %@", &v11, 0x16u);
        }

LABEL_11:
      }
    }
  }

  else if (conversation && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = conversation;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CKCoreChatController attempted to replace conversation after re-merge, but couldn't find a new conversation to replace %@", &v11, 0xCu);
    }

    goto LABEL_11;
  }
}

- (void)significantTimeChange
{
  navigationController = [(CKCoreChatController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];

  if (visibleViewController == self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__CKCoreChatController_significantTimeChange__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __45__CKCoreChatController_significantTimeChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  [*(a1 + 32) setConversation:v2 forceReload:1];
}

- (id)indexPathForMessageGUID:(id)d messagePartIndex:(int64_t)index
{
  dCopy = d;
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  v8 = [collectionViewController indexPathForMessageGUID:dCopy messagePartIndex:index];

  return v8;
}

- (CGPoint)contentOffsetForIndexPath:(id)path viewToAlignWith:(id)with allowOverScroll:(BOOL)scroll
{
  [(CKCoreChatController *)self contentOffsetForIndexPath:path viewToAlignWith:with allowOverScroll:scroll scrollPosition:2];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)contentOffsetForIndexPath:(id)path viewToAlignWith:(id)with allowOverScroll:(BOOL)scroll scrollPosition:(unint64_t)position
{
  positionCopy = position;
  pathCopy = path;
  withCopy = with;
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController sizeFullTranscriptIfNecessary];
  collectionView = [(CKCoreChatController *)self collectionView];
  [collectionView bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [collectionView contentInset];
  v23 = v22;
  v25 = v15 + v24;
  v90 = v19 - (v24 + v26);
  v91 = v17 + v22;
  v28 = v21 - (v22 + v27);
  v29 = [collectionView layoutAttributesForItemAtIndexPath:pathCopy];
  [v29 frame];
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  if (withCopy)
  {
    v88 = v15;
    collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
    v39 = [collectionViewController2 chatItemAtIndexPath:pathCopy];

    collectionViewController3 = [(CKCoreChatController *)self collectionViewController];
    v41 = [collectionViewController3 balloonViewForChatItem:v39];

    v42 = v28;
    if (v41)
    {
      objc_opt_class();
      v43 = v25;
      if (objc_opt_isKindOfClass())
      {
        [v41 ck_identityTransformFrameInView:collectionView];
        v34 = v44;
        v35 = v45;
        v36 = v46;
        v37 = v47;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          coordinateSpace = [collectionView coordinateSpace];
          [v41 currentAssetFrameInCoordinateSpace:coordinateSpace];
          v34 = v54;
          v35 = v55;
          v36 = v56;
          v37 = v57;
        }
      }
    }

    else
    {
      v43 = v25;
    }

    v95.origin.x = v34;
    v95.origin.y = v35;
    v95.size.width = v36;
    v95.size.height = v37;
    MinY = CGRectGetMinY(v95);
    [withCopy frame];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    superview = [withCopy superview];
    [collectionView convertRect:superview fromView:{v60, v62, v64, v66}];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v96.origin.x = v69;
    v96.origin.y = v71;
    v96.size.width = v73;
    v96.size.height = v75;
    v76 = CGRectGetMinY(v96);
    v25 = v43;
    v97.origin.x = v43;
    v97.size.width = v90;
    v97.origin.y = v91;
    v28 = v42;
    v97.size.height = v42;
    v52 = MinY - (v76 - CGRectGetMinY(v97)) - v23;

    v15 = v88;
  }

  else if (positionCopy)
  {
    v52 = CGRectGetMinY(*&v30) + v23 * -1.2;
  }

  else
  {
    v93.origin.x = v25;
    v93.size.width = v90;
    v93.origin.y = v91;
    v93.size.height = v28;
    v89 = v15;
    v48 = v28;
    v49 = v25;
    v50 = CGRectGetHeight(v93) * -0.5;
    v94.origin.x = v34;
    v94.origin.y = v35;
    v94.size.width = v36;
    v94.size.height = v37;
    v51 = CGRectGetMidY(v94) + v50;
    v25 = v49;
    v28 = v48;
    v15 = v89;
    v52 = v51 - v23;
  }

  chatItems = [collectionViewController chatItems];
  firstObject = [chatItems firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v80 = [collectionView layoutAttributesForItemAtIndexPath:v79];
    [v80 frame];
    MaxY = CGRectGetMaxY(v98);
    if (MaxY > v52)
    {
      v52 = MaxY - v23;
    }
  }

  if (!scroll)
  {
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout collectionViewContentSize];
    v84 = v83;
    v99.origin.x = v25;
    v99.size.width = v90;
    v99.origin.y = v91;
    v99.size.height = v28;
    v85 = v84 - CGRectGetHeight(v99) - v23;
    if (v52 <= v85)
    {
      v85 = v52;
    }

    if (v52 >= -v23)
    {
      v52 = v85;
    }

    else
    {
      v52 = -v23;
    }
  }

  v86 = v15;
  v87 = v52;
  result.y = v87;
  result.x = v86;
  return result;
}

- (void)scrollToHighlightedMessageScrollContext:(id)context
{
  contextCopy = context;
  collectionView = [(CKCoreChatController *)self collectionView];
  messageGUID = [contextCopy messageGUID];
  messagePartIndex = [contextCopy messagePartIndex];
  viewToAlignWith = [contextCopy viewToAlignWith];
  allowOverScroll = [contextCopy allowOverScroll];
  scrollPosition = [contextCopy scrollPosition];

  v11 = [(CKCoreChatController *)self indexPathForMessageGUID:messageGUID messagePartIndex:messagePartIndex];
  if (v11)
  {
    [(CKCoreChatController *)self contentOffsetForIndexPath:v11 viewToAlignWith:viewToAlignWith allowOverScroll:allowOverScroll scrollPosition:scrollPosition];
    v13 = v12;
    v15 = v14;
    [collectionView beginDisablingTranscriptDynamicsForReason:14];
    [collectionView setContentOffset:0 animated:{v13, v15}];
    [collectionView endDisablingTranscriptDynamicsForReason:14];
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CKCoreChatController scrollToHighlightedMessageScrollContext:];
    }
  }
}

- (BOOL)shouldUpdateScrollPositionForKeyboardScreenFrameChanges
{
  v9 = *MEMORY[0x1E69E9840];
  isFullScreenBalloonViewOnScreen = [(CKCoreChatController *)self isFullScreenBalloonViewOnScreen];
  v3 = IMLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (isFullScreenBalloonViewOnScreen)
  {
    if (v4)
    {
      v7 = 136315138;
      v8 = "[CKCoreChatController shouldUpdateScrollPositionForKeyboardScreenFrameChanges]";
      v5 = "[Tapbacks], %s, Ignoring keyboard frame change because full screen balloon view is visible";
LABEL_6:
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, v5, &v7, 0xCu);
    }
  }

  else if (v4)
  {
    v7 = 136315138;
    v8 = "[CKCoreChatController shouldUpdateScrollPositionForKeyboardScreenFrameChanges]";
    v5 = "[Tapbacks], %s, keyboard frame change allowed";
    goto LABEL_6;
  }

  return !isFullScreenBalloonViewOnScreen;
}

- (BOOL)showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[CKCoreChatController showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:]";
      v14 = 2112;
      v15 = pathCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Tapbacks] %s, indexPath: %@", &v12, 0x16u);
    }
  }

  if (pathCopy)
  {
    collectionViewController = [(CKCoreChatController *)self collectionViewController];
    chatItems = [collectionViewController chatItems];
    v8 = [chatItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 136315650;
        v13 = "[CKCoreChatController showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:]";
        v14 = 2112;
        v15 = pathCopy;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "[Tapbacks] %s, indexPath: %@, proposed chatItem: %@", &v12, 0x20u);
      }
    }

    v10 = [(CKCoreChatController *)self shouldShowFullScreenAcknowledgmentPickerForChatItem:v8];
    if (v10)
    {
      [(CKCoreChatController *)self showFullScreenAcknowledgmentPickerForChatItem:v8];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)item
{
  v13 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      iMChatItem = [itemCopy IMChatItem];
      guid = [iMChatItem guid];
      v9 = 136315394;
      v10 = "[CKCoreChatController showFullScreenAcknowledgmentPickerForChatItem:]";
      v11 = 2112;
      v12 = guid;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Tapbacks] %s, chatItem.guid: %@", &v9, 0x16u);
    }
  }

  v8 = +[CKFullScreenBalloonViewDisplayConfiguration tapbackPickerContext];
  [(CKCoreChatController *)self showFullScreenAcknowledgmentPickerForChatItem:itemCopy displayConfiguration:v8];
}

- (void)showFullScreenTapbackKeyboardInputForChatItem:(id)item
{
  v13 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      iMChatItem = [itemCopy IMChatItem];
      guid = [iMChatItem guid];
      v9 = 136315394;
      v10 = "[CKCoreChatController showFullScreenTapbackKeyboardInputForChatItem:]";
      v11 = 2112;
      v12 = guid;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Tapbacks] %s, chatItem.guid: %@", &v9, 0x16u);
    }
  }

  v8 = +[CKFullScreenBalloonViewDisplayConfiguration tapbackKeyboardInputContext];
  [(CKCoreChatController *)self showFullScreenAcknowledgmentPickerForChatItem:itemCopy displayConfiguration:v8];
}

- (BOOL)shouldShowTapbackAttributionForFullScreenBalloonViewController:(id)controller
{
  chatItem = [controller chatItem];
  LOBYTE(self) = [(CKCoreChatController *)self shouldShowTapbackAttributionForChatItem:chatItem];

  return self;
}

- (BOOL)shouldShowTapbackPickerForFullScreenBalloonViewController:(id)controller
{
  chatItem = [controller chatItem];
  LOBYTE(self) = [(CKCoreChatController *)self shouldShowTapbackPickerForChatItem:chatItem];

  return self;
}

- (id)contextualChatItemsForTapbackPicker
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  chatItems = [collectionViewController chatItems];

  return chatItems;
}

- (BOOL)shouldShowFullScreenAcknowledgmentPickerForChatItem:(id)item
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (![(CKCoreChatController *)self isFullScreenBalloonViewOnScreen])
  {
    v7 = [(CKCoreChatController *)self balloonViewForChatItem:itemCopy];
    v8 = v7;
    if (v7)
    {
      if ([v7 canPresentTapbackPicker])
      {
        v9 = [(CKCoreChatController *)self shouldShowTapbackPickerForChatItem:itemCopy];
        v10 = [(CKCoreChatController *)self shouldShowTapbackAttributionForChatItem:itemCopy];
        v6 = v9 || v10;
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v16 = 67109632;
            *v17 = v9;
            *&v17[4] = 1024;
            *&v17[6] = v10;
            v18 = 1024;
            v19 = v6;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "[Tapbacks] shouldShowPicker: %{BOOL}d, shouldShowAttribution: %{BOOL}d, shouldShowFullScreenAcknowledgmentPicker: %{BOOL}d", &v16, 0x14u);
          }
        }

        goto LABEL_22;
      }

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "[Tapbacks] BalloonView does not allow presenting tapback picker", &v16, 2u);
        }

LABEL_20:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        iMChatItem = [itemCopy IMChatItem];
        guid = [iMChatItem guid];
        v16 = 138412290;
        *v17 = guid;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "[Tapbacks] BalloonView for chatItem: %@ not found", &v16, 0xCu);
      }

      goto LABEL_20;
    }

    v6 = 0;
LABEL_22:

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Tapbacks] Should not present fullScreenBalloonViewController - a fullScreenBalloonViewController is already presented", &v16, 2u);
    }
  }

  v6 = 0;
LABEL_23:

  return v6;
}

- (BOOL)shouldShowTapbackAttributionForChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 0;
        v6 = "[Tapbacks] not showing tapback attribution: not message part chatItem";
        v7 = &v10;
LABEL_10:
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
      }

LABEL_11:
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  if (([itemCopy hasVisibleAssociatedMessageItems] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 0;
        v6 = "[Tapbacks] not showing tapback attribution: no visible tapbacks";
        v7 = &v9;
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v4 = 1;
LABEL_13:

  return v4;
}

- (BOOL)shouldShowTapbackPickerForChatItem:(id)item
{
  itemCopy = item;
  if ([(CKCoreChatController *)self _shouldAllowReplyFromLockScreen])
  {
    conversation = [(CKCoreChatController *)self conversation];
    isBusinessChatDisabled = [conversation isBusinessChatDisabled];

    if (isBusinessChatDisabled)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v22 = 0;
          v8 = "[Tapbacks] not showing tapback picker: business chat disabled";
          v9 = &v22;
LABEL_9:
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else
    {
      conversation2 = [(CKCoreChatController *)self conversation];
      chat = [conversation2 chat];
      v14 = [chat supportsCapabilities:0x40000];

      if ((v14 & 1) == 0)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_11;
        }

        v7 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        v21 = 0;
        v8 = "[Tapbacks] not showing tapback picker: missing tapbacks chat capability";
        v9 = &v21;
        goto LABEL_9;
      }

      conversation3 = [(CKCoreChatController *)self conversation];
      chat2 = [conversation3 chat];
      canSend = [chat2 canSend];

      if ((canSend & 1) == 0)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_11;
        }

        v7 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        v20 = 0;
        v8 = "[Tapbacks] not showing tapback picker: cannot send to chat";
        v9 = &v20;
        goto LABEL_9;
      }

      if ([(CKCoreChatController *)self isReadOnly])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_11;
        }

        v7 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        v19 = 0;
        v8 = "not showing tapback picker: chat is read-only at controller level";
        v9 = &v19;
        goto LABEL_9;
      }

      if ([itemCopy canSendTapbacks])
      {
        v10 = 1;
        goto LABEL_12;
      }

      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        v18 = 0;
        v8 = "[Tapbacks] not showing tapback picker: chatItem can't send tapbacks";
        v9 = &v18;
        goto LABEL_9;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "[Tapbacks] not showing tapback picker: replies not allowed lock screen";
      v9 = buf;
      goto LABEL_9;
    }

LABEL_10:
  }

LABEL_11:
  v10 = 0;
LABEL_12:

  return v10;
}

- (void)_dismissFullScreenBubbleViewControllerAnimated:(BOOL)animated withSendAnimation:(BOOL)animation completion:(id)completion
{
  animationCopy = animation;
  animatedCopy = animated;
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __100__CKCoreChatController__dismissFullScreenBubbleViewControllerAnimated_withSendAnimation_completion___block_invoke;
  v19 = &unk_1E72ED1C8;
  selfCopy = self;
  v9 = completionCopy;
  v21 = v9;
  v10 = _Block_copy(&v16);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (animatedCopy)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = _Block_copy(v9);
      *buf = 138412802;
      v23 = v12;
      v24 = 1024;
      v25 = animationCopy;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "[Tapbacks] _dismissFullScreenBubbleViewControllerAnimated %@:WithSendAnimation: %d, completion %@", buf, 0x1Cu);
    }
  }

  v14 = [(CKCoreChatController *)self fullScreenBalloonViewController:v16];
  v15 = v14;
  if (animatedCopy)
  {
    if (animationCopy)
    {
      [v14 performSendAndCloseAnimationWithCompletion:v10];
    }

    else
    {
      [v14 performCancelAnimationWithCompletion:v10];
    }
  }

  else
  {
    [v14 dismissImmediatelyWithNoAnimations];

    v10[2](v10);
  }
}

void __100__CKCoreChatController__dismissFullScreenBubbleViewControllerAnimated_withSendAnimation_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fullScreenBalloonViewController];
  v3 = [v2 presentingViewController];

  v4 = [*(a1 + 32) fullScreenBalloonViewController];
  v5 = v4;
  if (v3)
  {
    [v4 dismissViewControllerAnimated:0 completion:0];
  }

  else
  {
    [v4 willMoveToParentViewController:0];

    v6 = [*(a1 + 32) fullScreenBalloonViewController];
    v7 = [v6 view];
    [v7 removeFromSuperview];

    v8 = [*(a1 + 32) fullScreenBalloonViewController];
    [v8 removeFromParentViewController];

    v5 = [*(a1 + 32) fullScreenBalloonViewController];
    [v5 didMoveToParentViewController:0];
  }

  [*(a1 + 32) setFullScreenBalloonViewController:0];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "[Tapbacks] _fullScreenBalloonViewController has been dismissed and set to nil", v11, 2u);
    }
  }
}

- (void)fullScreenBalloonViewController:(id)controller didAppearAnimated:(BOOL)animated
{
  controllerCopy = controller;
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  chatItem = [controllerCopy chatItem];
  v19 = [collectionViewController balloonViewForChatItem:chatItem];

  [v19 prepareForAcknowledgementDisplay];
  window = [v19 window];
  view = [(CKCoreChatController *)self view];
  [view bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  view2 = [(CKCoreChatController *)self view];
  [window convertRect:view2 fromView:{v11, v13, v15, v17}];
  [controllerCopy setPreservedBoundsInBalloonWindowAtAppearance:?];
}

- (void)fullScreenBalloonViewControllerDidDisappear:(id)disappear
{
  v15 = *MEMORY[0x1E69E9840];
  disappearCopy = disappear;
  chat = [(CKCoreChatController *)self chat];
  [chat endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57A0]];
  [(CKScrollViewController *)self endHoldingScrollGeometryUpdatesForReason:@"FullscreenBalloonMenuVisible"];
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  chatItem = [disappearCopy chatItem];
  v8 = [collectionViewController balloonViewForChatItem:chatItem];

  [v8 prepareForAcknowledgementDismissal];
  view = [disappearCopy view];
  [view removeFromSuperview];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[CKCoreChatController fullScreenBalloonViewControllerDidDisappear:]";
      v13 = 2112;
      v14 = disappearCopy;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "[Tapbacks] %s, tapback overlay did disappear for controller: %@", &v11, 0x16u);
    }
  }
}

- (id)balloonViewForChatItem:(id)item
{
  itemCopy = item;
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  iMChatItem = [itemCopy IMChatItem];

  guid = [iMChatItem guid];
  v8 = [collectionViewController chatItemForGUID:guid];

  collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
  v10 = [collectionViewController2 balloonViewForChatItem:v8];

  return v10;
}

- (CGRect)fullScreenBalloonViewController:(id)controller balloonFrameForChatItem:(id)item
{
  v5 = [(CKCoreChatController *)self fullScreenBalloonViewController:controller balloonViewForChatItem:item];
  if (v5)
  {
    view = [(CKCoreChatController *)self view];
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    superview = [v5 superview];
    [view convertRect:superview fromView:{v8, v10, v12, v14}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v17 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
  }

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)fullScreenBalloonViewControllerHandleDismissTap:(id)tap
{
  v8 = *MEMORY[0x1E69E9840];
  tapCopy = tap;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[CKCoreChatController fullScreenBalloonViewControllerHandleDismissTap:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Tapbacks] %s", &v6, 0xCu);
    }
  }

  [(CKCoreChatController *)self _dismissFullScreenBubbleViewControllerAnimated:1 withSendAnimation:0 completion:0];
}

- (BOOL)wantsReplyButton
{
  if ([(CKCoreChatController *)self isInline]|| [(CKCoreChatController *)self isReadOnly])
  {
    return 0;
  }

  chat = [(CKCoreChatController *)self chat];
  canSendInlineReply = [chat canSendInlineReply];

  return canSendInlineReply;
}

- (CGRect)fullScreenBalloonViewControllerSafeAreaLayoutFrame:(id)frame
{
  view = [(CKCoreChatController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)fullScreenBalloonViewController:(id)controller duplicatedViewForChatItem:(id)item
{
  v29 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionViewController = [(CKCoreChatController *)self collectionViewController];
    v9 = [collectionViewController balloonViewForChatItem:itemCopy];

    v10 = v9;
    currentAssetSnapshot = [v10 currentAssetSnapshot];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v25 = 136315394;
        v26 = "[CKCoreChatController fullScreenBalloonViewController:duplicatedViewForChatItem:]";
        v27 = 2112;
        v28 = currentAssetSnapshot;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "[Tapbacks] %s, returning asset snapshot: %@", &v25, 0x16u);
      }
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(CKCoreChatController *)self balloonViewForChatItem:itemCopy];
    v14 = +[CKUIBehavior sharedBehaviors];
    if ([v14 usesTapbackRefreshStyling])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = v13;
        pluginView = [v16 pluginView];
        v18 = [pluginView snapshotViewAfterScreenUpdates:0];

        v19 = [CKTranscriptPluginBalloonView alloc];
        [v16 frame];
        currentAssetSnapshot = [(CKTranscriptPluginBalloonView *)v19 initWithFrame:?];
        [(CKTranscriptPluginBalloonView *)currentAssetSnapshot setPluginView:v18 pluginController:0];
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v25 = 136315394;
            v26 = "[CKCoreChatController fullScreenBalloonViewController:duplicatedViewForChatItem:]";
            v27 = 2112;
            v28 = currentAssetSnapshot;
            _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "[Tapbacks] %s, returning duplicated transcriptplugingBalloonView: %@", &v25, 0x16u);
          }
        }

        [(CKBalloonView *)currentAssetSnapshot setNeedsPrepareForDisplay];
        [(CKBalloonView *)currentAssetSnapshot prepareForDisplayIfNeeded];

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
    }

    currentAssetSnapshot = [v13 snapshotCurrentView];
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = 136315394;
        v26 = "[CKCoreChatController fullScreenBalloonViewController:duplicatedViewForChatItem:]";
        v27 = 2112;
        v28 = currentAssetSnapshot;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "[Tapbacks] %s, returning balloonView snapshot: %@", &v25, 0x16u);
      }
    }

    goto LABEL_30;
  }

  currentAssetSnapshot = CKBalloonViewForClass([itemCopy balloonViewClass]);
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();
  [(CKBalloonView *)currentAssetSnapshot configureForMessagePart:itemCopy];
  if ((v21 & 1) == 0)
  {
    [(CKBalloonView *)currentAssetSnapshot setInvisibleInkEffectEnabled:0];
  }

  [(CKTranscriptPluginBalloonView *)currentAssetSnapshot setCanUseOpaqueMask:0];
  if (objc_opt_respondsToSelector())
  {
    view = [(CKCoreChatController *)self view];
    [(CKTranscriptPluginBalloonView *)currentAssetSnapshot setGradientReferenceView:view];
  }

  if ([controllerCopy shouldHideBalloonTail])
  {
    [(CKTranscriptPluginBalloonView *)currentAssetSnapshot setHasTail:0];
  }

  [(CKBalloonView *)currentAssetSnapshot setNeedsPrepareForDisplay];
  [(CKBalloonView *)currentAssetSnapshot prepareForDisplayIfNeeded];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v25 = 136315394;
      v26 = "[CKCoreChatController fullScreenBalloonViewController:duplicatedViewForChatItem:]";
      v27 = 2112;
      v28 = currentAssetSnapshot;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "[Tapbacks] %s, returning balloonView: %@", &v25, 0x16u);
    }

    goto LABEL_30;
  }

LABEL_31:

  return currentAssetSnapshot;
}

- (void)showInlineReplyControllerForChatItem:(id)item presentKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  itemCopy = item;
  v7 = +[CKInlineReplyTransitionProperties defaultProperties];
  [(CKCoreChatController *)self showInlineReplyControllerForChatItem:itemCopy presentKeyboard:keyboardCopy replyTransitionProperties:v7];
}

- (id)_threadChatItemForReplyCountChatItem:(id)item chatItems:(id)items
{
  itemCopy = item;
  itemsCopy = items;
  iMChatItem = [itemCopy IMChatItem];
  if ([iMChatItem itemIsReplyCount])
  {
    v8 = iMChatItem;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v9)
  {
    threadIdentifier = [v9 threadIdentifier];
    replyMessageGUID = [v10 replyMessageGUID];
    if ([threadIdentifier length] || objc_msgSend(replyMessageGUID, "length"))
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__48;
      v23 = __Block_byref_object_dispose__48;
      v24 = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __71__CKCoreChatController__threadChatItemForReplyCountChatItem_chatItems___block_invoke;
      v15[3] = &unk_1E72F0EA0;
      v16 = replyMessageGUID;
      v17 = threadIdentifier;
      v18 = &v19;
      [itemsCopy enumerateObjectsUsingBlock:v15];
      v13 = v20[5];

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __71__CKCoreChatController__threadChatItemForReplyCountChatItem_chatItems___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v7 IMChatItem];
    v11 = v10;
    if (a1[4])
    {
      v12 = [v10 message];
      v13 = [v12 guid];

      LOBYTE(v12) = [v13 isEqualToString:a1[4]];
      if ((v12 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v18 = 0;
      v14 = [v10 itemIsThreadOriginatorWithThreadIdentifier:&v18];
      v15 = v18;
      v16 = v15;
      if ((v14 & 1) == 0)
      {

        goto LABEL_9;
      }

      v17 = [v15 isEqualToString:a1[5]];

      if (!v17)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)systemApplicationDidResume
{
  if ([(CKCoreChatController *)self viewIsVisible])
  {
    v2 = +[CKPreviewDispatchCache genmojiPreviewCache];
    [v2 resume];

    v3 = +[CKPreviewDispatchCache transcriptPreviewCache];
    [v3 resume];

    v4 = +[CKPreviewDispatchCache snapshotCache];
    [v4 resume];
  }
}

- (void)configureWithToolbarController:(id)controller
{
  controllerCopy = controller;
  macToolbarController = [(CKCoreChatController *)self macToolbarController];

  if (macToolbarController != controllerCopy)
  {
    [(CKCoreChatController *)self setMacToolbarController:controllerCopy];
  }

  if ([(CKCoreChatController *)self conformsToProtocol:&unk_1F051C328])
  {
    macToolbarController2 = [(CKCoreChatController *)self macToolbarController];
    [macToolbarController2 setSecondaryItemProvider:self];
  }
}

- (void)presentMacToolbarController
{
  v3 = +[CKUIBehavior sharedBehaviors];
  useMacToolbar = [v3 useMacToolbar];

  if (useMacToolbar)
  {
    macToolbarController = [(CKCoreChatController *)self macToolbarController];

    if (macToolbarController)
    {
      view = [(CKCoreChatController *)self view];
      macToolbarController2 = [(CKCoreChatController *)self macToolbarController];
      view2 = [macToolbarController2 view];
      [view addSubview:view2];
    }
  }
}

- (void)fullScreenBalloonViewController:(id)controller sendMessageHighlight:(BOOL)highlight forChatItem:(id)item
{
  highlightCopy = highlight;
  itemCopy = item;
  chat = [(CKCoreChatController *)self chat];
  iMChatItem = [itemCopy IMChatItem];
  guid = [iMChatItem guid];
  messagePartRange = [itemCopy messagePartRange];
  v12 = v11;

  if (highlightCopy)
  {
    v13 = 4;
  }

  else
  {
    v13 = 8;
  }

  [chat sendSyndicationAction:v13 forMessagePartGUID:guid syndicatedMessagePartRange:{messagePartRange, v12}];
}

- (id)contextualChatItemsForFullScreenBalloonViewController:(id)controller
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  chatItems = [collectionViewController chatItems];

  return chatItems;
}

- (void)copyChatItem:(id)item
{
  itemCopy = item;
  if ([itemCopy canCopy] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    pasteboardItemProviders = [itemCopy pasteboardItemProviders];
    [generalPasteboard setItemProviders:pasteboardItemProviders];
  }
}

- (void)deleteChatItem:(id)item
{
  v7[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([itemCopy canDelete])
  {
    collectionViewController = [(CKCoreChatController *)self collectionViewController];
    v7[0] = itemCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [collectionViewController deleteSelectedChatItems:v6];
  }
}

- (void)transcriptCollectionViewController:(id)controller willDeleteChatItems:(id)items
{
  itemsCopy = items;
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  isFeatureEnabled = [mEMORY[0x1E69A7FC8] isFeatureEnabled];

  if (isFeatureEnabled)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__CKCoreChatController_transcriptCollectionViewController_willDeleteChatItems___block_invoke;
    v8[3] = &unk_1E72F0918;
    v8[4] = self;
    [itemsCopy enumerateObjectsUsingBlock:v8];
  }
}

void __79__CKCoreChatController_transcriptCollectionViewController_willDeleteChatItems___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 supportsCommunicationSafety])
  {
    v4 = [MEMORY[0x1E69A5B80] sharedInstance];
    v5 = [v3 commSafetyTransferGUID];
    v6 = [v4 transferForGUID:v5];

    if ([v6 commSafetySensitive] == 2)
    {
      v7 = [v3 isFromMe];
      v8 = [v6 localURL];
      v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8];
      if (v9)
      {
        v10 = v7 ^ 1u;
        v11 = objc_alloc(MEMORY[0x1E69A5B38]);
        v12 = [v3 commSafetyTransferGUID];
        v13 = [v11 initWithIdentifier:v12 imageData:v9];

        v14 = MEMORY[0x1E69A5B30];
        v15 = [v3 commSafetyMessageGUID];
        v16 = [*(a1 + 32) chat];
        v18[0] = v13;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        [v14 registerEvent:v10 eventType:2 messageGUID:v15 chat:v16 forImages:v17];
      }
    }
  }
}

- (void)transcriptCollectionViewControllerDidAddTapback:(id)tapback tapbackChatItem:(id)item
{
  itemCopy = item;
  if ([objc_opt_class() supportsTranscriptBackground])
  {
    transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
    iMChatItem = [itemCopy IMChatItem];
    guid = [iMChatItem guid];
    [transcriptBackground didAddTapbackToChatItemWithGUID:guid];
  }
}

- (void)transcriptCollectionViewControllerDidRemoveTapback:(id)tapback tapbackChatItem:(id)item
{
  itemCopy = item;
  if ([objc_opt_class() supportsTranscriptBackground])
  {
    transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
    iMChatItem = [itemCopy IMChatItem];
    guid = [iMChatItem guid];
    [transcriptBackground didRemoveTapbackFromChatItemWithGUID:guid];
  }
}

- (CKTranscriptBackgroundChannelController)transcriptBackgroundChannelController
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    v4 = +[CKTranscriptBackgroundChannelController sharedTranscriptBackgroundChannelController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)transcriptBackgroundViewDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(CKCoreChatController *)self delegate];
  [delegate chatControllerDidChangeBackground:self];

  if (changeCopy)
  {
    [(CKCoreChatController *)self _updateTranscriptDockingStateIfNeeded];
    [(CKScrollViewController *)self updateScrollGeometryForReason:@"TranscriptDockingChanged" withDuration:3 animationCurve:0.0];
  }

  if ([(CKCoreChatController *)self isInitialTranscriptBackgroundSetup]&& [(CKCoreChatController *)self _transcriptShouldBeDockedOnPush])
  {
    collectionView = [(CKCoreChatController *)self collectionView];
    [collectionView setTranscriptScrollIntent:9];
    v7 = +[CKScrollViewAnimationProperties unanimated];
    [collectionView enforceTranscriptScrollIntentWithAnimationProperties:v7];
    transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
    [transcriptBackground transcriptDockingStateDidChange:1];
  }

  [(CKCoreChatController *)self setIsInitialTranscriptBackgroundSetup:0];
}

- (void)transcriptCollectionViewController:(id)controller dockedStateDidChange:(BOOL)change
{
  changeCopy = change;
  if ([objc_opt_class() supportsTranscriptBackground])
  {
    transcriptBackground = [(CKCoreChatController *)self transcriptBackground];
    [transcriptBackground transcriptDockingStateDidChange:changeCopy];
  }
}

- (id)transcriptBackground:(id)background balloonAttributesForChatItemGuid:(id)guid
{
  guidCopy = guid;
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  v7 = [collectionViewController indexPathForChatItemGUID:guidCopy];

  if (v7)
  {
    collectionView = [(CKCoreChatController *)self collectionView];
    v9 = [collectionView cellForItemAtIndexPath:v7];

    v10 = [_TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes alloc];
    collectionView2 = [(CKCoreChatController *)self collectionView];
    v12 = [(CKTranscriptBackgroundBalloonAttributes *)v10 initWithChatItemGUID:guidCopy cell:v9 inCollectionView:collectionView2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGRect)transcriptBackground:(id)background convertRect:(CGRect)rect toView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  collectionView = [(CKCoreChatController *)self collectionView];
  [collectionView convertRect:viewCopy toView:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)transcriptBackground:(id)background enumerateVisbleBalloonChatItemGUIDsInReverse:(BOOL)reverse usingBlock:(id)block
{
  reverseCopy = reverse;
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v7 = MEMORY[0x1E695DFD8];
  collectionView = [(CKCoreChatController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v10 = [v7 setWithArray:indexPathsForVisibleItems];

  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  chatItems = [collectionViewController chatItems];
  v13 = chatItems;
  if (reverseCopy)
  {
    [chatItems reverseObjectEnumerator];
  }

  else
  {
    [chatItems objectEnumerator];
  }
  v14 = ;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    v26 = (blockCopy + 2);
    do
    {
      v19 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        iMChatItem = [*(*(&v28 + 1) + 8 * v19) IMChatItem];
        guid = [iMChatItem guid];

        if (guid)
        {
          collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
          v23 = [collectionViewController2 indexPathForChatItemGUID:guid];

          if (v23 && [v10 containsObject:v23])
          {
            collectionView2 = [(CKCoreChatController *)self collectionView];
            v25 = [collectionView2 cellForItemAtIndexPath:v23];

            if (v25)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                blockCopy[2](blockCopy, guid);
              }
            }
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }
}

- (CGSize)initialViewSize
{
  width = self->_initialViewSize.width;
  height = self->_initialViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CKMacToolbarController)macToolbarController
{
  WeakRetained = objc_loadWeakRetained(&self->_macToolbarController);

  return WeakRetained;
}

- (void)_updateNewComposeServiceStatusItem
{
  composeInitialStatusLabel = [(CKCoreChatController *)self composeInitialStatusLabel];

  if (composeInitialStatusLabel)
  {
    composeInitialStatusLabel2 = [(CKCoreChatController *)self composeInitialStatusLabel];
    [composeInitialStatusLabel2 removeFromSuperview];

    [(CKCoreChatController *)self setComposeInitialStatusLabel:0];
  }

  conversation = [(CKCoreChatController *)self conversation];
  isPending = [conversation isPending];

  if (isPending)
  {

    [(CKCoreChatController *)self _displayNewComposeServiceStatusItemIfNeeded];
  }
}

- (void)_displayNewComposeServiceStatusItemIfNeeded
{
  composeInitialStatusLabel = [(CKCoreChatController *)self composeInitialStatusLabel];
  [composeInitialStatusLabel removeFromSuperview];

  [(CKCoreChatController *)self setComposeInitialStatusLabel:0];
  _displayNewComposeSatelliteStatusItemIfNeeded = [(CKCoreChatController *)self _displayNewComposeSatelliteStatusItemIfNeeded];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRCSEncryptionEnabled = [mEMORY[0x1E69A8070] isRCSEncryptionEnabled];

  if (isRCSEncryptionEnabled && !_displayNewComposeSatelliteStatusItemIfNeeded)
  {
    conversation = [(CKCoreChatController *)self conversation];
    handles = [conversation handles];
    if ([handles count])
    {
      conversation2 = [(CKCoreChatController *)self conversation];
      isBusinessConversation = [conversation2 isBusinessConversation];

      if ((isBusinessConversation & 1) == 0)
      {

        [(CKCoreChatController *)self _displayNewComposeServiceStatusItem];
      }
    }

    else
    {
    }
  }
}

- (void)_displayNewComposeServiceStatusItem
{
  v3 = objc_alloc(MEMORY[0x1E69A5C98]);
  v4 = objc_opt_new();
  conversation = [(CKCoreChatController *)self conversation];
  sendingService = [conversation sendingService];
  v15 = [v3 _initWithItem:v4 service:sendingService handle:0];

  conversation2 = [(CKCoreChatController *)self conversation];
  sendingService2 = [conversation2 sendingService];
  if ([sendingService2 __ck_isMadrid])
  {
    [v15 setEncrypted:1];
  }

  else
  {
    conversation3 = [(CKCoreChatController *)self conversation];
    sendingService3 = [conversation3 sendingService];
    if ([sendingService3 __ck_isRCS])
    {
      conversation4 = [(CKCoreChatController *)self conversation];
      [v15 setEncrypted:{objc_msgSend(conversation4, "isSendingServiceEncrypted")}];
    }

    else
    {
      [v15 setEncrypted:0];
    }
  }

  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController balloonMaxWidth];
  v13 = [CKChatItem chatItemWithIMChatItem:v15 balloonMaxWidth:?];

  loadTranscriptText = [v13 loadTranscriptText];
  [(CKCoreChatController *)self _insertNewComposeInitialStatusLabelWithAttributedString:loadTranscriptText];
}

- (BOOL)_displayNewComposeSatelliteStatusItemIfNeeded
{
  conversation = [(CKCoreChatController *)self conversation];
  handles = [conversation handles];
  v5 = [handles count];

  if (v5 < 2)
  {
    isSatelliteConnectionActive = 0;
  }

  else
  {
    mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
    isSatelliteConnectionActive = [mEMORY[0x1E69A5B00] isSatelliteConnectionActive];
  }

  mEMORY[0x1E69A5B00]2 = [MEMORY[0x1E69A5B00] sharedInstance];
  if ([mEMORY[0x1E69A5B00]2 isSatelliteConnectionActive])
  {
    conversation2 = [(CKCoreChatController *)self conversation];
    recipients = [conversation2 recipients];
    if ([recipients count])
    {
      conversation3 = [(CKCoreChatController *)self conversation];
      v12 = [conversation3 isSatelliteSendingService] ^ 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (((isSatelliteConnectionActive | v12) & 1) == 0)
  {
    return 0;
  }

  composeInitialStatusLabel = [(CKCoreChatController *)self composeInitialStatusLabel];

  if (composeInitialStatusLabel)
  {
    return 0;
  }

  conversation4 = [(CKCoreChatController *)self conversation];
  sendingService = [conversation4 sendingService];
  iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];
  if (sendingService == iMessageService)
  {
    v21 = 1;
  }

  else
  {
    conversation5 = [(CKCoreChatController *)self conversation];
    sendingService2 = [conversation5 sendingService];
    iMessageLiteService = [MEMORY[0x1E69A5CA0] iMessageLiteService];
    v21 = sendingService2 == iMessageLiteService;
  }

  v22 = [CKUnavailableSatelliteForServiceChatItem newComposeTranscriptTextForiMessage:v21 isGroupChat:v5 > 1];
  [(CKCoreChatController *)self _insertNewComposeInitialStatusLabelWithAttributedString:v22];

  return 1;
}

- (void)_insertNewComposeInitialStatusLabelWithAttributedString:(id)string
{
  stringCopy = string;
  [(CKCoreChatController *)self _initialFrameForCollectionView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v25 = objc_alloc_init(CKTranscriptLabelCell);
  [(CKTranscriptLabelCell *)v25 setAttributedText:stringCopy];
  [(CKCoreChatController *)self calculateTranscriptMarginInsets];
  v12 = v11;
  v13 = v10 + v11 * -2.0;
  [stringCopy boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
  v15 = v14;

  view = [(CKCoreChatController *)self view];
  [view safeAreaInsets];
  v18 = v17;
  [(CKScrollViewController *)self topInsetPadding];
  v20 = v18 + v19;
  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 transcriptNewComposeServiceStatusTopPadding];
  v23 = v20 + v22;

  [(CKTranscriptLabelCell *)v25 setFrame:v6 + v12, v8 + v23, v13, v15];
  [(CKCoreChatController *)self setComposeInitialStatusLabel:v25];
  view2 = [(CKCoreChatController *)self view];
  [view2 insertSubview:v25 atIndex:0];
}

- (id)lazyCreatedActivePinningInputViewReasons
{
  activePinningInputViewReasons = [(CKCoreChatController *)self activePinningInputViewReasons];
  if (!activePinningInputViewReasons)
  {
    activePinningInputViewReasons = objc_alloc_init(MEMORY[0x1E696AB50]);
    [(CKCoreChatController *)self setActivePinningInputViewReasons:activePinningInputViewReasons];
  }

  return activePinningInputViewReasons;
}

- (void)beginPinningInputViewsForReason:(id)reason
{
  v13 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  lazyCreatedActivePinningInputViewReasons = [(CKCoreChatController *)self lazyCreatedActivePinningInputViewReasons];
  v6 = [lazyCreatedActivePinningInputViewReasons count];
  [lazyCreatedActivePinningInputViewReasons addObject:reasonCopy];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = lazyCreatedActivePinningInputViewReasons;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "We are now pinning input views for multiple reasons: %@", &v11, 0xCu);
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
        v11 = 138412290;
        v12 = reasonCopy;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Beginning pinning input views for reason %@", &v11, 0xCu);
      }
    }

    [(CKCoreChatController *)self _beginPinningInputViews];
    mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
    [mEMORY[0x1E69DCD68] _beginDisablingAnimations];
  }
}

- (void)endPinningInputViewsForReason:(id)reason
{
  v15 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  lazyCreatedActivePinningInputViewReasons = [(CKCoreChatController *)self lazyCreatedActivePinningInputViewReasons];
  if (([lazyCreatedActivePinningInputViewReasons containsObject:reasonCopy] & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = reasonCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Received request to end pinning input views for reason %@, but we are not currently pinning for that reason.", &v11, 0xCu);
    }

    goto LABEL_6;
  }

  [lazyCreatedActivePinningInputViewReasons removeObject:reasonCopy];
  v6 = [lazyCreatedActivePinningInputViewReasons count];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = reasonCopy;
        v13 = 2112;
        v14 = lazyCreatedActivePinningInputViewReasons;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Ending pinning input views for reason %@, but we are still pinning input views for reasons %@", &v11, 0x16u);
      }

LABEL_6:
    }
  }

  else
  {
    if (v7)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = reasonCopy;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Ending pinning input views for reason %@", &v11, 0xCu);
      }
    }

    [(CKCoreChatController *)self _endPinningInputViews];
    mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
    [mEMORY[0x1E69DCD68] _endDisablingAnimations];
  }

LABEL_16:
}

- (void)presentAttachmentDownloadFailedErrorForTransfer:(id)transfer
{
  transferCopy = transfer;
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"TAP_TO_DOWNLOAD_ITEM_FAILED_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"TAP_TO_DOWNLOAD_ITEM_FAILED_ALERT_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  mediaObjectToDownload = [(CKCoreChatController *)self mediaObjectToDownload];

  if (mediaObjectToDownload)
  {
    mediaObjectToDownload2 = [(CKCoreChatController *)self mediaObjectToDownload];
    transferGUID = [mediaObjectToDownload2 transferGUID];
    guid = [transferCopy guid];
    v12 = [transferGUID isEqualToString:guid];

    if (v12)
    {
      mediaObjectToDownload3 = [(CKCoreChatController *)self mediaObjectToDownload];
      mediaType = [mediaObjectToDownload3 mediaType];

      if (mediaType == 3)
      {
        v15 = @"TAP_TO_DOWNLOAD_IMAGE_FAILED_ALERT_MESSAGE";
        v16 = @"TAP_TO_DOWNLOAD_IMAGE_FAILED_ALERT_TITLE";
      }

      else
      {
        if (mediaType != 2)
        {
          goto LABEL_8;
        }

        v15 = @"TAP_TO_DOWNLOAD_VIDEO_FAILED_ALERT_MESSAGE";
        v16 = @"TAP_TO_DOWNLOAD_VIDEO_FAILED_ALERT_TITLE";
      }

      v17 = CKFrameworkBundle();
      v18 = [v17 localizedStringForKey:v16 value:&stru_1F04268F8 table:@"ChatKit"];

      v19 = CKFrameworkBundle();
      v20 = [v19 localizedStringForKey:v15 value:&stru_1F04268F8 table:@"ChatKit"];

      v7 = v20;
      v5 = v18;
    }
  }

LABEL_8:
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v7 preferredStyle:1];
  v22 = CKFrameworkBundle();
  v23 = [v22 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
  [v21 _addActionWithTitle:v23 style:0 handler:&__block_literal_global_293];

  navigationController = [(CKCoreChatController *)self navigationController];
  [navigationController presentViewController:v21 animated:1 completion:0];
}

- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)item displayConfiguration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  selfCopy = self;
  collectionViewController = [(CKCoreChatController *)selfCopy collectionViewController];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      [v10 prepareTextEffectsForModalPresentation];
    }

    sub_190A376C0(itemCopy, configurationCopy);
  }

  else
  {

    sub_190A376C0(itemCopy, configurationCopy);
  }
}

- (id)generateDefaultFullScreenBalloonViewControllerWithChatItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = _s7ChatKit41FullScreenBalloonViewDisplayConfigurationC20tapbackPickerContextACyFZ_0();
  v7 = [(CKCoreChatController *)selfCopy generateFullScreenBalloonViewControllerWithChatItem:itemCopy displayConfiguration:v6];

  return v7;
}

- (id)generateFullScreenBalloonViewControllerWithChatItem:(id)item displayConfiguration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = CKCoreChatController.generateFullScreenBalloonViewController(with:displayConfiguration:)(itemCopy, configurationCopy);

  return v9;
}

- (void)configureTapbackBackdropCaptureView
{
  selfCopy = self;
  CKCoreChatController.configureTapbackBackdropCaptureView()();
}

- (void)removeTapbackBackdropCaptureView
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedBehaviors = [v3 sharedBehaviors];
  if (sharedBehaviors)
  {
    v5 = sharedBehaviors;
    usesTapbackRefreshStyling = [sharedBehaviors usesTapbackRefreshStyling];

    if (usesTapbackRefreshStyling)
    {
      tapbackBackdropCaptureView = [(CKCoreChatController *)selfCopy tapbackBackdropCaptureView];
      [(UIView *)tapbackBackdropCaptureView removeFromSuperview];

      v8 = tapbackBackdropCaptureView;
    }

    else
    {
      v8 = selfCopy;
    }
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)chatSupportsStickerTapbacks
{
  selfCopy = self;
  conversation = [(CKCoreChatController *)selfCopy conversation];
  chat = [(CKConversation *)conversation chat];

  if (chat)
  {
    v5 = [(IMChat *)chat supportsCapabilities:0x10000];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendTapback:(id)tapback chatItem:(id)item isRemoval:(BOOL)removal
{
  tapbackCopy = tapback;
  itemCopy = item;
  selfCopy = self;
  sub_190A38878(tapbackCopy, itemCopy, removal);
}

- (id)currentlyFocusedChatItemForTapbackInTranscriptCollectionViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_190A38AA8(controllerCopy);
  v7 = v6;

  return v7;
}

- (void)fullScreenBalloonViewController:(id)controller didSelectTapback:(id)tapback
{
  controllerCopy = controller;
  tapbackCopy = tapback;
  selfCopy = self;
  sub_190A38FC0(controllerCopy, tapbackCopy);
}

- (void)fullScreenBalloonViewController:(id)controller didDeselectTapback:(id)tapback
{
  controllerCopy = controller;
  tapbackCopy = tapback;
  selfCopy = self;
  sub_190A3920C(controllerCopy, tapbackCopy);
}

- (void)fullScreenBalloonViewController:(id)controller requestedPresentPlugin:(id)plugin withPayloadID:(id)d
{
  dCopy = d;
  if (plugin)
  {
    v8 = sub_190D56D90();
    if (dCopy)
    {
LABEL_3:
      v9 = sub_190D56F10();
      dCopy = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  controllerCopy = controller;
  selfCopy = self;
  sub_190A3A6D8(v8, v9, dCopy);
}

- (void)fullScreenBalloonViewControllerRequestedAppCardDismiss:(id)dismiss
{
  selfCopy = self;
  inputController = [(CKCoreChatController *)selfCopy inputController];
  if (inputController)
  {
    v4 = inputController;
    aBlock[4] = nullsub_10;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_61;
    v5 = _Block_copy(aBlock);
    [(CKChatInputController *)v4 dismissAppCardIfNecessaryAnimated:1 completion:v5];

    _Block_release(v5);
  }

  else
  {
  }
}

- (id)associatedTapbackPileViewForFullScreenBalloonViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_190A39604(controllerCopy);
  v7 = v6;

  return v7;
}

- (void)fullScreenBalloonViewController:(id)controller updateTapbackPileAppearanceAsHidden:(BOOL)hidden
{
  controllerCopy = controller;
  selfCopy = self;
  sub_190A39868(controllerCopy, hidden);
}

- (void)fullScreenBalloonViewController:(id)controller updateTranscriptBalloonViewAppearanceAsHidden:(BOOL)hidden
{
  controllerCopy = controller;
  selfCopy = self;
  sub_190A39C18(controllerCopy, hidden);
}

- (id)fullScreenBalloonViewControllerSmartEmojiResponses:(id)responses
{
  responsesCopy = responses;
  selfCopy = self;
  chatItem = [responsesCopy chatItem];
  sub_190A37388(chatItem);

  v7 = sub_190D57160();

  return v7;
}

- (id)textInputContextIdentifierForFullScreenBalloonViewController:(id)controller
{
  selfCopy = self;
  textInputContextIdentifier = [(CKCoreChatController *)selfCopy textInputContextIdentifier];
  if (textInputContextIdentifier)
  {
    v5 = textInputContextIdentifier;
    sub_190D56F10();

    v6 = sub_190D56ED0();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)indexPathOfParentChatItemForIndexPath:(id)path
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  sub_190D51BC0();
  selfCopy = self;
  CKCoreChatController.indexPathOfParentChatItem(forIndexPath:)(v10);

  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = (*(v5 + 48))(v10, 1, v4);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_190D51BB0();
    v12(v10, v4);
    v14 = v15;
  }

  return v14;
}

@end
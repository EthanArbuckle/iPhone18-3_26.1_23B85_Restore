@interface CKCoreChatController
+ (BOOL)_sharedShouldSuppressTranscriptBackgroundStatesForConversation:(id)a3;
+ (BOOL)forceTranscriptBackgroundForTesting;
+ (BOOL)shouldSuppressTranscriptBackgroundEditingForConversation:(id)a3;
+ (BOOL)shouldSuppressTranscriptBackgroundRenderingForConversation:(id)a3;
+ (Class)transcriptControllerClass;
+ (double)transcriptDockingDelayInDays;
- (BOOL)_backgroundEligibleForTranscriptDocking;
- (BOOL)_conversationHasReplyEnabled;
- (BOOL)_currentBackgroundIsPhotos;
- (BOOL)_displayNewComposeSatelliteStatusItemIfNeeded;
- (BOOL)_haveUpdateAlready:(id)a3 forContact:(id)a4;
- (BOOL)_shouldAllowReply;
- (BOOL)_shouldAllowReplyFromLockScreen;
- (BOOL)_shouldProcessNotification:(id)a3;
- (BOOL)_shouldSuppressTranscriptBackgroundInUI;
- (BOOL)_transcriptContentSizeEligibleForTranscriptDocking:(CGSize)a3;
- (BOOL)_transcriptShouldBeDockedOnPush;
- (BOOL)accountCanCreateNickname;
- (BOOL)chatSupportsStickerTapbacks;
- (BOOL)conversationAllowedByScreenTime;
- (BOOL)isCollapsed;
- (BOOL)isFullScreenBalloonViewOnScreen;
- (BOOL)isReadOnly;
- (BOOL)isSafeToMarkAsRead;
- (BOOL)isTranscriptDockingEnabled;
- (BOOL)saveContact:(id)a3 shouldUpdate:(BOOL)a4;
- (BOOL)shouldDisplayTextEntry;
- (BOOL)shouldShowFullScreenAcknowledgmentPickerForChatItem:(id)a3;
- (BOOL)shouldShowSetBackgroundContextMenuItem;
- (BOOL)shouldShowTapbackAttributionForChatItem:(id)a3;
- (BOOL)shouldShowTapbackAttributionForFullScreenBalloonViewController:(id)a3;
- (BOOL)shouldShowTapbackPickerForChatItem:(id)a3;
- (BOOL)shouldShowTapbackPickerForFullScreenBalloonViewController:(id)a3;
- (BOOL)shouldUpdateScrollPositionForKeyboardScreenFrameChanges;
- (BOOL)showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:(id)a3;
- (BOOL)wantsReplyButton;
- (CGPoint)contentOffsetForIndexPath:(id)a3 viewToAlignWith:(id)a4 allowOverScroll:(BOOL)a5;
- (CGPoint)contentOffsetForIndexPath:(id)a3 viewToAlignWith:(id)a4 allowOverScroll:(BOOL)a5 scrollPosition:(unint64_t)a6;
- (CGRect)_initialFrameForCollectionView;
- (CGRect)_initialFrameForGradientReferenceView;
- (CGRect)fullScreenBalloonViewController:(id)a3 balloonFrameForChatItem:(id)a4;
- (CGRect)fullScreenBalloonViewControllerSafeAreaLayoutFrame:(id)a3;
- (CGRect)gradientFrameWithInsets:(UIEdgeInsets)a3;
- (CGRect)salientTranscriptBackgroundRect;
- (CGRect)transcriptBackground:(id)a3 convertRect:(CGRect)a4 toView:(id)a5;
- (CGSize)initialViewSize;
- (CKCoreChatController)initWithConversation:(id)a3;
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
- (id)_nicknameBannerUpdatesAndStyle:(unint64_t *)a3;
- (id)_retrieveNicknameBannerUpdatesIfNeeded:(unint64_t *)a3;
- (id)_threadChatItemForReplyCountChatItem:(id)a3 chatItems:(id)a4;
- (id)associatedTapbackPileViewForFullScreenBalloonViewController:(id)a3;
- (id)balloonViewForChatItem:(id)a3;
- (id)contextualChatItemsForFullScreenBalloonViewController:(id)a3;
- (id)contextualChatItemsForTapbackPicker;
- (id)createMutableContact:(id)a3 withNicknameUpdate:(id)a4 updateType:(unint64_t)a5 addHandleToContact:(BOOL)a6;
- (id)currentPosterBundleIdentifier;
- (id)currentlyFocusedChatItemForTapbackInTranscriptCollectionViewController:(id)a3;
- (id)fullScreenBalloonViewController:(id)a3 duplicatedViewForChatItem:(id)a4;
- (id)fullScreenBalloonViewControllerSmartEmojiResponses:(id)a3;
- (id)generateDefaultFullScreenBalloonViewControllerWithChatItem:(id)a3;
- (id)generateFullScreenBalloonViewControllerWithChatItem:(id)a3 displayConfiguration:(id)a4;
- (id)indexPathForMessageGUID:(id)a3 messagePartIndex:(int64_t)a4;
- (id)indexPathOfParentChatItemForIndexPath:(id)a3;
- (id)lazyCreatedActivePinningInputViewReasons;
- (id)posterSnapshotView;
- (id)scrollView;
- (id)textInputContextIdentifier;
- (id)textInputContextIdentifierForFullScreenBalloonViewController:(id)a3;
- (id)transcriptBackground:(id)a3 balloonAttributesForChatItemGuid:(id)a4;
- (id)transcriptCollectionViewControllerOuterEffectPresentingView:(id)a3;
- (id)transcriptContentOcclusionRects;
- (id)viewToInsertTranscriptCollectionViewBelow;
- (void)____removeCurrentBackgroundViewController;
- (void)___updateUIWithNewTranscriptBackground:(id)a3;
- (void)__createNewPosterRenderingBackground:(id)a3;
- (void)__updateUIWithPosterChannel:(id)a3;
- (void)_activeAppearanceTraitDidChange;
- (void)_cancelSatelliteFetch;
- (void)_chatRegistryDidReloadNotification:(id)a3;
- (void)_chatsRemergedNotification:(id)a3;
- (void)_cleanupOutgoingPosterSnapshot:(BOOL)a3 delay:(double)a4 animateAlongside:(id)a5;
- (void)_collectSuppressBackgroundEvent;
- (void)_configureTranscriptForBackground;
- (void)_conversationListFinishedMerging:(id)a3;
- (void)_deregisterSendProgressDelegate;
- (void)_didSendCompositionInConversation:(id)a3;
- (void)_dismissFullScreenBubbleViewControllerAnimated:(BOOL)a3 withSendAnimation:(BOOL)a4 completion:(id)a5;
- (void)_displayNameUpdatedNotification:(id)a3;
- (void)_displayNewComposeServiceStatusItem;
- (void)_displayNewComposeServiceStatusItemIfNeeded;
- (void)_downgradeStateChangedNotification:(id)a3;
- (void)_handleBlockedContactsChangedNotification:(id)a3;
- (void)_handleShowInlineReplyForItemWithIndexPath:(id)a3 replyTransitionProperties:(id)a4;
- (void)_handleStatusChangedNotification:(id)a3;
- (void)_handleStatusInvitationReceivedNotification:(id)a3;
- (void)_handleStatusStateChangedNotification:(id)a3;
- (void)_handleTapEventForBalloonView:(id)a3 atIndexPath:(id)a4;
- (void)_handleTranscriptBackgroundChangedNotification:(id)a3;
- (void)_handleUltraConstrainedStatusUpdatedNotification:(id)a3;
- (void)_increaseContrastDidChangeNotification:(id)a3;
- (void)_insertNewComposeInitialStatusLabelWithAttributedString:(id)a3;
- (void)_inviteToViewStatusesIfNeeded;
- (void)_lastAddressedInfoChangedNotification:(id)a3;
- (void)_localeDidChangeNotification:(id)a3;
- (void)_markAsReadIfNecessary;
- (void)_messageSomeonePressed;
- (void)_performResume;
- (void)_preferredServiceChangedNotification:(id)a3;
- (void)_reassignConversationWithDeferredReload:(BOOL)a3;
- (void)_refreshServiceForSending;
- (void)_refreshServiceForSendingForSatelliteStateChange;
- (void)_registerCommSafetyReceivedEventForTransfer:(id)a3 messageGUID:(id)a4;
- (void)_registerForChatItemTraitCollectionChanges;
- (void)_registerSendProgressDelegate;
- (void)_removeExistingCollectionViewController;
- (void)_satelliteStateChangedNotification:(id)a3;
- (void)_serviceSwitchNotification:(id)a3;
- (void)_setTranscriptCustomScrollAnimationFromAnimationProperties:(id)a3;
- (void)_setTranscriptDockingEnabled:(BOOL)a3;
- (void)_setupTranscriptBackgroundIfNeeded;
- (void)_startSatelliteFetchIfNecessary;
- (void)_statusDaemonDisconnectedNotification:(id)a3;
- (void)_transitionToPosterKitPosterConfiguration:(id)a3 onChannel:(id)a4;
- (void)_updateBalloonBackdropGroupTrait;
- (void)_updateChannelToUseConfigurationDuringTestWithCompletion:(id)a3;
- (void)_updateGradientReferenceViewForContentInset:(UIEdgeInsets)a3 withAnimationProperties:(id)a4;
- (void)_updateLastBackgroundTransferGUIDSetOnChannel:(id)a3;
- (void)_updateNewComposeServiceStatusItem;
- (void)_updateStaticPocketColor;
- (void)_updateTranscriptBackgroundFrame;
- (void)_updateTranscriptDockingStateIfNeeded;
- (void)_willSendComposition:(id)a3 inConversation:(id)a4;
- (void)beginPinningInputViewsForReason:(id)a3;
- (void)chat:(id)a3 progressDidChange:(float)a4 sendingMessages:(id)a5 sendCount:(unint64_t)a6 totalCount:(unint64_t)a7 finished:(BOOL)a8;
- (void)checkForSensitiveContentAndSendComposition:(id)a3 willPresentInterventionHandler:(id)a4 sendHandler:(id)a5;
- (void)configureTapbackBackdropCaptureView;
- (void)configureWithToolbarController:(id)a3;
- (void)contentInsetDidChangeWithAnimationProperties:(id)a3;
- (void)contentInsetWillChange:(UIEdgeInsets)a3 withAnimationProperties:(id)a4;
- (void)copyChatItem:(id)a3;
- (void)dealloc;
- (void)deleteChatItem:(id)a3;
- (void)didConfirmForInterventionViewController:(id)a3;
- (void)didRejectForInterventionViewController:(id)a3;
- (void)displayPollDetailsForChatItem:(id)a3 sourceView:(id)a4;
- (void)endPinningInputViewsForReason:(id)a3;
- (void)fullScreenBalloonViewController:(id)a3 didAppearAnimated:(BOOL)a4;
- (void)fullScreenBalloonViewController:(id)a3 didDeselectTapback:(id)a4;
- (void)fullScreenBalloonViewController:(id)a3 didSelectTapback:(id)a4;
- (void)fullScreenBalloonViewController:(id)a3 requestedPresentPlugin:(id)a4 withPayloadID:(id)a5;
- (void)fullScreenBalloonViewController:(id)a3 sendMessageHighlight:(BOOL)a4 forChatItem:(id)a5;
- (void)fullScreenBalloonViewController:(id)a3 updateTapbackPileAppearanceAsHidden:(BOOL)a4;
- (void)fullScreenBalloonViewController:(id)a3 updateTranscriptBalloonViewAppearanceAsHidden:(BOOL)a4;
- (void)fullScreenBalloonViewControllerDidDisappear:(id)a3;
- (void)fullScreenBalloonViewControllerHandleDismissTap:(id)a3;
- (void)fullScreenBalloonViewControllerRequestedAppCardDismiss:(id)a3;
- (void)handleContentSizeCategoryDidChangeNotification:(id)a3;
- (void)handleStickerTapbackConfirmCommSafetySendContext:(id)a3;
- (void)handleiOSConfirmCommSafetySendContext:(id)a3;
- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)a3;
- (void)keyboardWillHideViaGesture;
- (void)loadView;
- (void)parentControllerDidBecomeActive;
- (void)parentControllerDidResume:(BOOL)a3 animating:(BOOL)a4;
- (void)preferredSendingServiceChanged;
- (void)prepareForSuspend;
- (void)presentAttachmentDownloadFailedErrorForTransfer:(id)a3;
- (void)presentCommSafetyInterventionIfNecessaryForFileURL:(id)a3 withSendContext:(id)a4 completion:(id)a5;
- (void)presentCommSafetyInterventionWithSendContext:(id)a3;
- (void)presentMacToolbarController;
- (void)refreshServiceForSending;
- (void)registerNotifications;
- (void)removeTapbackBackdropCaptureView;
- (void)scrollToHighlightedMessageScrollContext:(id)a3;
- (void)sendStickerTapback:(id)a3 mediaObject:(id)a4 parentMessagePartChatItem:(id)a5;
- (void)sendTapback:(id)a3 chatItem:(id)a4 isRemoval:(BOOL)a5;
- (void)setCollectionViewController:(id)a3;
- (void)setConversation:(id)a3 forceReload:(BOOL)a4;
- (void)setHandleStatusAssertion:(id)a3;
- (void)setNeedsPosterSaliencyAndOcclusionRectUpdate;
- (void)setNewTranscriptBackground:(id)a3;
- (void)setupScrollingForKeyboardInteraction;
- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)a3;
- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)a3 displayConfiguration:(id)a4;
- (void)showFullScreenTapbackKeyboardInputForChatItem:(id)a3;
- (void)showInlineReplyControllerForChatItem:(id)a3 presentKeyboard:(BOOL)a4;
- (void)significantTimeChange;
- (void)systemApplicationDidResume;
- (void)systemApplicationWillEnterForeground;
- (void)transcriptBackground:(id)a3 enumerateVisbleBalloonChatItemGUIDsInReverse:(BOOL)a4 usingBlock:(id)a5;
- (void)transcriptBackgroundViewDidChange:(BOOL)a3;
- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 selectedItemAtIndexPath:(id)a5;
- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 showInlineReplyForItemWithIndexPath:(id)a5;
- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 tappedForChatItem:(id)a5;
- (void)transcriptCollectionViewController:(id)a3 collectionViewContentSizeDidChange:(CGSize)a4;
- (void)transcriptCollectionViewController:(id)a3 didInsertChatItems:(id)a4 associatedChatItems:(id)a5;
- (void)transcriptCollectionViewController:(id)a3 didRemoveChatItems:(id)a4 associatedChatItems:(id)a5;
- (void)transcriptCollectionViewController:(id)a3 dockedStateDidChange:(BOOL)a4;
- (void)transcriptCollectionViewController:(id)a3 requestDeleteJunkConversation:(id)a4;
- (void)transcriptCollectionViewController:(id)a3 requestRecoverJunkConversation:(id)a4;
- (void)transcriptCollectionViewController:(id)a3 viewedCommSafetyAssociatedItemsWithIndexPath:(id)a4;
- (void)transcriptCollectionViewController:(id)a3 viewedCommSafetyItemWithIndexPath:(id)a4;
- (void)transcriptCollectionViewController:(id)a3 willDeleteChatItems:(id)a4;
- (void)transcriptCollectionViewControllerDidAddTapback:(id)a3 tapbackChatItem:(id)a4;
- (void)transcriptCollectionViewControllerDidChangeAssociatedChatItem:(id)a3 chatItemDiff:(id)a4;
- (void)transcriptCollectionViewControllerDidInset:(id)a3;
- (void)transcriptCollectionViewControllerDidRemoveTapback:(id)a3 tapbackChatItem:(id)a4;
- (void)transcriptCollectionViewControllerDidSetChatItems:(id)a3;
- (void)transcriptCollectionViewControllerReportSpamButtonTapped:(id)a3;
- (void)transcriptCollectionViewControllerUnsubscribeButtonTapped:(id)a3;
- (void)transcriptCollectionViewControllerWillDisplayLastBalloon:(id)a3;
- (void)updateContact:(id)a3 withHandle:(id)a4;
- (void)updateTranscriptBackground:(id)a3 transferID:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidLayoutSubviews;
- (void)viewDidLayoutSubviewsForTranscriptCollectionViewController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKCoreChatController

- (id)textInputContextIdentifier
{
  v2 = [(CKCoreChatController *)self conversation];
  v3 = [v2 deviceIndependentID];
  v4 = CKTextInputIdentifier();

  return v4;
}

- (void)setNeedsPosterSaliencyAndOcclusionRectUpdate
{
  v2 = [(CKCoreChatController *)self transcriptBackground];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 setNeedsPosterSaliencyAndOcclusionRectUpdate];
    }
  }
}

- (BOOL)_backgroundEligibleForTranscriptDocking
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isTranscriptBackgroundsEnabled];

  return v4 && [(CKCoreChatController *)self _currentBackgroundIsPhotos];
}

- (id)currentPosterBundleIdentifier
{
  v3 = [(CKCoreChatController *)self transcriptBackground];
  v4 = [v3 rootViewController];
  if (!v4)
  {
    v13 = 0;
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(CKCoreChatController *)self transcriptBackground];
  v7 = [v6 rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(CKCoreChatController *)self transcriptBackground];
    v3 = [v9 rootViewController];

    v10 = [v3 channelViewController];
    v11 = [v10 channel];
    v12 = [v11 posterConfiguration];
    v13 = [v12 providerBundleIdentifier];

LABEL_5:
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)scrollView
{
  if (IMEnableModernTranscript())
  {
    v3 = 0;
  }

  else
  {
    v4 = [(CKCoreChatController *)self collectionViewController];
    v3 = [v4 collectionView];
  }

  return v3;
}

- (CKCoreChatControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isFullScreenBalloonViewOnScreen
{
  v2 = [(CKCoreChatController *)self fullScreenBalloonViewController];
  v3 = [v2 view];
  v4 = [v3 superview];
  v5 = v4 != 0;

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

- (void)_updateChannelToUseConfigurationDuringTestWithCompletion:(id)a3
{
  v4 = a3;
  if (_updateChannelToUseConfigurationDuringTestWithCompletion__onceToken != -1)
  {
    [CKCoreChatController(Backgrounds) _updateChannelToUseConfigurationDuringTestWithCompletion:];
  }

  if (_updateChannelToUseConfigurationDuringTestWithCompletion__prepareChannelLogToken != -1)
  {
    [CKCoreChatController(Backgrounds) _updateChannelToUseConfigurationDuringTestWithCompletion:];
  }

  v5 = [(CKCoreChatController *)self conversation];
  v6 = [v5 chat];
  v7 = [v6 guid];

  if (v7)
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
    v13 = v7;
    v15 = v8;
    v14 = v4;
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

+ (BOOL)_sharedShouldSuppressTranscriptBackgroundStatesForConversation:(id)a3
{
  v5 = [a1 supportsTranscriptBackground];
  result = 1;
  if (a3 && v5)
  {
    v7 = [a1 syncedSettingsManager];
    v8 = [v7 settingValueForKey:9];
    v9 = [v8 BOOLValue];

    if ((v9 & 1) == 0)
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Backgrounds disabled in Settings; suppress in UI.", v11, 2u);
      }
    }

    return v9 ^ 1;
  }

  return result;
}

+ (BOOL)shouldSuppressTranscriptBackgroundEditingForConversation:(id)a3
{
  v4 = a3;
  if ([a1 _sharedShouldSuppressTranscriptBackgroundStatesForConversation:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 shouldSuppressTranscriptBackgroundEditing];
  }

  return v5;
}

+ (BOOL)shouldSuppressTranscriptBackgroundRenderingForConversation:(id)a3
{
  v4 = a3;
  if ([a1 _sharedShouldSuppressTranscriptBackgroundStatesForConversation:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 shouldSuppressTranscriptBackgroundRendering];
  }

  return v5;
}

- (BOOL)shouldShowSetBackgroundContextMenuItem
{
  v3 = objc_opt_class();
  v4 = [(CKCoreChatController *)self conversation];
  LOBYTE(v3) = [v3 shouldSuppressTranscriptBackgroundEditingForConversation:v4];

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

  v3 = [objc_opt_class() syncedSettingsManager];
  [v3 addObserver:self selector:sel__handleTranscriptBackgroundChangedNotification_ key:9];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_2;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isTranscriptBackgroundsEnabled];

  if (v6)
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
      v8 = [(CKCoreChatController *)self conversation];
      v9 = [v8 chat];
      v10 = [v9 transcriptBackgroundPath];

      if (v10)
      {
        [(CKCoreChatController *)self _collectSuppressBackgroundEvent];
      }

      goto LABEL_33;
    }

    v11 = [(CKCoreChatController *)self conversation];
    v12 = [v11 chat];

    if (!v12)
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

    v13 = [(CKCoreChatController *)self conversation];
    v14 = [v13 chat];
    v15 = [v14 transcriptBackgroundPath];
    if (v15)
    {
      v16 = v15;
      v17 = [MEMORY[0x1E696AC08] defaultManager];
      v18 = [(CKCoreChatController *)self conversation];
      v19 = [v18 chat];
      v20 = [v19 transcriptBackgroundPath];
      v21 = [v17 fileExistsAtPath:v20];

      if (v21)
      {
LABEL_16:
        v23 = [(CKCoreChatController *)self conversation];
        v24 = [v23 transcriptBackground];

        v25 = [(CKCoreChatController *)self conversation];
        v26 = [v25 transcriptBackgroundGUID];

        v27 = [(CKCoreChatController *)self _lastBackgroundTransferGUIDSetOnChannel];
        v28 = +[CKUIBehavior sharedBehaviors];
        v29 = [v28 isRunningInStoreDemoMode];

        objc_initWeak(&buf, self);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_236;
        v46[3] = &unk_1E72EE918;
        v30 = v26;
        v47 = v30;
        v31 = v27;
        v48 = v31;
        v52 = v29;
        v32 = v24;
        v49 = v32;
        v50 = self;
        objc_copyWeak(&v51, &buf);
        v33 = _Block_copy(v46);
        v34 = [(CKCoreChatController *)self conversation];
        v35 = [v34 chat];
        v36 = [v35 guid];

        v37 = [(CKCoreChatController *)self transcriptBackgroundChannelController];
        v38 = [v37 channelForChatGUID:v36];

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

          v42 = [(CKCoreChatController *)self transcriptBackgroundChannelController];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __71__CKCoreChatController_Backgrounds___setupTranscriptBackgroundIfNeeded__block_invoke_239;
          v43[3] = &unk_1E72EE940;
          v44 = v33;
          [v42 channelForChatGUID:v36 completion:v43];
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

      v13 = [(CKCoreChatController *)self conversation];
      v14 = [v13 chat];
      [v14 refetchLocalTranscriptBackgroundAssetIfNecessary];
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
  v4 = [(CKCoreChatController *)self conversation];
  LOBYTE(v3) = [v3 shouldSuppressTranscriptBackgroundRenderingForConversation:v4];

  return v3;
}

- (id)_lastBackgroundTransferGUIDSetOnChannel
{
  v2 = [(CKCoreChatController *)self chat];
  v3 = [v2 transcriptBackgroundChannelTransferGUID];

  return v3;
}

- (void)_updateLastBackgroundTransferGUIDSetOnChannel:(id)a3
{
  v4 = a3;
  v5 = [(CKCoreChatController *)self chat];
  [v5 updateTranscriptBackgroundChannelTransferGUID:v4];
}

- (void)_handleTranscriptBackgroundChangedNotification:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v56 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received notification %@.", buf, 0xCu);
  }

  if (-[CKCoreChatController _shouldProcessNotification:](self, "_shouldProcessNotification:", v4) && [objc_opt_class() supportsTranscriptBackground])
  {
    v6 = [(CKCoreChatController *)self currentPosterBundleIdentifier];
    v7 = v6;
    if (v6)
    {
      v53 = @"posterName";
      v54 = v6;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    }

    else
    {
      v49 = 0;
    }

    v8 = [MEMORY[0x1E695DF00] date];
    [CKPowerLog sendTranscriptVisibilityChangedEvent:v8 event:1 metadata:v49];

    v9 = [(CKCoreChatController *)self conversation];
    v48 = [v9 transcriptBackground];

    v10 = [(CKCoreChatController *)self transcriptBackgroundChannelController];
    v11 = [(CKCoreChatController *)self conversation];
    v12 = [v11 chat];
    v13 = [v12 guid];
    v14 = [v10 channelForChatGUIDBlockingIfNeeded:v13];

    if ([(CKCoreChatController *)self _shouldSuppressTranscriptBackgroundInUI])
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "CKCoreChatController will not configure for a background because we have determined that it should be suppressed. Transitioning to nil.", buf, 2u);
      }

      [(CKCoreChatController *)self _transitionToPosterKitPosterConfiguration:0 onChannel:v14];
      v16 = [MEMORY[0x1E695DF00] date];
      [CKPowerLog sendTranscriptVisibilityChangedEvent:v16 event:0 metadata:0];

      v17 = [(CKCoreChatController *)self conversation];
      [_TtC7ChatKit31CKTranscriptBackgroundAnalytics trackBackgroundChangedFrom:v48 to:0 inConversation:v17 context:2];

      [(CKCoreChatController *)self _collectSuppressBackgroundEvent];
      goto LABEL_51;
    }

    v18 = [(CKCoreChatController *)self conversation];
    v19 = [v18 transcriptBackground];

    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v56 = v19;
      _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Transitioning to background configuration: %@.", buf, 0xCu);
    }

    if (!v19)
    {
      [(CKCoreChatController *)self _transitionToPosterKitPosterConfiguration:0 onChannel:v14];
      v30 = [MEMORY[0x1E695DF00] date];
      [CKPowerLog sendTranscriptVisibilityChangedEvent:v30 event:0 metadata:0];

      v47 = [(CKCoreChatController *)self conversation];
      [_TtC7ChatKit31CKTranscriptBackgroundAnalytics trackBackgroundChangedFrom:v48 to:0 inConversation:v47 context:2];
LABEL_50:

LABEL_51:
      goto LABEL_52;
    }

    v21 = [(CKCoreChatController *)self conversation];
    v47 = [v21 transcriptBackgroundGUID];

    v46 = [(CKCoreChatController *)self _lastBackgroundTransferGUIDSetOnChannel];
    if (v14 && [v46 isEqualToString:v47])
    {
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Trying to use poster configuration that is cached on channel since IDs match.", buf, 2u);
      }

      v23 = [v14 posterConfiguration];
      if (v23)
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

    v26 = [v19 editorConfiguration];
    v27 = v26 == 0;

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

      v32 = [v19 posterData];
      Helper_x8__OBJC_CLASS___PRSPosterArchiver = gotLoadHelper_x8__OBJC_CLASS___PRSPosterArchiver(v33);
      v36 = *(v35 + 4088);
      v50 = 0;
      v23 = [v36 unarchiveConfigurationFromData:v32 format:-1 error:{&v50, Helper_x8__OBJC_CLASS___PRSPosterArchiver}];
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

      v23 = [v19 editorConfiguration];
    }

    if (!v23)
    {
      v44 = IMLogHandleForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [CKCoreChatController(Backgrounds) _handleTranscriptBackgroundChangedNotification:v44];
      }

      [(CKCoreChatController *)self _transitionToPosterKitPosterConfiguration:0 onChannel:v14];
      v45 = [MEMORY[0x1E695DF00] date];
      [CKPowerLog sendTranscriptVisibilityChangedEvent:v45 event:0 metadata:0];

      v23 = [(CKCoreChatController *)self conversation];
      [_TtC7ChatKit31CKTranscriptBackgroundAnalytics trackBackgroundChangedFrom:v48 to:0 inConversation:v23 context:2];
      goto LABEL_49;
    }

LABEL_42:
    [(CKCoreChatController *)self _transitionToPosterKitPosterConfiguration:v23 onChannel:v14];
    v39 = [v23 providerBundleIdentifier];
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = @"und";
    }

    v51 = @"posterName";
    v52 = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v42 = [MEMORY[0x1E695DF00] date];
    [CKPowerLog sendTranscriptVisibilityChangedEvent:v42 event:0 metadata:v41];

    v43 = [(CKCoreChatController *)self conversation];
    [_TtC7ChatKit31CKTranscriptBackgroundAnalytics trackBackgroundChangedFrom:v48 to:v19 withNewPosterConfiguration:v23 inConversation:v43 context:2];

LABEL_49:
    goto LABEL_50;
  }

LABEL_52:
}

- (void)_collectSuppressBackgroundEvent
{
  v3 = [(CKCoreChatController *)self conversation];
  v2 = [v3 transcriptBackgroundGUID];
  [CKCommSafetyAnalytics recordObscuredViewShownWithContentType:1 subcontentType:2 identifier:v2];
}

- (BOOL)_shouldProcessNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(CKCoreChatController *)self conversation];

  if (v6 == v5)
  {
    v8 = 1;
  }

  else
  {
    v7 = [v4 name];
    v8 = [v7 isEqualToString:@"SSTranscriptBackgroundsSettingNotification"];
  }

  return v8;
}

- (void)_transitionToPosterKitPosterConfiguration:(id)a3 onChannel:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKCoreChatController *)self transcriptBackgroundChannelController];
  v9 = [(CKCoreChatController *)self conversation];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 chat];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 guid];
      if (v13)
      {
        v21 = [v12 deviceIndependentID];
        if (v6)
        {
          v23 = [v10 transcriptBackgroundGUID];
        }

        else
        {
          v23 = 0;
        }

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v32 = "[CKCoreChatController(Backgrounds) _transitionToPosterKitPosterConfiguration:onChannel:]";
            v33 = 2112;
            v34 = v6;
            _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "%s Will update channel with configuration %@", buf, 0x16u);
          }
        }

        v17 = [(CKCoreChatController *)self _lastBackgroundTransferGUIDSetOnChannel];
        v18 = v17;
        if (v7 && (!(v23 | v17) || [v17 isEqualToString:v23]))
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

          [(CKCoreChatController *)self __updateUIWithPosterChannel:v7];
        }

        else
        {
          objc_initWeak(buf, self);
          v20 = [(CKCoreChatController *)self transcriptBackground];
          [v20 channelControllerWillUpdate];

          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __89__CKCoreChatController_Backgrounds___transitionToPosterKitPosterConfiguration_onChannel___block_invoke;
          v24[3] = &unk_1E72EE990;
          v25 = v7;
          v26 = v6;
          objc_copyWeak(&v30, buf);
          v27 = v23;
          v28 = v8;
          v29 = v13;
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
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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

- (void)__updateUIWithPosterChannel:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 posterConfiguration];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CKCoreChatController *)self transcriptBackground];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v5 posterConfiguration];
      *buf = 136315650;
      v32 = "[CKCoreChatController(Backgrounds) __updateUIWithPosterChannel:]";
      v33 = 2112;
      v34 = v5;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%s channel %@ channel config %@", buf, 0x20u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__CKCoreChatController_Backgrounds____updateUIWithPosterChannel___block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  v12 = [(CKCoreChatController *)self transcriptBackground];
  v13 = [v12 rootViewController];
  if (v13)
  {
    v14 = [(CKCoreChatController *)self transcriptBackground];
    v15 = [v14 rootViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = [(CKCoreChatController *)self transcriptBackground];
      v18 = [v17 rootViewController];

      v19 = [v18 channelViewController];
      v20 = [v19 channel];
      v21 = [v20 channelIdentifier];
      v22 = [v5 channelIdentifier];
      v23 = v21 != v22;

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
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Unable to find a CKPosterRenderingTranscriptBackground on the chat controller", buf, 2u);
    }

LABEL_20:
  }

  if (v7 && v8)
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

  if (v8)
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

  if (v8)
  {
    v27 = v7;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    if (v7 && v8 == 0)
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

- (void)__createNewPosterRenderingBackground:(id)a3
{
  v4 = a3;
  v5 = [[_TtC7ChatKit33CKTranscriptBackgroundEnvironment alloc] initWithTranscriptLayoutDelegate:self];
  v6 = [[CKPosterRenderingTranscriptBackground alloc] initWithChannel:v4 environment:v5];
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
  v2 = [(CKCoreChatController *)self transcriptBackground];
  v4 = [v2 rootViewController];

  [v4 willMoveToParentViewController:0];
  v3 = [v4 view];
  [v3 removeFromSuperview];

  [v4 removeFromParentViewController];
}

- (void)___updateUIWithNewTranscriptBackground:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKCoreChatController *)self transcriptBackground];

  v6 = IMLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5 == v4)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Asked to update UI but background is the same, returning", buf, 2u);
    }

    if (!v4)
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
      v28 = v4;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Asked to update UI to new transcript background: %@", buf, 0xCu);
    }

    v8 = [(CKCoreChatController *)self _backgroundEligibleForTranscriptDocking];
    v9 = [(CKCoreChatController *)self transcriptBackground];

    if (v9)
    {
      v10 = [(CKCoreChatController *)self transcriptBackground];
      v11 = [v10 rootViewController];

      if (v11)
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

    [(CKCoreChatController *)self setTranscriptBackground:v4];
    v13 = [(CKCoreChatController *)self transcriptBackground];

    if (v13)
    {
      v14 = [(CKCoreChatController *)self transcriptBackground];
      v15 = [v14 rootViewController];

      if (v15)
      {
        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v28 = v15;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Adding background view controller to transcript: %@", buf, 0xCu);
        }

        [(CKCoreChatController *)self addChildViewController:v15];
        v17 = [(CKCoreChatController *)self view];
        v18 = [v15 view];
        [v17 addSubview:v18];

        v19 = [(CKCoreChatController *)self view];
        v20 = [v15 view];
        [v19 sendSubviewToBack:v20];

        v21 = [v15 view];
        v22 = [(CKCoreChatController *)self view];
        [v21 __ck_makeEdgesEqualTo:v22];

        [v15 didMoveToParentViewController:self];
        v23 = 1.0;
        if (![(CKCoreChatController *)self isCollapsed])
        {
          v24 = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];
          if (v24)
          {
            v23 = 1.0;
          }

          else
          {
            v23 = 0.0;
          }
        }

        v25 = [v15 view];
        [v25 setAlpha:v23];
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
    [(CKCoreChatController *)self transcriptBackgroundViewDidChange:v8 ^ [(CKCoreChatController *)self _backgroundEligibleForTranscriptDocking]];
  }
}

void __76__CKCoreChatController_Backgrounds_____updateUIWithNewTranscriptBackground___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) transcriptBackground];
  v1 = [v3 rootViewController];
  v2 = [v1 view];
  [v2 setAlpha:1.0];
}

- (void)_cleanupOutgoingPosterSnapshot:(BOOL)a3 delay:(double)a4 animateAlongside:(id)a5
{
  v6 = a3;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__CKCoreChatController_Backgrounds___cleanupOutgoingPosterSnapshot_delay_animateAlongside___block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  if (v6)
  {
    v10 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __91__CKCoreChatController_Backgrounds___cleanupOutgoingPosterSnapshot_delay_animateAlongside___block_invoke_2;
    v13[3] = &unk_1E72ED1C8;
    v13[4] = self;
    v14 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__CKCoreChatController_Backgrounds___cleanupOutgoingPosterSnapshot_delay_animateAlongside___block_invoke_3;
    v11[3] = &unk_1E72ED1F0;
    v12 = v9;
    [v10 animateWithDuration:0 delay:v13 options:v11 animations:0.3 completion:a4];
  }

  else
  {
    if (v8)
    {
      v8[2](v8);
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
  v3 = [(CKCoreChatController *)self collectionViewController];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 transcriptIdentifier];
    [(UIViewController *)self setBalloonBackdropGroupTraitOverrideWithUniqueContextString:v4];

    v3 = v5;
  }
}

- (void)_configureTranscriptForBackground
{
  v3 = [(CKCoreChatController *)self collectionViewController];
  v4 = [(CKCoreChatController *)self transcriptBackground];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [v3 setTranscriptBackgroundColor:v5];

    v6 = [(CKCoreChatController *)self transcriptBackground];
    [v6 luminance];
    [v3 setTranscriptBackgroundLuminance:?];
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
    v9 = [v8 theme];
    v10 = [v9 transcriptBackgroundColor];
    [v3 setTranscriptBackgroundColor:v10];

    [v3 updateTranscriptBackgroundLuminanceToMatchBackgroundColor];
  }
}

- (void)updateTranscriptBackground:(id)a3 transferID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 isRunningInStoreDemoMode];

  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "In store demo mode, not archiving/sending background", buf, 2u);
    }
  }

  else if (v6)
  {
    objc_initWeak(buf, self);
    v11 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__CKCoreChatController_Backgrounds__updateTranscriptBackground_transferID___block_invoke;
    block[3] = &unk_1E72ED660;
    v16 = v6;
    objc_copyWeak(&v18, buf);
    v17 = v7;
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

    v13 = [(CKCoreChatController *)self conversation];
    v14 = [v13 chat];

    [v14 setTranscriptBackgroundAndSendToChat:0 transferID:v7];
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
  v6 = [(CKCoreChatController *)self collectionView];
  [v6 effectiveBalloonCellContentAlignmentInsets];
  v8 = v7;
  v10 = v9;

  v11 = v8 + v10 + v5 * 2.0;
  v12 = [(CKCoreChatController *)self collectionView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;

  v17 = [(CKCoreChatController *)self collectionView];
  [v17 safeAreaInsets];
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
  v4 = [(CKCoreChatController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(CKCoreChatController *)self view];
  [v13 safeAreaInsets];
  v15 = v14;
  v17 = v16;

  v18 = [(CKCoreChatController *)self splitViewController];
  if (([v18 isCollapsed] & 1) == 0 && v15 > 0.0)
  {
    *v30 = v6;
    *&v30[1] = v8;
    *&v30[2] = v15;
    *&v30[3] = v12;
    v19 = [MEMORY[0x1E696B098] valueWithBytes:v30 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v3 setObject:v19 forKeyedSubscript:@"primary"];
  }

  v20 = [(CKCoreChatController *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v23 = [(CKCoreChatController *)self delegate];
    v24 = [v23 hasPresentedInspectorForChatController:self];

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
  v2 = [(CKCoreChatController *)self transcriptBackground];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 snapshotView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNewTranscriptBackground:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringGUID];
  v6 = [(CKCoreChatController *)self conversation];
  [v6 setPendingTranscriptBackground:v4 transferID:v5];

  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__CKCoreChatController_Backgrounds__setNewTranscriptBackground___block_invoke;
    v7[3] = &unk_1E72EE9E0;
    v7[4] = self;
    v8 = v5;
    [v4 createBackgroundWithWatchDataWithCompletion:v7];
  }

  else
  {
    [(CKCoreChatController *)self updateTranscriptBackground:0 transferID:v5];
  }
}

- (BOOL)isTranscriptDockingEnabled
{
  v2 = [(CKCoreChatController *)self collectionViewController];
  v3 = [v2 isDockingEnabled];

  return v3;
}

- (void)_setTranscriptDockingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKCoreChatController *)self collectionViewController];
  [v4 setDockingEnabled:v3];
}

- (void)_updateTranscriptDockingStateIfNeeded
{
  v3 = [(CKCoreChatController *)self _backgroundEligibleForTranscriptDocking];
  if (v3 != [(CKCoreChatController *)self isTranscriptDockingEnabled])
  {

    [(CKCoreChatController *)self _setTranscriptDockingEnabled:v3];
  }
}

- (BOOL)_currentBackgroundIsPhotos
{
  v2 = [(CKCoreChatController *)self currentPosterBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];

  return v3;
}

- (BOOL)_transcriptContentSizeEligibleForTranscriptDocking:(CGSize)a3
{
  height = a3.height;
  v4 = [(CKCoreChatController *)self _backgroundEligibleForTranscriptDocking];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 textBalloonMinHeight];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 extraLargeTranscriptSpace];
    v10 = v7 + v9 * 2.0;

    LOBYTE(v4) = height > v10;
  }

  return v4;
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

  v3 = [(CKCoreChatController *)self conversation];
  v4 = [v3 hasUnreadMessages];

  if (v4)
  {
    return 0;
  }

  v6 = [(CKCoreChatController *)self conversation];
  v7 = [v6 date];

  [objc_opt_class() transcriptDockingDelayInDays];
  if (v7 && (v9 = v8, [CKUtilities _daysSinceDate:v7], v10 < v9))
  {
    v5 = 0;
  }

  else
  {
    v11 = [objc_opt_class() syncedSettingsManager];
    v12 = [v11 settingValueForKey:10];
    v5 = [v12 BOOLValue];
  }

  return v5;
}

- (void)_updateTranscriptBackgroundFrame
{
  v3 = [(CKCoreChatController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v14 = [(CKCoreChatController *)self transcriptBackground];
  v12 = [v14 rootViewController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (void)presentCommSafetyInterventionWithSendContext:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Asked to present intervention with context type {%@}.", &v10, 0xCu);
  }

  v8 = CKCommSafetySendContextDictionary(v4);
  v9 = [MEMORY[0x1E69CA8E8] viewControllerWithWorkflow:1 contextDictionary:v8];
  [v9 setInterventionDelegate:self];
  [(CKCoreChatController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)presentCommSafetyInterventionIfNecessaryForFileURL:(id)a3 withSendContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A7FC8] sharedManager];
  if ([v11 checksForSensitivityOnSend])
  {
    v12 = [MEMORY[0x1E69A7FC0] sharedManager];
    v13 = [(CKCoreChatController *)self conversation];
    v14 = [v13 chat];
    v15 = [v14 chatIdentifier];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __114__CKCoreChatController_UserSafety__presentCommSafetyInterventionIfNecessaryForFileURL_withSendContext_completion___block_invoke;
    v16[3] = &unk_1E72F0178;
    v17 = v9;
    v18 = self;
    v19 = v10;
    [v12 isSensitiveContent:v8 withChatID:v15 completionHandler:v16];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
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

- (void)checkForSensitiveContentAndSendComposition:(id)a3 willPresentInterventionHandler:(id)a4 sendHandler:(id)a5
{
  v96 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v46 = a4;
  v48 = a5;
  v49 = [MEMORY[0x1E69A7FC8] sharedManager];
  v7 = [v50 shelfPluginPayload];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [objc_msgSend(v50 "balloonViewClass")];
  }

  v9 = [v49 checksForSensitivityOnSend];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (v9)
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

  if ((v9 & v8) == 1)
  {
    v13 = [MEMORY[0x1E69A7FC0] sharedManager];
    v14 = [(CKCoreChatController *)self conversation];
    v15 = [v14 chat];
    v16 = [v15 chatIdentifier];

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v20 = dispatch_group_create();
    v21 = [(CKCoreChatController *)self inputController];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke;
    v85[3] = &unk_1E72F01C8;
    v22 = v20;
    v86 = v22;
    v23 = v13;
    v87 = v23;
    v24 = v16;
    v88 = v24;
    v25 = v17;
    v89 = v25;
    v43 = v18;
    v90 = v43;
    [v21 requestPhotoBrowserToEnumerateSelectedImagesUsingBlock:v85];

    v26 = [v50 mediaObjects];
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
    [v26 enumerateObjectsUsingBlock:v79];

    v45 = [v50 shelfPluginPayload];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v29 = v45;
    if ((isKindOfClass & 1) == 0)
    {
      v29 = 0;
    }

    v44 = v29;
    if (v44)
    {
      v30 = [v44 mediaObjectFromPayload];
      if (v30 || ([v50 shelfMediaObject], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        dispatch_group_enter(v27);
        v31 = [v30 fileURL];
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_5;
        v74[3] = &unk_1E72F01F0;
        v75 = v55;
        v76 = v30;
        v77 = v54;
        v78 = v27;
        obj = v30;
        [v53 isSensitiveContent:v31 withChatID:v52 completionHandler:v74];
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
              v42 = [v41 fileURL];
              v65[0] = v39;
              v65[1] = 3221225472;
              v65[2] = __122__CKCoreChatController_UserSafety__checkForSensitiveContentAndSendComposition_willPresentInterventionHandler_sendHandler___block_invoke_6;
              v65[3] = &unk_1E72F01F0;
              v66 = v55;
              v67 = v41;
              v68 = v54;
              v69 = v27;
              [v53 isSensitiveContent:v42 withChatID:v52 completionHandler:v65];
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
    v60 = v50;
    v61 = v43;
    v62 = self;
    v63 = v46;
    v64 = v48;
    v33 = v43;
    v34 = v54;
    v35 = v55;
    v36 = v27;
    dispatch_async(v32, block);
  }

  else
  {
    (*(v48 + 2))(v48, v50);
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

- (void)didConfirmForInterventionViewController:(id)a3
{
  v4 = a3;
  v17 = [v4 contextDictionary];
  v5 = [v17 objectForKey:@"CKCommSafetyContextKeyiOSSend"];
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
  v8 = [v17 objectForKey:@"CKCommSafetyContextKeyStickerDropSend"];
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
  v11 = [v17 objectForKey:@"CKCommSafetyContextKeyAutomaticallyPlacedStickerSend"];
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
  v14 = [v17 objectForKey:@"CKCommSafetyContextKeyStickerTapbackSend"];
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
  [(CKCoreChatController *)self _dismissInterventionController:v4];

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

- (void)didRejectForInterventionViewController:(id)a3
{
  v5 = a3;
  v4 = [v5 contextDictionary];
  [(CKCoreChatController *)self clearStagedSensitiveContentUsingContextDictionary:v4];

  [(CKCoreChatController *)self _dismissInterventionController:v5];
}

- (void)handleiOSConfirmCommSafetySendContext:(id)a3
{
  v4 = [a3 composition];
  [(CKCoreChatController *)self sendComposition:v4];
}

- (void)handleStickerTapbackConfirmCommSafetySendContext:(id)a3
{
  v4 = a3;
  v7 = [v4 stickerTapback];
  v5 = [v4 parentMessagePartChatItem];

  v6 = [(CKCoreChatController *)self chat];
  [v6 sendTapback:v7 forChatItem:v5];
}

- (id)_nicknameBannerUpdatesAndStyle:(unint64_t *)a3
{
  v53 = *MEMORY[0x1E69E9840];
  if (!IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() || (-[CKCoreChatController conversation](self, "conversation"), v3 = objc_claimAutoreleasedReturnValue(), [v3 chat], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasKnownParticipantsCache"), v4, v3, (v5 & 1) != 0))
  {
    v38 = [MEMORY[0x1E69A5C10] sharedInstance];
    v6 = [(CKCoreChatController *)self conversation];
    v7 = [v6 recipients];

    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v7;
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
          v12 = [v9 defaultIMHandle];
          v13 = [v9 defaultIMHandle];
          v42 = [v13 ID];

          v14 = [v9 defaultIMHandle];
          v43 = 0;
          v15 = [v38 nicknameUpdateForHandle:v14 nicknameIfAvailable:&v43];
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
            [v18 setHandle:v12];
            [v18 setUpdateType:v15];
            if (v16)
            {
              [v18 setNickname:v16];
            }

            v19 = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
            v20 = [v12 cnContactWithKeys:v19];

            if (v20)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [v18 setContact:v20];
              }
            }

            v21 = [MEMORY[0x1E69DC938] currentDevice];
            if ([v21 userInterfaceIdiom])
            {
              v22 = [MEMORY[0x1E69DC938] currentDevice];
              v23 = [v22 userInterfaceIdiom] == 1;
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

            v30 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
            v31 = [v30 isNameAndPhotoC3Enabled];

            v41 = v15 & 2;
            if ((v31 & v23 & 1) == 0)
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
            v25 = [v9 defaultIMHandle];
            v26 = [v25 ID];
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

        if (a3)
        {
          *a3 = v41;
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

  if (a3)
  {
    *a3 = 0;
  }

  v37 = MEMORY[0x1E695E0F0];
LABEL_59:

  return v37;
}

- (id)createMutableContact:(id)a3 withNicknameUpdate:(id)a4 updateType:(unint64_t)a5 addHandleToContact:(BOOL)a6
{
  v44 = a6;
  v6 = a5;
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695CF18]);
  }

  v11 = v10;
  v12 = [v9 nickname];
  v13 = v12;
  if ((v6 & 2) != 0)
  {
    v14 = [v12 firstName];
    [v11 setGivenName:v14];

    v15 = [v13 lastName];
    [v11 setFamilyName:v15];
  }

  if ((v6 & 4) != 0)
  {
    v16 = [v13 avatar];
    v43 = [v16 imageData];

    if (v43)
    {
      [v11 setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [v11 setThumbnailImageData:0];
      [v11 setImageData:v43];
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

    v18 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v19 = [v18 isSwiftUIAvatarRenderingEnabled];

    if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v20 = [v13 avatarRecipe];
      v21 = [v20 recipeData];
      [v11 setAvatarRecipeData:v21];
    }

    v22 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v23 = [v22 isNameAndPhotoC3Enabled];

    v24 = v43;
    if (!v23)
    {
      goto LABEL_32;
    }

    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v25 = objc_alloc(MEMORY[0x1E695CFC8]);
      v26 = [v13 wallpaper];
      v27 = [v26 filePath];
      v28 = [v13 wallpaper];
      v29 = [v28 wallpaperData];
      v30 = [v13 wallpaper];
      v31 = [v25 initWithIdentifier:v27 posterArchiveData:v29 contentIsSensitive:{objc_msgSend(v30, "contentIsSensitive")}];
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
      v26 = [v13 wallpaper];
      v27 = [v26 wallpaperData];
      v31 = [v32 initWithPosterArchiveData:v27];
    }

LABEL_23:
    v33 = [v13 wallpaper];
    v34 = [v33 metadata];

    if (v34)
    {
      v35 = [v31 wallpaperIncludingIMWallpaperMetadata:v34];

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

    v24 = v43;
LABEL_32:
  }

  if (!v44)
  {
    goto LABEL_38;
  }

  v37 = [v13 handle];
  v38 = [v37 length] == 0;

  if (!v38)
  {
    v39 = [v13 handle];
    [(CKCoreChatController *)self updateContact:v11 withHandle:v39];
LABEL_36:

    goto LABEL_38;
  }

  if (!v13)
  {
    v39 = [v9 handle];
    v41 = [v39 ID];
    [(CKCoreChatController *)self updateContact:v11 withHandle:v41];

    goto LABEL_36;
  }

LABEL_38:

  return v11;
}

- (BOOL)saveContact:(id)a3 shouldUpdate:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E69A7FD0] sharedInstance];
    v7 = [v6 getContactStore];

    v8 = objc_alloc_init(MEMORY[0x1E695CF88]);
    v9 = v8;
    if (v4)
    {
      [v8 updateContact:v5];
    }

    else
    {
      [v8 addContact:v5 toContainerWithIdentifier:0];
    }

    v15 = 0;
    v10 = [v7 executeSaveRequest:v9 error:&v15];
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

- (BOOL)_haveUpdateAlready:(id)a3 forContact:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) contact];
        v13 = [v12 identifier];
        v14 = [v6 identifier];
        v15 = [v13 isEqualToString:v14];

        v9 |= v15;
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)_retrieveNicknameBannerUpdatesIfNeeded:(unint64_t *)a3
{
  v47 = *MEMORY[0x1E69E9840];
  if (![(CKViewController *)self appearing]&& ![(CKViewController *)self appeared])
  {
    goto LABEL_9;
  }

  v5 = [(CKCoreChatController *)self chat];
  if (![v5 supportsCapabilities:8] || CKIsRunningForDevelopmentOnSimulator() || -[CKCoreChatController _isRunningPPT](self, "_isRunningPPT") || -[CKCoreChatController isInline](self, "isInline") || +[CKApplicationState isResizing](CKApplicationState, "isResizing"))
  {
    goto LABEL_8;
  }

  v8 = IMIsRunningInScreenshotTesting_IsolatedTranscriptUI();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 areBannersSupported];

  if (!v10)
  {
    goto LABEL_9;
  }

  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    v5 = IMSharedDowntimeController();
    if ([v5 isDowntimeLimited])
    {
LABEL_8:

LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }

    v11 = [(CKCoreChatController *)self conversation];
    v12 = [v11 chat];
    if (v12)
    {
      v13 = [(CKCoreChatController *)self conversation];
      v14 = [v13 chat];
      v15 = [v14 allowedByScreenTime];

      if (!v15)
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
  v18 = [MEMORY[0x1E69A8108] sharedInstance];
  if ([(CKCoreChatController *)self accountCanCreateNickname])
  {
    if (([v18 wasSharingEverEnabled] & 1) == 0)
    {
      v19 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v20 = [v19 isChatSNAPOnboardingBannerEnabled];

      if (v20)
      {
        v41 = 6;
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = [v18 wasSharingEverEnabled];
            v23 = @"NO";
            if (v22)
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

    if (-[CKCoreChatController _alwaysShowNicknameBanners](self, "_alwaysShowNicknameBanners", v41) || ([v18 sharingEnabled] & 1) != 0)
    {
LABEL_43:
      v27 = [v18 sharingEnabled];
      if (v41)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      if (v28 == 1)
      {
        v29 = [MEMORY[0x1E69A5C10] sharedInstance];
        v30 = [(CKCoreChatController *)self chat];
        v31 = [v29 shouldOfferNicknameSharingForChat:v30];

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
          v34 = [MEMORY[0x1E69A5C10] sharedInstance];
          v35 = [v34 personalNickname];
          [(CKNicknameUpdate *)v33 setNickname:v35];

          v42 = v33;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];

          v17 = v36;
        }
      }

      if (a3)
      {
        *a3 = v41;
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
        v37 = [(CKCoreChatController *)self _alwaysShowNicknameBanners];
        v38 = [v18 sharingEnabled];
        v39 = @"NO";
        if (v37)
        {
          v40 = @"YES";
        }

        else
        {
          v40 = @"NO";
        }

        if (v38)
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
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isAllowMultiplePhoneNumbersSNaPEnabled];

  v4 = IMSharedHelperNickNameEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = [MEMORY[0x1E69A5C10] sharedInstance];
      LOBYTE(v6) = [v5 iCloudSignedInToUseNicknames];
LABEL_9:

      return v6;
    }
  }

  else if (v4)
  {
    v5 = [MEMORY[0x1E69A5C10] sharedInstance];
    if ([v5 iCloudSignedInToUseNicknames])
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

- (void)updateContact:(id)a3 withHandle:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && [v6 length])
  {
    if ([v7 _appearsToBeEmail])
    {
      v8 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CB60] value:v7];
      v9 = [v5 emailAddresses];

      if (!v9)
      {
        v15[0] = v8;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [v5 setEmailAddresses:v10];
LABEL_12:

        goto LABEL_13;
      }

      v10 = [v5 emailAddresses];
      v11 = [v10 arrayByAddingObject:v8];
      [v5 setEmailAddresses:v11];
LABEL_11:

      goto LABEL_12;
    }

    if ([v7 _appearsToBePhoneNumber])
    {
      v8 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v7];
      v10 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CB90] value:v8];
      v12 = [v5 phoneNumbers];

      if (v12)
      {
        v11 = [v5 phoneNumbers];
        v13 = [v11 arrayByAddingObject:v10];
        [v5 setPhoneNumbers:v13];
      }

      else
      {
        v14 = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
        [v5 setPhoneNumbers:v11];
      }

      goto LABEL_11;
    }
  }

LABEL_13:
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69A6160] sharedInstance];
  [v3 removeListener:self];

  v4 = [(CKConversation *)self->_conversation chat];
  v5 = [v4 sendProgressDelegate];

  if (v5 == self)
  {
    [v4 setSendProgressDelegate:0];
  }

  v6 = [MEMORY[0x1E69A5C30] sharedInstance];
  v7 = [v4 guid];
  [v6 unregisterPhotoLibraryPersistenceManagerSession:v7];

  v8 = [(CKCoreChatController *)self collectionViewController];
  [v8 setDelegate:0];

  v9 = [(CKCoreChatController *)self refreshServiceForSendingUpdater];
  [v9 invalidate];

  [(CKConversation *)self->_conversation willBecomeInactive];
  v10.receiver = self;
  v10.super_class = CKCoreChatController;
  [(CKCoreChatController *)&v10 dealloc];
}

- (CKCoreChatController)initWithConversation:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKCoreChatController;
  v5 = [(CKScrollViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_initialViewSize = *MEMORY[0x1E695F060];
    v7 = [[CKScheduledUpdater alloc] initWithTarget:v5 action:sel__refreshServiceForSending];
    [(CKCoreChatController *)v6 setRefreshServiceForSendingUpdater:v7];
    [(CKCoreChatController *)v6 setConversation:v4];
    [(CKCoreChatController *)v6 registerNotifications];
    [(CKCoreChatController *)v6 _updateTitleAnimated:0];
    [(CKCoreChatController *)v6 _updateNavigationButtons];
    v8 = [MEMORY[0x1E69A6160] sharedInstance];
    [v8 addListener:v6];

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
  v7 = [(CKCoreChatController *)self view];
  [v7 setAutoresizingMask:18];

  v8 = [(CKCoreChatController *)self view];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 theme];
  v11 = [v10 transcriptBackgroundColor];
  [v8 setBackgroundColor:v11];

  v12 = [(CKCoreChatController *)self view];
  [v12 setLayoutMarginsFollowReadableWidth:1];

  [(CKCoreChatController *)self setAutomaticallyAdjustsScrollViewInsets:0];
}

- (void)_registerForChatItemTraitCollectionChanges
{
  v3 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v4 = [v3 mutableCopy];

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
  v3 = [(CKCoreChatController *)self traitCollection];
  if ([v3 isTranscriptBackgroundActive])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  v4 = [(CKCoreChatController *)self collectionView];
  [v4 _setPocketColor:v6 forEdge:1];

  v5 = [(CKCoreChatController *)self collectionView];
  [v5 _setPocketColor:v6 forEdge:4];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKCoreChatController;
  [(CKCoreChatController *)&v5 viewDidLoad];
  v3 = [(CKCoreChatController *)self conversation];
  [(CKCoreChatController *)self setConversation:v3];

  [(CKCoreChatController *)self _registerForChatItemTraitCollectionChanges];
  v4 = [(CKCoreChatController *)self chat];
  [v4 _reloadChatItemsForSatelliteStateChangeIfRequired:@"CKChatController viewDidLoad"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKCoreChatController;
  [(CKViewController *)&v8 viewWillAppear:a3];
  if (CKIsRunningInMacCatalyst())
  {
    v4 = [(CKCoreChatController *)self macToolbarController];
    if (v4)
    {
      v5 = v4;
      v6 = [(CKCoreChatController *)self conformsToProtocol:&unk_1F051C328];

      if (v6)
      {
        v7 = [(CKCoreChatController *)self macToolbarController];
        [v7 setSecondaryItemProvider:self];
      }
    }
  }

  [(CKCoreChatController *)self _registerSendProgressDelegate];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKCoreChatController;
  [(CKViewController *)&v4 viewDidAppear:a3];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = CKCoreChatController;
  [(CKViewController *)&v13 viewWillDisappear:?];
  [(CKCoreChatController *)self setHandleStatusAssertion:0];
  v5 = +[CKUIBehavior sharedBehaviors];
  if (![v5 useMacToolbar])
  {
    goto LABEL_5;
  }

  v6 = [(CKCoreChatController *)self macToolbarController];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = [(CKCoreChatController *)self conformsToProtocol:&unk_1F051C328];

  if (v8)
  {
    v5 = [(CKCoreChatController *)self macToolbarController];
    [v5 removeItemProvider:self];
LABEL_5:
  }

  [(CKCoreChatController *)self _deregisterSendProgressDelegate];
  v9 = [(CKCoreChatController *)self fullScreenBalloonViewController];

  if (v9)
  {
    v10 = [(CKCoreChatController *)self fullScreenBalloonViewController];
    v11 = [v10 displayConfiguration];
    v12 = [v11 shouldShowStickers];

    if ((v12 & 1) == 0)
    {
      [(CKCoreChatController *)self _dismissFullScreenBubbleViewControllerAnimated:v3 withSendAnimation:0 completion:0];
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
    v3 = [(CKCoreChatController *)self collectionView];
    v4 = MEMORY[0x1E69DD250];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__CKCoreChatController_viewDidLayoutSubviews__block_invoke;
    v8[3] = &unk_1E72EBA18;
    v9 = v3;
    v5 = v3;
    [v4 performWithoutAnimation:v8];
  }

  v6 = [(CKCoreChatController *)self transcriptBackground];
  v7 = [v6 rootViewController];

  if (v7)
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
  v3 = [(CKCoreChatController *)self collectionViewController];
  [v3 systemApplicationWillEnterForeground];
}

- (void)parentControllerDidResume:(BOOL)a3 animating:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = CKCoreChatController;
  [CKViewController parentControllerDidResume:sel_parentControllerDidResume_animating_ animating:?];
  v7 = [(CKCoreChatController *)self collectionViewController];
  [v7 parentControllerDidResume:v5 animating:v4];

  [(CKCoreChatController *)self _performResume];
}

- (void)_performResume
{
  [(CKCoreChatController *)self _registerSendProgressDelegate];
  [(CKCoreChatController *)self _markAsReadIfNecessary];
  v3 = [(CKCoreChatController *)self collectionViewController];
  [v3 prepareForResume];

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
  v3 = [v2 transcriptCollectionViewControllerClass];

  return v3;
}

- (CKTranscriptCollectionView)collectionView
{
  v2 = [(CKCoreChatController *)self collectionViewController];
  v3 = [v2 collectionView];

  return v3;
}

- (BOOL)shouldDisplayTextEntry
{
  v3 = [(CKCoreChatController *)self conversation];
  if (v3)
  {
    v4 = [(CKCoreChatController *)self conversation];
    v5 = [v4 hasReplyEnabled];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (IMChat)chat
{
  v2 = [(CKCoreChatController *)self conversation];
  v3 = [v2 chat];

  return v3;
}

- (BOOL)isReadOnly
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isTextAccessFor3rdPartyEnabled];

  if (v4)
  {
    v5 = [(CKCoreChatController *)self conversation];
    v6 = [v5 sendingService];
    v7 = [(CKCoreChatController *)self conversation];
    v8 = [v7 chat];
    v9 = [v6 __ck_isSendingAllowedForChat:v8];

    if (!v9)
    {
      return 1;
    }
  }

  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isIntroductionsEnabled];

  if (v11)
  {
    if (([MEMORY[0x1E69A8198] isSpamFilteringEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x1E69A8198], "isTextMessageExtensionEnabled"))
    {
      v12 = [(CKCoreChatController *)self chat];
      v13 = [v12 isFiltered];

      if (v13 == 2)
      {
        return 1;
      }
    }
  }

  v15 = [(CKCoreChatController *)self chat];
  v16 = [v15 isReadOnly];

  return v16;
}

- (id)_handleIDsForCurrentConversation
{
  v2 = [(CKCoreChatController *)self conversation];
  v3 = [v2 recipients];
  v4 = [v3 __imArrayByApplyingBlock:&__block_literal_global_358_0];

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
  v3 = [(CKCoreChatController *)self conversation];
  if (v3)
  {
    v4 = [(CKCoreChatController *)self conversation];
    v5 = [v4 hasReplyEnabled];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_shouldAllowReply
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CKCoreChatController *)self _shouldAllowReplyFromLockScreen];
      v5 = [(CKCoreChatController *)self conversation];
      v9[0] = 67109376;
      v9[1] = v4;
      v10 = 1024;
      v11 = [v5 hasLeftGroupChat];
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "allow reply: %d has left: %d", v9, 0xEu);
    }
  }

  if (![(CKCoreChatController *)self _shouldAllowReplyFromLockScreen])
  {
    return 0;
  }

  v6 = [(CKCoreChatController *)self conversation];
  v7 = ([v6 hasLeftGroupChat] & 1) == 0 && -[CKCoreChatController _conversationHasReplyEnabled](self, "_conversationHasReplyEnabled");

  return v7;
}

- (BOOL)_shouldAllowReplyFromLockScreen
{
  CFPreferencesSynchronize(@"com.apple.mobilephone", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"LockScreenMessaging", @"com.apple.mobilephone", &keyExistsAndHasValidFormat);
  v4 = keyExistsAndHasValidFormat;
  v5 = [MEMORY[0x1E69A6160] sharedInstance];
  v6 = [v5 isUnderFirstDataProtectionLock];

  if (v6)
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
  v3 = [(CKCoreChatController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKCoreChatController *)self delegate];
    v6 = [v5 shouldConfigureChatControllerAsCollapsed];
  }

  else
  {
    v5 = [(CKCoreChatController *)self splitViewController];
    v6 = [v5 isCollapsed];
  }

  v7 = v6;

  return v7;
}

- (BOOL)conversationAllowedByScreenTime
{
  if (![MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    return 1;
  }

  v3 = [(CKCoreChatController *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 allowedToShowConversationSync];

  return v5;
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
    v7 = [(CKCoreChatController *)self view];
    [v7 bounds];
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
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 bounds];
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

- (void)setConversation:(id)a3 forceReload:(BOOL)a4
{
  v4 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(rect.origin.y) = 138412290;
      *(&rect.origin.y + 4) = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "setting conversation: %@", &rect.origin.y, 0xCu);
    }
  }

  if (self->_conversation != v7)
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
      v11 = [MEMORY[0x1E69A5C30] sharedInstance];
      v12 = [(CKConversation *)self->_conversation chat];
      v13 = [v12 guid];
      [v11 unregisterPhotoLibraryPersistenceManagerSession:v13];
    }

    objc_storeStrong(&self->_conversation, a3);
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
    v16 = [(CKConversation *)self->_conversation acquireHandleStatusObservationAssertion];
    [(CKCoreChatController *)self setHandleStatusAssertion:v16];

    v17 = [MEMORY[0x1E69A5C30] sharedInstance];
    v18 = [(CKConversation *)v7 chat];
    v19 = [v18 guid];
    [v17 registerPhotoLibraryPersistenceManagerSession:v19];

    [(CKCoreChatController *)self _deregisterSendProgressDelegate];
    [(CKCoreChatController *)self refreshServiceForSending];
  }

  v20 = [(CKCoreChatController *)self isViewLoaded];
  v21 = IMOSLoggingEnabled();
  if (v20)
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

    if (v7)
    {
      v23 = [(CKConversation *)v7 chat];
      if (v23 && [(CKCoreChatController *)self conversationAllowedByScreenTime])
      {

LABEL_34:
        v26 = [(CKCoreChatController *)self composeInitialStatusLabel];
        [v26 removeFromSuperview];

        [(CKCoreChatController *)self setComposeInitialStatusLabel:0];
        v27 = [(CKCoreChatController *)self collectionViewController];
        v28 = [v27 conversation];
        v29 = [(CKCoreChatController *)self conversation];
        if (v28 != v29)
        {
          v4 = 1;
        }

        if (v4)
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
          v50 = [(CKCoreChatController *)self conversation];
          v51 = [v49 initWithConversation:v50 delegate:self balloonMaxWidth:v39 marginInsets:v31 collectionViewSize:{v33, v35, v37, v44, v46}];

          [(CKCoreChatController *)self setCollectionViewController:v51];
          [v51 setTransitionedFromComposing:{-[CKCoreChatController transitionedFromComposing](self, "transitionedFromComposing")}];
          [v51 setDelegate:self];
          [v51 __setCurrentTestName:__CurrentTestName];
          v52 = [(CKCoreChatController *)self gradientReferenceView];
          [v51 setGradientReferenceView:v52];

          [(CKCoreChatController *)self addChildViewController:v51];
          v53 = [v51 collectionView];
          [v53 setFrame:{rect.origin.x, v42, v44, v46}];
          [v53 setAutoresizingMask:18];
          v54 = [(CKCoreChatController *)self delegate];
          [v54 initialSafeAreaInsetsForChatController:self];
          [v53 setInitialSafeAreaInsets:?];

          *&rect.origin.x = [(CKCoreChatController *)self view];
          v55 = [(CKCoreChatController *)self viewToInsertTranscriptCollectionViewBelow];
          if (v55)
          {
            [*&rect.origin.x insertSubview:v53 belowSubview:v55];
          }

          else
          {
            [*&rect.origin.x addSubview:v53];
          }

          [(CKCoreChatController *)self applyInitialContextToCollectionViewIfNeeded];
          [v51 reloadData];
          v56 = [(CKCoreChatController *)self gradientReferenceView];
          [v53 contentInset];
          [(CKCoreChatController *)self gradientFrameWithInsets:?];
          [v56 setGradientFrame:?];

          v57 = [v51 collectionView];
          v58 = [v57 collectionViewLayout];
          [v58 prepareLayout];

          [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"ChangeConversation"];
          [(CKCoreChatController *)self _updateBalloonBackdropGroupTrait];
          [v51 didMoveToParentViewController:self];
          [(CKCoreChatController *)self _registerSendProgressDelegate];
          [(CKCoreChatController *)self _updateTitleAnimated:0];
          [(CKCoreChatController *)self _updateNavigationButtons];
          [(CKCoreChatController *)self _updateStaticPocketColor];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (+[CKConversationList sharedConversationList](CKConversationList, "sharedConversationList"), v59 = objc_claimAutoreleasedReturnValue(), -[CKConversation chat](v7, "chat"), v60 = objc_claimAutoreleasedReturnValue(), [v60 guid], v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "conversationForExistingChatWithGUID:", v61), v62 = objc_claimAutoreleasedReturnValue(), v61, v60, v59, v62))
          {
            [(CKCoreChatController *)self registerNotificationsForConversation:v62];
          }

          else
          {
            [(CKCoreChatController *)self registerNotificationsForConversation:v7];
          }

          [(CKCoreChatController *)self setInitialViewSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
          v63 = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];

          if (v63)
          {
            [v51 setTranscriptBackgroundColor:0];
          }
        }

        goto LABEL_56;
      }

      v25 = [(CKCoreChatController *)self previewingChatForScreenTime];

      if (v25)
      {
        goto LABEL_34;
      }

      if (![(CKConversation *)v7 isPending])
      {
LABEL_56:
        v65 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v66 = [v65 isTranscriptBackgroundsEnabled];

        if (v66)
        {
          if ([objc_opt_class() supportsTranscriptBackground])
          {
            v67 = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];

            if (v67)
            {
              v68 = [(CKCoreChatController *)self view];
              v69 = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];
              [v68 addSubview:v69];

              v70 = [(CKCoreChatController *)self view];
              v71 = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];
              [v70 sendSubviewToBack:v71];

              v72 = [(CKCoreChatController *)self outgoingBackgroundSnapshotView];
              v73 = [(CKCoreChatController *)self view];
              [v72 __ck_makeEdgesEqualTo:v73];
            }

            [(CKCoreChatController *)self _setupTranscriptBackgroundIfNeeded];
            [(CKCoreChatController *)self _updateBalloonBackdropGroupTrait];
            [(CKCoreChatController *)self configureTapbackBackdropCaptureView];
          }

          v74 = [(CKCoreChatController *)self collectionView];
          [(CKCoreChatController *)self setContentScrollView:v74 forEdge:1];
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
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 minTranscriptMarginInsets];
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
    v4 = [(CKCoreChatController *)self view];
    v18 = [v4 effectiveUserInterfaceLayoutDirection];
    if (v18)
    {
      v8 = v17;
    }

    else
    {
      v8 = v12;
    }

    if (!v18)
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
  if (!-[CKCoreChatController isShowingLockoutView](self, "isShowingLockoutView") || (-[CKCoreChatController lockoutViewController](self, "lockoutViewController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 view], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    if (![v4 useMacToolbar])
    {
      goto LABEL_7;
    }

    v5 = [(CKCoreChatController *)self showingInStandAloneWindow];

    if (!v5)
    {
LABEL_8:
      v4 = 0;
      goto LABEL_9;
    }

    v6 = [(CKCoreChatController *)self macToolbarController];
    v4 = [v6 view];

    if (!v4 || (-[CKCoreChatController view](self, "view"), v7 = objc_claimAutoreleasedReturnValue(), [v7 subviews], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", v4), v8, v7, (v9 & 1) == 0))
    {
LABEL_7:

      goto LABEL_8;
    }
  }

LABEL_9:

  return v4;
}

- (UIEdgeInsets)calculateTranscriptSafeAreaInsets
{
  v3 = [(CKCoreChatController *)self view];
  [v3 safeAreaInsets];
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
  v3 = [(CKCoreChatController *)self collectionViewController];

  if (v3)
  {
    v5 = [(CKCoreChatController *)self collectionViewController];
    [v5 willMoveToParentViewController:0];
    v4 = [v5 collectionView];
    [v4 removeFromSuperview];

    [v5 removeFromParentViewController];
  }
}

- (void)setCollectionViewController:(id)a3
{
  v5 = a3;
  if (self->_collectionViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_collectionViewController, a3);
    v5 = v6;
  }
}

- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 tappedForChatItem:(id)a5
{
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(CKCoreChatController *)self collectionViewController];
    v7 = [v6 transcriptIdentifier];
    v8 = [v10 contentViewControllerForContext:v7];

    if (v8)
    {
      v9 = [(CKCoreChatController *)self navigationController];
      [v9 pushViewController:v8 animated:1];
    }
  }
}

- (void)displayPollDetailsForChatItem:(id)a3 sourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isPollsEnabled];

  if (v9)
  {
    v10 = [v6 IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69A5C50]);
      v13 = [v6 IMChatItem];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __65__CKCoreChatController_displayPollDetailsForChatItem_sourceView___block_invoke;
      v15[3] = &unk_1E72F4F08;
      v16 = v12;
      v17 = v6;
      v18 = self;
      v19 = v7;
      v14 = v12;
      [v14 pollOptionsFromChatItem:v13 completionHandler:v15];
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

- (void)_handleTapEventForBalloonView:(id)a3 atIndexPath:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v47 = 136315650;
      v48 = "[CKCoreChatController _handleTapEventForBalloonView:atIndexPath:]";
      v49 = 2112;
      v50 = v6;
      v51 = 2112;
      v52 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "%s: balloonView: %@, indexPath: %@", &v47, 0x20u);
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = [(CKCoreChatController *)self collectionViewController];
  v11 = v10;
  if (isKindOfClass)
  {
    v12 = [v10 associatedChatItems];

    v13 = [v7 item];
    if (v13 < [v12 count])
    {
      v14 = [v12 objectAtIndex:{objc_msgSend(v7, "item")}];
      v15 = [(CKCoreChatController *)self collectionViewController];
      v16 = [v15 chatItems];
      v17 = [v14 associatedChatItemGUID];
      v18 = [v14 associatedMessageRange];
      v20 = [v16 ck_indexOfChatItemContainingIMChatItemGUID:v17 associatedMessageRange:{v18, v19}];

      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = [(CKCoreChatController *)self collectionViewController];
        v22 = [v21 chatItems];
        v23 = [v22 objectAtIndex:v20];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [MEMORY[0x1E696AC88] indexPathForItem:v20 inSection:0];
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = [v23 IMChatItem];
              v27 = [v26 guid];
              v47 = 136315650;
              v48 = "[CKCoreChatController _handleTapEventForBalloonView:atIndexPath:]";
              v49 = 2112;
              v50 = v24;
              v51 = 2112;
              v52 = v27;
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
        v33 = [v7 item];
        v34 = [v12 count];
        v47 = 134218240;
        v48 = v33;
        v49 = 2048;
        v50 = v34;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Attempted to present ack menu for associated chat item out of idx range. idx %lu count %lu", &v47, 0x16u);
      }

LABEL_28:
    }
  }

  else
  {
    v12 = [v10 chatItems];

    v31 = [v7 item];
    if (v31 < [v12 count])
    {
      v14 = [v12 objectAtIndex:{objc_msgSend(v7, "item")}];
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
              [(CKCoreChatController *)self displayPollDetailsForChatItem:v38 sourceView:v6];
            }

            else if ([v38 isReplyContextPreview])
            {
              [(CKCoreChatController *)self showInlineReplyControllerForChatItem:v38 presentKeyboard:0];
            }

            else
            {
              v44 = [(CKCoreChatController *)self showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:v7];
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
                  v52 = v7;
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
        v35 = [v7 item];
        v36 = [v12 count];
        v47 = 134218240;
        v48 = v35;
        v49 = 2048;
        v50 = v36;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "[Tapbacks] Attempted to present ack menu for chat item out of idx range. idx %lu count %lu", &v47, 0x16u);
      }

      goto LABEL_28;
    }
  }

LABEL_53:
}

- (void)_handleShowInlineReplyForItemWithIndexPath:(id)a3 replyTransitionProperties:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(CKCoreChatController *)self collectionViewController];
  v8 = [v7 chatItems];

  v9 = [v13 item];
  if (v9 < [v8 count])
  {
    v10 = [v8 objectAtIndex:{objc_msgSend(v13, "item")}];
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 replyShouldShowKeyboard];

    [(CKCoreChatController *)self showInlineReplyControllerForChatItem:v10 presentKeyboard:v12 replyTransitionProperties:v6];
  }
}

- (void)viewDidLayoutSubviewsForTranscriptCollectionViewController:(id)a3
{
  v4 = [(CKCoreChatController *)self fullScreenBalloonViewController];

  if (v4)
  {
    v5 = [(CKCoreChatController *)self fullScreenBalloonViewController];
    [v5 updateBalloonViewFrame];
  }
}

- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 selectedItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(CKCoreChatController *)self collectionViewController];
  [v7 highlightItemAtIndexPathWhenDisplayed:v6 animated:1 autoDismiss:0];
}

- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 showInlineReplyForItemWithIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[CKInlineReplyTransitionProperties defaultProperties];
  [(CKCoreChatController *)self transcriptCollectionViewController:v10 balloonView:v9 showInlineReplyForItemWithIndexPath:v8 withReplyTransitionProperties:v11];
}

- (void)transcriptCollectionViewControllerDidInset:(id)a3
{
  v4 = a3;
  v5 = [(CKCoreChatController *)self gradientReferenceView];
  v6 = [v4 collectionView];

  [v6 contentInset];
  [(CKCoreChatController *)self gradientFrameWithInsets:?];
  [v5 setGradientFrame:?];

  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v5) = [v7 isTranscriptBackgroundsEnabled];

  if (v5)
  {

    [(CKCoreChatController *)self setNeedsPosterSaliencyAndOcclusionRectUpdate];
  }
}

- (void)transcriptCollectionViewControllerDidSetChatItems:(id)a3
{
  if ([(CKViewController *)self deferredAppeared])
  {

    [(CKCoreChatController *)self _inviteToViewStatusesIfNeeded];
  }
}

- (void)transcriptCollectionViewController:(id)a3 collectionViewContentSizeDidChange:(CGSize)a4
{
  v14 = [(CKCoreChatController *)self gradientReferenceView:a3];
  v5 = [(CKCoreChatController *)self collectionView];
  [v5 contentInset];
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

- (void)transcriptCollectionViewControllerReportSpamButtonTapped:(id)a3
{
  v5 = [(CKCoreChatController *)self delegate];
  v4 = [(CKCoreChatController *)self conversation];
  [v5 chatController:self didReportSpamForConversation:v4];
}

- (void)transcriptCollectionViewControllerUnsubscribeButtonTapped:(id)a3
{
  v5 = [(CKCoreChatController *)self delegate];
  v4 = [(CKCoreChatController *)self conversation];
  [v5 chatController:self didUnsubscribeForConversation:v4];
}

- (void)transcriptCollectionViewControllerWillDisplayLastBalloon:(id)a3
{
  [(CKCoreChatController *)self setIgnoreLastBalloonVisibleInMarkAsReadCheck:1];
  [(CKCoreChatController *)self _markAsReadIfNecessary];

  [(CKCoreChatController *)self setIgnoreLastBalloonVisibleInMarkAsReadCheck:0];
}

- (void)transcriptCollectionViewControllerDidChangeAssociatedChatItem:(id)a3 chatItemDiff:(id)a4
{
  v5 = [a4 inserted];
  v6 = [v5 count];

  if (v6)
  {

    [(CKCoreChatController *)self _markAsReadIfNecessary];
  }
}

- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)a3
{
  v4 = a3;
  v7 = [(CKCoreChatController *)self traitCollection];
  v5 = [v7 ck_chatItemLayoutNeedsInvalidationForPreviousTraitCollection:v4];

  if (v5)
  {
    v6 = [(CKCoreChatController *)self collectionViewController];
    [v6 setNeedsChatItemLayoutInvalidation];
  }
}

- (id)transcriptCollectionViewControllerOuterEffectPresentingView:(id)a3
{
  v3 = [a3 view];
  v4 = [v3 window];

  return v4;
}

- (void)transcriptCollectionViewController:(id)a3 viewedCommSafetyItemWithIndexPath:(id)a4
{
  *&v44[5] = *MEMORY[0x1E69E9840];
  v37 = a3;
  v5 = a4;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    v7 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [(CKCoreChatController *)self conversation];
      v9 = [v8 chat];
      *buf = 138412290;
      *v44 = v9;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "User signified view sensitive photo for chat %@", buf, 0xCu);
    }

    v5 = v7;
  }

  v10 = [v5 item];
  v11 = [(CKCoreChatController *)self collectionViewController];
  v12 = [v11 chatItems];

  v38 = [v12 objectAtIndex:v10];
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

      v15 = [(CKCoreChatController *)self conversation];
      v16 = [v15 chat];

      [v16 updateTranscriptBackgroundCommSafetyState:2];
      goto LABEL_44;
    }
  }

  if (v10 < 0)
  {
    v20 = 0;
  }

  else
  {
    while (1)
    {
      v17 = [v12 objectAtIndex:v10];
      v18 = [v17 IMChatItem];
      if ([v18 supportsCommunicationSafety])
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
          *v44 = v18;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "This chat item is not IMMessagePartChatItem: %@", buf, 0xCu);
        }
      }

      if (v10-- <= 0)
      {
        v20 = 0;
        v10 = -1;
        goto LABEL_28;
      }
    }

    v21 = [v18 messageItem];
    v22 = [v21 message];

    v23 = [v22 fileTransferGUIDs];
    v20 = [v23 count];
  }

LABEL_28:
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((v10 & 0x8000000000000000) == 0 && v20)
  {
    v24 = 0;
    do
    {
      v25 = [v12 objectAtIndex:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        v27 = [MEMORY[0x1E69A5B80] sharedInstance];
        v28 = [v26 transferGUID];
        v29 = [v27 transferForGUID:v28];

        if ([v29 commSafetySensitive] == 1)
        {
          v30 = [v26 IMChatItem];
          [v40 addObject:v30];

          v31 = [v26 message];
          v32 = [v31 guid];
          [(CKCoreChatController *)self _registerCommSafetyReceivedEventForTransfer:v29 messageGUID:v32];
        }

        ++v24;
      }

      v33 = v10-- != 0;
    }

    while (v33 && v24 < v20);
  }

  if ([v40 count])
  {
    v34 = [(CKCoreChatController *)self collectionViewController];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __93__CKCoreChatController_transcriptCollectionViewController_viewedCommSafetyItemWithIndexPath___block_invoke;
    v41[3] = &unk_1E72EB8D0;
    v41[4] = self;
    v40 = v40;
    v42 = v40;
    [v34 updateTranscript:v41 animated:1 completion:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v44[0] = v20;
      LOWORD(v44[1]) = 1024;
      *(&v44[1] + 2) = v10;
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

- (void)transcriptCollectionViewController:(id)a3 viewedCommSafetyAssociatedItemsWithIndexPath:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v29 = a4;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(CKCoreChatController *)self conversation];
      v7 = [v6 chat];
      *buf = 138412290;
      v43 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "User signified view multiple sensitive associated items for chat %@", buf, 0xCu);
    }
  }

  v31 = [v29 item];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v31 < 0)
  {
    v30 = 0;
  }

  else
  {
    while (1)
    {
      v9 = [(CKCoreChatController *)self collectionViewController];
      v10 = [v9 chatItems];
      v32 = [v10 objectAtIndex:v31];

      v30 = [v32 IMChatItem];
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
          v43 = v30;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "This chat item is not IMMessagePartChatItem: %@", buf, 0xCu);
        }
      }

      if (v31-- <= 0)
      {
        v30 = 0;
        LODWORD(v31) = -1;
        goto LABEL_30;
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = [v32 visibleAssociatedMessageChatItems];
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v13)
    {
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          if ([v16 isCommSafetySensitiveNotViewable])
          {
            v17 = [v16 commSafetyTransferGUID];
            if (v17)
            {
              v18 = [MEMORY[0x1E69A5B80] sharedInstance];
              v19 = [v16 commSafetyTransferGUID];
              v20 = [v18 transferForGUID:v19];
            }

            else
            {
              v20 = 0;
            }

            v21 = [v16 IMChatItem];
            [v8 addObject:v21];

            if (v20)
            {
              v22 = [v16 commSafetyMessageGUID];
              v23 = v22 == 0;

              if (!v23)
              {
                v24 = [v16 commSafetyMessageGUID];
                [(CKCoreChatController *)self _registerCommSafetyReceivedEventForTransfer:v20 messageGUID:v24];
              }
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v13);
    }
  }

LABEL_30:
  if ([v8 count] || v30)
  {
    v26 = [(CKCoreChatController *)self collectionViewController];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __104__CKCoreChatController_transcriptCollectionViewController_viewedCommSafetyAssociatedItemsWithIndexPath___block_invoke;
    v34[3] = &unk_1E72EB880;
    v34[4] = self;
    v35 = v8;
    v36 = v30;
    [v26 updateTranscript:v34 animated:1 completion:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v43) = v31;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Did not find associated chatItems to refresh. indexForSensitiveAttachment: %d", buf, 8u);
    }
  }
}

void __104__CKCoreChatController_transcriptCollectionViewController_viewedCommSafetyAssociatedItemsWithIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chat];
  [v2 updateCommSafety:2 forChatItems:*(a1 + 40) parentChatItem:*(a1 + 48)];
}

- (void)_registerCommSafetyReceivedEventForTransfer:(id)a3 messageGUID:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 localURL];
  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69A5B38]);
    v11 = [v6 guid];
    v12 = [v10 initWithIdentifier:v11 imageData:v9];

    v13 = MEMORY[0x1E69A5B30];
    v14 = [(CKCoreChatController *)self chat];
    v16[0] = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v13 registerEvent:1 eventType:0 messageGUID:v7 chat:v14 forImages:v15];
  }
}

- (void)_messageSomeonePressed
{
  v2 = [MEMORY[0x1E69A5B40] sharedInstance];
  [v2 getOpenChatURLWith:&__block_literal_global_402_1];
}

void __46__CKCoreChatController__messageSomeonePressed__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC668];
  v3 = a2;
  v4 = [v2 sharedApplication];
  [v4 openURL:v3 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)sendStickerTapback:(id)a3 mediaObject:(id)a4 parentMessagePartChatItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      v11 = [CKStickerTapbackCommSafetySendContext contextWithStickerTapback:v8 mediaObject:v9 parentMessagePartChatItem:v10];
      v12 = [v9 transfer];
      v13 = [v12 fileURL];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __81__CKCoreChatController_sendStickerTapback_mediaObject_parentMessagePartChatItem___block_invoke;
      v14[3] = &unk_1E72F0360;
      v15 = v8;
      v16 = self;
      v17 = v10;
      [(CKCoreChatController *)self presentCommSafetyInterventionIfNecessaryForFileURL:v13 withSendContext:v11 completion:v14];
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

- (CGRect)gradientFrameWithInsets:(UIEdgeInsets)a3
{
  bottom = a3.bottom;
  [(CKCoreChatController *)self gradientBottomPlaceholderHeight:a3.top];
  v6 = v5;
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = [(CKCoreChatController *)self view];
  v10 = v9;
  if (v8 > 1)
  {
    [v9 frame];
    v13 = v14;
  }

  else
  {
    [v9 bounds];
    v13 = fmax(v11, v12);
  }

  v15 = *MEMORY[0x1E695EFF8];
  v16 = [(CKCoreChatController *)self view];
  [v16 bounds];
  v18 = v17;

  v19 = v15 + 0.0;
  v20 = v13 - (v6 + 0.0);
  v21 = [(CKCoreChatController *)self collectionViewController];
  v22 = [v21 collectionView];

  v23 = [(CKCoreChatController *)self view];
  [v23 frame];
  v25 = v24 - (bottom + v20);

  v26 = v20 - (bottom + -44.0);
  [v22 __ck_contentSize];
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

- (void)transcriptCollectionViewController:(id)a3 requestDeleteJunkConversation:(id)a4
{
  v5 = a4;
  v6 = [(CKCoreChatController *)self delegate];
  [v6 chatController:self requestDeleteJunkConversation:v5];
}

- (void)transcriptCollectionViewController:(id)a3 requestRecoverJunkConversation:(id)a4
{
  v5 = a4;
  v6 = [(CKCoreChatController *)self delegate];
  [v6 chatController:self requestRecoverJunkConversation:v5];
}

- (void)transcriptCollectionViewController:(id)a3 didInsertChatItems:(id)a4 associatedChatItems:(id)a5
{
  v6 = [(CKCoreChatController *)self insertItemsEmojiTapbacksCallBack:a3];

  if (v6)
  {
    v7 = [(CKCoreChatController *)self insertItemsEmojiTapbacksCallBack];
    v7[2]();

    [(CKCoreChatController *)self setInsertItemsEmojiTapbacksCallBack:0];
  }
}

- (void)transcriptCollectionViewController:(id)a3 didRemoveChatItems:(id)a4 associatedChatItems:(id)a5
{
  v6 = [(CKCoreChatController *)self removeItemsEmojiTapbacksCallBack:a3];

  if (v6)
  {
    v7 = [(CKCoreChatController *)self removeItemsEmojiTapbacksCallBack];
    v7[2]();

    [(CKCoreChatController *)self setRemoveItemsEmojiTapbacksCallBack:0];
  }
}

- (void)refreshServiceForSending
{
  v2 = [(CKCoreChatController *)self refreshServiceForSendingUpdater];
  [v2 setNeedsUpdate];
}

- (void)_refreshServiceForSending
{
  v3 = [(CKCoreChatController *)self conversation];
  [v3 refreshServiceForSending];

  [(CKCoreChatController *)self _updatePollSuggestionAvailability];
}

- (void)_willSendComposition:(id)a3 inConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "_willSendComposition", v10, 2u);
    }
  }

  v9 = [(CKCoreChatController *)self delegate];
  [v9 chatController:self willSendComposition:v6 inConversation:v7];
}

- (void)_didSendCompositionInConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKCoreChatController *)self delegate];
  [v5 chatController:self didSendCompositionInConversation:v4];
}

- (void)_inviteToViewStatusesIfNeeded
{
  v3 = [(CKCoreChatController *)self chat];
  if (v3)
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
          [v3 autoInviteToViewAvailabilityIfNeeded];
          [v3 autoInviteToViewOffGridModeIfNeeded];
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

  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v4 isCatchUpEnabled])
  {

LABEL_7:
    LODWORD(v5) = 1;
    goto LABEL_23;
  }

  v6 = [(CKCoreChatController *)self chat];
  if ([v6 chatStyle] == 45)
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

  v8 = [(CKCoreChatController *)self collectionView];
  v9 = [(CKCoreChatController *)self collectionViewController];
  v10 = [v9 indexPathForLastItem];
  v11 = [v10 item];

  [v8 visibleCells];
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

        v15 = [v8 indexPathForCell:{*(*(&v27 + 1) + 8 * i), v27}];
        v16 = [v15 row] == v11;

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

      v20 = [(CKViewController *)self appearing];
      v21 = [(CKViewController *)self appeared];
      if (v20)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      *buf = 138413314;
      if (v21)
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
    v3 = [(CKCoreChatController *)self conversation];
    [v3 markAllMessagesAsRead];

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
  v3 = [(CKCoreChatController *)self satelliteFetchTimer];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69A5B00] sharedInstance];
    v5 = [v4 isSatelliteConnectionActive];

    if (v5)
    {
      v6 = [(CKCoreChatController *)self conversation];
      v7 = [v6 chat];
      v8 = [v7 pendingIncomingSatelliteMessageCount];

      if (v8)
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
  v3 = [(CKCoreChatController *)self satelliteFetchTimer];

  if (v3)
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

    v5 = [(CKCoreChatController *)self satelliteFetchTimer];
    [v5 invalidate];

    [(CKCoreChatController *)self setSatelliteFetchTimer:0];
  }
}

- (void)contentInsetWillChange:(UIEdgeInsets)a3 withAnimationProperties:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = a4;
  [(CKCoreChatController *)self _updateGradientReferenceViewForContentInset:v9 withAnimationProperties:top, left, bottom, right];
  [(CKCoreChatController *)self _setTranscriptCustomScrollAnimationFromAnimationProperties:v9];
}

- (void)_updateGradientReferenceViewForContentInset:(UIEdgeInsets)a3 withAnimationProperties:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = a4;
  v10 = [(CKCoreChatController *)self gradientReferenceView];
  [(CKCoreChatController *)self gradientFrameWithInsets:top, left, bottom, right];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v10 gradientFrame];
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
    v21 = v10;
    v22 = v12;
    v23 = v14;
    v24 = v16;
    v25 = v18;
    v19 = _Block_copy(aBlock);
    [v9 performAnimationBlock:v19];
  }
}

uint64_t __92__CKCoreChatController__updateGradientReferenceViewForContentInset_withAnimationProperties___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setGradientFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutGradientViewsIfNeeded];
}

- (void)_setTranscriptCustomScrollAnimationFromAnimationProperties:(id)a3
{
  v6 = a3;
  if ([v6 animationType] == 1)
  {
    v4 = [v6 caBasicAnimation];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CKCoreChatController *)self collectionView];
  [v5 setTranscriptCustomScrollAnimation:v4];
}

- (void)contentInsetDidChangeWithAnimationProperties:(id)a3
{
  v4 = a3;
  v5 = [(CKCoreChatController *)self collectionView];
  [v5 enforceTranscriptScrollIntentWithAnimationProperties:v4];

  [v5 setTranscriptCustomScrollAnimation:0];
}

- (void)keyboardWillHideViaGesture
{
  v2 = [(CKCoreChatController *)self collectionViewController];
  v3 = [v2 collectionView];

  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CKCoreChatController_keyboardWillHideViaGesture__block_invoke;
  v6[3] = &unk_1E72EBA18;
  v7 = v3;
  v5 = v3;
  [v4 performWithoutAnimation:v6];
}

void __50__CKCoreChatController_keyboardWillHideViaGesture__block_invoke(uint64_t a1)
{
  v2 = +[CKScrollViewAnimationProperties unanimated];
  [*(a1 + 32) enforceTranscriptScrollIntentWithAnimationProperties:v2];
}

- (void)setupScrollingForKeyboardInteraction
{
  v3 = [(CKCoreChatController *)self collectionViewController];
  v4 = [v3 collectionView];
  [v4 contentSize];
  v6 = v5;

  v7 = [(CKCoreChatController *)self collectionViewController];
  [v7 setScrollAnchor:v6];
}

- (void)_registerSendProgressDelegate
{
  v3 = [(CKConversation *)self->_conversation chat];
  [v3 setSendProgressDelegate:self];
}

- (void)_deregisterSendProgressDelegate
{
  v3 = [(CKConversation *)self->_conversation chat];
  v4 = [v3 sendProgressDelegate];

  if (v4 == self)
  {
    v5 = [(CKConversation *)self->_conversation chat];
    [v5 setSendProgressDelegate:0];
  }

  [(UIProgressView *)self->_progressBar removeFromSuperview];
  [(CKCoreChatController *)self setProgressBar:0];
  self->_sendProgress = 0.0;
  self->_sendProgressSendCount = 0;
  self->_sendProgressTotalCount = 0;

  [(CKCoreChatController *)self _updateTitleAnimated:0];
}

- (void)chat:(id)a3 progressDidChange:(float)a4 sendingMessages:(id)a5 sendCount:(unint64_t)a6 totalCount:(unint64_t)a7 finished:(BOOL)a8
{
  v8 = a8;
  v13 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v13 BOOLForKey:@"ShouldHideProgressBar"])
  {
    self->_sendProgressSendCount = a6;
    self->_sendProgressTotalCount = a7;
    if (self->_sendProgressSendCount != a6)
    {
      [(CKCoreChatController *)self _updateTitleAnimated:1];
    }

    if (v8)
    {
      self->_sendProgressSendCount = 0;
      self->_sendProgressTotalCount = 0;
      [(CKCoreChatController *)self _updateTitleAnimated:1];
    }
  }

  else
  {
    v14 = [(CKCoreChatController *)self conversation];
    v15 = [v14 sendButtonColor];

    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 theme];
    v18 = [v17 sendButtonColorForColorType:v15];

    v19 = a4;
    if (a4 <= 0.0)
    {
      v35 = 0;
    }

    else
    {
      v20 = [(CKCoreChatController *)self progressBar];
      [v20 setTintColor:v18];
      v21 = +[CKUIBehavior sharedBehaviors];
      v22 = [v21 theme];
      v23 = [v22 progressBarTrackTintColor];
      [v20 setTrackTintColor:v23];

      v35 = v20;
      [v20 setAlpha:1.0];
    }

    v24 = v18;
    v25 = vabdd_f64(v19, self->_sendProgress) * 0.25;
    if (self->_sendProgressSendCount == a6 && self->_sendProgressTotalCount == a7)
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
    [(CKCoreChatController *)self updateSendProgress:v24 progressColor:v26 animation:a4];
    self->_sendProgress = v19;
    self->_sendProgressSendCount = a6;
    self->_sendProgressTotalCount = a7;
    if (v8)
    {
      v28 = 0;
    }

    else
    {
      v29 = +[CKUIBehavior sharedBehaviors];
      [v29 sendProgressTitleTransitionProgressThreshold];
      v28 = v30 < v19 && a4 < 1.0;
    }

    if ((v27 | v28))
    {
      [(CKCoreChatController *)self _updateTitleAnimated:1];
    }

    if (v8)
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
    v4 = [v3 showsProgressInNavigationBar];

    v5 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:v4];
    progressBar = self->_progressBar;
    self->_progressBar = v5;
  }

  [(UIProgressView *)self->_progressBar setAlpha:0.0];
  v7 = self->_progressBar;

  return v7;
}

- (void)registerNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__preferredServiceChangedNotification_ name:@"CKConversationPreferredServiceChangedNotification" object:0];
  [v3 addObserver:self selector:sel__downgradeStateChangedNotification_ name:*MEMORY[0x1E69A5708] object:0];
  [v3 addObserver:self selector:sel__serviceSwitchNotification_ name:*MEMORY[0x1E69A5910] object:0];
  [v3 addObserver:self selector:sel__satelliteStateChangedNotification_ name:*MEMORY[0x1E69A5938] object:0];
  [v3 addObserver:self selector:sel__handleUltraConstrainedStatusUpdatedNotification_ name:*MEMORY[0x1E69A7DC0] object:0];
  [v3 addObserver:self selector:sel__displayNameUpdatedNotification_ name:*MEMORY[0x1E69A5700] object:0];
  [v3 addObserver:self selector:sel__lastAddressedInfoChangedNotification_ name:*MEMORY[0x1E69A5820] object:0];
  [v3 addObserver:self selector:sel__handleStatusChangedNotification_ name:*MEMORY[0x1E69A59A0] object:0];
  [v3 addObserver:self selector:sel__handleStatusInvitationReceivedNotification_ name:*MEMORY[0x1E69A59B0] object:0];
  [v3 addObserver:self selector:sel__handleStatusStateChangedNotification_ name:*MEMORY[0x1E69A59B8] object:0];
  [v3 addObserver:self selector:sel__statusDaemonDisconnectedNotification_ name:*MEMORY[0x1E69A59A8] object:0];
  [v3 addObserver:self selector:sel__transferFinishedNotification_ name:@"CKFileTransferFinishedNotification" object:0];
  [v3 addObserver:self selector:sel__localeDidChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
  [v3 addObserver:self selector:sel_handleContentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  [v3 addObserver:self selector:sel__handleBlockedContactsChangedNotification_ name:*MEMORY[0x1E69A6A58] object:0];
  [v3 addObserver:self selector:sel__handleTranscriptBackgroundChangedNotification_ name:@"CKConversationTranscriptBackgroundChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handleTranscriptDisplayPropertiesChanged_ name:@"TranscriptDisplayPropertiesChangedNotification" object:0];
  [v3 addObserver:self selector:sel__messageFilteringEnabledDidChange_ name:CKMessageFilteringChangedNotification[0] object:0];
  [v3 addObserver:self selector:sel__increaseContrastDidChangeNotification_ name:*MEMORY[0x1E69DD8B8] object:0];
  [v3 addObserver:self selector:sel__transferRestoredNotification_ name:@"CKFileTransferRestoredNotification" object:0];
  [v3 addObserver:self selector:sel__handleAddressBookChangedNotification_ name:*MEMORY[0x1E69A6828] object:0];
  [v3 addObserver:self selector:sel__conversationListFinishedMerging_ name:@"CKConversationListFinishedMergingChatsNotification" object:0];
  [v3 addObserver:self selector:sel__refreshActiveChat_ name:*MEMORY[0x1E69A5688] object:0];
  [v3 addObserver:self selector:sel__refreshActiveChat_ name:*MEMORY[0x1E69A5680] object:0];
  [v3 addObserver:self selector:sel__chatRegistryDidReloadNotification_ name:*MEMORY[0x1E69A58A0] object:0];
  [v3 addObserver:self selector:sel__chatsRemergedNotification_ name:*MEMORY[0x1E69A58C8] object:0];
  [v3 addObserver:self selector:sel__handleStatusChangedNotification_ name:*MEMORY[0x1E69A7038] object:0];
  [v3 addObserver:self selector:sel__handleStatusInvitationReceivedNotification_ name:*MEMORY[0x1E69A7048] object:0];
  [v3 addObserver:self selector:sel__handleStatusStateChangedNotification_ name:*MEMORY[0x1E69A7050] object:0];
  [v3 addObserver:self selector:sel__statusDaemonDisconnectedNotification_ name:*MEMORY[0x1E69A7040] object:0];
}

- (void)preferredSendingServiceChanged
{
  [(CKCoreChatController *)self _updateTitleAnimated:1];
  [(CKCoreChatController *)self _updatePollSuggestionAvailability];
  v3 = [(CKCoreChatController *)self conversation];
  v7 = v3;
  if (!v3)
  {
    if ([(CKCoreChatController *)self previewingChatForScreenTime])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v4 = [v3 chat];
  if (v4 && [(CKCoreChatController *)self conversationAllowedByScreenTime])
  {

    goto LABEL_10;
  }

  v5 = [(CKCoreChatController *)self previewingChatForScreenTime];

  if (!v5)
  {
LABEL_8:
    if ([v7 isPending])
    {
      [(CKCoreChatController *)self _updateNewComposeServiceStatusItem];
    }
  }

LABEL_10:
  v6 = [(CKCoreChatController *)self chat];
  [v6 _reloadChatItemsForServiceChange];
}

- (void)_preferredServiceChangedNotification:(id)a3
{
  v5 = [a3 object];
  v4 = [(CKCoreChatController *)self conversation];
  if ([v4 isEqual:v5])
  {
    [(CKCoreChatController *)self preferredSendingServiceChanged];
  }
}

- (void)_downgradeStateChangedNotification:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Refreshing service for sending due downgrade state change", v9, 2u);
    }
  }

  v6 = [(CKCoreChatController *)self conversation];
  v7 = [v6 chat];
  v8 = [v4 object];

  if (v7 == v8)
  {
    [(CKCoreChatController *)self refreshServiceForSending];
  }
}

- (void)_serviceSwitchNotification:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Refreshing service for sending due to service switch request", v9, 2u);
    }
  }

  v6 = [(CKCoreChatController *)self conversation];
  v7 = [v6 chat];
  v8 = [v4 object];

  if (v7 == v8)
  {
    [(CKCoreChatController *)self refreshServiceForSending];
  }
}

- (void)_handleUltraConstrainedStatusUpdatedNotification:(id)a3
{
  v4 = a3;
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

- (void)_satelliteStateChangedNotification:(id)a3
{
  v4 = a3;
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

  v4 = [(CKCoreChatController *)self chat];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CKCoreChatController__refreshServiceForSendingForSatelliteStateChange__block_invoke;
  v5[3] = &unk_1E72EB9C8;
  v5[4] = self;
  [v4 refreshServiceForSendingWithCompletion:v5];
}

uint64_t __72__CKCoreChatController__refreshServiceForSendingForSatelliteStateChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chat];
  [v2 _reloadChatItemsForSatelliteStateChangeIfRequired:@"Satellite status changed"];

  v3 = *(a1 + 32);

  return [v3 _updatePollSuggestionAvailability];
}

- (void)_displayNameUpdatedNotification:(id)a3
{
  v6 = [a3 object];
  v4 = [(CKCoreChatController *)self chat];
  v5 = [v6 isEqual:v4];

  if (v5)
  {
    [(CKCoreChatController *)self _updateTitleAnimated:1];
  }
}

- (void)_lastAddressedInfoChangedNotification:(id)a3
{
  v6 = [a3 object];
  v4 = [(CKCoreChatController *)self chat];
  v5 = [v6 isEqual:v4];

  if (v5)
  {
    [v6 refreshServiceForSending];
  }
}

- (void)setHandleStatusAssertion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      handleStatusAssertion = self->_handleStatusAssertion;
      v9 = 134218240;
      v10 = v4;
      v11 = 2048;
      v12 = handleStatusAssertion;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Setting handle observer %p and invalidating old observer %p if necessary", &v9, 0x16u);
    }
  }

  v7 = self->_handleStatusAssertion;
  if (v7 != v4)
  {
    [(IMHandleStatusObserverAssertion *)v7 invalidate];
  }

  v8 = self->_handleStatusAssertion;
  self->_handleStatusAssertion = v4;
}

- (void)_statusDaemonDisconnectedNotification:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69A59A0]];

  if (v6)
  {
    v7 = @"Availability";
  }

  else
  {
    v8 = [v4 name];
    v9 = [v8 isEqualToString:*MEMORY[0x1E69A7038]];

    if (v9)
    {
      v7 = @"Off grid";
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = [(CKCoreChatController *)self chat];
  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%@ daemon was disconnected while there was an active chat controller. Requesting that we continue observing availability for chat %@", &v13, 0x16u);
      }
    }

    v12 = [v10 beginObservingHandleStatuses];
    [(CKCoreChatController *)self setHandleStatusAssertion:v12];
  }
}

- (void)_handleStatusChangedNotification:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(CKCoreChatController *)self chat];
  v7 = [v4 name];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69A59A0]];

  if (v8)
  {
    v9 = @"Availability";
  }

  else
  {
    v10 = [v4 name];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69A7038]];

    if (v11)
    {
      v9 = @"Off grid";
    }

    else
    {
      v9 = 0;
    }
  }

  v12 = [v5 isPersonalStatusSubscription];
  v13 = IMOSLoggingEnabled();
  if (v12)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v5 subscriptionIdentifier];
        v16 = [v6 guid];
        v22 = 138412546;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
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
        v18 = [v5 subscriptionIdentifier];
        v19 = [v5 ownerHandles];
        v20 = [v6 guid];
        v22 = 138413314;
        v23 = v9;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%@ changed for subscription %@ owned by %@ while there was an active chat controller displaying chat %@. Re-observing all relevant %@ status for chat.", &v22, 0x34u);
      }
    }

    v21 = [v6 beginObservingHandleStatuses];
    [(CKCoreChatController *)self setHandleStatusAssertion:v21];
  }
}

- (void)_handleStatusInvitationReceivedNotification:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(CKCoreChatController *)self chat];
  v7 = [v4 name];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69A59A0]];

  if (v8)
  {
    v9 = @"Availability";
  }

  else
  {
    v10 = [v4 name];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69A7038]];

    if (v11)
    {
      v9 = @"Off grid";
    }

    else
    {
      v9 = 0;
    }
  }

  v12 = [v5 isPersonalStatusSubscription];
  v13 = IMOSLoggingEnabled();
  if (v12)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v5 subscriptionIdentifier];
        v16 = [v6 guid];
        v22 = 138412802;
        v23 = v9;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
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
        v18 = [v5 subscriptionIdentifier];
        v19 = [v5 ownerHandles];
        v20 = [v6 guid];
        v22 = 138413314;
        v23 = v9;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%@ invitation received for subscription %@ owned by %@ while there was an active chat controller displaying chat: %@. Re-observing all relevant %@ for chat", &v22, 0x34u);
      }
    }

    v21 = [v6 beginObservingHandleStatuses];
    [(CKCoreChatController *)self setHandleStatusAssertion:v21];
  }
}

- (void)_handleStatusStateChangedNotification:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(CKCoreChatController *)self chat];
  v7 = [v4 name];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69A59A0]];

  if (v8)
  {
    v9 = @"Availability";
  }

  else
  {
    v10 = [v4 name];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69A7038]];

    if (v11)
    {
      v9 = @"Off grid";
    }

    else
    {
      v9 = 0;
    }
  }

  v12 = [v5 isPersonalStatusSubscription];
  v13 = IMOSLoggingEnabled();
  if (v12)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v5 subscriptionIdentifier];
        v16 = [v6 guid];
        v22 = 138412802;
        v23 = v9;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
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
        v18 = [v5 subscriptionIdentifier];
        v19 = [v5 ownerHandles];
        v22 = 138413314;
        v23 = v9;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v6;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%@ state changed for subscription %@ owned by %@ while there was an active chat controller displaying chat. Re-observing all relevant %@ status for chat: %@", &v22, 0x34u);
      }
    }

    v20 = [v6 beginObservingHandleStatuses];
    [(CKCoreChatController *)self setHandleStatusAssertion:v20];

    v21 = [v4 name];
    LODWORD(v20) = [v21 isEqualToString:*MEMORY[0x1E69A7050]];

    if (v20)
    {
      [v6 refreshServiceForSending];
    }
  }
}

- (void)_localeDidChangeNotification:(id)a3
{
  v4 = [(CKCoreChatController *)self conversation];
  [(CKCoreChatController *)self setConversation:v4 forceReload:1];
}

- (void)_chatRegistryDidReloadNotification:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_chatRegistryDidReloadNotification", v9, 2u);
    }
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A5898]];
  v8 = [v7 BOOLValue];

  [(CKCoreChatController *)self _reassignConversationWithDeferredReload:v8];
}

- (void)_chatsRemergedNotification:(id)a3
{
  v4 = a3;
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

- (void)_reassignConversationWithDeferredReload:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v10 = v3;
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
  if (v3)
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

- (void)handleContentSizeCategoryDidChangeNotification:(id)a3
{
  [(CKCoreChatController *)self _dismissFullScreenBubbleViewControllerAnimated:1 withSendAnimation:0 completion:0];
  v4 = [(CKCoreChatController *)self conversation];
  [(CKCoreChatController *)self setConversation:v4 forceReload:1];
}

- (void)_handleBlockedContactsChangedNotification:(id)a3
{
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isIntroductionsEnabled];

  if (v5)
  {
    v6 = [(CKCoreChatController *)self chat];
    [v6 _reloadChatItemsForBlockedContactsListChange];
  }
}

- (void)_increaseContrastDidChangeNotification:(id)a3
{
  v4 = [(CKCoreChatController *)self conversation];
  [(CKCoreChatController *)self setConversation:v4 forceReload:1];
}

- (void)_conversationListFinishedMerging:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKCoreChatController *)self conversation];
  v6 = +[CKConversationList sharedConversationList];
  v7 = [v5 chat];
  v8 = [v7 guid];
  v9 = [v6 conversationForExistingChatWithGUID:v8];

  if (v9)
  {
    if (v5 != v9)
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
          v14 = v5;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Conversation list performed re-merge, updating transcript conversation to %@ from %@", &v11, 0x16u);
        }

LABEL_11:
      }
    }
  }

  else if (v5 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CKCoreChatController attempted to replace conversation after re-merge, but couldn't find a new conversation to replace %@", &v11, 0xCu);
    }

    goto LABEL_11;
  }
}

- (void)significantTimeChange
{
  v3 = [(CKCoreChatController *)self navigationController];
  v4 = [v3 visibleViewController];

  if (v4 == self)
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

- (id)indexPathForMessageGUID:(id)a3 messagePartIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(CKCoreChatController *)self collectionViewController];
  v8 = [v7 indexPathForMessageGUID:v6 messagePartIndex:a4];

  return v8;
}

- (CGPoint)contentOffsetForIndexPath:(id)a3 viewToAlignWith:(id)a4 allowOverScroll:(BOOL)a5
{
  [(CKCoreChatController *)self contentOffsetForIndexPath:a3 viewToAlignWith:a4 allowOverScroll:a5 scrollPosition:2];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)contentOffsetForIndexPath:(id)a3 viewToAlignWith:(id)a4 allowOverScroll:(BOOL)a5 scrollPosition:(unint64_t)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = [(CKCoreChatController *)self collectionViewController];
  [v12 sizeFullTranscriptIfNecessary];
  v13 = [(CKCoreChatController *)self collectionView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v13 contentInset];
  v23 = v22;
  v25 = v15 + v24;
  v90 = v19 - (v24 + v26);
  v91 = v17 + v22;
  v28 = v21 - (v22 + v27);
  v29 = [v13 layoutAttributesForItemAtIndexPath:v10];
  [v29 frame];
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  if (v11)
  {
    v88 = v15;
    v38 = [(CKCoreChatController *)self collectionViewController];
    v39 = [v38 chatItemAtIndexPath:v10];

    v40 = [(CKCoreChatController *)self collectionViewController];
    v41 = [v40 balloonViewForChatItem:v39];

    v42 = v28;
    if (v41)
    {
      objc_opt_class();
      v43 = v25;
      if (objc_opt_isKindOfClass())
      {
        [v41 ck_identityTransformFrameInView:v13];
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
          v53 = [v13 coordinateSpace];
          [v41 currentAssetFrameInCoordinateSpace:v53];
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
    [v11 frame];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = [v11 superview];
    [v13 convertRect:v67 fromView:{v60, v62, v64, v66}];
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

  else if (v6)
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

  v77 = [v12 chatItems];
  v78 = [v77 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v80 = [v13 layoutAttributesForItemAtIndexPath:v79];
    [v80 frame];
    MaxY = CGRectGetMaxY(v98);
    if (MaxY > v52)
    {
      v52 = MaxY - v23;
    }
  }

  if (!a5)
  {
    v82 = [v13 collectionViewLayout];
    [v82 collectionViewContentSize];
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

- (void)scrollToHighlightedMessageScrollContext:(id)a3
{
  v4 = a3;
  v5 = [(CKCoreChatController *)self collectionView];
  v6 = [v4 messageGUID];
  v7 = [v4 messagePartIndex];
  v8 = [v4 viewToAlignWith];
  v9 = [v4 allowOverScroll];
  v10 = [v4 scrollPosition];

  v11 = [(CKCoreChatController *)self indexPathForMessageGUID:v6 messagePartIndex:v7];
  if (v11)
  {
    [(CKCoreChatController *)self contentOffsetForIndexPath:v11 viewToAlignWith:v8 allowOverScroll:v9 scrollPosition:v10];
    v13 = v12;
    v15 = v14;
    [v5 beginDisablingTranscriptDynamicsForReason:14];
    [v5 setContentOffset:0 animated:{v13, v15}];
    [v5 endDisablingTranscriptDynamicsForReason:14];
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
  v2 = [(CKCoreChatController *)self isFullScreenBalloonViewOnScreen];
  v3 = IMLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
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

  return !v2;
}

- (BOOL)showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[CKCoreChatController showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:]";
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Tapbacks] %s, indexPath: %@", &v12, 0x16u);
    }
  }

  if (v4)
  {
    v6 = [(CKCoreChatController *)self collectionViewController];
    v7 = [v6 chatItems];
    v8 = [v7 objectAtIndex:{objc_msgSend(v4, "item")}];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 136315650;
        v13 = "[CKCoreChatController showFullScreenAcknowledgmentPickerIfNeededForBalloonAtIndexPath:]";
        v14 = 2112;
        v15 = v4;
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

- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 IMChatItem];
      v7 = [v6 guid];
      v9 = 136315394;
      v10 = "[CKCoreChatController showFullScreenAcknowledgmentPickerForChatItem:]";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Tapbacks] %s, chatItem.guid: %@", &v9, 0x16u);
    }
  }

  v8 = +[CKFullScreenBalloonViewDisplayConfiguration tapbackPickerContext];
  [(CKCoreChatController *)self showFullScreenAcknowledgmentPickerForChatItem:v4 displayConfiguration:v8];
}

- (void)showFullScreenTapbackKeyboardInputForChatItem:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 IMChatItem];
      v7 = [v6 guid];
      v9 = 136315394;
      v10 = "[CKCoreChatController showFullScreenTapbackKeyboardInputForChatItem:]";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Tapbacks] %s, chatItem.guid: %@", &v9, 0x16u);
    }
  }

  v8 = +[CKFullScreenBalloonViewDisplayConfiguration tapbackKeyboardInputContext];
  [(CKCoreChatController *)self showFullScreenAcknowledgmentPickerForChatItem:v4 displayConfiguration:v8];
}

- (BOOL)shouldShowTapbackAttributionForFullScreenBalloonViewController:(id)a3
{
  v4 = [a3 chatItem];
  LOBYTE(self) = [(CKCoreChatController *)self shouldShowTapbackAttributionForChatItem:v4];

  return self;
}

- (BOOL)shouldShowTapbackPickerForFullScreenBalloonViewController:(id)a3
{
  v4 = [a3 chatItem];
  LOBYTE(self) = [(CKCoreChatController *)self shouldShowTapbackPickerForChatItem:v4];

  return self;
}

- (id)contextualChatItemsForTapbackPicker
{
  v2 = [(CKCoreChatController *)self collectionViewController];
  v3 = [v2 chatItems];

  return v3;
}

- (BOOL)shouldShowFullScreenAcknowledgmentPickerForChatItem:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(CKCoreChatController *)self isFullScreenBalloonViewOnScreen])
  {
    v7 = [(CKCoreChatController *)self balloonViewForChatItem:v4];
    v8 = v7;
    if (v7)
    {
      if ([v7 canPresentTapbackPicker])
      {
        v9 = [(CKCoreChatController *)self shouldShowTapbackPickerForChatItem:v4];
        v10 = [(CKCoreChatController *)self shouldShowTapbackAttributionForChatItem:v4];
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
        v13 = [v4 IMChatItem];
        v14 = [v13 guid];
        v16 = 138412290;
        *v17 = v14;
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

- (BOOL)shouldShowTapbackAttributionForChatItem:(id)a3
{
  v3 = a3;
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

  if (([v3 hasVisibleAssociatedMessageItems] & 1) == 0)
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

- (BOOL)shouldShowTapbackPickerForChatItem:(id)a3
{
  v4 = a3;
  if ([(CKCoreChatController *)self _shouldAllowReplyFromLockScreen])
  {
    v5 = [(CKCoreChatController *)self conversation];
    v6 = [v5 isBusinessChatDisabled];

    if (v6)
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
      v12 = [(CKCoreChatController *)self conversation];
      v13 = [v12 chat];
      v14 = [v13 supportsCapabilities:0x40000];

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

      v15 = [(CKCoreChatController *)self conversation];
      v16 = [v15 chat];
      v17 = [v16 canSend];

      if ((v17 & 1) == 0)
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

      if ([v4 canSendTapbacks])
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

- (void)_dismissFullScreenBubbleViewControllerAnimated:(BOOL)a3 withSendAnimation:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __100__CKCoreChatController__dismissFullScreenBubbleViewControllerAnimated_withSendAnimation_completion___block_invoke;
  v19 = &unk_1E72ED1C8;
  v20 = self;
  v9 = v8;
  v21 = v9;
  v10 = _Block_copy(&v16);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (v6)
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
      v25 = v5;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "[Tapbacks] _dismissFullScreenBubbleViewControllerAnimated %@:WithSendAnimation: %d, completion %@", buf, 0x1Cu);
    }
  }

  v14 = [(CKCoreChatController *)self fullScreenBalloonViewController:v16];
  v15 = v14;
  if (v6)
  {
    if (v5)
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

- (void)fullScreenBalloonViewController:(id)a3 didAppearAnimated:(BOOL)a4
{
  v5 = a3;
  v6 = [(CKCoreChatController *)self collectionViewController];
  v7 = [v5 chatItem];
  v19 = [v6 balloonViewForChatItem:v7];

  [v19 prepareForAcknowledgementDisplay];
  v8 = [v19 window];
  v9 = [(CKCoreChatController *)self view];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(CKCoreChatController *)self view];
  [v8 convertRect:v18 fromView:{v11, v13, v15, v17}];
  [v5 setPreservedBoundsInBalloonWindowAtAppearance:?];
}

- (void)fullScreenBalloonViewControllerDidDisappear:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKCoreChatController *)self chat];
  [v5 endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57A0]];
  [(CKScrollViewController *)self endHoldingScrollGeometryUpdatesForReason:@"FullscreenBalloonMenuVisible"];
  v6 = [(CKCoreChatController *)self collectionViewController];
  v7 = [v4 chatItem];
  v8 = [v6 balloonViewForChatItem:v7];

  [v8 prepareForAcknowledgementDismissal];
  v9 = [v4 view];
  [v9 removeFromSuperview];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[CKCoreChatController fullScreenBalloonViewControllerDidDisappear:]";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "[Tapbacks] %s, tapback overlay did disappear for controller: %@", &v11, 0x16u);
    }
  }
}

- (id)balloonViewForChatItem:(id)a3
{
  v4 = a3;
  v5 = [(CKCoreChatController *)self collectionViewController];
  v6 = [v4 IMChatItem];

  v7 = [v6 guid];
  v8 = [v5 chatItemForGUID:v7];

  v9 = [(CKCoreChatController *)self collectionViewController];
  v10 = [v9 balloonViewForChatItem:v8];

  return v10;
}

- (CGRect)fullScreenBalloonViewController:(id)a3 balloonFrameForChatItem:(id)a4
{
  v5 = [(CKCoreChatController *)self fullScreenBalloonViewController:a3 balloonViewForChatItem:a4];
  if (v5)
  {
    v6 = [(CKCoreChatController *)self view];
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v5 superview];
    [v6 convertRect:v15 fromView:{v8, v10, v12, v14}];
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

- (void)fullScreenBalloonViewControllerHandleDismissTap:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v4 = [(CKCoreChatController *)self chat];
  v5 = [v4 canSendInlineReply];

  return v5;
}

- (CGRect)fullScreenBalloonViewControllerSafeAreaLayoutFrame:(id)a3
{
  v3 = [(CKCoreChatController *)self view];
  v4 = [v3 safeAreaLayoutGuide];
  [v4 layoutFrame];
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

- (id)fullScreenBalloonViewController:(id)a3 duplicatedViewForChatItem:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(CKCoreChatController *)self collectionViewController];
    v9 = [v8 balloonViewForChatItem:v7];

    v10 = v9;
    v11 = [v10 currentAssetSnapshot];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v25 = 136315394;
        v26 = "[CKCoreChatController fullScreenBalloonViewController:duplicatedViewForChatItem:]";
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "[Tapbacks] %s, returning asset snapshot: %@", &v25, 0x16u);
      }
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(CKCoreChatController *)self balloonViewForChatItem:v7];
    v14 = +[CKUIBehavior sharedBehaviors];
    if ([v14 usesTapbackRefreshStyling])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = v13;
        v17 = [v16 pluginView];
        v18 = [v17 snapshotViewAfterScreenUpdates:0];

        v19 = [CKTranscriptPluginBalloonView alloc];
        [v16 frame];
        v11 = [(CKTranscriptPluginBalloonView *)v19 initWithFrame:?];
        [(CKTranscriptPluginBalloonView *)v11 setPluginView:v18 pluginController:0];
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v25 = 136315394;
            v26 = "[CKCoreChatController fullScreenBalloonViewController:duplicatedViewForChatItem:]";
            v27 = 2112;
            v28 = v11;
            _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "[Tapbacks] %s, returning duplicated transcriptplugingBalloonView: %@", &v25, 0x16u);
          }
        }

        [(CKBalloonView *)v11 setNeedsPrepareForDisplay];
        [(CKBalloonView *)v11 prepareForDisplayIfNeeded];

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
    }

    v11 = [v13 snapshotCurrentView];
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = 136315394;
        v26 = "[CKCoreChatController fullScreenBalloonViewController:duplicatedViewForChatItem:]";
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "[Tapbacks] %s, returning balloonView snapshot: %@", &v25, 0x16u);
      }
    }

    goto LABEL_30;
  }

  v11 = CKBalloonViewForClass([v7 balloonViewClass]);
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();
  [(CKBalloonView *)v11 configureForMessagePart:v7];
  if ((v21 & 1) == 0)
  {
    [(CKBalloonView *)v11 setInvisibleInkEffectEnabled:0];
  }

  [(CKTranscriptPluginBalloonView *)v11 setCanUseOpaqueMask:0];
  if (objc_opt_respondsToSelector())
  {
    v22 = [(CKCoreChatController *)self view];
    [(CKTranscriptPluginBalloonView *)v11 setGradientReferenceView:v22];
  }

  if ([v6 shouldHideBalloonTail])
  {
    [(CKTranscriptPluginBalloonView *)v11 setHasTail:0];
  }

  [(CKBalloonView *)v11 setNeedsPrepareForDisplay];
  [(CKBalloonView *)v11 prepareForDisplayIfNeeded];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v25 = 136315394;
      v26 = "[CKCoreChatController fullScreenBalloonViewController:duplicatedViewForChatItem:]";
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "[Tapbacks] %s, returning balloonView: %@", &v25, 0x16u);
    }

    goto LABEL_30;
  }

LABEL_31:

  return v11;
}

- (void)showInlineReplyControllerForChatItem:(id)a3 presentKeyboard:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[CKInlineReplyTransitionProperties defaultProperties];
  [(CKCoreChatController *)self showInlineReplyControllerForChatItem:v6 presentKeyboard:v4 replyTransitionProperties:v7];
}

- (id)_threadChatItemForReplyCountChatItem:(id)a3 chatItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 IMChatItem];
  if ([v7 itemIsReplyCount])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 threadIdentifier];
    v12 = [v10 replyMessageGUID];
    if ([v11 length] || objc_msgSend(v12, "length"))
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
      v16 = v12;
      v17 = v11;
      v18 = &v19;
      [v6 enumerateObjectsUsingBlock:v15];
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

- (void)configureWithToolbarController:(id)a3
{
  v6 = a3;
  v4 = [(CKCoreChatController *)self macToolbarController];

  if (v4 != v6)
  {
    [(CKCoreChatController *)self setMacToolbarController:v6];
  }

  if ([(CKCoreChatController *)self conformsToProtocol:&unk_1F051C328])
  {
    v5 = [(CKCoreChatController *)self macToolbarController];
    [v5 setSecondaryItemProvider:self];
  }
}

- (void)presentMacToolbarController
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 useMacToolbar];

  if (v4)
  {
    v5 = [(CKCoreChatController *)self macToolbarController];

    if (v5)
    {
      v8 = [(CKCoreChatController *)self view];
      v6 = [(CKCoreChatController *)self macToolbarController];
      v7 = [v6 view];
      [v8 addSubview:v7];
    }
  }
}

- (void)fullScreenBalloonViewController:(id)a3 sendMessageHighlight:(BOOL)a4 forChatItem:(id)a5
{
  v5 = a4;
  v7 = a5;
  v14 = [(CKCoreChatController *)self chat];
  v8 = [v7 IMChatItem];
  v9 = [v8 guid];
  v10 = [v7 messagePartRange];
  v12 = v11;

  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = 8;
  }

  [v14 sendSyndicationAction:v13 forMessagePartGUID:v9 syndicatedMessagePartRange:{v10, v12}];
}

- (id)contextualChatItemsForFullScreenBalloonViewController:(id)a3
{
  v3 = [(CKCoreChatController *)self collectionViewController];
  v4 = [v3 chatItems];

  return v4;
}

- (void)copyChatItem:(id)a3
{
  v5 = a3;
  if ([v5 canCopy] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v4 = [v5 pasteboardItemProviders];
    [v3 setItemProviders:v4];
  }
}

- (void)deleteChatItem:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 canDelete])
  {
    v5 = [(CKCoreChatController *)self collectionViewController];
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v5 deleteSelectedChatItems:v6];
  }
}

- (void)transcriptCollectionViewController:(id)a3 willDeleteChatItems:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E69A7FC8] sharedManager];
  v7 = [v6 isFeatureEnabled];

  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__CKCoreChatController_transcriptCollectionViewController_willDeleteChatItems___block_invoke;
    v8[3] = &unk_1E72F0918;
    v8[4] = self;
    [v5 enumerateObjectsUsingBlock:v8];
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

- (void)transcriptCollectionViewControllerDidAddTapback:(id)a3 tapbackChatItem:(id)a4
{
  v8 = a4;
  if ([objc_opt_class() supportsTranscriptBackground])
  {
    v5 = [(CKCoreChatController *)self transcriptBackground];
    v6 = [v8 IMChatItem];
    v7 = [v6 guid];
    [v5 didAddTapbackToChatItemWithGUID:v7];
  }
}

- (void)transcriptCollectionViewControllerDidRemoveTapback:(id)a3 tapbackChatItem:(id)a4
{
  v8 = a4;
  if ([objc_opt_class() supportsTranscriptBackground])
  {
    v5 = [(CKCoreChatController *)self transcriptBackground];
    v6 = [v8 IMChatItem];
    v7 = [v6 guid];
    [v5 didRemoveTapbackFromChatItemWithGUID:v7];
  }
}

- (CKTranscriptBackgroundChannelController)transcriptBackgroundChannelController
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isTranscriptBackgroundsEnabled];

  if (v3)
  {
    v4 = +[CKTranscriptBackgroundChannelController sharedTranscriptBackgroundChannelController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)transcriptBackgroundViewDidChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKCoreChatController *)self delegate];
  [v5 chatControllerDidChangeBackground:self];

  if (v3)
  {
    [(CKCoreChatController *)self _updateTranscriptDockingStateIfNeeded];
    [(CKScrollViewController *)self updateScrollGeometryForReason:@"TranscriptDockingChanged" withDuration:3 animationCurve:0.0];
  }

  if ([(CKCoreChatController *)self isInitialTranscriptBackgroundSetup]&& [(CKCoreChatController *)self _transcriptShouldBeDockedOnPush])
  {
    v6 = [(CKCoreChatController *)self collectionView];
    [v6 setTranscriptScrollIntent:9];
    v7 = +[CKScrollViewAnimationProperties unanimated];
    [v6 enforceTranscriptScrollIntentWithAnimationProperties:v7];
    v8 = [(CKCoreChatController *)self transcriptBackground];
    [v8 transcriptDockingStateDidChange:1];
  }

  [(CKCoreChatController *)self setIsInitialTranscriptBackgroundSetup:0];
}

- (void)transcriptCollectionViewController:(id)a3 dockedStateDidChange:(BOOL)a4
{
  v4 = a4;
  if ([objc_opt_class() supportsTranscriptBackground])
  {
    v6 = [(CKCoreChatController *)self transcriptBackground];
    [v6 transcriptDockingStateDidChange:v4];
  }
}

- (id)transcriptBackground:(id)a3 balloonAttributesForChatItemGuid:(id)a4
{
  v5 = a4;
  v6 = [(CKCoreChatController *)self collectionViewController];
  v7 = [v6 indexPathForChatItemGUID:v5];

  if (v7)
  {
    v8 = [(CKCoreChatController *)self collectionView];
    v9 = [v8 cellForItemAtIndexPath:v7];

    v10 = [_TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes alloc];
    v11 = [(CKCoreChatController *)self collectionView];
    v12 = [(CKTranscriptBackgroundBalloonAttributes *)v10 initWithChatItemGUID:v5 cell:v9 inCollectionView:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGRect)transcriptBackground:(id)a3 convertRect:(CGRect)a4 toView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a5;
  v11 = [(CKCoreChatController *)self collectionView];
  [v11 convertRect:v10 toView:{x, y, width, height}];
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

- (void)transcriptBackground:(id)a3 enumerateVisbleBalloonChatItemGUIDsInReverse:(BOOL)a4 usingBlock:(id)a5
{
  v5 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v27 = a5;
  v7 = MEMORY[0x1E695DFD8];
  v8 = [(CKCoreChatController *)self collectionView];
  v9 = [v8 indexPathsForVisibleItems];
  v10 = [v7 setWithArray:v9];

  v11 = [(CKCoreChatController *)self collectionViewController];
  v12 = [v11 chatItems];
  v13 = v12;
  if (v5)
  {
    [v12 reverseObjectEnumerator];
  }

  else
  {
    [v12 objectEnumerator];
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
    v26 = (v27 + 2);
    do
    {
      v19 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v28 + 1) + 8 * v19) IMChatItem];
        v21 = [v20 guid];

        if (v21)
        {
          v22 = [(CKCoreChatController *)self collectionViewController];
          v23 = [v22 indexPathForChatItemGUID:v21];

          if (v23 && [v10 containsObject:v23])
          {
            v24 = [(CKCoreChatController *)self collectionView];
            v25 = [v24 cellForItemAtIndexPath:v23];

            if (v25)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27[2](v27, v21);
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
  v3 = [(CKCoreChatController *)self composeInitialStatusLabel];

  if (v3)
  {
    v4 = [(CKCoreChatController *)self composeInitialStatusLabel];
    [v4 removeFromSuperview];

    [(CKCoreChatController *)self setComposeInitialStatusLabel:0];
  }

  v5 = [(CKCoreChatController *)self conversation];
  v6 = [v5 isPending];

  if (v6)
  {

    [(CKCoreChatController *)self _displayNewComposeServiceStatusItemIfNeeded];
  }
}

- (void)_displayNewComposeServiceStatusItemIfNeeded
{
  v3 = [(CKCoreChatController *)self composeInitialStatusLabel];
  [v3 removeFromSuperview];

  [(CKCoreChatController *)self setComposeInitialStatusLabel:0];
  v4 = [(CKCoreChatController *)self _displayNewComposeSatelliteStatusItemIfNeeded];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isRCSEncryptionEnabled];

  if (v6 && !v4)
  {
    v10 = [(CKCoreChatController *)self conversation];
    v7 = [v10 handles];
    if ([v7 count])
    {
      v8 = [(CKCoreChatController *)self conversation];
      v9 = [v8 isBusinessConversation];

      if ((v9 & 1) == 0)
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
  v5 = [(CKCoreChatController *)self conversation];
  v6 = [v5 sendingService];
  v15 = [v3 _initWithItem:v4 service:v6 handle:0];

  v7 = [(CKCoreChatController *)self conversation];
  v8 = [v7 sendingService];
  if ([v8 __ck_isMadrid])
  {
    [v15 setEncrypted:1];
  }

  else
  {
    v9 = [(CKCoreChatController *)self conversation];
    v10 = [v9 sendingService];
    if ([v10 __ck_isRCS])
    {
      v11 = [(CKCoreChatController *)self conversation];
      [v15 setEncrypted:{objc_msgSend(v11, "isSendingServiceEncrypted")}];
    }

    else
    {
      [v15 setEncrypted:0];
    }
  }

  v12 = [(CKCoreChatController *)self collectionViewController];
  [v12 balloonMaxWidth];
  v13 = [CKChatItem chatItemWithIMChatItem:v15 balloonMaxWidth:?];

  v14 = [v13 loadTranscriptText];
  [(CKCoreChatController *)self _insertNewComposeInitialStatusLabelWithAttributedString:v14];
}

- (BOOL)_displayNewComposeSatelliteStatusItemIfNeeded
{
  v3 = [(CKCoreChatController *)self conversation];
  v4 = [v3 handles];
  v5 = [v4 count];

  if (v5 < 2)
  {
    v7 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E69A5B00] sharedInstance];
    v7 = [v6 isSatelliteConnectionActive];
  }

  v8 = [MEMORY[0x1E69A5B00] sharedInstance];
  if ([v8 isSatelliteConnectionActive])
  {
    v9 = [(CKCoreChatController *)self conversation];
    v10 = [v9 recipients];
    if ([v10 count])
    {
      v11 = [(CKCoreChatController *)self conversation];
      v12 = [v11 isSatelliteSendingService] ^ 1;
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

  if (((v7 | v12) & 1) == 0)
  {
    return 0;
  }

  v13 = [(CKCoreChatController *)self composeInitialStatusLabel];

  if (v13)
  {
    return 0;
  }

  v15 = [(CKCoreChatController *)self conversation];
  v16 = [v15 sendingService];
  v17 = [MEMORY[0x1E69A5CA0] iMessageService];
  if (v16 == v17)
  {
    v21 = 1;
  }

  else
  {
    v18 = [(CKCoreChatController *)self conversation];
    v19 = [v18 sendingService];
    v20 = [MEMORY[0x1E69A5CA0] iMessageLiteService];
    v21 = v19 == v20;
  }

  v22 = [CKUnavailableSatelliteForServiceChatItem newComposeTranscriptTextForiMessage:v21 isGroupChat:v5 > 1];
  [(CKCoreChatController *)self _insertNewComposeInitialStatusLabelWithAttributedString:v22];

  return 1;
}

- (void)_insertNewComposeInitialStatusLabelWithAttributedString:(id)a3
{
  v4 = a3;
  [(CKCoreChatController *)self _initialFrameForCollectionView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v25 = objc_alloc_init(CKTranscriptLabelCell);
  [(CKTranscriptLabelCell *)v25 setAttributedText:v4];
  [(CKCoreChatController *)self calculateTranscriptMarginInsets];
  v12 = v11;
  v13 = v10 + v11 * -2.0;
  [v4 boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
  v15 = v14;

  v16 = [(CKCoreChatController *)self view];
  [v16 safeAreaInsets];
  v18 = v17;
  [(CKScrollViewController *)self topInsetPadding];
  v20 = v18 + v19;
  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 transcriptNewComposeServiceStatusTopPadding];
  v23 = v20 + v22;

  [(CKTranscriptLabelCell *)v25 setFrame:v6 + v12, v8 + v23, v13, v15];
  [(CKCoreChatController *)self setComposeInitialStatusLabel:v25];
  v24 = [(CKCoreChatController *)self view];
  [v24 insertSubview:v25 atIndex:0];
}

- (id)lazyCreatedActivePinningInputViewReasons
{
  v3 = [(CKCoreChatController *)self activePinningInputViewReasons];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
    [(CKCoreChatController *)self setActivePinningInputViewReasons:v3];
  }

  return v3;
}

- (void)beginPinningInputViewsForReason:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKCoreChatController *)self lazyCreatedActivePinningInputViewReasons];
  v6 = [v5 count];
  [v5 addObject:v4];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v5;
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
        v12 = v4;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Beginning pinning input views for reason %@", &v11, 0xCu);
      }
    }

    [(CKCoreChatController *)self _beginPinningInputViews];
    v10 = [MEMORY[0x1E69DCD68] sharedInstance];
    [v10 _beginDisablingAnimations];
  }
}

- (void)endPinningInputViewsForReason:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKCoreChatController *)self lazyCreatedActivePinningInputViewReasons];
  if (([v5 containsObject:v4] & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Received request to end pinning input views for reason %@, but we are not currently pinning for that reason.", &v11, 0xCu);
    }

    goto LABEL_6;
  }

  [v5 removeObject:v4];
  v6 = [v5 count];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = v5;
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
        v12 = v4;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Ending pinning input views for reason %@", &v11, 0xCu);
      }
    }

    [(CKCoreChatController *)self _endPinningInputViews];
    v10 = [MEMORY[0x1E69DCD68] sharedInstance];
    [v10 _endDisablingAnimations];
  }

LABEL_16:
}

- (void)presentAttachmentDownloadFailedErrorForTransfer:(id)a3
{
  v25 = a3;
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"TAP_TO_DOWNLOAD_ITEM_FAILED_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"TAP_TO_DOWNLOAD_ITEM_FAILED_ALERT_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  v8 = [(CKCoreChatController *)self mediaObjectToDownload];

  if (v8)
  {
    v9 = [(CKCoreChatController *)self mediaObjectToDownload];
    v10 = [v9 transferGUID];
    v11 = [v25 guid];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      v13 = [(CKCoreChatController *)self mediaObjectToDownload];
      v14 = [v13 mediaType];

      if (v14 == 3)
      {
        v15 = @"TAP_TO_DOWNLOAD_IMAGE_FAILED_ALERT_MESSAGE";
        v16 = @"TAP_TO_DOWNLOAD_IMAGE_FAILED_ALERT_TITLE";
      }

      else
      {
        if (v14 != 2)
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

  v24 = [(CKCoreChatController *)self navigationController];
  [v24 presentViewController:v21 animated:1 completion:0];
}

- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)a3 displayConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = [(CKCoreChatController *)v11 collectionViewController];
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

    sub_190A376C0(v6, v7);
  }

  else
  {

    sub_190A376C0(v6, v7);
  }
}

- (id)generateDefaultFullScreenBalloonViewControllerWithChatItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s7ChatKit41FullScreenBalloonViewDisplayConfigurationC20tapbackPickerContextACyFZ_0();
  v7 = [(CKCoreChatController *)v5 generateFullScreenBalloonViewControllerWithChatItem:v4 displayConfiguration:v6];

  return v7;
}

- (id)generateFullScreenBalloonViewControllerWithChatItem:(id)a3 displayConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CKCoreChatController.generateFullScreenBalloonViewController(with:displayConfiguration:)(v6, v7);

  return v9;
}

- (void)configureTapbackBackdropCaptureView
{
  v2 = self;
  CKCoreChatController.configureTapbackBackdropCaptureView()();
}

- (void)removeTapbackBackdropCaptureView
{
  v3 = objc_opt_self();
  v9 = self;
  v4 = [v3 sharedBehaviors];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 usesTapbackRefreshStyling];

    if (v6)
    {
      v7 = [(CKCoreChatController *)v9 tapbackBackdropCaptureView];
      [(UIView *)v7 removeFromSuperview];

      v8 = v7;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)chatSupportsStickerTapbacks
{
  v2 = self;
  v3 = [(CKCoreChatController *)v2 conversation];
  v4 = [(CKConversation *)v3 chat];

  if (v4)
  {
    v5 = [(IMChat *)v4 supportsCapabilities:0x10000];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendTapback:(id)a3 chatItem:(id)a4 isRemoval:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_190A38878(v8, v9, a5);
}

- (id)currentlyFocusedChatItemForTapbackInTranscriptCollectionViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190A38AA8(v4);
  v7 = v6;

  return v7;
}

- (void)fullScreenBalloonViewController:(id)a3 didSelectTapback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190A38FC0(v6, v7);
}

- (void)fullScreenBalloonViewController:(id)a3 didDeselectTapback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190A3920C(v6, v7);
}

- (void)fullScreenBalloonViewController:(id)a3 requestedPresentPlugin:(id)a4 withPayloadID:(id)a5
{
  v5 = a5;
  if (a4)
  {
    v8 = sub_190D56D90();
    if (v5)
    {
LABEL_3:
      v9 = sub_190D56F10();
      v5 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v11 = a3;
  v12 = self;
  sub_190A3A6D8(v8, v9, v5);
}

- (void)fullScreenBalloonViewControllerRequestedAppCardDismiss:(id)a3
{
  v6 = self;
  v3 = [(CKCoreChatController *)v6 inputController];
  if (v3)
  {
    v4 = v3;
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

- (id)associatedTapbackPileViewForFullScreenBalloonViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190A39604(v4);
  v7 = v6;

  return v7;
}

- (void)fullScreenBalloonViewController:(id)a3 updateTapbackPileAppearanceAsHidden:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_190A39868(v6, a4);
}

- (void)fullScreenBalloonViewController:(id)a3 updateTranscriptBalloonViewAppearanceAsHidden:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_190A39C18(v6, a4);
}

- (id)fullScreenBalloonViewControllerSmartEmojiResponses:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 chatItem];
  sub_190A37388(v6);

  v7 = sub_190D57160();

  return v7;
}

- (id)textInputContextIdentifierForFullScreenBalloonViewController:(id)a3
{
  v3 = self;
  v4 = [(CKCoreChatController *)v3 textInputContextIdentifier];
  if (v4)
  {
    v5 = v4;
    sub_190D56F10();

    v6 = sub_190D56ED0();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)indexPathOfParentChatItemForIndexPath:(id)a3
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  sub_190D51BC0();
  v11 = self;
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
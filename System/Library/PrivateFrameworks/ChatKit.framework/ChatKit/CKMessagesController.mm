@interface CKMessagesController
- (BOOL)_changeFilterModeIfNeeded;
- (BOOL)_hasCurrentConversations;
- (BOOL)_isSendingNewComposeMessage;
- (BOOL)_isShowingFullscreenController;
- (BOOL)_isShowingModalChatController;
- (BOOL)_isTimedOutForState:(id)a3;
- (BOOL)_shouldShowSMSRelayPrompt;
- (BOOL)_shouldShowSMSRelayPromptOnLaunch;
- (BOOL)_wantsThreeColumnLayout;
- (BOOL)becomeFirstResponder;
- (BOOL)currentCompositionHasContent;
- (BOOL)daemonIsConnected;
- (BOOL)hasBusinessRecipientWithRecipientIDs:(id)a3;
- (BOOL)hasDetailsNavigationController;
- (BOOL)hasPresentedInspectorForChatController:(id)a3;
- (BOOL)hasRecentlyDeletedFilterSelected;
- (BOOL)hasUnreadFilteredConversationsIgnoringMessages:(id)a3;
- (BOOL)inboxViewController:(id)a3 shouldShowFilterMode:(unint64_t)a4;
- (BOOL)isAnimatingMessageSend;
- (BOOL)isComposingMessage;
- (BOOL)isConversationShown:(id)a3;
- (BOOL)isDetailsNavigationControllerDetached;
- (BOOL)isDownTimeActiveForCurrentChat;
- (BOOL)isSearchActiveAndDisplayingResultsForSearchText;
- (BOOL)isShowingChatController;
- (BOOL)isShowingChatControllerWithUnsentText;
- (BOOL)isShowingComposeChatController;
- (BOOL)isShowingConversationListController;
- (BOOL)isShowingInboxViewController;
- (BOOL)isShowingSelectionView;
- (BOOL)isTopVCChatNavigationController;
- (BOOL)onboardingControllerIsActive;
- (BOOL)resumeToConversation:(id)a3;
- (BOOL)sendMenuPresentationShouldUseKeyboardSnapshot:(id)a3;
- (BOOL)shouldAutorotate;
- (BOOL)shouldRestoreToConversationListForState:(id)a3;
- (BOOL)shouldShowMakoIMessageAlert;
- (BOOL)shouldUseMinimumSafeAreas;
- (BOOL)showUnreadConversationsWithLastConversation:(id)a3 ignoringMessages:(id)a4;
- (BOOL)splitViewController:(id)a3 collapseSecondaryViewController:(id)a4 ontoPrimaryViewController:(id)a5;
- (CKAlertController)currentSMSRelayPinAlert;
- (CKConversationListControllerProtocol)conversationListController;
- (CKDetailsNavigationController)detailsNavigationController;
- (CKInboxModel)inboxModel;
- (CKMessagesController)init;
- (CKMessagesController)initWithStyle:(int64_t)a3;
- (CKMessagesControllerDelegate)messagesControllerDelegate;
- (CKMessagesSplitViewCoordinator)splitViewCoordinator;
- (IMSyncedSettingsManager)syncedSettingsManager;
- (NSSet)alertSuppressionContexts;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3;
- (UINavigationController)chatNavigationController;
- (UINavigationController)conversationListNavigationController;
- (UINavigationController)redesignedDetailsNavigationController;
- (UIViewController)inboxViewController;
- (_TtC7ChatKit25CKSelectionViewController)selectionViewController;
- (double)_splitViewController:(id)a3 constrainPrimaryColumnWidthForResizeWidth:(double)a4;
- (id)_fetchMeContactWithError:(id *)a3;
- (id)_newCameraBrowser;
- (id)_recentlyDeletedDisclosureText;
- (id)_recipientHandle;
- (id)_sourceViewForFluidTransitionWithConversation:(id)a3;
- (id)_unreadCountStringForFilterMode:(unint64_t)a3;
- (id)backNavigationItemForChatController:(id)a3;
- (id)baseViewControllersForConversationListNavigationController;
- (id)childViewControllerForStatusBarHidden;
- (id)cnLabelForPhoneNumber:(id)a3 contact:(id)a4;
- (id)conversationMatchingGUID:(id)a3;
- (id)currentlyShownConversation;
- (id)firstConversationExactlyMatchingDisplayName:(id)a3;
- (id)generateSelectionViewController;
- (id)inboxItemForFilterMode:(unint64_t)a3 localizedTitle:(id)a4 andSystemImage:(id)a5;
- (id)inboxItemForFilterMode:(unint64_t)a3 title:(id)a4 andSystemImage:(id)a5;
- (id)initAsOscarModal;
- (id)junkModalMessagesController;
- (id)navigationBarBackdropLayerGroupNameForChatController:(id)a3;
- (id)newInboxModel;
- (id)newInputSnapshotView;
- (id)nonConversationListControllersInNavigationStack;
- (id)onboardingControllerCreatingIfNecessary;
- (id)preferredFocusEnvironments;
- (id)presentingViewControllerForOnboardingController:(id)a3;
- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4;
- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4;
- (int64_t)unreadCountForCurrentFilterModeForChatController:(id)a3;
- (unint64_t)currentConversationListFilterMode;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)__updateAlertSuppressionContext;
- (void)_appStateChange:(id)a3;
- (void)_appStateDidResumeFromInactive:(id)a3;
- (void)_chatRegistryDidLoad:(id)a3;
- (void)_checkChatControllerLeaksForExistingController:(id)a3 newController:(id)a4;
- (void)_checkPushToTranscriptTimingWithStartTime:(double)a3;
- (void)_configureCallOptionsForConversationMenu;
- (void)_configureCommand:(id)a3 enabled:(BOOL)a4;
- (void)_conversationFilteringStateChangedNotification:(id)a3;
- (void)_conversationLeft:(id)a3;
- (void)_conversationListFinishedMerging:(id)a3;
- (void)_didUpdateCollapsedState;
- (void)_filterMessageRequestsUpdated:(id)a3;
- (void)_handleInitialLoad;
- (void)_hideConversationListForIPadPPTTest;
- (void)_installTickerIfNeeded;
- (void)_junkConversationsRecovered:(id)a3;
- (void)_keyCommandChangeConversation:(BOOL)a3;
- (void)_performNonInspectorDetailsViewDismissalWithCompletion:(id)a3;
- (void)_pinVerificationShouldDismiss:(id)a3;
- (void)_populateChatNavigationControllerWithSelection;
- (void)_presentAppStoreWithLaunchURL:(id)a3 fromSourceApplication:(id)a4;
- (void)_presentViewControllerInInspector:(id)a3;
- (void)_setEntryViewHidden:(BOOL)a3;
- (void)_setFilterUnknownSenders:(id)a3;
- (void)_setIsShowingNoSelectionUI:(BOOL)a3;
- (void)_showChatControllerLeakAlertUI:(id)a3;
- (void)_showNewComposeWithRecipients:(id)a3 composition:(id)a4 chatIdentifier:(id)a5 bizIntent:(id)a6 launchPluginWithBundleID:(id)a7 pluginLaunchPayload:(id)a8 startAudioRecording:(BOOL)a9 animated:(BOOL)a10 simID:(id)a11 sendMessageHandler:(id)a12;
- (void)_showNextSMSRelayPINPrompt;
- (void)_showSMSRelayPromptIfNeeded;
- (void)_showSMSRelayPromptOnLaunchIfNeeded;
- (void)_smsRelayPINReceived:(id)a3;
- (void)_splitViewController:(id)a3 didEndResizingColumn:(int64_t)a4;
- (void)_splitViewController:(id)a3 willBeginResizingColumn:(int64_t)a4;
- (void)_unreadCountDidChange:(id)a3;
- (void)_updateAlertSuppressionContext;
- (void)_updateInboxWidth;
- (void)_updateSelectionViewWithCount:(int64_t)a3;
- (void)_updateTraitEnvironmentWithLatestSystemGlassSetting;
- (void)_updateTraitEnvironmentWithLatestWindowSceneUserInterfaceStyle;
- (void)_updateViewsWithChatControllerBackgroundTraits;
- (void)applicationWillResume:(id)a3;
- (void)cancelAndDestroyComposition;
- (void)cancelNewMessageCompositionAnimated:(BOOL)a3;
- (void)catalystFilterModeSelected:(unint64_t)a3;
- (void)catalystFiltersNavigationBackButtonTapped:(id)a3;
- (void)changeFilterMode:(unint64_t)a3;
- (void)chatController:(id)a3 balloonViewWillDismissEditMenu:(id)a4;
- (void)chatController:(id)a3 didDetachDetailsNavigationController:(id)a4;
- (void)chatController:(id)a3 didFinishDismissAnimationForSendMenuViewController:(id)a4;
- (void)chatController:(id)a3 didReportSpamForConversation:(id)a4;
- (void)chatController:(id)a3 didRequestNewComposePresentationWithSender:(id)a4;
- (void)chatController:(id)a3 didSendCompositionInConversation:(id)a4;
- (void)chatController:(id)a3 didStartTextSelectionInView:(id)a4;
- (void)chatController:(id)a3 didUnsubscribeForConversation:(id)a4;
- (void)chatController:(id)a3 forwardComposition:(id)a4;
- (void)chatController:(id)a3 requestDeleteJunkConversation:(id)a4;
- (void)chatController:(id)a3 requestPresentSendMenu:(id)a4 currentlyPresentedViewController:(id)a5;
- (void)chatController:(id)a3 requestRecoverJunkConversation:(id)a4;
- (void)chatController:(id)a3 willSendComposition:(id)a4 inConversation:(id)a5;
- (void)chatControllerDidChangeBackground:(id)a3;
- (void)chatControllerDidChangeDeferringSystemNavigationPopGestureForPlusButton:(id)a3;
- (void)chatControllerDidReselectConversation:(id)a3;
- (void)checkForRCSAndCarrierAlerts;
- (void)cleanUpInteractionViews;
- (void)composeChatController:(id)a3 didSelectNewConversation:(id)a4;
- (void)composeChatControllerDidCancelComposition:(id)a3;
- (void)conversationListControllerTappedDeleteNewMessage:(id)a3;
- (void)conversationListControllerWillDismissSearchResultsController;
- (void)conversationListControllerWillPresentSearchResultsController;
- (void)conversationListFailedToSelectShownConversation;
- (void)conversationListIsDeletingConversations:(id)a3;
- (void)conversationListUpdatedSelectedIndexPathCount:(int64_t)a3;
- (void)conversationListWillBeginEditing:(BOOL)a3;
- (void)dealloc;
- (void)deleteConversation:(id)a3;
- (void)didBeginInstallingAppWithBundleIdentifier:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)didSelectFilterFromViewMenu:(id)a3;
- (void)dismiss;
- (void)dismissAndReopenDetailsNavigationController;
- (void)dismissChatControllerIfVisibleAnimated:(BOOL)a3;
- (void)dismissDetailsControllerAnimated:(BOOL)a3;
- (void)dismissDetailsNavigationControllerWithCompletion:(id)a3;
- (void)dismissDetailsViewAndShowConversationListWithCompletion:(id)a3;
- (void)dismissKeyboardIfVisible;
- (void)dismissPhotosGridIfNeeded;
- (void)escButtonPressed:(id)a3;
- (void)executeDeferredHandleURLBlock;
- (void)executeDeferredTasks;
- (void)filterCommandSelected:(id)a3;
- (void)find:(id)a3;
- (void)findNext:(id)a3;
- (void)findPrevious:(id)a3;
- (void)focusStateDidChange;
- (void)handleAnalyticsOnBackground;
- (void)inboxViewController:(id)a3 didSelectFilterMode:(unint64_t)a4;
- (void)initialize;
- (void)keyCommandCompose:(id)a3;
- (void)keyCommandDeleteConversation:(id)a3;
- (void)keyCommandFind:(id)a3;
- (void)keyCommandOpenConversationInNewWindow:(id)a3;
- (void)keyCommandSelectFirstActiveConversation;
- (void)keyCommandSelectPinnedConversation:(id)a3;
- (void)legacyDidSelectFilterFromViewMenu:(id)a3;
- (void)loadView;
- (void)messageFilteringSelected:(id)a3;
- (void)messagesSceneDelegateDidUpdateEffectiveGeometryForScene:(id)a3 previousEffectiveGeometry:(id)a4;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)notifyThatKeepMessagesSettingWasResetIfNeededWithCompletion:(id)a3;
- (void)onboardingControllerDidFinish:(id)a3;
- (void)parentControllerDidBecomeActive;
- (void)parentControllerDidResume:(BOOL)a3 animating:(BOOL)a4;
- (void)performJunkRecoveryForJunkModalMessagesController:(id)a3;
- (void)performResumeDeferredSetup;
- (void)performSearchForQuery:(id)a3;
- (void)performVisibleAppPluginIconPrefetch:(id)a3;
- (void)persistColumnWidths:(id)a3;
- (void)popToConversationListIfNecessaryAnimated:(BOOL)a3;
- (void)prepareForResume;
- (void)prepareForSuspend;
- (void)presentDetailsNavigationController:(id)a3;
- (void)presentDetailsViewControllerAnimated:(BOOL)a3;
- (void)presentFocusStatusAuthorizationAlertIfNecessary;
- (void)presentOnboardingViewController:(id)a3;
- (void)presentOnboardingViewControllerIfNeeded;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)reloadMacToolbarItems;
- (void)requestDismissKeyboardSnapshotForSendMenu;
- (void)requestShowKeyboardSnapshotForSendMenu;
- (void)screenTimeOKPressedForChatController:(id)a3;
- (void)setChatController:(id)a3;
- (void)setChatControllerUserInterfaceStyle:(int64_t)a3;
- (void)setComposeChatController:(id)a3;
- (void)setComposeChatNavigationController:(id)a3;
- (void)setCurrentConversation:(id)a3 keepAllCurrentlyLoadedMessages:(BOOL)a4;
- (void)setDeferredHandleURLBlock:(id)a3;
- (void)setupBizNavBarForConversation:(id)a3;
- (void)setupCKDismissOnInteractionView;
- (void)showBusinessChatNotSupportedAlert;
- (void)showConversation:(id)a3 animate:(BOOL)a4;
- (void)showConversation:(id)a3 animate:(BOOL)a4 forceToTranscript:(BOOL)a5 keepAllCurrentlyLoadedMessages:(BOOL)a6 userInitiated:(BOOL)a7;
- (void)showConversationAndMessageForChatGUID:(id)a3 messageGUID:(id)a4 withInlineReplyOverlay:(BOOL)a5 animate:(BOOL)a6;
- (void)showConversationInNewWindow:(id)a3;
- (void)showConversationListWithAnimation:(BOOL)a3 didDismissController:(BOOL *)a4;
- (void)showDebugMenu;
- (void)showInboxViewControllerAnimated:(BOOL)a3;
- (void)showLockdownAlertForBusinessChat;
- (void)showMakoIMessageAlert;
- (void)showNewMessageCompositionPanelWithRecipients:(id)a3 chatID:(id)a4 composition:(id)a5 appendToExistingDraft:(BOOL)a6 suggestedReplies:(id)a7 animated:(BOOL)a8 bizIntent:(id)a9 launchPluginWithBundleID:(id)a10 pluginLaunchPayload:(id)a11 startAudioRecording:(BOOL)a12 simID:(id)a13 sendMessageHandler:(id)a14;
- (void)showSpamCategoryUpdatedAlert;
- (void)showStoreForURL:(id)a3 fromSourceApplication:(id)a4;
- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4;
- (void)splitViewController:(id)a3 willShowColumn:(int64_t)a4;
- (void)splitViewControllerDidCollapse:(id)a3;
- (void)splitViewControllerDidExpand:(id)a3;
- (void)stopForcingOrientation;
- (void)toggleSensitiveUI;
- (void)updateColumnWidths;
- (void)updateCompositionInEntryViewWithComposition:(id)a3;
- (void)updateInboxAndConversationList;
- (void)updateInterfaceOrientationsAnimated:(BOOL)a3;
- (void)updateSupportedInterfaceOrientations:(unint64_t)a3;
- (void)updatedFilterMode;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKMessagesController

- (CKMessagesController)init
{
  if (-[CKMessagesController _wantsThreeColumnLayout](self, "_wantsThreeColumnLayout") || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isModernSplitViewControllerEnabled"), v3, v4))
  {
    v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v6 = [v5 isModernSplitViewControllerEnabled];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v12.receiver = self;
    v12.super_class = CKMessagesController;
    v8 = [(CKMessagesController *)&v12 initWithStyle:v7];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CKMessagesController;
    v8 = [(CKMessagesController *)&v11 init];
  }

  v9 = v8;
  if (v8)
  {
    [(CKMessagesController *)v8 initialize];
  }

  [(CKMessagesController *)v9 setOscarModal:0];
  return v9;
}

- (BOOL)_wantsThreeColumnLayout
{
  if ([(CKMessagesController *)self isOscarModal])
  {
    return 0;
  }

  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 wantsUniversalThreeColumn];

  return v4;
}

- (void)initialize
{
  [(CKMessagesController *)self setDefinesPresentationContext:1];
  self->_isInitialLoad = 1;
  self->_isInitialLayout = 1;
  self->_attachmentPreviewQosClass = 17;
  v3 = [MEMORY[0x1E69A8088] sharedManager];
  [v3 addDelegate:self];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel__conversationLeft_ name:@"CKConversationListConversationLeftNotification" object:0];
  [v8 addObserver:self selector:sel__conversationListFinishedMerging_ name:@"CKConversationListFinishedMergingChatsNotification" object:0];
  [v8 addObserver:self selector:sel__chatRegistryDidLoad_ name:*MEMORY[0x1E69A58A0] object:0];
  [v8 addObserver:self selector:sel__appStateChange_ name:*MEMORY[0x1E69DDAC8] object:0];
  [v8 addObserver:self selector:sel__appStateChange_ name:*MEMORY[0x1E69DDBC0] object:0];
  [v8 addObserver:self selector:sel__appStateChange_ name:*MEMORY[0x1E69DDAD0] object:0];
  [v8 addObserver:self selector:sel__appStateDidResumeFromInactive_ name:@"__kCKApplicationStateResumeFromInActiveNotification" object:0];
  [v8 addObserver:self selector:sel__conversationFilteringStateChangedNotification_ name:CKMessageFilteringChangedNotification[0] object:0];
  [v8 addObserver:self selector:sel__setFilterUnknownSenders_ name:*MEMORY[0x1E69A7B68] object:0];
  [v8 addObserver:self selector:sel_performVisibleAppPluginIconPrefetch_ name:@"CKBrowserSelectionControllerVisibleSwitcherPluginsChangedNotification" object:0];
  [v8 addObserver:self selector:sel_performVisibleAppPluginIconPrefetch_ name:@"com.apple.messages.CKPluginPrewarmForLaunchCompleteNotification" object:0];
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isUnreadCountRefactorEnabled];

  if (v5)
  {
    v6 = *MEMORY[0x1E69A7DD0];
  }

  else
  {
    v6 = *MEMORY[0x1E69A5920];
  }

  [v8 addObserver:self selector:sel__unreadCountDidChange_ name:v6 object:0];
  [v8 addObserver:self selector:sel__junkConversationsRecovered_ name:@"CKConversationListDidRecoverJunkConversationsNotification" object:0];
  [v8 addObserver:self selector:sel__systemGlassLegibilitySettingDidChange_ name:@"UIViewGlassLegibilityDidChangeNotification" object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleSIMSubcriptionUpdateNotification, *MEMORY[0x1E69A78C0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (UINavigationController)chatNavigationController
{
  if (!self->_chatNavigationController)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [v3 navigationControllerClass];

    v5 = [v4 alloc];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v5 initWithNavigationBarClass:objc_msgSend(v6 toolbarClass:{"navigationBarClass"), 0}];
    chatNavigationController = self->_chatNavigationController;
    self->_chatNavigationController = v7;

    [(UINavigationController *)self->_chatNavigationController setDelegate:self];
    v9 = +[CKUIBehavior sharedBehaviors];
    LODWORD(v6) = [v9 useMacToolbar];

    if (v6)
    {
      [(UINavigationController *)self->_chatNavigationController setNavigationBarHidden:1];
    }

    else
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = [v10 theme];
      v12 = [v11 navBarStyle];
      v13 = [(UINavigationController *)self->_chatNavigationController navigationBar];
      [v13 setBarStyle:v12];

      v14 = +[CKUIBehavior sharedBehaviors];
      v15 = [v14 shouldUseTranslucentBars];
      v16 = [(UINavigationController *)self->_chatNavigationController navigationBar];
      [v16 setTranslucent:v15];

      v17 = +[CKUIBehavior sharedBehaviors];
      v18 = [(CKMessagesController *)self conversationListNavigationController];
      [v17 setupNavBarAppearanceWithNavigationController:v18];
    }
  }

  v19 = self->_chatNavigationController;

  return v19;
}

- (UINavigationController)conversationListNavigationController
{
  conversationListNavigationController = self->_conversationListNavigationController;
  if (conversationListNavigationController)
  {
    goto LABEL_13;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 navigationControllerClass];

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 navigationBarClass];

  if (CKIsRunningInMacCatalyst())
  {
    v8 = objc_opt_class();
  }

  else
  {
    v8 = 0;
  }

  v9 = [[v5 alloc] initWithNavigationBarClass:v7 toolbarClass:v8];
  v10 = self->_conversationListNavigationController;
  self->_conversationListNavigationController = v9;

  v11 = [(UINavigationController *)self->_conversationListNavigationController navigationBar];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  [v11 setBarStyle:{objc_msgSend(v13, "navBarStyle")}];

  v14 = [(UINavigationController *)self->_conversationListNavigationController navigationBar];
  [v14 setTranslucent:1];

  v15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v15 isModernFilteringEnabled])
  {
    v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v17 = [v16 isConversationListRefreshEnabled];

    if (!v17)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v18 = [(UINavigationController *)self->_conversationListNavigationController navigationBar];
  [v18 setPrefersLargeTitles:CKIsRunningInMacCatalyst() == 0];

LABEL_10:
  v19 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v20 = [v19 isModernSplitViewControllerEnabled];

  if ((v20 & 1) == 0)
  {
    [(UINavigationController *)self->_conversationListNavigationController _setClipUnderlapWhileTransitioning:1];
  }

  [(UINavigationController *)self->_conversationListNavigationController setDelegate:self];
  [(CKMessagesController *)self updateInboxAndConversationList];
  conversationListNavigationController = self->_conversationListNavigationController;
LABEL_13:

  return conversationListNavigationController;
}

- (void)loadView
{
  v26[1] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = CKMessagesController;
  [(CKMessagesController *)&v24 loadView];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = [v4 messagesControllerBackgroundColor];

  if (v5)
  {
    v6 = [(CKMessagesController *)self view];
    [v6 setBackgroundColor:v5];
  }

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v8 = [v7 isModernSplitViewControllerEnabled];

    if ((v8 & 1) == 0)
    {
      v9 = +[CKUIBehavior sharedBehaviors];
      [v9 minConversationListWidth];
      [(CKMessagesController *)self setMinimumSupplementaryColumnWidth:?];
    }

    [(CKMessagesController *)self setPreferredSplitBehavior:0];
    if (CKIsRunningInMacCatalyst())
    {
      v10 = [(CKMessagesController *)self view];
      [v10 setOpaque:0];

      v11 = 1;
      [(CKMessagesController *)self setPrimaryBackgroundStyle:1];
      v12 = 4;
    }

    else
    {
      v11 = 0;
      v12 = 2;
    }

    [(CKMessagesController *)self setPreferredDisplayMode:v12];
    [(CKMessagesController *)self setDisplayModeButtonVisibility:v11];
    v19 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v20 = [v19 isModernSplitViewControllerEnabled];

    v21 = v20 ^ 1u;
    v22 = [(CKMessagesController *)self conversationListNavigationController];
    [(CKMessagesController *)self setViewController:v22 forColumn:v21];

    v23 = [(CKMessagesController *)self chatNavigationController];
    [(CKMessagesController *)self setViewController:v23 forColumn:2];
  }

  else
  {
    if (CKIsRunningInMacCatalyst())
    {
      v13 = [(CKMessagesController *)self view];
      [v13 setOpaque:0];

      [(CKMessagesController *)self setPrimaryBackgroundStyle:1];
    }

    v14 = [(CKMessagesController *)self isOscarModal];
    v15 = [(CKMessagesController *)self conversationListNavigationController];
    v16 = v15;
    if (v14)
    {
      v26[0] = v15;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [(CKMessagesController *)self setViewControllers:v17];
    }

    else
    {
      v25[0] = v15;
      v17 = [(CKMessagesController *)self chatNavigationController];
      v25[1] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      [(CKMessagesController *)self setViewControllers:v18];
    }

    [(CKMessagesController *)self setPreferredDisplayMode:2];
  }

  [(CKMessagesController *)self updateInboxAndConversationList];
  [(CKMessagesController *)self setDelegate:self];
}

- (id)baseViewControllersForConversationListNavigationController
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (![(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    if ([(CKMessagesController *)self _shouldShowInboxView])
    {
      v4 = [(CKMessagesController *)self inboxViewController];

      if (v4)
      {
        v5 = [(CKMessagesController *)self inboxViewController];
        [v3 addObject:v5];
      }
    }
  }

  v6 = [(CKMessagesController *)self conversationListController];
  [v6 updateNavigationItems];

  v7 = [(CKMessagesController *)self conversationListController];
  [v3 addObject:v7];

  return v3;
}

- (void)updateInboxAndConversationList
{
  v36 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "updateInboxAndConversationList", &v32, 2u);
    }
  }

  v4 = [(CKMessagesController *)self baseViewControllersForConversationListNavigationController];
  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    if (![(CKMessagesController *)self _shouldShowInboxView])
    {
      [(CKMessagesController *)self setInboxViewController:0];
      [(CKMessagesController *)self setPresentsWithGesture:0];
      v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v17 = [v16 isModernSplitViewControllerEnabled];

      if ((v17 & 1) == 0)
      {
        [(CKMessagesController *)self setViewController:0 forColumn:0];
      }

      goto LABEL_14;
    }

    v5 = [(CKMessagesController *)self inboxViewController];
    v6 = [v5 navigationItem];
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"FILTERS_BACK_BUTTON" value:&stru_1F04268F8 table:@"ChatKit"];
    [v6 setBackButtonTitle:v8];

    [(CKMessagesController *)self setPresentsWithGesture:CKIsRunningInMacCatalyst() == 0];
    v9 = [(CKMessagesController *)self inboxViewController];
    [(CKMessagesController *)self setViewController:v9 forColumn:0];

    v10 = [(CKMessagesController *)self inboxViewController];
    v11 = [v10 navigationController];
    v12 = [v11 navigationBar];
    [v12 setPrefersLargeTitles:1];

    v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([v13 isModernFilteringEnabled])
    {
      v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v15 = [v14 isConversationListRefreshEnabled];

      if (!v15)
      {
LABEL_14:
        v19 = CKWantsInboxVisible() == 0;
        v20 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v21 = [v20 isModernSplitViewControllerEnabled];

        if (v19)
        {
          if ((v21 & 1) == 0)
          {
            [(CKMessagesController *)self hideColumn:0];
          }
        }

        else if ((v21 & 1) == 0)
        {
          [(CKMessagesController *)self showColumn:0];
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    v18 = [(CKMessagesController *)self navigationItem];
    [v18 setLargeTitleDisplayMode:1];

    goto LABEL_14;
  }

LABEL_19:
  v22 = [(CKMessagesController *)self chatNavigationController];
  v23 = [v22 viewControllers];
  if ([v23 count])
  {
    v24 = [(CKMessagesController *)self conversationListNavigationController];
    v25 = [v24 viewControllers];
    v26 = [(CKMessagesController *)self chatNavigationController];
    v27 = [v25 containsObject:v26];

    if (!v27)
    {
      goto LABEL_28;
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [(CKMessagesController *)self chatNavigationController];
        v32 = 138412546;
        v33 = v29;
        v34 = 2112;
        v35 = v4;
        _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "updateInboxAndConversationList, adding chatNavigationController: %@ to updatedConversationListNavStack: %@", &v32, 0x16u);
      }
    }

    v22 = [(CKMessagesController *)self chatNavigationController];
    [v4 addObject:v22];
  }

  else
  {
  }

LABEL_28:
  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v32 = 138412290;
      v33 = v4;
      _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "updateInboxAndConversationList, setting conversationListNavigationController viewControllers to: %@", &v32, 0xCu);
    }
  }

  v31 = [(CKMessagesController *)self conversationListNavigationController];
  [v31 setViewControllers:v4];
}

- (CKConversationListControllerProtocol)conversationListController
{
  conversationListController = self->_conversationListController;
  if (!conversationListController)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 conversationListControllerClass];

    if (IMIsOscarEnabled() && [(CKMessagesController *)self isOscarModal]&& v5 == objc_opt_class())
    {
      v6 = [[CKConversationListCollectionViewController alloc] initForOscarModal];
    }

    else
    {
      v6 = objc_opt_new();
    }

    v7 = self->_conversationListController;
    self->_conversationListController = v6;

    [(CKConversationListControllerProtocol *)self->_conversationListController setDelegate:self];
    conversationListController = self->_conversationListController;
  }

  return conversationListController;
}

- (void)_populateChatNavigationControllerWithSelection
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKMessagesController *)self isCollapsed];
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v13[0] = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "CKMessagesController: was asked to show the selection view controller but we're collapsed so this shouldn't happen in the first place.", v13, 2u);
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
        v13[0] = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "multi-select: Populating chatNavigationController with selectionViewController", v13, 2u);
      }
    }

    v7 = [(CKMessagesController *)self chatNavigationController];
    v8 = [(CKMessagesController *)self selectionViewController];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v7 setViewControllers:v9];

    [(CKMessagesController *)self setChatControllerUserInterfaceStyle:0];
    v10 = [(CKMessagesController *)self selectionViewController];
    v11 = [(CKMessagesController *)self macToolbarController];
    [v10 configureWithToolbarController:v11];

    v12 = [(CKMessagesController *)self macToolbarController];
    [v12 reloadToolbarItems];
  }
}

- (id)childViewControllerForStatusBarHidden
{
  if ([(CKMessagesController *)self isCollapsed])
  {
    [(CKMessagesController *)self conversationListNavigationController];
  }

  else
  {
    [(CKMessagesController *)self chatNavigationController];
  }
  v3 = ;

  return v3;
}

- (void)viewDidLoad
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CKMessagesController;
  [(CKMessagesController *)&v18 viewDidLoad];
  [(CKMessagesController *)self setNeedsFocusUpdate];
  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v5 = [v4 isModernSplitViewControllerEnabled];

    if ((v5 & 1) == 0)
    {
      [v3 minConversationListWidth];
      [(CKMessagesController *)self setMinimumSupplementaryColumnWidth:?];
      [v3 maxConversationListWidth];
      [(CKMessagesController *)self setMaximumSupplementaryColumnWidth:?];
    }
  }

  [(CKMessagesController *)self updateColumnWidths];
  v6 = +[CKMenuBarManager sharedInstance];
  v7 = [v6 allKeyboardShortcutKeyCommands];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(CKMessagesController *)self addKeyCommand:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [(CKMessagesController *)self syncedSettingsManager];
  [v13 addObserver:self selector:sel__filterMessageRequestsUpdated_ key:4];
}

- (void)updateColumnWidths
{
  v2 = [(CKMessagesController *)self splitViewCoordinator];
  [v2 updateColumnWidths];
}

- (void)_updateInboxWidth
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernSplitViewControllerEnabled];

  if ((v4 & 1) == 0)
  {
    [(CKMessagesController *)self preferredPrimaryColumnWidth];
    v6 = v5;
    if ([(CKMessagesController *)self isViewLoaded])
    {
      if (CKIsRunningInMacCatalyst())
      {
        v7 = CKGetInboxPersistedWidth(0.0);
        if (v7 != 0.0)
        {
          v6 = v7;
        }
      }
    }

    [(CKMessagesController *)self _setPreferredPrimaryColumnWidth:v6];
  }
}

- (BOOL)_hasCurrentConversations
{
  v3 = +[CKCurrentConversationsManager sharedInstance];
  v4 = [v3 currentConversations];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CKMessagesController *)self currentConversation];
    v5 = v6 != 0;
  }

  return v5;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (CKIsRunningInMacCatalyst())
  {
    v32.receiver = self;
    v32.super_class = CKMessagesController;
    return [(CKMessagesController *)&v32 supportedInterfaceOrientations];
  }

  if (self->_forceOrientation)
  {
    supportedInterfaceOrientations = self->_supportedInterfaceOrientations;
    if (supportedInterfaceOrientations)
    {
      return supportedInterfaceOrientations;
    }
  }

  v5 = [(CKMessagesController *)self chatController];
  v6 = [v5 isHandwritingLandscape];

  if (v6)
  {
    return 2;
  }

  v7 = [(CKMessagesController *)self sendMenuPresentation];

  if (!v7 || (-[CKMessagesController viewIfLoaded](self, "viewIfLoaded"), v8 = objc_claimAutoreleasedReturnValue(), [v8 window], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "windowScene"), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10))
  {
    v12 = [(CKMessagesController *)self chatController];
    v13 = [v12 conversation];
    if ([v13 isStewieConversation])
    {
      v14 = [MEMORY[0x1E69A5B00] sharedInstance];
      v15 = [v14 isStewieActive];

      if (v15)
      {
        return 2;
      }
    }

    else
    {
    }

    v16 = [(CKMessagesController *)self presentedViewController];
    if (v16 && (v17 = v16, [(CKMessagesController *)self presentedViewController], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18, v17, (v19 & 1) == 0))
    {
      v23 = [(CKMessagesController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v29 = [(CKMessagesController *)self presentedViewController];
        supportedInterfaceOrientations = [v29 supportedInterfaceOrientations];

LABEL_19:
        if (!CKIsRunningInMacCatalyst())
        {
          v21 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v21 _referenceBounds];
          if (v22 <= 320.0)
          {
            v25 = [(CKMessagesController *)self viewIfLoaded];
            v26 = [v25 window];
            [v26 safeAreaInsets];
            v28 = v27;

            if (v28 > 0.0)
            {
              return supportedInterfaceOrientations & 0xFFFFFFFFFFFFFFE7;
            }
          }

          else
          {
          }
        }

        return supportedInterfaceOrientations;
      }

      v20 = [(CKMessagesController *)&v31 supportedInterfaceOrientations:v30.receiver];
    }

    else
    {
      v20 = [(CKMessagesController *)&v30 supportedInterfaceOrientations:self];
    }

    supportedInterfaceOrientations = v20;
    goto LABEL_19;
  }

  v11 = +[CKUtilities orientationMaskFromInterfaceOrientation:](CKUtilities, "orientationMaskFromInterfaceOrientation:", [v10 interfaceOrientation]);

  return v11;
}

- (BOOL)becomeFirstResponder
{
  v3 = [(CKMessagesController *)self chatController];
  v4 = [v3 conversation];
  v5 = [v4 chat];

  if (v5 && ![v5 allowedToShowConversation])
  {
    v8 = 0;
  }

  else
  {
    chatNavigationController = self->_chatNavigationController;
    if (chatNavigationController)
    {
      v7 = [(UINavigationController *)chatNavigationController becomeFirstResponder];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = CKMessagesController;
      v7 = [(CKMessagesController *)&v10 becomeFirstResponder];
    }

    v8 = v7;
  }

  return v8;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKMessagesController;
  [(CKMessagesController *)&v3 viewWillLayoutSubviews];
  [(CKMessagesController *)self _handleInitialLoad];
}

- (void)dismissPhotosGridIfNeeded
{
  v3 = [(CKMessagesController *)self conversationListNavigationController];
  v4 = [v3 visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CKMessagesController *)self conversationListNavigationController];
LABEL_5:
    v10 = v6;
    v24 = [v6 visibleViewController];
    goto LABEL_6;
  }

  v7 = [(CKMessagesController *)self chatNavigationController];
  v8 = [v7 visibleViewController];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v6 = [(CKMessagesController *)self chatNavigationController];
    goto LABEL_5;
  }

  v11 = [(CKMessagesController *)self conversationListNavigationController];
  v12 = [v11 visibleViewController];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    v14 = [(CKMessagesController *)self conversationListNavigationController];
  }

  else
  {
    v15 = [(CKMessagesController *)self chatNavigationController];
    v16 = [v15 visibleViewController];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if ((v17 & 1) == 0)
    {
      return;
    }

    v14 = [(CKMessagesController *)self chatNavigationController];
  }

  v18 = v14;
  v10 = [v14 visibleViewController];

  v19 = [v10 presentingViewController];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    v21 = [v10 presentingViewController];
    v22 = [v21 topViewController];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if (v23)
    {
      v24 = [v21 topViewController];
      [v10 dismissViewControllerAnimated:0 completion:0];
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_6:

  if (v24)
  {
    [v24 dismissViewControllerAnimated:0 completion:0];
  }
}

- (CKInboxModel)inboxModel
{
  WeakRetained = objc_loadWeakRetained(&self->_inboxModel);

  return WeakRetained;
}

- (void)_updateViewsWithChatControllerBackgroundTraits
{
  v3 = [(CKMessagesController *)self chatController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CKMessagesController *)self composeChatController];
  }

  v49 = v5;

  v6 = [(CKMessagesController *)self viewIfLoaded];
  v7 = [v6 window];

  [v7 setOverrideUserInterfaceStyle:self->_chatControllerUserInterfaceStyle];
  if (-[CKMessagesController isShowingSelectionView](self, "isShowingSelectionView") || ([v49 transcriptBackground], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v37 = [v7 traitOverrides];
    [v37 removeTrait:objc_opt_class()];

    v38 = [v7 traitOverrides];
    [v38 removeTrait:objc_opt_class()];

    [(CKMessagesController *)self isCollapsed];
    v9 = 0;
  }

  else
  {
    v9 = v8;
    [v8 luminance];
    v11 = v10;
    v12 = [v7 traitOverrides];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v12 setNSIntegerValue:objc_msgSend(v13 forTrait:{"integerValue"), objc_opt_class()}];

    v14 = [v7 traitOverrides];
    [v14 setCGFloatValue:objc_opt_class() forTrait:v11];

    if ([(CKMessagesController *)self isCollapsed])
    {
      v15 = [v7 windowScene];
      v16 = [v15 traitCollection];
      v17 = [v16 userInterfaceStyle];
      v18 = [(CKMessagesController *)self conversationListController];
      [v18 setOverrideUserInterfaceStyle:v17];

      v19 = [(CKMessagesController *)self conversationListController];
      v20 = [v19 traitOverrides];
      v21 = MEMORY[0x1E695E110];
      [v20 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E110] forTrait:{"integerValue"), objc_opt_class()}];

      v22 = [(CKMessagesController *)self conversationListController];
      v23 = [v22 traitOverrides];
      +[CKTranscriptBackgroundLuminosityTrait defaultValue];
      [v23 setCGFloatValue:objc_opt_class() forTrait:v24];

      v25 = [v7 windowScene];
      v26 = [v25 traitCollection];
      v27 = [v26 userInterfaceStyle];
      v28 = [(CKMessagesController *)self conversationListController];
      v29 = [v28 searchController];
      [v29 setOverrideUserInterfaceStyle:v27];

      v30 = [(CKMessagesController *)self conversationListController];
      v31 = [v30 searchController];
      v32 = [v31 traitOverrides];
      [v32 setNSIntegerValue:objc_msgSend(v21 forTrait:{"integerValue"), objc_opt_class()}];

      v33 = [(CKMessagesController *)self conversationListController];
      v34 = [v33 searchController];
      v35 = [v34 traitOverrides];
      +[CKTranscriptBackgroundLuminosityTrait defaultValue];
      [v35 setCGFloatValue:objc_opt_class() forTrait:v36];
      goto LABEL_10;
    }
  }

  v39 = [(CKMessagesController *)self conversationListController];
  [v39 setOverrideUserInterfaceStyle:0];

  v40 = [(CKMessagesController *)self conversationListController];
  v41 = [v40 traitOverrides];
  [v41 removeTrait:objc_opt_class()];

  v42 = [(CKMessagesController *)self conversationListController];
  v43 = [v42 traitOverrides];
  [v43 removeTrait:objc_opt_class()];

  v44 = [(CKMessagesController *)self conversationListController];
  v45 = [v44 searchController];
  [v45 setOverrideUserInterfaceStyle:0];

  v46 = [(CKMessagesController *)self conversationListController];
  v47 = [v46 searchController];
  v48 = [v47 traitOverrides];
  [v48 removeTrait:objc_opt_class()];

  v33 = [(CKMessagesController *)self conversationListController];
  v34 = [v33 searchController];
  v35 = [v34 traitOverrides];
  [v35 removeTrait:objc_opt_class()];
LABEL_10:
}

- (void)viewDidLayoutSubviews
{
  v109.receiver = self;
  v109.super_class = CKMessagesController;
  [(CKMessagesController *)&v109 viewDidLayoutSubviews];
  if ([(CKMessagesController *)self isInitialLayout])
  {
    [(CKMessagesController *)self setIsInitialLayout:0];
    [(CKMessagesController *)self _updateTraitEnvironmentWithLatestSystemGlassSetting];
    [(CKMessagesController *)self _updateTraitEnvironmentWithLatestWindowSceneUserInterfaceStyle];
    [(CKMessagesController *)self presentOnboardingViewControllerIfNeeded];
  }

  [(CKSendMenuPresentation *)self->_sendMenuPresentation layout];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 useMacToolbar];

  if (v4)
  {
    v5 = [(CKMessagesController *)self view];
    v6 = [v5 window];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 macAppKitToolbarHeight];
    v15 = v14;

    v16 = [(CKMessagesController *)self macToolbarController];
    [v16 updateWithFrame:{v8, v10, v12, v15}];

    v17 = [(CKMessagesController *)self view];
    v18 = [(CKMessagesController *)self macToolbarController];
    v19 = [v18 view];
    [v17 bringSubviewToFront:v19];

    v20 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v18) = [v20 isModernSplitViewControllerEnabled];

    if (v18)
    {
      v21 = [(CKMessagesController *)self view];
      v22 = [v21 _shouldReverseLayoutDirection];

      v23 = [(CKMessagesController *)self viewControllerForColumn:0];
      v24 = [v23 view];
      [v24 frame];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v33 = [(CKMessagesController *)self view];
      [v24 convertRect:v33 toView:{v26, v28, v30, v32}];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v42 = v35;
      v43 = v37;
      v44 = v39;
      v45 = v41;
      if (v22)
      {
        MinX = CGRectGetMinX(*&v42);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v42);
      }

      v48 = MinX;
      v50 = [(CKMessagesController *)self viewControllerForColumn:4];
      v51 = [v50 view];
      v52 = v51;
      if (v51)
      {
        [v51 frame];
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v61 = [(CKMessagesController *)self view];
        [v52 convertRect:v61 toView:{v54, v56, v58, v60}];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;

        v70 = v63;
        v71 = v65;
        v72 = v67;
        v73 = v69;
        if (v22)
        {
          MaxX = CGRectGetMaxX(*&v70);
        }

        else
        {
          MaxX = CGRectGetMinX(*&v70);
        }

        v79 = MaxX;
      }

      else
      {
        v79 = 0.0;
        if ((v22 & 1) == 0)
        {
          v80 = [(CKMessagesController *)self view];
          [v80 frame];
          v79 = v81;
        }
      }
    }

    else
    {
      if ([(CKMessagesController *)self _wantsThreeColumnLayout])
      {
        [(CKMessagesController *)self supplementaryColumnWidth];
        v48 = v47;
        if ([(CKMessagesController *)self displayMode]== 4)
        {
          [(CKMessagesController *)self primaryColumnWidth];
          v48 = v48 + v49;
        }
      }

      else
      {
        [(CKMessagesController *)self primaryColumnWidth];
        v48 = v75;
      }

      v76 = [(CKMessagesController *)self view];
      v77 = [v76 _shouldReverseLayoutDirection];

      v23 = [(CKMessagesController *)self view];
      [v23 frame];
      if (v77)
      {
        v79 = 0.0;
      }

      else
      {
        v79 = v78;
      }

      if (v77)
      {
        v48 = v78 - v48;
      }
    }

    v82 = [(CKMessagesController *)self macToolbarController];
    [v82 updateDividersForSidebarPosition:v48 inspectorPosition:v79];
  }

  if ([(CKMessagesController *)self _wantsThreeColumnLayout]&& [(CKMessagesController *)self splitBehavior]== 3 && [(CKMessagesController *)self displayMode]!= 2)
  {
    v83 = [(CKMessagesController *)self chatController];
    v84 = [v83 presentedViewController];
    v85 = [v84 presentedViewController];
    v86 = [v85 childViewControllers];
    v87 = [v86 count];

    if (!v87 || (-[CKMessagesController chatController](self, "chatController"), v88 = objc_claimAutoreleasedReturnValue(), [v88 presentedViewController], v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v89, "presentedViewController"), v90 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v90, "childViewControllers"), v91 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v91, "objectAtIndex:", 0), v92 = objc_claimAutoreleasedReturnValue(), v91, v90, v89, v88, !v92))
    {
      v93 = [(CKMessagesController *)self chatController];
      if (!v93)
      {
        v93 = [(CKMessagesController *)self composeChatController];
        if (!v93)
        {
          if (IMOSLoggingEnabled())
          {
            v107 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
            {
              *v108 = 0;
              _os_log_impl(&dword_19020E000, v107, OS_LOG_TYPE_INFO, "Could not find a chatController to pull entryView from", v108, 2u);
            }
          }

          v92 = 0;
          goto LABEL_37;
        }
      }

      v92 = v93;
    }

    v94 = +[CKUIBehavior sharedBehaviors];
    v95 = [v94 entryViewFollowsKeyboardLayoutGuide];

    if ((v95 & 1) == 0)
    {
      v96 = [v92 entryView];
      [v96 frame];
      v98 = v97;
      v100 = v99;
      v102 = v101;
      v103 = [(CKMessagesController *)self chatNavigationController];
      v104 = [v103 view];
      [v104 frame];
      v106 = v105;

      [v96 setFrame:{v106, v98, v100, v102}];
    }

LABEL_37:
  }
}

- (void)_handleInitialLoad
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(CKMessagesController *)self isInitialLoad])
  {
    [(CKMessagesController *)self setIsInitialLoad:0];
    v3 = [(CKMessagesController *)self shouldPresentOnboarding];
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5[0] = 67109120;
        v5[1] = v3;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "_handleInitialLoad - shouldPresentOnboarding=%{BOOL}d", v5, 8u);
      }
    }

    if (!v3)
    {
      [(CKMessagesController *)self executeDeferredTasks];
    }
  }
}

- (void)executeDeferredTasks
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Executing deferred tasks", buf, 2u);
    }
  }

  [(CKMessagesController *)self executeDeferredHandleURLBlock];
  objc_initWeak(buf, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__CKMessagesController_executeDeferredTasks__block_invoke;
  v4[3] = &unk_1E72EC460;
  objc_copyWeak(&v5, buf);
  [(CKMessagesController *)self notifyThatKeepMessagesSettingWasResetIfNeededWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)executeDeferredHandleURLBlock
{
  deferredHandleURLBlock = self->_deferredHandleURLBlock;
  if (deferredHandleURLBlock)
  {
    deferredHandleURLBlock[2](deferredHandleURLBlock, a2);
    v4 = self->_deferredHandleURLBlock;
    self->_deferredHandleURLBlock = 0;
  }
}

void __44__CKMessagesController_executeDeferredTasks__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentFocusStatusAuthorizationAlertIfNecessary];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 checkForRCSAndCarrierAlerts];
}

- (void)presentFocusStatusAuthorizationAlertIfNecessary
{
  if ([(CKMessagesController *)self onboardingControllerIsActive])
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v8 = 0;
    v4 = "Not presenting focus status authorization alert, onboarding controller is active";
    v5 = &v8;
LABEL_12:
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
LABEL_13:

    return;
  }

  if (([MEMORY[0x1E69A8020] supportsFocus] & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v4 = "Not presenting focus status authorization alert as it is not supported";
    v5 = buf;
    goto LABEL_12;
  }

  v6 = +[CKFocusStatusAuthorizationManager sharedInstance];
  [v6 presentFocusStatusAuthorizationAlertIfNecessaryFromViewController:self];
}

- (BOOL)onboardingControllerIsActive
{
  v2 = [(CKMessagesController *)self onboardingController];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  v7.receiver = self;
  v7.super_class = CKMessagesController;
  v3 = [(CKMessagesController *)&v7 preferredScreenEdgesDeferringSystemGestures];
  v4 = [(CKMessagesController *)self chatController];
  v5 = v4;
  if (v4)
  {
    v3 |= [v4 preferredScreenEdgesDeferringSystemGestures];
  }

  return v3;
}

- (void)_didUpdateCollapsedState
{
  v6 = [(CKMessagesController *)self conversationListController];
  [v6 parentSplitViewControllerDidUpdateCollapsedState];
  v3 = [(CKMessagesController *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CKMessagesController *)self chatController];
    [v5 parentSplitViewControllerDidUpdateCollapsedState];
  }
}

- (id)onboardingControllerCreatingIfNecessary
{
  onboardingController = self->_onboardingController;
  if (!onboardingController)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Creating onboarding in CKMessagesController", v8, 2u);
      }
    }

    v5 = objc_alloc_init(CKOnboardingController);
    v6 = self->_onboardingController;
    self->_onboardingController = v5;

    [(CKOnboardingController *)self->_onboardingController setDelegate:self];
    onboardingController = self->_onboardingController;
  }

  return onboardingController;
}

- (void)checkForRCSAndCarrierAlerts
{
  if ([(CKMessagesController *)self onboardingControllerIsActive])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Not presenting RCS/Carrier alerts, onboarding controller is active", buf, 2u);
      }
    }
  }

  else if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__CKMessagesController_checkForRCSAndCarrierAlerts__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)isShowingChatController
{
  v2 = [(CKMessagesController *)self chatController];
  v3 = [v2 viewIfLoaded];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (void)_updateAlertSuppressionContext
{
  if ((IMSupportsUserNotifications() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Requested deferred update of alert suppression contexts", v4, 2u);
      }
    }

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel___updateAlertSuppressionContext object:0];
    [(CKMessagesController *)self performSelector:sel___updateAlertSuppressionContext withObject:0 afterDelay:0.2];
  }
}

- (void)performResumeDeferredSetup
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "performResumeDeferredSetup", &buf, 2u);
    }
  }

  objc_initWeak(&buf, self);
  v4 = [(CKMessagesController *)self viewIfLoaded];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v32[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __50__CKMessagesController_performResumeDeferredSetup__block_invoke;
  v28[3] = &unk_1E72F08A0;
  objc_copyWeak(&v29, &buf);
  v8 = [v6 registerForTraitChanges:v7 withHandler:v28];

  [(CKMessagesController *)self checkForRCSAndCarrierAlerts];
  v9 = [MEMORY[0x1E69A7FC8] sharedManager];
  if (CKIsRunningInMessages())
  {
    CKPrewarmResumeDeferredSetup();
  }

  v10 = [(CKMessagesController *)self chatController];
  [v10 performResumeDeferredSetup];

  v11 = [(CKMessagesController *)self composeChatController];
  [v11 performResumeDeferredSetup];

  v12 = [(CKMessagesController *)self conversationListController];
  [v12 performResumeDeferredSetup];

  if (CKDeviceSupportsPerseus())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [(CKMessagesController *)self conversationList];
    v14 = [v13 conversations];

    v15 = [v14 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v15)
    {
      v16 = 0;
      v17 = *v25;
LABEL_10:
      v18 = 0;
      if (v16 <= 50)
      {
        v19 = 50;
      }

      else
      {
        v19 = v16;
      }

      v20 = (v19 - v16);
      v16 += v15;
      while (1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v24 + 1) + 8 * v18);
        if ([v21 recipientCount] >= 2)
        {
          v22 = [v21 orderedContactsForAvatarView];
        }

        if (([v21 hasDisplayName] & 1) == 0)
        {
          v23 = [v21 name];
        }

        if (v20 == v18)
        {
          break;
        }

        if (v15 == ++v18)
        {
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v31 count:16];
          if (v15)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }
  }

  [(CKMessagesController *)self startPhotosSyndicationIngest];
  objc_destroyWeak(&v29);
  objc_destroyWeak(&buf);
}

- (void)focusStateDidChange
{
  if ([(CKMessagesController *)self isShowingInboxViewController]&& ![(CKMessagesController *)self _shouldShowInboxView])
  {
    [(CKMessagesController *)self showConversationListWithAnimation:1];
  }

  [(CKMessagesController *)self updateInboxAndConversationList];
}

- (BOOL)isShowingInboxViewController
{
  v2 = [(CKMessagesController *)self inboxViewController];
  v3 = [v2 viewIfLoaded];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (UIViewController)inboxViewController
{
  if (!self->_inboxViewController && [(CKMessagesController *)self _shouldShowInboxView])
  {
    v3 = [CKInboxViewController alloc];
    v4 = [(CKMessagesController *)self conversationListController];
    v5 = [(CKInboxViewController *)v3 initWithConversationListController:v4];

    [(UIViewController *)v5 setDelegate:self];
    inboxViewController = self->_inboxViewController;
    self->_inboxViewController = v5;
  }

  v7 = self->_inboxViewController;

  return v7;
}

void __51__CKMessagesController_checkForRCSAndCarrierAlerts__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc_init(CKAlertUtilities);
  [v2 setAlertUtilities:v3];

  v4 = [*(a1 + 32) alertUtilities];
  [v4 setDelegate:*(a1 + 32)];

  v5 = [*(a1 + 32) alertUtilities];
  [v5 checkFirstTimeRCS];

  v6 = [*(a1 + 32) alertUtilities];
  [v6 checkMissingCarrierSetting];
}

- (void)_installTickerIfNeeded
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return;
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"showTickerHUD"];

  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [v7 BOOLForKey:@"showTickerHUDAndLogValueWhileRecording"];

  if ((v8 & 1) == 0 && !v6)
  {
    return;
  }

  v9 = [(CKMessagesController *)self view];
  v10 = [v9 window];
  v14 = [v10 windowScene];

  if (v14)
  {
    if (v6)
    {
      v11 = +[_TtC7ChatKit13CKDebugTicker sharedTicker];
      v12 = [(CKMessagesController *)self view];
      v13 = [v12 window];
      [v11 showWithWindowScene:v14 parentWindow:v13];
LABEL_10:

      goto LABEL_11;
    }

    if (v8)
    {
      v11 = +[_TtC7ChatKit13CKDebugTicker sharedTicker];
      v12 = [(CKMessagesController *)self view];
      v13 = [v12 window];
      [v11 showAndLogValueWhileRecordingWithWindowScene:v14 parentWindow:v13];
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (BOOL)isComposingMessage
{
  v5 = [(CKMessagesController *)self composeChatController];

  if (v5)
  {
    v6 = [(CKMessagesController *)self chatNavigationController];
    v7 = [(CKMessagesController *)self composeChatNavigationController];
    if (v7 && ([(CKMessagesController *)self presentedViewController], v2 = objc_claimAutoreleasedReturnValue(), [(CKMessagesController *)self composeChatNavigationController], v8 = objc_claimAutoreleasedReturnValue(), v3 = v8, v2 == v8))
    {
    }

    else
    {
      v10 = [v6 topViewController];
      v11 = [(CKMessagesController *)self composeChatController];

      if (v7)
      {
      }

      if (v10 != v11)
      {
        LOBYTE(v9) = 0;
LABEL_11:

        return v9;
      }
    }

    v12 = [(CKMessagesController *)self composeChatController];
    v9 = [v12 isSendingMessage] ^ 1;

    goto LABEL_11;
  }

  LOBYTE(v9) = 0;
  return v9;
}

- (void)parentControllerDidBecomeActive
{
  v3 = [(CKMessagesController *)self chatController];
  [v3 parentControllerDidBecomeActive];

  v4 = [(CKMessagesController *)self composeChatController];
  [v4 parentControllerDidBecomeActive];
}

- (BOOL)hasDetailsNavigationController
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isRedesignedDetailsViewEnabled];

  if (v4)
  {
    v5 = [(CKMessagesController *)self redesignedDetailsNavigationController];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v7 = [(CKMessagesController *)self splitViewCoordinator];
      v6 = [v7 isInspectorVisible];
    }
  }

  else
  {
    v5 = [(CKMessagesController *)self detailsNavigationController];
    v6 = v5 != 0;
  }

  return v6;
}

- (UINavigationController)redesignedDetailsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_redesignedDetailsNavigationController);

  return WeakRetained;
}

- (CKMessagesSplitViewCoordinator)splitViewCoordinator
{
  splitViewCoordinator = self->_splitViewCoordinator;
  if (!splitViewCoordinator)
  {
    v4 = [CKMessagesSplitViewCoordinator newWithSplitViewController:self];
    v5 = self->_splitViewCoordinator;
    self->_splitViewCoordinator = v4;

    splitViewCoordinator = self->_splitViewCoordinator;
  }

  v6 = splitViewCoordinator;

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CKCoreChatController *)self->_chatController setDelegate:0];
  [(CKCoreChatController *)self->_composeChatController setDelegate:0];
  [(UINavigationController *)self->_conversationListNavigationController setDelegate:0];
  [(CKConversationListControllerProtocol *)self->_conversationListController setDelegate:0];
  [(CKInteractionNotificationView *)self->_dismissOnInteractionView setDelegate:0];
  [(UINavigationController *)self->_chatNavigationController setDelegate:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69A78C0], 0);
  v5.receiver = self;
  v5.super_class = CKMessagesController;
  [(CKMessagesController *)&v5 dealloc];
}

- (id)initAsOscarModal
{
  v5.receiver = self;
  v5.super_class = CKMessagesController;
  v2 = [(CKMessagesController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKMessagesController *)v2 initialize];
    [(CKMessagesController *)v3 setOscarModal:1];
  }

  return v3;
}

- (CKMessagesController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = CKMessagesController;
  v3 = [(CKMessagesController *)&v6 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(CKMessagesController *)v3 initialize];
  }

  return v4;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(CKMessagesController *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [(CKMessagesController *)self chatController];
    [v12 dismissTipIfPresented];
  }

  v13.receiver = self;
  v13.super_class = CKMessagesController;
  [(CKMessagesController *)&v13 presentViewController:v8 animated:v6 completion:v9];
}

- (void)conversationListControllerTappedDeleteNewMessage:(id)a3
{
  v7 = a3;
  v4 = [(CKMessagesController *)self composeChatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CKMessagesController *)self composeChatController];
    [v6 cancelCompose];
  }

  else
  {
    [(CKMessagesController *)self composeChatControllerDidCancelComposition:0];
    [v7 reloadData];
  }
}

- (_TtC7ChatKit25CKSelectionViewController)selectionViewController
{
  selectionViewController = self->_selectionViewController;
  if (!selectionViewController)
  {
    v4 = [(CKMessagesController *)self generateSelectionViewController];
    v5 = self->_selectionViewController;
    self->_selectionViewController = v4;

    selectionViewController = self->_selectionViewController;
  }

  return selectionViewController;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 136315394;
      v12 = "[CKMessagesController viewWillAppear:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "%s, animated:%@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v8 = "[CKMessagesController viewWillAppear:]";
    v9 = v7;
    _CKLog();
  }

  v10.receiver = self;
  v10.super_class = CKMessagesController;
  [(CKMessagesController *)&v10 viewWillAppear:v3, v8, v9];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 136315394;
      v21 = "[CKMessagesController viewDidAppear:]";
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "%s, animated:%@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v17 = "[CKMessagesController viewDidAppear:]";
    v18 = v7;
    _CKLog();
  }

  v19.receiver = self;
  v19.super_class = CKMessagesController;
  [(CKMessagesController *)&v19 viewDidAppear:v3, v17, v18];
  [(CKMessagesController *)self _installTickerIfNeeded];
  if ([(CKMessagesController *)self isOscarModal])
  {
    [(CKMessagesController *)self showConversationListWithAnimation:0];
    [(CKMessagesController *)self changeFilterMode:9];
  }

  else if (![(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    v8 = [(CKMessagesController *)self isCollapsed];
    v9 = [(CKMessagesController *)self chatNavigationController];
    v10 = [v9 childViewControllers];
    v11 = [v10 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (![(CKMessagesController *)self isComposingMessage]&& (v8 & isKindOfClass & 1) != 0)
    {
      [(CKMessagesController *)self showConversationListWithAnimation:1];
    }
  }

  [(CKMessagesController *)self _updateAlertSuppressionContext];
  kdebug_trace();
  v13 = IMClientTelemetryLogHandle();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ClientLaunchToViewAppears", " enableTelemetry=YES ", buf, 2u);
  }

  if (CKIsRunningInMacCatalyst() && [(CKMessagesController *)self daemonIsConnected])
  {
    v14 = +[CKConversationList sharedConversationList];
    v15 = [v14 hasActiveConversations];

    if ((v15 & 1) == 0)
    {
      v16 = [(CKMessagesController *)self conversationListController];
      [v16 composeButtonClicked:self];
    }
  }
}

- (BOOL)daemonIsConnected
{
  v2 = [MEMORY[0x1E69A5B50] sharedController];
  v3 = [v2 isConnected];

  return v3;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 136315394;
      v12 = "[CKMessagesController viewWillDisappear:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "%s, animated:%@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v8 = "[CKMessagesController viewWillDisappear:]";
    v9 = v7;
    _CKLog();
  }

  v10.receiver = self;
  v10.super_class = CKMessagesController;
  [(CKMessagesController *)&v10 viewWillDisappear:v3, v8, v9];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 136315394;
      v12 = "[CKMessagesController viewDidDisappear:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "%s, animated:%@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v8 = "[CKMessagesController viewDidDisappear:]";
    v9 = v7;
    _CKLog();
  }

  [(CKMessagesController *)self _updateAlertSuppressionContext:v8];
  v10.receiver = self;
  v10.super_class = CKMessagesController;
  [(CKMessagesController *)&v10 viewDidDisappear:v3];
}

- (BOOL)shouldAutorotate
{
  if ([(CKMessagesController *)self isCollapsed])
  {
    [(CKMessagesController *)self conversationListNavigationController];
  }

  else
  {
    [(CKMessagesController *)self chatNavigationController];
  }
  v3 = ;
  v4 = [v3 shouldAutorotate];

  return v4;
}

- (void)didReceiveMemoryWarning
{
  v3 = +[CKCurrentConversationsManager sharedInstance];
  [v3 pruneCache];

  v4.receiver = self;
  v4.super_class = CKMessagesController;
  [(CKMessagesController *)&v4 didReceiveMemoryWarning];
}

void __50__CKMessagesController_performResumeDeferredSetup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateViewsWithChatControllerBackgroundTraits];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateTraitEnvironmentWithLatestWindowSceneUserInterfaceStyle];
}

- (void)performVisibleAppPluginIconPrefetch:(id)a3
{
  v4 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CKMessagesController_performVisibleAppPluginIconPrefetch___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

void __60__CKMessagesController_performVisibleAppPluginIconPrefetch___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 appIconPrefetchLimit];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) _sharedBalloonPluginManager];
  v5 = [v4 visibleDrawerPlugins];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    v11 = v8 + 1;
    v8 += v7;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v5);
      }

      if (v11 > v3)
      {
        break;
      }

      v12 = *(*(&v14 + 1) + 8 * v10);
      v13 = [*(a1 + 32) traitCollection];
      [v12 __ck_prefetchBrowserImageForInterfaceStyle:{objc_msgSend(v13, "userInterfaceStyle")}];

      ++v10;
      ++v11;
      if (v7 == v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)dismissKeyboardIfVisible
{
  v3 = [(CKMessagesController *)self chatController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CKMessagesController *)self composeChatController];
  }

  v10 = v5;

  v6 = [v10 entryView];
  v7 = [v6 contentView];
  v8 = [v7 activeView];
  v9 = [v8 isFirstResponder];

  if (v9)
  {
    [v10 dismissKeyboard];
  }
}

- (void)performSearchForQuery:(id)a3
{
  v4 = a3;
  v13 = 0;
  [(CKMessagesController *)self showConversationListWithAnimation:1 didDismissController:&v13];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__CKMessagesController_performSearchForQuery___block_invoke;
  aBlock[3] = &unk_1E72EB8D0;
  aBlock[4] = self;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (v13 == 1)
  {
    v8 = dispatch_time(0, 250000000);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__CKMessagesController_performSearchForQuery___block_invoke_534;
    v9[3] = &unk_1E72EBDB8;
    v10 = v7;
    dispatch_after(v8, MEMORY[0x1E69E96A0], v9);
  }

  else
  {
    (*(v6 + 2))(v6);
  }
}

void __46__CKMessagesController_performSearchForQuery___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationListController];
  v3 = [v2 navigationController];

  if (v3)
  {
    v4 = [*(a1 + 32) conversationListController];
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__CKMessagesController_performSearchForQuery___block_invoke_2;
    v8[3] = &unk_1E72EBA18;
    v9 = v5;
    [v4 performSearch:v9 completion:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) conversationListController];
    [v7 setDeferredSearchQuery:v6];
  }
}

void __46__CKMessagesController_performSearchForQuery___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Performed search with query:%@", &v4, 0xCu);
    }
  }
}

- (void)prepareForSuspend
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "prepareForSuspend", &v14, 2u);
    }
  }

  [(CKMessagesController *)self setStatusBarStyleViewController:0];
  v4 = [(CKMessagesController *)self inboxViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKMessagesController *)self inboxViewController];
    [v6 prepareForSuspend];
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(CKMessagesController *)self onboardingController];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "prepareForSuspend onboardingController: %@", &v14, 0xCu);
    }
  }

  v9 = [(CKMessagesController *)self onboardingController];
  [v9 prepareForSuspend];

  [(CKMessagesController *)self setOnboardingController:0];
  v10 = [(CKMessagesController *)self conversationListController];
  [v10 prepareForSuspend];

  v11 = [(CKMessagesController *)self chatController];
  [v11 prepareForSuspend];

  v12 = [(CKMessagesController *)self composeChatController];
  [v12 prepareForSuspend];

  [(CKMessagesController *)self teardownCamera];
  if (!CKIsRunningInMacCatalyst())
  {
    v13 = [(CKMessagesController *)self _sharedBalloonPluginManager];
    [v13 invalidateAllActivePluginsSkippingCameraApp:1];
  }
}

- (void)prepareForResume
{
  v3 = [(CKMessagesController *)self inboxViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKMessagesController *)self inboxViewController];
    [v5 prepareForResume];
  }

  v6 = [(CKMessagesController *)self conversationListController];
  [v6 prepareForResume];

  v7 = [(CKMessagesController *)self chatController];
  [v7 prepareForResume];

  v8 = [(CKMessagesController *)self composeChatController];
  [v8 prepareForResume];

  if (!CKIsRunningInMacCatalyst())
  {

    [(CKMessagesController *)self presentOnboardingViewControllerIfNeeded];
  }
}

- (void)parentControllerDidResume:(BOOL)a3 animating:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CKMessagesController *)self chatController];
  [v7 parentControllerDidResume:v5 animating:v4];

  v8 = [(CKMessagesController *)self composeChatController];
  [v8 parentControllerDidResume:v5 animating:v4];
}

- (void)setDeferredHandleURLBlock:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKMessagesController *)self onboardingController];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = v5 != 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Attempting to set a deferredHandleURLBlock. performingOnboarding=%{BOOL}d", v14, 8u);
    }
  }

  v7 = v5 != 0;
  v8 = [(CKMessagesController *)self isInitialLayout];
  v9 = IMOSLoggingEnabled();
  if (v8 || v7)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "> Writing down deferredHandleURLBlock for later.", v14, 2u);
      }
    }

    v11 = [v4 copy];
    deferredHandleURLBlock = self->_deferredHandleURLBlock;
    self->_deferredHandleURLBlock = v11;
  }

  else
  {
    if (v9)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "> Calling deferredHandleURLBlock() immediately.", v14, 2u);
      }
    }

    v4[2](v4);
  }
}

- (BOOL)_shouldShowSMSRelayPromptOnLaunch
{
  if (CKSMSRelaySettingsConfirmed())
  {
    return 0;
  }

  return [(CKMessagesController *)self _shouldShowSMSRelayPrompt];
}

- (BOOL)_shouldShowSMSRelayPrompt
{
  v3 = [MEMORY[0x1E69A5A80] sharedInstance];
  v4 = [MEMORY[0x1E69A5CA0] smsService];
  v5 = [v3 activeAccountsForService:v4];
  v6 = [v5 firstObject];

  if (!v6)
  {
    goto LABEL_7;
  }

  if (([v6 isSMSRelayCapable] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__CKMessagesController__shouldShowSMSRelayPrompt__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    if (_shouldShowSMSRelayPrompt_onceToken != -1)
    {
      dispatch_once(&_shouldShowSMSRelayPrompt_onceToken, block);
    }
  }

  if ([v6 isSMSRelayCapable] && (objc_msgSend(v6, "allowsSMSRelay") & 1) == 0)
  {
    v7 = [v6 registrationStatus] == 5 || objc_msgSend(v6, "registrationStatus") == 0;
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}

void __49__CKMessagesController__shouldShowSMSRelayPrompt__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E69A5A60];
  v4 = [MEMORY[0x1E69A5CA0] smsService];
  [v5 addObserver:v2 selector:sel__showSMSRelayPromptIfNeeded name:v3 object:v4];
}

- (void)_showSMSRelayPromptOnLaunchIfNeeded
{
  if ([(CKMessagesController *)self _shouldShowSMSRelayPromptOnLaunch])
  {

    [(CKMessagesController *)self _showSMSRelayPromptIfNeeded];
  }
}

- (void)_showSMSRelayPromptIfNeeded
{
  v3 = [(CKMessagesController *)self _shouldShowSMSRelayPrompt];
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Show SMS Relay Prompt", buf, 2u);
      }
    }

    CKSetSMSRelaySettingsConfirmed(1);
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"SMS_RELAY_ALERT_TITLE_MAC" value:&stru_1F04268F8 table:@"ChatKit"];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"SMS_RELAY_ALERT_BODY" value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [CKAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];

    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"SMS_RELAY_TURN_ON" value:&stru_1F04268F8 table:@"ChatKit"];
    v13 = [CKAlertAction actionWithTitle:v12 style:0 handler:&__block_literal_global_282];

    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"SMS_RELAY_NOT_NOW" value:&stru_1F04268F8 table:@"ChatKit"];
    v16 = [CKAlertAction actionWithTitle:v15 style:1 handler:0];

    [v10 addAction:v16];
    [v10 addAction:v13];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__CKMessagesController__showSMSRelayPromptIfNeeded__block_invoke_2;
    v19[3] = &unk_1E72EB8D0;
    v20 = v10;
    v21 = self;
    v17 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }

  else if (v4)
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "NOT showing SMS Relay Prompt", buf, 2u);
    }
  }
}

void __51__CKMessagesController__showSMSRelayPromptIfNeeded__block_invoke()
{
  v0 = [MEMORY[0x1E69A5A80] sharedInstance];
  v1 = [MEMORY[0x1E69A5CA0] smsService];
  v2 = [v0 activeAccountsForService:v1];
  v3 = [v2 firstObject];

  [v3 enrollSelfDeviceInSMSRelay];
}

- (void)_showNextSMSRelayPINPrompt
{
  v3 = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
    v6 = [v5 firstObject];

    v7 = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
    [v7 removeObject:v6];

    v8 = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
    v9 = [v8 count];

    if (!v9)
    {
      [(CKMessagesController *)self setPendingSMSRelayPINPrompts:0];
    }

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __50__CKMessagesController__showNextSMSRelayPINPrompt__block_invoke;
    v14 = &unk_1E72EB8D0;
    v15 = self;
    v16 = v6;
    v10 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], &v11);
    [(CKMessagesController *)self _showNextSMSRelayPINPrompt:v11];
  }
}

uint64_t __50__CKMessagesController__showNextSMSRelayPINPrompt__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentSMSRelayPinAlert:*(a1 + 40)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 presentFromViewController:v3 animated:1 completion:0];
}

- (void)_smsRelayPINReceived:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKMessagesController *)self _shouldShowSMSRelayPrompt])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v4;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received notification for SMS Relay PIN %@", buf, 0xCu);
      }
    }

    v6 = [v4 userInfo];
    v7 = [v6 objectForKey:@"pinCode"];

    v8 = [v4 userInfo];
    v9 = [v8 objectForKey:@"phoneNumber"];

    if (v7 && v9)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = CKFrameworkBundle();
      v12 = [v11 localizedStringForKey:@"SMS_RELAY_PIN_PROMPT_MAC" value:&stru_1F04268F8 table:@"ChatKit"];
      v13 = [v10 stringWithFormat:v12, v9, v7];

      v14 = [MEMORY[0x1E69DC668] sharedApplication];
      LODWORD(v12) = [v14 userInterfaceLayoutDirection] == 1;

      if (v12)
      {
        v15 = @"\u200F";
      }

      else
      {
        v15 = @"\u200E";
      }

      v16 = [(__CFString *)v15 stringByAppendingString:v13];

      v17 = CKFrameworkBundle();
      v18 = [v17 localizedStringForKey:@"SMS_RELAY_WAITING" value:&stru_1F04268F8 table:@"ChatKit"];
      v19 = [CKAlertController alertControllerWithTitle:v16 message:v18 preferredStyle:1];

      v20 = CKFrameworkBundle();
      v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
      v22 = [CKAlertAction actionWithTitle:v21 style:1 handler:0];

      [v19 addAction:v22];
      v23 = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
      LODWORD(v20) = v23 == 0;

      if (v20)
      {
        v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(CKMessagesController *)self setPendingSMSRelayPINPrompts:v24];
      }

      v25 = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
      [v25 addObject:v19];

      [(CKMessagesController *)self _showNextSMSRelayPINPrompt];
    }
  }
}

- (void)messagesSceneDelegateDidUpdateEffectiveGeometryForScene:(id)a3 previousEffectiveGeometry:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKMessagesController *)self splitViewCoordinator];
  [v8 effectiveGeometryDidUpdateForScene:v7 previousEffectiveGeometry:v6];
}

- (void)_pinVerificationShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"wasCancelled"];
  v7 = [v6 BOOLValue];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKey:@"responseFromDevice"];
  LODWORD(v6) = [v9 BOOLValue];

  if (!v6)
  {
    goto LABEL_5;
  }

  v10 = [(CKMessagesController *)self currentSMSRelayPinAlert];

  if (v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__CKMessagesController__pinVerificationShouldDismiss___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if (v7)
  {
LABEL_5:
    [(CKMessagesController *)self setPendingSMSRelayPINPrompts:0];
    v11 = [(CKMessagesController *)self presentedViewController];

    if (v11)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __54__CKMessagesController__pinVerificationShouldDismiss___block_invoke_2;
      v25[3] = &unk_1E72EBA18;
      v25[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v25);
    }

    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"SMS_RELAY_CANCELLED_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"SMS_RELAY_CANCELLED_BODY" value:&stru_1F04268F8 table:@"ChatKit"];
    v16 = [CKAlertController alertControllerWithTitle:v13 message:v15 preferredStyle:1];

    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v19 = [CKAlertAction actionWithTitle:v18 style:1 handler:0];

    [v16 addAction:v19];
    v20 = [v16 preferredAction];

    if (!v20)
    {
      [v16 setPreferredAction:v19];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__CKMessagesController__pinVerificationShouldDismiss___block_invoke_3;
    v22[3] = &unk_1E72EB8D0;
    v23 = v16;
    v24 = self;
    v21 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], v22);
  }
}

uint64_t __54__CKMessagesController__pinVerificationShouldDismiss___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSMSRelayPinAlert];
  [v2 dismissViewControllerAnimated:1 completion:0];

  v3 = *(a1 + 32);

  return [v3 setCurrentSMSRelayPinAlert:0];
}

- (id)preferredFocusEnvironments
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(CKMessagesController *)self isComposingMessage]&& ([(CKMessagesController *)self composeChatController], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(CKMessagesController *)self composeChatController];
  }

  else
  {
    v6 = [(CKMessagesController *)self chatController];

    if (!v6)
    {
      goto LABEL_7;
    }

    v5 = [(CKMessagesController *)self chatController];
  }

  v7 = v5;
  [v3 addObject:v5];

LABEL_7:
  v8 = [(CKMessagesController *)self conversationListController];

  if (v8)
  {
    v9 = [(CKMessagesController *)self conversationListController];
    [v3 addObject:v9];
  }

  return v3;
}

- (void)_presentViewControllerInInspector:(id)a3
{
  v6 = a3;
  v4 = [(CKMessagesController *)self splitViewCoordinator];
  v5 = v4;
  if (v4)
  {
    [v4 presentViewControllerInInspector:v6];
  }
}

- (void)chatController:(id)a3 willSendComposition:(id)a4 inConversation:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v7 shouldDismissAfterSend])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __74__CKMessagesController_chatController_willSendComposition_inConversation___block_invoke;
      v10[3] = &unk_1E72EBA18;
      v10[4] = self;
      [(CKMessagesController *)self dismissViewControllerAnimated:1 completion:v10];
    }

    [(CKMessagesController *)self setupBizNavBarForConversation:v8];
  }

  v9 = [(CKMessagesController *)self conversationListController];
  [v9 compositionSent];
}

void __74__CKMessagesController_chatController_willSendComposition_inConversation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelAndDestroyComposition];
  v2 = [*(a1 + 32) chatController];
  [v2 endHoldingScrollGeometryUpdatesForReason:@"TransitionFromForwarding"];
}

- (void)chatController:(id)a3 didSendCompositionInConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v6 shouldDismissAfterSend])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __72__CKMessagesController_chatController_didSendCompositionInConversation___block_invoke;
      v10[3] = &unk_1E72EBA18;
      v10[4] = self;
      [(CKMessagesController *)self dismissViewControllerAnimated:1 completion:v10];
    }

    else
    {
      [(CKMessagesController *)self showConversation:v7 animate:1];
    }

    if ([(CKMessagesController *)self isCollapsed])
    {
      v8 = [(CKMessagesController *)self conversationListController];
      [v8 updateFiltersAfterNewComposeToConversation:v7];
    }
  }

  v9 = [(CKMessagesController *)self conversationListController];
  [v9 updateConversationListForMessageSentToConversation:v7];
}

void __72__CKMessagesController_chatController_didSendCompositionInConversation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelAndDestroyComposition];
  v2 = [*(a1 + 32) chatController];
  [v2 endHoldingScrollGeometryUpdatesForReason:@"TransitionFromForwarding"];
}

- (void)chatController:(id)a3 didReportSpamForConversation:(id)a4
{
  v34 = a4;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isIntroductionsEnabled];

  if (v6)
  {
    v7 = [v34 chat];
    [v7 updateIsFiltered:2];
  }

  [(CKMessagesController *)self showConversationListWithAnimation:1];
  v8 = +[CKCurrentConversationsManager sharedInstance];
  [v8 purgeConversation:v34];

  [(CKMessagesController *)self deleteConversation:v34];
  v9 = [(CKMessagesController *)self conversationListController];
  [v9 updateConversationList];

  if (!CKIsForceUnknownFilteringEnabled() || ([MEMORY[0x1E69A8020] IMDeviceRegionIsEligibleToBeForcedIntoFilteringUnknownSender] & 1) == 0)
  {
    v10 = [(CKMessagesController *)self _isMessageFilteringEnabled];
    IsModified = CKMessageFilteringIsModified();
    if (v10)
    {
      if (!IsModified && CKMessageForceFilteringIsExpected())
      {
        CKSetMessageFilteringSettingsConfirmed(1);
      }
    }

    else if (!IsModified && CKMessageForceFilteringIsExpected())
    {
      CKSetMessageFilteringSettingsConfirmed(1);
      v12 = MEMORY[0x1E69DC650];
      v13 = CKFrameworkBundle();
      v14 = [v13 localizedStringForKey:@"MESSAGE_FILTERING_PROMPT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v15 = CKFrameworkBundle();
      v16 = [v15 localizedStringForKey:@"MESSAGE_FILTERING_PROMPT_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
      v17 = [v12 alertControllerWithTitle:v14 message:v16 preferredStyle:1];

      v18 = CKFrameworkBundle();
      v19 = [v18 localizedStringForKey:@"MESSAGE_FILTERING_TURN_ON" value:&stru_1F04268F8 table:@"ChatKit"];
      v20 = [CKAlertAction actionWithTitle:v19 style:0 handler:&__block_literal_global_611_0];
      [v17 addAction:v20];

      v21 = CKFrameworkBundle();
      v22 = [v21 localizedStringForKey:@"MESSAGE_FILTERING_NOT_NOW" value:&stru_1F04268F8 table:@"ChatKit"];
      v23 = [CKAlertAction actionWithTitle:v22 style:0 handler:&__block_literal_global_616_1];
      [v17 addAction:v23];

      [(CKMessagesController *)self presentViewController:v17 animated:1 completion:0];
    }
  }

  if (![(CKMessagesController *)self isCollapsed])
  {
    v24 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v25 = [v24 isReportJunkEverywhereEnabled];

    v26 = [(CKMessagesController *)self conversationListController];
    v27 = v26;
    if (v25)
    {
      v28 = [v26 collectionView];
      v29 = [v28 indexPathsForSelectedItems];
      v30 = [v29 count];

      if (v30)
      {
        v31 = [v27 collectionView];
        v32 = [v31 indexPathsForSelectedItems];
        v33 = [v32 firstObject];

        [v27 selectConversationClosestToDeletedIndex:v33];
      }

      else
      {
        v33 = [(CKMessagesController *)self conversationListController];
        [v33 selectDefaultConversationAnimated:1];
      }
    }

    else
    {
      [v26 selectDefaultConversationAnimated:1];
    }
  }
}

- (void)setChatControllerUserInterfaceStyle:(int64_t)a3
{
  if (self->_chatControllerUserInterfaceStyle != a3)
  {
    self->_chatControllerUserInterfaceStyle = a3;
    [(CKMessagesController *)self _updateViewsWithChatControllerBackgroundTraits];
  }
}

- (void)_updateTraitEnvironmentWithLatestWindowSceneUserInterfaceStyle
{
  v2 = [(CKMessagesController *)self viewIfLoaded];
  v7 = [v2 window];

  v3 = [v7 windowScene];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = [v7 traitOverrides];
  [v6 setNSIntegerValue:v5 forTrait:objc_opt_class()];
}

- (void)chatControllerDidChangeBackground:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v12, 0xCu);
  }

  v6 = [(CKMessagesController *)self chatController];
  v7 = v6;
  if (v6 == v4)
  {
  }

  else
  {
    v8 = [(CKMessagesController *)self composeChatController];

    if (v8 != v4)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CKMessagesController *)v4 chatControllerDidChangeBackground:?];
      }

      goto LABEL_12;
    }
  }

  v10 = [v4 transcriptBackground];
  v9 = v10;
  if (v10)
  {
    v11 = [v10 contentDerivedUserInterfaceStyle];
  }

  else
  {
    v11 = 0;
  }

  [(CKMessagesController *)self setChatControllerUserInterfaceStyle:v11];
LABEL_12:
}

- (void)chatController:(id)a3 didUnsubscribeForConversation:(id)a4
{
  v5 = a4;
  [(CKMessagesController *)self showConversationListWithAnimation:1];
  [(CKMessagesController *)self deleteConversation:v5];

  v6 = [(CKMessagesController *)self conversationListController];
  [v6 updateConversationList];

  if (![(CKMessagesController *)self isCollapsed])
  {
    v7 = [(CKMessagesController *)self conversationListController];
    [v7 selectDefaultConversationAnimated:1];
  }
}

- (void)chatController:(id)a3 requestDeleteJunkConversation:(id)a4
{
  v5 = a4;
  v7 = +[CKConversationList sharedConversationList];
  [v7 deleteConversation:v5];

  v6 = [(CKMessagesController *)self conversationListController];
  [v6 userDeletedJunkConversationFromTranscript];
}

- (void)chatController:(id)a3 requestRecoverJunkConversation:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[CKConversationList sharedConversationList];
  v9[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  [v6 recoverJunkMessagesInConversations:v7];
  v8 = [(CKMessagesController *)self conversationListController];
  [v8 userRecoveredJunkConversationFromTranscript];
}

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3
{
  [(CKMessagesController *)self systemMinimumLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CKMessagesController *)self view];
  v13 = [v12 effectiveUserInterfaceLayoutDirection];

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  if (v13)
  {
    v15 = v7;
  }

  else
  {
    v15 = v11;
  }

  v16 = v5;
  v17 = v9;
  result.right = v15;
  result.bottom = v17;
  result.left = v14;
  result.top = v16;
  return result;
}

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3
{
  if ([(CKMessagesController *)self isCollapsed])
  {
    v4 = [(CKMessagesController *)self view];
    [v4 safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v4 = [(CKMessagesController *)self chatNavigationController];
    v13 = [v4 view];
    [v13 safeAreaInsets];
    v6 = v14;
    v8 = v15;
    v10 = v16;
    v12 = v17;
  }

  v18 = v6;
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)chatController:(id)a3 forwardComposition:(id)a4
{
  v15 = a4;
  if ([(CKMessagesController *)self isCollapsed])
  {
    v5 = [(CKComposeChatController *)[CKShareSheetChatController alloc] initWithRecipientAddresses:0 composition:v15 bizIntent:0];
    [(CKCoreChatController *)v5 setDelegate:self];
    [(CKChatController *)v5 setSendMenuDelegate:self];
    v6 = [[CKNavigationController alloc] initWithRootViewController:v5];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 useMacToolbar];

    if (v8)
    {
      [(CKNavigationController *)v6 setNavigationBarHidden:1];
    }

    else
    {
      v9 = [(CKNavigationController *)v6 navigationBar];
      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = [v10 theme];
      [v9 setBarStyle:{objc_msgSend(v11, "navBarStyle")}];
    }

    [(CKMessagesController *)self setComposeChatNavigationController:v6];
    [(CKMessagesController *)self setComposeChatController:v5];
    v12 = [(CKMessagesController *)self chatController];
    [v12 beginHoldingScrollGeometryUpdatesForReason:@"TransitionFromForwarding"];

    v13 = [(CKMessagesController *)self composeChatNavigationController];
    [(CKMessagesController *)self presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    [(CKMessagesController *)self showNewMessageCompositionPanelAppendingToExistingDraft:v15 animated:1];
  }

  v14 = [(CKMessagesController *)self conversationListController];
  [v14 updateConversationList];
}

- (void)chatController:(id)a3 didRequestNewComposePresentationWithSender:(id)a4
{
  v5 = a4;
  v6 = [(CKMessagesController *)self conversationListController];
  [v6 composeButtonClicked:v5];
}

- (void)chatController:(id)a3 requestPresentSendMenu:(id)a4 currentlyPresentedViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CKSendMenuPresentation *)self->_sendMenuPresentation sendMenuViewController];
  v12 = [v11 view];
  v13 = [v12 window];

  if (!v13)
  {
    v14 = self;
    if ([(CKMessagesController *)v14 isComposingMessage])
    {
      v15 = [(CKMessagesController *)v14 composeChatController];
    }

    else if ([v8 isModal])
    {
      v15 = v8;
    }

    else
    {
      v16 = v14;
      if (!v10)
      {
LABEL_10:
        v17 = [v9 newSendMenuPresentationWithPresentingViewController:v16 delegate:v14];
        sendMenuPresentation = self->_sendMenuPresentation;
        self->_sendMenuPresentation = v17;

        objc_initWeak(&location, v14);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __95__CKMessagesController_chatController_requestPresentSendMenu_currentlyPresentedViewController___block_invoke;
        v24[3] = &unk_1E72F7FC8;
        objc_copyWeak(&v25, &location);
        [(CKSendMenuPresentation *)self->_sendMenuPresentation setSendMenuHasInitialFrame:v24];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __95__CKMessagesController_chatController_requestPresentSendMenu_currentlyPresentedViewController___block_invoke_2;
        v22[3] = &unk_1E72F7FC8;
        objc_copyWeak(&v23, &location);
        [(CKSendMenuPresentation *)self->_sendMenuPresentation setSendMenuFrameChanged:v22];
        v19 = self->_sendMenuPresentation;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __95__CKMessagesController_chatController_requestPresentSendMenu_currentlyPresentedViewController___block_invoke_3;
        v20[3] = &unk_1E72EBA18;
        v21 = v9;
        [(CKSendMenuPresentation *)v19 beginPresentationWithCompletion:v20];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);

        goto LABEL_11;
      }

      v15 = v10;
    }

    v16 = v15;

    goto LABEL_10;
  }

  [(CKSendMenuPresentation *)self->_sendMenuPresentation rePresentSendMenu];
  [v9 didFinishPresentTransition];
LABEL_11:
}

void __95__CKMessagesController_chatController_requestPresentSendMenu_currentlyPresentedViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained chatController];

  v2 = [v3 entryView];
  [v2 popoverSendMenuHasInitialFrame];
}

void __95__CKMessagesController_chatController_requestPresentSendMenu_currentlyPresentedViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained chatController];

  v2 = [v3 entryView];
  [v2 popoverSendMenuFrameChanged];
}

- (void)chatController:(id)a3 didFinishDismissAnimationForSendMenuViewController:(id)a4
{
  [(CKSendMenuPresentation *)self->_sendMenuPresentation removeSendMenuFromViewHierarchy:a3];
  sendMenuPresentation = self->_sendMenuPresentation;
  self->_sendMenuPresentation = 0;
}

- (void)chatControllerDidChangeDeferringSystemNavigationPopGestureForPlusButton:(id)a3
{
  v4 = [a3 isDeferringSystemNavigationPopGestureForPlusButton];
  v5 = [(CKMessagesController *)self chatNavigationController];
  v6 = [v5 interactivePopGestureRecognizer];
  [v6 setDelaysTouchesBegan:v4 ^ 1u];

  v7 = [(CKMessagesController *)self conversationListNavigationController];
  v8 = [v7 interactivePopGestureRecognizer];
  [v8 setDelaysTouchesBegan:v4 ^ 1u];

  [(CKMessagesController *)self setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
}

- (id)navigationBarBackdropLayerGroupNameForChatController:(id)a3
{
  v4 = [(CKMessagesController *)self composeChatNavigationController];

  if (v4)
  {
    v5 = [(CKMessagesController *)self composeChatNavigationController];
  }

  else
  {
    if ([(CKMessagesController *)self isCollapsed])
    {
      [(CKMessagesController *)self conversationListNavigationController];
    }

    else
    {
      [(CKMessagesController *)self chatNavigationController];
    }
    v5 = ;
  }

  v6 = v5;
  v7 = [v5 navigationBar];
  v8 = [v7 _backdropViewLayerGroupName];

  return v8;
}

- (int64_t)unreadCountForCurrentFilterModeForChatController:(id)a3
{
  v4 = [(CKMessagesController *)self conversationList];
  v5 = [(CKMessagesController *)self conversationListController];
  v6 = [v4 unreadCountForFilterMode:{objc_msgSend(v5, "filterMode")}];

  return v6;
}

- (BOOL)hasRecentlyDeletedFilterSelected
{
  v2 = [(CKMessagesController *)self conversationListController];
  v3 = [v2 filterMode] == 7;

  return v3;
}

- (void)legacyDidSelectFilterFromViewMenu:(id)a3
{
  v6 = a3;
  v4 = [v6 propertyList];

  if (v4)
  {
    v5 = [v6 propertyList];
    -[CKMessagesController catalystFilterModeSelected:](self, "catalystFilterModeSelected:", [v5 intValue]);
  }
}

- (void)catalystFilterModeSelected:(unint64_t)a3
{
  [(CKMessagesController *)self inboxViewController:0 didSelectFilterMode:a3];
  v4 = [(CKMessagesController *)self macToolbarController];
  [v4 reloadToolbarItems];

  v5 = [(CKMessagesController *)self conversationListController];
  [v5 dismissSearchIfNeeded];
}

- (void)reloadMacToolbarItems
{
  v2 = [(CKMessagesController *)self macToolbarController];
  [v2 reloadToolbarItems];
}

- (unint64_t)currentConversationListFilterMode
{
  v2 = [(CKMessagesController *)self conversationListController];
  v3 = [v2 filterMode];

  return v3;
}

- (void)updateSupportedInterfaceOrientations:(unint64_t)a3
{
  self->_supportedInterfaceOrientations = a3;
  self->_forceOrientation = 1;
  [(CKMessagesController *)self updateInterfaceOrientationsAnimated:0];
}

- (void)stopForcingOrientation
{
  self->_supportedInterfaceOrientations = 30;
  self->_forceOrientation = 0;
  [(CKMessagesController *)self updateInterfaceOrientationsAnimated:1];
}

- (void)updateInterfaceOrientationsAnimated:(BOOL)a3
{
  if (a3)
  {

    [(CKMessagesController *)self _setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  else
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__CKMessagesController_updateInterfaceOrientationsAnimated___block_invoke;
    v5[3] = &unk_1E72EBA18;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (IMSyncedSettingsManager)syncedSettingsManager
{
  syncedSettingsManager = self->_syncedSettingsManager;
  if (!syncedSettingsManager)
  {
    v4 = [MEMORY[0x1E69A5CC8] sharedManager];
    v5 = self->_syncedSettingsManager;
    self->_syncedSettingsManager = v4;

    syncedSettingsManager = self->_syncedSettingsManager;
  }

  return syncedSettingsManager;
}

- (void)_filterMessageRequestsUpdated:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 name];
      *buf = 136315394;
      v9 = "[CKMessagesController _filterMessageRequestsUpdated:]";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "%s, Received %@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = [v3 name];
    _CKLog();
  }

  CKResetFilteringSettings();
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:CKMessageFilteringChangedNotification[0] object:0];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      v27 = 138412802;
      v28 = v8;
      v29 = 2112;
      if (v5)
      {
        v11 = @"YES";
      }

      v30 = v9;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Navigation controller: %@ willShowViewController: %@ animated: %@", &v27, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      chatController = self->_chatController;
      v14 = [(CKCoreChatController *)chatController _shouldLoadInputAccessoryViewsOnAppearance];
      v15 = @"NO";
      v27 = 136315650;
      v28 = "[CKMessagesController navigationController:willShowViewController:animated:]";
      v29 = 2112;
      v30 = chatController;
      if (v14)
      {
        v15 = @"YES";
      }

      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "%s (chatController) %@ _shouldLoadInputAccessoryViewsOnAppearance: %@", &v27, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      composeChatController = self->_composeChatController;
      v18 = [(CKCoreChatController *)composeChatController _shouldLoadInputAccessoryViewsOnAppearance];
      v19 = @"NO";
      v27 = 136315650;
      v28 = "[CKMessagesController navigationController:willShowViewController:animated:]";
      v29 = 2112;
      v30 = composeChatController;
      if (v18)
      {
        v19 = @"YES";
      }

      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "%s (composeChatController) %@ _shouldLoadInputAccessoryViewsOnAppearance: %@", &v27, 0x20u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->timeViewDidBeginAppearing = v20;
    self->hasBegunShowingConversationList = 1;
  }

  if (!CKIsRunningInMacCatalyst())
  {
    if ([(CKMessagesController *)self isCollapsed])
    {
      v21 = [(CKMessagesController *)self currentConversation];
      if ([v21 isBusinessConversation])
      {
        v22 = [(CKMessagesController *)self conversationListController];
        v23 = v22 != v9;
      }

      else
      {
        v23 = 0;
      }

      v24 = [(CKMessagesController *)self conversationListNavigationController];
      v25 = [v24 navigationBar];
      [v25 setAccessibilityIgnoresInvertColors:v23];
    }

    else
    {
      v24 = [(CKMessagesController *)self chatNavigationController];
      v25 = [v24 navigationBar];
      v26 = [(CKMessagesController *)self currentConversation];
      [v25 setAccessibilityIgnoresInvertColors:{objc_msgSend(v26, "isBusinessConversation")}];
    }
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      *buf = 138412802;
      v49 = v8;
      v50 = 2112;
      if (v5)
      {
        v11 = @"YES";
      }

      v51 = v9;
      v52 = 2112;
      v53 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Navigation controller: %@ didShowViewController: %@ animated: %@", buf, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(__CFString *)v8 topViewController];
      *buf = 138412290;
      v49 = v13;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Navigation controller top view controller: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(CKMessagesController *)self conversationListNavigationController];
      v16 = [(CKMessagesController *)self conversationListNavigationController];
      v17 = [v16 viewControllers];
      *buf = 138412546;
      v49 = v15;
      v50 = 2112;
      v51 = v17;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Conv list nav controller %@ VCs: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [(CKMessagesController *)self chatNavigationController];
      v20 = [(CKMessagesController *)self chatNavigationController];
      v21 = [v20 viewControllers];
      *buf = 138412546;
      v49 = v19;
      v50 = 2112;
      v51 = v21;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Chat nav controller %@ VCs: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [(CKMessagesController *)self chatController];
      v24 = [(CKMessagesController *)self chatController];
      v25 = [v24 conversation];
      v26 = [(CKMessagesController *)self chatController];
      v27 = [v26 parentViewController];
      *buf = 138412802;
      v49 = v23;
      v50 = 2112;
      v51 = v25;
      v52 = 2112;
      v53 = v27;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Chat controller: %@, conv: %@,  parent: %@", buf, 0x20u);
    }
  }

  v28 = [(CKMessagesController *)self conversationListNavigationController];

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    v29 = [(CKMessagesController *)self conversationListController];
    v30 = v29 == v9;
  }

  else
  {
    v30 = 0;
  }

  if (v28 == v8 || v30)
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [(CKMessagesController *)self isCollapsed];
        v36 = [(CKMessagesController *)self isShowingChatController];
        v37 = @"NO";
        if (v35)
        {
          v38 = @"YES";
        }

        else
        {
          v38 = @"NO";
        }

        if (v36)
        {
          v37 = @"YES";
        }

        *buf = 138412546;
        v49 = v38;
        v50 = 2112;
        v51 = v37;
        _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Split controller collapsed: %@ showingChatController: %@", buf, 0x16u);
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__CKMessagesController_navigationController_didShowViewController_animated___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v39 = _Block_copy(aBlock);
    v40 = [(CKMessagesController *)self conversationListController];
    if (v40 == v9 || (objc_opt_class(), (objc_opt_isKindOfClass())) && [(CKMessagesController *)self isCollapsed])
    {
      v41 = [(CKMessagesController *)self isShowingChatController];

      if (!v41)
      {
        v39[2](v39);
      }
    }

    else
    {
    }

    [(__CFString *)v8 __ck_callDelegateBlocks];
    [(CKMessagesController *)self _updateAlertSuppressionContext];
    v42 = [(CKMessagesController *)self chatNavigationController];
    v43 = v42 == v9;

    if (v43)
    {
      v44 = [(CKMessagesController *)self conversationListController];
      v45 = [(__CFString *)v8 viewControllers];
      v46 = [v45 containsObject:v44];

      if ((v46 & 1) == 0)
      {
        [(CKMessagesController *)self updateInboxAndConversationList];
      }
    }
  }

  else
  {
    v31 = [(CKMessagesController *)self composeChatController];
    v32 = v31 == v9;

    if (v32 && [__CurrentTestName rangeOfString:@"ShowNewCompose"] != 0x7FFFFFFFFFFFFFFFLL && !-[CKMessagesController isCollapsed](self, "isCollapsed"))
    {
      v33 = [MEMORY[0x1E696AD88] defaultCenter];
      [v33 postNotificationName:@"PPTDidShowNewComposeEvent" object:0 userInfo:0];
    }
  }

  self->hasBegunShowingConversationList = 0;
}

void __76__CKMessagesController_navigationController_didShowViewController_animated___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) chatController];
  [v3 forciblyUnloadChatInputController];
  v4 = [*v2 chatNavigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 count];

  v7 = [*v2 viewControllers];
  v8 = [*v2 chatNavigationController];
  v9 = [v7 containsObject:v8];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v18[0] = 67109376;
      v18[1] = v6 != 0;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "removing stale transcript: chatNavigationControllerHadViewControllers: %{BOOL}d, isChatNavigationControllerChildViewController: %{BOOL}d", v18, 0xEu);
    }
  }

  v11 = v6 != 0;
  v12 = [*(a1 + 32) chatNavigationController];
  [v12 setViewControllers:MEMORY[0x1E695E0F0]];

  if ((v11 & v9) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18[0]) = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Updating viewControllers because chatNav is in the stack but has no child viewControllers", v18, 2u);
      }
    }

    [*(a1 + 32) updateInboxAndConversationList];
  }

  v14 = [*(a1 + 32) chatController];
  [v14 setDelegate:0];

  [*(a1 + 32) setChatController:0];
  [*(a1 + 32) setCurrentConversation:0];
  v15 = *(*(a1 + 32) + 1048);
  if (v15)
  {
    (*(v15 + 16))();
    v16 = *(a1 + 32);
    v17 = *(v16 + 1048);
    *(v16 + 1048) = 0;
  }
}

- (void)splitViewControllerDidCollapse:(id)a3
{
  v4 = [(CKMessagesController *)self inboxModel];
  [v4 setIsCollapsed:1];

  [(CKMessagesController *)self _didUpdateCollapsedState];

  [(CKMessagesController *)self _updateViewsWithChatControllerBackgroundTraits];
}

- (void)splitViewControllerDidExpand:(id)a3
{
  v4 = [(CKMessagesController *)self inboxModel];
  [v4 setIsCollapsed:0];

  v5 = [(CKMessagesController *)self chatNavigationController];
  v6 = [v5 viewControllers];
  v7 = [v6 count];

  if (!v7)
  {
    [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
  }

  [(CKMessagesController *)self _didUpdateCollapsedState];

  [(CKMessagesController *)self _updateViewsWithChatControllerBackgroundTraits];
}

- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4
{
  [(CKMessagesController *)self dismissPhotosGridIfNeeded];
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isModernSplitViewControllerEnabled];

  if (v7)
  {
    v8 = [(CKMessagesController *)self chatNavigationController];
    v9 = [v8 topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ![(CKMessagesController *)self isComposingMessage])
    {
      return 0;
    }
  }

  else if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    v11 = [(CKMessagesController *)self chatNavigationController];
    v12 = [v11 topViewController];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if ((v13 & 1) != 0 && ![(CKMessagesController *)self isComposingMessage])
    {
      return 1;
    }
  }

  return a4;
}

- (BOOL)splitViewController:(id)a3 collapseSecondaryViewController:(id)a4 ontoPrimaryViewController:(id)a5
{
  v38[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(CKMessagesController *)self dismissPhotosGridIfNeeded];
  v11 = +[CKUIBehavior sharedBehaviors];
  if ([v11 shouldSuppressRotationInNewCompose])
  {

LABEL_7:
    if ([(CKMessagesController *)self _hasCurrentConversations])
    {
      v20 = [(CKMessagesController *)self selectionViewController];
      v21 = [v20 view];
      v22 = [v21 window];

      if (!v22)
      {
        v23 = [(CKMessagesController *)self conversationListController];
        [v23 setEditing:0];

        goto LABEL_10;
      }
    }

LABEL_13:
    v24 = 1;
    goto LABEL_14;
  }

  v12 = [(CKMessagesController *)self isComposingMessage];

  if (!v12)
  {
    goto LABEL_7;
  }

  if (![(CKMessagesController *)self isInitialLayout])
  {
    v13 = [(CKMessagesController *)self composeChatController];
    v14 = [v13 proposedRecipients];
    v34 = [v14 arrayByApplyingSelector:sel_rawAddress];

    v33 = [v13 composition];
    v15 = +[CKUIBehavior sharedBehaviors];
    v16 = [objc_alloc(objc_msgSend(v15 "composeChatControllerClass"))];

    v32 = v16;
    [v16 setDelegate:self];
    v17 = [[CKNavigationController alloc] initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    v38[0] = v13;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    [(CKNavigationController *)v17 setViewControllers:v18];

    v19 = +[CKUIBehavior sharedBehaviors];
    LODWORD(v16) = [v19 useMacToolbar];

    if (v16)
    {
      [(CKNavigationController *)v17 setNavigationBarHidden:1];
    }

    else
    {
      v25 = [(CKNavigationController *)v17 navigationBar];
      v26 = +[CKUIBehavior sharedBehaviors];
      v27 = [v26 theme];
      [v25 setBarStyle:{objc_msgSend(v27, "navBarStyle")}];
    }

    [(CKMessagesController *)self cancelAndDestroyComposition];
    [(CKMessagesController *)self setComposeChatController:v32];
    [(CKMessagesController *)self setComposeChatNavigationController:v17];
    v28 = [(CKMessagesController *)self composeChatController];
    objc_initWeak(&location, v28);

    v29 = [(CKMessagesController *)self composeChatController];
    [v29 beginPinningInputViewsForReason:@"SplitViewFromExpandedToCollapsedTransition"];

    v30 = [(CKMessagesController *)self composeChatNavigationController];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __102__CKMessagesController_splitViewController_collapseSecondaryViewController_ontoPrimaryViewController___block_invoke;
    v35[3] = &unk_1E72EC460;
    objc_copyWeak(&v36, &location);
    [(CKMessagesController *)self presentViewController:v30 animated:0 completion:v35];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);

    goto LABEL_13;
  }

LABEL_10:
  v24 = 0;
LABEL_14:

  return v24;
}

void __102__CKMessagesController_splitViewController_collapseSecondaryViewController_ontoPrimaryViewController___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__CKMessagesController_splitViewController_collapseSecondaryViewController_ontoPrimaryViewController___block_invoke_2;
  block[3] = &unk_1E72EC460;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __102__CKMessagesController_splitViewController_collapseSecondaryViewController_ontoPrimaryViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endPinningInputViewsForReason:@"SplitViewFromExpandedToCollapsedTransition"];
}

- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CKMessagesController *)self dismissPhotosGridIfNeeded];
  v8 = [(CKMessagesController *)self conversationListNavigationController];
  v9 = [v8 navigationBar];
  [v9 setDarkEffectStyle:0];

  [(CKMessagesController *)self popToConversationListIfNecessaryAnimated:1];
  v10 = +[CKUIBehavior sharedBehaviors];
  if ([v10 shouldSuppressRotationInNewCompose])
  {
  }

  else
  {
    v11 = [(CKMessagesController *)self isComposingMessage];

    if (v11)
    {
      v12 = [(CKMessagesController *)self composeChatController];
      v13 = [v12 proposedRecipients];
      v14 = [v13 arrayByApplyingSelector:sel_rawAddress];

      v15 = [v12 composition];
      [(CKMessagesController *)self cancelAndDestroyComposition];
      [(CKMessagesController *)self showNewMessageCompositionPanelWithRecipients:v14 composition:v15 animated:0];
      v16 = [(CKMessagesController *)self composeChatController];
      objc_initWeak(location, v16);

      WeakRetained = objc_loadWeakRetained(location);
      [WeakRetained beginPinningInputViewsForReason:@"SplitViewFromCollapsedToExpandedTransition"];

      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __101__CKMessagesController_splitViewController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke;
      v45 = &unk_1E72EE0D0;
      v46 = self;
      objc_copyWeak(&v47, location);
      [(CKMessagesController *)self dismissViewControllerAnimated:0 completion:&v42];
      v18 = [(CKMessagesController *)self chatNavigationController:v42];
      objc_destroyWeak(&v47);
      objc_destroyWeak(location);

      goto LABEL_10;
    }
  }

  v19 = [(CKMessagesController *)self conversationListNavigationController];
  if (v19 == v7)
  {
    v22 = [(CKMessagesController *)self conversationListNavigationController];
    v23 = [v22 viewControllers];
    v24 = [v23 count];

    if (v24 > 2)
    {
      goto LABEL_7;
    }

    v19 = [(CKMessagesController *)self chatNavigationController];
    v25 = [v19 parentViewController];
    if (v25)
    {
    }

    else
    {
      v26 = [(CKMessagesController *)self conversationListNavigationController];
      v27 = [v26 viewControllers];
      v28 = [(CKMessagesController *)self chatNavigationController];
      v29 = [v27 indexOfObjectIdenticalTo:v28];

      if (v29 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_7;
      }

      v30 = [(CKMessagesController *)self viewIfLoaded];
      v19 = [v30 window];

      v31 = [(CKMessagesController *)self chatNavigationController];
      v32 = [v31 viewIfLoaded];

      v33 = [(CKMessagesController *)self conversationListNavigationController];
      v34 = [v33 viewIfLoaded];

      if (v19)
      {
        v35 = [v32 window];
        v36 = v35;
        if (v35 == v19)
        {
          v37 = [v34 window];

          if (v37 == v19)
          {
            v38 = [v32 superview];
            v39 = [v38 superview];
            v40 = [v39 superview];

            if (v40 == v34)
            {
              if (IMOSLoggingEnabled())
              {
                v41 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  LOWORD(location[0]) = 0;
                  _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "ChatNavigationController's view is in the view hirearchy, but chatNaviationController is not in the VC hirearchy! Unexpected state, attempting to fix", location, 2u);
                }
              }

              [v32 removeFromSuperview];
            }
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_7:
  v20 = [(CKMessagesController *)self chatController];

  if (!v20)
  {
    [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
  }

  v18 = [(CKMessagesController *)self chatNavigationController];
LABEL_10:

  return v18;
}

void __101__CKMessagesController_splitViewController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setComposeChatNavigationController:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__CKMessagesController_splitViewController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke_2;
  block[3] = &unk_1E72EC460;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v3);
}

void __101__CKMessagesController_splitViewController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endPinningInputViewsForReason:@"SplitViewFromCollapsedToExpandedTransition"];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = CKMessagesController;
  [(CKMessagesController *)&v8 willTransitionToTraitCollection:a3 withTransitionCoordinator:a4];
  v5 = +[CKUIBehavior sharedBehaviors];
  if (([v5 shouldSuppressRotationInNewCompose] & 1) == 0)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    if ([v6 usesUncollapsedSplitview])
    {
      v7 = [(CKMessagesController *)self isComposingMessage];

      if (!v7)
      {
        return;
      }

      v5 = +[CKAdaptivePresentationController sharedInstance];
      [v5 dismissViewControllerAnimated:0 completion:0];
    }

    else
    {
    }
  }
}

- (double)_splitViewController:(id)a3 constrainPrimaryColumnWidthForResizeWidth:(double)a4
{
  v5 = [(CKMessagesController *)self splitViewCoordinator];
  [v5 constrainedPrimaryColumnWidthForResizeWidth:a4];
  v7 = v6;

  return v7;
}

- (void)_splitViewController:(id)a3 willBeginResizingColumn:(int64_t)a4
{
  v6 = [(CKMessagesController *)self splitViewCoordinator];
  [v6 splitViewControllerWillBeginResizingColumn:a4];

  v7 = [(CKMessagesController *)self chatController];
  objc_opt_class();
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if (v6)
  {
    v8 = [(CKMessagesController *)self chatController];
    [v8 chatControllerWillBeginResizing];
  }
}

- (void)_splitViewController:(id)a3 didEndResizingColumn:(int64_t)a4
{
  v5 = [(CKMessagesController *)self splitViewCoordinator];
  [v5 splitViewControllerDidEndResizingColumn:a4];
}

- (void)splitViewController:(id)a3 willShowColumn:(int64_t)a4
{
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isModernSplitViewControllerEnabled];

  if (!a4 && v7)
  {
    [(CKMessagesController *)self setDisplayModeButtonVisibility:1];
  }

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    v8 = [(CKMessagesController *)self isCollapsed];
    if (!a4 && !v8)
    {
      CKSetInboxVisibility(1);

      [(CKMessagesController *)self dismissKeyboardIfVisible];
    }
  }
}

- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4
{
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isModernSplitViewControllerEnabled];

  if (!a4 && v7)
  {
    [(CKMessagesController *)self setDisplayModeButtonVisibility:2];
  }

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    v8 = [(CKMessagesController *)self isCollapsed];
    if (!a4 && !v8)
    {

      CKSetInboxVisibility(0);
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8.receiver = self;
  v8.super_class = CKMessagesController;
  [(CKMessagesController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (__CurrentTestName)
  {
    [v7 animateAlongsideTransition:&__block_literal_global_648_1 completion:&__block_literal_global_650_1];
  }

  if (!CKIsRunningInMacCatalyst())
  {
    [(CKMessagesController *)self updateColumnWidths];
  }
}

void __75__CKMessagesController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PPTDidTransitionToSize" object:0];
}

- (void)setChatController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  chatController = self->_chatController;
  if (chatController)
  {
    v7 = chatController == v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [(CKMessagesController *)self chatNavigationController];
    v9 = [v8 viewControllers];
    v10 = [v9 containsObject:self->_chatController];

    if (v10)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = self->_chatController;
          v16 = 138412290;
          v17 = v12;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKMessagesController: Old chatController (%@) is still in chatNavigationController.viewControllers", &v16, 0xCu);
        }
      }
    }
  }

  [(CKMessagesController *)self _checkChatControllerLeaksForExistingController:self->_chatController newController:v5];
  v13 = self->_chatController;
  self->_chatController = v5;
  v14 = v5;

  if (!self->_chatController)
  {
    [(CKMessagesController *)self setChatControllerUserInterfaceStyle:0];
  }

  v15 = +[CKLinkIntentsManager sharedManager];
  [v15 registerChatController:v14];
}

- (void)setComposeChatController:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      composeChatController = self->_composeChatController;
      v8 = 138412546;
      v9 = composeChatController;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "updating composeChatController from: %@ to: %@", &v8, 0x16u);
    }
  }

  v7 = self->_composeChatController;
  self->_composeChatController = v4;
}

- (void)setComposeChatNavigationController:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      composeChatNavigationController = self->_composeChatNavigationController;
      v8 = 138412546;
      v9 = composeChatNavigationController;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "updating composeChatNavigationController from: %@ to: %@", &v8, 0x16u);
    }
  }

  v7 = self->_composeChatNavigationController;
  self->_composeChatNavigationController = v4;
}

- (void)dismissChatControllerIfVisibleAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CKMessagesController *)self isComposingMessage])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__CKMessagesController_dismissChatControllerIfVisibleAnimated___block_invoke;
    v5[3] = &unk_1E72EBA18;
    v5[4] = self;
    [(CKMessagesController *)self dismissViewControllerAnimated:v3 completion:v5];
  }

  else
  {

    [(CKMessagesController *)self popToConversationListIfNecessaryAnimated:v3];
  }
}

- (void)popToConversationListIfNecessaryAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKMessagesController *)self conversationListNavigationController];
  v6 = [v5 visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [(CKMessagesController *)self conversationListNavigationController];
  v9 = [v8 visibleViewController];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || (v10)
  {
    [(CKMessagesController *)self updateInboxAndConversationList];
    v13 = [(CKMessagesController *)self conversationListNavigationController];
    v11 = [(CKMessagesController *)self conversationListController];
    v12 = [v13 popToViewController:v11 animated:v3];
  }
}

- (void)setCurrentConversation:(id)a3 keepAllCurrentlyLoadedMessages:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      currentConversation = self->_currentConversation;
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = currentConversation;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "setCurrentConversation: %@   old: %@", &v16, 0x16u);
    }
  }

  v10 = self->_currentConversation;
  if (v10 != v7)
  {
    if ([(CKConversation *)v10 hasLoadedFromSpotlight])
    {
      [(CKConversation *)self->_currentConversation reloadIfNeeded];
    }

    v11 = +[CKCurrentConversationsManager sharedInstance];
    [v11 removeConversation:self->_currentConversation];

    objc_storeStrong(&self->_currentConversation, a3);
    if (v7)
    {
      v12 = +[CKCurrentConversationsManager sharedInstance];
      [v12 addConversation:v7];
    }

    v13 = [(CKMessagesController *)self messagesControllerDelegate];
    [v13 messagesController:self didUpdateCurrentConversation:v7];
  }

  v14 = +[CKCurrentConversationsManager sharedInstance];
  [v14 loadHistoryForConversation:self->_currentConversation keepAllCurrentlyLoadedMessages:v4];

  [(CKConversation *)self->_currentConversation resortMessagesIfNecessary];
  [(CKMessagesController *)self _setIsShowingNoSelectionUI:v7 == 0];
  if (v7)
  {
    [(CKConversation *)v7 updateUserActivity];
  }

  else
  {
    v15 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    [v15 setUserActivityForChat:0 orHandles:0];
  }
}

- (void)escButtonPressed:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKMessagesController *)self chatController];
  v6 = [(CKMessagesController *)self conversationListController];
  [v6 dismissSearchIfNeeded];
  v7 = [v6 collectionView];
  v8 = [v7 indexPathsForSelectedItems];
  v9 = [v8 count];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (v9 < 2)
      {
        v11 = @"YES";
      }

      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "esc button pressed. will pass onto chat controller: %@", &v13, 0xCu);
    }
  }

  if (v9 >= 2)
  {
    v12 = v6;
  }

  else
  {
    v12 = v5;
  }

  [v12 escButtonPressed:v4];
}

- (void)keyCommandOpenConversationInNewWindow:(id)a3
{
  v4 = [(CKMessagesController *)self currentConversation];
  [(CKMessagesController *)self showConversationInNewWindow:v4];
}

- (void)_keyCommandChangeConversation:(BOOL)a3
{
  v3 = a3;
  if (![(CKMessagesController *)self isCollapsed])
  {
    v5 = [(CKMessagesController *)self conversationListController];
    [v5 selectNextSequentialConversation:v3];
  }
}

- (void)keyCommandSelectPinnedConversation:(id)a3
{
  v7 = a3;
  if (![(CKMessagesController *)self isCollapsed])
  {
    v4 = [v7 input];
    v5 = [v4 integerValue];

    v6 = [(CKMessagesController *)self conversationListController];
    [v6 selectPinnedConversationForItem:v5];
  }
}

- (void)keyCommandSelectFirstActiveConversation
{
  if (![(CKMessagesController *)self isCollapsed])
  {
    v3 = [(CKMessagesController *)self conversationListController];
    [v3 selectFirstActiveConversation];
  }
}

- (void)keyCommandDeleteConversation:(id)a3
{
  v3 = [(CKMessagesController *)self conversationListController];
  [v3 recoverableDeleteSelectedConversations];
}

- (void)keyCommandFind:(id)a3
{
  v3 = [(CKMessagesController *)self conversationListController];
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = [v3 isEditing];
    v4 = v8;
    if ((v5 & 1) == 0)
    {
      v6 = [v8 searchController];
      v7 = [v6 searchBar];
      [v7 becomeFirstResponder];

      v4 = v8;
    }
  }
}

- (void)keyCommandCompose:(id)a3
{
  v4 = a3;
  v5 = [(CKMessagesController *)self conversationListController];
  [v5 composeButtonClicked:v4];
}

- (void)showDebugMenu
{
  v2 = [(CKMessagesController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 showDebugMenu];
  }
}

- (void)_checkChatControllerLeaksForExistingController:(id)a3 newController:(id)a4
{
  v6 = a3;
  v7 = a4;
  location = 0;
  v8 = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([v8 isInternalInstall])
  {
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [v9 BOOLForKey:@"checkForChatControllerLeaks"];

    if (v10)
    {
      objc_storeWeak(&location, v6);
      if (v6)
      {
        if (v6 != v7)
        {
          v11 = dispatch_time(0, 3000000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __85__CKMessagesController__checkChatControllerLeaksForExistingController_newController___block_invoke;
          block[3] = &unk_1E72EBB98;
          objc_copyWeak(&v13, &location);
          block[4] = self;
          dispatch_after(v11, MEMORY[0x1E69E96A0], block);
          objc_destroyWeak(&v13);
        }
      }
    }
  }

  else
  {
  }

  objc_destroyWeak(&location);
}

void __85__CKMessagesController__checkChatControllerLeaksForExistingController_newController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __85__CKMessagesController__checkChatControllerLeaksForExistingController_newController___block_invoke_cold_1((a1 + 40), v3);
    }

    v4 = *(a1 + 32);
    v5 = objc_loadWeakRetained((a1 + 40));
    [v4 _showChatControllerLeakAlertUI:v5];
  }
}

- (void)_showChatControllerLeakAlertUI:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 conversation];
  v6 = [v5 hasDisplayName];

  v7 = [v4 conversation];
  v8 = v7;
  if (v6)
  {
    [v7 displayName];
  }

  else
  {
    [v7 name];
  }
  v9 = ;

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v4];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Chat controller %@ leaked in conversation %@. Please take a memory dump and file a radar!", v4, v9];
  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11];
  v25 = *MEMORY[0x1E69DB648];
  v13 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
  v26[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v15 = [v11 rangeOfString:v10];
  [v12 addAttributes:v14 range:{v15, v16}];
  v17 = [v11 rangeOfString:v9];
  [v12 addAttributes:v14 range:{v17, v18}];
  v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Chat Controller Leak Detected!" message:0 preferredStyle:1];
  [v19 _setAttributedMessage:v12];
  v20 = [CKAlertAction actionWithTitle:@"OK 😭" style:1 handler:&__block_literal_global_674];
  [v19 addAction:v20];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__CKMessagesController__showChatControllerLeakAlertUI___block_invoke_2;
  v23[3] = &unk_1E72EBFE8;
  v24 = v10;
  v21 = v10;
  v22 = [CKAlertAction actionWithTitle:@"File a Radar" style:0 handler:v23];
  [v19 addAction:v22];

  [(CKMessagesController *)self presentViewController:v19 animated:1 completion:0];
}

- (void)toggleSensitiveUI
{
  v3 = IMGetDomainBoolForKey();
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"End Messages?" message:@"Messages needs to be restarted for sensitiveUI changes to take effect." preferredStyle:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CKMessagesController_toggleSensitiveUI__block_invoke;
  v7[3] = &__block_descriptor_33_e23_v16__0__UIAlertAction_8l;
  v8 = v3;
  v5 = [CKAlertAction actionWithTitle:@"End Messages" style:2 handler:v7];
  [v4 addAction:v5];

  v6 = [CKAlertAction actionWithTitle:@"Cancel" style:1 handler:&__block_literal_global_698_0];
  [v4 addAction:v6];

  [(CKMessagesController *)self presentViewController:v4 animated:1 completion:&__block_literal_global_700_0];
}

void __41__CKMessagesController_toggleSensitiveUI__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  IMSetDomainBoolForKey();
  exit(0);
}

- (id)_recipientHandle
{
  v2 = [(CKMessagesController *)self chatController];
  v3 = [v2 conversation];

  if (v3 && ([v3 recipient], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 defaultIMHandle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)find:(id)a3
{
  v3 = [(CKMessagesController *)self conversationListController];
  if (v3)
  {
    v4 = v3;
    [v3 beginFindFromEditMenu];
    v3 = v4;
  }
}

- (BOOL)isSearchActiveAndDisplayingResultsForSearchText
{
  v2 = [(CKMessagesController *)self conversationListController];
  v3 = [v2 isSearchActiveAndDisplayingResultsForSearchText];

  return v3;
}

- (void)findNext:(id)a3
{
  if ([(CKMessagesController *)self isSearchActiveAndDisplayingResultsForSearchText])
  {
    v4 = [(CKMessagesController *)self conversationListController];
    if (v4)
    {
      v5 = v4;
      [v4 searchControllerFindNext];
      v4 = v5;
    }
  }
}

- (void)findPrevious:(id)a3
{
  if ([(CKMessagesController *)self isSearchActiveAndDisplayingResultsForSearchText])
  {
    v4 = [(CKMessagesController *)self conversationListController];
    if (v4)
    {
      v5 = v4;
      [v4 searchControllerFindPrevious];
      v4 = v5;
    }
  }
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CKMessagesController;
  [(CKMessagesController *)&v32 validateCommand:v4];
  v5 = [(CKMessagesController *)self chatController];
  [v5 validateCommand:v4];

  if ([v4 action] == sel_findNext_ || objc_msgSend(v4, "action") == sel_findPrevious_)
  {
    [(CKMessagesController *)self _configureCommand:v4 enabled:[(CKMessagesController *)self isSearchActiveAndDisplayingResultsForSearchText]];
    goto LABEL_29;
  }

  if ([v4 action] == sel_keyCommandCompose_)
  {
    v6 = [(CKMessagesController *)self presentedViewController];
    [(CKMessagesController *)self _configureCommand:v4 enabled:v6 == 0];
LABEL_28:

    goto LABEL_29;
  }

  if ([v4 action] == sel_keyCommandDeleteConversation_)
  {
    v6 = [(CKMessagesController *)self conversationListController];
    v10 = [v6 _numberOfSelectedConversations];
    [(CKMessagesController *)self _configureCommand:v4 enabled:v10 != 0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v10 <= 1)
    {
      v13 = @"DELETE_CONVERSATION_ELLIPSIS";
    }

    else
    {
      v13 = @"DELETE_CONVERSATIONS_ELLIPSIS";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKit"];
    [v4 setTitle:v14];

    goto LABEL_21;
  }

  if (CKIsRunningInMacCatalyst() && [v4 action] == sel_toggleSidebar_)
  {
    [(CKMessagesController *)self _configureCommand:v4 enabled:[(CKMessagesController *)self _shouldShowInboxView]];
    v15 = [(CKMessagesController *)self displayMode];
    v16 = CKFrameworkBundle();
    v6 = v16;
    if (v15 == 2)
    {
      v17 = @"Show Inbox List";
    }

    else
    {
      v17 = @"Hide Inbox List";
    }

    v12 = [v16 localizedStringForKey:v17 value:&stru_1F04268F8 table:@"ChatKit"];
    [v4 setTitle:v12];
LABEL_21:

    goto LABEL_28;
  }

  if ([v4 action] == sel_legacyDidSelectFilterFromViewMenu_)
  {
    v6 = [v4 propertyList];
    v7 = [v6 intValue];
    v8 = v7;
    [v4 setState:{-[CKMessagesController currentConversationListFilterMode](self, "currentConversationListFilterMode") == v7}];
    if (v7 == 7)
    {
      v9 = 7;
    }

    else
    {
      if (v7 != 9)
      {
LABEL_24:
        v21 = [(CKMessagesController *)self conversationList];
        v22 = [v21 unreadCountForFilterMode:v8];

        v23 = MEMORY[0x1E696AEC0];
        v24 = CKFrameworkBundle();
        v25 = [v24 localizedStringForKey:@"CATALYST_VIEW_MENU_FILTER_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
        v26 = [v4 title];
        v27 = [v23 localizedStringWithFormat:v25, v26, v22];

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

        v31 = [(__CFString *)v30 stringByAppendingString:v27];

        [v4 setTitle:v31];
        goto LABEL_28;
      }

      v9 = 9;
    }

    v18 = [(CKMessagesController *)self conversationList];
    v19 = [v18 conversationsForFilterMode:v9];
    v20 = [v19 count] != 0;

    [(CKMessagesController *)self _configureCommand:v4 enabled:v20];
    goto LABEL_24;
  }

LABEL_29:
}

- (void)_configureCommand:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [v5 setAttributes:{objc_msgSend(v5, "attributes") & 0xFFFFFFFFFFFFFFFELL | !v4}];
}

- (void)_configureCallOptionsForConversationMenu
{
  if (CKIsRunningInMacCatalyst() || _CKUIEnhancedMainMenuEnabled())
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__CKMessagesController__configureCallOptionsForConversationMenu__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __64__CKMessagesController__configureCallOptionsForConversationMenu__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (+[CKFaceTimeUtilities isTelephonyAvailable])
  {
    v2 = [*(a1 + 32) _recipientHandle];
    v3 = [MEMORY[0x1E69A7FD0] sharedInstance];
    v21 = v2;
    v4 = [v2 ID];
    v5 = [v3 fetchCNContactForHandleWithID:v4];

    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = v5;
    v8 = [MEMORY[0x1E69A7FD0] phoneNumbersForCNContact:v5];
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v10 = [v9 allObjects];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [*(a1 + 32) cnLabelForPhoneNumber:v15 contact:v7];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = &stru_1F04268F8;
          }

          v19 = v18;

          [v6 setObject:v19 forKeyedSubscript:v15];
        }

        v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__CKMessagesController__configureCallOptionsForConversationMenu__block_invoke_2;
    block[3] = &unk_1E72EBA18;
    v24 = v6;
    v20 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __64__CKMessagesController__configureCallOptionsForConversationMenu__block_invoke_2(uint64_t a1)
{
  v2 = +[CKMenuBarManager sharedInstance];
  [v2 setLabelByPhoneNumber:*(a1 + 32)];

  v3 = [MEMORY[0x1E69DCC88] mainSystem];
  [v3 setNeedsRebuild];
}

- (id)cnLabelForPhoneNumber:(id)a3 contact:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (MEMORY[0x193AF5D40](v5))
  {
    [v6 phoneNumbers];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v29 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v25 = v6;
      v9 = *v27;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [v11 label];

          if (v12)
          {
            v13 = [v11 value];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v15 = [v11 value];
            v16 = v15;
            if (isKindOfClass)
            {
              v17 = [v15 stringValue];
              v18 = [v5 isEqualToPhoneNumber:v17];

              if (v18)
              {
                goto LABEL_17;
              }
            }

            else
            {
              objc_opt_class();
              v19 = objc_opt_isKindOfClass();

              if (v19)
              {
                v20 = [v11 value];
                v21 = [v5 isEqualToPhoneNumber:v20];

                if (v21)
                {
LABEL_17:
                  v22 = MEMORY[0x1E695CEE0];
                  v23 = [v11 label];
                  v8 = [v22 localizedStringForLabel:v23];

                  goto LABEL_18;
                }
              }
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_18:
      v6 = v25;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isShowingFullscreenController
{
  v2 = [(CKMessagesController *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isShowingModalChatController
{
  v3 = [(CKMessagesController *)self presentedViewController];
  v4 = [(CKMessagesController *)self composeChatNavigationController];
  if (v3 == v4)
  {
    v6 = [(CKMessagesController *)self composeChatNavigationController];
    v7 = [v6 topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return [(CKMessagesController *)self _isShowingFullscreenController]& isKindOfClass;
}

- (NSSet)alertSuppressionContexts
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(CKMessagesController *)self _isShowingModalChatController];
  v5 = [(CKMessagesController *)self _isShowingFullscreenController];
  v6 = [(CKMessagesController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (!v4 && v5 && (isKindOfClass & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v25 = 138412546;
      v26 = @"YES";
      v27 = 2112;
      v28 = @"NO";
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Not adding suppression contexts: isShowingFullscreenController (%@), modalChatControllerIsVisible (%@)", &v25, 0x16u);
    }

LABEL_27:

    goto LABEL_29;
  }

  v9 = [(CKMessagesController *)self isShowingConversationListController];
  v10 = [(CKMessagesController *)self presentedViewController];

  v11 = [(CKMessagesController *)self isEditing];
  if (v9 && !v10 && (v11 & 1) == 0)
  {
    v12 = [(CKMessagesController *)self conversationListController];
    v13 = +[CKConversationList conversationListAlertSuppressionContextForFilterMode:](CKConversationList, "conversationListAlertSuppressionContextForFilterMode:", [v12 filterMode]);

    [(__CFString *)v3 addObject:v13];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = v3;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Adding alert suppression contexts for conversation list: %@", &v25, 0xCu);
      }
    }
  }

  v15 = [(CKMessagesController *)self isShowingChatController];
  if (((v15 | [(CKMessagesController *)self isComposingMessage]) & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Not adding alert suppression contexts for conversation: chat controller is not being shown for this scene", &v25, 2u);
    }

    goto LABEL_27;
  }

  v16 = [(CKMessagesController *)self currentConversation];
  v17 = v16 == 0;

  v18 = [(CKMessagesController *)self conversationList];
  v19 = [v18 pendingConversation];

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  if (v20)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Not adding alert suppression contexts for conversation: no conversation is currently presented for this scene", &v25, 2u);
    }

    goto LABEL_27;
  }

  v21 = [(CKMessagesController *)self currentConversation];
  v22 = [CKAlertSuppressionContextHelper alertSuppressionContextsForVisibleChatControllerWithConversation:v21];

  [(__CFString *)v3 addObjectsFromArray:v22];
LABEL_29:
  v23 = [(__CFString *)v3 copy];

  return v23;
}

- (void)__updateAlertSuppressionContext
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CKMessagesController___updateAlertSuppressionContext__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__CKMessagesController___updateAlertSuppressionContext__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) alertSuppressionContexts];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Updating alert suppression contexts with SpringBoard: %@", &v3, 0xCu);
    }
  }

  SBSSetAlertSuppressionContexts();
}

- (void)_setIsShowingNoSelectionUI:(BOOL)a3
{
  v3 = a3;
  v38 = *MEMORY[0x1E69E9840];
  v32 = +[CKUIBehavior sharedBehaviors];
  if (![v32 usesUncollapsedSplitview])
  {
    v6 = v32;
LABEL_5:

    return;
  }

  v5 = [(CKMessagesController *)self isCollapsed];

  if (v5)
  {
    return;
  }

  if (v3)
  {
    v7 = [(CKMessagesController *)self selectionViewController];
    if (v7)
    {
      v8 = [(CKMessagesController *)self chatNavigationController];
      v9 = [v8 topViewController];
      selectionViewController = self->_selectionViewController;

      if (v9 != selectionViewController)
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = self->_selectionViewController;
            v13 = [(CKMessagesController *)self chatNavigationController];
            v14 = [v13 viewControllers];
            *buf = 138412546;
            v35 = v12;
            v36 = 2112;
            v37 = v14;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "No selection, setting chat navigation controller view controllers to selectVC: %@, VCs before: %@", buf, 0x16u);
          }
        }

        [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(CKMessagesController *)self chatNavigationController];
            v17 = [v16 viewControllers];
            *buf = 138412290;
            v35 = v17;
            _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "chatNavigationController (_setIsShowingNoSelectionUI) children:%@", buf, 0xCu);
          }
        }

        v18 = [MEMORY[0x1E69DD2E8] keyWindow];
        v19 = [v18 firstResponder];
        [v19 resignFirstResponder];

        v20 = [(CKMessagesController *)self chatController];
        [v20 reloadInputViews];
      }
    }

    return;
  }

  v21 = self->_selectionViewController;
  if (v21)
  {
    self->_selectionViewController = 0;
  }

  v22 = [(CKMessagesController *)self chatController];
  if (v22)
  {
    v23 = [(CKMessagesController *)self chatNavigationController];
    v24 = [v23 viewControllers];
    v25 = [(CKMessagesController *)self chatController];
    v26 = [v24 containsObject:v25];

    if ((v26 & 1) == 0)
    {
      v27 = [(CKMessagesController *)self chatNavigationController];
      v28 = MEMORY[0x1E695DEC8];
      v29 = [(CKMessagesController *)self chatController];
      v30 = [v28 arrayWithObjects:{v29, 0}];
      [v27 setViewControllers:v30];

      v31 = [(CKMessagesController *)self chatController];
      [v31 becomeFirstResponder];

      v33 = [(CKMessagesController *)self chatController];
      [v33 reloadInputViews];
      v6 = v33;
      goto LABEL_5;
    }
  }
}

- (void)setupBizNavBarForConversation:(id)a3
{
  v4 = a3;
  if ([(CKMessagesController *)self isCollapsed])
  {
    [v4 isBusinessConversation];
  }
}

- (void)_conversationLeft:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(43);
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "++++ ChatKit Internal Consistency Error ++++", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(43);
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_opt_class();
        v10 = [v4 object];
        v11 = objc_opt_class();
        *buf = 136315650;
        v36 = "[CKMessagesController _conversationLeft:]";
        v37 = 2112;
        v38 = v9;
        v39 = 2112;
        v40 = v11;
        v12 = v11;
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v13 = objc_opt_class();
      v14 = [v4 object];
      v33 = v13;
      v34 = objc_opt_class();
      v31 = "[CKMessagesController _conversationLeft:]";
      _CKLog();
    }

    if (_CKShouldLog())
    {
      _CKLogBacktrace();
    }
  }

  v15 = [v4 object];
  v16 = [v4 userInfo];
  v17 = [v16 objectForKey:@"CKConversationListWasPendingKey"];
  v18 = [v17 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = v15;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_DEBUG, "Conversation left: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v32 = v15;
    _CKLog();
  }

  v20 = [(CKMessagesController *)self conversationList];
  v21 = [v20 remergingConversations];

  if (v21)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Not acting on conversationLeft:, remerge in process", buf, 2u);
      }
    }
  }

  else if (v18)
  {
    v23 = [(CKMessagesController *)self composeChatController];

    if (v23)
    {
      v24 = [(CKMessagesController *)self composeChatController];
      [v24 conversationLeft];
    }
  }

  else
  {
    v25 = [(CKMessagesController *)self chatController];
    v26 = [v25 conversation];
    v27 = [v26 isEqual:v15];

    if (v27)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v36 = "[CKMessagesController _conversationLeft:]";
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "%s popping to conversation list", buf, 0xCu);
        }
      }

      [(CKMessagesController *)self showConversationListWithAnimation:1];
      v29 = [(CKMessagesController *)self chatController];
      [v29 setDelegate:0];

      [(CKMessagesController *)self setChatController:0];
      [(CKMessagesController *)self setCurrentConversation:0];
      v30 = objc_alloc_init(MEMORY[0x1E69D41A0]);
      [v30 deleteSnapshotsForApplicationIdentifier:@"com.apple.MobileSMS"];
      [v30 invalidate];
    }
  }
}

- (void)_conversationListFinishedMerging:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKMessagesController *)self currentConversation];
  v6 = [(CKMessagesController *)self conversationList];
  v7 = [v5 chat];
  v8 = [v7 guid];
  v9 = [v6 conversationForExistingChatWithGUID:v8];

  if (v9)
  {
    if (v5 != v9)
    {
      [(CKMessagesController *)self setCurrentConversation:v9];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = 138412546;
          v12 = v9;
          v13 = 2112;
          v14 = v5;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Conversation list performed re-merge, updating current conversation to %@ from %@", &v11, 0x16u);
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
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CKMessagesController attempted to replace conversation after re-merge, but couldn't find a new conversation to replace %@", &v11, 0xCu);
    }

    goto LABEL_11;
  }
}

- (void)_chatRegistryDidLoad:(id)a3
{
  v4 = +[CKCurrentConversationsManager sharedInstance];
  [v4 pruneCache];

  v5 = [(CKMessagesController *)self _hasCurrentConversations]^ 1;

  [(CKMessagesController *)self _setIsShowingNoSelectionUI:v5];
}

- (void)_appStateChange:(id)a3
{
  v6 = [a3 name];
  if ([v6 isEqualToString:*MEMORY[0x1E69DDAD0]] || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69DDBC0]))
  {
    self->_attachmentPreviewQosClass = 25;
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E69DDAC8]])
  {
    self->_attachmentPreviewQosClass = 9;
    [(CKMessagesController *)self cleanUpInteractionViews];
    v4 = [(CKMessagesController *)self chatController];
    v5 = [v4 chat];
    [v5 endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57D8]];

    [(CKMessagesController *)self handleAnalyticsOnBackground];
  }
}

- (void)applicationWillResume:(id)a3
{
  if (CKIsRunningInMacCatalyst())
  {
    v4 = [(CKMessagesController *)self chatController];
    [v4 _markAsReadIfNecessary];
  }
}

- (void)_appStateDidResumeFromInactive:(id)a3
{
  [(CKMessagesController *)self presentFocusStatusAuthorizationAlertIfNecessary];
  v3 = [MEMORY[0x1E69A8088] sharedManager];
  [v3 updateFocusStateForCurrentFocusFilterActionAsync];
}

- (void)handleAnalyticsOnBackground
{
  v2 = +[_TtC7ChatKit37CKBackgroundSettingsPeriodicAnalytics shared];
  [v2 checkAndSendPeriodicReportIfNeeded];
}

- (id)nonConversationListControllersInNavigationStack
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(CKMessagesController *)self conversationListNavigationController];
  v5 = [v4 viewControllers];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(CKMessagesController *)self inboxViewController];
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          v13 = [(CKMessagesController *)self conversationListControllerIfInitialized];

          if (v10 != v13)
          {
            [v3 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)showInboxViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CKMessagesController *)self _shouldShowInboxView])
  {
    [(CKMessagesController *)self updateInboxAndConversationList];
    if ([(CKMessagesController *)self _wantsThreeColumnLayout])
    {
      v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v6 = [v5 isModernSplitViewControllerEnabled];

      if ((v6 & 1) == 0)
      {
        [(CKMessagesController *)self showColumn:0];
      }

      goto LABEL_11;
    }

    v8 = [(CKMessagesController *)self inboxViewController];

    if (v8)
    {
      v9 = [(CKMessagesController *)self conversationListNavigationController];
      v10 = [(CKMessagesController *)self inboxViewController];
      v11 = [v9 popToViewController:v10 animated:v3];

LABEL_11:

      [(CKMessagesController *)self dismissKeyboardIfVisible];
      return;
    }

    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKMessagesController showInboxViewControllerAnimated:?];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Attempted to pop the inbox view when the inbox view should not be available. No change to conversationListNavigationController", v13, 2u);
    }
  }
}

- (void)changeFilterMode:(unint64_t)a3
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CKMessagesController changeFilterMode:];
  }

  v6 = [(CKMessagesController *)self conversationList];
  [v6 releaseWasKnownSenderHold];

  v7 = [(CKMessagesController *)self conversationList];
  [v7 updateConversationsWasKnownSender];

  v8 = [(CKMessagesController *)self conversationList];
  [v8 clearHoldInUnreadFilter];

  v9 = [(CKMessagesController *)self conversationListController];
  v10 = [v9 filterMode];

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CKMessagesController *)v10 changeFilterMode:a3];
  }

  v12 = [(CKMessagesController *)self conversationListController];
  [v12 setFilterMode:a3];

  v13 = [(CKMessagesController *)self conversationListController];
  v14 = [v13 contentScrollView];
  [v14 __ck_scrollToTop:0];

  v15 = [(CKMessagesController *)self conversationListController];
  [v15 updateConversationList];

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    if (!CKIsRunningInMacCatalyst())
    {
      v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v17 = [v16 isModernSplitViewControllerEnabled];

      if ((v17 & 1) == 0)
      {
        [(CKMessagesController *)self hideColumn:0];
      }
    }

    v18 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v19 = [v18 isModernSplitViewControllerEnabled];

    if ((v19 & 1) == 0)
    {
      [(CKMessagesController *)self showColumn:1];
    }
  }

  else
  {
    v20 = [(CKMessagesController *)self inboxViewController];
    v21 = [v20 navigationController];
    v22 = [(CKMessagesController *)self conversationListController];
    [v21 pushViewController:v22 animated:1];
  }

  v23 = [MEMORY[0x1E69A8210] conversationFilterModeForMessageFilter:a3];
  v24 = [MEMORY[0x1E69A8168] sharedInstance];
  v25 = *MEMORY[0x1E69A73E8];
  v29[0] = @"ChoseFilter";
  v28[0] = @"actionType";
  v28[1] = @"filterType";
  v26 = IMConversationListFilterModeStringValue(v23);
  v28[2] = @"fromView";
  v29[1] = v26;
  v29[2] = @"InboxView";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
  [v24 trackEvent:v25 withDictionary:v27];
}

- (id)inboxItemForFilterMode:(unint64_t)a3 title:(id)a4 andSystemImage:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:v9 value:&stru_1F04268F8 table:@"ChatKit"];

  v12 = [(CKMessagesController *)self inboxItemForFilterMode:a3 localizedTitle:v11 andSystemImage:v8];

  return v12;
}

- (id)inboxItemForFilterMode:(unint64_t)a3 localizedTitle:(id)a4 andSystemImage:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(CKMessagesController *)self _unreadCountStringForFilterMode:a3];
  v11 = objc_alloc(MEMORY[0x1E69B1808]);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__CKMessagesController_inboxItemForFilterMode_localizedTitle_andSystemImage___block_invoke;
  v15[3] = &unk_1E72ED810;
  v15[4] = self;
  v15[5] = a3;
  v13 = [v11 initWithTitle:v9 subtitle:0 systemImage:v8 accessoryText:v10 filterMode:v12 action:v15];

  return v13;
}

- (id)newInboxModel
{
  v57[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(CKMessagesController *)self inboxItemForFilterMode:1 title:@"ALL_MESSAGES" andSystemImage:@"message.and.message"];
  [v3 addObject:v4];
  v51 = self;
  if ([(CKMessagesController *)self _isMessageFilteringEnabled])
  {
    v5 = [(CKMessagesController *)self inboxItemForFilterMode:2 title:@"KNOWN_SENDERS" andSystemImage:@"person.crop.circle"];
    v57[0] = v5;
    v6 = [(CKMessagesController *)v51 inboxItemForFilterMode:3 title:@"UNKNOWN_SENDERS" andSystemImage:@"person.crop.circle.badge.questionmark"];
    v57[1] = v6;
    v7 = [(CKMessagesController *)v51 inboxItemForFilterMode:8 title:@"UNREAD_MESSAGES" andSystemImage:@"message.badge"];
    v57[2] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
    [v3 addObjectsFromArray:v8];
  }

  v9 = [MEMORY[0x1E695DF70] array];
  v10 = objc_alloc(MEMORY[0x1E69B1818]);
  v11 = [v3 copy];
  v12 = [v10 initWithHeader:0 footer:0 items:v11];

  [v9 addObject:v12];
  v13 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"spamFiltrationExtensionName");
  if ([v13 length])
  {
    v46 = v12;
    v47 = v9;
    v48 = v4;
    v49 = v3;
    v14 = MEMORY[0x1E696AEC0];
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"FILTERED_BY_APP_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
    v45 = v13;
    v17 = [v14 stringWithFormat:v16, v13];

    v18 = [MEMORY[0x1E69DC668] sharedApplication];
    v19 = [v18 userInterfaceLayoutDirection];

    if (v19 == 1)
    {
      v20 = @"\u200F";
    }

    else
    {
      v20 = @"\u200E";
    }

    v44 = [(__CFString *)v20 stringByAppendingString:v17];

    if (CKIsBlackholeEnabled())
    {
      v21 = @"JUNK_BLACKHOLE_SENDER_TITLE";
    }

    else
    {
      v21 = @"JUNK_SENDER_TITLE";
    }

    v22 = CKFrameworkBundle();
    v43 = [v22 localizedStringForKey:v21 value:&stru_1F04268F8 table:@"ChatKit"];

    v23 = [MEMORY[0x1E695DF70] init];
    v24 = [v23 alloc];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
    v25 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v53;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v52 + 1) + 8 * i);
          v30 = [v29 filterMode];
          v31 = IMSharedUtilitiesFrameworkBundle();
          v32 = [v29 folderName];
          v33 = [v31 localizedStringForKey:v32 value:&stru_1F04268F8 table:@"IMSharedUtilities"];
          v34 = [v29 iconName];
          v35 = [(CKMessagesController *)v51 inboxItemForFilterMode:v30 title:v33 andSystemImage:v34];
          [v24 addObject:v35];
        }

        v26 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v26);
    }

    v36 = [(CKMessagesController *)v51 inboxItemForFilterMode:6 title:v43 andSystemImage:@"xmark.bin"];
    [v24 addObject:v36];

    v37 = objc_alloc(MEMORY[0x1E69B1818]);
    v38 = [v24 copy];
    v39 = [v37 initWithHeader:v44 footer:0 items:v38];

    v9 = v47;
    [v47 addObject:v39];

    v4 = v48;
    v3 = v49;
    v13 = v45;
    v12 = v46;
  }

  if (CKIsBlackholeEnabled())
  {
    v40 = &__block_literal_global_823;
  }

  else
  {
    v40 = 0;
  }

  v41 = [objc_alloc(MEMORY[0x1E69B1810]) initWithSections:v9 footerAction:v40];
  [v41 setIsCollapsed:{-[CKMessagesController isCollapsed](v51, "isCollapsed")}];
  [v41 setLogInboxViewedMetric:&__block_literal_global_835];

  return v41;
}

void __37__CKMessagesController_newInboxModel__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"prefs:root=MESSAGES&path=JUNK_CONVERSATIONS_BUTTON"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v2 withOptions:0];

  v1 = [MEMORY[0x1E69A8168] sharedInstance];
  [v1 trackEvent:*MEMORY[0x1E69A73E8] withDictionary:&unk_1F04E9348];
}

void __37__CKMessagesController_newInboxModel__block_invoke_2()
{
  v0 = [MEMORY[0x1E69A8168] sharedInstance];
  [v0 trackEvent:*MEMORY[0x1E69A73E8] withDictionary:&unk_1F04E9370];
}

- (id)_unreadCountStringForFilterMode:(unint64_t)a3
{
  v4 = [(CKMessagesController *)self conversationList];
  v5 = [v4 unreadCountForFilterMode:a3];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 __ck_localizedString];
  }

  else
  {
    v8 = &stru_1F04268F8;
  }

  return v8;
}

- (void)persistColumnWidths:(id)a3
{
  v3 = [(CKMessagesController *)self splitViewCoordinator];
  [v3 persistColumnWidths];
}

- (void)conversationListControllerWillPresentSearchResultsController
{
  if (CKIsRunningInMacCatalyst())
  {
    [(CKMessagesController *)self persistColumnWidths:self];
    v3 = [(CKMessagesController *)self splitViewCoordinator];
    [v3 setSearchPresented:1];
  }
}

- (void)conversationListControllerWillDismissSearchResultsController
{
  v3 = [(CKMessagesController *)self conversationListController];
  v4 = [v3 isSearchActive];

  if (v4)
  {
    v5 = [(CKMessagesController *)self chatController];

    if (v5)
    {
      v6 = [(CKMessagesController *)self chatController];
    }

    else
    {
      v7 = [(CKMessagesController *)self composeChatController];

      if (!v7)
      {
LABEL_7:
        [v7 restoreInputAfterSearchPresentation];

        goto LABEL_8;
      }

      v6 = [(CKMessagesController *)self composeChatController];
    }

    v7 = v6;
    goto LABEL_7;
  }

LABEL_8:
  if (CKIsRunningInMacCatalyst())
  {
    v8 = [(CKMessagesController *)self splitViewCoordinator];
    [v8 setSearchPresented:0];
  }
}

- (void)conversationListUpdatedSelectedIndexPathCount:(int64_t)a3
{
  v5 = [(CKMessagesController *)self conversationListController];
  if (a3 == 1 && ![(CKMessagesController *)self hasRecentlyDeletedFilterSelected]&& CKIsRunningInMacCatalyst())
  {
    [v5 _performMultiSelectCleanUp];
  }

  else
  {
    [(CKMessagesController *)self _updateSelectionViewWithCount:a3];
  }
}

- (void)updatedFilterMode
{
  v3 = [(CKMessagesController *)self selectionViewController];
  [v3 _setNeedsUpdateContentUnavailableConfiguration];

  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isModernFilteringEnabled];

  if (v5)
  {

    [(CKMessagesController *)self dismissDetailsNavigationController];
  }
}

- (void)_updateSelectionViewWithCount:(int64_t)a3
{
  if (a3 != 1)
  {
    [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
    v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v5 = [v4 isModernFilteringEnabled];

    if (v5)
    {
      [(CKMessagesController *)self dismissDetailsNavigationController];
    }
  }

  v6 = [(CKMessagesController *)self selectionViewController];
  [v6 _setNeedsUpdateContentUnavailableConfiguration];
}

- (id)_recentlyDeletedDisclosureText
{
  v2 = [(CKMessagesController *)self conversationListController];
  v3 = [v2 _recentlyDeletedDisclosureLabelText];

  return v3;
}

- (id)currentlyShownConversation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(CKMessagesController *)self junkModalMessagesController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currentlyShownConversation];
    goto LABEL_21;
  }

  v6 = [(CKMessagesController *)self isCollapsed];
  if (!v6)
  {
    if ([(CKMessagesController *)self isShowingSelectionView])
    {
      v8 = 0;
LABEL_19:
      v5 = 0;
      goto LABEL_20;
    }

    v8 = [(CKMessagesController *)self chatNavigationController];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__77;
    *&v20 = __Block_byref_object_dispose__77;
    *(&v20 + 1) = 0;
    v5 = [v8 viewControllers];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__CKMessagesController_currentlyShownConversation__block_invoke;
    v17[3] = &unk_1E72F8010;
    v17[4] = buf;
    [v5 enumerateObjectsUsingBlock:v17];

    v9 = *(*&buf[8] + 40);
    if (v9)
    {
      v5 = [*(*&buf[8] + 40) conversation];
    }

    _Block_object_dispose(buf, 8);

    if (v9)
    {
      goto LABEL_20;
    }

LABEL_12:
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(CKMessagesController *)self viewControllers];
        if (v6)
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        v13 = [v8 viewControllers];
        v14 = [(CKMessagesController *)self conversationListNavigationController];
        v15 = [v14 viewControllers];
        *buf = 138413058;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        v19 = v13;
        LOWORD(v20) = 2112;
        *(&v20 + 2) = v15;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CKMessagesController warning: Was not able to determine the currently shown conversation in the current viewControllers configuration: %@, isCollapsed: %@, chatNavigation.viewControllers: %@, conversationNavigation.viewControllers: %@", buf, 0x2Au);
      }
    }

    goto LABEL_19;
  }

  if (![(CKMessagesController *)self isTopVCChatNavigationController])
  {
    v8 = 0;
    goto LABEL_12;
  }

  v7 = [(CKMessagesController *)self chatController];
  v5 = [v7 conversation];

  v8 = 0;
LABEL_20:

LABEL_21:

  return v5;
}

void __50__CKMessagesController_currentlyShownConversation__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)catalystFiltersNavigationBackButtonTapped:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Filter Mode] Catalyst back button tapped. Transitioning to No Junk", v6, 2u);
    }
  }

  [(CKMessagesController *)self catalystFilterModeSelected:1];
}

- (void)_conversationFilteringStateChangedNotification:(id)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [(CKMessagesController *)self conversationListNavigationController];
  [v4 setupNavBarAppearanceWithNavigationController:v5];

  [(CKMessagesController *)self updateInboxAndConversationList];
}

- (void)_setFilterUnknownSenders:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isIntroductionsEnabled];

  if (v5)
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"filterUnknownSenders"];
    v8 = [v7 BOOLValue];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (v8)
        {
          v10 = @"YES";
        }

        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Filter Unknown Senders set to: %@", &v11, 0xCu);
      }
    }

    CKSetMessageFilteringEnabled(v8);
  }
}

- (void)screenTimeOKPressedForChatController:(id)a3
{
  [(CKMessagesController *)self setCurrentConversation:0];
  v4 = [(CKMessagesController *)self conversationListController];
  [v4 updateConversationSelection];

  [(CKMessagesController *)self showConversationListWithAnimation:1];
}

- (void)conversationListFailedToSelectShownConversation
{
  if ([(CKMessagesController *)self _isCollapsed])
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v11 = 0;
    v4 = "Failed to select shown conversation called but shouldn't be showing conversaiton list + chat controller at the same time.";
    v5 = &v11;
LABEL_9:
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
LABEL_10:

    return;
  }

  v6 = [(CKMessagesController *)self _isSendingNewComposeMessage];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (!v7)
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v4 = "Maintaining current conversation selection during New Compose transition.";
    v5 = buf;
    goto LABEL_9;
  }

  if (v7)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Failed to select currently shown conversation.", v9, 2u);
    }
  }

  [(CKMessagesController *)self updateForNoConversationSelected];
}

- (BOOL)_isSendingNewComposeMessage
{
  v2 = [(CKMessagesController *)self composeChatController];
  v3 = [v2 isSendingMessage];

  return v3;
}

- (id)backNavigationItemForChatController:(id)a3
{
  v3 = [(CKMessagesController *)self conversationListNavigationController];
  v4 = [v3 viewControllers];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  if ([v7 count] < 2)
  {
    v9 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 2}];
    v9 = [v8 navigationItem];
  }

  return v9;
}

- (void)chatController:(id)a3 didStartTextSelectionInView:(id)a4
{
  v8 = a4;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isTextSelectionEnabled];

  if (v6)
  {
    [(CKMessagesController *)self setupCKDismissOnInteractionView];
    v7 = [(CKMessagesController *)self dismissOnInteractionView];
    [v7 isolatePassthroughView:v8];
  }
}

- (void)chatController:(id)a3 balloonViewWillDismissEditMenu:(id)a4
{
  v8 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isTextSelectionEnabled];

  if (v6)
  {
    [(CKMessagesController *)self cleanUpInteractionViews];
    v7 = [v8 chat];
    [v7 endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57D8]];
  }
}

- (void)chatController:(id)a3 didDetachDetailsNavigationController:(id)a4
{
  [(CKMessagesController *)self setDetailsNavigationController:a4];
  v5 = [(CKMessagesController *)self detailsNavigationController];
  [v5 setIsDetached:1];
}

- (BOOL)shouldUseMinimumSafeAreas
{
  v2 = [(CKMessagesController *)self view];
  v3 = [v2 _usesMinimumSafeAreas];

  return v3;
}

- (BOOL)isDetailsNavigationControllerDetached
{
  v2 = [(CKMessagesController *)self detailsNavigationController];
  v3 = [v2 isDetached];

  return v3;
}

- (void)presentDetailsNavigationController:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isRedesignedDetailsViewEnabled];

  if (v5)
  {
    v6 = [(CKMessagesController *)self redesignedDetailsNavigationController];

    v7 = v9;
    if (v6 == v9)
    {
      goto LABEL_7;
    }

    [(CKMessagesController *)self setRedesignedDetailsNavigationController:v9];
  }

  else
  {
    v8 = [(CKMessagesController *)self detailsNavigationController];

    v7 = v9;
    if (v8 == v9)
    {
      goto LABEL_7;
    }

    [(CKMessagesController *)self setDetailsNavigationController:v9];
  }

  v7 = v9;
LABEL_7:
}

- (BOOL)hasPresentedInspectorForChatController:(id)a3
{
  v3 = [(CKMessagesController *)self splitViewCoordinator];
  v4 = [v3 isInspectorVisible];

  return v4;
}

- (void)presentDetailsViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKMessagesController *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(CKMessagesController *)self chatController];
    [v7 presentDetailsViewControllerAnimated:v3];
  }
}

- (void)dismissDetailsControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKMessagesController *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(CKMessagesController *)self chatController];
    [v7 dismissDetailsControllerAnimated:v3];
  }
}

- (void)dismissDetailsNavigationControllerWithCompletion:(id)a3
{
  v10 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isModernSplitViewControllerEnabled];

  if (v5)
  {
    v6 = [(CKMessagesController *)self splitViewCoordinator];
    v7 = [v6 isInspectorVisible];

    if (v7)
    {
      v8 = [(CKMessagesController *)self splitViewCoordinator];
      [v8 presentViewControllerInInspector:0];
    }

    else
    {
      [(CKMessagesController *)self _performNonInspectorDetailsViewDismissalWithCompletion:v10];
    }

    v9 = [(CKMessagesController *)self macToolbarController];
    [v9 setIsShowingInspector:0];
  }

  else
  {
    [(CKMessagesController *)self _performNonInspectorDetailsViewDismissalWithCompletion:v10];
  }
}

- (void)_performNonInspectorDetailsViewDismissalWithCompletion:(id)a3
{
  v4 = MEMORY[0x1E69A8070];
  v5 = a3;
  v6 = [v4 sharedFeatureFlags];
  v7 = [v6 isRedesignedDetailsViewEnabled];

  if (v7)
  {
    v8 = [(CKMessagesController *)self redesignedDetailsNavigationController];
    [v8 dismissViewControllerAnimated:1 completion:v5];

    [(CKMessagesController *)self setRedesignedDetailsNavigationController:0];
    v10 = [(CKMessagesController *)self macToolbarController];
    [v10 setIsShowingInspector:0];
  }

  else
  {
    v9 = [(CKMessagesController *)self detailsNavigationController];
    [v9 dismissViewControllerAnimated:1 completion:v5];

    [(CKMessagesController *)self setDetailsNavigationController:0];
  }
}

- (void)dismissDetailsViewAndShowConversationListWithCompletion:(id)a3
{
  v4 = a3;
  [(CKMessagesController *)self dismissDetailsNavigationController];
  v5 = dispatch_time(0, 250000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__CKMessagesController_dismissDetailsViewAndShowConversationListWithCompletion___block_invoke;
  v7[3] = &unk_1E72ED1C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x1E69E96A0], v7);
}

uint64_t __80__CKMessagesController_dismissDetailsViewAndShowConversationListWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) showConversationListWithAnimation:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)dismissAndReopenDetailsNavigationController
{
  v3 = [(CKMessagesController *)self detailsNavigationController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__CKMessagesController_dismissAndReopenDetailsNavigationController__block_invoke;
  v4[3] = &unk_1E72EBA18;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __67__CKMessagesController_dismissAndReopenDetailsNavigationController__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDetailsNavigationController:0];
  v2 = [*(a1 + 32) chatController];
  [v2 presentDetailsViewController];
}

- (void)setupCKDismissOnInteractionView
{
  v3 = [(CKMessagesController *)self dismissOnInteractionView];

  if (!v3)
  {
    v4 = [_TtC7ChatKit29CKInteractionNotificationView alloc];
    v5 = [(CKMessagesController *)self view];
    [v5 bounds];
    v6 = [(CKInteractionNotificationView *)v4 initWithFrame:?];
    [(CKMessagesController *)self setDismissOnInteractionView:v6];

    v7 = [(CKMessagesController *)self dismissOnInteractionView];
    [v7 setDelegate:self];

    v8 = [(CKMessagesController *)self dismissOnInteractionView];
    [v8 setAutoresizingMask:18];
  }

  v10 = [(CKMessagesController *)self view];
  v9 = [(CKMessagesController *)self dismissOnInteractionView];
  [v10 addSubview:v9];
}

- (void)showNewMessageCompositionPanelWithRecipients:(id)a3 chatID:(id)a4 composition:(id)a5 appendToExistingDraft:(BOOL)a6 suggestedReplies:(id)a7 animated:(BOOL)a8 bizIntent:(id)a9 launchPluginWithBundleID:(id)a10 pluginLaunchPayload:(id)a11 startAudioRecording:(BOOL)a12 simID:(id)a13 sendMessageHandler:(id)a14
{
  v34 = a6;
  v44 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v37 = a4;
  v19 = a5;
  v36 = a7;
  v38 = a9;
  v39 = a10;
  v20 = a11;
  v21 = a13;
  v22 = a14;
  kdebug_trace();
  if ([(CKMessagesController *)self shouldShowMakoIMessageAlert])
  {
    [(CKMessagesController *)self showMakoIMessageAlert];
  }

  else if (([MEMORY[0x1E69A5CA0] smsEnabled] & 1) != 0 || CKiMessageSupported())
  {
    v23 = v18;
    if (v18 && v19)
    {
      v24 = v37;
      v25 = v19;
    }

    else
    {
      v26 = +[CKDraftManager sharedInstance];
      v27 = v26;
      if (v23)
      {
        v28 = 0;
      }

      else
      {
        v28 = &v41;
      }

      if (!v23)
      {
        v41 = 0;
      }

      v40 = 0;
      v29 = [v26 draftForPendingConversationWithRecipients:v28 chatIdentifier:&v40];
      if (!v23)
      {
        v23 = v41;
      }

      v24 = v40;

      if (v34 && v29)
      {
        v30 = [v29 compositionByAppendingComposition:v19];
      }

      else
      {
        if (v19)
        {
          v31 = v19;
        }

        else
        {
          v31 = v29;
        }

        v30 = v31;
      }

      v25 = v30;
    }

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v18;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Showing new compose with recipients %@", buf, 0xCu);
      }
    }

    BYTE1(v33) = a8;
    LOBYTE(v33) = a12;
    [(CKMessagesController *)self _showNewComposeWithRecipients:v23 composition:v25 chatIdentifier:v24 bizIntent:v38 launchPluginWithBundleID:v39 pluginLaunchPayload:v20 startAudioRecording:v33 animated:v21 simID:v22 sendMessageHandler:?];
  }
}

- (void)_showNewComposeWithRecipients:(id)a3 composition:(id)a4 chatIdentifier:(id)a5 bizIntent:(id)a6 launchPluginWithBundleID:(id)a7 pluginLaunchPayload:(id)a8 startAudioRecording:(BOOL)a9 animated:(BOOL)a10 simID:(id)a11 sendMessageHandler:(id)a12
{
  v72[1] = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v70 = a8;
  v23 = a11;
  v24 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v25 = [v24 isModernSplitViewControllerEnabled];

  if (v25)
  {
    [(CKMessagesController *)self dismissDetailsNavigationController];
  }

  v26 = +[CKUIBehavior sharedBehaviors];
  v27 = [v26 composeChatControllerClass];

  v28 = [v27 alloc];
  v29 = v28;
  v69 = v18;
  if (v21)
  {
    v30 = [v28 initWithRecipientAddresses:v18 composition:v19 chatIdentifier:v20 bizIntent:v21 simID:{v23, v23, v20}];
  }

  else
  {
    v31 = [v19 bizIntent];
    v30 = [v29 initWithRecipientAddresses:v18 composition:v19 chatIdentifier:v20 bizIntent:v31 simID:v23];
  }

  [v30 setSendMenuDelegate:self];
  v32 = [(CKMessagesController *)self isComposingMessage];
  if (v32)
  {
    v33 = [(CKMessagesController *)self composeChatController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v35 = [(CKMessagesController *)self composeChatController];
      v36 = [v35 proposedRecipients];
      v37 = [v36 composeRecipientHandles];

      v38 = [v30 proposedRecipients];
      v39 = [v38 composeRecipientHandles];

      if (([v37 equivalentToRecipients:v39] & 1) == 0)
      {
        [(CKMessagesController *)self cancelAndDestroyComposition];
      }
    }
  }

  v40 = [v30 conversation];
  [(CKMessagesController *)self setCurrentConversation:v40];
  v41 = +[CKConversationList sharedConversationList];
  [v41 setPendingConversation:v40];

  v42 = +[CKAdaptivePresentationController sharedInstance];
  [v42 dismissViewControllerAnimated:1 completion:0];

  v43 = +[CKUIBehavior sharedBehaviors];
  v44 = [v43 shouldDismissSideMountedPanel];

  if (v44)
  {
    v45 = [(CKMessagesController *)self chatController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v45 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v68 = v19;
  if (v32)
  {
    [(CKMessagesController *)self setComposeChatNavigationController:0];
    v46 = [(CKMessagesController *)self modalViewController];

    if (v46)
    {
      [(CKMessagesController *)self dismissModalViewControllerWithTransition:9];
    }
  }

  v47 = [(CKMessagesController *)self isCollapsed];
  [v30 setDelegate:self];
  [(CKMessagesController *)self setComposeChatController:v30];
  if (v22)
  {
    [v30 setupStateForLaunchPluginWithBundleID:v22 pluginPayload:v70];
  }

  if (a9)
  {
    [v30 setupStateForLaunchAudio];
  }

  if (v47)
  {
    [(CKMessagesController *)self showConversationListWithAnimation:0];
    v48 = [[CKNavigationController alloc] initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    v72[0] = v30;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
    [(CKNavigationController *)v48 setViewControllers:v49];

    v50 = +[CKUIBehavior sharedBehaviors];
    v51 = [v50 useMacToolbar];

    if (v51)
    {
      [(CKMessagesController *)self dismissDetailsNavigationController];
      [(CKNavigationController *)v48 setNavigationBarHidden:1];
    }

    else
    {
      v56 = [(CKNavigationController *)v48 navigationBar];
      v57 = +[CKUIBehavior sharedBehaviors];
      v58 = [v57 theme];
      [v56 setBarStyle:{objc_msgSend(v58, "navBarStyle")}];
    }

    [(CKMessagesController *)self setComposeChatNavigationController:v48];
    v59 = [(CKMessagesController *)self composeChatNavigationController];
    [(CKMessagesController *)self presentViewController:v59 animated:a10 completion:&__block_literal_global_855];
  }

  else
  {
    v52 = [(CKMessagesController *)self chatNavigationController];
    v71 = v30;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    [v52 setViewControllers:v53];

    if (!CKIsRunningInMacCatalyst())
    {
      if ([(CKMessagesController *)self _wantsThreeColumnLayout])
      {
        v54 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v55 = [v54 isModernSplitViewControllerEnabled];

        if ((v55 & 1) == 0)
        {
          [(CKMessagesController *)self hideColumn:0];
        }
      }
    }
  }

  v60 = [(CKMessagesController *)self chatController];
  [v60 setDelegate:0];

  [(CKMessagesController *)self setChatController:0];
  v61 = +[CKUIBehavior sharedBehaviors];
  v62 = [v61 useMacToolbar];

  if (v62)
  {
    if ([v30 conformsToProtocol:&unk_1F051C328])
    {
      v63 = [(CKMessagesController *)self macToolbarController];
      [v30 configureWithToolbarController:v63];
    }

    [(CKMessagesController *)self dismissDetailsNavigationController];
  }

  v64 = [(CKMessagesController *)self conversationListController];
  [v64 updateConversationList];

  [(CKMessagesController *)self _updateAlertSuppressionContext];
  v65 = [(CKMessagesController *)self messagesControllerDelegate];
  [v65 didShowNewComposeInMessagesController:self];
}

void __190__CKMessagesController__showNewComposeWithRecipients_composition_chatIdentifier_bizIntent_launchPluginWithBundleID_pluginLaunchPayload_startAudioRecording_animated_simID_sendMessageHandler___block_invoke()
{
  if ([__CurrentTestName rangeOfString:@"ShowNewCompose"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v0 = [MEMORY[0x1E696AD88] defaultCenter];
    [v0 postNotificationName:@"PPTDidShowNewComposeEvent" object:0 userInfo:0];
  }
}

- (void)cancelNewMessageCompositionAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CKMessagesController *)self isComposingMessage])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__CKMessagesController_cancelNewMessageCompositionAnimated___block_invoke;
    v5[3] = &unk_1E72EBA18;
    v5[4] = self;
    [(CKMessagesController *)self dismissViewControllerAnimated:v3 completion:v5];
  }
}

- (void)composeChatControllerDidCancelComposition:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __66__CKMessagesController_composeChatControllerDidCancelComposition___block_invoke;
    v29 = &unk_1E72EBA18;
    v30 = self;
    v5 = &v26;
LABEL_7:
    [(CKMessagesController *)self dismissViewControllerAnimated:1 completion:v5, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30];
    goto LABEL_13;
  }

  v6 = [(CKMessagesController *)self presentedViewController];
  v7 = [v4 navigationController];
  v8 = [v6 isEqual:v7];

  v9 = [(CKMessagesController *)self currentConversation];
  v10 = [(CKMessagesController *)self conversationList];
  v11 = [v10 pendingConversation];

  if (v9 == v11)
  {
    [(CKMessagesController *)self setCurrentConversation:0];
  }

  v12 = [(CKMessagesController *)self conversationList];
  [v12 unpendConversation];

  v13 = +[CKDraftManager sharedInstance];
  v14 = [(CKMessagesController *)self conversationList];
  v15 = [v14 pendingConversation];
  v16 = [v15 unsentComposition];
  [v13 clearDraftForComposition:v16];

  if (v8)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __66__CKMessagesController_composeChatControllerDidCancelComposition___block_invoke_2;
    v24 = &unk_1E72EBA18;
    v25 = self;
    v5 = &v21;
    goto LABEL_7;
  }

  if (-[CKMessagesController hasRecentlyDeletedFilterSelected](self, "hasRecentlyDeletedFilterSelected") || (+[CKConversationList sharedConversationList](CKConversationList, "sharedConversationList"), v17 = objc_claimAutoreleasedReturnValue(), [v17 conversations], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v17, !v19))
  {
    [(CKMessagesController *)self _setIsShowingNoSelectionUI:1];
    v20 = [(CKMessagesController *)self conversationListController];
    [v20 removePendingConversationCell];
  }

  else
  {
    v20 = [(CKMessagesController *)self conversationListController];
    [v20 selectDefaultConversationAnimated:1 removingPendingConversationCell:1];
  }

LABEL_13:
}

void __66__CKMessagesController_composeChatControllerDidCancelComposition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelAndDestroyComposition];
  v2 = [*(a1 + 32) chatController];
  [v2 endHoldingScrollGeometryUpdatesForReason:@"TransitionFromForwarding"];
}

- (void)cancelAndDestroyComposition
{
  if ([(CKMessagesController *)self isCollapsed])
  {
    v3 = [(CKMessagesController *)self composeChatController];
    [v3 setDelegate:0];
  }

  if ([(CKMessagesController *)self isComposingMessage])
  {
    v4 = [(CKMessagesController *)self composeChatController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [(CKMessagesController *)self composeChatController];
      [v6 cancelCompose];
    }
  }

  [(CKMessagesController *)self setComposeChatController:0];
  v7 = +[CKDraftManager sharedInstance];
  v8 = [(CKMessagesController *)self composeChatController];
  v9 = [v8 conversation];
  v10 = [v9 unsentComposition];
  [v7 clearDraftForComposition:v10];

  v11 = [(CKMessagesController *)self conversationList];
  [v11 unpendConversation];

  [(CKMessagesController *)self setComposeChatNavigationController:0];
}

- (void)composeChatController:(id)a3 didSelectNewConversation:(id)a4
{
  v6 = a4;
  v5 = [(CKMessagesController *)self conversationList];
  [v5 setPendingConversation:v6];

  if (![(CKMessagesController *)self isDetailsNavigationControllerDetached])
  {
    [(CKMessagesController *)self dismissDetailsNavigationController];
  }

  [(CKMessagesController *)self setCurrentConversation:v6];
  [(CKMessagesController *)self _updateAlertSuppressionContext];
}

- (BOOL)hasBusinessRecipientWithRecipientIDs:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (MEMORY[0x193AF5D00](*(*(&v8 + 1) + 8 * i)))
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)_checkPushToTranscriptTimingWithStartTime:(double)a3
{
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"PushToTranscriptTailspinLogging"];

  if (v6 && [v6 BOOLValue])
  {
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [v7 objectForKey:@"PushToTranscriptTailspinLoggingInterval"];

    if (v8)
    {
      [v8 floatValue];
      v10 = v9;
    }

    else
    {
      v10 = 1.0;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v12 = v11;
    if (v11 - a3 > v10)
    {
      v13 = dispatch_get_global_queue(2, 0);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __66__CKMessagesController__checkPushToTranscriptTimingWithStartTime___block_invoke;
      v19[3] = &unk_1E72ED810;
      *&v19[5] = v12;
      v19[4] = self;
      dispatch_async(v13, v19);

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dumping tailspin log (this may take up to a minute)..."];
      v15 = [CKAlertController alertControllerWithTitle:@"Push to transcript took too long" message:v14 preferredStyle:1];

      v16 = CKFrameworkBundle();
      v17 = [v16 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
      v18 = [CKAlertAction actionWithTitle:v17 style:0 handler:0];
      [v15 addAction:v18];

      [v15 presentFromViewController:self animated:1 completion:0];
    }
  }
}

void __66__CKMessagesController__checkPushToTranscriptTimingWithStartTime___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/var/mobile/Library/Logs/Messages/PushToTranscriptTailspin%f.tailspin", *(a1 + 40)];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 createFileAtPath:v2 contents:0 attributes:0];

  v5 = 0;
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:v2];
  if (!v5)
  {
    goto LABEL_25;
  }

  if (__tailspin_dump_output_sync_once != -1)
  {
    __66__CKMessagesController__checkPushToTranscriptTimingWithStartTime___block_invoke_cold_1();
  }

  if (__tailspin_dump_output_sync___tailspin_dump_output_sync && (v6 = (__tailspin_dump_output_sync___tailspin_dump_output_sync)([v5 fileDescriptor]), objc_msgSend(v5, "closeFile"), v6))
  {
LABEL_25:
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(34);
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v2;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "Pushing to transcript took longer than expected, logged tailspin dump to %@ ", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
LABEL_20:
      _CKLog();
    }
  }

  else
  {
LABEL_24:
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(34);
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v2;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_DEBUG, "Pushing to transcript took longer than expected, failed to push tailspin dump to logfile at %@ ", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      goto LABEL_20;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CKMessagesController__checkPushToTranscriptTimingWithStartTime___block_invoke_931;
  block[3] = &unk_1E72EB8D0;
  v9 = *(a1 + 32);
  v12 = v2;
  v13 = v9;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__CKMessagesController__checkPushToTranscriptTimingWithStartTime___block_invoke_931(uint64_t a1)
{
  v5 = [CKAlertController alertControllerWithTitle:@"Tailspin log dumped here:" message:*(a1 + 32) preferredStyle:1];
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
  v4 = [CKAlertAction actionWithTitle:v3 style:0 handler:0];
  [v5 addAction:v4];

  [v5 presentFromViewController:*(a1 + 40) animated:1 completion:0];
}

- (BOOL)isConversationShown:(id)a3
{
  v4 = a3;
  v5 = [(CKMessagesController *)self chatNavigationController];
  v6 = [v5 topViewController];

  v7 = [(CKMessagesController *)self chatController];
  if (v7)
  {
    v8 = [(CKMessagesController *)self chatController];
    if (v8 == v6)
    {
      v10 = [(CKMessagesController *)self chatController];
      v11 = [v10 conversation];
      v12 = [v11 groupID];
      v13 = [v4 groupID];
      v9 = [v12 isEqual:v13];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)showConversation:(id)a3 animate:(BOOL)a4 forceToTranscript:(BOOL)a5 keepAllCurrentlyLoadedMessages:(BOOL)a6 userInitiated:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v243 = a4;
  v275 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (!self->hasBegunShowingConversationList || ([MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v12 - self->timeViewDidBeginAppearing >= 0.5))
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v15 = v14;
    if (_messagesControllerTelemetryLogHandle_onceToken != -1)
    {
      [CKMessagesController showConversation:animate:forceToTranscript:keepAllCurrentlyLoadedMessages:userInitiated:];
    }

    v16 = _messagesControllerTelemetryLogHandle_telemetryLogHandle;
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19020E000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PushTranscript", " enableTelemetry=YES ", buf, 2u);
    }

    v241 = v16;

    kdebug_trace();
    v17 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKPushTranscriptTimingKey"];
    [v17 startTimingForKey:@"showConversation:animate:"];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        currentConversation = self->_currentConversation;
        v20 = @"NO";
        *buf = 138413314;
        if (v9)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v266 = v11;
        if (v8)
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        v268 = currentConversation;
        v267 = 2112;
        if (v243)
        {
          v20 = @"YES";
        }

        v269 = 2112;
        v270 = v21;
        v271 = 2112;
        v272 = v22;
        v273 = 2112;
        v274 = v20;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "showConversation: %@ (_currentConversation = %@), forceToTranscript: %@, keepAllCurrentlyLoadedMessages: %@, animate: %@", buf, 0x34u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v11 isPinned];
        v25 = @"NO";
        if (v24)
        {
          v25 = @"YES";
        }

        *buf = 138412290;
        v266 = v25;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "> Beginning Flow to present conversation with pinned={%@}", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [MEMORY[0x1E69A7FC8] sharedManager];
        v28 = [v27 isFeatureEnabled];
        v29 = @"NO";
        if (v28)
        {
          v29 = @"YES";
        }

        *buf = 138412290;
        v266 = v29;
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "  CommSafety Enabled?: %@", buf, 0xCu);
      }
    }

    v244 = [(CKMessagesController *)self conversationListController];
    if ([v11 hasUnreadMessages])
    {
      v30 = [(CKMessagesController *)self conversationListNavigationController];
      v31 = [v30 topViewController];
      v32 = v31 == v244;

      if (v32)
      {
        v33 = [(CKMessagesController *)self conversationListController];
        [v33 conversationWillBeMarkedRead:v11];
      }
    }

    v34 = [(CKMessagesController *)self isConversationShown:v11];
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = @"YES";
        if (v34)
        {
          v36 = @"NO";
        }

        *buf = 138412290;
        v266 = v36;
        _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "showConversation, shouldRestoreConversation: %@", buf, 0xCu);
      }
    }

    v236 = [(CKMessagesController *)self hasDetailsNavigationController];
    if (v34)
    {
LABEL_127:
      v146 = [(CKMessagesController *)self composeChatController];

      if (v146)
      {
        v147 = [(CKMessagesController *)self composeChatController];
        [v147 setDelegate:0];

        [(CKMessagesController *)self setComposeChatController:0];
        [(CKMessagesController *)self setComposeChatNavigationController:0];
      }

      v148 = +[CKAdaptivePresentationController sharedInstance];
      v149 = [v148 presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v151 = [(CKMessagesController *)self chatController];
        [v151 _dismissFullScreenBubbleViewControllerAnimated:v243 withSendAnimation:0 completion:0];
      }

      else
      {
        v151 = +[CKAdaptivePresentationController sharedInstance];
        [v151 dismissViewControllerAnimated:1 completion:0];
      }

      v152 = [(CKMessagesController *)self chatNavigationController];
      v153 = [v152 presentedViewController];

      if (v153)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v154 = [(CKMessagesController *)self onboardingController];
          v155 = v154 == 0;

          if (v155)
          {
            v156 = v153;
            v157 = [v156 presentedViewController];

            v158 = v156;
            if (v157)
            {
              v159 = v156;
              do
              {
                v160 = [v159 presentedViewController];

                v161 = [v160 presentedViewController];

                v159 = v160;
              }

              while (v161);
              if (v160 == v156)
              {
                v158 = v160;
              }

              else
              {
                do
                {
                  [v160 dismissViewControllerAnimated:0 completion:0];
                  v158 = [v160 presentingViewController];

                  v160 = v158;
                }

                while (v158 != v156);
              }
            }

            [v156 dismissViewControllerAnimated:1 completion:0];
          }
        }
      }

      if ([(CKMessagesController *)self _wantsThreeColumnLayout])
      {
        if (![(CKMessagesController *)self isCollapsed]&& !CKIsRunningInMacCatalyst())
        {
          v166 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          v167 = [v166 isModernSplitViewControllerEnabled];

          if ((v167 & 1) == 0)
          {
            [(CKMessagesController *)self hideColumn:0];
          }
        }
      }

      v168 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v169 = [v168 isRedesignedDetailsViewEnabled];

      if (v169)
      {
        v170 = [(CKMessagesController *)self chatController];
        objc_opt_class();
        v171 = objc_opt_isKindOfClass();

        if (v171)
        {
          v172 = [(CKMessagesController *)self redesignedDetailsNavigationController];

          if (v172)
          {
            v173 = [(CKMessagesController *)self chatController];
            v174 = [v173 detailsViewControllerForInspector];

            if (v174)
            {
              v264 = v174;
              v175 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v264 count:1];
            }

            else
            {
              v175 = MEMORY[0x1E695E0F0];
            }

            v191 = [(CKMessagesController *)self redesignedDetailsNavigationController];
            [v191 setViewControllers:v175 animated:0];
          }

          else if (v236)
          {
            v187 = [(CKMessagesController *)self chatController];
            v188 = [v187 detailsViewControllerForInspector];

            v189 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v188];
            v190 = [(CKMessagesController *)self splitViewCoordinator];
            [v190 setViewControllerInInspector:v189];
          }

          else
          {
            v194 = [(CKMessagesController *)self redesignedDetailsNavigationController];
            [v194 dismissViewControllerAnimated:1 completion:0];
          }
        }
      }

      else
      {
        v176 = [(CKMessagesController *)self detailsNavigationController];

        if (v176)
        {
          v177 = [(CKMessagesController *)self chatController];
          objc_opt_class();
          v178 = objc_opt_isKindOfClass();

          if (v178)
          {
            v179 = [(CKMessagesController *)self chatController];
            v180 = [CKDetailsControllerAdapter alloc];
            v181 = [v179 conversation];
            v182 = [(CKDetailsControllerAdapter *)v180 initWithConversation:v181 delegate:v179];

            v183 = [(CKDetailsControllerAdapter *)v182 detailsController];
            if (v183)
            {
              v184 = [(CKDetailsControllerAdapter *)v182 detailsController];
              v263 = v184;
              v185 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v263 count:1];
            }

            else
            {
              v185 = MEMORY[0x1E695E0F0];
            }

            v192 = [(CKMessagesController *)self detailsNavigationController];
            [v192 setViewControllers:v185 animated:0];

            v193 = [(CKMessagesController *)self detailsNavigationController];
            [v193 setDetailsAdapter:v182];
          }

          else if (IMOSLoggingEnabled())
          {
            v186 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v186, OS_LOG_TYPE_INFO, "chatController is not class CKChatController.", buf, 2u);
            }
          }
        }
      }

      [(CKMessagesController *)self _updateAlertSuppressionContext];
      v195 = v241;
      if (os_signpost_enabled(v195))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19020E000, v195, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PushTranscript", " enableTelemetry=YES ", buf, 2u);
      }

      v196 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKPushTranscriptTimingKey"];
      [v196 stopTimingForKey:@"showConversation:animate:"];

      kdebug_trace();
      [(CKMessagesController *)self _checkPushToTranscriptTimingWithStartTime:v15];
      [(CKMessagesController *)self _configureCallOptionsForConversationMenu];
      if (![(CKMessagesController *)self _changeFilterModeIfNeeded])
      {
        if (IMOSLoggingEnabled())
        {
          v197 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v197, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v197, OS_LOG_TYPE_INFO, "[Filter Mode] Not transitioning between filter modes.", buf, 2u);
          }
        }

        v198 = [(CKMessagesController *)self messagesControllerDelegate];
        [v198 messagesController:self didShowConversation:v11];

        v199 = [(CKMessagesController *)self conversationListController];
        [v199 beginHoldingConversationInConversationListIfNeeded:v11];
      }

      v200 = [v11 chat];
      v201 = [v200 isFiltered] == 2;

      if (v201)
      {
        v202 = [v11 chat];
        v203 = [v202 isSMS];

        v204 = [MEMORY[0x1E69A8168] sharedInstance];
        v205 = v204;
        if (v203)
        {
          v261 = &unk_1F04E85B0;
          v206 = [MEMORY[0x1E696AD98] numberWithBool:IMIsOscarEnabled()];
          v262 = v206;
          v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
          [v205 trackiMessageJunkEvent:4 withDictionary:v207];
        }

        else
        {
          [v204 trackiMessageJunkEvent:5];
        }
      }

      v208 = [v11 chat];
      v209 = v208;
      if (v208)
      {
        if ([v208 isFiltered] == 2 || !objc_msgSend(v209, "isFiltered"))
        {
          if (IMOSLoggingEnabled())
          {
            v216 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v216, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v216, OS_LOG_TYPE_INFO, "Chat already processed, not attempting trustkit requery", buf, 2u);
            }

            goto LABEL_206;
          }
        }

        else
        {
          v210 = [(CKMessagesController *)self syncedSettingsManager];
          v211 = [v210 settingValueForKey:3];
          v212 = [v211 BOOLValue];

          if (v212)
          {
            v213 = [v209 isFiltered] == 2;
            if (IMOSLoggingEnabled())
            {
              v214 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v214, OS_LOG_TYPE_INFO, "Attempting TrustKit Requery", buf, 2u);
              }
            }

            v215 = [v209 messageGuidsForRequery];
            v245[0] = MEMORY[0x1E69E9820];
            v245[1] = 3221225472;
            v245[2] = __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_967;
            v245[3] = &unk_1E72F8088;
            v246 = v213;
            v245[4] = self;
            [v209 queryTrustKitDecisioningIfNeededWithItems:v215 reply:v245];

            goto LABEL_207;
          }

          if (IMOSLoggingEnabled())
          {
            v216 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v216, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v216, OS_LOG_TYPE_INFO, "Spam filtering disabled, not attempting trustkit requery", buf, 2u);
            }

LABEL_206:
          }
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v216 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v216, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v216, OS_LOG_TYPE_INFO, "Invalid chat, not attempting TrustKit requery", buf, 2u);
        }

        goto LABEL_206;
      }

LABEL_207:

      goto LABEL_208;
    }

    v37 = [v11 chat];
    [v37 watermarkInForScrutinyMode];

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = [v11 chat];
        v40 = [v39 guid];
        *buf = 138412290;
        v266 = v40;
        _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "Incremented load attempt count for chat GUID %@", buf, 0xCu);
      }
    }

    v41 = [v11 chat];
    v42 = [v41 isInScrutinyMode];

    if (v42 && IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [v11 chat];
        v45 = [v44 guid];
        *buf = 138412290;
        v266 = v45;
        _os_log_impl(&dword_19020E000, v43, OS_LOG_TYPE_INFO, "We are in scrutiny mode for chat GUID %@", buf, 0xCu);
      }
    }

    [(CKMessagesController *)self setCurrentConversation:v11 keepAllCurrentlyLoadedMessages:v8];
    v46 = [(CKMessagesController *)self junkModalMessagesController];
    v238 = v46;
    if (v46)
    {
      v47 = [v46 chatController];
    }

    else
    {
      v48 = [(CKMessagesController *)self composeChatController];
      if (v48)
      {
        [(CKMessagesController *)self composeChatController];
      }

      else
      {
        [(CKMessagesController *)self chatController];
      }
      v47 = ;
    }

    if ([(CKMessagesController *)self isCollapsed])
    {
      v239 = 0;
    }

    else
    {
      v239 = [v47 posterSnapshotView];
    }

    v242 = [v47 entryView];
    v49 = [(CKMessagesController *)self composeChatController];
    if (v49)
    {
      v50 = [(CKMessagesController *)self composeChatController];
      if ([v50 isSendingMessage])
      {
        v240 = [v242 composition];
      }

      else
      {
        v240 = 0;
      }
    }

    else
    {
      v240 = 0;
    }

    if (v47)
    {
      v51 = [v242 contentView];
      v235 = [v51 isActive];
    }

    else
    {
      v235 = 0;
    }

    [v47 beginPinningInputViewsForReason:?];
    [v47 dismissViewControllerAnimated:0 completion:0];
    if (v47)
    {
      v52 = [(CKMessagesController *)self macToolbarController];
      [v52 setSecondaryItemProvider:0];
    }

    v53 = +[CKBalloonPluginManager sharedInstanceIfInitialized];
    [v53 invalidateAllActivePlugins];

    if ([v11 isBusinessConversation])
    {
      v54 = +[CKUIBehavior sharedBehaviors];
      v55 = [objc_alloc(objc_msgSend(v54 "businessChatControllerClass"))];
    }

    else
    {
      v56 = [(CKMessagesController *)self chatNavigationController];
      v57 = [v56 view];
      [v57 bounds];
      v59 = v58;
      v61 = v60;

      v62 = +[CKUIBehavior sharedBehaviors];
      v55 = [objc_alloc(objc_msgSend(v62 "chatControllerClass"))];

      [v55 setInitialViewSize:{v59, v61}];
    }

    objc_opt_class();
    v237 = objc_opt_isKindOfClass();
    [v55 setTransitionedFromComposing:v237 & 1];
    [v47 prepareToDismissForSecondInstance];
    [v55 setDelegate:self];
    [v55 setSendMenuDelegate:self];
    if (v7)
    {
      [v55 setUserInitiatedTranscriptPush:1];
    }

    [v55 setOutgoingBackgroundSnapshotView:v239];
    [(CKMessagesController *)self setChatController:v55];
    [v55 beginPinningInputViewsForReason:@"SwitchingActiveConversations"];
    [v55 setNeedsEndPinningInputViewsForSwitchingConversationAfterConversationIsSet:1];
    [v55 beginPinningInputViewsForReason:@"NewComposeToChatTransition"];
    [v47 endPinningInputViewsForReason:@"NewComposeToChatTransition"];
    [(CKMessagesController *)self setupBizNavBarForConversation:v11];
    v63 = [(CKMessagesController *)self chatController];
    v64 = [(CKMessagesController *)self isCollapsed];
    if (v64)
    {
      if (![(CKMessagesController *)self isTopVCChatNavigationController])
      {
        v65 = [(CKMessagesController *)self presentedViewController];
        if (v65)
        {
          v66 = [(CKMessagesController *)self presentedViewController];
          v67 = [(CKMessagesController *)self composeChatNavigationController];
          v68 = v66 == v67;

          if (v68)
          {
            v233 = v55;
            v69 = [(CKMessagesController *)self composeChatController];
            v70 = [v69 collectionViewController];
            v71 = [v70 collectionView];
            [v71 contentOffset];
            v73 = v72;
            v75 = v74;

            v76 = [(CKMessagesController *)self composeChatController];
            v77 = [v76 collectionViewController];
            v78 = [v77 collectionView];
            [v78 contentInset];
            v80 = v79;
            v82 = v81;
            v84 = v83;
            v86 = v85;

            [v233 primeTranscriptWithInitialOffset:v73 inset:{v75, v80, v82, v84, v86}];
            v87 = [v233 conversation];
            v88 = [v87 chat];

            [v88 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57F0]];
            [v233 beginHoldingScrollGeometryUpdatesForReason:@"TransitionFromNewCompose"];
          }
        }
      }
    }

    v89 = MEMORY[0x1E69DD258];
    v259[0] = MEMORY[0x1E69E9820];
    v259[1] = 3221225472;
    v259[2] = __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke;
    v259[3] = &unk_1E72EB8D0;
    v259[4] = self;
    v234 = v63;
    v260 = v234;
    [v89 _performWithoutDeferringTransitions:v259];
    v90 = +[CKUIBehavior sharedBehaviors];
    LODWORD(v89) = [v90 useMacToolbar];

    if (v89)
    {
      v91 = [(CKMessagesController *)self chatController];
      if ([v91 conformsToProtocol:&unk_1F051C328])
      {
        v92 = [(CKMessagesController *)self macToolbarController];
        [v91 configureWithToolbarController:v92];
      }
    }

    [(CKMessagesController *)self _setIsShowingNoSelectionUI:v11 == 0];
    v93 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v94 = [v93 isFluidTransitioningEnabled];

    if (v94)
    {
      if (v64)
      {
        if ([v11 isPinned])
        {
          v95 = [(CKMessagesController *)self _sourceViewForFluidTransitionWithConversation:v11];
          v96 = v95 == 0;

          if (!v96)
          {
            objc_initWeak(buf, self);
            objc_initWeak(&location, v11);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_2;
            aBlock[3] = &unk_1E72F8038;
            objc_copyWeak(&v256, buf);
            objc_copyWeak(&v257, &location);
            v230 = _Block_copy(aBlock);
            v231 = [MEMORY[0x1E69DD800] zoomWithSourceViewProvider:v230];
            v97 = objc_opt_new();
            v98 = [(CKMessagesController *)self traitCollection];
            [v98 displayCornerRadius];

            v99 = [(CKMessagesController *)self chatNavigationController];
            v100 = [v99 view];
            [v100 bounds];

            UIRectCenteredRect();
            [v97 setFrameOfSourceInDestination:?];
            [v231 _setOptions:v97];
            v101 = [MEMORY[0x1E69DC888] systemBackgroundColor];
            v102 = [(CKMessagesController *)self chatNavigationController];
            v103 = [v102 view];
            [v103 setBackgroundColor:v101];

            v104 = [(CKMessagesController *)self chatNavigationController];
            [v104 _setPreferredTransition:v231];

            WeakRetained = objc_loadWeakRetained(buf);
            v106 = [WeakRetained conversationListController];

            v107 = [v106 itemIdentifierForConversation:v11 inSection:2];
            v108 = [v106 dataSource];
            v109 = [v108 indexPathForItemIdentifier:v107];

            v110 = [v106 collectionView];
            [v110 deselectItemAtIndexPath:v109 animated:0];

            objc_destroyWeak(&v257);
            objc_destroyWeak(&v256);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
            goto LABEL_95;
          }
        }
      }

      v111 = [(CKMessagesController *)self chatNavigationController];
      [v111 _setPreferredTransition:0];
    }

    if (!v64)
    {
LABEL_97:
      v232 = 1;
LABEL_98:
      v112 = [(CKMessagesController *)self chatController];
      v113 = [(CKMessagesController *)self composeChatController];
      v114 = v113;
      if (v113)
      {
        [v113 systemMinimumLayoutMargins];
        v116 = v115;
        v118 = v117;
        v120 = v119;
        v122 = v121;
        v123 = [v114 view];
        v124 = [v123 effectiveUserInterfaceLayoutDirection];
        if (v124)
        {
          v125 = v122;
        }

        else
        {
          v125 = v118;
        }

        if (!v124)
        {
          v118 = v122;
        }

        v126 = [v112 view];
        [v126 setLayoutMargins:{v116, v125, v120, v118}];

        [v114 setIgnoreKeyboardNotifications:v242 != 0];
      }

      [v47 keyboardFrame];
      v128 = v127;
      v130 = v129;
      v132 = v131;
      v134 = v133;
      if (v64)
      {
        v135 = [(CKMessagesController *)self chatController];
        [v135 beginHoldingScrollGeometryUpdatesForReason:@"TransitionFromNewCompose"];

        v136 = [v112 entryView];
        v137 = [v242 sendLaterPluginInfo];
        [v136 setSendLaterPluginInfo:v137 animated:0];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v138 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v266 = "[CKMessagesController showConversation:animate:forceToTranscript:keepAllCurrentlyLoadedMessages:userInitiated:]";
            _os_log_impl(&dword_19020E000, v138, OS_LOG_TYPE_INFO, "reloadEntryViewIfNeeded called from %s", buf, 0xCu);
          }
        }

        [v112 reloadEntryViewIfNeeded];
      }

      v139 = [v112 entryView];
      v140 = v139;
      if (v240)
      {
        v141 = v64;
      }

      else
      {
        v141 = 1;
      }

      if ((v141 & 1) == 0)
      {
        [v139 setComposition:v240];
      }

      if (v235)
      {
        if (!(v64 & 1 | (((v237 | IMSharedHelperDeviceIsiPad()) & 1) == 0)) && [v112 isFirstResponder])
        {
          [v112 resignFirstResponder];
        }

        v142 = [v140 contentView];
        v143 = [v142 activeView];
        [v143 becomeFirstResponder];
      }

      [v47 forciblyUnloadChatInputController];
      if (v64)
      {
        v144 = [(CKMessagesController *)self chatController];
        [v144 cleanupPostComposeTransitionWithKBFrame:{v128, v130, v132, v134}];

        v145 = [(CKMessagesController *)self chatController];
        [v145 endHoldingScrollGeometryUpdatesForReason:@"TransitionFromNewCompose"];
      }

      if (v232)
      {
        [v55 endPinningInputViewsForReason:@"NewComposeToChatTransition"];
      }

      goto LABEL_127;
    }

LABEL_95:
    if ([(CKMessagesController *)self isTopVCChatNavigationController])
    {
      v64 = 0;
      goto LABEL_97;
    }

    v162 = [(CKMessagesController *)self presentedViewController];
    if (v162 && ([(CKMessagesController *)self presentedViewController], v163 = objc_claimAutoreleasedReturnValue(), [(CKMessagesController *)self composeChatNavigationController], v164 = objc_claimAutoreleasedReturnValue(), v165 = v163 == v164, v164, v163, v162, v165))
    {
      v217 = [(CKMessagesController *)self composeChatController];
      v218 = [(CKMessagesController *)self chatController];
      v64 = [v217 isSendingMessage];
      v219 = [v217 posterSnapshotView];

      [v218 setOutgoingBackgroundSnapshotView:v219];
      v249[0] = MEMORY[0x1E69E9820];
      v249[1] = 3221225472;
      v249[2] = __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_958;
      v249[3] = &unk_1E72F8060;
      v254 = v64;
      v220 = v218;
      v250 = v220;
      v251 = self;
      v221 = v217;
      v252 = v221;
      v253 = v55;
      [(CKMessagesController *)self dismissViewControllerAnimated:0 completion:v249];

      v232 = 0;
      v243 = 0;
      v239 = v219;
    }

    else
    {
      v64 = 0;
      v232 = 1;
    }

    if (IMOSLoggingEnabled())
    {
      v222 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v222, OS_LOG_TYPE_INFO))
      {
        v223 = [(CKMessagesController *)self chatNavigationController];
        if (v243)
        {
          v224 = @"YES";
        }

        else
        {
          v224 = @"NO";
        }

        v225 = [(CKMessagesController *)self chatNavigationController];
        v226 = [v225 viewControllers];
        *buf = 138412802;
        v266 = v223;
        v267 = 2112;
        v268 = v224;
        v269 = 2112;
        v270 = v226;
        _os_log_impl(&dword_19020E000, v222, OS_LOG_TYPE_INFO, "Pushing to detail view controller: %@ animate: %@ with view controllers: %@", buf, 0x20u);
      }
    }

    if (-[CKMessagesController _wantsThreeColumnLayout](self, "_wantsThreeColumnLayout") || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v227 = objc_claimAutoreleasedReturnValue(), v228 = objc_msgSend(v227, "isModernSplitViewControllerEnabled"), v227, v228))
    {
      if (v243)
      {
        [(CKMessagesController *)self showColumn:2];
LABEL_224:
        v243 = 1;
        goto LABEL_98;
      }

      v248[0] = MEMORY[0x1E69E9820];
      v248[1] = 3221225472;
      v248[2] = __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_959;
      v248[3] = &unk_1E72EBA18;
      v248[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v248];
    }

    else
    {
      if (v243)
      {
        v229 = [(CKMessagesController *)self chatNavigationController];
        [(CKMessagesController *)self showDetailViewController:v229 sender:self];

        goto LABEL_224;
      }

      v247[0] = MEMORY[0x1E69E9820];
      v247[1] = 3221225472;
      v247[2] = __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_2_960;
      v247[3] = &unk_1E72EBA18;
      v247[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v247];
    }

    v243 = 0;
    goto LABEL_98;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Bailing early because the conversation list is still in the process of being shown.", buf, 2u);
    }
  }

LABEL_208:
}

void __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) chatNavigationController];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 setViewControllers:v3];
}

NSObject *__112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = [WeakRetained _sourceViewForFluidTransitionWithConversation:v3];
      v5 = v4;
      if (v4)
      {
        v5 = v4;
        v6 = v5;
      }

      else
      {
        v7 = IMLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_2_cold_1();
        }

        v6 = 0;
      }
    }

    else
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_2_cold_2();
      }

      v6 = 0;
    }
  }

  else
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_2_cold_3();
    }

    v6 = 0;
  }

  return v6;
}

void __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_958(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    if (v3)
    {
      v4 = [v2 chatNavigationController];
      v12[0] = *(a1 + 32);
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v4 setViewControllers:v5];

      v6 = [*(a1 + 32) entryView];
      v7 = [v6 contentView];
      v8 = [v7 activeView];
      [v8 becomeFirstResponder];
    }

    else
    {
      [v2 _populateChatNavigationControllerWithSelection];
    }
  }

  [*(a1 + 48) setDelegate:0];
  [*(a1 + 40) setComposeChatController:0];
  [*(a1 + 40) setComposeChatNavigationController:0];
  v9 = +[CKConversationList sharedConversationList];
  [v9 unpendConversation];

  v10 = [*(a1 + 32) conversation];
  v11 = [v10 chat];

  [v11 endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57F0]];
  [*(a1 + 32) endHoldingScrollGeometryUpdatesForReason:@"TransitionFromNewCompose"];
  [*(a1 + 56) endPinningInputViewsForReason:@"NewComposeToChatTransition"];
}

void __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_2_960(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 chatNavigationController];
  [v2 showDetailViewController:v3 sender:*(a1 + 32)];
}

uint64_t __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_967(uint64_t result, uint64_t a2)
{
  if (a2 == 2 && (*(result + 40) & 1) == 0)
  {
    return [*(result + 32) showSpamCategoryUpdatedAlert];
  }

  return result;
}

- (id)_sourceViewForFluidTransitionWithConversation:(id)a3
{
  v4 = a3;
  if (([v4 isPinned] & 1) == 0)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKMessagesController _sourceViewForFluidTransitionWithConversation:];
    }

    goto LABEL_7;
  }

  v5 = [(CKMessagesController *)self conversationListController];
  v6 = [v5 presentedViewController];

  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKMessagesController _sourceViewForFluidTransitionWithConversation:];
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(CKMessagesController *)self conversationListController];
  v10 = [v7 itemIdentifierForConversation:v4 inSection:2];
  v11 = [v7 dataSource];
  v12 = [v11 indexPathForItemIdentifier:v10];

  if (!v12)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CKMessagesController _sourceViewForFluidTransitionWithConversation:];
    }

    v8 = 0;
    goto LABEL_29;
  }

  v13 = [v7 collectionView];
  v14 = [v13 cellForItemAtIndexPath:v12];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 pinnedConversationView];
      v16 = [v15 avatarView];
      v8 = v16;
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v18 = IMLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CKMessagesController _sourceViewForFluidTransitionWithConversation:];
        }
      }

      goto LABEL_28;
    }

    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CKMessagesController _sourceViewForFluidTransitionWithConversation:];
    }
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CKMessagesController _sourceViewForFluidTransitionWithConversation:];
    }
  }

  v8 = 0;
LABEL_28:

LABEL_29:
LABEL_8:

  return v8;
}

- (BOOL)_changeFilterModeIfNeeded
{
  if ([(CKMessagesController *)self isCollapsed])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v22 = 0;
        v4 = "[Filter Mode] Not updating filterMode. collapsed";
        v5 = &v22;
LABEL_9:
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    return 0;
  }

  v6 = [(CKMessagesController *)self currentConversationListFilterMode];
  if (v6 <= 1)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v4 = "[Filter Mode] Not updating filterMode. Current filter mode is none or no junk";
        v5 = buf;
        goto LABEL_9;
      }

LABEL_10:
    }

    return 0;
  }

  v8 = v6;
  v9 = [(CKMessagesController *)self chatController];
  v10 = [v9 conversation];

  if (v10)
  {
    v11 = +[CKConversationList sharedConversationList];
    v12 = [v11 conversation:v10 includedInFilterMode:v8];

    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v19 = 0;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "[Filter Mode] Not updating filterMode. Current conversation exists in current filterMode", v19, 2u);
        }
      }
    }

    else
    {
      if (v13)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "[Filter Mode] Updating filterMode", v18, 2u);
        }
      }

      [(CKMessagesController *)self inboxViewController:0 didSelectFilterMode:1];
    }

    v7 = v12 ^ 1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "[Filter Mode] Not updating filterMode. No conversation in chatController", v20, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)junkModalMessagesController
{
  v2 = [(CKMessagesController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([v3 isOscarModal])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDownTimeActiveForCurrentChat
{
  v2 = [(CKMessagesController *)self chatController];
  v3 = [v2 conversation];
  v4 = [v3 chat];

  if (v4)
  {
    v5 = [v4 allowedToShowConversation] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)showConversationInNewWindow:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] || (v4 = objc_msgSend(MEMORY[0x1E69A5B68], "isContactLimitsFeatureEnabled"), v3) && v4 && (objc_msgSend(v3, "chat"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "allowedByScreenTime"), v5, v6))
  {
    v7 = [MEMORY[0x1E69DC668] sharedApplication];
    v8 = [v3 activityForNewScene];
    [v7 requestSceneSessionActivation:0 userActivity:v8 options:0 errorHandler:&__block_literal_global_976_0];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Not showing conversation in new window since conversation is blocked by ScreenTime: %@", &v10, 0xCu);
    }
  }
}

void __52__CKMessagesController_showConversationInNewWindow___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "error requesting scene: %@", &v4, 0xCu);
    }
  }
}

- (void)showConversation:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  sendMenuPresentation = self->_sendMenuPresentation;
  v9 = v6;
  if (sendMenuPresentation)
  {
    [(CKSendMenuPresentation *)sendMenuPresentation dismissAnimated:0 completion:0];
    v8 = self->_sendMenuPresentation;
    self->_sendMenuPresentation = 0;

    v6 = v9;
  }

  if (v6)
  {
    [(CKMessagesController *)self showConversation:v6 animate:v4 keepAllCurrentlyLoadedMessages:0];
  }

  else
  {
    [(CKMessagesController *)self _setIsShowingNoSelectionUI:1];
  }
}

- (void)chatControllerDidReselectConversation:(id)a3
{
  v3 = [(CKMessagesController *)self chatController];
  [v3 dismissInlineReplyIfNeededAndScrollToBottom];
}

- (void)showConversationAndMessageForChatGUID:(id)a3 messageGUID:(id)a4 withInlineReplyOverlay:(BOOL)a5 animate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v14 = a4;
  v10 = a3;
  v11 = +[CKConversationList sharedConversationList];
  v12 = [v11 conversationForExistingChatWithGUID:v10];

  if (v12)
  {
    [(CKMessagesController *)self showConversation:v12 animate:v6 keepAllCurrentlyLoadedMessages:1];
    v13 = [(CKMessagesController *)self chatController];
    [v13 scrollToMessageWith:v14 in:v12 withInlineReplyOverlay:v7];
  }
}

- (BOOL)resumeToConversation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 groupID];
      v7 = [(CKConversation *)self->_currentConversation groupID];
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "resumeToConversation: toConvo: %@ currentConversation: %@", &v13, 0x16u);
    }
  }

  if (v4)
  {
    v8 = [v4 groupID];
    v9 = [v8 isEqualToString:@"-1"];
    if ((v9 & 1) == 0)
    {
      [MEMORY[0x1E69DD250] disableAnimation];
      [(CKMessagesController *)self showConversation:v4 animate:0 forceToTranscript:0 keepAllCurrentlyLoadedMessages:0];
      [MEMORY[0x1E69DD250] enableAnimation];
    }

    v10 = v9 ^ 1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKMessagesController - resumeToConversation: attempted to resume to nil conversation!", &v13, 2u);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (void)deleteConversation:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CKConversationList sharedConversationList];
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [MEMORY[0x1E695DF00] now];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CKMessagesController_deleteConversation___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  [v5 recoverableDeleteForConversations:v6 deleteDate:v7 synchronousQuery:0 completionHandler:v8];
}

void __43__CKMessagesController_deleteConversation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationList];
  [v1 updateRecoverableConversationList];
}

- (id)firstConversationExactlyMatchingDisplayName:(id)a3
{
  v3 = MEMORY[0x1E69A5AF8];
  v4 = a3;
  v5 = [v3 sharedRegistry];
  v6 = [v5 existingChatWithDisplayName:v4];

  v7 = +[CKConversationList sharedConversationList];
  v8 = [v7 conversationForExistingChat:v6];

  return v8;
}

- (id)conversationMatchingGUID:(id)a3
{
  v3 = a3;
  v4 = +[CKConversationList sharedConversationList];
  v5 = [v4 conversationForExistingChatWithGUID:v3];

  return v5;
}

- (void)showConversationListWithAnimation:(BOOL)a3 didDismissController:(BOOL *)a4
{
  v5 = a3;
  v39 = *MEMORY[0x1E69E9840];
  v7 = [(CKMessagesController *)self navigationController];
  v8 = [v7 topViewController];
  v9 = [(CKMessagesController *)self conversationListController];
  v10 = [v8 isEqual:v9];

  if (a4 && (v10 & 1) == 0)
  {
    *a4 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "dismissing fullscreen balloon view because conversation list is being shown", buf, 2u);
    }
  }

  v12 = [(CKMessagesController *)self chatController];
  [v12 _dismissFullScreenBubbleViewControllerAnimated:v5 withSendAnimation:0 completion:0];

  if ([(CKMessagesController *)self isCollapsed])
  {
    sendMenuPresentation = self->_sendMenuPresentation;
    if (sendMenuPresentation)
    {
      [(CKSendMenuPresentation *)sendMenuPresentation dismissAnimated:0 completion:0];
      v14 = self->_sendMenuPresentation;
      self->_sendMenuPresentation = 0;
    }

    if (!v5)
    {
      v15 = [(CKMessagesController *)self chatNavigationController];
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v15 viewControllers];
          *buf = 138412290;
          v38 = v17;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Clearing chatController and chatNavigationController view controllers, chatNavigationController VCs before: %@", buf, 0xCu);
        }
      }

      v18 = [(CKMessagesController *)self chatController];
      [v18 setDelegate:0];

      [(CKMessagesController *)self setChatController:0];
      [(CKMessagesController *)self setCurrentConversation:0];
      [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v15 viewControllers];
          *buf = 138412290;
          v38 = v20;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "chatNavigationController (showConversationListWithAnimation:) children:%@", buf, 0xCu);
        }
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__CKMessagesController_showConversationListWithAnimation_didDismissController___block_invoke;
    aBlock[3] = &unk_1E72ED8D8;
    v36 = v5;
    aBlock[4] = self;
    v21 = _Block_copy(aBlock);
    v22 = [(CKMessagesController *)self presentedViewController];

    if (v22)
    {
      v23 = [(CKMessagesController *)self presentedViewController];
      v24 = [(CKMessagesController *)self composeChatNavigationController];
      v25 = v23 == v24;

      if (v25)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __79__CKMessagesController_showConversationListWithAnimation_didDismissController___block_invoke_980;
        v34[3] = &unk_1E72EBA18;
        v34[4] = self;
        [(CKMessagesController *)self dismissViewControllerAnimated:0 completion:v34];
      }

      else
      {
        v26 = [(CKMessagesController *)self presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v28 = [(CKMessagesController *)self onboardingController];
          if (v28)
          {
          }

          else
          {
            v29 = [(CKMessagesController *)self presentedViewController];
            objc_opt_class();
            v30 = objc_opt_isKindOfClass();

            if ((v30 & 1) == 0)
            {
              v31 = [(CKMessagesController *)self presentedViewController];
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __79__CKMessagesController_showConversationListWithAnimation_didDismissController___block_invoke_2;
              v32[3] = &unk_1E72EBDB8;
              v33 = v21;
              [v31 dismissViewControllerAnimated:0 completion:v32];

              goto LABEL_28;
            }
          }
        }
      }
    }

    v21[2](v21);
LABEL_28:
  }
}

void __79__CKMessagesController_showConversationListWithAnimation_didDismissController___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 40))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Popping conversationListNavigationController to root animated: %@", &v10, 0xCu);
    }
  }

  [*(a1 + 32) updateInboxAndConversationList];
  if ([*(a1 + 32) _wantsThreeColumnLayout])
  {
    if (!CKIsRunningInMacCatalyst())
    {
      v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v5 = [v4 isModernSplitViewControllerEnabled];

      if ((v5 & 1) == 0)
      {
        [*(a1 + 32) hideColumn:0];
      }
    }

    v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v7 = [v6 isModernSplitViewControllerEnabled];

    if ((v7 & 1) == 0)
    {
      [*(a1 + 32) showColumn:1];
    }
  }

  else
  {
    [*(a1 + 32) dismissChatControllerIfVisibleAnimated:*(a1 + 40)];
  }

  v8 = *(a1 + 32);
  v9 = [v8 currentConversation];
  [v8 cleanUpBizNavBarForConversation:v9];
}

- (BOOL)_isTimedOutForState:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 isRunningTest];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 date];
    if (v7)
    {
      v8 = [MEMORY[0x1E695DF00] date];
      [v8 timeIntervalSinceDate:v7];
      v10 = v9;

      v11 = +[CKUIBehavior sharedBehaviors];
      [v11 resumeToConversationListTimeInterval];
      v6 = v10 > v12;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)shouldRestoreToConversationListForState:(id)a3
{
  v4 = a3;
  if ([(CKMessagesController *)self _isTimedOutForState:v4])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v34 = 0;
        v6 = "Should restore to conversation list because time suspended exceeded timeOut period. Returning YES";
        v7 = &v34;
LABEL_15:
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (![(CKMessagesController *)self isCollapsed])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v33 = 0;
        v6 = "Should restore to conversation list because we're expanded. Returning YES.";
        v7 = v33;
        goto LABEL_15;
      }

LABEL_16:
    }

LABEL_17:
    v9 = 1;
    goto LABEL_18;
  }

  if (![v4 showingInbox])
  {
    v11 = [v4 unreadLastMessages];
    v12 = +[CKConversationList sharedConversationList];
    v13 = [v12 unreadFilteredConversationCountIgnoringMessages:v11];

    if (v13 >= 2)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v31 = 0;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Should restore to conversation list because multiple conversations are newly unread. Returning YES", v31, 2u);
        }
      }

      v9 = 1;
      goto LABEL_44;
    }

    if (v13 != 1)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v28 = 0;
          _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Should not restore to conversation list because there are no new unread conversations", v28, 2u);
        }
      }

      v9 = 0;
      goto LABEL_44;
    }

    v15 = [v4 groupID];
    v16 = +[CKConversationList sharedConversationList];
    v17 = [v16 conversationForExistingChatWithChatIdentifier:v15];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v21 = +[CKConversationList sharedConversationList];
      v19 = [v21 conversationForExistingChatWithGroupID:v15];
    }

    v22 = +[CKConversationList sharedConversationList];
    v23 = [v22 firstUnreadFilteredConversationIgnoringMessages:v11];

    v24 = IMOSLoggingEnabled();
    v9 = v19 != v23;
    if (v19 == v23)
    {
      if (v24)
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *v30 = 0;
          v26 = "Should not return to conversation list because last conversation is the newly unread conversation. Returning NO";
          v27 = v30;
          goto LABEL_41;
        }

LABEL_42:
      }
    }

    else if (v24)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v29 = 0;
        v26 = "Should return to conversation list because there is a newly unread conversation. Returning YES";
        v27 = &v29;
LABEL_41:
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, v26, v27, 2u);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

LABEL_44:
    goto LABEL_18;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Should not restore to conversation list because should restore to inbox. Returning NO", buf, 2u);
    }
  }

  v9 = 0;
LABEL_18:

  return v9;
}

- (void)_hideConversationListForIPadPPTTest
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CKMessagesController *)self chatController];
  [v3 setDelegate:0];

  [(CKMessagesController *)self setChatController:0];
  [(CKMessagesController *)self setCurrentConversation:0];
  [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(CKMessagesController *)self chatNavigationController];
      v6 = [v5 viewControllers];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "chatNavigationController (_hideConversationListForIPadPPTTest) children:%@", buf, 0xCu);
    }
  }

  v7 = [(CKMessagesController *)self presentedViewController];
  if (v7 && ([(CKMessagesController *)self presentedViewController], v8 = objc_claimAutoreleasedReturnValue(), [(CKMessagesController *)self composeChatNavigationController], v9 = objc_claimAutoreleasedReturnValue(), v10 = v8 == v9, v9, v8, v7, v10))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__CKMessagesController__hideConversationListForIPadPPTTest__block_invoke;
    v13[3] = &unk_1E72EBA18;
    v13[4] = self;
    [(CKMessagesController *)self dismissViewControllerAnimated:0 completion:v13];
  }

  else
  {
    [(CKMessagesController *)self dismissViewControllerAnimated:0 completion:0];
  }

  v11 = [(CKMessagesController *)self conversationListNavigationController];
  v12 = [v11 popToRootViewControllerAnimated:0];
}

- (void)conversationListWillBeginEditing:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CKMessagesController *)self view];
    [v4 endEditing:1];
  }

  else
  {

    [(CKMessagesController *)self becomeFirstResponder];
  }
}

- (void)conversationListIsDeletingConversations:(id)a3
{
  v3 = a3;
  v4 = +[CKCurrentConversationsManager sharedInstance];
  [v4 purgeConversations:v3];
}

- (BOOL)isShowingSelectionView
{
  if ([(CKMessagesController *)self isCollapsed])
  {
    v3 = [(CKMessagesController *)self conversationListNavigationController];
    v4 = [v3 topViewController];
    v5 = [(CKMessagesController *)self conversationListController];

    if (v4 == v5)
    {
      return 0;
    }

    v6 = [(CKMessagesController *)self chatNavigationController];
    v7 = [v6 viewControllers];
    v8 = [(CKSelectionViewController *)v7 containsObject:self->_selectionViewController];
  }

  else
  {
    v6 = [(CKMessagesController *)self chatNavigationController];
    v7 = [v6 topViewController];
    v8 = v7 == self->_selectionViewController;
  }

  return v8;
}

- (BOOL)isAnimatingMessageSend
{
  if ([(CKMessagesController *)self isCollapsed])
  {
    if ([(CKMessagesController *)self isCollapsed])
    {
      v3 = [(CKMessagesController *)self presentedViewController];
      v4 = [(CKMessagesController *)self composeChatNavigationController];

      if (v3 == v4)
      {
        v5 = [(CKMessagesController *)self composeChatController];
LABEL_8:
        v9 = v5;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = [(CKMessagesController *)self chatNavigationController];
    v7 = [v6 topViewController];
    v8 = [(CKMessagesController *)self chatController];

    if (v7 == v8)
    {
      v5 = [(CKMessagesController *)self chatController];
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_9:
  v10 = [v9 isAnimatingMessageSend];

  return v10;
}

- (BOOL)currentCompositionHasContent
{
  if ([(CKMessagesController *)self isComposingMessage])
  {
    v3 = [(CKMessagesController *)self composeChatController];
    v4 = [v3 proposedRecipients];
    v5 = [v4 count] != 0;
    v6 = [v3 composition];
    v7 = [v6 hasContent];
    v8 = [v3 unatomizedRecipientText];
    v9 = [v8 length] != 0;

    v10 = v5 | v7 | v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)isTopVCChatNavigationController
{
  v2 = self;
  v3 = [(CKMessagesController *)self conversationListNavigationController];
  v4 = [v3 topViewController];
  v5 = [(CKMessagesController *)v2 chatNavigationController];
  LOBYTE(v2) = v4 == v5;

  return v2;
}

- (BOOL)isShowingConversationListController
{
  v2 = [(CKMessagesController *)self conversationListControllerIfInitialized];
  v3 = [v2 viewIfLoaded];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isShowingComposeChatController
{
  v3 = [(CKMessagesController *)self composeChatController];

  if (!v3)
  {
    return 0;
  }

  if ([(CKMessagesController *)self isCollapsed])
  {
    v4 = [(CKMessagesController *)self presentedViewController];
    v5 = [(CKMessagesController *)self composeChatNavigationController];
    v6 = v4 == v5;
  }

  else
  {
    v4 = [(CKMessagesController *)self chatNavigationController];
    v5 = [v4 viewControllers];
    v7 = [v5 firstObject];
    v8 = [(CKMessagesController *)self composeChatController];
    v6 = v7 == v8;
  }

  return v6;
}

- (BOOL)hasUnreadFilteredConversationsIgnoringMessages:(id)a3
{
  v3 = a3;
  v4 = +[CKConversationList sharedConversationList];
  v5 = [v4 unreadFilteredConversationCountIgnoringMessages:v3];

  return v5 > 0;
}

- (BOOL)showUnreadConversationsWithLastConversation:(id)a3 ignoringMessages:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CKMessagesController *)self isCollapsed])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "showing conversation list", buf, 2u);
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__CKMessagesController_showUnreadConversationsWithLastConversation_ignoringMessages___block_invoke;
    v15[3] = &unk_1E72EBA18;
    v15[4] = self;
    [MEMORY[0x1E69DD258] _performWithoutDeferringTransitions:v15];
    LOBYTE(v9) = 1;
  }

  else
  {
    v10 = +[CKConversationList sharedConversationList];
    v11 = [v10 firstUnreadFilteredConversationIgnoringMessages:v7];

    v9 = 0;
    if (v6 && v11 == v6)
    {
      v9 = [(CKMessagesController *)self resumeToConversation:v11];
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        *buf = 138412802;
        if (v9)
        {
          v13 = @"YES";
        }

        v17 = v13;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "didShow: %@ unread conversations with last conversation: %@ firstUnreadConversation: %@", buf, 0x20u);
      }
    }
  }

  return v9;
}

- (void)_unreadCountDidChange:(id)a3
{
  v4 = [(CKMessagesController *)self inboxModel];
  v5 = [v4 itemsMap];

  if (v5)
  {
    v6 = [(CKMessagesController *)self inboxModel];
    v7 = [v6 itemsMap];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__CKMessagesController__unreadCountDidChange___block_invoke;
    v8[3] = &unk_1E72F80B0;
    v8[4] = self;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __46__CKMessagesController__unreadCountDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 unsignedIntegerValue];
  if (v5 <= 0x1A)
  {
    v6 = [*(a1 + 32) _unreadCountStringForFilterMode:v5];
    [v7 updateAccessory:v6];
  }
}

- (void)_junkConversationsRecovered:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(CKMessagesController *)self isOscarModal])
  {
    v5 = [(CKMessagesController *)self currentlyShownConversation];
    if (v5)
    {
      v6 = +[CKConversationList sharedConversationList];
      v7 = [v6 primaryFilterModeForConversation:v5];

      if (v7 != 9)
      {
        v9 = [(CKMessagesController *)self chatController];
        [v9 updateChatControllerForRecoveredJunkConversation];
        if (CKIsRunningInMacCatalyst())
        {
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              LOWORD(v15) = 0;
              _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "_junkConversationsRecovered: Moving back from catalyst filters.", &v15, 2u);
            }
          }

          [(CKMessagesController *)self catalystFiltersNavigationBackButtonTapped:0];
        }

        else
        {
          v11 = [(CKMessagesController *)self junkModalMessagesController];
          if (v11)
          {
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                v15 = 138412290;
                v16 = v11;
                _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "_junkConversationsRecovered: Performing junk recovery for junk modal messages controller: %@.", &v15, 0xCu);
              }
            }

            [(CKMessagesController *)self performJunkRecoveryForJunkModalMessagesController:v11];
          }

          else if ([(CKMessagesController *)self _shouldShowInboxView])
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v14 = IMConversationListFilterModeStringValue(1uLL);
                v15 = 138412290;
                v16 = v14;
                _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "[Filter Mode] _junkConversationsRecovered: Selecting filter mode: %@.", &v15, 0xCu);
              }
            }

            [(CKMessagesController *)self inboxViewController:0 didSelectFilterMode:1];
          }
        }

        goto LABEL_32;
      }

      if (!IMOSLoggingEnabled())
      {
LABEL_32:

        goto LABEL_33;
      }

      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "_junkConversationsRecovered: currently shown conversation is still junk. State not changed.", &v15, 2u);
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_32;
      }

      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "_junkConversationsRecovered: Not showing any conversation. State not changed.", &v15, 2u);
      }
    }

    goto LABEL_32;
  }

LABEL_33:
}

- (void)performJunkRecoveryForJunkModalMessagesController:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "performJunkRecoveryForJunkModalMessagesController: %@", buf, 0xCu);
    }
  }

  v6 = [v4 chatController];
  if ([(CKMessagesController *)self isCollapsed])
  {
    [v6 updateChatControllerForRecoveredJunkConversation];
    v7 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__CKMessagesController_performJunkRecoveryForJunkModalMessagesController___block_invoke;
    v10[3] = &unk_1E72EB8D0;
    v10[4] = self;
    v10[5] = v6;
    [v6 performAnimatedJunkRecoveryTransition:v10];
  }

  else
  {
    v7 = v9;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__CKMessagesController_performJunkRecoveryForJunkModalMessagesController___block_invoke_2;
    v9[3] = &unk_1E72EB8D0;
    v9[4] = self;
    v9[5] = v6;
    v8 = v6;
    [(CKMessagesController *)self dismissViewControllerAnimated:1 completion:v9];
  }
}

void __74__CKMessagesController_performJunkRecoveryForJunkModalMessagesController___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) conversation];
  [v1 showConversation:v2 animate:0];
}

void __74__CKMessagesController_performJunkRecoveryForJunkModalMessagesController___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) conversationListController];
  [v4 updateConversationList];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) conversation];
  [v2 showConversation:v3 animate:1];
}

- (BOOL)isShowingChatControllerWithUnsentText
{
  v3 = [(CKMessagesController *)self isShowingChatController];
  if (v3)
  {
    v4 = [(CKMessagesController *)self chatController];
    v5 = [v4 composition];
    v6 = [v5 hasContent];

    v7 = [(CKMessagesController *)self chatController];
    LOBYTE(v4) = [v7 isSendingMessage];

    LOBYTE(v3) = v6 & (v4 ^ 1);
  }

  return v3;
}

- (BOOL)shouldShowMakoIMessageAlert
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMSharedHelperDeviceIsiPad())
  {
    v2 = 1;
  }

  else
  {
    v2 = IMSharedHelperDeviceIsiPod();
  }

  v3 = CKIsBareMakoAccount();
  v4 = CKRegistrationBypassEnabled();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v2)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v11 = 138413058;
      v12 = v7;
      if (v3)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      if (!v4)
      {
        v6 = @"YES";
      }

      v16 = v6;
      v17 = 2112;
      v18 = @"YES";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "shouldShowMakoIMessageAlert - isRightDevice: [%@], isMako: [%@], registrationBypassDisabled: [%@], !isSigningInCatalyst: [%@]", &v11, 0x2Au);
    }
  }

  if (v3)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return !v4 && v9;
}

- (void)showMakoIMessageAlert
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"ADD_EMAIL_ALERT_BODY" value:&stru_1F04268F8 table:@"ChatKit"];

  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"SETTINGS" value:&stru_1F04268F8 table:@"ChatKit"];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ADD_EMAIL_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [CKAlertController alertControllerWithTitle:v8 message:v4 preferredStyle:1];

  v10 = [CKAlertAction actionWithTitle:v6 style:0 handler:&__block_literal_global_993_0];
  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v13 = [CKAlertAction actionWithTitle:v12 style:1 handler:0];

  [v9 addAction:v10];
  [v9 addAction:v13];
  [v9 presentFromViewController:self animated:1 completion:0];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Mako account: show alert with deep link to settings", v15, 2u);
    }
  }
}

void __45__CKMessagesController_showMakoIMessageAlert__block_invoke()
{
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=PASSWORD_AND_SECURITY"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (void)notifyThatKeepMessagesSettingWasResetIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  if (IMShouldDisplayKeepMessagesSetting())
  {
    IMClearDisplayKeepMessagesSetting();
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 canPresentOverKeyboard];

    v7 = MEMORY[0x1E696AEC0];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"RESET_KEEP_MESSAGES_SETTING_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    v11 = [v10 localizedModel];
    v12 = [v7 stringWithFormat:v9, v11];

    v13 = [MEMORY[0x1E69DC668] sharedApplication];
    v14 = [v13 userInterfaceLayoutDirection];

    if (v14 == 1)
    {
      v15 = @"\u200F";
    }

    else
    {
      v15 = @"\u200E";
    }

    v16 = [(__CFString *)v15 stringByAppendingString:v12];

    v17 = [CKAlertController alertControllerWithTitle:v16 message:0 preferredStyle:1];
    v18 = CKFrameworkBundle();
    v19 = [v18 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__CKMessagesController_notifyThatKeepMessagesSettingWasResetIfNeededWithCompletion___block_invoke;
    v21[3] = &unk_1E72F5780;
    v23 = v6;
    v21[4] = self;
    v22 = v4;
    v20 = [CKAlertAction actionWithTitle:v19 style:0 handler:v21];
    [v17 addAction:v20];

    if ((v6 & 1) == 0)
    {
      [(CKMessagesController *)self becomeFirstResponder];
    }

    [v17 presentFromViewController:self animated:1 completion:0];
  }

  else
  {
    v4[2](v4);
  }
}

uint64_t __84__CKMessagesController_notifyThatKeepMessagesSettingWasResetIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) becomeFirstResponder];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)showStoreForURL:(id)a3 fromSourceApplication:(id)a4
{
  [(CKMessagesController *)self _presentAppStoreWithLaunchURL:a3 fromSourceApplication:a4];
  v4 = [MEMORY[0x1E69A8168] sharedInstance];
  [v4 trackEvent:*MEMORY[0x1E69A7310]];
}

- (void)_presentAppStoreWithLaunchURL:(id)a3 fromSourceApplication:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[CKBalloonPluginManager sharedInstance];
  v9 = [v8 isAppStoreEnabled];

  if (v9)
  {
    v10 = [(CKMessagesController *)self currentConversation];
    if ([v10 unreadCount])
    {
    }

    else
    {
      v18 = [(CKMessagesController *)self currentConversation];

      if (v18)
      {
LABEL_24:
        [(CKMessagesController *)self showConversation:v18 animate:0];
        v20 = [(CKMessagesController *)self chatController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v22 = [(CKMessagesController *)self chatController];
          [v22 presentAppStoreForURL:v6 fromSourceApplication:v7];
        }

LABEL_26:

        goto LABEL_27;
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [(CKMessagesController *)self conversationList];
    v12 = [v11 conversations];

    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = *v24;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v23 + 1) + 8 * v15);
        if (![v16 unreadCount])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v18 = v16;

      if (v18)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_12:
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Asked to launch to app store via open URL, but there are no active conversations. Bailing.", buf, 2u);
      }
    }

    v18 = 0;
    goto LABEL_26;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Asked to launch to app store via open URL, but the app store is not enabled. Bailing.", buf, 2u);
    }
  }

LABEL_27:
}

- (void)dismiss
{
  [(CKMessagesController *)self setStatusBarStyleViewController:0];
  [(CKMessagesController *)self _setEntryViewHidden:0];
  v3 = +[CKAdaptivePresentationController sharedInstance];
  [v3 dismissViewControllerAnimated:1 completion:&__block_literal_global_1002_1];
}

- (void)_setEntryViewHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKMessagesController *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(CKMessagesController *)self chatController];
    v8 = [v7 entryView];

    if (v3)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    if (!v3)
    {
      [v8 setHidden:0];
    }

    v10 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__CKMessagesController__setEntryViewHidden___block_invoke;
    v15[3] = &unk_1E72ED810;
    v16 = v8;
    v17 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__CKMessagesController__setEntryViewHidden___block_invoke_2;
    v12[3] = &unk_1E72F3BE8;
    v14 = v3;
    v13 = v16;
    v11 = v16;
    [v10 animateWithDuration:v15 animations:v12 completion:0.2];
  }
}

uint64_t __44__CKMessagesController__setEntryViewHidden___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) setHidden:1];
  }

  return result;
}

- (void)didBeginInstallingAppWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[CKAppInstallationWatcher sharedInstance];
  [v4 startListeningForAppBundleIdentifier:v3];
}

- (void)updateCompositionInEntryViewWithComposition:(id)a3
{
  v4 = a3;
  if ([(CKMessagesController *)self isComposingMessage])
  {
    [(CKMessagesController *)self composeChatController];
  }

  else
  {
    [(CKMessagesController *)self chatController];
  }
  v5 = ;
  v8 = [v5 entryView];

  v6 = [v8 composition];
  v7 = [v6 compositionByAppendingComposition:v4];

  [v8 setComposition:v7];
}

- (void)presentOnboardingViewControllerIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(CKMessagesController *)self onboardingControllerIsActive];
  v4 = [(CKMessagesController *)self shouldPresentOnboarding];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 67109376;
      v11 = v3;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "presentOnboardingViewControllerIfNeeded. isPresentingOnboarding=%{BOOL}d. presentOnboarding=%{BOOL}d.", &v10, 0xEu);
    }
  }

  if (v4)
  {
    v6 = [(CKMessagesController *)self onboardingControllerCreatingIfNecessary];
    v7 = [v6 presentOnboardingIfNeeded];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 67109120;
        v11 = v7;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "> willPresent=%{BOOL}d", &v10, 8u);
      }
    }

    if (((v7 | v3) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "CKOnboardingController no longer needed, deallocating. Running executeDeferredTasks.", &v10, 2u);
        }
      }

      [(CKMessagesController *)self setOnboardingController:0];
      [(CKMessagesController *)self executeDeferredTasks];
    }
  }

  else if (!v3)
  {
    [(CKMessagesController *)self setOnboardingController:0];
  }
}

- (void)presentOnboardingViewController:(id)a3
{
  v3 = [(CKMessagesController *)self onboardingControllerCreatingIfNecessary];
  [v3 presentNicknameSharingSetupFlowWithMemoji:0 forUserInitiatedEdit:0];
}

- (id)presentingViewControllerForOnboardingController:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKMessagesController *)self onboardingController];

  if (v5 == v4)
  {
    v7 = self;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Unexpected instance of onboardingController %@", &v9, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)onboardingControllerDidFinish:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Finishing onboarding in CKMessagesController", v6, 2u);
    }
  }

  [(CKMessagesController *)self setOnboardingController:0];
  [(CKMessagesController *)self executeDeferredTasks];
}

- (id)_fetchMeContactWithError:(id *)a3
{
  v4 = [MEMORY[0x1E69A7FD0] sharedInstance];
  v5 = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
  v6 = [v4 fetchMeContactWithKeys:v5 withError:a3];

  return v6;
}

- (void)showBusinessChatNotSupportedAlert
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"CANNOT_USE_MESSAGES_FOR_BUSINESS" value:&stru_1F04268F8 table:@"ChatKit"];
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"BUSINESS_CHAT_IS_CURRENTLY_NOT_SUPPORTED" value:&stru_1F04268F8 table:@"ChatKit"];
  v10 = [CKAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [CKAlertAction actionWithTitle:v8 style:0 handler:0];

  [v10 addAction:v9];
  [v10 setPreferredAction:v9];
  [v10 presentFromViewController:self animated:1 completion:0];
}

- (void)showLockdownAlertForBusinessChat
{
  v3 = IMSharedUtilitiesFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"LOCKDOWN_BIZ_CHAT_ALERT_TITLE" value:&stru_1F04268F8 table:@"IMSharedUtilities-Offramp"];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"LOCKDOWN_BIZ_CHAT_ALERT_TEXT" value:&stru_1F04268F8 table:@"IMSharedUtilities-Offramp"];
  v10 = [CKAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [CKAlertAction actionWithTitle:v8 style:0 handler:0];

  [v10 addAction:v9];
  [v10 setPreferredAction:v9];
  [v10 presentFromViewController:self animated:1 completion:0];
}

- (id)_newCameraBrowser
{
  v2 = +[CKBalloonPluginManager sharedInstance];
  v3 = IMBalloonExtensionIDWithSuffix();
  v4 = [v2 viewControllerForPluginIdentifier:v3 dataSource:0];

  return v4;
}

- (void)inboxViewController:(id)a3 didSelectFilterMode:(unint64_t)a4
{
  v61[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CKMessagesController *)self conversationListController];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = IMConversationListFilterModeStringValue(a4);
      v54 = 138412546;
      v55 = v6;
      v56 = 2112;
      v57 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "[Filter Mode] inboxViewController: %@ did select filter mode: %@", &v54, 0x16u);
    }
  }

  v10 = [v7 filterMode];
  [v7 setFilterMode:a4];
  v11 = [(CKMessagesController *)self conversationListController];
  v12 = [v11 contentScrollView];
  [v12 __ck_scrollToTop:0];

  v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v12) = [v13 isMergeFilteredThreadsEnabled];

  if (v12 && self->_filterModeForLoadedItems != a4)
  {
    v14 = [(CKMessagesController *)self conversationList];
    [v14 setFilterMode:a4];

    v15 = [MEMORY[0x1E69A5AF8] sharedInstance];
    [v15 clearHistoryAndReloadLastMessageForMergedFilteredChats];

    self->_filterModeForLoadedItems = a4;
  }

  if (v10 != a4)
  {
    v16 = [(CKMessagesController *)self conversationList];
    [v16 releaseWasKnownSenderHold];

    v17 = [(CKMessagesController *)self conversationList];
    [v17 updateConversationsWasKnownSender];

    v18 = [(CKMessagesController *)self conversationList];
    [v18 clearHoldInUnreadFilter];

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = IMConversationListFilterModeStringValue(a4);
        v54 = 138412290;
        v55 = v20;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "[Filter Mode] Filter mode was changed to %@", &v54, 0xCu);
      }
    }

    if (a4 != 7 && a4 != 9)
    {
      [v7 setEditingMode:0];
    }
  }

  if (![(CKMessagesController *)self isCollapsed])
  {
    v21 = [(CKMessagesController *)self currentlyShownConversation];
    v22 = v21;
    if (a4 == 7)
    {
      v23 = [(CKMessagesController *)self conversationList];
      v24 = [v23 pendingConversation];

      if (v24)
      {
        v25 = [(CKMessagesController *)self conversationListController];
        [(CKMessagesController *)self conversationListControllerTappedDeleteNewMessage:v25];
      }
    }

    else if (v21)
    {
      if ([v21 isPending])
      {
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [(CKMessagesController *)self composeChatController];
            v54 = 138412290;
            v55 = v27;
            _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "currentlyShownConversation is pending. Setting view controllers to %@", &v54, 0xCu);
          }
        }

        v28 = [(CKMessagesController *)self composeChatController];

        if (v28)
        {
          v29 = [(CKMessagesController *)self chatNavigationController];
          v30 = [(CKMessagesController *)self composeChatController];
          v61[0] = v30;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
          [v29 setViewControllers:v31];

          goto LABEL_43;
        }

        v40 = IMLogHandleForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [CKMessagesController inboxViewController:didSelectFilterMode:];
        }
      }

      else
      {
        v32 = [(CKMessagesController *)self conversationList];
        v33 = [v32 conversation:v22 includedInFilterMode:a4];

        if (!v33)
        {
          goto LABEL_43;
        }

        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = [(CKMessagesController *)self chatController];
            v54 = 138412290;
            v55 = v35;
            _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Should show selected conversation. Setting view controllers to %@", &v54, 0xCu);
          }
        }

        v36 = [(CKMessagesController *)self chatController];

        if (v36)
        {
          v37 = [(CKMessagesController *)self chatNavigationController];
          v38 = [(CKMessagesController *)self chatController];
          v60 = v38;
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
          [v37 setViewControllers:v39];

          goto LABEL_43;
        }

        v40 = IMLogHandleForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [CKMessagesController inboxViewController:didSelectFilterMode:];
        }
      }

      goto LABEL_43;
    }

    [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
LABEL_43:
  }

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    [v7 updateConversationList];
    if (!CKIsRunningInMacCatalyst())
    {
      v41 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v42 = [v41 isModernSplitViewControllerEnabled];

      if ((v42 & 1) == 0)
      {
        [(CKMessagesController *)self hideColumn:0];
      }
    }

    v43 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v44 = [v43 isModernSplitViewControllerEnabled];

    if ((v44 & 1) == 0)
    {
      [(CKMessagesController *)self showColumn:1];
    }
  }

  else if (CKIsRunningInMacCatalyst())
  {
    [v7 updateConversationList];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = [v6 navigationController];
        v47 = [v6 navigationController];
        v48 = [v47 viewControllers];
        v54 = 138412802;
        v55 = v7;
        v56 = 2112;
        v57 = v46;
        v58 = 2112;
        v59 = v48;
        _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "Pushing %@ onto %@. Current hierarchy: %@", &v54, 0x20u);
      }
    }

    v49 = [v6 navigationController];
    v50 = [v49 viewControllers];
    v51 = [v50 containsObject:v7];

    if (v51)
    {
      v52 = IMLogHandleForCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [CKMessagesController inboxViewController:didSelectFilterMode:];
      }
    }

    else
    {
      v53 = [v6 navigationController];
      [v53 pushViewController:v7 animated:1];
    }
  }
}

- (BOOL)inboxViewController:(id)a3 shouldShowFilterMode:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 9)
  {
    v8 = IMIsOscarEnabled();
LABEL_8:
    v7 = v8;
    goto LABEL_9;
  }

  if (a4 != 6)
  {
    v7 = 1;
    goto LABEL_9;
  }

  if ((IMIsOscarEnabled() & 1) == 0)
  {
    v8 = [(CKMessagesController *)self _spamFilteringEnabled];
    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)newInputSnapshotView
{
  if ([(CKMessagesController *)self isComposingMessage])
  {
    v3 = [(CKMessagesController *)self composeChatController];
  }

  else
  {
    v3 = self->_chatController;
  }

  v4 = v3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(CKCoreChatController *)v4 newInputSnapshotView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)requestDismissKeyboardSnapshotForSendMenu
{
  if ([(CKMessagesController *)self isComposingMessage])
  {
    v3 = [(CKMessagesController *)self composeChatController];
  }

  else
  {
    v3 = self->_chatController;
  }

  v4 = v3;
  if (v3)
  {
    v6 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v6;
    if (isKindOfClass)
    {
      [(CKCoreChatController *)v6 requestDismissKeyboardSnapshotForSendMenu];
      v4 = v6;
    }
  }
}

- (void)requestShowKeyboardSnapshotForSendMenu
{
  if ([(CKMessagesController *)self isComposingMessage])
  {
    v3 = [(CKMessagesController *)self composeChatController];
  }

  else
  {
    v3 = self->_chatController;
  }

  v4 = v3;
  if (v3)
  {
    v6 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v6;
    if (isKindOfClass)
    {
      [(CKCoreChatController *)v6 requestShowKeyboardSnapshotForSendMenu];
      v4 = v6;
    }
  }
}

- (BOOL)sendMenuPresentationShouldUseKeyboardSnapshot:(id)a3
{
  if ([(CKMessagesController *)self isComposingMessage])
  {
    v4 = [(CKMessagesController *)self composeChatController];
  }

  else
  {
    v4 = self->_chatController;
  }

  v5 = v4;
  v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKScrollViewController *)v5 isKeyboardVisible];

  return v6;
}

- (void)_updateTraitEnvironmentWithLatestSystemGlassSetting
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[CKUtilities isIphone])
  {
    v3 = +[CKUtilities systemGlassLegibilitySetting];
    v4 = [(CKMessagesController *)self viewIfLoaded];
    v5 = [v4 window];

    v6 = [v5 traitOverrides];
    [v6 setNSIntegerValue:v3 forTrait:objc_opt_class()];

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      v9 = v3;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Updating system glass setting trait with setting = {%ld}", &v8, 0xCu);
    }
  }
}

- (CKMessagesControllerDelegate)messagesControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_messagesControllerDelegate);

  return WeakRetained;
}

- (CKDetailsNavigationController)detailsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsNavigationController);

  return WeakRetained;
}

- (CKAlertController)currentSMSRelayPinAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_currentSMSRelayPinAlert);

  return WeakRetained;
}

- (id)generateSelectionViewController
{
  v2 = self;
  v3 = CKMessagesController.generateSelectionViewController()();

  return v3;
}

- (void)didSelectFilterFromViewMenu:(id)a3
{
  v4 = a3;
  v5 = self;
  CKMessagesController.didSelectFilterFromViewMenu(command:)(v4);
}

- (void)filterCommandSelected:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190AB9990(v4);
}

- (void)messageFilteringSelected:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1908AF6CC(v4);
}

- (void)showSpamCategoryUpdatedAlert
{
  v2 = self;
  CKMessagesController.showSpamCategoryUpdatedAlert()();
}

- (void)cleanUpInteractionViews
{
  v2 = self;
  sub_190C94890();
}

- (void)chatControllerDidChangeBackground:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = [a2 chatController];
  v9 = [a2 composeChatController];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __85__CKMessagesController__checkChatControllerLeaksForExistingController_newController___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = WeakRetained;
  v5 = [v4 conversation];
  v6 = 134218242;
  v7 = WeakRetained;
  v8 = 2112;
  v9 = v5;
  _os_log_fault_impl(&dword_19020E000, a2, OS_LOG_TYPE_FAULT, "CKChatController leak detected for instance %p conversation %@", &v6, 0x16u);
}

- (void)showInboxViewControllerAnimated:(void *)a1 .cold.1(void *a1)
{
  [a1 _shouldShowInboxView];
  [a1 _wantsThreeColumnLayout];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)changeFilterMode:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_sourceViewForFluidTransitionWithConversation:.cold.3()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end
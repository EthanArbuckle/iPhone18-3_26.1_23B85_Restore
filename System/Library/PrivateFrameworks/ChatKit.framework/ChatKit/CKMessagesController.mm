@interface CKMessagesController
- (BOOL)_changeFilterModeIfNeeded;
- (BOOL)_hasCurrentConversations;
- (BOOL)_isSendingNewComposeMessage;
- (BOOL)_isShowingFullscreenController;
- (BOOL)_isShowingModalChatController;
- (BOOL)_isTimedOutForState:(id)state;
- (BOOL)_shouldShowSMSRelayPrompt;
- (BOOL)_shouldShowSMSRelayPromptOnLaunch;
- (BOOL)_wantsThreeColumnLayout;
- (BOOL)becomeFirstResponder;
- (BOOL)currentCompositionHasContent;
- (BOOL)daemonIsConnected;
- (BOOL)hasBusinessRecipientWithRecipientIDs:(id)ds;
- (BOOL)hasDetailsNavigationController;
- (BOOL)hasPresentedInspectorForChatController:(id)controller;
- (BOOL)hasRecentlyDeletedFilterSelected;
- (BOOL)hasUnreadFilteredConversationsIgnoringMessages:(id)messages;
- (BOOL)inboxViewController:(id)controller shouldShowFilterMode:(unint64_t)mode;
- (BOOL)isAnimatingMessageSend;
- (BOOL)isComposingMessage;
- (BOOL)isConversationShown:(id)shown;
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
- (BOOL)resumeToConversation:(id)conversation;
- (BOOL)sendMenuPresentationShouldUseKeyboardSnapshot:(id)snapshot;
- (BOOL)shouldAutorotate;
- (BOOL)shouldRestoreToConversationListForState:(id)state;
- (BOOL)shouldShowMakoIMessageAlert;
- (BOOL)shouldUseMinimumSafeAreas;
- (BOOL)showUnreadConversationsWithLastConversation:(id)conversation ignoringMessages:(id)messages;
- (BOOL)splitViewController:(id)controller collapseSecondaryViewController:(id)viewController ontoPrimaryViewController:(id)primaryViewController;
- (CKAlertController)currentSMSRelayPinAlert;
- (CKConversationListControllerProtocol)conversationListController;
- (CKDetailsNavigationController)detailsNavigationController;
- (CKInboxModel)inboxModel;
- (CKMessagesController)init;
- (CKMessagesController)initWithStyle:(int64_t)style;
- (CKMessagesControllerDelegate)messagesControllerDelegate;
- (CKMessagesSplitViewCoordinator)splitViewCoordinator;
- (IMSyncedSettingsManager)syncedSettingsManager;
- (NSSet)alertSuppressionContexts;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller;
- (UINavigationController)chatNavigationController;
- (UINavigationController)conversationListNavigationController;
- (UINavigationController)redesignedDetailsNavigationController;
- (UIViewController)inboxViewController;
- (_TtC7ChatKit25CKSelectionViewController)selectionViewController;
- (double)_splitViewController:(id)controller constrainPrimaryColumnWidthForResizeWidth:(double)width;
- (id)_fetchMeContactWithError:(id *)error;
- (id)_newCameraBrowser;
- (id)_recentlyDeletedDisclosureText;
- (id)_recipientHandle;
- (id)_sourceViewForFluidTransitionWithConversation:(id)conversation;
- (id)_unreadCountStringForFilterMode:(unint64_t)mode;
- (id)backNavigationItemForChatController:(id)controller;
- (id)baseViewControllersForConversationListNavigationController;
- (id)childViewControllerForStatusBarHidden;
- (id)cnLabelForPhoneNumber:(id)number contact:(id)contact;
- (id)conversationMatchingGUID:(id)d;
- (id)currentlyShownConversation;
- (id)firstConversationExactlyMatchingDisplayName:(id)name;
- (id)generateSelectionViewController;
- (id)inboxItemForFilterMode:(unint64_t)mode localizedTitle:(id)title andSystemImage:(id)image;
- (id)inboxItemForFilterMode:(unint64_t)mode title:(id)title andSystemImage:(id)image;
- (id)initAsOscarModal;
- (id)junkModalMessagesController;
- (id)navigationBarBackdropLayerGroupNameForChatController:(id)controller;
- (id)newInboxModel;
- (id)newInputSnapshotView;
- (id)nonConversationListControllersInNavigationStack;
- (id)onboardingControllerCreatingIfNecessary;
- (id)preferredFocusEnvironments;
- (id)presentingViewControllerForOnboardingController:(id)controller;
- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (int64_t)unreadCountForCurrentFilterModeForChatController:(id)controller;
- (unint64_t)currentConversationListFilterMode;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)__updateAlertSuppressionContext;
- (void)_appStateChange:(id)change;
- (void)_appStateDidResumeFromInactive:(id)inactive;
- (void)_chatRegistryDidLoad:(id)load;
- (void)_checkChatControllerLeaksForExistingController:(id)controller newController:(id)newController;
- (void)_checkPushToTranscriptTimingWithStartTime:(double)time;
- (void)_configureCallOptionsForConversationMenu;
- (void)_configureCommand:(id)command enabled:(BOOL)enabled;
- (void)_conversationFilteringStateChangedNotification:(id)notification;
- (void)_conversationLeft:(id)left;
- (void)_conversationListFinishedMerging:(id)merging;
- (void)_didUpdateCollapsedState;
- (void)_filterMessageRequestsUpdated:(id)updated;
- (void)_handleInitialLoad;
- (void)_hideConversationListForIPadPPTTest;
- (void)_installTickerIfNeeded;
- (void)_junkConversationsRecovered:(id)recovered;
- (void)_keyCommandChangeConversation:(BOOL)conversation;
- (void)_performNonInspectorDetailsViewDismissalWithCompletion:(id)completion;
- (void)_pinVerificationShouldDismiss:(id)dismiss;
- (void)_populateChatNavigationControllerWithSelection;
- (void)_presentAppStoreWithLaunchURL:(id)l fromSourceApplication:(id)application;
- (void)_presentViewControllerInInspector:(id)inspector;
- (void)_setEntryViewHidden:(BOOL)hidden;
- (void)_setFilterUnknownSenders:(id)senders;
- (void)_setIsShowingNoSelectionUI:(BOOL)i;
- (void)_showChatControllerLeakAlertUI:(id)i;
- (void)_showNewComposeWithRecipients:(id)recipients composition:(id)composition chatIdentifier:(id)identifier bizIntent:(id)intent launchPluginWithBundleID:(id)d pluginLaunchPayload:(id)payload startAudioRecording:(BOOL)recording animated:(BOOL)self0 simID:(id)self1 sendMessageHandler:(id)self2;
- (void)_showNextSMSRelayPINPrompt;
- (void)_showSMSRelayPromptIfNeeded;
- (void)_showSMSRelayPromptOnLaunchIfNeeded;
- (void)_smsRelayPINReceived:(id)received;
- (void)_splitViewController:(id)controller didEndResizingColumn:(int64_t)column;
- (void)_splitViewController:(id)controller willBeginResizingColumn:(int64_t)column;
- (void)_unreadCountDidChange:(id)change;
- (void)_updateAlertSuppressionContext;
- (void)_updateInboxWidth;
- (void)_updateSelectionViewWithCount:(int64_t)count;
- (void)_updateTraitEnvironmentWithLatestSystemGlassSetting;
- (void)_updateTraitEnvironmentWithLatestWindowSceneUserInterfaceStyle;
- (void)_updateViewsWithChatControllerBackgroundTraits;
- (void)applicationWillResume:(id)resume;
- (void)cancelAndDestroyComposition;
- (void)cancelNewMessageCompositionAnimated:(BOOL)animated;
- (void)catalystFilterModeSelected:(unint64_t)selected;
- (void)catalystFiltersNavigationBackButtonTapped:(id)tapped;
- (void)changeFilterMode:(unint64_t)mode;
- (void)chatController:(id)controller balloonViewWillDismissEditMenu:(id)menu;
- (void)chatController:(id)controller didDetachDetailsNavigationController:(id)navigationController;
- (void)chatController:(id)controller didFinishDismissAnimationForSendMenuViewController:(id)viewController;
- (void)chatController:(id)controller didReportSpamForConversation:(id)conversation;
- (void)chatController:(id)controller didRequestNewComposePresentationWithSender:(id)sender;
- (void)chatController:(id)controller didSendCompositionInConversation:(id)conversation;
- (void)chatController:(id)controller didStartTextSelectionInView:(id)view;
- (void)chatController:(id)controller didUnsubscribeForConversation:(id)conversation;
- (void)chatController:(id)controller forwardComposition:(id)composition;
- (void)chatController:(id)controller requestDeleteJunkConversation:(id)conversation;
- (void)chatController:(id)controller requestPresentSendMenu:(id)menu currentlyPresentedViewController:(id)viewController;
- (void)chatController:(id)controller requestRecoverJunkConversation:(id)conversation;
- (void)chatController:(id)controller willSendComposition:(id)composition inConversation:(id)conversation;
- (void)chatControllerDidChangeBackground:(id)background;
- (void)chatControllerDidChangeDeferringSystemNavigationPopGestureForPlusButton:(id)button;
- (void)chatControllerDidReselectConversation:(id)conversation;
- (void)checkForRCSAndCarrierAlerts;
- (void)cleanUpInteractionViews;
- (void)composeChatController:(id)controller didSelectNewConversation:(id)conversation;
- (void)composeChatControllerDidCancelComposition:(id)composition;
- (void)conversationListControllerTappedDeleteNewMessage:(id)message;
- (void)conversationListControllerWillDismissSearchResultsController;
- (void)conversationListControllerWillPresentSearchResultsController;
- (void)conversationListFailedToSelectShownConversation;
- (void)conversationListIsDeletingConversations:(id)conversations;
- (void)conversationListUpdatedSelectedIndexPathCount:(int64_t)count;
- (void)conversationListWillBeginEditing:(BOOL)editing;
- (void)dealloc;
- (void)deleteConversation:(id)conversation;
- (void)didBeginInstallingAppWithBundleIdentifier:(id)identifier;
- (void)didReceiveMemoryWarning;
- (void)didSelectFilterFromViewMenu:(id)menu;
- (void)dismiss;
- (void)dismissAndReopenDetailsNavigationController;
- (void)dismissChatControllerIfVisibleAnimated:(BOOL)animated;
- (void)dismissDetailsControllerAnimated:(BOOL)animated;
- (void)dismissDetailsNavigationControllerWithCompletion:(id)completion;
- (void)dismissDetailsViewAndShowConversationListWithCompletion:(id)completion;
- (void)dismissKeyboardIfVisible;
- (void)dismissPhotosGridIfNeeded;
- (void)escButtonPressed:(id)pressed;
- (void)executeDeferredHandleURLBlock;
- (void)executeDeferredTasks;
- (void)filterCommandSelected:(id)selected;
- (void)find:(id)find;
- (void)findNext:(id)next;
- (void)findPrevious:(id)previous;
- (void)focusStateDidChange;
- (void)handleAnalyticsOnBackground;
- (void)inboxViewController:(id)controller didSelectFilterMode:(unint64_t)mode;
- (void)initialize;
- (void)keyCommandCompose:(id)compose;
- (void)keyCommandDeleteConversation:(id)conversation;
- (void)keyCommandFind:(id)find;
- (void)keyCommandOpenConversationInNewWindow:(id)window;
- (void)keyCommandSelectFirstActiveConversation;
- (void)keyCommandSelectPinnedConversation:(id)conversation;
- (void)legacyDidSelectFilterFromViewMenu:(id)menu;
- (void)loadView;
- (void)messageFilteringSelected:(id)selected;
- (void)messagesSceneDelegateDidUpdateEffectiveGeometryForScene:(id)scene previousEffectiveGeometry:(id)geometry;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)notifyThatKeepMessagesSettingWasResetIfNeededWithCompletion:(id)completion;
- (void)onboardingControllerDidFinish:(id)finish;
- (void)parentControllerDidBecomeActive;
- (void)parentControllerDidResume:(BOOL)resume animating:(BOOL)animating;
- (void)performJunkRecoveryForJunkModalMessagesController:(id)controller;
- (void)performResumeDeferredSetup;
- (void)performSearchForQuery:(id)query;
- (void)performVisibleAppPluginIconPrefetch:(id)prefetch;
- (void)persistColumnWidths:(id)widths;
- (void)popToConversationListIfNecessaryAnimated:(BOOL)animated;
- (void)prepareForResume;
- (void)prepareForSuspend;
- (void)presentDetailsNavigationController:(id)controller;
- (void)presentDetailsViewControllerAnimated:(BOOL)animated;
- (void)presentFocusStatusAuthorizationAlertIfNecessary;
- (void)presentOnboardingViewController:(id)controller;
- (void)presentOnboardingViewControllerIfNeeded;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)reloadMacToolbarItems;
- (void)requestDismissKeyboardSnapshotForSendMenu;
- (void)requestShowKeyboardSnapshotForSendMenu;
- (void)screenTimeOKPressedForChatController:(id)controller;
- (void)setChatController:(id)controller;
- (void)setChatControllerUserInterfaceStyle:(int64_t)style;
- (void)setComposeChatController:(id)controller;
- (void)setComposeChatNavigationController:(id)controller;
- (void)setCurrentConversation:(id)conversation keepAllCurrentlyLoadedMessages:(BOOL)messages;
- (void)setDeferredHandleURLBlock:(id)block;
- (void)setupBizNavBarForConversation:(id)conversation;
- (void)setupCKDismissOnInteractionView;
- (void)showBusinessChatNotSupportedAlert;
- (void)showConversation:(id)conversation animate:(BOOL)animate;
- (void)showConversation:(id)conversation animate:(BOOL)animate forceToTranscript:(BOOL)transcript keepAllCurrentlyLoadedMessages:(BOOL)messages userInitiated:(BOOL)initiated;
- (void)showConversationAndMessageForChatGUID:(id)d messageGUID:(id)iD withInlineReplyOverlay:(BOOL)overlay animate:(BOOL)animate;
- (void)showConversationInNewWindow:(id)window;
- (void)showConversationListWithAnimation:(BOOL)animation didDismissController:(BOOL *)controller;
- (void)showDebugMenu;
- (void)showInboxViewControllerAnimated:(BOOL)animated;
- (void)showLockdownAlertForBusinessChat;
- (void)showMakoIMessageAlert;
- (void)showNewMessageCompositionPanelWithRecipients:(id)recipients chatID:(id)d composition:(id)composition appendToExistingDraft:(BOOL)draft suggestedReplies:(id)replies animated:(BOOL)animated bizIntent:(id)intent launchPluginWithBundleID:(id)self0 pluginLaunchPayload:(id)self1 startAudioRecording:(BOOL)self2 simID:(id)self3 sendMessageHandler:(id)self4;
- (void)showSpamCategoryUpdatedAlert;
- (void)showStoreForURL:(id)l fromSourceApplication:(id)application;
- (void)splitViewController:(id)controller willHideColumn:(int64_t)column;
- (void)splitViewController:(id)controller willShowColumn:(int64_t)column;
- (void)splitViewControllerDidCollapse:(id)collapse;
- (void)splitViewControllerDidExpand:(id)expand;
- (void)stopForcingOrientation;
- (void)toggleSensitiveUI;
- (void)updateColumnWidths;
- (void)updateCompositionInEntryViewWithComposition:(id)composition;
- (void)updateInboxAndConversationList;
- (void)updateInterfaceOrientationsAnimated:(BOOL)animated;
- (void)updateSupportedInterfaceOrientations:(unint64_t)orientations;
- (void)updatedFilterMode;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation CKMessagesController

- (CKMessagesController)init
{
  if (-[CKMessagesController _wantsThreeColumnLayout](self, "_wantsThreeColumnLayout") || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isModernSplitViewControllerEnabled"), v3, v4))
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

    if (isModernSplitViewControllerEnabled)
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
  wantsUniversalThreeColumn = [v3 wantsUniversalThreeColumn];

  return wantsUniversalThreeColumn;
}

- (void)initialize
{
  [(CKMessagesController *)self setDefinesPresentationContext:1];
  self->_isInitialLoad = 1;
  self->_isInitialLayout = 1;
  self->_attachmentPreviewQosClass = 17;
  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  [mEMORY[0x1E69A8088] addDelegate:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__conversationLeft_ name:@"CKConversationListConversationLeftNotification" object:0];
  [defaultCenter addObserver:self selector:sel__conversationListFinishedMerging_ name:@"CKConversationListFinishedMergingChatsNotification" object:0];
  [defaultCenter addObserver:self selector:sel__chatRegistryDidLoad_ name:*MEMORY[0x1E69A58A0] object:0];
  [defaultCenter addObserver:self selector:sel__appStateChange_ name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter addObserver:self selector:sel__appStateChange_ name:*MEMORY[0x1E69DDBC0] object:0];
  [defaultCenter addObserver:self selector:sel__appStateChange_ name:*MEMORY[0x1E69DDAD0] object:0];
  [defaultCenter addObserver:self selector:sel__appStateDidResumeFromInactive_ name:@"__kCKApplicationStateResumeFromInActiveNotification" object:0];
  [defaultCenter addObserver:self selector:sel__conversationFilteringStateChangedNotification_ name:CKMessageFilteringChangedNotification[0] object:0];
  [defaultCenter addObserver:self selector:sel__setFilterUnknownSenders_ name:*MEMORY[0x1E69A7B68] object:0];
  [defaultCenter addObserver:self selector:sel_performVisibleAppPluginIconPrefetch_ name:@"CKBrowserSelectionControllerVisibleSwitcherPluginsChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel_performVisibleAppPluginIconPrefetch_ name:@"com.apple.messages.CKPluginPrewarmForLaunchCompleteNotification" object:0];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    v6 = *MEMORY[0x1E69A7DD0];
  }

  else
  {
    v6 = *MEMORY[0x1E69A5920];
  }

  [defaultCenter addObserver:self selector:sel__unreadCountDidChange_ name:v6 object:0];
  [defaultCenter addObserver:self selector:sel__junkConversationsRecovered_ name:@"CKConversationListDidRecoverJunkConversationsNotification" object:0];
  [defaultCenter addObserver:self selector:sel__systemGlassLegibilitySettingDidChange_ name:@"UIViewGlassLegibilityDidChangeNotification" object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleSIMSubcriptionUpdateNotification, *MEMORY[0x1E69A78C0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (UINavigationController)chatNavigationController
{
  if (!self->_chatNavigationController)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    navigationControllerClass = [v3 navigationControllerClass];

    v5 = [navigationControllerClass alloc];
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
      theme = [v10 theme];
      navBarStyle = [theme navBarStyle];
      navigationBar = [(UINavigationController *)self->_chatNavigationController navigationBar];
      [navigationBar setBarStyle:navBarStyle];

      v14 = +[CKUIBehavior sharedBehaviors];
      shouldUseTranslucentBars = [v14 shouldUseTranslucentBars];
      navigationBar2 = [(UINavigationController *)self->_chatNavigationController navigationBar];
      [navigationBar2 setTranslucent:shouldUseTranslucentBars];

      v17 = +[CKUIBehavior sharedBehaviors];
      conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
      [v17 setupNavBarAppearanceWithNavigationController:conversationListNavigationController];
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
  navigationControllerClass = [v4 navigationControllerClass];

  v6 = +[CKUIBehavior sharedBehaviors];
  navigationBarClass = [v6 navigationBarClass];

  if (CKIsRunningInMacCatalyst())
  {
    v8 = objc_opt_class();
  }

  else
  {
    v8 = 0;
  }

  v9 = [[navigationControllerClass alloc] initWithNavigationBarClass:navigationBarClass toolbarClass:v8];
  v10 = self->_conversationListNavigationController;
  self->_conversationListNavigationController = v9;

  navigationBar = [(UINavigationController *)self->_conversationListNavigationController navigationBar];
  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  [navigationBar setBarStyle:{objc_msgSend(theme, "navBarStyle")}];

  navigationBar2 = [(UINavigationController *)self->_conversationListNavigationController navigationBar];
  [navigationBar2 setTranslucent:1];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isModernFilteringEnabled])
  {
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isConversationListRefreshEnabled = [mEMORY[0x1E69A8070]2 isConversationListRefreshEnabled];

    if (!isConversationListRefreshEnabled)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  navigationBar3 = [(UINavigationController *)self->_conversationListNavigationController navigationBar];
  [navigationBar3 setPrefersLargeTitles:CKIsRunningInMacCatalyst() == 0];

LABEL_10:
  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070]3 isModernSplitViewControllerEnabled];

  if ((isModernSplitViewControllerEnabled & 1) == 0)
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
  theme = [v3 theme];
  messagesControllerBackgroundColor = [theme messagesControllerBackgroundColor];

  if (messagesControllerBackgroundColor)
  {
    view = [(CKMessagesController *)self view];
    [view setBackgroundColor:messagesControllerBackgroundColor];
  }

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

    if ((isModernSplitViewControllerEnabled & 1) == 0)
    {
      v9 = +[CKUIBehavior sharedBehaviors];
      [v9 minConversationListWidth];
      [(CKMessagesController *)self setMinimumSupplementaryColumnWidth:?];
    }

    [(CKMessagesController *)self setPreferredSplitBehavior:0];
    if (CKIsRunningInMacCatalyst())
    {
      view2 = [(CKMessagesController *)self view];
      [view2 setOpaque:0];

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
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernSplitViewControllerEnabled2 = [mEMORY[0x1E69A8070]2 isModernSplitViewControllerEnabled];

    v21 = isModernSplitViewControllerEnabled2 ^ 1u;
    conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
    [(CKMessagesController *)self setViewController:conversationListNavigationController forColumn:v21];

    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    [(CKMessagesController *)self setViewController:chatNavigationController forColumn:2];
  }

  else
  {
    if (CKIsRunningInMacCatalyst())
    {
      view3 = [(CKMessagesController *)self view];
      [view3 setOpaque:0];

      [(CKMessagesController *)self setPrimaryBackgroundStyle:1];
    }

    isOscarModal = [(CKMessagesController *)self isOscarModal];
    conversationListNavigationController2 = [(CKMessagesController *)self conversationListNavigationController];
    v16 = conversationListNavigationController2;
    if (isOscarModal)
    {
      v26[0] = conversationListNavigationController2;
      chatNavigationController2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [(CKMessagesController *)self setViewControllers:chatNavigationController2];
    }

    else
    {
      v25[0] = conversationListNavigationController2;
      chatNavigationController2 = [(CKMessagesController *)self chatNavigationController];
      v25[1] = chatNavigationController2;
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
  array = [MEMORY[0x1E695DF70] array];
  if (![(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    if ([(CKMessagesController *)self _shouldShowInboxView])
    {
      inboxViewController = [(CKMessagesController *)self inboxViewController];

      if (inboxViewController)
      {
        inboxViewController2 = [(CKMessagesController *)self inboxViewController];
        [array addObject:inboxViewController2];
      }
    }
  }

  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController updateNavigationItems];

  conversationListController2 = [(CKMessagesController *)self conversationListController];
  [array addObject:conversationListController2];

  return array;
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

  baseViewControllersForConversationListNavigationController = [(CKMessagesController *)self baseViewControllersForConversationListNavigationController];
  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    if (![(CKMessagesController *)self _shouldShowInboxView])
    {
      [(CKMessagesController *)self setInboxViewController:0];
      [(CKMessagesController *)self setPresentsWithGesture:0];
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

      if ((isModernSplitViewControllerEnabled & 1) == 0)
      {
        [(CKMessagesController *)self setViewController:0 forColumn:0];
      }

      goto LABEL_14;
    }

    inboxViewController = [(CKMessagesController *)self inboxViewController];
    navigationItem = [inboxViewController navigationItem];
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"FILTERS_BACK_BUTTON" value:&stru_1F04268F8 table:@"ChatKit"];
    [navigationItem setBackButtonTitle:v8];

    [(CKMessagesController *)self setPresentsWithGesture:CKIsRunningInMacCatalyst() == 0];
    inboxViewController2 = [(CKMessagesController *)self inboxViewController];
    [(CKMessagesController *)self setViewController:inboxViewController2 forColumn:0];

    inboxViewController3 = [(CKMessagesController *)self inboxViewController];
    navigationController = [inboxViewController3 navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([mEMORY[0x1E69A8070]2 isModernFilteringEnabled])
    {
      mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isConversationListRefreshEnabled = [mEMORY[0x1E69A8070]3 isConversationListRefreshEnabled];

      if (!isConversationListRefreshEnabled)
      {
LABEL_14:
        v19 = CKWantsInboxVisible() == 0;
        mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isModernSplitViewControllerEnabled2 = [mEMORY[0x1E69A8070]4 isModernSplitViewControllerEnabled];

        if (v19)
        {
          if ((isModernSplitViewControllerEnabled2 & 1) == 0)
          {
            [(CKMessagesController *)self hideColumn:0];
          }
        }

        else if ((isModernSplitViewControllerEnabled2 & 1) == 0)
        {
          [(CKMessagesController *)self showColumn:0];
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    navigationItem2 = [(CKMessagesController *)self navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:1];

    goto LABEL_14;
  }

LABEL_19:
  chatNavigationController = [(CKMessagesController *)self chatNavigationController];
  viewControllers = [chatNavigationController viewControllers];
  if ([viewControllers count])
  {
    conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
    viewControllers2 = [conversationListNavigationController viewControllers];
    chatNavigationController2 = [(CKMessagesController *)self chatNavigationController];
    v27 = [viewControllers2 containsObject:chatNavigationController2];

    if (!v27)
    {
      goto LABEL_28;
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        chatNavigationController3 = [(CKMessagesController *)self chatNavigationController];
        v32 = 138412546;
        v33 = chatNavigationController3;
        v34 = 2112;
        v35 = baseViewControllersForConversationListNavigationController;
        _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "updateInboxAndConversationList, adding chatNavigationController: %@ to updatedConversationListNavStack: %@", &v32, 0x16u);
      }
    }

    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    [baseViewControllersForConversationListNavigationController addObject:chatNavigationController];
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
      v33 = baseViewControllersForConversationListNavigationController;
      _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "updateInboxAndConversationList, setting conversationListNavigationController viewControllers to: %@", &v32, 0xCu);
    }
  }

  conversationListNavigationController2 = [(CKMessagesController *)self conversationListNavigationController];
  [conversationListNavigationController2 setViewControllers:baseViewControllersForConversationListNavigationController];
}

- (CKConversationListControllerProtocol)conversationListController
{
  conversationListController = self->_conversationListController;
  if (!conversationListController)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    conversationListControllerClass = [v4 conversationListControllerClass];

    if (IMIsOscarEnabled() && [(CKMessagesController *)self isOscarModal]&& conversationListControllerClass == objc_opt_class())
    {
      initForOscarModal = [[CKConversationListCollectionViewController alloc] initForOscarModal];
    }

    else
    {
      initForOscarModal = objc_opt_new();
    }

    v7 = self->_conversationListController;
    self->_conversationListController = initForOscarModal;

    [(CKConversationListControllerProtocol *)self->_conversationListController setDelegate:self];
    conversationListController = self->_conversationListController;
  }

  return conversationListController;
}

- (void)_populateChatNavigationControllerWithSelection
{
  v14[1] = *MEMORY[0x1E69E9840];
  isCollapsed = [(CKMessagesController *)self isCollapsed];
  v4 = IMOSLoggingEnabled();
  if (isCollapsed)
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

    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    selectionViewController = [(CKMessagesController *)self selectionViewController];
    v14[0] = selectionViewController;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [chatNavigationController setViewControllers:v9];

    [(CKMessagesController *)self setChatControllerUserInterfaceStyle:0];
    selectionViewController2 = [(CKMessagesController *)self selectionViewController];
    macToolbarController = [(CKMessagesController *)self macToolbarController];
    [selectionViewController2 configureWithToolbarController:macToolbarController];

    macToolbarController2 = [(CKMessagesController *)self macToolbarController];
    [macToolbarController2 reloadToolbarItems];
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
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

    if ((isModernSplitViewControllerEnabled & 1) == 0)
    {
      [v3 minConversationListWidth];
      [(CKMessagesController *)self setMinimumSupplementaryColumnWidth:?];
      [v3 maxConversationListWidth];
      [(CKMessagesController *)self setMaximumSupplementaryColumnWidth:?];
    }
  }

  [(CKMessagesController *)self updateColumnWidths];
  v6 = +[CKMenuBarManager sharedInstance];
  allKeyboardShortcutKeyCommands = [v6 allKeyboardShortcutKeyCommands];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = allKeyboardShortcutKeyCommands;
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

  syncedSettingsManager = [(CKMessagesController *)self syncedSettingsManager];
  [syncedSettingsManager addObserver:self selector:sel__filterMessageRequestsUpdated_ key:4];
}

- (void)updateColumnWidths
{
  splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
  [splitViewCoordinator updateColumnWidths];
}

- (void)_updateInboxWidth
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  if ((isModernSplitViewControllerEnabled & 1) == 0)
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
  currentConversations = [v3 currentConversations];
  if ([currentConversations count])
  {
    v5 = 1;
  }

  else
  {
    currentConversation = [(CKMessagesController *)self currentConversation];
    v5 = currentConversation != 0;
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

  chatController = [(CKMessagesController *)self chatController];
  isHandwritingLandscape = [chatController isHandwritingLandscape];

  if (isHandwritingLandscape)
  {
    return 2;
  }

  sendMenuPresentation = [(CKMessagesController *)self sendMenuPresentation];

  if (!sendMenuPresentation || (-[CKMessagesController viewIfLoaded](self, "viewIfLoaded"), v8 = objc_claimAutoreleasedReturnValue(), [v8 window], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "windowScene"), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10))
  {
    chatController2 = [(CKMessagesController *)self chatController];
    conversation = [chatController2 conversation];
    if ([conversation isStewieConversation])
    {
      mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
      isStewieActive = [mEMORY[0x1E69A5B00] isStewieActive];

      if (isStewieActive)
      {
        return 2;
      }
    }

    else
    {
    }

    presentedViewController = [(CKMessagesController *)self presentedViewController];
    if (presentedViewController && (v17 = presentedViewController, [(CKMessagesController *)self presentedViewController], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18, v17, (v19 & 1) == 0))
    {
      presentedViewController2 = [(CKMessagesController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        presentedViewController3 = [(CKMessagesController *)self presentedViewController];
        supportedInterfaceOrientations = [presentedViewController3 supportedInterfaceOrientations];

LABEL_19:
        if (!CKIsRunningInMacCatalyst())
        {
          mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
          [mainScreen _referenceBounds];
          if (v22 <= 320.0)
          {
            viewIfLoaded = [(CKMessagesController *)self viewIfLoaded];
            window = [viewIfLoaded window];
            [window safeAreaInsets];
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
  chatController = [(CKMessagesController *)self chatController];
  conversation = [chatController conversation];
  chat = [conversation chat];

  if (chat && ![chat allowedToShowConversation])
  {
    v8 = 0;
  }

  else
  {
    chatNavigationController = self->_chatNavigationController;
    if (chatNavigationController)
    {
      becomeFirstResponder = [(UINavigationController *)chatNavigationController becomeFirstResponder];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = CKMessagesController;
      becomeFirstResponder = [(CKMessagesController *)&v10 becomeFirstResponder];
    }

    v8 = becomeFirstResponder;
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
  conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
  visibleViewController = [conversationListNavigationController visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    conversationListNavigationController2 = [(CKMessagesController *)self conversationListNavigationController];
LABEL_5:
    visibleViewController6 = conversationListNavigationController2;
    visibleViewController2 = [conversationListNavigationController2 visibleViewController];
    goto LABEL_6;
  }

  chatNavigationController = [(CKMessagesController *)self chatNavigationController];
  visibleViewController3 = [chatNavigationController visibleViewController];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    conversationListNavigationController2 = [(CKMessagesController *)self chatNavigationController];
    goto LABEL_5;
  }

  conversationListNavigationController3 = [(CKMessagesController *)self conversationListNavigationController];
  visibleViewController4 = [conversationListNavigationController3 visibleViewController];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    conversationListNavigationController4 = [(CKMessagesController *)self conversationListNavigationController];
  }

  else
  {
    chatNavigationController2 = [(CKMessagesController *)self chatNavigationController];
    visibleViewController5 = [chatNavigationController2 visibleViewController];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if ((v17 & 1) == 0)
    {
      return;
    }

    conversationListNavigationController4 = [(CKMessagesController *)self chatNavigationController];
  }

  v18 = conversationListNavigationController4;
  visibleViewController6 = [conversationListNavigationController4 visibleViewController];

  presentingViewController = [visibleViewController6 presentingViewController];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    presentingViewController2 = [visibleViewController6 presentingViewController];
    topViewController = [presentingViewController2 topViewController];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if (v23)
    {
      visibleViewController2 = [presentingViewController2 topViewController];
      [visibleViewController6 dismissViewControllerAnimated:0 completion:0];
    }

    else
    {
      visibleViewController2 = 0;
    }
  }

  else
  {
    visibleViewController2 = 0;
  }

LABEL_6:

  if (visibleViewController2)
  {
    [visibleViewController2 dismissViewControllerAnimated:0 completion:0];
  }
}

- (CKInboxModel)inboxModel
{
  WeakRetained = objc_loadWeakRetained(&self->_inboxModel);

  return WeakRetained;
}

- (void)_updateViewsWithChatControllerBackgroundTraits
{
  chatController = [(CKMessagesController *)self chatController];
  v4 = chatController;
  if (chatController)
  {
    composeChatController = chatController;
  }

  else
  {
    composeChatController = [(CKMessagesController *)self composeChatController];
  }

  v49 = composeChatController;

  viewIfLoaded = [(CKMessagesController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  [window setOverrideUserInterfaceStyle:self->_chatControllerUserInterfaceStyle];
  if (-[CKMessagesController isShowingSelectionView](self, "isShowingSelectionView") || ([v49 transcriptBackground], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    traitOverrides = [window traitOverrides];
    [traitOverrides removeTrait:objc_opt_class()];

    traitOverrides2 = [window traitOverrides];
    [traitOverrides2 removeTrait:objc_opt_class()];

    [(CKMessagesController *)self isCollapsed];
    v9 = 0;
  }

  else
  {
    v9 = v8;
    [v8 luminance];
    v11 = v10;
    traitOverrides3 = [window traitOverrides];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [traitOverrides3 setNSIntegerValue:objc_msgSend(v13 forTrait:{"integerValue"), objc_opt_class()}];

    traitOverrides4 = [window traitOverrides];
    [traitOverrides4 setCGFloatValue:objc_opt_class() forTrait:v11];

    if ([(CKMessagesController *)self isCollapsed])
    {
      windowScene = [window windowScene];
      traitCollection = [windowScene traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
      conversationListController = [(CKMessagesController *)self conversationListController];
      [conversationListController setOverrideUserInterfaceStyle:userInterfaceStyle];

      conversationListController2 = [(CKMessagesController *)self conversationListController];
      traitOverrides5 = [conversationListController2 traitOverrides];
      v21 = MEMORY[0x1E695E110];
      [traitOverrides5 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E110] forTrait:{"integerValue"), objc_opt_class()}];

      conversationListController3 = [(CKMessagesController *)self conversationListController];
      traitOverrides6 = [conversationListController3 traitOverrides];
      +[CKTranscriptBackgroundLuminosityTrait defaultValue];
      [traitOverrides6 setCGFloatValue:objc_opt_class() forTrait:v24];

      windowScene2 = [window windowScene];
      traitCollection2 = [windowScene2 traitCollection];
      userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];
      conversationListController4 = [(CKMessagesController *)self conversationListController];
      searchController = [conversationListController4 searchController];
      [searchController setOverrideUserInterfaceStyle:userInterfaceStyle2];

      conversationListController5 = [(CKMessagesController *)self conversationListController];
      searchController2 = [conversationListController5 searchController];
      traitOverrides7 = [searchController2 traitOverrides];
      [traitOverrides7 setNSIntegerValue:objc_msgSend(v21 forTrait:{"integerValue"), objc_opt_class()}];

      conversationListController6 = [(CKMessagesController *)self conversationListController];
      searchController3 = [conversationListController6 searchController];
      traitOverrides8 = [searchController3 traitOverrides];
      +[CKTranscriptBackgroundLuminosityTrait defaultValue];
      [traitOverrides8 setCGFloatValue:objc_opt_class() forTrait:v36];
      goto LABEL_10;
    }
  }

  conversationListController7 = [(CKMessagesController *)self conversationListController];
  [conversationListController7 setOverrideUserInterfaceStyle:0];

  conversationListController8 = [(CKMessagesController *)self conversationListController];
  traitOverrides9 = [conversationListController8 traitOverrides];
  [traitOverrides9 removeTrait:objc_opt_class()];

  conversationListController9 = [(CKMessagesController *)self conversationListController];
  traitOverrides10 = [conversationListController9 traitOverrides];
  [traitOverrides10 removeTrait:objc_opt_class()];

  conversationListController10 = [(CKMessagesController *)self conversationListController];
  searchController4 = [conversationListController10 searchController];
  [searchController4 setOverrideUserInterfaceStyle:0];

  conversationListController11 = [(CKMessagesController *)self conversationListController];
  searchController5 = [conversationListController11 searchController];
  traitOverrides11 = [searchController5 traitOverrides];
  [traitOverrides11 removeTrait:objc_opt_class()];

  conversationListController6 = [(CKMessagesController *)self conversationListController];
  searchController3 = [conversationListController6 searchController];
  traitOverrides8 = [searchController3 traitOverrides];
  [traitOverrides8 removeTrait:objc_opt_class()];
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
  useMacToolbar = [v3 useMacToolbar];

  if (useMacToolbar)
  {
    view = [(CKMessagesController *)self view];
    window = [view window];
    [window frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 macAppKitToolbarHeight];
    v15 = v14;

    macToolbarController = [(CKMessagesController *)self macToolbarController];
    [macToolbarController updateWithFrame:{v8, v10, v12, v15}];

    view2 = [(CKMessagesController *)self view];
    macToolbarController2 = [(CKMessagesController *)self macToolbarController];
    view3 = [macToolbarController2 view];
    [view2 bringSubviewToFront:view3];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(macToolbarController2) = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

    if (macToolbarController2)
    {
      view4 = [(CKMessagesController *)self view];
      _shouldReverseLayoutDirection = [view4 _shouldReverseLayoutDirection];

      view11 = [(CKMessagesController *)self viewControllerForColumn:0];
      view5 = [view11 view];
      [view5 frame];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      view6 = [(CKMessagesController *)self view];
      [view5 convertRect:view6 toView:{v26, v28, v30, v32}];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v42 = v35;
      v43 = v37;
      v44 = v39;
      v45 = v41;
      if (_shouldReverseLayoutDirection)
      {
        MinX = CGRectGetMinX(*&v42);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v42);
      }

      v48 = MinX;
      v50 = [(CKMessagesController *)self viewControllerForColumn:4];
      view7 = [v50 view];
      v52 = view7;
      if (view7)
      {
        [view7 frame];
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        view8 = [(CKMessagesController *)self view];
        [v52 convertRect:view8 toView:{v54, v56, v58, v60}];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;

        v70 = v63;
        v71 = v65;
        v72 = v67;
        v73 = v69;
        if (_shouldReverseLayoutDirection)
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
        if ((_shouldReverseLayoutDirection & 1) == 0)
        {
          view9 = [(CKMessagesController *)self view];
          [view9 frame];
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

      view10 = [(CKMessagesController *)self view];
      _shouldReverseLayoutDirection2 = [view10 _shouldReverseLayoutDirection];

      view11 = [(CKMessagesController *)self view];
      [view11 frame];
      if (_shouldReverseLayoutDirection2)
      {
        v79 = 0.0;
      }

      else
      {
        v79 = v78;
      }

      if (_shouldReverseLayoutDirection2)
      {
        v48 = v78 - v48;
      }
    }

    macToolbarController3 = [(CKMessagesController *)self macToolbarController];
    [macToolbarController3 updateDividersForSidebarPosition:v48 inspectorPosition:v79];
  }

  if ([(CKMessagesController *)self _wantsThreeColumnLayout]&& [(CKMessagesController *)self splitBehavior]== 3 && [(CKMessagesController *)self displayMode]!= 2)
  {
    chatController = [(CKMessagesController *)self chatController];
    presentedViewController = [chatController presentedViewController];
    v84PresentedViewController = [presentedViewController presentedViewController];
    childViewControllers = [v84PresentedViewController childViewControllers];
    v87 = [childViewControllers count];

    if (!v87 || (-[CKMessagesController chatController](self, "chatController"), v88 = objc_claimAutoreleasedReturnValue(), [v88 presentedViewController], v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v89, "presentedViewController"), v90 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v90, "childViewControllers"), v91 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v91, "objectAtIndex:", 0), v92 = objc_claimAutoreleasedReturnValue(), v91, v90, v89, v88, !v92))
    {
      chatController2 = [(CKMessagesController *)self chatController];
      if (!chatController2)
      {
        chatController2 = [(CKMessagesController *)self composeChatController];
        if (!chatController2)
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

      v92 = chatController2;
    }

    v94 = +[CKUIBehavior sharedBehaviors];
    entryViewFollowsKeyboardLayoutGuide = [v94 entryViewFollowsKeyboardLayoutGuide];

    if ((entryViewFollowsKeyboardLayoutGuide & 1) == 0)
    {
      entryView = [v92 entryView];
      [entryView frame];
      v98 = v97;
      v100 = v99;
      v102 = v101;
      chatNavigationController = [(CKMessagesController *)self chatNavigationController];
      view12 = [chatNavigationController view];
      [view12 frame];
      v106 = v105;

      [entryView setFrame:{v106, v98, v100, v102}];
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
    shouldPresentOnboarding = [(CKMessagesController *)self shouldPresentOnboarding];
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5[0] = 67109120;
        v5[1] = shouldPresentOnboarding;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "_handleInitialLoad - shouldPresentOnboarding=%{BOOL}d", v5, 8u);
      }
    }

    if (!shouldPresentOnboarding)
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
  onboardingController = [(CKMessagesController *)self onboardingController];
  v3 = onboardingController != 0;

  return v3;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  v7.receiver = self;
  v7.super_class = CKMessagesController;
  preferredScreenEdgesDeferringSystemGestures = [(CKMessagesController *)&v7 preferredScreenEdgesDeferringSystemGestures];
  chatController = [(CKMessagesController *)self chatController];
  v5 = chatController;
  if (chatController)
  {
    preferredScreenEdgesDeferringSystemGestures |= [chatController preferredScreenEdgesDeferringSystemGestures];
  }

  return preferredScreenEdgesDeferringSystemGestures;
}

- (void)_didUpdateCollapsedState
{
  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController parentSplitViewControllerDidUpdateCollapsedState];
  chatController = [(CKMessagesController *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chatController2 = [(CKMessagesController *)self chatController];
    [chatController2 parentSplitViewControllerDidUpdateCollapsedState];
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
  chatController = [(CKMessagesController *)self chatController];
  viewIfLoaded = [chatController viewIfLoaded];
  window = [viewIfLoaded window];
  v5 = window != 0;

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
  viewIfLoaded = [(CKMessagesController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  v32[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __50__CKMessagesController_performResumeDeferredSetup__block_invoke;
  v28[3] = &unk_1E72F08A0;
  objc_copyWeak(&v29, &buf);
  v8 = [windowScene registerForTraitChanges:v7 withHandler:v28];

  [(CKMessagesController *)self checkForRCSAndCarrierAlerts];
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  if (CKIsRunningInMessages())
  {
    CKPrewarmResumeDeferredSetup();
  }

  chatController = [(CKMessagesController *)self chatController];
  [chatController performResumeDeferredSetup];

  composeChatController = [(CKMessagesController *)self composeChatController];
  [composeChatController performResumeDeferredSetup];

  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController performResumeDeferredSetup];

  if (CKDeviceSupportsPerseus())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    conversationList = [(CKMessagesController *)self conversationList];
    conversations = [conversationList conversations];

    v15 = [conversations countByEnumeratingWithState:&v24 objects:v31 count:16];
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
          objc_enumerationMutation(conversations);
        }

        v21 = *(*(&v24 + 1) + 8 * v18);
        if ([v21 recipientCount] >= 2)
        {
          orderedContactsForAvatarView = [v21 orderedContactsForAvatarView];
        }

        if (([v21 hasDisplayName] & 1) == 0)
        {
          name = [v21 name];
        }

        if (v20 == v18)
        {
          break;
        }

        if (v15 == ++v18)
        {
          v15 = [conversations countByEnumeratingWithState:&v24 objects:v31 count:16];
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
  inboxViewController = [(CKMessagesController *)self inboxViewController];
  viewIfLoaded = [inboxViewController viewIfLoaded];
  window = [viewIfLoaded window];
  v5 = window != 0;

  return v5;
}

- (UIViewController)inboxViewController
{
  if (!self->_inboxViewController && [(CKMessagesController *)self _shouldShowInboxView])
  {
    v3 = [CKInboxViewController alloc];
    conversationListController = [(CKMessagesController *)self conversationListController];
    v5 = [(CKInboxViewController *)v3 initWithConversationListController:conversationListController];

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
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"showTickerHUD"];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults2 BOOLForKey:@"showTickerHUDAndLogValueWhileRecording"];

  if ((v8 & 1) == 0 && !v6)
  {
    return;
  }

  view = [(CKMessagesController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    if (v6)
    {
      v11 = +[_TtC7ChatKit13CKDebugTicker sharedTicker];
      view2 = [(CKMessagesController *)self view];
      window2 = [view2 window];
      [v11 showWithWindowScene:windowScene parentWindow:window2];
LABEL_10:

      goto LABEL_11;
    }

    if (v8)
    {
      v11 = +[_TtC7ChatKit13CKDebugTicker sharedTicker];
      view2 = [(CKMessagesController *)self view];
      window2 = [view2 window];
      [v11 showAndLogValueWhileRecordingWithWindowScene:windowScene parentWindow:window2];
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (BOOL)isComposingMessage
{
  composeChatController = [(CKMessagesController *)self composeChatController];

  if (composeChatController)
  {
    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    composeChatNavigationController = [(CKMessagesController *)self composeChatNavigationController];
    if (composeChatNavigationController && ([(CKMessagesController *)self presentedViewController], v2 = objc_claimAutoreleasedReturnValue(), [(CKMessagesController *)self composeChatNavigationController], v8 = objc_claimAutoreleasedReturnValue(), v3 = v8, v2 == v8))
    {
    }

    else
    {
      topViewController = [chatNavigationController topViewController];
      composeChatController2 = [(CKMessagesController *)self composeChatController];

      if (composeChatNavigationController)
      {
      }

      if (topViewController != composeChatController2)
      {
        LOBYTE(v9) = 0;
LABEL_11:

        return v9;
      }
    }

    composeChatController3 = [(CKMessagesController *)self composeChatController];
    v9 = [composeChatController3 isSendingMessage] ^ 1;

    goto LABEL_11;
  }

  LOBYTE(v9) = 0;
  return v9;
}

- (void)parentControllerDidBecomeActive
{
  chatController = [(CKMessagesController *)self chatController];
  [chatController parentControllerDidBecomeActive];

  composeChatController = [(CKMessagesController *)self composeChatController];
  [composeChatController parentControllerDidBecomeActive];
}

- (BOOL)hasDetailsNavigationController
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

  if (isRedesignedDetailsViewEnabled)
  {
    redesignedDetailsNavigationController = [(CKMessagesController *)self redesignedDetailsNavigationController];
    if (redesignedDetailsNavigationController)
    {
      isInspectorVisible = 1;
    }

    else
    {
      splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
      isInspectorVisible = [splitViewCoordinator isInspectorVisible];
    }
  }

  else
  {
    redesignedDetailsNavigationController = [(CKMessagesController *)self detailsNavigationController];
    isInspectorVisible = redesignedDetailsNavigationController != 0;
  }

  return isInspectorVisible;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (CKMessagesController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = CKMessagesController;
  v3 = [(CKMessagesController *)&v6 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    [(CKMessagesController *)v3 initialize];
  }

  return v4;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  chatController = [(CKMessagesController *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chatController2 = [(CKMessagesController *)self chatController];
    [chatController2 dismissTipIfPresented];
  }

  v13.receiver = self;
  v13.super_class = CKMessagesController;
  [(CKMessagesController *)&v13 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)conversationListControllerTappedDeleteNewMessage:(id)message
{
  messageCopy = message;
  composeChatController = [(CKMessagesController *)self composeChatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    composeChatController2 = [(CKMessagesController *)self composeChatController];
    [composeChatController2 cancelCompose];
  }

  else
  {
    [(CKMessagesController *)self composeChatControllerDidCancelComposition:0];
    [messageCopy reloadData];
  }
}

- (_TtC7ChatKit25CKSelectionViewController)selectionViewController
{
  selectionViewController = self->_selectionViewController;
  if (!selectionViewController)
  {
    generateSelectionViewController = [(CKMessagesController *)self generateSelectionViewController];
    v5 = self->_selectionViewController;
    self->_selectionViewController = generateSelectionViewController;

    selectionViewController = self->_selectionViewController;
  }

  return selectionViewController;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (appearCopy)
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
    if (appearCopy)
    {
      v7 = @"YES";
    }

    v8 = "[CKMessagesController viewWillAppear:]";
    v9 = v7;
    _CKLog();
  }

  v10.receiver = self;
  v10.super_class = CKMessagesController;
  [(CKMessagesController *)&v10 viewWillAppear:appearCopy, v8, v9];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v24 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (appearCopy)
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
    if (appearCopy)
    {
      v7 = @"YES";
    }

    v17 = "[CKMessagesController viewDidAppear:]";
    v18 = v7;
    _CKLog();
  }

  v19.receiver = self;
  v19.super_class = CKMessagesController;
  [(CKMessagesController *)&v19 viewDidAppear:appearCopy, v17, v18];
  [(CKMessagesController *)self _installTickerIfNeeded];
  if ([(CKMessagesController *)self isOscarModal])
  {
    [(CKMessagesController *)self showConversationListWithAnimation:0];
    [(CKMessagesController *)self changeFilterMode:9];
  }

  else if (![(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    isCollapsed = [(CKMessagesController *)self isCollapsed];
    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    childViewControllers = [chatNavigationController childViewControllers];
    firstObject = [childViewControllers firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (![(CKMessagesController *)self isComposingMessage]&& (isCollapsed & isKindOfClass & 1) != 0)
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
    hasActiveConversations = [v14 hasActiveConversations];

    if ((hasActiveConversations & 1) == 0)
    {
      conversationListController = [(CKMessagesController *)self conversationListController];
      [conversationListController composeButtonClicked:self];
    }
  }
}

- (BOOL)daemonIsConnected
{
  mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
  isConnected = [mEMORY[0x1E69A5B50] isConnected];

  return isConnected;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (disappearCopy)
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
    if (disappearCopy)
    {
      v7 = @"YES";
    }

    v8 = "[CKMessagesController viewWillDisappear:]";
    v9 = v7;
    _CKLog();
  }

  v10.receiver = self;
  v10.super_class = CKMessagesController;
  [(CKMessagesController *)&v10 viewWillDisappear:disappearCopy, v8, v9];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (disappearCopy)
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
    if (disappearCopy)
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
  [(CKMessagesController *)&v10 viewDidDisappear:disappearCopy];
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
  shouldAutorotate = [v3 shouldAutorotate];

  return shouldAutorotate;
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

- (void)performVisibleAppPluginIconPrefetch:(id)prefetch
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
  chatController = [(CKMessagesController *)self chatController];
  v4 = chatController;
  if (chatController)
  {
    composeChatController = chatController;
  }

  else
  {
    composeChatController = [(CKMessagesController *)self composeChatController];
  }

  v10 = composeChatController;

  entryView = [v10 entryView];
  contentView = [entryView contentView];
  activeView = [contentView activeView];
  isFirstResponder = [activeView isFirstResponder];

  if (isFirstResponder)
  {
    [v10 dismissKeyboard];
  }
}

- (void)performSearchForQuery:(id)query
{
  queryCopy = query;
  v13 = 0;
  [(CKMessagesController *)self showConversationListWithAnimation:1 didDismissController:&v13];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__CKMessagesController_performSearchForQuery___block_invoke;
  aBlock[3] = &unk_1E72EB8D0;
  aBlock[4] = self;
  v5 = queryCopy;
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
  inboxViewController = [(CKMessagesController *)self inboxViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    inboxViewController2 = [(CKMessagesController *)self inboxViewController];
    [inboxViewController2 prepareForSuspend];
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      onboardingController = [(CKMessagesController *)self onboardingController];
      v14 = 138412290;
      v15 = onboardingController;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "prepareForSuspend onboardingController: %@", &v14, 0xCu);
    }
  }

  onboardingController2 = [(CKMessagesController *)self onboardingController];
  [onboardingController2 prepareForSuspend];

  [(CKMessagesController *)self setOnboardingController:0];
  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController prepareForSuspend];

  chatController = [(CKMessagesController *)self chatController];
  [chatController prepareForSuspend];

  composeChatController = [(CKMessagesController *)self composeChatController];
  [composeChatController prepareForSuspend];

  [(CKMessagesController *)self teardownCamera];
  if (!CKIsRunningInMacCatalyst())
  {
    _sharedBalloonPluginManager = [(CKMessagesController *)self _sharedBalloonPluginManager];
    [_sharedBalloonPluginManager invalidateAllActivePluginsSkippingCameraApp:1];
  }
}

- (void)prepareForResume
{
  inboxViewController = [(CKMessagesController *)self inboxViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    inboxViewController2 = [(CKMessagesController *)self inboxViewController];
    [inboxViewController2 prepareForResume];
  }

  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController prepareForResume];

  chatController = [(CKMessagesController *)self chatController];
  [chatController prepareForResume];

  composeChatController = [(CKMessagesController *)self composeChatController];
  [composeChatController prepareForResume];

  if (!CKIsRunningInMacCatalyst())
  {

    [(CKMessagesController *)self presentOnboardingViewControllerIfNeeded];
  }
}

- (void)parentControllerDidResume:(BOOL)resume animating:(BOOL)animating
{
  animatingCopy = animating;
  resumeCopy = resume;
  chatController = [(CKMessagesController *)self chatController];
  [chatController parentControllerDidResume:resumeCopy animating:animatingCopy];

  composeChatController = [(CKMessagesController *)self composeChatController];
  [composeChatController parentControllerDidResume:resumeCopy animating:animatingCopy];
}

- (void)setDeferredHandleURLBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  onboardingController = [(CKMessagesController *)self onboardingController];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = onboardingController != 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Attempting to set a deferredHandleURLBlock. performingOnboarding=%{BOOL}d", v14, 8u);
    }
  }

  v7 = onboardingController != 0;
  isInitialLayout = [(CKMessagesController *)self isInitialLayout];
  v9 = IMOSLoggingEnabled();
  if (isInitialLayout || v7)
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

    v11 = [blockCopy copy];
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

    blockCopy[2](blockCopy);
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
  mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
  smsService = [MEMORY[0x1E69A5CA0] smsService];
  v5 = [mEMORY[0x1E69A5A80] activeAccountsForService:smsService];
  firstObject = [v5 firstObject];

  if (!firstObject)
  {
    goto LABEL_7;
  }

  if (([firstObject isSMSRelayCapable] & 1) == 0)
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

  if ([firstObject isSMSRelayCapable] && (objc_msgSend(firstObject, "allowsSMSRelay") & 1) == 0)
  {
    v7 = [firstObject registrationStatus] == 5 || objc_msgSend(firstObject, "registrationStatus") == 0;
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
  _shouldShowSMSRelayPrompt = [(CKMessagesController *)self _shouldShowSMSRelayPrompt];
  v4 = IMOSLoggingEnabled();
  if (_shouldShowSMSRelayPrompt)
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
    selfCopy = self;
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
  pendingSMSRelayPINPrompts = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
  v4 = [pendingSMSRelayPINPrompts count];

  if (v4)
  {
    pendingSMSRelayPINPrompts2 = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
    firstObject = [pendingSMSRelayPINPrompts2 firstObject];

    pendingSMSRelayPINPrompts3 = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
    [pendingSMSRelayPINPrompts3 removeObject:firstObject];

    pendingSMSRelayPINPrompts4 = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
    v9 = [pendingSMSRelayPINPrompts4 count];

    if (!v9)
    {
      [(CKMessagesController *)self setPendingSMSRelayPINPrompts:0];
    }

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __50__CKMessagesController__showNextSMSRelayPINPrompt__block_invoke;
    v14 = &unk_1E72EB8D0;
    selfCopy = self;
    v16 = firstObject;
    v10 = firstObject;
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

- (void)_smsRelayPINReceived:(id)received
{
  v28 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  if ([(CKMessagesController *)self _shouldShowSMSRelayPrompt])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = receivedCopy;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received notification for SMS Relay PIN %@", buf, 0xCu);
      }
    }

    userInfo = [receivedCopy userInfo];
    v7 = [userInfo objectForKey:@"pinCode"];

    userInfo2 = [receivedCopy userInfo];
    v9 = [userInfo2 objectForKey:@"phoneNumber"];

    if (v7 && v9)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = CKFrameworkBundle();
      v12 = [v11 localizedStringForKey:@"SMS_RELAY_PIN_PROMPT_MAC" value:&stru_1F04268F8 table:@"ChatKit"];
      v13 = [v10 stringWithFormat:v12, v9, v7];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      LODWORD(v12) = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

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
      pendingSMSRelayPINPrompts = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
      LODWORD(v20) = pendingSMSRelayPINPrompts == 0;

      if (v20)
      {
        v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(CKMessagesController *)self setPendingSMSRelayPINPrompts:v24];
      }

      pendingSMSRelayPINPrompts2 = [(CKMessagesController *)self pendingSMSRelayPINPrompts];
      [pendingSMSRelayPINPrompts2 addObject:v19];

      [(CKMessagesController *)self _showNextSMSRelayPINPrompt];
    }
  }
}

- (void)messagesSceneDelegateDidUpdateEffectiveGeometryForScene:(id)scene previousEffectiveGeometry:(id)geometry
{
  geometryCopy = geometry;
  sceneCopy = scene;
  splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
  [splitViewCoordinator effectiveGeometryDidUpdateForScene:sceneCopy previousEffectiveGeometry:geometryCopy];
}

- (void)_pinVerificationShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  userInfo = [dismissCopy userInfo];
  v6 = [userInfo objectForKey:@"wasCancelled"];
  bOOLValue = [v6 BOOLValue];

  userInfo2 = [dismissCopy userInfo];

  v9 = [userInfo2 objectForKey:@"responseFromDevice"];
  LODWORD(v6) = [v9 BOOLValue];

  if (!v6)
  {
    goto LABEL_5;
  }

  currentSMSRelayPinAlert = [(CKMessagesController *)self currentSMSRelayPinAlert];

  if (currentSMSRelayPinAlert)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__CKMessagesController__pinVerificationShouldDismiss___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if (bOOLValue)
  {
LABEL_5:
    [(CKMessagesController *)self setPendingSMSRelayPINPrompts:0];
    presentedViewController = [(CKMessagesController *)self presentedViewController];

    if (presentedViewController)
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
    preferredAction = [v16 preferredAction];

    if (!preferredAction)
    {
      [v16 setPreferredAction:v19];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__CKMessagesController__pinVerificationShouldDismiss___block_invoke_3;
    v22[3] = &unk_1E72EB8D0;
    v23 = v16;
    selfCopy = self;
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
  array = [MEMORY[0x1E695DF70] array];
  if ([(CKMessagesController *)self isComposingMessage]&& ([(CKMessagesController *)self composeChatController], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    composeChatController = [(CKMessagesController *)self composeChatController];
  }

  else
  {
    chatController = [(CKMessagesController *)self chatController];

    if (!chatController)
    {
      goto LABEL_7;
    }

    composeChatController = [(CKMessagesController *)self chatController];
  }

  v7 = composeChatController;
  [array addObject:composeChatController];

LABEL_7:
  conversationListController = [(CKMessagesController *)self conversationListController];

  if (conversationListController)
  {
    conversationListController2 = [(CKMessagesController *)self conversationListController];
    [array addObject:conversationListController2];
  }

  return array;
}

- (void)_presentViewControllerInInspector:(id)inspector
{
  inspectorCopy = inspector;
  splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
  v5 = splitViewCoordinator;
  if (splitViewCoordinator)
  {
    [splitViewCoordinator presentViewControllerInInspector:inspectorCopy];
  }
}

- (void)chatController:(id)controller willSendComposition:(id)composition inConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([controllerCopy shouldDismissAfterSend])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __74__CKMessagesController_chatController_willSendComposition_inConversation___block_invoke;
      v10[3] = &unk_1E72EBA18;
      v10[4] = self;
      [(CKMessagesController *)self dismissViewControllerAnimated:1 completion:v10];
    }

    [(CKMessagesController *)self setupBizNavBarForConversation:conversationCopy];
  }

  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController compositionSent];
}

void __74__CKMessagesController_chatController_willSendComposition_inConversation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelAndDestroyComposition];
  v2 = [*(a1 + 32) chatController];
  [v2 endHoldingScrollGeometryUpdatesForReason:@"TransitionFromForwarding"];
}

- (void)chatController:(id)controller didSendCompositionInConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([controllerCopy shouldDismissAfterSend])
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
      [(CKMessagesController *)self showConversation:conversationCopy animate:1];
    }

    if ([(CKMessagesController *)self isCollapsed])
    {
      conversationListController = [(CKMessagesController *)self conversationListController];
      [conversationListController updateFiltersAfterNewComposeToConversation:conversationCopy];
    }
  }

  conversationListController2 = [(CKMessagesController *)self conversationListController];
  [conversationListController2 updateConversationListForMessageSentToConversation:conversationCopy];
}

void __72__CKMessagesController_chatController_didSendCompositionInConversation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelAndDestroyComposition];
  v2 = [*(a1 + 32) chatController];
  [v2 endHoldingScrollGeometryUpdatesForReason:@"TransitionFromForwarding"];
}

- (void)chatController:(id)controller didReportSpamForConversation:(id)conversation
{
  conversationCopy = conversation;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    chat = [conversationCopy chat];
    [chat updateIsFiltered:2];
  }

  [(CKMessagesController *)self showConversationListWithAnimation:1];
  v8 = +[CKCurrentConversationsManager sharedInstance];
  [v8 purgeConversation:conversationCopy];

  [(CKMessagesController *)self deleteConversation:conversationCopy];
  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController updateConversationList];

  if (!CKIsForceUnknownFilteringEnabled() || ([MEMORY[0x1E69A8020] IMDeviceRegionIsEligibleToBeForcedIntoFilteringUnknownSender] & 1) == 0)
  {
    _isMessageFilteringEnabled = [(CKMessagesController *)self _isMessageFilteringEnabled];
    IsModified = CKMessageFilteringIsModified();
    if (_isMessageFilteringEnabled)
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
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isReportJunkEverywhereEnabled = [mEMORY[0x1E69A8070]2 isReportJunkEverywhereEnabled];

    conversationListController2 = [(CKMessagesController *)self conversationListController];
    v27 = conversationListController2;
    if (isReportJunkEverywhereEnabled)
    {
      collectionView = [conversationListController2 collectionView];
      indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
      v30 = [indexPathsForSelectedItems count];

      if (v30)
      {
        collectionView2 = [v27 collectionView];
        indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];
        firstObject = [indexPathsForSelectedItems2 firstObject];

        [v27 selectConversationClosestToDeletedIndex:firstObject];
      }

      else
      {
        firstObject = [(CKMessagesController *)self conversationListController];
        [firstObject selectDefaultConversationAnimated:1];
      }
    }

    else
    {
      [conversationListController2 selectDefaultConversationAnimated:1];
    }
  }
}

- (void)setChatControllerUserInterfaceStyle:(int64_t)style
{
  if (self->_chatControllerUserInterfaceStyle != style)
  {
    self->_chatControllerUserInterfaceStyle = style;
    [(CKMessagesController *)self _updateViewsWithChatControllerBackgroundTraits];
  }
}

- (void)_updateTraitEnvironmentWithLatestWindowSceneUserInterfaceStyle
{
  viewIfLoaded = [(CKMessagesController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  windowScene = [window windowScene];
  traitCollection = [windowScene traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  traitOverrides = [window traitOverrides];
  [traitOverrides setNSIntegerValue:userInterfaceStyle forTrait:objc_opt_class()];
}

- (void)chatControllerDidChangeBackground:(id)background
{
  v14 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = backgroundCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v12, 0xCu);
  }

  chatController = [(CKMessagesController *)self chatController];
  v7 = chatController;
  if (chatController == backgroundCopy)
  {
  }

  else
  {
    composeChatController = [(CKMessagesController *)self composeChatController];

    if (composeChatController != backgroundCopy)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CKMessagesController *)backgroundCopy chatControllerDidChangeBackground:?];
      }

      goto LABEL_12;
    }
  }

  transcriptBackground = [backgroundCopy transcriptBackground];
  v9 = transcriptBackground;
  if (transcriptBackground)
  {
    contentDerivedUserInterfaceStyle = [transcriptBackground contentDerivedUserInterfaceStyle];
  }

  else
  {
    contentDerivedUserInterfaceStyle = 0;
  }

  [(CKMessagesController *)self setChatControllerUserInterfaceStyle:contentDerivedUserInterfaceStyle];
LABEL_12:
}

- (void)chatController:(id)controller didUnsubscribeForConversation:(id)conversation
{
  conversationCopy = conversation;
  [(CKMessagesController *)self showConversationListWithAnimation:1];
  [(CKMessagesController *)self deleteConversation:conversationCopy];

  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController updateConversationList];

  if (![(CKMessagesController *)self isCollapsed])
  {
    conversationListController2 = [(CKMessagesController *)self conversationListController];
    [conversationListController2 selectDefaultConversationAnimated:1];
  }
}

- (void)chatController:(id)controller requestDeleteJunkConversation:(id)conversation
{
  conversationCopy = conversation;
  v7 = +[CKConversationList sharedConversationList];
  [v7 deleteConversation:conversationCopy];

  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController userDeletedJunkConversationFromTranscript];
}

- (void)chatController:(id)controller requestRecoverJunkConversation:(id)conversation
{
  v9[1] = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v6 = +[CKConversationList sharedConversationList];
  v9[0] = conversationCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  [v6 recoverJunkMessagesInConversations:v7];
  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController userRecoveredJunkConversationFromTranscript];
}

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller
{
  [(CKMessagesController *)self systemMinimumLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view = [(CKMessagesController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  if (effectiveUserInterfaceLayoutDirection)
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

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller
{
  if ([(CKMessagesController *)self isCollapsed])
  {
    view = [(CKMessagesController *)self view];
    [view safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    view = [(CKMessagesController *)self chatNavigationController];
    v4View = [view view];
    [v4View safeAreaInsets];
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

- (void)chatController:(id)controller forwardComposition:(id)composition
{
  compositionCopy = composition;
  if ([(CKMessagesController *)self isCollapsed])
  {
    v5 = [(CKComposeChatController *)[CKShareSheetChatController alloc] initWithRecipientAddresses:0 composition:compositionCopy bizIntent:0];
    [(CKCoreChatController *)v5 setDelegate:self];
    [(CKChatController *)v5 setSendMenuDelegate:self];
    v6 = [[CKNavigationController alloc] initWithRootViewController:v5];
    v7 = +[CKUIBehavior sharedBehaviors];
    useMacToolbar = [v7 useMacToolbar];

    if (useMacToolbar)
    {
      [(CKNavigationController *)v6 setNavigationBarHidden:1];
    }

    else
    {
      navigationBar = [(CKNavigationController *)v6 navigationBar];
      v10 = +[CKUIBehavior sharedBehaviors];
      theme = [v10 theme];
      [navigationBar setBarStyle:{objc_msgSend(theme, "navBarStyle")}];
    }

    [(CKMessagesController *)self setComposeChatNavigationController:v6];
    [(CKMessagesController *)self setComposeChatController:v5];
    chatController = [(CKMessagesController *)self chatController];
    [chatController beginHoldingScrollGeometryUpdatesForReason:@"TransitionFromForwarding"];

    composeChatNavigationController = [(CKMessagesController *)self composeChatNavigationController];
    [(CKMessagesController *)self presentViewController:composeChatNavigationController animated:1 completion:0];
  }

  else
  {
    [(CKMessagesController *)self showNewMessageCompositionPanelAppendingToExistingDraft:compositionCopy animated:1];
  }

  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController updateConversationList];
}

- (void)chatController:(id)controller didRequestNewComposePresentationWithSender:(id)sender
{
  senderCopy = sender;
  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController composeButtonClicked:senderCopy];
}

- (void)chatController:(id)controller requestPresentSendMenu:(id)menu currentlyPresentedViewController:(id)viewController
{
  controllerCopy = controller;
  menuCopy = menu;
  viewControllerCopy = viewController;
  sendMenuViewController = [(CKSendMenuPresentation *)self->_sendMenuPresentation sendMenuViewController];
  view = [sendMenuViewController view];
  window = [view window];

  if (!window)
  {
    selfCopy = self;
    if ([(CKMessagesController *)selfCopy isComposingMessage])
    {
      composeChatController = [(CKMessagesController *)selfCopy composeChatController];
    }

    else if ([controllerCopy isModal])
    {
      composeChatController = controllerCopy;
    }

    else
    {
      v16 = selfCopy;
      if (!viewControllerCopy)
      {
LABEL_10:
        v17 = [menuCopy newSendMenuPresentationWithPresentingViewController:v16 delegate:selfCopy];
        sendMenuPresentation = self->_sendMenuPresentation;
        self->_sendMenuPresentation = v17;

        objc_initWeak(&location, selfCopy);
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
        v21 = menuCopy;
        [(CKSendMenuPresentation *)v19 beginPresentationWithCompletion:v20];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);

        goto LABEL_11;
      }

      composeChatController = viewControllerCopy;
    }

    v16 = composeChatController;

    goto LABEL_10;
  }

  [(CKSendMenuPresentation *)self->_sendMenuPresentation rePresentSendMenu];
  [menuCopy didFinishPresentTransition];
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

- (void)chatController:(id)controller didFinishDismissAnimationForSendMenuViewController:(id)viewController
{
  [(CKSendMenuPresentation *)self->_sendMenuPresentation removeSendMenuFromViewHierarchy:controller];
  sendMenuPresentation = self->_sendMenuPresentation;
  self->_sendMenuPresentation = 0;
}

- (void)chatControllerDidChangeDeferringSystemNavigationPopGestureForPlusButton:(id)button
{
  isDeferringSystemNavigationPopGestureForPlusButton = [button isDeferringSystemNavigationPopGestureForPlusButton];
  chatNavigationController = [(CKMessagesController *)self chatNavigationController];
  interactivePopGestureRecognizer = [chatNavigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setDelaysTouchesBegan:isDeferringSystemNavigationPopGestureForPlusButton ^ 1u];

  conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
  interactivePopGestureRecognizer2 = [conversationListNavigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer2 setDelaysTouchesBegan:isDeferringSystemNavigationPopGestureForPlusButton ^ 1u];

  [(CKMessagesController *)self setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
}

- (id)navigationBarBackdropLayerGroupNameForChatController:(id)controller
{
  composeChatNavigationController = [(CKMessagesController *)self composeChatNavigationController];

  if (composeChatNavigationController)
  {
    composeChatNavigationController2 = [(CKMessagesController *)self composeChatNavigationController];
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
    composeChatNavigationController2 = ;
  }

  v6 = composeChatNavigationController2;
  navigationBar = [composeChatNavigationController2 navigationBar];
  _backdropViewLayerGroupName = [navigationBar _backdropViewLayerGroupName];

  return _backdropViewLayerGroupName;
}

- (int64_t)unreadCountForCurrentFilterModeForChatController:(id)controller
{
  conversationList = [(CKMessagesController *)self conversationList];
  conversationListController = [(CKMessagesController *)self conversationListController];
  v6 = [conversationList unreadCountForFilterMode:{objc_msgSend(conversationListController, "filterMode")}];

  return v6;
}

- (BOOL)hasRecentlyDeletedFilterSelected
{
  conversationListController = [(CKMessagesController *)self conversationListController];
  v3 = [conversationListController filterMode] == 7;

  return v3;
}

- (void)legacyDidSelectFilterFromViewMenu:(id)menu
{
  menuCopy = menu;
  propertyList = [menuCopy propertyList];

  if (propertyList)
  {
    propertyList2 = [menuCopy propertyList];
    -[CKMessagesController catalystFilterModeSelected:](self, "catalystFilterModeSelected:", [propertyList2 intValue]);
  }
}

- (void)catalystFilterModeSelected:(unint64_t)selected
{
  [(CKMessagesController *)self inboxViewController:0 didSelectFilterMode:selected];
  macToolbarController = [(CKMessagesController *)self macToolbarController];
  [macToolbarController reloadToolbarItems];

  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController dismissSearchIfNeeded];
}

- (void)reloadMacToolbarItems
{
  macToolbarController = [(CKMessagesController *)self macToolbarController];
  [macToolbarController reloadToolbarItems];
}

- (unint64_t)currentConversationListFilterMode
{
  conversationListController = [(CKMessagesController *)self conversationListController];
  filterMode = [conversationListController filterMode];

  return filterMode;
}

- (void)updateSupportedInterfaceOrientations:(unint64_t)orientations
{
  self->_supportedInterfaceOrientations = orientations;
  self->_forceOrientation = 1;
  [(CKMessagesController *)self updateInterfaceOrientationsAnimated:0];
}

- (void)stopForcingOrientation
{
  self->_supportedInterfaceOrientations = 30;
  self->_forceOrientation = 0;
  [(CKMessagesController *)self updateInterfaceOrientationsAnimated:1];
}

- (void)updateInterfaceOrientationsAnimated:(BOOL)animated
{
  if (animated)
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
    mEMORY[0x1E69A5CC8] = [MEMORY[0x1E69A5CC8] sharedManager];
    v5 = self->_syncedSettingsManager;
    self->_syncedSettingsManager = mEMORY[0x1E69A5CC8];

    syncedSettingsManager = self->_syncedSettingsManager;
  }

  return syncedSettingsManager;
}

- (void)_filterMessageRequestsUpdated:(id)updated
{
  v12 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      name = [updatedCopy name];
      *buf = 136315394;
      v9 = "[CKMessagesController _filterMessageRequestsUpdated:]";
      v10 = 2112;
      v11 = name;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "%s, Received %@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    name2 = [updatedCopy name];
    _CKLog();
  }

  CKResetFilteringSettings();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:CKMessageFilteringChangedNotification[0] object:0];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  v33 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      v27 = 138412802;
      v28 = controllerCopy;
      v29 = 2112;
      if (animatedCopy)
      {
        v11 = @"YES";
      }

      v30 = viewControllerCopy;
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
      _shouldLoadInputAccessoryViewsOnAppearance = [(CKCoreChatController *)chatController _shouldLoadInputAccessoryViewsOnAppearance];
      v15 = @"NO";
      v27 = 136315650;
      v28 = "[CKMessagesController navigationController:willShowViewController:animated:]";
      v29 = 2112;
      v30 = chatController;
      if (_shouldLoadInputAccessoryViewsOnAppearance)
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
      _shouldLoadInputAccessoryViewsOnAppearance2 = [(CKCoreChatController *)composeChatController _shouldLoadInputAccessoryViewsOnAppearance];
      v19 = @"NO";
      v27 = 136315650;
      v28 = "[CKMessagesController navigationController:willShowViewController:animated:]";
      v29 = 2112;
      v30 = composeChatController;
      if (_shouldLoadInputAccessoryViewsOnAppearance2)
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
      currentConversation = [(CKMessagesController *)self currentConversation];
      if ([currentConversation isBusinessConversation])
      {
        conversationListController = [(CKMessagesController *)self conversationListController];
        v23 = conversationListController != viewControllerCopy;
      }

      else
      {
        v23 = 0;
      }

      conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
      navigationBar = [conversationListNavigationController navigationBar];
      [navigationBar setAccessibilityIgnoresInvertColors:v23];
    }

    else
    {
      conversationListNavigationController = [(CKMessagesController *)self chatNavigationController];
      navigationBar = [conversationListNavigationController navigationBar];
      currentConversation2 = [(CKMessagesController *)self currentConversation];
      [navigationBar setAccessibilityIgnoresInvertColors:{objc_msgSend(currentConversation2, "isBusinessConversation")}];
    }
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  v54 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      *buf = 138412802;
      v49 = controllerCopy;
      v50 = 2112;
      if (animatedCopy)
      {
        v11 = @"YES";
      }

      v51 = viewControllerCopy;
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
      topViewController = [(__CFString *)controllerCopy topViewController];
      *buf = 138412290;
      v49 = topViewController;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Navigation controller top view controller: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
      conversationListNavigationController2 = [(CKMessagesController *)self conversationListNavigationController];
      viewControllers = [conversationListNavigationController2 viewControllers];
      *buf = 138412546;
      v49 = conversationListNavigationController;
      v50 = 2112;
      v51 = viewControllers;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Conv list nav controller %@ VCs: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      chatNavigationController = [(CKMessagesController *)self chatNavigationController];
      chatNavigationController2 = [(CKMessagesController *)self chatNavigationController];
      viewControllers2 = [chatNavigationController2 viewControllers];
      *buf = 138412546;
      v49 = chatNavigationController;
      v50 = 2112;
      v51 = viewControllers2;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Chat nav controller %@ VCs: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      chatController = [(CKMessagesController *)self chatController];
      chatController2 = [(CKMessagesController *)self chatController];
      conversation = [chatController2 conversation];
      chatController3 = [(CKMessagesController *)self chatController];
      parentViewController = [chatController3 parentViewController];
      *buf = 138412802;
      v49 = chatController;
      v50 = 2112;
      v51 = conversation;
      v52 = 2112;
      v53 = parentViewController;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Chat controller: %@, conv: %@,  parent: %@", buf, 0x20u);
    }
  }

  conversationListNavigationController3 = [(CKMessagesController *)self conversationListNavigationController];

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    conversationListController = [(CKMessagesController *)self conversationListController];
    v30 = conversationListController == viewControllerCopy;
  }

  else
  {
    v30 = 0;
  }

  if (conversationListNavigationController3 == controllerCopy || v30)
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        isCollapsed = [(CKMessagesController *)self isCollapsed];
        isShowingChatController = [(CKMessagesController *)self isShowingChatController];
        v37 = @"NO";
        if (isCollapsed)
        {
          v38 = @"YES";
        }

        else
        {
          v38 = @"NO";
        }

        if (isShowingChatController)
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
    conversationListController2 = [(CKMessagesController *)self conversationListController];
    if (conversationListController2 == viewControllerCopy || (objc_opt_class(), (objc_opt_isKindOfClass())) && [(CKMessagesController *)self isCollapsed])
    {
      isShowingChatController2 = [(CKMessagesController *)self isShowingChatController];

      if (!isShowingChatController2)
      {
        v39[2](v39);
      }
    }

    else
    {
    }

    [(__CFString *)controllerCopy __ck_callDelegateBlocks];
    [(CKMessagesController *)self _updateAlertSuppressionContext];
    chatNavigationController3 = [(CKMessagesController *)self chatNavigationController];
    v43 = chatNavigationController3 == viewControllerCopy;

    if (v43)
    {
      conversationListController3 = [(CKMessagesController *)self conversationListController];
      viewControllers3 = [(__CFString *)controllerCopy viewControllers];
      v46 = [viewControllers3 containsObject:conversationListController3];

      if ((v46 & 1) == 0)
      {
        [(CKMessagesController *)self updateInboxAndConversationList];
      }
    }
  }

  else
  {
    composeChatController = [(CKMessagesController *)self composeChatController];
    v32 = composeChatController == viewControllerCopy;

    if (v32 && [__CurrentTestName rangeOfString:@"ShowNewCompose"] != 0x7FFFFFFFFFFFFFFFLL && !-[CKMessagesController isCollapsed](self, "isCollapsed"))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"PPTDidShowNewComposeEvent" object:0 userInfo:0];
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

- (void)splitViewControllerDidCollapse:(id)collapse
{
  inboxModel = [(CKMessagesController *)self inboxModel];
  [inboxModel setIsCollapsed:1];

  [(CKMessagesController *)self _didUpdateCollapsedState];

  [(CKMessagesController *)self _updateViewsWithChatControllerBackgroundTraits];
}

- (void)splitViewControllerDidExpand:(id)expand
{
  inboxModel = [(CKMessagesController *)self inboxModel];
  [inboxModel setIsCollapsed:0];

  chatNavigationController = [(CKMessagesController *)self chatNavigationController];
  viewControllers = [chatNavigationController viewControllers];
  v7 = [viewControllers count];

  if (!v7)
  {
    [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
  }

  [(CKMessagesController *)self _didUpdateCollapsedState];

  [(CKMessagesController *)self _updateViewsWithChatControllerBackgroundTraits];
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  [(CKMessagesController *)self dismissPhotosGridIfNeeded];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  if (isModernSplitViewControllerEnabled)
  {
    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    topViewController = [chatNavigationController topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ![(CKMessagesController *)self isComposingMessage])
    {
      return 0;
    }
  }

  else if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    chatNavigationController2 = [(CKMessagesController *)self chatNavigationController];
    topViewController2 = [chatNavigationController2 topViewController];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if ((v13 & 1) != 0 && ![(CKMessagesController *)self isComposingMessage])
    {
      return 1;
    }
  }

  return column;
}

- (BOOL)splitViewController:(id)controller collapseSecondaryViewController:(id)viewController ontoPrimaryViewController:(id)primaryViewController
{
  v38[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  primaryViewControllerCopy = primaryViewController;
  [(CKMessagesController *)self dismissPhotosGridIfNeeded];
  v11 = +[CKUIBehavior sharedBehaviors];
  if ([v11 shouldSuppressRotationInNewCompose])
  {

LABEL_7:
    if ([(CKMessagesController *)self _hasCurrentConversations])
    {
      selectionViewController = [(CKMessagesController *)self selectionViewController];
      view = [selectionViewController view];
      window = [view window];

      if (!window)
      {
        conversationListController = [(CKMessagesController *)self conversationListController];
        [conversationListController setEditing:0];

        goto LABEL_10;
      }
    }

LABEL_13:
    v24 = 1;
    goto LABEL_14;
  }

  isComposingMessage = [(CKMessagesController *)self isComposingMessage];

  if (!isComposingMessage)
  {
    goto LABEL_7;
  }

  if (![(CKMessagesController *)self isInitialLayout])
  {
    composeChatController = [(CKMessagesController *)self composeChatController];
    proposedRecipients = [composeChatController proposedRecipients];
    v34 = [proposedRecipients arrayByApplyingSelector:sel_rawAddress];

    composition = [composeChatController composition];
    v15 = +[CKUIBehavior sharedBehaviors];
    v16 = [objc_alloc(objc_msgSend(v15 "composeChatControllerClass"))];

    v32 = v16;
    [v16 setDelegate:self];
    v17 = [[CKNavigationController alloc] initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    v38[0] = composeChatController;
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
      navigationBar = [(CKNavigationController *)v17 navigationBar];
      v26 = +[CKUIBehavior sharedBehaviors];
      theme = [v26 theme];
      [navigationBar setBarStyle:{objc_msgSend(theme, "navBarStyle")}];
    }

    [(CKMessagesController *)self cancelAndDestroyComposition];
    [(CKMessagesController *)self setComposeChatController:v32];
    [(CKMessagesController *)self setComposeChatNavigationController:v17];
    composeChatController2 = [(CKMessagesController *)self composeChatController];
    objc_initWeak(&location, composeChatController2);

    composeChatController3 = [(CKMessagesController *)self composeChatController];
    [composeChatController3 beginPinningInputViewsForReason:@"SplitViewFromExpandedToCollapsedTransition"];

    composeChatNavigationController = [(CKMessagesController *)self composeChatNavigationController];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __102__CKMessagesController_splitViewController_collapseSecondaryViewController_ontoPrimaryViewController___block_invoke;
    v35[3] = &unk_1E72EC460;
    objc_copyWeak(&v36, &location);
    [(CKMessagesController *)self presentViewController:composeChatNavigationController animated:0 completion:v35];

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

- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [(CKMessagesController *)self dismissPhotosGridIfNeeded];
  conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
  navigationBar = [conversationListNavigationController navigationBar];
  [navigationBar setDarkEffectStyle:0];

  [(CKMessagesController *)self popToConversationListIfNecessaryAnimated:1];
  v10 = +[CKUIBehavior sharedBehaviors];
  if ([v10 shouldSuppressRotationInNewCompose])
  {
  }

  else
  {
    isComposingMessage = [(CKMessagesController *)self isComposingMessage];

    if (isComposingMessage)
    {
      composeChatController = [(CKMessagesController *)self composeChatController];
      proposedRecipients = [composeChatController proposedRecipients];
      v14 = [proposedRecipients arrayByApplyingSelector:sel_rawAddress];

      composition = [composeChatController composition];
      [(CKMessagesController *)self cancelAndDestroyComposition];
      [(CKMessagesController *)self showNewMessageCompositionPanelWithRecipients:v14 composition:composition animated:0];
      composeChatController2 = [(CKMessagesController *)self composeChatController];
      objc_initWeak(location, composeChatController2);

      WeakRetained = objc_loadWeakRetained(location);
      [WeakRetained beginPinningInputViewsForReason:@"SplitViewFromCollapsedToExpandedTransition"];

      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __101__CKMessagesController_splitViewController_separateSecondaryViewControllerFromPrimaryViewController___block_invoke;
      v45 = &unk_1E72EE0D0;
      selfCopy = self;
      objc_copyWeak(&v47, location);
      [(CKMessagesController *)self dismissViewControllerAnimated:0 completion:&v42];
      chatNavigationController3 = [(CKMessagesController *)self chatNavigationController:v42];
      objc_destroyWeak(&v47);
      objc_destroyWeak(location);

      goto LABEL_10;
    }
  }

  conversationListNavigationController2 = [(CKMessagesController *)self conversationListNavigationController];
  if (conversationListNavigationController2 == viewControllerCopy)
  {
    conversationListNavigationController3 = [(CKMessagesController *)self conversationListNavigationController];
    viewControllers = [conversationListNavigationController3 viewControllers];
    v24 = [viewControllers count];

    if (v24 > 2)
    {
      goto LABEL_7;
    }

    conversationListNavigationController2 = [(CKMessagesController *)self chatNavigationController];
    parentViewController = [conversationListNavigationController2 parentViewController];
    if (parentViewController)
    {
    }

    else
    {
      conversationListNavigationController4 = [(CKMessagesController *)self conversationListNavigationController];
      viewControllers2 = [conversationListNavigationController4 viewControllers];
      chatNavigationController = [(CKMessagesController *)self chatNavigationController];
      v29 = [viewControllers2 indexOfObjectIdenticalTo:chatNavigationController];

      if (v29 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_7;
      }

      viewIfLoaded = [(CKMessagesController *)self viewIfLoaded];
      conversationListNavigationController2 = [viewIfLoaded window];

      chatNavigationController2 = [(CKMessagesController *)self chatNavigationController];
      viewIfLoaded2 = [chatNavigationController2 viewIfLoaded];

      conversationListNavigationController5 = [(CKMessagesController *)self conversationListNavigationController];
      viewIfLoaded3 = [conversationListNavigationController5 viewIfLoaded];

      if (conversationListNavigationController2)
      {
        window = [viewIfLoaded2 window];
        v36 = window;
        if (window == conversationListNavigationController2)
        {
          window2 = [viewIfLoaded3 window];

          if (window2 == conversationListNavigationController2)
          {
            superview = [viewIfLoaded2 superview];
            v38Superview = [superview superview];
            v39Superview = [v38Superview superview];

            if (v39Superview == viewIfLoaded3)
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

              [viewIfLoaded2 removeFromSuperview];
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
  chatController = [(CKMessagesController *)self chatController];

  if (!chatController)
  {
    [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
  }

  chatNavigationController3 = [(CKMessagesController *)self chatNavigationController];
LABEL_10:

  return chatNavigationController3;
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

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = CKMessagesController;
  [(CKMessagesController *)&v8 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
  v5 = +[CKUIBehavior sharedBehaviors];
  if (([v5 shouldSuppressRotationInNewCompose] & 1) == 0)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    if ([v6 usesUncollapsedSplitview])
    {
      isComposingMessage = [(CKMessagesController *)self isComposingMessage];

      if (!isComposingMessage)
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

- (double)_splitViewController:(id)controller constrainPrimaryColumnWidthForResizeWidth:(double)width
{
  splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
  [splitViewCoordinator constrainedPrimaryColumnWidthForResizeWidth:width];
  v7 = v6;

  return v7;
}

- (void)_splitViewController:(id)controller willBeginResizingColumn:(int64_t)column
{
  splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
  [splitViewCoordinator splitViewControllerWillBeginResizingColumn:column];

  chatController = [(CKMessagesController *)self chatController];
  objc_opt_class();
  LOBYTE(splitViewCoordinator) = objc_opt_isKindOfClass();

  if (splitViewCoordinator)
  {
    chatController2 = [(CKMessagesController *)self chatController];
    [chatController2 chatControllerWillBeginResizing];
  }
}

- (void)_splitViewController:(id)controller didEndResizingColumn:(int64_t)column
{
  splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
  [splitViewCoordinator splitViewControllerDidEndResizingColumn:column];
}

- (void)splitViewController:(id)controller willShowColumn:(int64_t)column
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  if (!column && isModernSplitViewControllerEnabled)
  {
    [(CKMessagesController *)self setDisplayModeButtonVisibility:1];
  }

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    isCollapsed = [(CKMessagesController *)self isCollapsed];
    if (!column && !isCollapsed)
    {
      CKSetInboxVisibility(1);

      [(CKMessagesController *)self dismissKeyboardIfVisible];
    }
  }
}

- (void)splitViewController:(id)controller willHideColumn:(int64_t)column
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  if (!column && isModernSplitViewControllerEnabled)
  {
    [(CKMessagesController *)self setDisplayModeButtonVisibility:2];
  }

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    isCollapsed = [(CKMessagesController *)self isCollapsed];
    if (!column && !isCollapsed)
    {

      CKSetInboxVisibility(0);
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8.receiver = self;
  v8.super_class = CKMessagesController;
  [(CKMessagesController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (__CurrentTestName)
  {
    [coordinatorCopy animateAlongsideTransition:&__block_literal_global_648_1 completion:&__block_literal_global_650_1];
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

- (void)setChatController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = controllerCopy;
  chatController = self->_chatController;
  if (chatController)
  {
    v7 = chatController == controllerCopy;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    viewControllers = [chatNavigationController viewControllers];
    v10 = [viewControllers containsObject:self->_chatController];

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

- (void)setComposeChatController:(id)controller
{
  v12 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      composeChatController = self->_composeChatController;
      v8 = 138412546;
      v9 = composeChatController;
      v10 = 2112;
      v11 = controllerCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "updating composeChatController from: %@ to: %@", &v8, 0x16u);
    }
  }

  v7 = self->_composeChatController;
  self->_composeChatController = controllerCopy;
}

- (void)setComposeChatNavigationController:(id)controller
{
  v12 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      composeChatNavigationController = self->_composeChatNavigationController;
      v8 = 138412546;
      v9 = composeChatNavigationController;
      v10 = 2112;
      v11 = controllerCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "updating composeChatNavigationController from: %@ to: %@", &v8, 0x16u);
    }
  }

  v7 = self->_composeChatNavigationController;
  self->_composeChatNavigationController = controllerCopy;
}

- (void)dismissChatControllerIfVisibleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CKMessagesController *)self isComposingMessage])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__CKMessagesController_dismissChatControllerIfVisibleAnimated___block_invoke;
    v5[3] = &unk_1E72EBA18;
    v5[4] = self;
    [(CKMessagesController *)self dismissViewControllerAnimated:animatedCopy completion:v5];
  }

  else
  {

    [(CKMessagesController *)self popToConversationListIfNecessaryAnimated:animatedCopy];
  }
}

- (void)popToConversationListIfNecessaryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
  visibleViewController = [conversationListNavigationController visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  conversationListNavigationController2 = [(CKMessagesController *)self conversationListNavigationController];
  visibleViewController2 = [conversationListNavigationController2 visibleViewController];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || (v10)
  {
    [(CKMessagesController *)self updateInboxAndConversationList];
    conversationListNavigationController3 = [(CKMessagesController *)self conversationListNavigationController];
    conversationListController = [(CKMessagesController *)self conversationListController];
    v12 = [conversationListNavigationController3 popToViewController:conversationListController animated:animatedCopy];
  }
}

- (void)setCurrentConversation:(id)conversation keepAllCurrentlyLoadedMessages:(BOOL)messages
{
  messagesCopy = messages;
  v20 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      currentConversation = self->_currentConversation;
      v16 = 138412546;
      v17 = conversationCopy;
      v18 = 2112;
      v19 = currentConversation;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "setCurrentConversation: %@   old: %@", &v16, 0x16u);
    }
  }

  v10 = self->_currentConversation;
  if (v10 != conversationCopy)
  {
    if ([(CKConversation *)v10 hasLoadedFromSpotlight])
    {
      [(CKConversation *)self->_currentConversation reloadIfNeeded];
    }

    v11 = +[CKCurrentConversationsManager sharedInstance];
    [v11 removeConversation:self->_currentConversation];

    objc_storeStrong(&self->_currentConversation, conversation);
    if (conversationCopy)
    {
      v12 = +[CKCurrentConversationsManager sharedInstance];
      [v12 addConversation:conversationCopy];
    }

    messagesControllerDelegate = [(CKMessagesController *)self messagesControllerDelegate];
    [messagesControllerDelegate messagesController:self didUpdateCurrentConversation:conversationCopy];
  }

  v14 = +[CKCurrentConversationsManager sharedInstance];
  [v14 loadHistoryForConversation:self->_currentConversation keepAllCurrentlyLoadedMessages:messagesCopy];

  [(CKConversation *)self->_currentConversation resortMessagesIfNecessary];
  [(CKMessagesController *)self _setIsShowingNoSelectionUI:conversationCopy == 0];
  if (conversationCopy)
  {
    [(CKConversation *)conversationCopy updateUserActivity];
  }

  else
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    [mEMORY[0x1E69A5AF8] setUserActivityForChat:0 orHandles:0];
  }
}

- (void)escButtonPressed:(id)pressed
{
  v15 = *MEMORY[0x1E69E9840];
  pressedCopy = pressed;
  chatController = [(CKMessagesController *)self chatController];
  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController dismissSearchIfNeeded];
  collectionView = [conversationListController collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v9 = [indexPathsForSelectedItems count];

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
    v12 = conversationListController;
  }

  else
  {
    v12 = chatController;
  }

  [v12 escButtonPressed:pressedCopy];
}

- (void)keyCommandOpenConversationInNewWindow:(id)window
{
  currentConversation = [(CKMessagesController *)self currentConversation];
  [(CKMessagesController *)self showConversationInNewWindow:currentConversation];
}

- (void)_keyCommandChangeConversation:(BOOL)conversation
{
  conversationCopy = conversation;
  if (![(CKMessagesController *)self isCollapsed])
  {
    conversationListController = [(CKMessagesController *)self conversationListController];
    [conversationListController selectNextSequentialConversation:conversationCopy];
  }
}

- (void)keyCommandSelectPinnedConversation:(id)conversation
{
  conversationCopy = conversation;
  if (![(CKMessagesController *)self isCollapsed])
  {
    input = [conversationCopy input];
    integerValue = [input integerValue];

    conversationListController = [(CKMessagesController *)self conversationListController];
    [conversationListController selectPinnedConversationForItem:integerValue];
  }
}

- (void)keyCommandSelectFirstActiveConversation
{
  if (![(CKMessagesController *)self isCollapsed])
  {
    conversationListController = [(CKMessagesController *)self conversationListController];
    [conversationListController selectFirstActiveConversation];
  }
}

- (void)keyCommandDeleteConversation:(id)conversation
{
  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController recoverableDeleteSelectedConversations];
}

- (void)keyCommandFind:(id)find
{
  conversationListController = [(CKMessagesController *)self conversationListController];
  v4 = conversationListController;
  if (conversationListController)
  {
    v8 = conversationListController;
    isEditing = [conversationListController isEditing];
    v4 = v8;
    if ((isEditing & 1) == 0)
    {
      searchController = [v8 searchController];
      searchBar = [searchController searchBar];
      [searchBar becomeFirstResponder];

      v4 = v8;
    }
  }
}

- (void)keyCommandCompose:(id)compose
{
  composeCopy = compose;
  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController composeButtonClicked:composeCopy];
}

- (void)showDebugMenu
{
  view = [(CKMessagesController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  delegate = [windowScene delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [delegate showDebugMenu];
  }
}

- (void)_checkChatControllerLeaksForExistingController:(id)controller newController:(id)newController
{
  controllerCopy = controller;
  newControllerCopy = newController;
  location = 0;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([mEMORY[0x1E69A60F0] isInternalInstall])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [standardUserDefaults BOOLForKey:@"checkForChatControllerLeaks"];

    if (v10)
    {
      objc_storeWeak(&location, controllerCopy);
      if (controllerCopy)
      {
        if (controllerCopy != newControllerCopy)
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

- (void)_showChatControllerLeakAlertUI:(id)i
{
  v26[1] = *MEMORY[0x1E69E9840];
  iCopy = i;
  conversation = [iCopy conversation];
  hasDisplayName = [conversation hasDisplayName];

  conversation2 = [iCopy conversation];
  v8 = conversation2;
  if (hasDisplayName)
  {
    [conversation2 displayName];
  }

  else
  {
    [conversation2 name];
  }
  v9 = ;

  iCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", iCopy];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Chat controller %@ leaked in conversation %@. Please take a memory dump and file a radar!", iCopy, v9];
  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11];
  v25 = *MEMORY[0x1E69DB648];
  v13 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
  v26[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v15 = [v11 rangeOfString:iCopy];
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
  v24 = iCopy;
  v21 = iCopy;
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
  chatController = [(CKMessagesController *)self chatController];
  conversation = [chatController conversation];

  if (conversation && ([conversation recipient], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    defaultIMHandle = [v4 defaultIMHandle];
  }

  else
  {
    defaultIMHandle = 0;
  }

  return defaultIMHandle;
}

- (void)find:(id)find
{
  conversationListController = [(CKMessagesController *)self conversationListController];
  if (conversationListController)
  {
    v4 = conversationListController;
    [conversationListController beginFindFromEditMenu];
    conversationListController = v4;
  }
}

- (BOOL)isSearchActiveAndDisplayingResultsForSearchText
{
  conversationListController = [(CKMessagesController *)self conversationListController];
  isSearchActiveAndDisplayingResultsForSearchText = [conversationListController isSearchActiveAndDisplayingResultsForSearchText];

  return isSearchActiveAndDisplayingResultsForSearchText;
}

- (void)findNext:(id)next
{
  if ([(CKMessagesController *)self isSearchActiveAndDisplayingResultsForSearchText])
  {
    conversationListController = [(CKMessagesController *)self conversationListController];
    if (conversationListController)
    {
      v5 = conversationListController;
      [conversationListController searchControllerFindNext];
      conversationListController = v5;
    }
  }
}

- (void)findPrevious:(id)previous
{
  if ([(CKMessagesController *)self isSearchActiveAndDisplayingResultsForSearchText])
  {
    conversationListController = [(CKMessagesController *)self conversationListController];
    if (conversationListController)
    {
      v5 = conversationListController;
      [conversationListController searchControllerFindPrevious];
      conversationListController = v5;
    }
  }
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v32.receiver = self;
  v32.super_class = CKMessagesController;
  [(CKMessagesController *)&v32 validateCommand:commandCopy];
  chatController = [(CKMessagesController *)self chatController];
  [chatController validateCommand:commandCopy];

  if ([commandCopy action] == sel_findNext_ || objc_msgSend(commandCopy, "action") == sel_findPrevious_)
  {
    [(CKMessagesController *)self _configureCommand:commandCopy enabled:[(CKMessagesController *)self isSearchActiveAndDisplayingResultsForSearchText]];
    goto LABEL_29;
  }

  if ([commandCopy action] == sel_keyCommandCompose_)
  {
    presentedViewController = [(CKMessagesController *)self presentedViewController];
    [(CKMessagesController *)self _configureCommand:commandCopy enabled:presentedViewController == 0];
LABEL_28:

    goto LABEL_29;
  }

  if ([commandCopy action] == sel_keyCommandDeleteConversation_)
  {
    presentedViewController = [(CKMessagesController *)self conversationListController];
    _numberOfSelectedConversations = [presentedViewController _numberOfSelectedConversations];
    [(CKMessagesController *)self _configureCommand:commandCopy enabled:_numberOfSelectedConversations != 0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (_numberOfSelectedConversations <= 1)
    {
      v13 = @"DELETE_CONVERSATION_ELLIPSIS";
    }

    else
    {
      v13 = @"DELETE_CONVERSATIONS_ELLIPSIS";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKit"];
    [commandCopy setTitle:v14];

    goto LABEL_21;
  }

  if (CKIsRunningInMacCatalyst() && [commandCopy action] == sel_toggleSidebar_)
  {
    [(CKMessagesController *)self _configureCommand:commandCopy enabled:[(CKMessagesController *)self _shouldShowInboxView]];
    displayMode = [(CKMessagesController *)self displayMode];
    v16 = CKFrameworkBundle();
    presentedViewController = v16;
    if (displayMode == 2)
    {
      v17 = @"Show Inbox List";
    }

    else
    {
      v17 = @"Hide Inbox List";
    }

    v12 = [v16 localizedStringForKey:v17 value:&stru_1F04268F8 table:@"ChatKit"];
    [commandCopy setTitle:v12];
LABEL_21:

    goto LABEL_28;
  }

  if ([commandCopy action] == sel_legacyDidSelectFilterFromViewMenu_)
  {
    presentedViewController = [commandCopy propertyList];
    intValue = [presentedViewController intValue];
    v8 = intValue;
    [commandCopy setState:{-[CKMessagesController currentConversationListFilterMode](self, "currentConversationListFilterMode") == intValue}];
    if (intValue == 7)
    {
      v9 = 7;
    }

    else
    {
      if (intValue != 9)
      {
LABEL_24:
        conversationList = [(CKMessagesController *)self conversationList];
        v22 = [conversationList unreadCountForFilterMode:v8];

        v23 = MEMORY[0x1E696AEC0];
        v24 = CKFrameworkBundle();
        v25 = [v24 localizedStringForKey:@"CATALYST_VIEW_MENU_FILTER_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
        title = [commandCopy title];
        v27 = [v23 localizedStringWithFormat:v25, title, v22];

        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection == 1)
        {
          v30 = @"\u200F";
        }

        else
        {
          v30 = @"\u200E";
        }

        v31 = [(__CFString *)v30 stringByAppendingString:v27];

        [commandCopy setTitle:v31];
        goto LABEL_28;
      }

      v9 = 9;
    }

    conversationList2 = [(CKMessagesController *)self conversationList];
    v19 = [conversationList2 conversationsForFilterMode:v9];
    v20 = [v19 count] != 0;

    [(CKMessagesController *)self _configureCommand:commandCopy enabled:v20];
    goto LABEL_24;
  }

LABEL_29:
}

- (void)_configureCommand:(id)command enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  commandCopy = command;
  [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") & 0xFFFFFFFFFFFFFFFELL | !enabledCopy}];
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

- (id)cnLabelForPhoneNumber:(id)number contact:(id)contact
{
  v31 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  contactCopy = contact;
  if (MEMORY[0x193AF5D40](numberCopy))
  {
    [contactCopy phoneNumbers];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v29 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v25 = contactCopy;
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
          label = [v11 label];

          if (label)
          {
            value = [v11 value];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            value2 = [v11 value];
            v16 = value2;
            if (isKindOfClass)
            {
              stringValue = [value2 stringValue];
              v18 = [numberCopy isEqualToPhoneNumber:stringValue];

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
                value3 = [v11 value];
                v21 = [numberCopy isEqualToPhoneNumber:value3];

                if (v21)
                {
LABEL_17:
                  v22 = MEMORY[0x1E695CEE0];
                  label2 = [v11 label];
                  v8 = [v22 localizedStringForLabel:label2];

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
      contactCopy = v25;
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
  presentedViewController = [(CKMessagesController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (BOOL)_isShowingModalChatController
{
  presentedViewController = [(CKMessagesController *)self presentedViewController];
  composeChatNavigationController = [(CKMessagesController *)self composeChatNavigationController];
  if (presentedViewController == composeChatNavigationController)
  {
    composeChatNavigationController2 = [(CKMessagesController *)self composeChatNavigationController];
    topViewController = [composeChatNavigationController2 topViewController];
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
  _isShowingModalChatController = [(CKMessagesController *)self _isShowingModalChatController];
  _isShowingFullscreenController = [(CKMessagesController *)self _isShowingFullscreenController];
  presentedViewController = [(CKMessagesController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (!_isShowingModalChatController && _isShowingFullscreenController && (isKindOfClass & 1) == 0)
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

  isShowingConversationListController = [(CKMessagesController *)self isShowingConversationListController];
  presentedViewController2 = [(CKMessagesController *)self presentedViewController];

  isEditing = [(CKMessagesController *)self isEditing];
  if (isShowingConversationListController && !presentedViewController2 && (isEditing & 1) == 0)
  {
    conversationListController = [(CKMessagesController *)self conversationListController];
    v13 = +[CKConversationList conversationListAlertSuppressionContextForFilterMode:](CKConversationList, "conversationListAlertSuppressionContextForFilterMode:", [conversationListController filterMode]);

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

  isShowingChatController = [(CKMessagesController *)self isShowingChatController];
  if (((isShowingChatController | [(CKMessagesController *)self isComposingMessage]) & 1) == 0)
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

  currentConversation = [(CKMessagesController *)self currentConversation];
  v17 = currentConversation == 0;

  conversationList = [(CKMessagesController *)self conversationList];
  pendingConversation = [conversationList pendingConversation];

  if (pendingConversation)
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

  currentConversation2 = [(CKMessagesController *)self currentConversation];
  v22 = [CKAlertSuppressionContextHelper alertSuppressionContextsForVisibleChatControllerWithConversation:currentConversation2];

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

- (void)_setIsShowingNoSelectionUI:(BOOL)i
{
  iCopy = i;
  v38 = *MEMORY[0x1E69E9840];
  v32 = +[CKUIBehavior sharedBehaviors];
  if (![v32 usesUncollapsedSplitview])
  {
    v6 = v32;
LABEL_5:

    return;
  }

  isCollapsed = [(CKMessagesController *)self isCollapsed];

  if (isCollapsed)
  {
    return;
  }

  if (iCopy)
  {
    selectionViewController = [(CKMessagesController *)self selectionViewController];
    if (selectionViewController)
    {
      chatNavigationController = [(CKMessagesController *)self chatNavigationController];
      topViewController = [chatNavigationController topViewController];
      selectionViewController = self->_selectionViewController;

      if (topViewController != selectionViewController)
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = self->_selectionViewController;
            chatNavigationController2 = [(CKMessagesController *)self chatNavigationController];
            viewControllers = [chatNavigationController2 viewControllers];
            *buf = 138412546;
            v35 = v12;
            v36 = 2112;
            v37 = viewControllers;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "No selection, setting chat navigation controller view controllers to selectVC: %@, VCs before: %@", buf, 0x16u);
          }
        }

        [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            chatNavigationController3 = [(CKMessagesController *)self chatNavigationController];
            viewControllers2 = [chatNavigationController3 viewControllers];
            *buf = 138412290;
            v35 = viewControllers2;
            _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "chatNavigationController (_setIsShowingNoSelectionUI) children:%@", buf, 0xCu);
          }
        }

        keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
        firstResponder = [keyWindow firstResponder];
        [firstResponder resignFirstResponder];

        chatController = [(CKMessagesController *)self chatController];
        [chatController reloadInputViews];
      }
    }

    return;
  }

  v21 = self->_selectionViewController;
  if (v21)
  {
    self->_selectionViewController = 0;
  }

  chatController2 = [(CKMessagesController *)self chatController];
  if (chatController2)
  {
    chatNavigationController4 = [(CKMessagesController *)self chatNavigationController];
    viewControllers3 = [chatNavigationController4 viewControllers];
    chatController3 = [(CKMessagesController *)self chatController];
    v26 = [viewControllers3 containsObject:chatController3];

    if ((v26 & 1) == 0)
    {
      chatNavigationController5 = [(CKMessagesController *)self chatNavigationController];
      v28 = MEMORY[0x1E695DEC8];
      chatController4 = [(CKMessagesController *)self chatController];
      v30 = [v28 arrayWithObjects:{chatController4, 0}];
      [chatNavigationController5 setViewControllers:v30];

      chatController5 = [(CKMessagesController *)self chatController];
      [chatController5 becomeFirstResponder];

      chatController6 = [(CKMessagesController *)self chatController];
      [chatController6 reloadInputViews];
      v6 = chatController6;
      goto LABEL_5;
    }
  }
}

- (void)setupBizNavBarForConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([(CKMessagesController *)self isCollapsed])
  {
    [conversationCopy isBusinessConversation];
  }
}

- (void)_conversationLeft:(id)left
{
  v41 = *MEMORY[0x1E69E9840];
  leftCopy = left;
  object = [leftCopy object];
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
        object2 = [leftCopy object];
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
      object3 = [leftCopy object];
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

  object4 = [leftCopy object];
  userInfo = [leftCopy userInfo];
  v17 = [userInfo objectForKey:@"CKConversationListWasPendingKey"];
  bOOLValue = [v17 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(34);
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = object4;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_DEBUG, "Conversation left: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v32 = object4;
    _CKLog();
  }

  conversationList = [(CKMessagesController *)self conversationList];
  remergingConversations = [conversationList remergingConversations];

  if (remergingConversations)
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

  else if (bOOLValue)
  {
    composeChatController = [(CKMessagesController *)self composeChatController];

    if (composeChatController)
    {
      composeChatController2 = [(CKMessagesController *)self composeChatController];
      [composeChatController2 conversationLeft];
    }
  }

  else
  {
    chatController = [(CKMessagesController *)self chatController];
    conversation = [chatController conversation];
    v27 = [conversation isEqual:object4];

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
      chatController2 = [(CKMessagesController *)self chatController];
      [chatController2 setDelegate:0];

      [(CKMessagesController *)self setChatController:0];
      [(CKMessagesController *)self setCurrentConversation:0];
      v30 = objc_alloc_init(MEMORY[0x1E69D41A0]);
      [v30 deleteSnapshotsForApplicationIdentifier:@"com.apple.MobileSMS"];
      [v30 invalidate];
    }
  }
}

- (void)_conversationListFinishedMerging:(id)merging
{
  v15 = *MEMORY[0x1E69E9840];
  mergingCopy = merging;
  currentConversation = [(CKMessagesController *)self currentConversation];
  conversationList = [(CKMessagesController *)self conversationList];
  chat = [currentConversation chat];
  guid = [chat guid];
  v9 = [conversationList conversationForExistingChatWithGUID:guid];

  if (v9)
  {
    if (currentConversation != v9)
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
          v14 = currentConversation;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Conversation list performed re-merge, updating current conversation to %@ from %@", &v11, 0x16u);
        }

LABEL_11:
      }
    }
  }

  else if (currentConversation && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = currentConversation;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CKMessagesController attempted to replace conversation after re-merge, but couldn't find a new conversation to replace %@", &v11, 0xCu);
    }

    goto LABEL_11;
  }
}

- (void)_chatRegistryDidLoad:(id)load
{
  v4 = +[CKCurrentConversationsManager sharedInstance];
  [v4 pruneCache];

  v5 = [(CKMessagesController *)self _hasCurrentConversations]^ 1;

  [(CKMessagesController *)self _setIsShowingNoSelectionUI:v5];
}

- (void)_appStateChange:(id)change
{
  name = [change name];
  if ([name isEqualToString:*MEMORY[0x1E69DDAD0]] || objc_msgSend(name, "isEqualToString:", *MEMORY[0x1E69DDBC0]))
  {
    self->_attachmentPreviewQosClass = 25;
  }

  else if ([name isEqualToString:*MEMORY[0x1E69DDAC8]])
  {
    self->_attachmentPreviewQosClass = 9;
    [(CKMessagesController *)self cleanUpInteractionViews];
    chatController = [(CKMessagesController *)self chatController];
    chat = [chatController chat];
    [chat endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57D8]];

    [(CKMessagesController *)self handleAnalyticsOnBackground];
  }
}

- (void)applicationWillResume:(id)resume
{
  if (CKIsRunningInMacCatalyst())
  {
    chatController = [(CKMessagesController *)self chatController];
    [chatController _markAsReadIfNecessary];
  }
}

- (void)_appStateDidResumeFromInactive:(id)inactive
{
  [(CKMessagesController *)self presentFocusStatusAuthorizationAlertIfNecessary];
  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  [mEMORY[0x1E69A8088] updateFocusStateForCurrentFocusFilterActionAsync];
}

- (void)handleAnalyticsOnBackground
{
  v2 = +[_TtC7ChatKit37CKBackgroundSettingsPeriodicAnalytics shared];
  [v2 checkAndSendPeriodicReportIfNeeded];
}

- (id)nonConversationListControllersInNavigationStack
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
  viewControllers = [conversationListNavigationController viewControllers];

  v6 = [viewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        inboxViewController = [(CKMessagesController *)self inboxViewController];
        v12 = inboxViewController;
        if (v10 == inboxViewController)
        {
        }

        else
        {
          conversationListControllerIfInitialized = [(CKMessagesController *)self conversationListControllerIfInitialized];

          if (v10 != conversationListControllerIfInitialized)
          {
            [array addObject:v10];
          }
        }
      }

      v7 = [viewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return array;
}

- (void)showInboxViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CKMessagesController *)self _shouldShowInboxView])
  {
    [(CKMessagesController *)self updateInboxAndConversationList];
    if ([(CKMessagesController *)self _wantsThreeColumnLayout])
    {
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

      if ((isModernSplitViewControllerEnabled & 1) == 0)
      {
        [(CKMessagesController *)self showColumn:0];
      }

      goto LABEL_11;
    }

    inboxViewController = [(CKMessagesController *)self inboxViewController];

    if (inboxViewController)
    {
      conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
      inboxViewController2 = [(CKMessagesController *)self inboxViewController];
      v11 = [conversationListNavigationController popToViewController:inboxViewController2 animated:animatedCopy];

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

- (void)changeFilterMode:(unint64_t)mode
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CKMessagesController changeFilterMode:];
  }

  conversationList = [(CKMessagesController *)self conversationList];
  [conversationList releaseWasKnownSenderHold];

  conversationList2 = [(CKMessagesController *)self conversationList];
  [conversationList2 updateConversationsWasKnownSender];

  conversationList3 = [(CKMessagesController *)self conversationList];
  [conversationList3 clearHoldInUnreadFilter];

  conversationListController = [(CKMessagesController *)self conversationListController];
  filterMode = [conversationListController filterMode];

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CKMessagesController *)filterMode changeFilterMode:mode];
  }

  conversationListController2 = [(CKMessagesController *)self conversationListController];
  [conversationListController2 setFilterMode:mode];

  conversationListController3 = [(CKMessagesController *)self conversationListController];
  contentScrollView = [conversationListController3 contentScrollView];
  [contentScrollView __ck_scrollToTop:0];

  conversationListController4 = [(CKMessagesController *)self conversationListController];
  [conversationListController4 updateConversationList];

  if ([(CKMessagesController *)self _wantsThreeColumnLayout])
  {
    if (!CKIsRunningInMacCatalyst())
    {
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

      if ((isModernSplitViewControllerEnabled & 1) == 0)
      {
        [(CKMessagesController *)self hideColumn:0];
      }
    }

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernSplitViewControllerEnabled2 = [mEMORY[0x1E69A8070]2 isModernSplitViewControllerEnabled];

    if ((isModernSplitViewControllerEnabled2 & 1) == 0)
    {
      [(CKMessagesController *)self showColumn:1];
    }
  }

  else
  {
    inboxViewController = [(CKMessagesController *)self inboxViewController];
    navigationController = [inboxViewController navigationController];
    conversationListController5 = [(CKMessagesController *)self conversationListController];
    [navigationController pushViewController:conversationListController5 animated:1];
  }

  v23 = [MEMORY[0x1E69A8210] conversationFilterModeForMessageFilter:mode];
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  v25 = *MEMORY[0x1E69A73E8];
  v29[0] = @"ChoseFilter";
  v28[0] = @"actionType";
  v28[1] = @"filterType";
  v26 = IMConversationListFilterModeStringValue(v23);
  v28[2] = @"fromView";
  v29[1] = v26;
  v29[2] = @"InboxView";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
  [mEMORY[0x1E69A8168] trackEvent:v25 withDictionary:v27];
}

- (id)inboxItemForFilterMode:(unint64_t)mode title:(id)title andSystemImage:(id)image
{
  imageCopy = image;
  titleCopy = title;
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:titleCopy value:&stru_1F04268F8 table:@"ChatKit"];

  v12 = [(CKMessagesController *)self inboxItemForFilterMode:mode localizedTitle:v11 andSystemImage:imageCopy];

  return v12;
}

- (id)inboxItemForFilterMode:(unint64_t)mode localizedTitle:(id)title andSystemImage:(id)image
{
  imageCopy = image;
  titleCopy = title;
  v10 = [(CKMessagesController *)self _unreadCountStringForFilterMode:mode];
  v11 = objc_alloc(MEMORY[0x1E69B1808]);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__CKMessagesController_inboxItemForFilterMode_localizedTitle_andSystemImage___block_invoke;
  v15[3] = &unk_1E72ED810;
  v15[4] = self;
  v15[5] = mode;
  v13 = [v11 initWithTitle:titleCopy subtitle:0 systemImage:imageCopy accessoryText:v10 filterMode:v12 action:v15];

  return v13;
}

- (id)newInboxModel
{
  v57[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(CKMessagesController *)self inboxItemForFilterMode:1 title:@"ALL_MESSAGES" andSystemImage:@"message.and.message"];
  [v3 addObject:v4];
  selfCopy = self;
  if ([(CKMessagesController *)self _isMessageFilteringEnabled])
  {
    v5 = [(CKMessagesController *)self inboxItemForFilterMode:2 title:@"KNOWN_SENDERS" andSystemImage:@"person.crop.circle"];
    v57[0] = v5;
    v6 = [(CKMessagesController *)selfCopy inboxItemForFilterMode:3 title:@"UNKNOWN_SENDERS" andSystemImage:@"person.crop.circle.badge.questionmark"];
    v57[1] = v6;
    v7 = [(CKMessagesController *)selfCopy inboxItemForFilterMode:8 title:@"UNREAD_MESSAGES" andSystemImage:@"message.badge"];
    v57[2] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
    [v3 addObjectsFromArray:v8];
  }

  array = [MEMORY[0x1E695DF70] array];
  v10 = objc_alloc(MEMORY[0x1E69B1818]);
  v11 = [v3 copy];
  v12 = [v10 initWithHeader:0 footer:0 items:v11];

  [array addObject:v12];
  v13 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"spamFiltrationExtensionName");
  if ([v13 length])
  {
    v46 = v12;
    v47 = array;
    v48 = v4;
    v49 = v3;
    v14 = MEMORY[0x1E696AEC0];
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"FILTERED_BY_APP_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
    v45 = v13;
    v17 = [v14 stringWithFormat:v16, v13];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
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
          filterMode = [v29 filterMode];
          v31 = IMSharedUtilitiesFrameworkBundle();
          folderName = [v29 folderName];
          v33 = [v31 localizedStringForKey:folderName value:&stru_1F04268F8 table:@"IMSharedUtilities"];
          iconName = [v29 iconName];
          v35 = [(CKMessagesController *)selfCopy inboxItemForFilterMode:filterMode title:v33 andSystemImage:iconName];
          [v24 addObject:v35];
        }

        v26 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v26);
    }

    v36 = [(CKMessagesController *)selfCopy inboxItemForFilterMode:6 title:v43 andSystemImage:@"xmark.bin"];
    [v24 addObject:v36];

    v37 = objc_alloc(MEMORY[0x1E69B1818]);
    v38 = [v24 copy];
    v39 = [v37 initWithHeader:v44 footer:0 items:v38];

    array = v47;
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

  v41 = [objc_alloc(MEMORY[0x1E69B1810]) initWithSections:array footerAction:v40];
  [v41 setIsCollapsed:{-[CKMessagesController isCollapsed](selfCopy, "isCollapsed")}];
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

- (id)_unreadCountStringForFilterMode:(unint64_t)mode
{
  conversationList = [(CKMessagesController *)self conversationList];
  v5 = [conversationList unreadCountForFilterMode:mode];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v7 = v6;
  if (v5)
  {
    __ck_localizedString = [v6 __ck_localizedString];
  }

  else
  {
    __ck_localizedString = &stru_1F04268F8;
  }

  return __ck_localizedString;
}

- (void)persistColumnWidths:(id)widths
{
  splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
  [splitViewCoordinator persistColumnWidths];
}

- (void)conversationListControllerWillPresentSearchResultsController
{
  if (CKIsRunningInMacCatalyst())
  {
    [(CKMessagesController *)self persistColumnWidths:self];
    splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
    [splitViewCoordinator setSearchPresented:1];
  }
}

- (void)conversationListControllerWillDismissSearchResultsController
{
  conversationListController = [(CKMessagesController *)self conversationListController];
  isSearchActive = [conversationListController isSearchActive];

  if (isSearchActive)
  {
    chatController = [(CKMessagesController *)self chatController];

    if (chatController)
    {
      chatController2 = [(CKMessagesController *)self chatController];
    }

    else
    {
      composeChatController = [(CKMessagesController *)self composeChatController];

      if (!composeChatController)
      {
LABEL_7:
        [composeChatController restoreInputAfterSearchPresentation];

        goto LABEL_8;
      }

      chatController2 = [(CKMessagesController *)self composeChatController];
    }

    composeChatController = chatController2;
    goto LABEL_7;
  }

LABEL_8:
  if (CKIsRunningInMacCatalyst())
  {
    splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
    [splitViewCoordinator setSearchPresented:0];
  }
}

- (void)conversationListUpdatedSelectedIndexPathCount:(int64_t)count
{
  conversationListController = [(CKMessagesController *)self conversationListController];
  if (count == 1 && ![(CKMessagesController *)self hasRecentlyDeletedFilterSelected]&& CKIsRunningInMacCatalyst())
  {
    [conversationListController _performMultiSelectCleanUp];
  }

  else
  {
    [(CKMessagesController *)self _updateSelectionViewWithCount:count];
  }
}

- (void)updatedFilterMode
{
  selectionViewController = [(CKMessagesController *)self selectionViewController];
  [selectionViewController _setNeedsUpdateContentUnavailableConfiguration];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {

    [(CKMessagesController *)self dismissDetailsNavigationController];
  }
}

- (void)_updateSelectionViewWithCount:(int64_t)count
{
  if (count != 1)
  {
    [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

    if (isModernFilteringEnabled)
    {
      [(CKMessagesController *)self dismissDetailsNavigationController];
    }
  }

  selectionViewController = [(CKMessagesController *)self selectionViewController];
  [selectionViewController _setNeedsUpdateContentUnavailableConfiguration];
}

- (id)_recentlyDeletedDisclosureText
{
  conversationListController = [(CKMessagesController *)self conversationListController];
  _recentlyDeletedDisclosureLabelText = [conversationListController _recentlyDeletedDisclosureLabelText];

  return _recentlyDeletedDisclosureLabelText;
}

- (id)currentlyShownConversation
{
  v21 = *MEMORY[0x1E69E9840];
  junkModalMessagesController = [(CKMessagesController *)self junkModalMessagesController];
  v4 = junkModalMessagesController;
  if (junkModalMessagesController)
  {
    currentlyShownConversation = [junkModalMessagesController currentlyShownConversation];
    goto LABEL_21;
  }

  isCollapsed = [(CKMessagesController *)self isCollapsed];
  if (!isCollapsed)
  {
    if ([(CKMessagesController *)self isShowingSelectionView])
    {
      chatNavigationController = 0;
LABEL_19:
      currentlyShownConversation = 0;
      goto LABEL_20;
    }

    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__77;
    *&v20 = __Block_byref_object_dispose__77;
    *(&v20 + 1) = 0;
    currentlyShownConversation = [chatNavigationController viewControllers];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__CKMessagesController_currentlyShownConversation__block_invoke;
    v17[3] = &unk_1E72F8010;
    v17[4] = buf;
    [currentlyShownConversation enumerateObjectsUsingBlock:v17];

    v9 = *(*&buf[8] + 40);
    if (v9)
    {
      currentlyShownConversation = [*(*&buf[8] + 40) conversation];
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
        viewControllers = [(CKMessagesController *)self viewControllers];
        if (isCollapsed)
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        viewControllers2 = [chatNavigationController viewControllers];
        conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
        viewControllers3 = [conversationListNavigationController viewControllers];
        *buf = 138413058;
        *&buf[4] = viewControllers;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        v19 = viewControllers2;
        LOWORD(v20) = 2112;
        *(&v20 + 2) = viewControllers3;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CKMessagesController warning: Was not able to determine the currently shown conversation in the current viewControllers configuration: %@, isCollapsed: %@, chatNavigation.viewControllers: %@, conversationNavigation.viewControllers: %@", buf, 0x2Au);
      }
    }

    goto LABEL_19;
  }

  if (![(CKMessagesController *)self isTopVCChatNavigationController])
  {
    chatNavigationController = 0;
    goto LABEL_12;
  }

  chatController = [(CKMessagesController *)self chatController];
  currentlyShownConversation = [chatController conversation];

  chatNavigationController = 0;
LABEL_20:

LABEL_21:

  return currentlyShownConversation;
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

- (void)catalystFiltersNavigationBackButtonTapped:(id)tapped
{
  tappedCopy = tapped;
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

- (void)_conversationFilteringStateChangedNotification:(id)notification
{
  v4 = +[CKUIBehavior sharedBehaviors];
  conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
  [v4 setupNavBarAppearanceWithNavigationController:conversationListNavigationController];

  [(CKMessagesController *)self updateInboxAndConversationList];
}

- (void)_setFilterUnknownSenders:(id)senders
{
  v13 = *MEMORY[0x1E69E9840];
  sendersCopy = senders;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    userInfo = [sendersCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"filterUnknownSenders"];
    bOOLValue = [v7 BOOLValue];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (bOOLValue)
        {
          v10 = @"YES";
        }

        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Filter Unknown Senders set to: %@", &v11, 0xCu);
      }
    }

    CKSetMessageFilteringEnabled(bOOLValue);
  }
}

- (void)screenTimeOKPressedForChatController:(id)controller
{
  [(CKMessagesController *)self setCurrentConversation:0];
  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController updateConversationSelection];

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

  _isSendingNewComposeMessage = [(CKMessagesController *)self _isSendingNewComposeMessage];
  v7 = IMOSLoggingEnabled();
  if (_isSendingNewComposeMessage)
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
  composeChatController = [(CKMessagesController *)self composeChatController];
  isSendingMessage = [composeChatController isSendingMessage];

  return isSendingMessage;
}

- (id)backNavigationItemForChatController:(id)controller
{
  conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
  viewControllers = [conversationListNavigationController viewControllers];
  v5 = viewControllers;
  v6 = MEMORY[0x1E695E0F0];
  if (viewControllers)
  {
    v6 = viewControllers;
  }

  v7 = v6;

  if ([v7 count] < 2)
  {
    navigationItem = 0;
  }

  else
  {
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 2}];
    navigationItem = [v8 navigationItem];
  }

  return navigationItem;
}

- (void)chatController:(id)controller didStartTextSelectionInView:(id)view
{
  viewCopy = view;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTextSelectionEnabled = [mEMORY[0x1E69A8070] isTextSelectionEnabled];

  if (isTextSelectionEnabled)
  {
    [(CKMessagesController *)self setupCKDismissOnInteractionView];
    dismissOnInteractionView = [(CKMessagesController *)self dismissOnInteractionView];
    [dismissOnInteractionView isolatePassthroughView:viewCopy];
  }
}

- (void)chatController:(id)controller balloonViewWillDismissEditMenu:(id)menu
{
  controllerCopy = controller;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTextSelectionEnabled = [mEMORY[0x1E69A8070] isTextSelectionEnabled];

  if (isTextSelectionEnabled)
  {
    [(CKMessagesController *)self cleanUpInteractionViews];
    chat = [controllerCopy chat];
    [chat endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57D8]];
  }
}

- (void)chatController:(id)controller didDetachDetailsNavigationController:(id)navigationController
{
  [(CKMessagesController *)self setDetailsNavigationController:navigationController];
  detailsNavigationController = [(CKMessagesController *)self detailsNavigationController];
  [detailsNavigationController setIsDetached:1];
}

- (BOOL)shouldUseMinimumSafeAreas
{
  view = [(CKMessagesController *)self view];
  _usesMinimumSafeAreas = [view _usesMinimumSafeAreas];

  return _usesMinimumSafeAreas;
}

- (BOOL)isDetailsNavigationControllerDetached
{
  detailsNavigationController = [(CKMessagesController *)self detailsNavigationController];
  isDetached = [detailsNavigationController isDetached];

  return isDetached;
}

- (void)presentDetailsNavigationController:(id)controller
{
  controllerCopy = controller;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

  if (isRedesignedDetailsViewEnabled)
  {
    redesignedDetailsNavigationController = [(CKMessagesController *)self redesignedDetailsNavigationController];

    v7 = controllerCopy;
    if (redesignedDetailsNavigationController == controllerCopy)
    {
      goto LABEL_7;
    }

    [(CKMessagesController *)self setRedesignedDetailsNavigationController:controllerCopy];
  }

  else
  {
    detailsNavigationController = [(CKMessagesController *)self detailsNavigationController];

    v7 = controllerCopy;
    if (detailsNavigationController == controllerCopy)
    {
      goto LABEL_7;
    }

    [(CKMessagesController *)self setDetailsNavigationController:controllerCopy];
  }

  v7 = controllerCopy;
LABEL_7:
}

- (BOOL)hasPresentedInspectorForChatController:(id)controller
{
  splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
  isInspectorVisible = [splitViewCoordinator isInspectorVisible];

  return isInspectorVisible;
}

- (void)presentDetailsViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  chatController = [(CKMessagesController *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chatController2 = [(CKMessagesController *)self chatController];
    [chatController2 presentDetailsViewControllerAnimated:animatedCopy];
  }
}

- (void)dismissDetailsControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  chatController = [(CKMessagesController *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chatController2 = [(CKMessagesController *)self chatController];
    [chatController2 dismissDetailsControllerAnimated:animatedCopy];
  }
}

- (void)dismissDetailsNavigationControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  if (isModernSplitViewControllerEnabled)
  {
    splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
    isInspectorVisible = [splitViewCoordinator isInspectorVisible];

    if (isInspectorVisible)
    {
      splitViewCoordinator2 = [(CKMessagesController *)self splitViewCoordinator];
      [splitViewCoordinator2 presentViewControllerInInspector:0];
    }

    else
    {
      [(CKMessagesController *)self _performNonInspectorDetailsViewDismissalWithCompletion:completionCopy];
    }

    macToolbarController = [(CKMessagesController *)self macToolbarController];
    [macToolbarController setIsShowingInspector:0];
  }

  else
  {
    [(CKMessagesController *)self _performNonInspectorDetailsViewDismissalWithCompletion:completionCopy];
  }
}

- (void)_performNonInspectorDetailsViewDismissalWithCompletion:(id)completion
{
  v4 = MEMORY[0x1E69A8070];
  completionCopy = completion;
  sharedFeatureFlags = [v4 sharedFeatureFlags];
  isRedesignedDetailsViewEnabled = [sharedFeatureFlags isRedesignedDetailsViewEnabled];

  if (isRedesignedDetailsViewEnabled)
  {
    redesignedDetailsNavigationController = [(CKMessagesController *)self redesignedDetailsNavigationController];
    [redesignedDetailsNavigationController dismissViewControllerAnimated:1 completion:completionCopy];

    [(CKMessagesController *)self setRedesignedDetailsNavigationController:0];
    macToolbarController = [(CKMessagesController *)self macToolbarController];
    [macToolbarController setIsShowingInspector:0];
  }

  else
  {
    detailsNavigationController = [(CKMessagesController *)self detailsNavigationController];
    [detailsNavigationController dismissViewControllerAnimated:1 completion:completionCopy];

    [(CKMessagesController *)self setDetailsNavigationController:0];
  }
}

- (void)dismissDetailsViewAndShowConversationListWithCompletion:(id)completion
{
  completionCopy = completion;
  [(CKMessagesController *)self dismissDetailsNavigationController];
  v5 = dispatch_time(0, 250000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__CKMessagesController_dismissDetailsViewAndShowConversationListWithCompletion___block_invoke;
  v7[3] = &unk_1E72ED1C8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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
  detailsNavigationController = [(CKMessagesController *)self detailsNavigationController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__CKMessagesController_dismissAndReopenDetailsNavigationController__block_invoke;
  v4[3] = &unk_1E72EBA18;
  v4[4] = self;
  [detailsNavigationController dismissViewControllerAnimated:1 completion:v4];
}

void __67__CKMessagesController_dismissAndReopenDetailsNavigationController__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDetailsNavigationController:0];
  v2 = [*(a1 + 32) chatController];
  [v2 presentDetailsViewController];
}

- (void)setupCKDismissOnInteractionView
{
  dismissOnInteractionView = [(CKMessagesController *)self dismissOnInteractionView];

  if (!dismissOnInteractionView)
  {
    v4 = [_TtC7ChatKit29CKInteractionNotificationView alloc];
    view = [(CKMessagesController *)self view];
    [view bounds];
    v6 = [(CKInteractionNotificationView *)v4 initWithFrame:?];
    [(CKMessagesController *)self setDismissOnInteractionView:v6];

    dismissOnInteractionView2 = [(CKMessagesController *)self dismissOnInteractionView];
    [dismissOnInteractionView2 setDelegate:self];

    dismissOnInteractionView3 = [(CKMessagesController *)self dismissOnInteractionView];
    [dismissOnInteractionView3 setAutoresizingMask:18];
  }

  view2 = [(CKMessagesController *)self view];
  dismissOnInteractionView4 = [(CKMessagesController *)self dismissOnInteractionView];
  [view2 addSubview:dismissOnInteractionView4];
}

- (void)showNewMessageCompositionPanelWithRecipients:(id)recipients chatID:(id)d composition:(id)composition appendToExistingDraft:(BOOL)draft suggestedReplies:(id)replies animated:(BOOL)animated bizIntent:(id)intent launchPluginWithBundleID:(id)self0 pluginLaunchPayload:(id)self1 startAudioRecording:(BOOL)self2 simID:(id)self3 sendMessageHandler:(id)self4
{
  draftCopy = draft;
  v44 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  dCopy = d;
  compositionCopy = composition;
  repliesCopy = replies;
  intentCopy = intent;
  iDCopy = iD;
  payloadCopy = payload;
  simIDCopy = simID;
  handlerCopy = handler;
  kdebug_trace();
  if ([(CKMessagesController *)self shouldShowMakoIMessageAlert])
  {
    [(CKMessagesController *)self showMakoIMessageAlert];
  }

  else if (([MEMORY[0x1E69A5CA0] smsEnabled] & 1) != 0 || CKiMessageSupported())
  {
    v23 = recipientsCopy;
    if (recipientsCopy && compositionCopy)
    {
      v24 = dCopy;
      v25 = compositionCopy;
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

      if (draftCopy && v29)
      {
        v30 = [v29 compositionByAppendingComposition:compositionCopy];
      }

      else
      {
        if (compositionCopy)
        {
          v31 = compositionCopy;
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
        v43 = recipientsCopy;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Showing new compose with recipients %@", buf, 0xCu);
      }
    }

    BYTE1(v33) = animated;
    LOBYTE(v33) = recording;
    [(CKMessagesController *)self _showNewComposeWithRecipients:v23 composition:v25 chatIdentifier:v24 bizIntent:intentCopy launchPluginWithBundleID:iDCopy pluginLaunchPayload:payloadCopy startAudioRecording:v33 animated:simIDCopy simID:handlerCopy sendMessageHandler:?];
  }
}

- (void)_showNewComposeWithRecipients:(id)recipients composition:(id)composition chatIdentifier:(id)identifier bizIntent:(id)intent launchPluginWithBundleID:(id)d pluginLaunchPayload:(id)payload startAudioRecording:(BOOL)recording animated:(BOOL)self0 simID:(id)self1 sendMessageHandler:(id)self2
{
  v72[1] = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  compositionCopy = composition;
  identifierCopy = identifier;
  intentCopy = intent;
  dCopy = d;
  payloadCopy = payload;
  iDCopy = iD;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  if (isModernSplitViewControllerEnabled)
  {
    [(CKMessagesController *)self dismissDetailsNavigationController];
  }

  v26 = +[CKUIBehavior sharedBehaviors];
  composeChatControllerClass = [v26 composeChatControllerClass];

  v28 = [composeChatControllerClass alloc];
  v29 = v28;
  v69 = recipientsCopy;
  if (intentCopy)
  {
    v30 = [v28 initWithRecipientAddresses:recipientsCopy composition:compositionCopy chatIdentifier:identifierCopy bizIntent:intentCopy simID:{iDCopy, iDCopy, identifierCopy}];
  }

  else
  {
    bizIntent = [compositionCopy bizIntent];
    v30 = [v29 initWithRecipientAddresses:recipientsCopy composition:compositionCopy chatIdentifier:identifierCopy bizIntent:bizIntent simID:iDCopy];
  }

  [v30 setSendMenuDelegate:self];
  isComposingMessage = [(CKMessagesController *)self isComposingMessage];
  if (isComposingMessage)
  {
    composeChatController = [(CKMessagesController *)self composeChatController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      composeChatController2 = [(CKMessagesController *)self composeChatController];
      proposedRecipients = [composeChatController2 proposedRecipients];
      composeRecipientHandles = [proposedRecipients composeRecipientHandles];

      proposedRecipients2 = [v30 proposedRecipients];
      composeRecipientHandles2 = [proposedRecipients2 composeRecipientHandles];

      if (([composeRecipientHandles equivalentToRecipients:composeRecipientHandles2] & 1) == 0)
      {
        [(CKMessagesController *)self cancelAndDestroyComposition];
      }
    }
  }

  conversation = [v30 conversation];
  [(CKMessagesController *)self setCurrentConversation:conversation];
  v41 = +[CKConversationList sharedConversationList];
  [v41 setPendingConversation:conversation];

  v42 = +[CKAdaptivePresentationController sharedInstance];
  [v42 dismissViewControllerAnimated:1 completion:0];

  v43 = +[CKUIBehavior sharedBehaviors];
  shouldDismissSideMountedPanel = [v43 shouldDismissSideMountedPanel];

  if (shouldDismissSideMountedPanel)
  {
    chatController = [(CKMessagesController *)self chatController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [chatController dismissViewControllerAnimated:1 completion:0];
    }
  }

  v68 = compositionCopy;
  if (isComposingMessage)
  {
    [(CKMessagesController *)self setComposeChatNavigationController:0];
    modalViewController = [(CKMessagesController *)self modalViewController];

    if (modalViewController)
    {
      [(CKMessagesController *)self dismissModalViewControllerWithTransition:9];
    }
  }

  isCollapsed = [(CKMessagesController *)self isCollapsed];
  [v30 setDelegate:self];
  [(CKMessagesController *)self setComposeChatController:v30];
  if (dCopy)
  {
    [v30 setupStateForLaunchPluginWithBundleID:dCopy pluginPayload:payloadCopy];
  }

  if (recording)
  {
    [v30 setupStateForLaunchAudio];
  }

  if (isCollapsed)
  {
    [(CKMessagesController *)self showConversationListWithAnimation:0];
    v48 = [[CKNavigationController alloc] initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    v72[0] = v30;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
    [(CKNavigationController *)v48 setViewControllers:v49];

    v50 = +[CKUIBehavior sharedBehaviors];
    useMacToolbar = [v50 useMacToolbar];

    if (useMacToolbar)
    {
      [(CKMessagesController *)self dismissDetailsNavigationController];
      [(CKNavigationController *)v48 setNavigationBarHidden:1];
    }

    else
    {
      navigationBar = [(CKNavigationController *)v48 navigationBar];
      v57 = +[CKUIBehavior sharedBehaviors];
      theme = [v57 theme];
      [navigationBar setBarStyle:{objc_msgSend(theme, "navBarStyle")}];
    }

    [(CKMessagesController *)self setComposeChatNavigationController:v48];
    composeChatNavigationController = [(CKMessagesController *)self composeChatNavigationController];
    [(CKMessagesController *)self presentViewController:composeChatNavigationController animated:animated completion:&__block_literal_global_855];
  }

  else
  {
    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    v71 = v30;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    [chatNavigationController setViewControllers:v53];

    if (!CKIsRunningInMacCatalyst())
    {
      if ([(CKMessagesController *)self _wantsThreeColumnLayout])
      {
        mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isModernSplitViewControllerEnabled2 = [mEMORY[0x1E69A8070]2 isModernSplitViewControllerEnabled];

        if ((isModernSplitViewControllerEnabled2 & 1) == 0)
        {
          [(CKMessagesController *)self hideColumn:0];
        }
      }
    }
  }

  chatController2 = [(CKMessagesController *)self chatController];
  [chatController2 setDelegate:0];

  [(CKMessagesController *)self setChatController:0];
  v61 = +[CKUIBehavior sharedBehaviors];
  useMacToolbar2 = [v61 useMacToolbar];

  if (useMacToolbar2)
  {
    if ([v30 conformsToProtocol:&unk_1F051C328])
    {
      macToolbarController = [(CKMessagesController *)self macToolbarController];
      [v30 configureWithToolbarController:macToolbarController];
    }

    [(CKMessagesController *)self dismissDetailsNavigationController];
  }

  conversationListController = [(CKMessagesController *)self conversationListController];
  [conversationListController updateConversationList];

  [(CKMessagesController *)self _updateAlertSuppressionContext];
  messagesControllerDelegate = [(CKMessagesController *)self messagesControllerDelegate];
  [messagesControllerDelegate didShowNewComposeInMessagesController:self];
}

void __190__CKMessagesController__showNewComposeWithRecipients_composition_chatIdentifier_bizIntent_launchPluginWithBundleID_pluginLaunchPayload_startAudioRecording_animated_simID_sendMessageHandler___block_invoke()
{
  if ([__CurrentTestName rangeOfString:@"ShowNewCompose"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v0 = [MEMORY[0x1E696AD88] defaultCenter];
    [v0 postNotificationName:@"PPTDidShowNewComposeEvent" object:0 userInfo:0];
  }
}

- (void)cancelNewMessageCompositionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CKMessagesController *)self isComposingMessage])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__CKMessagesController_cancelNewMessageCompositionAnimated___block_invoke;
    v5[3] = &unk_1E72EBA18;
    v5[4] = self;
    [(CKMessagesController *)self dismissViewControllerAnimated:animatedCopy completion:v5];
  }
}

- (void)composeChatControllerDidCancelComposition:(id)composition
{
  compositionCopy = composition;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __66__CKMessagesController_composeChatControllerDidCancelComposition___block_invoke;
    v29 = &unk_1E72EBA18;
    selfCopy = self;
    v5 = &v26;
LABEL_7:
    [(CKMessagesController *)self dismissViewControllerAnimated:1 completion:v5, v21, v22, v23, v24, selfCopy2, v26, v27, v28, v29, selfCopy];
    goto LABEL_13;
  }

  presentedViewController = [(CKMessagesController *)self presentedViewController];
  navigationController = [compositionCopy navigationController];
  v8 = [presentedViewController isEqual:navigationController];

  currentConversation = [(CKMessagesController *)self currentConversation];
  conversationList = [(CKMessagesController *)self conversationList];
  pendingConversation = [conversationList pendingConversation];

  if (currentConversation == pendingConversation)
  {
    [(CKMessagesController *)self setCurrentConversation:0];
  }

  conversationList2 = [(CKMessagesController *)self conversationList];
  [conversationList2 unpendConversation];

  v13 = +[CKDraftManager sharedInstance];
  conversationList3 = [(CKMessagesController *)self conversationList];
  pendingConversation2 = [conversationList3 pendingConversation];
  unsentComposition = [pendingConversation2 unsentComposition];
  [v13 clearDraftForComposition:unsentComposition];

  if (v8)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __66__CKMessagesController_composeChatControllerDidCancelComposition___block_invoke_2;
    v24 = &unk_1E72EBA18;
    selfCopy2 = self;
    v5 = &v21;
    goto LABEL_7;
  }

  if (-[CKMessagesController hasRecentlyDeletedFilterSelected](self, "hasRecentlyDeletedFilterSelected") || (+[CKConversationList sharedConversationList](CKConversationList, "sharedConversationList"), v17 = objc_claimAutoreleasedReturnValue(), [v17 conversations], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v17, !v19))
  {
    [(CKMessagesController *)self _setIsShowingNoSelectionUI:1];
    conversationListController = [(CKMessagesController *)self conversationListController];
    [conversationListController removePendingConversationCell];
  }

  else
  {
    conversationListController = [(CKMessagesController *)self conversationListController];
    [conversationListController selectDefaultConversationAnimated:1 removingPendingConversationCell:1];
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
    composeChatController = [(CKMessagesController *)self composeChatController];
    [composeChatController setDelegate:0];
  }

  if ([(CKMessagesController *)self isComposingMessage])
  {
    composeChatController2 = [(CKMessagesController *)self composeChatController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      composeChatController3 = [(CKMessagesController *)self composeChatController];
      [composeChatController3 cancelCompose];
    }
  }

  [(CKMessagesController *)self setComposeChatController:0];
  v7 = +[CKDraftManager sharedInstance];
  composeChatController4 = [(CKMessagesController *)self composeChatController];
  conversation = [composeChatController4 conversation];
  unsentComposition = [conversation unsentComposition];
  [v7 clearDraftForComposition:unsentComposition];

  conversationList = [(CKMessagesController *)self conversationList];
  [conversationList unpendConversation];

  [(CKMessagesController *)self setComposeChatNavigationController:0];
}

- (void)composeChatController:(id)controller didSelectNewConversation:(id)conversation
{
  conversationCopy = conversation;
  conversationList = [(CKMessagesController *)self conversationList];
  [conversationList setPendingConversation:conversationCopy];

  if (![(CKMessagesController *)self isDetailsNavigationControllerDetached])
  {
    [(CKMessagesController *)self dismissDetailsNavigationController];
  }

  [(CKMessagesController *)self setCurrentConversation:conversationCopy];
  [(CKMessagesController *)self _updateAlertSuppressionContext];
}

- (BOOL)hasBusinessRecipientWithRecipientIDs:(id)ds
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  dsCopy = ds;
  v4 = [dsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(dsCopy);
        }

        if (MEMORY[0x193AF5D00](*(*(&v8 + 1) + 8 * i)))
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [dsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)_checkPushToTranscriptTimingWithStartTime:(double)time
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"PushToTranscriptTailspinLogging"];

  if (v6 && [v6 BOOLValue])
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [standardUserDefaults2 objectForKey:@"PushToTranscriptTailspinLoggingInterval"];

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
    if (v11 - time > v10)
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

- (BOOL)isConversationShown:(id)shown
{
  shownCopy = shown;
  chatNavigationController = [(CKMessagesController *)self chatNavigationController];
  topViewController = [chatNavigationController topViewController];

  chatController = [(CKMessagesController *)self chatController];
  if (chatController)
  {
    chatController2 = [(CKMessagesController *)self chatController];
    if (chatController2 == topViewController)
    {
      chatController3 = [(CKMessagesController *)self chatController];
      conversation = [chatController3 conversation];
      groupID = [conversation groupID];
      groupID2 = [shownCopy groupID];
      v9 = [groupID isEqual:groupID2];
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

- (void)showConversation:(id)conversation animate:(BOOL)animate forceToTranscript:(BOOL)transcript keepAllCurrentlyLoadedMessages:(BOOL)messages userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  messagesCopy = messages;
  transcriptCopy = transcript;
  animateCopy = animate;
  v275 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
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
        if (transcriptCopy)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v266 = conversationCopy;
        if (messagesCopy)
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        v268 = currentConversation;
        v267 = 2112;
        if (animateCopy)
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
        isPinned = [conversationCopy isPinned];
        v25 = @"NO";
        if (isPinned)
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
        mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
        isFeatureEnabled = [mEMORY[0x1E69A7FC8] isFeatureEnabled];
        v29 = @"NO";
        if (isFeatureEnabled)
        {
          v29 = @"YES";
        }

        *buf = 138412290;
        v266 = v29;
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "  CommSafety Enabled?: %@", buf, 0xCu);
      }
    }

    conversationListController = [(CKMessagesController *)self conversationListController];
    if ([conversationCopy hasUnreadMessages])
    {
      conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
      topViewController = [conversationListNavigationController topViewController];
      v32 = topViewController == conversationListController;

      if (v32)
      {
        conversationListController2 = [(CKMessagesController *)self conversationListController];
        [conversationListController2 conversationWillBeMarkedRead:conversationCopy];
      }
    }

    v34 = [(CKMessagesController *)self isConversationShown:conversationCopy];
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

    hasDetailsNavigationController = [(CKMessagesController *)self hasDetailsNavigationController];
    if (v34)
    {
LABEL_127:
      composeChatController = [(CKMessagesController *)self composeChatController];

      if (composeChatController)
      {
        composeChatController2 = [(CKMessagesController *)self composeChatController];
        [composeChatController2 setDelegate:0];

        [(CKMessagesController *)self setComposeChatController:0];
        [(CKMessagesController *)self setComposeChatNavigationController:0];
      }

      v148 = +[CKAdaptivePresentationController sharedInstance];
      presentedViewController = [v148 presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        chatController = [(CKMessagesController *)self chatController];
        [chatController _dismissFullScreenBubbleViewControllerAnimated:animateCopy withSendAnimation:0 completion:0];
      }

      else
      {
        chatController = +[CKAdaptivePresentationController sharedInstance];
        [chatController dismissViewControllerAnimated:1 completion:0];
      }

      chatNavigationController = [(CKMessagesController *)self chatNavigationController];
      presentedViewController2 = [chatNavigationController presentedViewController];

      if (presentedViewController2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          onboardingController = [(CKMessagesController *)self onboardingController];
          v155 = onboardingController == 0;

          if (v155)
          {
            v156 = presentedViewController2;
            presentedViewController3 = [v156 presentedViewController];

            presentingViewController = v156;
            if (presentedViewController3)
            {
              v159 = v156;
              do
              {
                presentedViewController4 = [v159 presentedViewController];

                v160PresentedViewController = [presentedViewController4 presentedViewController];

                v159 = presentedViewController4;
              }

              while (v160PresentedViewController);
              if (presentedViewController4 == v156)
              {
                presentingViewController = presentedViewController4;
              }

              else
              {
                do
                {
                  [presentedViewController4 dismissViewControllerAnimated:0 completion:0];
                  presentingViewController = [presentedViewController4 presentingViewController];

                  presentedViewController4 = presentingViewController;
                }

                while (presentingViewController != v156);
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
          mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

          if ((isModernSplitViewControllerEnabled & 1) == 0)
          {
            [(CKMessagesController *)self hideColumn:0];
          }
        }
      }

      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070]2 isRedesignedDetailsViewEnabled];

      if (isRedesignedDetailsViewEnabled)
      {
        chatController2 = [(CKMessagesController *)self chatController];
        objc_opt_class();
        v171 = objc_opt_isKindOfClass();

        if (v171)
        {
          redesignedDetailsNavigationController = [(CKMessagesController *)self redesignedDetailsNavigationController];

          if (redesignedDetailsNavigationController)
          {
            chatController3 = [(CKMessagesController *)self chatController];
            detailsViewControllerForInspector = [chatController3 detailsViewControllerForInspector];

            if (detailsViewControllerForInspector)
            {
              v264 = detailsViewControllerForInspector;
              v175 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v264 count:1];
            }

            else
            {
              v175 = MEMORY[0x1E695E0F0];
            }

            redesignedDetailsNavigationController2 = [(CKMessagesController *)self redesignedDetailsNavigationController];
            [redesignedDetailsNavigationController2 setViewControllers:v175 animated:0];
          }

          else if (hasDetailsNavigationController)
          {
            chatController4 = [(CKMessagesController *)self chatController];
            detailsViewControllerForInspector2 = [chatController4 detailsViewControllerForInspector];

            v189 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:detailsViewControllerForInspector2];
            splitViewCoordinator = [(CKMessagesController *)self splitViewCoordinator];
            [splitViewCoordinator setViewControllerInInspector:v189];
          }

          else
          {
            redesignedDetailsNavigationController3 = [(CKMessagesController *)self redesignedDetailsNavigationController];
            [redesignedDetailsNavigationController3 dismissViewControllerAnimated:1 completion:0];
          }
        }
      }

      else
      {
        detailsNavigationController = [(CKMessagesController *)self detailsNavigationController];

        if (detailsNavigationController)
        {
          chatController5 = [(CKMessagesController *)self chatController];
          objc_opt_class();
          v178 = objc_opt_isKindOfClass();

          if (v178)
          {
            chatController6 = [(CKMessagesController *)self chatController];
            v180 = [CKDetailsControllerAdapter alloc];
            conversation = [chatController6 conversation];
            v182 = [(CKDetailsControllerAdapter *)v180 initWithConversation:conversation delegate:chatController6];

            detailsController = [(CKDetailsControllerAdapter *)v182 detailsController];
            if (detailsController)
            {
              detailsController2 = [(CKDetailsControllerAdapter *)v182 detailsController];
              v263 = detailsController2;
              v185 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v263 count:1];
            }

            else
            {
              v185 = MEMORY[0x1E695E0F0];
            }

            detailsNavigationController2 = [(CKMessagesController *)self detailsNavigationController];
            [detailsNavigationController2 setViewControllers:v185 animated:0];

            detailsNavigationController3 = [(CKMessagesController *)self detailsNavigationController];
            [detailsNavigationController3 setDetailsAdapter:v182];
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

        messagesControllerDelegate = [(CKMessagesController *)self messagesControllerDelegate];
        [messagesControllerDelegate messagesController:self didShowConversation:conversationCopy];

        conversationListController3 = [(CKMessagesController *)self conversationListController];
        [conversationListController3 beginHoldingConversationInConversationListIfNeeded:conversationCopy];
      }

      chat = [conversationCopy chat];
      v201 = [chat isFiltered] == 2;

      if (v201)
      {
        chat2 = [conversationCopy chat];
        isSMS = [chat2 isSMS];

        mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
        v205 = mEMORY[0x1E69A8168];
        if (isSMS)
        {
          v261 = &unk_1F04E85B0;
          v206 = [MEMORY[0x1E696AD98] numberWithBool:IMIsOscarEnabled()];
          v262 = v206;
          v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
          [v205 trackiMessageJunkEvent:4 withDictionary:v207];
        }

        else
        {
          [mEMORY[0x1E69A8168] trackiMessageJunkEvent:5];
        }
      }

      chat3 = [conversationCopy chat];
      v209 = chat3;
      if (chat3)
      {
        if ([chat3 isFiltered] == 2 || !objc_msgSend(v209, "isFiltered"))
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
          syncedSettingsManager = [(CKMessagesController *)self syncedSettingsManager];
          v211 = [syncedSettingsManager settingValueForKey:3];
          bOOLValue = [v211 BOOLValue];

          if (bOOLValue)
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

            messageGuidsForRequery = [v209 messageGuidsForRequery];
            v245[0] = MEMORY[0x1E69E9820];
            v245[1] = 3221225472;
            v245[2] = __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_967;
            v245[3] = &unk_1E72F8088;
            v246 = v213;
            v245[4] = self;
            [v209 queryTrustKitDecisioningIfNeededWithItems:messageGuidsForRequery reply:v245];

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

    chat4 = [conversationCopy chat];
    [chat4 watermarkInForScrutinyMode];

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        chat5 = [conversationCopy chat];
        guid = [chat5 guid];
        *buf = 138412290;
        v266 = guid;
        _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "Incremented load attempt count for chat GUID %@", buf, 0xCu);
      }
    }

    chat6 = [conversationCopy chat];
    isInScrutinyMode = [chat6 isInScrutinyMode];

    if (isInScrutinyMode && IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        chat7 = [conversationCopy chat];
        guid2 = [chat7 guid];
        *buf = 138412290;
        v266 = guid2;
        _os_log_impl(&dword_19020E000, v43, OS_LOG_TYPE_INFO, "We are in scrutiny mode for chat GUID %@", buf, 0xCu);
      }
    }

    [(CKMessagesController *)self setCurrentConversation:conversationCopy keepAllCurrentlyLoadedMessages:messagesCopy];
    junkModalMessagesController = [(CKMessagesController *)self junkModalMessagesController];
    v238 = junkModalMessagesController;
    if (junkModalMessagesController)
    {
      chatController7 = [junkModalMessagesController chatController];
    }

    else
    {
      composeChatController3 = [(CKMessagesController *)self composeChatController];
      if (composeChatController3)
      {
        [(CKMessagesController *)self composeChatController];
      }

      else
      {
        [(CKMessagesController *)self chatController];
      }
      chatController7 = ;
    }

    if ([(CKMessagesController *)self isCollapsed])
    {
      posterSnapshotView = 0;
    }

    else
    {
      posterSnapshotView = [chatController7 posterSnapshotView];
    }

    entryView = [chatController7 entryView];
    composeChatController4 = [(CKMessagesController *)self composeChatController];
    if (composeChatController4)
    {
      composeChatController5 = [(CKMessagesController *)self composeChatController];
      if ([composeChatController5 isSendingMessage])
      {
        composition = [entryView composition];
      }

      else
      {
        composition = 0;
      }
    }

    else
    {
      composition = 0;
    }

    if (chatController7)
    {
      contentView = [entryView contentView];
      isActive = [contentView isActive];
    }

    else
    {
      isActive = 0;
    }

    [chatController7 beginPinningInputViewsForReason:?];
    [chatController7 dismissViewControllerAnimated:0 completion:0];
    if (chatController7)
    {
      macToolbarController = [(CKMessagesController *)self macToolbarController];
      [macToolbarController setSecondaryItemProvider:0];
    }

    v53 = +[CKBalloonPluginManager sharedInstanceIfInitialized];
    [v53 invalidateAllActivePlugins];

    if ([conversationCopy isBusinessConversation])
    {
      v54 = +[CKUIBehavior sharedBehaviors];
      v55 = [objc_alloc(objc_msgSend(v54 "businessChatControllerClass"))];
    }

    else
    {
      chatNavigationController2 = [(CKMessagesController *)self chatNavigationController];
      view = [chatNavigationController2 view];
      [view bounds];
      v59 = v58;
      v61 = v60;

      v62 = +[CKUIBehavior sharedBehaviors];
      v55 = [objc_alloc(objc_msgSend(v62 "chatControllerClass"))];

      [v55 setInitialViewSize:{v59, v61}];
    }

    objc_opt_class();
    v237 = objc_opt_isKindOfClass();
    [v55 setTransitionedFromComposing:v237 & 1];
    [chatController7 prepareToDismissForSecondInstance];
    [v55 setDelegate:self];
    [v55 setSendMenuDelegate:self];
    if (initiatedCopy)
    {
      [v55 setUserInitiatedTranscriptPush:1];
    }

    [v55 setOutgoingBackgroundSnapshotView:posterSnapshotView];
    [(CKMessagesController *)self setChatController:v55];
    [v55 beginPinningInputViewsForReason:@"SwitchingActiveConversations"];
    [v55 setNeedsEndPinningInputViewsForSwitchingConversationAfterConversationIsSet:1];
    [v55 beginPinningInputViewsForReason:@"NewComposeToChatTransition"];
    [chatController7 endPinningInputViewsForReason:@"NewComposeToChatTransition"];
    [(CKMessagesController *)self setupBizNavBarForConversation:conversationCopy];
    chatController8 = [(CKMessagesController *)self chatController];
    isCollapsed = [(CKMessagesController *)self isCollapsed];
    if (isCollapsed)
    {
      if (![(CKMessagesController *)self isTopVCChatNavigationController])
      {
        presentedViewController5 = [(CKMessagesController *)self presentedViewController];
        if (presentedViewController5)
        {
          presentedViewController6 = [(CKMessagesController *)self presentedViewController];
          composeChatNavigationController = [(CKMessagesController *)self composeChatNavigationController];
          v68 = presentedViewController6 == composeChatNavigationController;

          if (v68)
          {
            v233 = v55;
            composeChatController6 = [(CKMessagesController *)self composeChatController];
            collectionViewController = [composeChatController6 collectionViewController];
            collectionView = [collectionViewController collectionView];
            [collectionView contentOffset];
            v73 = v72;
            v75 = v74;

            composeChatController7 = [(CKMessagesController *)self composeChatController];
            collectionViewController2 = [composeChatController7 collectionViewController];
            collectionView2 = [collectionViewController2 collectionView];
            [collectionView2 contentInset];
            v80 = v79;
            v82 = v81;
            v84 = v83;
            v86 = v85;

            [v233 primeTranscriptWithInitialOffset:v73 inset:{v75, v80, v82, v84, v86}];
            conversation2 = [v233 conversation];
            chat8 = [conversation2 chat];

            [chat8 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57F0]];
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
    v234 = chatController8;
    v260 = v234;
    [v89 _performWithoutDeferringTransitions:v259];
    v90 = +[CKUIBehavior sharedBehaviors];
    LODWORD(v89) = [v90 useMacToolbar];

    if (v89)
    {
      chatController9 = [(CKMessagesController *)self chatController];
      if ([chatController9 conformsToProtocol:&unk_1F051C328])
      {
        macToolbarController2 = [(CKMessagesController *)self macToolbarController];
        [chatController9 configureWithToolbarController:macToolbarController2];
      }
    }

    [(CKMessagesController *)self _setIsShowingNoSelectionUI:conversationCopy == 0];
    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isFluidTransitioningEnabled = [mEMORY[0x1E69A8070]3 isFluidTransitioningEnabled];

    if (isFluidTransitioningEnabled)
    {
      if (isCollapsed)
      {
        if ([conversationCopy isPinned])
        {
          v95 = [(CKMessagesController *)self _sourceViewForFluidTransitionWithConversation:conversationCopy];
          v96 = v95 == 0;

          if (!v96)
          {
            objc_initWeak(buf, self);
            objc_initWeak(&location, conversationCopy);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_2;
            aBlock[3] = &unk_1E72F8038;
            objc_copyWeak(&v256, buf);
            objc_copyWeak(&v257, &location);
            v230 = _Block_copy(aBlock);
            v231 = [MEMORY[0x1E69DD800] zoomWithSourceViewProvider:v230];
            v97 = objc_opt_new();
            traitCollection = [(CKMessagesController *)self traitCollection];
            [traitCollection displayCornerRadius];

            chatNavigationController3 = [(CKMessagesController *)self chatNavigationController];
            view2 = [chatNavigationController3 view];
            [view2 bounds];

            UIRectCenteredRect();
            [v97 setFrameOfSourceInDestination:?];
            [v231 _setOptions:v97];
            systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
            chatNavigationController4 = [(CKMessagesController *)self chatNavigationController];
            view3 = [chatNavigationController4 view];
            [view3 setBackgroundColor:systemBackgroundColor];

            chatNavigationController5 = [(CKMessagesController *)self chatNavigationController];
            [chatNavigationController5 _setPreferredTransition:v231];

            WeakRetained = objc_loadWeakRetained(buf);
            conversationListController4 = [WeakRetained conversationListController];

            v107 = [conversationListController4 itemIdentifierForConversation:conversationCopy inSection:2];
            dataSource = [conversationListController4 dataSource];
            v109 = [dataSource indexPathForItemIdentifier:v107];

            collectionView3 = [conversationListController4 collectionView];
            [collectionView3 deselectItemAtIndexPath:v109 animated:0];

            objc_destroyWeak(&v257);
            objc_destroyWeak(&v256);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
            goto LABEL_95;
          }
        }
      }

      chatNavigationController6 = [(CKMessagesController *)self chatNavigationController];
      [chatNavigationController6 _setPreferredTransition:0];
    }

    if (!isCollapsed)
    {
LABEL_97:
      v232 = 1;
LABEL_98:
      chatController10 = [(CKMessagesController *)self chatController];
      composeChatController8 = [(CKMessagesController *)self composeChatController];
      v114 = composeChatController8;
      if (composeChatController8)
      {
        [composeChatController8 systemMinimumLayoutMargins];
        v116 = v115;
        v118 = v117;
        v120 = v119;
        v122 = v121;
        view4 = [v114 view];
        effectiveUserInterfaceLayoutDirection = [view4 effectiveUserInterfaceLayoutDirection];
        if (effectiveUserInterfaceLayoutDirection)
        {
          v125 = v122;
        }

        else
        {
          v125 = v118;
        }

        if (!effectiveUserInterfaceLayoutDirection)
        {
          v118 = v122;
        }

        view5 = [chatController10 view];
        [view5 setLayoutMargins:{v116, v125, v120, v118}];

        [v114 setIgnoreKeyboardNotifications:entryView != 0];
      }

      [chatController7 keyboardFrame];
      v128 = v127;
      v130 = v129;
      v132 = v131;
      v134 = v133;
      if (isCollapsed)
      {
        chatController11 = [(CKMessagesController *)self chatController];
        [chatController11 beginHoldingScrollGeometryUpdatesForReason:@"TransitionFromNewCompose"];

        entryView2 = [chatController10 entryView];
        sendLaterPluginInfo = [entryView sendLaterPluginInfo];
        [entryView2 setSendLaterPluginInfo:sendLaterPluginInfo animated:0];
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

        [chatController10 reloadEntryViewIfNeeded];
      }

      entryView3 = [chatController10 entryView];
      v140 = entryView3;
      if (composition)
      {
        v141 = isCollapsed;
      }

      else
      {
        v141 = 1;
      }

      if ((v141 & 1) == 0)
      {
        [entryView3 setComposition:composition];
      }

      if (isActive)
      {
        if (!(isCollapsed & 1 | (((v237 | IMSharedHelperDeviceIsiPad()) & 1) == 0)) && [chatController10 isFirstResponder])
        {
          [chatController10 resignFirstResponder];
        }

        contentView2 = [v140 contentView];
        activeView = [contentView2 activeView];
        [activeView becomeFirstResponder];
      }

      [chatController7 forciblyUnloadChatInputController];
      if (isCollapsed)
      {
        chatController12 = [(CKMessagesController *)self chatController];
        [chatController12 cleanupPostComposeTransitionWithKBFrame:{v128, v130, v132, v134}];

        chatController13 = [(CKMessagesController *)self chatController];
        [chatController13 endHoldingScrollGeometryUpdatesForReason:@"TransitionFromNewCompose"];
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
      isCollapsed = 0;
      goto LABEL_97;
    }

    presentedViewController7 = [(CKMessagesController *)self presentedViewController];
    if (presentedViewController7 && ([(CKMessagesController *)self presentedViewController], v163 = objc_claimAutoreleasedReturnValue(), [(CKMessagesController *)self composeChatNavigationController], v164 = objc_claimAutoreleasedReturnValue(), v165 = v163 == v164, v164, v163, presentedViewController7, v165))
    {
      composeChatController9 = [(CKMessagesController *)self composeChatController];
      chatController14 = [(CKMessagesController *)self chatController];
      isCollapsed = [composeChatController9 isSendingMessage];
      posterSnapshotView2 = [composeChatController9 posterSnapshotView];

      [chatController14 setOutgoingBackgroundSnapshotView:posterSnapshotView2];
      v249[0] = MEMORY[0x1E69E9820];
      v249[1] = 3221225472;
      v249[2] = __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_958;
      v249[3] = &unk_1E72F8060;
      v254 = isCollapsed;
      v220 = chatController14;
      v250 = v220;
      selfCopy = self;
      v221 = composeChatController9;
      v252 = v221;
      v253 = v55;
      [(CKMessagesController *)self dismissViewControllerAnimated:0 completion:v249];

      v232 = 0;
      animateCopy = 0;
      posterSnapshotView = posterSnapshotView2;
    }

    else
    {
      isCollapsed = 0;
      v232 = 1;
    }

    if (IMOSLoggingEnabled())
    {
      v222 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v222, OS_LOG_TYPE_INFO))
      {
        chatNavigationController7 = [(CKMessagesController *)self chatNavigationController];
        if (animateCopy)
        {
          v224 = @"YES";
        }

        else
        {
          v224 = @"NO";
        }

        chatNavigationController8 = [(CKMessagesController *)self chatNavigationController];
        viewControllers = [chatNavigationController8 viewControllers];
        *buf = 138412802;
        v266 = chatNavigationController7;
        v267 = 2112;
        v268 = v224;
        v269 = 2112;
        v270 = viewControllers;
        _os_log_impl(&dword_19020E000, v222, OS_LOG_TYPE_INFO, "Pushing to detail view controller: %@ animate: %@ with view controllers: %@", buf, 0x20u);
      }
    }

    if (-[CKMessagesController _wantsThreeColumnLayout](self, "_wantsThreeColumnLayout") || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v227 = objc_claimAutoreleasedReturnValue(), v228 = objc_msgSend(v227, "isModernSplitViewControllerEnabled"), v227, v228))
    {
      if (animateCopy)
      {
        [(CKMessagesController *)self showColumn:2];
LABEL_224:
        animateCopy = 1;
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
      if (animateCopy)
      {
        chatNavigationController9 = [(CKMessagesController *)self chatNavigationController];
        [(CKMessagesController *)self showDetailViewController:chatNavigationController9 sender:self];

        goto LABEL_224;
      }

      v247[0] = MEMORY[0x1E69E9820];
      v247[1] = 3221225472;
      v247[2] = __112__CKMessagesController_showConversation_animate_forceToTranscript_keepAllCurrentlyLoadedMessages_userInitiated___block_invoke_2_960;
      v247[3] = &unk_1E72EBA18;
      v247[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v247];
    }

    animateCopy = 0;
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

- (id)_sourceViewForFluidTransitionWithConversation:(id)conversation
{
  conversationCopy = conversation;
  if (([conversationCopy isPinned] & 1) == 0)
  {
    conversationListController2 = IMLogHandleForCategory();
    if (os_log_type_enabled(conversationListController2, OS_LOG_TYPE_ERROR))
    {
      [CKMessagesController _sourceViewForFluidTransitionWithConversation:];
    }

    goto LABEL_7;
  }

  conversationListController = [(CKMessagesController *)self conversationListController];
  presentedViewController = [conversationListController presentedViewController];

  if (presentedViewController)
  {
    conversationListController2 = IMLogHandleForCategory();
    if (os_log_type_enabled(conversationListController2, OS_LOG_TYPE_ERROR))
    {
      [CKMessagesController _sourceViewForFluidTransitionWithConversation:];
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  conversationListController2 = [(CKMessagesController *)self conversationListController];
  v10 = [conversationListController2 itemIdentifierForConversation:conversationCopy inSection:2];
  dataSource = [conversationListController2 dataSource];
  v12 = [dataSource indexPathForItemIdentifier:v10];

  if (!v12)
  {
    collectionView = IMLogHandleForCategory();
    if (os_log_type_enabled(collectionView, OS_LOG_TYPE_ERROR))
    {
      [CKMessagesController _sourceViewForFluidTransitionWithConversation:];
    }

    v8 = 0;
    goto LABEL_29;
  }

  collectionView = [conversationListController2 collectionView];
  v14 = [collectionView cellForItemAtIndexPath:v12];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pinnedConversationView = [v14 pinnedConversationView];
      avatarView = [pinnedConversationView avatarView];
      v8 = avatarView;
      if (avatarView)
      {
        v17 = avatarView;
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

    pinnedConversationView = IMLogHandleForCategory();
    if (os_log_type_enabled(pinnedConversationView, OS_LOG_TYPE_ERROR))
    {
      [CKMessagesController _sourceViewForFluidTransitionWithConversation:];
    }
  }

  else
  {
    pinnedConversationView = IMLogHandleForCategory();
    if (os_log_type_enabled(pinnedConversationView, OS_LOG_TYPE_ERROR))
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

  currentConversationListFilterMode = [(CKMessagesController *)self currentConversationListFilterMode];
  if (currentConversationListFilterMode <= 1)
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

  v8 = currentConversationListFilterMode;
  chatController = [(CKMessagesController *)self chatController];
  conversation = [chatController conversation];

  if (conversation)
  {
    v11 = +[CKConversationList sharedConversationList];
    v12 = [v11 conversation:conversation includedInFilterMode:v8];

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
  presentedViewController = [(CKMessagesController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = presentedViewController;
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
  chatController = [(CKMessagesController *)self chatController];
  conversation = [chatController conversation];
  chat = [conversation chat];

  if (chat)
  {
    v5 = [chat allowedToShowConversation] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)showConversationInNewWindow:(id)window
{
  v12 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if (![MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] || (v4 = objc_msgSend(MEMORY[0x1E69A5B68], "isContactLimitsFeatureEnabled"), windowCopy) && v4 && (objc_msgSend(windowCopy, "chat"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "allowedByScreenTime"), v5, v6))
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    activityForNewScene = [windowCopy activityForNewScene];
    [mEMORY[0x1E69DC668] requestSceneSessionActivation:0 userActivity:activityForNewScene options:0 errorHandler:&__block_literal_global_976_0];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = windowCopy;
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

- (void)showConversation:(id)conversation animate:(BOOL)animate
{
  animateCopy = animate;
  conversationCopy = conversation;
  sendMenuPresentation = self->_sendMenuPresentation;
  v9 = conversationCopy;
  if (sendMenuPresentation)
  {
    [(CKSendMenuPresentation *)sendMenuPresentation dismissAnimated:0 completion:0];
    v8 = self->_sendMenuPresentation;
    self->_sendMenuPresentation = 0;

    conversationCopy = v9;
  }

  if (conversationCopy)
  {
    [(CKMessagesController *)self showConversation:conversationCopy animate:animateCopy keepAllCurrentlyLoadedMessages:0];
  }

  else
  {
    [(CKMessagesController *)self _setIsShowingNoSelectionUI:1];
  }
}

- (void)chatControllerDidReselectConversation:(id)conversation
{
  chatController = [(CKMessagesController *)self chatController];
  [chatController dismissInlineReplyIfNeededAndScrollToBottom];
}

- (void)showConversationAndMessageForChatGUID:(id)d messageGUID:(id)iD withInlineReplyOverlay:(BOOL)overlay animate:(BOOL)animate
{
  animateCopy = animate;
  overlayCopy = overlay;
  iDCopy = iD;
  dCopy = d;
  v11 = +[CKConversationList sharedConversationList];
  v12 = [v11 conversationForExistingChatWithGUID:dCopy];

  if (v12)
  {
    [(CKMessagesController *)self showConversation:v12 animate:animateCopy keepAllCurrentlyLoadedMessages:1];
    chatController = [(CKMessagesController *)self chatController];
    [chatController scrollToMessageWith:iDCopy in:v12 withInlineReplyOverlay:overlayCopy];
  }
}

- (BOOL)resumeToConversation:(id)conversation
{
  v17 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      groupID = [conversationCopy groupID];
      groupID2 = [(CKConversation *)self->_currentConversation groupID];
      v13 = 138412546;
      v14 = groupID;
      v15 = 2112;
      v16 = groupID2;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "resumeToConversation: toConvo: %@ currentConversation: %@", &v13, 0x16u);
    }
  }

  if (conversationCopy)
  {
    groupID3 = [conversationCopy groupID];
    v9 = [groupID3 isEqualToString:@"-1"];
    if ((v9 & 1) == 0)
    {
      [MEMORY[0x1E69DD250] disableAnimation];
      [(CKMessagesController *)self showConversation:conversationCopy animate:0 forceToTranscript:0 keepAllCurrentlyLoadedMessages:0];
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

- (void)deleteConversation:(id)conversation
{
  v9[1] = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v5 = +[CKConversationList sharedConversationList];
  v9[0] = conversationCopy;
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

- (id)firstConversationExactlyMatchingDisplayName:(id)name
{
  v3 = MEMORY[0x1E69A5AF8];
  nameCopy = name;
  sharedRegistry = [v3 sharedRegistry];
  v6 = [sharedRegistry existingChatWithDisplayName:nameCopy];

  v7 = +[CKConversationList sharedConversationList];
  v8 = [v7 conversationForExistingChat:v6];

  return v8;
}

- (id)conversationMatchingGUID:(id)d
{
  dCopy = d;
  v4 = +[CKConversationList sharedConversationList];
  v5 = [v4 conversationForExistingChatWithGUID:dCopy];

  return v5;
}

- (void)showConversationListWithAnimation:(BOOL)animation didDismissController:(BOOL *)controller
{
  animationCopy = animation;
  v39 = *MEMORY[0x1E69E9840];
  navigationController = [(CKMessagesController *)self navigationController];
  topViewController = [navigationController topViewController];
  conversationListController = [(CKMessagesController *)self conversationListController];
  v10 = [topViewController isEqual:conversationListController];

  if (controller && (v10 & 1) == 0)
  {
    *controller = 1;
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

  chatController = [(CKMessagesController *)self chatController];
  [chatController _dismissFullScreenBubbleViewControllerAnimated:animationCopy withSendAnimation:0 completion:0];

  if ([(CKMessagesController *)self isCollapsed])
  {
    sendMenuPresentation = self->_sendMenuPresentation;
    if (sendMenuPresentation)
    {
      [(CKSendMenuPresentation *)sendMenuPresentation dismissAnimated:0 completion:0];
      v14 = self->_sendMenuPresentation;
      self->_sendMenuPresentation = 0;
    }

    if (!animationCopy)
    {
      chatNavigationController = [(CKMessagesController *)self chatNavigationController];
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          viewControllers = [chatNavigationController viewControllers];
          *buf = 138412290;
          v38 = viewControllers;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Clearing chatController and chatNavigationController view controllers, chatNavigationController VCs before: %@", buf, 0xCu);
        }
      }

      chatController2 = [(CKMessagesController *)self chatController];
      [chatController2 setDelegate:0];

      [(CKMessagesController *)self setChatController:0];
      [(CKMessagesController *)self setCurrentConversation:0];
      [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          viewControllers2 = [chatNavigationController viewControllers];
          *buf = 138412290;
          v38 = viewControllers2;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "chatNavigationController (showConversationListWithAnimation:) children:%@", buf, 0xCu);
        }
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__CKMessagesController_showConversationListWithAnimation_didDismissController___block_invoke;
    aBlock[3] = &unk_1E72ED8D8;
    v36 = animationCopy;
    aBlock[4] = self;
    v21 = _Block_copy(aBlock);
    presentedViewController = [(CKMessagesController *)self presentedViewController];

    if (presentedViewController)
    {
      presentedViewController2 = [(CKMessagesController *)self presentedViewController];
      composeChatNavigationController = [(CKMessagesController *)self composeChatNavigationController];
      v25 = presentedViewController2 == composeChatNavigationController;

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
        presentedViewController3 = [(CKMessagesController *)self presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          onboardingController = [(CKMessagesController *)self onboardingController];
          if (onboardingController)
          {
          }

          else
          {
            presentedViewController4 = [(CKMessagesController *)self presentedViewController];
            objc_opt_class();
            v30 = objc_opt_isKindOfClass();

            if ((v30 & 1) == 0)
            {
              presentedViewController5 = [(CKMessagesController *)self presentedViewController];
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __79__CKMessagesController_showConversationListWithAnimation_didDismissController___block_invoke_2;
              v32[3] = &unk_1E72EBDB8;
              v33 = v21;
              [presentedViewController5 dismissViewControllerAnimated:0 completion:v32];

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

- (BOOL)_isTimedOutForState:(id)state
{
  stateCopy = state;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isRunningTest = [mEMORY[0x1E69DC668] isRunningTest];

  if (isRunningTest)
  {
    v6 = 0;
  }

  else
  {
    date = [stateCopy date];
    if (date)
    {
      date2 = [MEMORY[0x1E695DF00] date];
      [date2 timeIntervalSinceDate:date];
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

- (BOOL)shouldRestoreToConversationListForState:(id)state
{
  stateCopy = state;
  if ([(CKMessagesController *)self _isTimedOutForState:stateCopy])
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

  if (![stateCopy showingInbox])
  {
    unreadLastMessages = [stateCopy unreadLastMessages];
    v12 = +[CKConversationList sharedConversationList];
    v13 = [v12 unreadFilteredConversationCountIgnoringMessages:unreadLastMessages];

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

    groupID = [stateCopy groupID];
    v16 = +[CKConversationList sharedConversationList];
    v17 = [v16 conversationForExistingChatWithChatIdentifier:groupID];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v21 = +[CKConversationList sharedConversationList];
      v19 = [v21 conversationForExistingChatWithGroupID:groupID];
    }

    v22 = +[CKConversationList sharedConversationList];
    v23 = [v22 firstUnreadFilteredConversationIgnoringMessages:unreadLastMessages];

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
  chatController = [(CKMessagesController *)self chatController];
  [chatController setDelegate:0];

  [(CKMessagesController *)self setChatController:0];
  [(CKMessagesController *)self setCurrentConversation:0];
  [(CKMessagesController *)self _populateChatNavigationControllerWithSelection];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      chatNavigationController = [(CKMessagesController *)self chatNavigationController];
      viewControllers = [chatNavigationController viewControllers];
      *buf = 138412290;
      v15 = viewControllers;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "chatNavigationController (_hideConversationListForIPadPPTTest) children:%@", buf, 0xCu);
    }
  }

  presentedViewController = [(CKMessagesController *)self presentedViewController];
  if (presentedViewController && ([(CKMessagesController *)self presentedViewController], v8 = objc_claimAutoreleasedReturnValue(), [(CKMessagesController *)self composeChatNavigationController], v9 = objc_claimAutoreleasedReturnValue(), v10 = v8 == v9, v9, v8, presentedViewController, v10))
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

  conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
  v12 = [conversationListNavigationController popToRootViewControllerAnimated:0];
}

- (void)conversationListWillBeginEditing:(BOOL)editing
{
  if (editing)
  {
    view = [(CKMessagesController *)self view];
    [view endEditing:1];
  }

  else
  {

    [(CKMessagesController *)self becomeFirstResponder];
  }
}

- (void)conversationListIsDeletingConversations:(id)conversations
{
  conversationsCopy = conversations;
  v4 = +[CKCurrentConversationsManager sharedInstance];
  [v4 purgeConversations:conversationsCopy];
}

- (BOOL)isShowingSelectionView
{
  if ([(CKMessagesController *)self isCollapsed])
  {
    conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
    topViewController = [conversationListNavigationController topViewController];
    conversationListController = [(CKMessagesController *)self conversationListController];

    if (topViewController == conversationListController)
    {
      return 0;
    }

    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    viewControllers = [chatNavigationController viewControllers];
    v8 = [(CKSelectionViewController *)viewControllers containsObject:self->_selectionViewController];
  }

  else
  {
    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    viewControllers = [chatNavigationController topViewController];
    v8 = viewControllers == self->_selectionViewController;
  }

  return v8;
}

- (BOOL)isAnimatingMessageSend
{
  if ([(CKMessagesController *)self isCollapsed])
  {
    if ([(CKMessagesController *)self isCollapsed])
    {
      presentedViewController = [(CKMessagesController *)self presentedViewController];
      composeChatNavigationController = [(CKMessagesController *)self composeChatNavigationController];

      if (presentedViewController == composeChatNavigationController)
      {
        composeChatController = [(CKMessagesController *)self composeChatController];
LABEL_8:
        v9 = composeChatController;
        goto LABEL_9;
      }
    }
  }

  else
  {
    chatNavigationController = [(CKMessagesController *)self chatNavigationController];
    topViewController = [chatNavigationController topViewController];
    chatController = [(CKMessagesController *)self chatController];

    if (topViewController == chatController)
    {
      composeChatController = [(CKMessagesController *)self chatController];
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_9:
  isAnimatingMessageSend = [v9 isAnimatingMessageSend];

  return isAnimatingMessageSend;
}

- (BOOL)currentCompositionHasContent
{
  if ([(CKMessagesController *)self isComposingMessage])
  {
    composeChatController = [(CKMessagesController *)self composeChatController];
    proposedRecipients = [composeChatController proposedRecipients];
    v5 = [proposedRecipients count] != 0;
    composition = [composeChatController composition];
    hasContent = [composition hasContent];
    unatomizedRecipientText = [composeChatController unatomizedRecipientText];
    v9 = [unatomizedRecipientText length] != 0;

    v10 = v5 | hasContent | v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)isTopVCChatNavigationController
{
  selfCopy = self;
  conversationListNavigationController = [(CKMessagesController *)self conversationListNavigationController];
  topViewController = [conversationListNavigationController topViewController];
  chatNavigationController = [(CKMessagesController *)selfCopy chatNavigationController];
  LOBYTE(selfCopy) = topViewController == chatNavigationController;

  return selfCopy;
}

- (BOOL)isShowingConversationListController
{
  conversationListControllerIfInitialized = [(CKMessagesController *)self conversationListControllerIfInitialized];
  viewIfLoaded = [conversationListControllerIfInitialized viewIfLoaded];
  window = [viewIfLoaded window];
  v5 = window != 0;

  return v5;
}

- (BOOL)isShowingComposeChatController
{
  composeChatController = [(CKMessagesController *)self composeChatController];

  if (!composeChatController)
  {
    return 0;
  }

  if ([(CKMessagesController *)self isCollapsed])
  {
    presentedViewController = [(CKMessagesController *)self presentedViewController];
    composeChatNavigationController = [(CKMessagesController *)self composeChatNavigationController];
    v6 = presentedViewController == composeChatNavigationController;
  }

  else
  {
    presentedViewController = [(CKMessagesController *)self chatNavigationController];
    composeChatNavigationController = [presentedViewController viewControllers];
    firstObject = [composeChatNavigationController firstObject];
    composeChatController2 = [(CKMessagesController *)self composeChatController];
    v6 = firstObject == composeChatController2;
  }

  return v6;
}

- (BOOL)hasUnreadFilteredConversationsIgnoringMessages:(id)messages
{
  messagesCopy = messages;
  v4 = +[CKConversationList sharedConversationList];
  v5 = [v4 unreadFilteredConversationCountIgnoringMessages:messagesCopy];

  return v5 > 0;
}

- (BOOL)showUnreadConversationsWithLastConversation:(id)conversation ignoringMessages:(id)messages
{
  v22 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  messagesCopy = messages;
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
    v11 = [v10 firstUnreadFilteredConversationIgnoringMessages:messagesCopy];

    v9 = 0;
    if (conversationCopy && v11 == conversationCopy)
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
        v19 = conversationCopy;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "didShow: %@ unread conversations with last conversation: %@ firstUnreadConversation: %@", buf, 0x20u);
      }
    }
  }

  return v9;
}

- (void)_unreadCountDidChange:(id)change
{
  inboxModel = [(CKMessagesController *)self inboxModel];
  itemsMap = [inboxModel itemsMap];

  if (itemsMap)
  {
    inboxModel2 = [(CKMessagesController *)self inboxModel];
    itemsMap2 = [inboxModel2 itemsMap];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__CKMessagesController__unreadCountDidChange___block_invoke;
    v8[3] = &unk_1E72F80B0;
    v8[4] = self;
    [itemsMap2 enumerateKeysAndObjectsUsingBlock:v8];
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

- (void)_junkConversationsRecovered:(id)recovered
{
  v17 = *MEMORY[0x1E69E9840];
  recoveredCopy = recovered;
  if (![(CKMessagesController *)self isOscarModal])
  {
    currentlyShownConversation = [(CKMessagesController *)self currentlyShownConversation];
    if (currentlyShownConversation)
    {
      v6 = +[CKConversationList sharedConversationList];
      v7 = [v6 primaryFilterModeForConversation:currentlyShownConversation];

      if (v7 != 9)
      {
        chatController = [(CKMessagesController *)self chatController];
        [chatController updateChatControllerForRecoveredJunkConversation];
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
          junkModalMessagesController = [(CKMessagesController *)self junkModalMessagesController];
          if (junkModalMessagesController)
          {
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                v15 = 138412290;
                v16 = junkModalMessagesController;
                _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "_junkConversationsRecovered: Performing junk recovery for junk modal messages controller: %@.", &v15, 0xCu);
              }
            }

            [(CKMessagesController *)self performJunkRecoveryForJunkModalMessagesController:junkModalMessagesController];
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

- (void)performJunkRecoveryForJunkModalMessagesController:(id)controller
{
  v13 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = controllerCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "performJunkRecoveryForJunkModalMessagesController: %@", buf, 0xCu);
    }
  }

  chatController = [controllerCopy chatController];
  if ([(CKMessagesController *)self isCollapsed])
  {
    [chatController updateChatControllerForRecoveredJunkConversation];
    v7 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__CKMessagesController_performJunkRecoveryForJunkModalMessagesController___block_invoke;
    v10[3] = &unk_1E72EB8D0;
    v10[4] = self;
    v10[5] = chatController;
    [chatController performAnimatedJunkRecoveryTransition:v10];
  }

  else
  {
    v7 = v9;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__CKMessagesController_performJunkRecoveryForJunkModalMessagesController___block_invoke_2;
    v9[3] = &unk_1E72EB8D0;
    v9[4] = self;
    v9[5] = chatController;
    v8 = chatController;
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
  isShowingChatController = [(CKMessagesController *)self isShowingChatController];
  if (isShowingChatController)
  {
    chatController = [(CKMessagesController *)self chatController];
    composition = [chatController composition];
    hasContent = [composition hasContent];

    chatController2 = [(CKMessagesController *)self chatController];
    LOBYTE(chatController) = [chatController2 isSendingMessage];

    LOBYTE(isShowingChatController) = hasContent & (chatController ^ 1);
  }

  return isShowingChatController;
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

- (void)notifyThatKeepMessagesSettingWasResetIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMShouldDisplayKeepMessagesSetting())
  {
    IMClearDisplayKeepMessagesSetting();
    v5 = +[CKUIBehavior sharedBehaviors];
    canPresentOverKeyboard = [v5 canPresentOverKeyboard];

    v7 = MEMORY[0x1E696AEC0];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"RESET_KEEP_MESSAGES_SETTING_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    localizedModel = [currentDevice localizedModel];
    v12 = [v7 stringWithFormat:v9, localizedModel];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
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
    v23 = canPresentOverKeyboard;
    v21[4] = self;
    v22 = completionCopy;
    v20 = [CKAlertAction actionWithTitle:v19 style:0 handler:v21];
    [v17 addAction:v20];

    if ((canPresentOverKeyboard & 1) == 0)
    {
      [(CKMessagesController *)self becomeFirstResponder];
    }

    [v17 presentFromViewController:self animated:1 completion:0];
  }

  else
  {
    completionCopy[2](completionCopy);
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

- (void)showStoreForURL:(id)l fromSourceApplication:(id)application
{
  [(CKMessagesController *)self _presentAppStoreWithLaunchURL:l fromSourceApplication:application];
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7310]];
}

- (void)_presentAppStoreWithLaunchURL:(id)l fromSourceApplication:(id)application
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  applicationCopy = application;
  v8 = +[CKBalloonPluginManager sharedInstance];
  isAppStoreEnabled = [v8 isAppStoreEnabled];

  if (isAppStoreEnabled)
  {
    currentConversation = [(CKMessagesController *)self currentConversation];
    if ([currentConversation unreadCount])
    {
    }

    else
    {
      currentConversation2 = [(CKMessagesController *)self currentConversation];

      if (currentConversation2)
      {
LABEL_24:
        [(CKMessagesController *)self showConversation:currentConversation2 animate:0];
        chatController = [(CKMessagesController *)self chatController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          chatController2 = [(CKMessagesController *)self chatController];
          [chatController2 presentAppStoreForURL:lCopy fromSourceApplication:applicationCopy];
        }

LABEL_26:

        goto LABEL_27;
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    conversationList = [(CKMessagesController *)self conversationList];
    conversations = [conversationList conversations];

    v13 = [conversations countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = *v24;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(conversations);
        }

        v16 = *(*(&v23 + 1) + 8 * v15);
        if (![v16 unreadCount])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [conversations countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      currentConversation2 = v16;

      if (currentConversation2)
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

    currentConversation2 = 0;
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

- (void)_setEntryViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  chatController = [(CKMessagesController *)self chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chatController2 = [(CKMessagesController *)self chatController];
    entryView = [chatController2 entryView];

    if (hiddenCopy)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    if (!hiddenCopy)
    {
      [entryView setHidden:0];
    }

    v10 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__CKMessagesController__setEntryViewHidden___block_invoke;
    v15[3] = &unk_1E72ED810;
    v16 = entryView;
    v17 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__CKMessagesController__setEntryViewHidden___block_invoke_2;
    v12[3] = &unk_1E72F3BE8;
    v14 = hiddenCopy;
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

- (void)didBeginInstallingAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CKAppInstallationWatcher sharedInstance];
  [v4 startListeningForAppBundleIdentifier:identifierCopy];
}

- (void)updateCompositionInEntryViewWithComposition:(id)composition
{
  compositionCopy = composition;
  if ([(CKMessagesController *)self isComposingMessage])
  {
    [(CKMessagesController *)self composeChatController];
  }

  else
  {
    [(CKMessagesController *)self chatController];
  }
  v5 = ;
  entryView = [v5 entryView];

  composition = [entryView composition];
  v7 = [composition compositionByAppendingComposition:compositionCopy];

  [entryView setComposition:v7];
}

- (void)presentOnboardingViewControllerIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  onboardingControllerIsActive = [(CKMessagesController *)self onboardingControllerIsActive];
  shouldPresentOnboarding = [(CKMessagesController *)self shouldPresentOnboarding];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 67109376;
      v11 = onboardingControllerIsActive;
      v12 = 1024;
      v13 = shouldPresentOnboarding;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "presentOnboardingViewControllerIfNeeded. isPresentingOnboarding=%{BOOL}d. presentOnboarding=%{BOOL}d.", &v10, 0xEu);
    }
  }

  if (shouldPresentOnboarding)
  {
    onboardingControllerCreatingIfNecessary = [(CKMessagesController *)self onboardingControllerCreatingIfNecessary];
    presentOnboardingIfNeeded = [onboardingControllerCreatingIfNecessary presentOnboardingIfNeeded];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 67109120;
        v11 = presentOnboardingIfNeeded;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "> willPresent=%{BOOL}d", &v10, 8u);
      }
    }

    if (((presentOnboardingIfNeeded | onboardingControllerIsActive) & 1) == 0)
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

  else if (!onboardingControllerIsActive)
  {
    [(CKMessagesController *)self setOnboardingController:0];
  }
}

- (void)presentOnboardingViewController:(id)controller
{
  onboardingControllerCreatingIfNecessary = [(CKMessagesController *)self onboardingControllerCreatingIfNecessary];
  [onboardingControllerCreatingIfNecessary presentNicknameSharingSetupFlowWithMemoji:0 forUserInitiatedEdit:0];
}

- (id)presentingViewControllerForOnboardingController:(id)controller
{
  v11 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  onboardingController = [(CKMessagesController *)self onboardingController];

  if (onboardingController == controllerCopy)
  {
    selfCopy = self;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = controllerCopy;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Unexpected instance of onboardingController %@", &v9, 0xCu);
      }
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)onboardingControllerDidFinish:(id)finish
{
  finishCopy = finish;
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

- (id)_fetchMeContactWithError:(id *)error
{
  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  keysForNicknameHandling = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
  v6 = [mEMORY[0x1E69A7FD0] fetchMeContactWithKeys:keysForNicknameHandling withError:error];

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

- (void)inboxViewController:(id)controller didSelectFilterMode:(unint64_t)mode
{
  v61[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  conversationListController = [(CKMessagesController *)self conversationListController];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = IMConversationListFilterModeStringValue(mode);
      v54 = 138412546;
      v55 = controllerCopy;
      v56 = 2112;
      v57 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "[Filter Mode] inboxViewController: %@ did select filter mode: %@", &v54, 0x16u);
    }
  }

  filterMode = [conversationListController filterMode];
  [conversationListController setFilterMode:mode];
  conversationListController2 = [(CKMessagesController *)self conversationListController];
  contentScrollView = [conversationListController2 contentScrollView];
  [contentScrollView __ck_scrollToTop:0];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(contentScrollView) = [mEMORY[0x1E69A8070] isMergeFilteredThreadsEnabled];

  if (contentScrollView && self->_filterModeForLoadedItems != mode)
  {
    conversationList = [(CKMessagesController *)self conversationList];
    [conversationList setFilterMode:mode];

    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedInstance];
    [mEMORY[0x1E69A5AF8] clearHistoryAndReloadLastMessageForMergedFilteredChats];

    self->_filterModeForLoadedItems = mode;
  }

  if (filterMode != mode)
  {
    conversationList2 = [(CKMessagesController *)self conversationList];
    [conversationList2 releaseWasKnownSenderHold];

    conversationList3 = [(CKMessagesController *)self conversationList];
    [conversationList3 updateConversationsWasKnownSender];

    conversationList4 = [(CKMessagesController *)self conversationList];
    [conversationList4 clearHoldInUnreadFilter];

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = IMConversationListFilterModeStringValue(mode);
        v54 = 138412290;
        v55 = v20;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "[Filter Mode] Filter mode was changed to %@", &v54, 0xCu);
      }
    }

    if (mode != 7 && mode != 9)
    {
      [conversationListController setEditingMode:0];
    }
  }

  if (![(CKMessagesController *)self isCollapsed])
  {
    currentlyShownConversation = [(CKMessagesController *)self currentlyShownConversation];
    v22 = currentlyShownConversation;
    if (mode == 7)
    {
      conversationList5 = [(CKMessagesController *)self conversationList];
      pendingConversation = [conversationList5 pendingConversation];

      if (pendingConversation)
      {
        conversationListController3 = [(CKMessagesController *)self conversationListController];
        [(CKMessagesController *)self conversationListControllerTappedDeleteNewMessage:conversationListController3];
      }
    }

    else if (currentlyShownConversation)
    {
      if ([currentlyShownConversation isPending])
      {
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            composeChatController = [(CKMessagesController *)self composeChatController];
            v54 = 138412290;
            v55 = composeChatController;
            _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "currentlyShownConversation is pending. Setting view controllers to %@", &v54, 0xCu);
          }
        }

        composeChatController2 = [(CKMessagesController *)self composeChatController];

        if (composeChatController2)
        {
          chatNavigationController = [(CKMessagesController *)self chatNavigationController];
          composeChatController3 = [(CKMessagesController *)self composeChatController];
          v61[0] = composeChatController3;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
          [chatNavigationController setViewControllers:v31];

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
        conversationList6 = [(CKMessagesController *)self conversationList];
        v33 = [conversationList6 conversation:v22 includedInFilterMode:mode];

        if (!v33)
        {
          goto LABEL_43;
        }

        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            chatController = [(CKMessagesController *)self chatController];
            v54 = 138412290;
            v55 = chatController;
            _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Should show selected conversation. Setting view controllers to %@", &v54, 0xCu);
          }
        }

        chatController2 = [(CKMessagesController *)self chatController];

        if (chatController2)
        {
          chatNavigationController2 = [(CKMessagesController *)self chatNavigationController];
          chatController3 = [(CKMessagesController *)self chatController];
          v60 = chatController3;
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
          [chatNavigationController2 setViewControllers:v39];

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
    [conversationListController updateConversationList];
    if (!CKIsRunningInMacCatalyst())
    {
      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070]2 isModernSplitViewControllerEnabled];

      if ((isModernSplitViewControllerEnabled & 1) == 0)
      {
        [(CKMessagesController *)self hideColumn:0];
      }
    }

    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernSplitViewControllerEnabled2 = [mEMORY[0x1E69A8070]3 isModernSplitViewControllerEnabled];

    if ((isModernSplitViewControllerEnabled2 & 1) == 0)
    {
      [(CKMessagesController *)self showColumn:1];
    }
  }

  else if (CKIsRunningInMacCatalyst())
  {
    [conversationListController updateConversationList];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        navigationController = [controllerCopy navigationController];
        navigationController2 = [controllerCopy navigationController];
        viewControllers = [navigationController2 viewControllers];
        v54 = 138412802;
        v55 = conversationListController;
        v56 = 2112;
        v57 = navigationController;
        v58 = 2112;
        v59 = viewControllers;
        _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "Pushing %@ onto %@. Current hierarchy: %@", &v54, 0x20u);
      }
    }

    navigationController3 = [controllerCopy navigationController];
    viewControllers2 = [navigationController3 viewControllers];
    v51 = [viewControllers2 containsObject:conversationListController];

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
      navigationController4 = [controllerCopy navigationController];
      [navigationController4 pushViewController:conversationListController animated:1];
    }
  }
}

- (BOOL)inboxViewController:(id)controller shouldShowFilterMode:(unint64_t)mode
{
  controllerCopy = controller;
  if (mode == 9)
  {
    _spamFilteringEnabled = IMIsOscarEnabled();
LABEL_8:
    v7 = _spamFilteringEnabled;
    goto LABEL_9;
  }

  if (mode != 6)
  {
    v7 = 1;
    goto LABEL_9;
  }

  if ((IMIsOscarEnabled() & 1) == 0)
  {
    _spamFilteringEnabled = [(CKMessagesController *)self _spamFilteringEnabled];
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
    composeChatController = [(CKMessagesController *)self composeChatController];
  }

  else
  {
    composeChatController = self->_chatController;
  }

  v4 = composeChatController;
  if (composeChatController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    newInputSnapshotView = [(CKCoreChatController *)v4 newInputSnapshotView];
  }

  else
  {
    newInputSnapshotView = 0;
  }

  return newInputSnapshotView;
}

- (void)requestDismissKeyboardSnapshotForSendMenu
{
  if ([(CKMessagesController *)self isComposingMessage])
  {
    composeChatController = [(CKMessagesController *)self composeChatController];
  }

  else
  {
    composeChatController = self->_chatController;
  }

  v4 = composeChatController;
  if (composeChatController)
  {
    v6 = composeChatController;
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
    composeChatController = [(CKMessagesController *)self composeChatController];
  }

  else
  {
    composeChatController = self->_chatController;
  }

  v4 = composeChatController;
  if (composeChatController)
  {
    v6 = composeChatController;
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

- (BOOL)sendMenuPresentationShouldUseKeyboardSnapshot:(id)snapshot
{
  if ([(CKMessagesController *)self isComposingMessage])
  {
    composeChatController = [(CKMessagesController *)self composeChatController];
  }

  else
  {
    composeChatController = self->_chatController;
  }

  v5 = composeChatController;
  v6 = composeChatController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKScrollViewController *)v5 isKeyboardVisible];

  return v6;
}

- (void)_updateTraitEnvironmentWithLatestSystemGlassSetting
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[CKUtilities isIphone])
  {
    v3 = +[CKUtilities systemGlassLegibilitySetting];
    viewIfLoaded = [(CKMessagesController *)self viewIfLoaded];
    window = [viewIfLoaded window];

    traitOverrides = [window traitOverrides];
    [traitOverrides setNSIntegerValue:v3 forTrait:objc_opt_class()];

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
  selfCopy = self;
  v3 = CKMessagesController.generateSelectionViewController()();

  return v3;
}

- (void)didSelectFilterFromViewMenu:(id)menu
{
  menuCopy = menu;
  selfCopy = self;
  CKMessagesController.didSelectFilterFromViewMenu(command:)(menuCopy);
}

- (void)filterCommandSelected:(id)selected
{
  selectedCopy = selected;
  selfCopy = self;
  sub_190AB9990(selectedCopy);
}

- (void)messageFilteringSelected:(id)selected
{
  selectedCopy = selected;
  selfCopy = self;
  sub_1908AF6CC(selectedCopy);
}

- (void)showSpamCategoryUpdatedAlert
{
  selfCopy = self;
  CKMessagesController.showSpamCategoryUpdatedAlert()();
}

- (void)cleanUpInteractionViews
{
  selfCopy = self;
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
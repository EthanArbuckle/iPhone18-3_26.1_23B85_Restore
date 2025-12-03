@interface CKChatInputController
+ (id)previewQueue;
- (BOOL)_isAppBrowserFullScreen;
- (BOOL)_isBusinessConversation;
- (BOOL)_isCombinedStickersApp;
- (BOOL)_isiMessageConversation;
- (BOOL)_pluginCanMessageAPI:(id)i;
- (BOOL)_presentPluginIfNecessaryWithPayload:(id)payload withPayloadID:(id)d;
- (BOOL)_shouldSendTypingIndicatorDataForPluginIdentifier:(id)identifier;
- (BOOL)_shouldShowHandwriting;
- (BOOL)_switcherPluginCanMessageAPI;
- (BOOL)appManagerIsDisplayed;
- (BOOL)appModalIsDisplayed;
- (BOOL)appStoreIsDisplayed;
- (BOOL)browserShouldAutorotate;
- (BOOL)commitPayloadBypassingValidation:(id)validation forPlugin:(id)plugin;
- (BOOL)currentPluginIsDT;
- (BOOL)currentPluginIsGenerativePlayground;
- (BOOL)currentPluginIsPhotos;
- (BOOL)handwritingIsDisplayed;
- (BOOL)hasStickerReactionSession;
- (BOOL)isAppCardPresentationStyleExpanded;
- (BOOL)isAppCardPresented;
- (BOOL)isAppCardUsingSheetPresentation;
- (BOOL)isEntryViewFirstResponder;
- (BOOL)isHandwritingLandscape;
- (BOOL)isKeyboardSnapshotted;
- (BOOL)isPresentingAppCardForMessageEntryView:(id)view;
- (BOOL)isPresentingBarelyVisibleAppCardForMessageEntryView:(id)view;
- (BOOL)isPresentingStickerPicker;
- (BOOL)isShowingAppCardForExtensionIdentifier:(id)identifier;
- (BOOL)messageEntryShouldHideCaret:(id)caret;
- (BOOL)messageEntryViewShouldResignFirstResponder:(id)responder;
- (BOOL)messageEntryViewShouldVerticallyInsetForPresentedAppCard:(id)card;
- (BOOL)presentedAppBypassesSendMenu;
- (BOOL)shouldBlurForMessageEditing;
- (BOOL)shouldInterfaceBeRestrictedToPortraitForPluginID:(id)d;
- (BOOL)shouldLaunchPhotosAppForPlusButtonLongPressInMessageEntryView:(id)view;
- (BOOL)shouldPreventAppFromDisplayingForBundleIdentifier:(id)identifier;
- (BOOL)shouldShowMoneyActionWithAmount:(id)amount currencies:(id)currencies;
- (BOOL)switcherPluginCanMessageAPIOnBehalfOfPlugin:(id)plugin;
- (CKAppCardPresentationOverseer)appCardPresentationOverseer;
- (CKBrowserSwitcherViewController)browserSwitcher;
- (CKChatInputController)init;
- (CKChatInputControllerDelegate)delegate;
- (CKConversation)targetConversation;
- (CKExternalPluginViewControllerProvider)externalPluginControllerProvider;
- (CKKeyboardContentViewController)switcherInputViewController;
- (UINavigationController)wolfBrowserNavController;
- (UITextInputPayloadController)textInputPayloadController;
- (double)_appCardHeightWithSafeArea;
- (double)appCardOverseerCompactHeightExcludingSafeArea;
- (id)_adamIDFromPluginPayloadData:(id)data;
- (id)_browserViewControllerForInterfaceOrientationMethods;
- (id)_formattedPayload:(id)payload forPayloadID:(id)d;
- (id)_stickerPickerPlugin;
- (id)activeSendMenuPresentationForAppCardOverseer;
- (id)appIconOverride;
- (id)appTitleOverride;
- (id)balloonPluginForIndexPath:(id)path;
- (id)configurePhotosDraftAssetArchivesWithConversationID:(id)d;
- (id)dragControllerTranscriptDelegate;
- (id)inputViewController;
- (id)localizedTitleForClientActionFromUrl:(id)url context:(id)context;
- (id)participantHandles;
- (id)pluginBundleID;
- (id)pluginContextForPlugin:(id)plugin;
- (id)sendLaterPluginInfo;
- (id)workingDraftDirForPluginIdentifier:(id)identifier;
- (int64_t)determineSendMenuPresentationStyleCompatibleWithTraitCollection:(id)collection;
- (unint64_t)appPresentationStyleForShowingPluginID:(id)d;
- (unint64_t)browserSupportedInterfaceOrientations;
- (unint64_t)presentationStyleInOrientation:(int64_t)orientation inPopover:(BOOL)popover forPluginID:(id)d;
- (void)_beginPreviewCreationWithFileURL:(id)l;
- (void)_deferredCommitSticker:(id)sticker;
- (void)_deferredDismissToKeyboardAndFocusEntryView:(id)view;
- (void)_deferredRequestFullScreenModalForPluginIdentifier:(id)identifier dataSource:(id)source preferredContentSize:(CGSize)size;
- (void)_deferredRequestPresentationStyleExpanded:(id)expanded;
- (void)_dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention:(BOOL)prevention overrideExceptions:(BOOL)exceptions focusEntryView:(BOOL)view;
- (void)_dismissBrowserViewControllerAndReloadInputViews:(BOOL)views;
- (void)_evaluateMetricsForKeyboardSuggestionWithBundleIdentifier:(id)identifier;
- (void)_handleOrientation;
- (void)_handleSelectionOfExtensionWithIdentifier:(id)identifier;
- (void)_informDelegateOfUpdatedAppCardHeightAnimated:(BOOL)animated;
- (void)_insertUISticker:(id)sticker;
- (void)_insertUIStickerAsAdaptiveImageGlyph:(id)glyph;
- (void)_launchAppExtensionForDebugging;
- (void)_loadPhotosBrowserCollapsingEntryField:(BOOL)field;
- (void)_openContainingBundleID:(id)d applicationService:(id)service withURL:(id)l pluginID:(id)iD completionHandler:(id)handler;
- (void)_presentFullScreenModalBrowserForPlugin:(id)plugin dataSource:(id)source;
- (void)_presentPluginWithBundleID:(id)d sendingTextInputPayload:(id)payload withPayloadID:(id)iD style:(unint64_t)style;
- (void)_presentSendLaterUnsupportedAlertForIdentifier:(id)identifier handler:(id)handler;
- (void)_presentSendMenuForAppCardContentViewController:(id)controller appCardPresentationStyle:(unint64_t)style;
- (void)_reconfigurePluginDataSourceWithBalloonControllerIfNecessary;
- (void)_sendLaterSelectedFromSendMenuWithPresentation:(id)presentation;
- (void)_setupObserverForLaunchAppExtensionForDebugging;
- (void)_stageStickerWithFileURL:(id)l accessibilityLabel:(id)label;
- (void)_startEditingPayload:(id)payload;
- (void)_stickerPickerPlugin;
- (void)adjustSupportedInterfaceOrientationForPluginID:(id)d requiredPortrait:(BOOL *)portrait;
- (void)appCardDidMoveToWindow:(id)window;
- (void)appCardOverseerCardDidChangeHeight:(double)height isBelowKeyboardDetent:(BOOL)detent isDragging:(BOOL)dragging isGeneratingEndOfDragAnimations:(BOOL)animations;
- (void)appCardOverseerDidDismissAppCard;
- (void)appCardOverseerDidPresentAppCard;
- (void)appCardOverseerViewStateDidChange:(BOOL)change;
- (void)appCardOverseerWillDismissAppCard;
- (void)appCardOverseerWillPresentAppCard;
- (void)appSelectionInterfaceSelectedItem:(id)item;
- (void)appendMediaPayloadToText:(id)text;
- (void)applicationWillAddDeactivationReasonNotification:(id)notification;
- (void)beginStickerReactionSessionWithChatItem:(id)item cell:(id)cell;
- (void)browserTransitionCoordinatorDidCollapseOrDismiss:(id)dismiss withReason:(int64_t)reason;
- (void)browserTransitionCoordinatorDidTransitionOrPresentToFullscreen:(id)fullscreen withReason:(int64_t)reason;
- (void)browserTransitionCoordinatorWillCollapseOrDismiss:(id)dismiss withReason:(int64_t)reason;
- (void)browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:(id)fullscreen withReason:(int64_t)reason;
- (void)browserWillDismiss;
- (void)canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion;
- (void)chatControllerReceivedKeyboardDidHideNotification:(id)notification;
- (void)chatControllerReceivedKeyboardDidShowNotification:(id)notification;
- (void)chatControllerReceivedKeyboardWillHideNotification:(id)notification;
- (void)chatControllerReceivedKeyboardWillShowNotification:(id)notification;
- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)completion;
- (void)clearBrowserViewControllerIfNecessary;
- (void)commitPayload:(CKBrowserItemPayload *)payload forPlugin:(NSString *)plugin allowAllCommits:(BOOL)commits completionHandler:(id)handler;
- (void)commitSticker:(id)sticker atScreenCoordinate:(CGPoint)coordinate scale:(double)scale rotation:(double)rotation stickerFrame:(CGRect)frame;
- (void)commitSticker:(id)sticker forPlugin:(id)plugin bypassValidation:(BOOL)validation stickerFrame:(CGRect)frame;
- (void)commitSticker:(id)sticker forPlugin:(id)plugin stickerFrame:(CGRect)frame;
- (void)commitSticker:(id)sticker stickerFrame:(CGRect)frame;
- (void)commitSticker:(id)sticker withDragTarget:(id)target draggedSticker:(id)draggedSticker;
- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder;
- (void)dealloc;
- (void)deferredCommitPayload:(id)payload;
- (void)deviceOrientationManager:(id)manager orientationDidChange:(int64_t)change;
- (void)didBeginInstallingAppWithBundleIdentifier:(id)identifier;
- (void)didSelectPlugin:(id)plugin;
- (void)didStageAssetArchive:(id)archive identifier:(id)identifier;
- (void)dismissAndReloadInputViews:(BOOL)views forPlugin:(id)plugin;
- (void)dismissAppCardIfNecessaryAnimated:(BOOL)animated isFocusingKeyboard:(BOOL)keyboard overrideExceptions:(BOOL)exceptions completion:(id)completion;
- (void)dismissBrowserViewController;
- (void)dismissEntryViewShelf;
- (void)dismissOrHideHandwritingBrowser;
- (void)dismissPlugin;
- (void)dismissPluginAppAfterReplaceAlertInteractedWithIfNeeded;
- (void)dismissSendMenuAndPresentFunCamera;
- (void)dismissStickerPickerPreservingChatItem:(BOOL)item completion:(id)completion;
- (void)eagerUploadPayload:(id)payload identifier:(id)identifier replace:(BOOL)replace;
- (void)endStickerReactionSession;
- (void)entryViewDidChangeSize;
- (void)extensionRemoteConnectionWasInterrupted:(id)interrupted;
- (void)forceDismissBrowserWithoutAnimation;
- (void)generatePreviewAndStoreInCacheForSendingPhotoFromPayload:(id)payload;
- (void)handleClientActionFromUrl:(id)url context:(id)context;
- (void)handleMoneyActionWithAmount:(id)amount currencies:(id)currencies;
- (void)handlePayload:(id)payload withPayloadId:(id)id;
- (void)handleTextInputPayload:(id)payload withPayloadID:(id)d forPlugin:(id)plugin;
- (void)handwritingPresentationControllerDidShowHandwriting:(id)handwriting;
- (void)handwritingPresentationControllerWillHideHandwriting:(id)handwriting;
- (void)insertUIStickerAsAdaptiveImageGlyph:(id)glyph;
- (void)launchAndShowBrowserForPlugin:(id)plugin dataSource:(id)source style:(unint64_t)style presentationConfiguration:(id)configuration;
- (void)messageEntryView:(id)view didLongPressPlusButton:(id)button;
- (void)messageEntryView:(id)view didReceiveInputSuggestion:(id)suggestion;
- (void)messageEntryView:(id)view didSelectPluginAtIndex:(id)index;
- (void)messageEntryView:(id)view didSelectPlusButton:(id)button;
- (void)messageEntryView:(id)view touchCancelForPlusButton:(id)button;
- (void)messageEntryView:(id)view touchDragExitForPlusButton:(id)button;
- (void)messageEntryView:(id)view touchUpOutsidePlusButton:(id)button;
- (void)messageEntryViewDidExpand:(id)expand;
- (void)messageEntryViewInputDidTakeFocus:(id)focus;
- (void)notifyActiveBrowserAssetArchiveWasRemoved:(id)removed;
- (void)notifyBrowserViewControllerOfMatchingNewMessages:(id)messages;
- (void)openAppExtensionWithAdamID:(id)d;
- (void)openURL:(id)l applicationIdentifier:(id)identifier pluginID:(id)d completionHandler:(id)handler;
- (void)openURL:(id)l pluginID:(id)d completionHandler:(id)handler;
- (void)prepareForSuspend;
- (void)presentAppManager;
- (void)presentAppStoreForAdamID:(id)d;
- (void)presentAppStoreForURL:(id)l fromSourceApplication:(id)application;
- (void)presentModernCardForPlugin:(id)plugin dataSource:(id)source presentationStyle:(unint64_t)style;
- (void)presentPluginWithBundleID:(id)d appLaunchPayload:(id)payload;
- (void)presentViewControllerWithPluginChatItem:(id)item presentationStyle:(unint64_t)style presentationConfiguration:(id)configuration;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)registerForTextInputPayloadHandling:(BOOL)handling isGroupChat:(BOOL)chat;
- (void)registerForTextInputPayloadHandlingForSenderHandleID:(id)d receiverHandleID:(id)iD;
- (void)removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)requestPhotoBrowserInitFromDraft:(id)draft;
- (void)requestPhotoBrowserToAppendFinalImagesToComposition;
- (void)requestPhotoBrowserToEnumerateSelectedImagesUsingBlock:(id)block;
- (void)requestPhotoBrowserToPrepareForDraftClearingPhotoShelfViewController:(BOOL)controller;
- (void)requestPhotoBrowserToUnstageAllImages;
- (void)requestPhotoBrowserToUnstageImages:(id)images;
- (void)requestPollPluginToPrepareForDraftWithCompletion:(id)completion;
- (void)requestPresentationStyleExpanded:(BOOL)expanded forPlugin:(id)plugin;
- (void)requestPresentationStyleFullScreenModalForPlugin:(id)plugin dataSource:(id)source preferredContentSize:(CGSize)size skipValidation:(BOOL)validation;
- (void)requestTransitionPluginFromFullScreen:(id)screen toExpanded:(BOOL)expanded;
- (void)sendLaterPluginInfoUpdated;
- (void)sendMenuDidAppear:(id)appear presentationStyle:(int64_t)style;
- (void)sendMenuViewControllerDidFinishDismissAnimation:(id)animation;
- (void)sendMenuViewControllerRequestDismiss:(id)dismiss;
- (void)sendMenuViewControllerWillPerformFullScreenDismissAnimation:(id)animation;
- (void)setAppCardDismissPadding:(double)padding;
- (void)setBrowserPlugin:(id)plugin;
- (void)setConversationAndRecipientsForBrowser:(id)browser;
- (void)setCurrentInputViewController:(id)controller;
- (void)setEntryView:(id)view;
- (void)setInputViewVisible:(BOOL)visible;
- (void)setInputViewVisible:(BOOL)visible entryFieldCollapsed:(BOOL)collapsed animated:(BOOL)animated messageDelegate:(BOOL)delegate;
- (void)setLocalUserIsTyping:(BOOL)typing;
- (void)setShouldBlurForMessageEditing:(BOOL)editing;
- (void)showBrowserForPlugin:(id)plugin dataSource:(id)source style:(unint64_t)style presentationConfiguration:(id)configuration;
- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion;
- (void)showBrowserPopoverForPlugin:(id)plugin dataSource:(id)source style:(unint64_t)style presentationConfiguration:(id)configuration;
- (void)showDTCompose;
- (void)showEntryViewPhotosShelf:(id)shelf completion:(id)completion;
- (void)showExpandedBrowserPopover:(id)popover presentationConfiguration:(id)configuration;
- (void)showFindMyPlugin;
- (void)showFunCamera;
- (void)showFunCamera:(id)camera;
- (void)showHandwritingBrowserWithExistingPayload:(id)payload;
- (void)showKeyboard;
- (void)showLocationPlugin;
- (void)showModalViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)showPhotosBrowser;
- (void)showPhotosBrowserCollapsingEntryField:(BOOL)field;
- (void)showPhotosExtension;
- (void)showPluginWithExtensionIdentifier:(id)identifier sourceView:(id)view;
- (void)showSendLater;
- (void)stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)startEditingPayload:(id)payload;
- (void)startEditingPayload:(id)payload dismiss:(BOOL)dismiss forPlugin:(id)plugin completion:(id)completion;
- (void)startEditingPayloadBypassingValidation:(id)validation forPlugin:(id)plugin completion:(id)completion;
- (void)stickerDropAnimationFinished;
- (void)stickerDruidDragStarted;
- (void)stickerPickerWasHiddenPreservingChatItem:(BOOL)item;
- (void)swipeDismissBrowser;
- (void)switcherViewControllerDidCollapse:(id)collapse;
- (void)switcherViewControllerDidSelectAppManager:(id)manager shouldRestoreAppSwitcher:(BOOL)switcher;
- (void)switcherViewControllerDidSelectAppStore:(id)store shouldRestoreAppSwitcher:(BOOL)switcher;
- (void)switcherViewControllerWillAppear:(id)appear;
- (void)switcherViewControllerWillDisappear:(id)disappear;
- (void)unregisterForTextInputPayloadHandling;
@end

@implementation CKChatInputController

- (id)inputViewController
{
  if ([(CKChatInputController *)self isInputViewVisible])
  {
    currentInputViewController = [(CKChatInputController *)self currentInputViewController];
  }

  else
  {
    currentInputViewController = 0;
  }

  return currentInputViewController;
}

- (CKAppCardPresentationOverseer)appCardPresentationOverseer
{
  appCardPresentationOverseer = self->_appCardPresentationOverseer;
  if (!appCardPresentationOverseer)
  {
    v4 = [CKAppCardPresentationOverseer alloc];
    delegate = [(CKChatInputController *)self delegate];
    viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];
    v7 = [(CKAppCardPresentationOverseer *)v4 initWithPresentingViewController:viewControllerForChatInputModalPresentation sendDelegate:self];
    v8 = self->_appCardPresentationOverseer;
    self->_appCardPresentationOverseer = v7;

    [(CKAppCardPresentationOverseer *)self->_appCardPresentationOverseer setDelegate:self];
    appCardPresentationOverseer = self->_appCardPresentationOverseer;
  }

  return appCardPresentationOverseer;
}

- (CKChatInputControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isAppCardPresented
{
  v3 = CKIsAppCardsEnabled();
  if (v3)
  {
    appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
    isPresentingCard = [appCardPresentationOverseer isPresentingCard];

    LOBYTE(v3) = isPresentingCard;
  }

  return v3;
}

- (BOOL)isAppCardUsingSheetPresentation
{
  appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
  isPresentingInSheetController = [appCardPresentationOverseer isPresentingInSheetController];

  return isPresentingInSheetController;
}

- (id)activeSendMenuPresentationForAppCardOverseer
{
  delegate = [(CKChatInputController *)self delegate];
  v4 = [delegate activeSendMenuPresentationForChatInputController:self];

  return v4;
}

- (BOOL)hasStickerReactionSession
{
  stickerReactionSession = [(CKChatInputController *)self stickerReactionSession];
  v3 = stickerReactionSession != 0;

  return v3;
}

- (UITextInputPayloadController)textInputPayloadController
{
  textInputPayloadController = self->_textInputPayloadController;
  if (!textInputPayloadController)
  {
    mEMORY[0x1E69DD0F0] = [MEMORY[0x1E69DD0F0] sharedInstance];
    v5 = self->_textInputPayloadController;
    self->_textInputPayloadController = mEMORY[0x1E69DD0F0];

    textInputPayloadController = self->_textInputPayloadController;
  }

  return textInputPayloadController;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.MobileSMS.CKAppExtension.launch", 0);
  textInputPayloadController = [(CKChatInputController *)self textInputPayloadController];
  payloadDelegate = [textInputPayloadController payloadDelegate];

  if (payloadDelegate == self)
  {
    [textInputPayloadController setPayloadDelegate:0];
    [textInputPayloadController setSupportedPayloadIds:MEMORY[0x1E695E0F0]];
  }

  clientActionsDelegate = [__DDActionClass() clientActionsDelegate];

  if (clientActionsDelegate == self)
  {
    [__DDActionClass() setClientActionsDelegate:0];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  transitionCoordinator = [(CKBrowserSwitcherViewController *)self->_browserSwitcher transitionCoordinator];
  [transitionCoordinator dismissCurrentFullScreenModalAnimated:0 completion:0];

  [(CKScheduledUpdater *)self->_orientationUpdater invalidate];
  [(CKDeviceOrientationManager *)self->_orientationManager setDelegate:0];
  [(CKDeviceOrientationManager *)self->_orientationManager invalidate];
  [(CKHandwritingPresentationController *)self->_handwritingPresentationController setSendDelegate:0];

  v9.receiver = self;
  v9.super_class = CKChatInputController;
  [(CKChatInputController *)&v9 dealloc];
}

- (CKChatInputController)init
{
  v16.receiver = self;
  v16.super_class = CKChatInputController;
  v2 = [(CKChatInputController *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_isAppCardDraggingBelowKeyboardDetent = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_applicationWillAddDeactivationReasonNotification_ name:*MEMORY[0x1E69DE878] object:0];
    [defaultCenter addObserver:v3 selector:sel_composeRecipientViewDidBecomeFirstResponder_ name:@"com.apple.ChatKit.CKComposeRecipientView.BecameFirstResponder" object:0];
    [defaultCenter addObserver:v3 selector:sel_extensionRemoteConnectionWasInterrupted_ name:*MEMORY[0x1E69A6F28] object:0];
    v5 = [objc_alloc(MEMORY[0x1E69A6158]) initWithTarget:0 action:0];
    dismissEntryViewShelfUpdater = v3->_dismissEntryViewShelfUpdater;
    v3->_dismissEntryViewShelfUpdater = v5;

    v7 = [[CKScheduledUpdater alloc] initWithTarget:v3 action:sel__handleOrientation];
    orientationUpdater = v3->_orientationUpdater;
    v3->_orientationUpdater = v7;

    v9 = objc_alloc_init(CKDeviceOrientationManager);
    orientationManager = v3->_orientationManager;
    v3->_orientationManager = v9;

    [(CKDeviceOrientationManager *)v3->_orientationManager setDelegate:v3];
    [(CKDeviceOrientationManager *)v3->_orientationManager beginListeningForOrientationEventsWithKey:@"KeyboardVisible"];
    v11 = objc_alloc_init(CKChatEagerUploadController);
    eagerUploadController = v3->_eagerUploadController;
    v3->_eagerUploadController = v11;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__CKChatInputController_init__block_invoke;
    block[3] = &unk_1E72EBA18;
    v15 = v3;
    if (init_launchAppExtensionIfNecessaryToken != -1)
    {
      dispatch_once(&init_launchAppExtensionIfNecessaryToken, block);
    }
  }

  return v3;
}

- (void)setEntryView:(id)view
{
  viewCopy = view;
  [(CKMessageEntryView *)self->_entryView setInputDelegate:0];
  entryView = self->_entryView;
  self->_entryView = viewCopy;
  v6 = viewCopy;

  [(CKMessageEntryView *)self->_entryView setInputDelegate:self];
  if (v6)
  {
    deferredComposition = [(CKChatInputController *)self deferredComposition];

    if (deferredComposition)
    {
      entryView = [(CKChatInputController *)self entryView];
      deferredComposition2 = [(CKChatInputController *)self deferredComposition];
      [entryView setComposition:deferredComposition2];

      [(CKChatInputController *)self setDeferredComposition:0];
    }
  }
}

- (void)clearBrowserViewControllerIfNecessary
{
  if ([(CKChatInputController *)self keyboardIsHiding]&& ![(CKChatInputController *)self appModalIsDisplayed]&& ![(CKChatInputController *)self inCollapseOrExpandAnimation])
  {

    [(CKChatInputController *)self setInputViewVisible:0];
  }
}

- (void)_loadPhotosBrowserCollapsingEntryField:(BOOL)field
{
  fieldCopy = field;
  if (self->_switcherInputViewController)
  {
    browserSwitcher = [(CKChatInputController *)self browserSwitcher];
    [browserSwitcher unloadRemoteViewControllers];

    [(CKChatInputController *)self setBrowserSwitcher:0];
    [(CKChatInputController *)self setSwitcherInputViewController:0];
    [(CKChatInputController *)self setCurrentInputViewController:0];
  }

  if ([(CKChatInputController *)self _isRunningInMVS])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Asked to show AE in MVS, bailing!", buf, 2u);
      }
    }
  }

  else
  {
    v7 = +[CKBalloonPluginManager sharedInstance];
    existingPhotoBrowserViewController = [v7 existingPhotoBrowserViewController];

    if (!existingPhotoBrowserViewController)
    {
      v8 = +[CKBalloonPluginManager sharedInstance];
      existingPhotoBrowserViewController = [v8 photosBrowserViewControllerWithPluginPayloads:0];
    }

    [existingPhotoBrowserViewController setSendDelegate:self];
    balloonPlugin = [existingPhotoBrowserViewController balloonPlugin];
    [(CKChatInputController *)self setBrowserPlugin:balloonPlugin];

    v10 = [CKKeyboardContentViewController alloc];
    v11 = [(CKKeyboardContentViewController *)v10 initWithViewController:existingPhotoBrowserViewController identifier:*MEMORY[0x1E69A6A00]];
    view = [(CKKeyboardContentViewController *)v11 view];
    [existingPhotoBrowserViewController setDragTargetView:view];

    [(CKChatInputController *)self setCurrentInputViewController:v11];
    [(CKChatInputController *)self setInputViewVisible:1 entryFieldCollapsed:fieldCopy animated:1];
  }
}

- (void)showPhotosExtension
{
  v3 = IMBalloonExtensionIDWithSuffix();
  [(CKChatInputController *)self showPluginWithExtensionIdentifier:v3];
}

- (void)showPhotosBrowser
{
  v3 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v3 isAccessibilityPreferredContentSizeCategory];

  [(CKChatInputController *)self showPhotosBrowserCollapsingEntryField:isAccessibilityPreferredContentSizeCategory ^ 1u];
}

- (void)showPhotosBrowserCollapsingEntryField:(BOOL)field
{
  fieldCopy = field;
  if ([(CKChatInputController *)self isInputViewVisible])
  {
    currentInputViewController = [(CKChatInputController *)self currentInputViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      currentInputViewController2 = [(CKChatInputController *)self currentInputViewController];
      identifier = [currentInputViewController2 identifier];
      v8 = [identifier isEqualToString:*MEMORY[0x1E69A6A00]];

      if (v8)
      {
        [(CKChatInputController *)self setBrowserPlugin:0];
        [(CKChatInputController *)self setBrowserPluginDataSource:0];
        [(CKChatInputController *)self dismissBrowserViewController];

        return;
      }
    }
  }

  [(CKChatInputController *)self _loadPhotosBrowserCollapsingEntryField:fieldCopy];
}

- (void)showFunCamera
{
  if (+[CKFunCameraUserConsentManager shouldPromptUserForFunCameraConsent])
  {
    delegate = [(CKChatInputController *)self delegate];
    v4 = [delegate activeSendMenuPresentationForChatInputController:self];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__CKChatInputController_showFunCamera__block_invoke;
    aBlock[3] = &unk_1E72EBB98;
    objc_copyWeak(&v11, &location);
    v5 = v4;
    v10 = v5;
    v6 = _Block_copy(aBlock);
    sendMenuViewController = [v5 sendMenuViewController];
    [CKFunCameraUserConsentManager presentFromViewController:sendMenuViewController presentedBlock:&__block_literal_global_197 confirmBlock:v6 cancelBlock:0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    entryView = [(CKChatInputController *)self entryView];
    [(CKChatInputController *)self showFunCamera:entryView];
  }
}

void __38__CKChatInputController_showFunCamera__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isPopoverSendMenuEnabled];

  v4 = [WeakRetained entryView];
  [WeakRetained showFunCamera:v4];

  if ((v3 & 1) == 0)
  {
    v5 = [*(a1 + 32) sendMenuViewController];
    [v5 performFullScreenDismissAnimationWithCompletion:0];
  }
}

- (void)showFunCamera:(id)camera
{
  cameraCopy = camera;
  if ([(CKChatInputController *)self _isiMessageConversation])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Camera button is hit and perfrom MMCS prewarm", buf, 2u);
      }
    }

    mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
    [mEMORY[0x1E69A5B80] preWarmConnection];
  }

  delegate = [(CKChatInputController *)self delegate];
  v8 = [delegate activeSendMenuPresentationForChatInputController:self];

  if (v8)
  {
    v9 = [v8 presentationStyle] == 1;
  }

  else
  {
    v9 = 0;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    [(CKChatInputController *)self dismissSendMenuAndPresentFunCamera];
  }

  else
  {
    if (v9)
    {
      objc_initWeak(buf, self);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __39__CKChatInputController_showFunCamera___block_invoke;
      v16[3] = &unk_1E72EE728;
      objc_copyWeak(&v17, buf);
      [v8 dismissAnimated:1 completion:v16];
      v12 = &v17;
    }

    else
    {
      if (![(CKChatInputController *)self isAppCardPresented])
      {
        delegate2 = [(CKChatInputController *)self delegate];
        [delegate2 chatInputControllerDidSelectFunCamera:self];

        goto LABEL_18;
      }

      objc_initWeak(buf, self);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __39__CKChatInputController_showFunCamera___block_invoke_2;
      v14[3] = &unk_1E72EC460;
      objc_copyWeak(&v15, buf);
      [(CKChatInputController *)self dismissAppCardIfNecessaryAnimated:1 completion:v14];
      v12 = &v15;
    }

    objc_destroyWeak(v12);
    objc_destroyWeak(buf);
  }

LABEL_18:
}

void __39__CKChatInputController_showFunCamera___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    [v2 chatInputControllerDidSelectFunCamera:WeakRetained];
  }
}

void __39__CKChatInputController_showFunCamera___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 chatInputControllerDidSelectFunCamera:WeakRetained];
}

- (void)dismissSendMenuAndPresentFunCamera
{
  delegate = [(CKChatInputController *)self delegate];
  v4 = [delegate activeSendMenuPresentationForChatInputController:self];

  [v4 dismissAnimated:1 completion:0];
  if ([(CKChatInputController *)self isAppCardPresented])
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__CKChatInputController_dismissSendMenuAndPresentFunCamera__block_invoke;
    v6[3] = &unk_1E72EC460;
    objc_copyWeak(&v7, &location);
    [(CKChatInputController *)self dismissAppCardIfNecessaryAnimated:1 completion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    delegate2 = [(CKChatInputController *)self delegate];
    [delegate2 chatInputControllerDidSelectFunCamera:self];
  }
}

void __59__CKChatInputController_dismissSendMenuAndPresentFunCamera__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 chatInputControllerDidSelectFunCamera:WeakRetained];
}

- (void)showDTCompose
{
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v4 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:*MEMORY[0x1E69A69A8]];

  [(CKChatInputController *)self showBrowserForPlugin:v4 dataSource:0 style:0];
}

- (void)showSendLater
{
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v11 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:*MEMORY[0x1E69A6A28]];

  if (IMSharedHelperDeviceIsiPad())
  {
    entryView = [(CKChatInputController *)self entryView];
    contentView = [entryView contentView];
    sendLaterView = [contentView sendLaterView];
    v7 = sendLaterView;
    if (sendLaterView)
    {
      entryView2 = sendLaterView;
    }

    else
    {
      entryView2 = [(CKChatInputController *)self entryView];
    }

    v10 = entryView2;

    v9 = [[CKTranscriptPluginPresentationConfiguration alloc] initWithSourceView:v10 permittedArrowDirections:2 shouldDisableSnapshotView:0];
  }

  else
  {
    v9 = 0;
  }

  [(CKChatInputController *)self showBrowserForPlugin:v11 dataSource:0 style:0 presentationConfiguration:v9];
}

- (void)_sendLaterSelectedFromSendMenuWithPresentation:(id)presentation
{
  v30 = *MEMORY[0x1E69E9840];
  presentationCopy = presentation;
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v6 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:*MEMORY[0x1E69A6A28]];

  entryView = [(CKChatInputController *)self entryView];
  composition = [entryView composition];
  hasContent = [composition hasContent];

  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];
  identifier2 = [v6 identifier];
  v13 = [identifier isEqualToString:identifier2];

  LOBYTE(identifier2) = [presentationCopy presentationStyle] == 1;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LOBYTE(identifier) = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  v15 = identifier | identifier2;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      v25 = hasContent;
      v26 = 1024;
      v27 = v13;
      v28 = 1024;
      v29 = v15 & 1;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "_sendLaterSelectedFromSendMenu preferDatePicker: %{BOOL}d, datePickerIsPresented: %{BOOL}d, sendMenuInPopover: %{BOOL}d", buf, 0x14u);
    }
  }

  if (hasContent)
  {
    if ((v13 & 1) == 0)
    {
      if (v15)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __72__CKChatInputController__sendLaterSelectedFromSendMenuWithPresentation___block_invoke;
        v23[3] = &unk_1E72EB9C8;
        v23[4] = self;
        [presentationCopy dismissAnimated:1 completion:v23];
      }

      else
      {
        [(CKChatInputController *)self showSendLater];
      }

      goto LABEL_24;
    }

    goto LABEL_14;
  }

  v17 = [(CKChatInputController *)self pluginContextForPlugin:v6];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      entryView2 = [(CKChatInputController *)self entryView];
      [entryView2 setSendLaterPluginInfo:v17 animated:1];
    }
  }

  if (v13)
  {
LABEL_14:
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "_sendLaterSelectedFromSendMenuWithPresentation: Date Picker already presented. Not changing input mode.", buf, 2u);
      }
    }

    v20 = 0;
    goto LABEL_20;
  }

  v20 = 1;
LABEL_20:
  if (hasContent & 1 | ((v15 & 1) == 0))
  {
    if (v20)
    {
      [(CKChatInputController *)self showKeyboard];
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __72__CKChatInputController__sendLaterSelectedFromSendMenuWithPresentation___block_invoke_2;
    v21[3] = &unk_1E72F3BE8;
    v22 = v20;
    v21[4] = self;
    [presentationCopy dismissAnimated:1 completion:v21];
  }

LABEL_24:
}

uint64_t __72__CKChatInputController__sendLaterSelectedFromSendMenuWithPresentation___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) showKeyboard];
  }

  return result;
}

- (void)sendLaterPluginInfoUpdated
{
  entryView = [(CKChatInputController *)self entryView];
  sendLaterPluginInfo = [entryView sendLaterPluginInfo];

  if (!sendLaterPluginInfo)
  {
    if (IMSharedHelperDeviceIsiPad() && (-[CKChatInputController browserPlugin](self, "browserPlugin"), v5 = objc_claimAutoreleasedReturnValue(), [v5 identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69A6A28]), v6, v5, v7))
    {

      [(CKChatInputController *)self dismissBrowserViewController];
    }

    else
    {
      appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
      browserViewController = [appCardPresentationOverseer browserViewController];
      if (browserViewController)
      {
        v9 = browserViewController;
        browserViewController2 = [appCardPresentationOverseer browserViewController];
        balloonPlugin = [browserViewController2 balloonPlugin];
        identifier = [balloonPlugin identifier];
        v13 = [identifier isEqualToString:*MEMORY[0x1E69A6A28]];

        if (v13)
        {
          if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
          {
            [(CKChatInputController *)self dismissAppCardIfNecessaryAnimated:1 isFocusingKeyboard:1 completion:0];
          }

          else
          {
            [(CKChatInputController *)self showKeyboard];
          }
        }
      }
    }
  }
}

- (void)appSelectionInterfaceSelectedItem:(id)item
{
  v46 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  identifier = [itemCopy identifier];
  v7 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:identifier];

  identifier2 = [itemCopy identifier];
  v9 = [identifier2 isEqualToString:@"kAppMenuAudio"];

  identifier3 = [itemCopy identifier];
  v11 = [identifier3 isEqualToString:*MEMORY[0x1E69A6A28]];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPollsEnabled = [mEMORY[0x1E69A8070] isPollsEnabled];

  if (isPollsEnabled)
  {
    identifier4 = [itemCopy identifier];
    v15 = IMBalloonExtensionIDWithSuffix();
    v16 = [identifier4 isEqualToString:v15];
  }

  else
  {
    v16 = 0;
  }

  identifier5 = [itemCopy identifier];
  v18 = IMBalloonExtensionIDWithSuffix();
  v19 = [identifier5 isEqualToString:v18];

  if (v19)
  {
    goto LABEL_5;
  }

  if (v16)
  {
    entryView = IMBalloonExtensionIDWithSuffix();
    [(CKChatInputController *)self _handleSelectionOfExtensionWithIdentifier:entryView];
LABEL_11:

    goto LABEL_12;
  }

  if (v7)
  {
    entryView = [(CKChatInputController *)self entryView];
    sendMenuSourceView = [entryView sendMenuSourceView];
    v23 = [[CKTranscriptPluginPresentationConfiguration alloc] initWithSourceView:sendMenuSourceView permittedArrowDirections:8 shouldDisableSnapshotView:0];
    [(CKChatInputController *)self showBrowserForPlugin:v7 dataSource:0 style:1 presentationConfiguration:v23];

    goto LABEL_11;
  }

  identifier6 = [itemCopy identifier];
  v25 = IMBalloonExtensionIDWithSuffix();
  v26 = [identifier6 isEqualToString:v25];

  if (v26)
  {
LABEL_5:
    delegate = [(CKChatInputController *)self delegate];
    [delegate chatInputDidSelectGenmojiApp];
LABEL_6:

    goto LABEL_12;
  }

  identifier7 = [itemCopy identifier];
  v28 = [identifier7 isEqualToString:@"kAppMenuPhotosItemIdentifier"];

  if (v28)
  {
    delegate = [(CKChatInputController *)self delegate];
    [delegate chatInputDidSelectPhotoPicker];
    goto LABEL_6;
  }

  identifier8 = [itemCopy identifier];
  v30 = [identifier8 isEqualToString:@"kAppMenuEffectsItemIdentifier"];

  if (v30)
  {
    delegate = [(CKChatInputController *)self delegate];
    [delegate chatInputDidSelectEffectPicker];
    goto LABEL_6;
  }

  identifier9 = [itemCopy identifier];
  if ([identifier9 isEqualToString:@"kAppMenuEmoji"])
  {
    delegate2 = [(CKChatInputController *)self delegate];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      delegate = [(CKChatInputController *)self delegate];
      [delegate chatInputDidSelectEmojiPicker];
      goto LABEL_6;
    }
  }

  else
  {
  }

  if (v9)
  {
    delegate = [(CKChatInputController *)self entryView];
    [delegate startRecordingForAudioButtonInEntryView];
    goto LABEL_6;
  }

  if (v11)
  {
    entryView2 = [(CKChatInputController *)self entryView];
    composition = [entryView2 composition];
    shelfPluginPayload = [composition shelfPluginPayload];

    if (shelfPluginPayload && ([shelfPluginPayload supportsSendLater] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          pluginBundleID = [shelfPluginPayload pluginBundleID];
          v44 = 138412290;
          v45 = pluginBundleID;
          _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "User selected send later, but the currently staged plugin payload (%@) does not allow presentation alongside Send Later. Presenting unsupported item alert and aborting.", &v44, 0xCu);
        }
      }

      pluginBundleID2 = [shelfPluginPayload pluginBundleID];
      [(CKChatInputController *)self _presentSendLaterUnsupportedAlertForIdentifier:pluginBundleID2 handler:0];
    }

    else
    {
      sendLaterPluginInfo = [(CKChatInputController *)self sendLaterPluginInfo];
      entryView3 = [(CKChatInputController *)self entryView];
      [entryView3 setSendLaterPluginInfo:sendLaterPluginInfo animated:1];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      identifier10 = [itemCopy identifier];
      v44 = 138412290;
      v45 = identifier10;
      _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "unknown CKAppMenuItem:  %@", &v44, 0xCu);
    }
  }

LABEL_12:
}

- (void)swipeDismissBrowser
{
  v3 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v3 isAccessibilityPreferredContentSizeCategory];

  [(CKChatInputController *)self setInputViewVisible:0 entryFieldCollapsed:isAccessibilityPreferredContentSizeCategory ^ 1u animated:0 messageDelegate:0];
}

- (void)dismissAppCardIfNecessaryAnimated:(BOOL)animated isFocusingKeyboard:(BOOL)keyboard overrideExceptions:(BOOL)exceptions completion:(id)completion
{
  exceptionsCopy = exceptions;
  keyboardCopy = keyboard;
  animatedCopy = animated;
  completionCopy = completion;
  if (CKIsAppCardsEnabled())
  {
    appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
    isPresentingCard = [appCardPresentationOverseer isPresentingCard];

    if (isPresentingCard)
    {
      if ([(CKChatInputController *)self isDismissingAppCardForKeyboardPresentation]|| keyboardCopy)
      {
        appCardPresentationOverseer2 = [(CKChatInputController *)self appCardPresentationOverseer];
        keyboardCopy = [appCardPresentationOverseer2 shouldAnimateDismissal] ^ 1;
      }

      [(CKChatInputController *)self setIsDismissingAppCardForKeyboardPresentation:keyboardCopy];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __108__CKChatInputController_dismissAppCardIfNecessaryAnimated_isFocusingKeyboard_overrideExceptions_completion___block_invoke;
      aBlock[3] = &unk_1E72ED8D8;
      v29 = keyboardCopy;
      aBlock[4] = self;
      v14 = _Block_copy(aBlock);
      activeSendMenuPresentationForAppCardOverseer = [(CKChatInputController *)self activeSendMenuPresentationForAppCardOverseer];
      if (activeSendMenuPresentationForAppCardOverseer && (v16 = activeSendMenuPresentationForAppCardOverseer, -[CKChatInputController activeSendMenuPresentationForAppCardOverseer](self, "activeSendMenuPresentationForAppCardOverseer"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 presentationStyle], v17, v16, v18 == 1))
      {
        v19 = 1;
      }

      else
      {
        v14[2](v14);
        v19 = 0;
      }

      appCardPresentationOverseer3 = [(CKChatInputController *)self appCardPresentationOverseer];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __108__CKChatInputController_dismissAppCardIfNecessaryAnimated_isFocusingKeyboard_overrideExceptions_completion___block_invoke_2;
      v24[3] = &unk_1E72EF578;
      v27 = v19;
      v25 = v14;
      v26 = completionCopy;
      v22 = v14;
      [appCardPresentationOverseer3 dismissCardAnimated:animatedCopy overrideExceptions:exceptionsCopy completion:v24];
    }

    else if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
      }
    }
  }
}

uint64_t __108__CKChatInputController_dismissAppCardIfNecessaryAnimated_isFocusingKeyboard_overrideExceptions_completion___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) showKeyboard];
  }

  return result;
}

uint64_t __108__CKChatInputController_dismissAppCardIfNecessaryAnimated_isFocusingKeyboard_overrideExceptions_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    (*(*(a1 + 32) + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setAppCardDismissPadding:(double)padding
{
  self->_appCardDismissPadding = padding;
  if (CKIsAppCardsEnabled())
  {
    appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
    [appCardPresentationOverseer setAppCardDismissPadding:padding];
  }
}

- (BOOL)presentedAppBypassesSendMenu
{
  v3 = CKIsAppCardsEnabled();
  if (v3)
  {
    appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
    presentedAppBypassesSendMenu = [appCardPresentationOverseer presentedAppBypassesSendMenu];

    LOBYTE(v3) = presentedAppBypassesSendMenu;
  }

  return v3;
}

- (id)_adamIDFromPluginPayloadData:(id)data
{
  v15 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v12 = 0;
  v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v12];
  v5 = v12;
  if (objc_opt_respondsToSelector())
  {
    [v4 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "strict-decoding 019 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v7 = IMExtensionPayloadUnarchivingClasses();
  v8 = [v4 decodeObjectOfClasses:v7 forKey:*MEMORY[0x1E696A508]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKey:*MEMORY[0x1E69A6EB0]];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Failed to unarchive the pluginPayload data. Error: %@", buf, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (void)presentViewControllerWithPluginChatItem:(id)item presentationStyle:(unint64_t)style presentationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  iMChatItem = [item IMChatItem];
  dataSource = [iMChatItem dataSource];

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  bundleID = [dataSource bundleID];
  v12 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:bundleID];

  browserPluginDataSource = [(CKChatInputController *)self browserPluginDataSource];
  v14 = browserPluginDataSource;
  if (browserPluginDataSource != dataSource)
  {

    goto LABEL_3;
  }

  browserPlugin = [(CKChatInputController *)self browserPlugin];

  if (style == 2 || browserPlugin != v12)
  {
LABEL_3:
    identifier = [v12 identifier];
    if ([identifier isEqualToString:*MEMORY[0x1E69A69F0]])
    {
      pluginPayload = [dataSource pluginPayload];
      data = [pluginPayload data];

      v18 = [(CKChatInputController *)self _adamIDFromPluginPayloadData:data];
      [(CKChatInputController *)self setDeferredPluginDataSource:dataSource];
      [(CKChatInputController *)self presentAppStoreForAdamID:v18];
      mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
      [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A72F8]];
    }

    else
    {
      [(CKChatInputController *)self launchAndShowBrowserForPlugin:v12 dataSource:dataSource style:style presentationConfiguration:configurationCopy];
    }
  }
}

- (void)presentAppStoreForAdamID:(id)d
{
  dCopy = d;
  v5 = +[CKBalloonPluginManager sharedInstance];
  v6 = *MEMORY[0x1E69A6988];
  v7 = [v5 viewControllerForPluginIdentifier:*MEMORY[0x1E69A6988] dataSource:0];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 setAdamID:dCopy];
    }

    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    v9 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v6];

    [(CKChatInputController *)self showBrowserForPlugin:v9 dataSource:0 style:1];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Not launching the app store, got nil back for the VC", v11, 2u);
    }
  }
}

- (void)presentAppStoreForURL:(id)l fromSourceApplication:(id)application
{
  lCopy = l;
  applicationCopy = application;
  v8 = +[CKBalloonPluginManager sharedInstance];
  v9 = *MEMORY[0x1E69A6988];
  v10 = [v8 viewControllerForPluginIdentifier:*MEMORY[0x1E69A6988] dataSource:0];

  if (v10)
  {
    [v10 setSendDelegate:self];
    if (lCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v10 setStoreLaunchURL:lCopy sourceApplication:applicationCopy];
    }

    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    v12 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v9];

    [(CKChatInputController *)self showBrowserForPlugin:v12 dataSource:0 style:1];
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Not launching the app store, got nil back for the VC", v14, 2u);
    }
  }
}

- (void)presentAppManager
{
  v3 = +[CKBalloonPluginManager sharedInstance];
  v4 = [v3 viewControllerForPluginIdentifier:@"com.apple.messages.browser.MorePlugin" dataSource:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDelegate:self];
  }

  if (v4)
  {
    balloonPlugin = [v4 balloonPlugin];
    [(CKChatInputController *)self setBrowserPlugin:balloonPlugin];

    [v4 setSendDelegate:self];
    [v4 setModalPresentationStyle:2];
    delegate = [(CKChatInputController *)self delegate];
    viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];
    [viewControllerForChatInputModalPresentation presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_6;
    }

    delegate = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, delegate, OS_LOG_TYPE_INFO, "Not launching the app manager, got nil back for the VC", v8, 2u);
    }
  }

LABEL_6:
}

- (void)notifyBrowserViewControllerOfMatchingNewMessages:(id)messages
{
  v23 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [messagesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(messagesCopy);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          dataSource = [v10 dataSource];
          bundleID = [dataSource bundleID];

          pluginBundleID = [(CKChatInputController *)self pluginBundleID];
          v14 = [bundleID isEqualToString:pluginBundleID];

          if (v14)
          {
            browserSwitcher = [(CKChatInputController *)self browserSwitcher];
            currentViewController = [browserSwitcher currentViewController];

            if (objc_opt_respondsToSelector())
            {
              dataSource2 = [v10 dataSource];
              [currentViewController messageAddedWithDataSource:dataSource2];
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [messagesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

- (void)requestPhotoBrowserToAppendFinalImagesToComposition
{
  v3 = +[CKBalloonPluginManager sharedInstance];
  existingPhotoBrowserViewController = [v3 existingPhotoBrowserViewController];

  entryView = [(CKChatInputController *)self entryView];
  composition = [entryView composition];

  shelfPluginPayload = [composition shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  if (existingPhotoBrowserViewController)
  {
    v8 = shelfPluginPayload == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ![pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]])
  {
    v12 = IMBalloonExtensionIDWithSuffix();
    v13 = [pluginBundleID isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = +[CKBalloonPluginManager sharedInstance];
    v9 = [v14 viewControllerForPluginIdentifier:pluginBundleID];

    [v9 setSendDelegate:self];
    v11 = shelfPluginPayload;
    photoShelfViewController = [v11 photoShelfViewController];

    if (photoShelfViewController)
    {
      dismissEntryViewShelfUpdater = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
      [dismissEntryViewShelfUpdater beginHoldingUpdatesForKey:_kHoldShelfUpdateForSend];

      if (objc_opt_respondsToSelector())
      {
        v17 = [v9 fetchPluginPayloadsAndClear:1];
      }

      else
      {
        v17 = 0;
      }

      dismissEntryViewShelfUpdater2 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
      [dismissEntryViewShelfUpdater2 endHoldingUpdatesForKey:_kHoldShelfUpdateForSend];

      [v11 setAttachments:v17];
    }
  }

  else
  {
    v9 = existingPhotoBrowserViewController;
    dismissEntryViewShelfUpdater3 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
    [dismissEntryViewShelfUpdater3 beginHoldingUpdatesForKey:_kHoldShelfUpdateForSend];

    if (objc_opt_respondsToSelector())
    {
      v11 = [v9 fetchPluginPayloadsAndClear:1];
    }

    else
    {
      v11 = 0;
    }

    dismissEntryViewShelfUpdater4 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
    [dismissEntryViewShelfUpdater4 endHoldingUpdatesForKey:_kHoldShelfUpdateForSend];

    [shelfPluginPayload setAttachments:v11];
  }

LABEL_17:
}

- (void)requestPollPluginToPrepareForDraftWithCompletion:(id)completion
{
  completionCopy = completion;
  entryView = [(CKChatInputController *)self entryView];
  composition = [entryView composition];

  shelfPluginPayload = [composition shelfPluginPayload];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPollsEnabled = [mEMORY[0x1E69A8070] isPollsEnabled];

  if (isPollsEnabled && ([shelfPluginPayload pluginBundleID], v10 = objc_claimAutoreleasedReturnValue(), IMBalloonExtensionIDWithSuffix(), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, (v12 & 1) != 0))
  {
    entryView2 = [(CKChatInputController *)self entryView];
    contentView = [entryView2 contentView];
    pluginEntryViewController = [contentView pluginEntryViewController];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__CKChatInputController_requestPollPluginToPrepareForDraftWithCompletion___block_invoke;
    v16[3] = &unk_1E72F5668;
    v17 = shelfPluginPayload;
    v18 = composition;
    selfCopy = self;
    v20 = completionCopy;
    [pluginEntryViewController fetchInternalMessageStateForDraft:1 completion:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, composition);
  }
}

void __74__CKChatInputController_requestPollPluginToPrepareForDraftWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CKBalloonPluginManager sharedInstance];
  v5 = IMBalloonExtensionIDWithSuffix();
  v12 = [v4 viewControllerForPluginIdentifier:v5];

  v6 = [v12 _itemPayloadFromMSMessage:v3];

  [v6 setLiveEditableInEntryView:1];
  v7 = [*(a1 + 32) associatedMessageGUID];
  [v6 setAssociatedMessageGUID:v7];

  v8 = [*(a1 + 32) pluginSessionGUID];
  [v6 setPluginSessionGUID:v8];

  v9 = [CKComposition compositionWithShelfPluginPayload:v6];
  v10 = [*(a1 + 40) compositionByAppendingComposition:v9];
  v11 = [*(a1 + 48) entryView];
  [v11 setComposition:v10];

  (*(*(a1 + 56) + 16))();
}

- (void)requestPhotoBrowserToPrepareForDraftClearingPhotoShelfViewController:(BOOL)controller
{
  controllerCopy = controller;
  v5 = +[CKBalloonPluginManager sharedInstance];
  existingPhotoBrowserViewController = [v5 existingPhotoBrowserViewController];

  entryView = [(CKChatInputController *)self entryView];
  composition = [entryView composition];

  shelfPluginPayload = [composition shelfPluginPayload];
  if (existingPhotoBrowserViewController)
  {
    v9 = shelfPluginPayload == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || ([shelfPluginPayload pluginBundleID], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E69A6A00]), v10, !v11))
  {
    pluginBundleID = [shelfPluginPayload pluginBundleID];
    v14 = IMBalloonExtensionIDWithSuffix();
    v15 = [pluginBundleID isEqualToString:v14];

    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = +[CKBalloonPluginManager sharedInstance];
    pluginBundleID2 = [shelfPluginPayload pluginBundleID];
    v12 = [v16 viewControllerForPluginIdentifier:pluginBundleID2];

    [v12 setSendDelegate:self];
  }

  else
  {
    v12 = existingPhotoBrowserViewController;
  }

  dismissEntryViewShelfUpdater = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
  [dismissEntryViewShelfUpdater beginHoldingUpdatesForKey:_kHoldShelfUpdateForDraft];

  if (objc_opt_respondsToSelector())
  {
    v19 = [v12 fetchPluginPayloadsAndClear:0];
  }

  else
  {
    v19 = 0;
  }

  dismissEntryViewShelfUpdater2 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
  [dismissEntryViewShelfUpdater2 endHoldingUpdatesForKey:_kHoldShelfUpdateForDraft];

  [shelfPluginPayload setAttachments:v19];
  if (controllerCopy)
  {
    [shelfPluginPayload setPhotoShelfViewController:0];
  }

LABEL_15:
}

- (void)requestPhotoBrowserInitFromDraft:(id)draft
{
  draftCopy = draft;
  shelfPluginPayload = [draftCopy shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v7 = [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]];

  if (v7)
  {
    v8 = +[CKBalloonPluginManager sharedInstance];
    attachments = [shelfPluginPayload attachments];
    v10 = [v8 photosBrowserViewControllerWithPluginPayloads:attachments];

    [v10 setSendDelegate:self];
    balloonPlugin = [v10 balloonPlugin];
    [(CKChatInputController *)self setBrowserPlugin:balloonPlugin];

    [shelfPluginPayload setAttachments:0];
  }

  else
  {
    pluginBundleID2 = [shelfPluginPayload pluginBundleID];
    v13 = IMBalloonExtensionIDWithSuffix();
    v14 = [pluginBundleID2 isEqualToString:v13];

    if (v14)
    {
      v15 = +[CKBalloonPluginManager sharedInstance];
      [v15 invalidatePhotosViewController];

      v16 = +[CKBalloonPluginManager sharedInstance];
      pluginBundleID3 = [shelfPluginPayload pluginBundleID];
      v18 = [v16 viewControllerForPluginIdentifier:pluginBundleID3];

      if (v18)
      {
        v19 = shelfPluginPayload;
        attachments2 = [v19 attachments];
        v21 = [attachments2 count];

        if (v21)
        {
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *v24 = 0;
              _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Setting photo draft", v24, 2u);
            }
          }

          [v18 setSendDelegate:self];
          if (objc_opt_respondsToSelector())
          {
            [v18 restoreDraftStateFromPayload:v19];
          }

          balloonPlugin2 = [v18 balloonPlugin];
          [(CKChatInputController *)self setBrowserPlugin:balloonPlugin2];
        }

        else
        {
          balloonPlugin2 = IMLogHandleForCategory();
          if (os_log_type_enabled(balloonPlugin2, OS_LOG_TYPE_ERROR))
          {
            [CKChatInputController requestPhotoBrowserInitFromDraft:];
          }
        }
      }

      else
      {
        v19 = IMLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CKChatInputController requestPhotoBrowserInitFromDraft:];
        }
      }
    }
  }
}

- (void)requestPhotoBrowserToEnumerateSelectedImagesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = +[CKBalloonPluginManager sharedInstance];
  existingPhotoBrowserViewController = [v5 existingPhotoBrowserViewController];

  entryView = [(CKChatInputController *)self entryView];
  composition = [entryView composition];

  shelfPluginPayload = [composition shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v11 = pluginBundleID;
  if (existingPhotoBrowserViewController)
  {
    v12 = shelfPluginPayload == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]])
  {
    v13 = existingPhotoBrowserViewController;
LABEL_10:
    if (objc_opt_respondsToSelector())
    {
      photoShelfViewController = [v13 fetchPluginPayloadsAndClear:0];
    }

    else
    {
      photoShelfViewController = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      fetchPluginStagedIdentifiers = [v13 fetchPluginStagedIdentifiers];
    }

    else
    {
      fetchPluginStagedIdentifiers = 0;
    }

    goto LABEL_17;
  }

  v13 = IMBalloonExtensionIDWithSuffix();
  if ([v11 isEqualToString:v13])
  {
    photoShelfViewController = [shelfPluginPayload photoShelfViewController];

    if (!photoShelfViewController)
    {
      fetchPluginStagedIdentifiers = 0;
      goto LABEL_18;
    }

    v15 = +[CKBalloonPluginManager sharedInstance];
    v13 = [v15 viewControllerForPluginIdentifier:v11];

    goto LABEL_10;
  }

  fetchPluginStagedIdentifiers = 0;
  photoShelfViewController = 0;
LABEL_17:

LABEL_18:
  v17 = [fetchPluginStagedIdentifiers count];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__CKChatInputController_requestPhotoBrowserToEnumerateSelectedImagesUsingBlock___block_invoke;
  v20[3] = &unk_1E72F5690;
  v22 = blockCopy;
  v23 = v17;
  v21 = fetchPluginStagedIdentifiers;
  v18 = blockCopy;
  v19 = fetchPluginStagedIdentifiers;
  [photoShelfViewController enumerateObjectsUsingBlock:v20];
}

void __80__CKChatInputController_requestPhotoBrowserToEnumerateSelectedImagesUsingBlock___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2;
  if (*(a1 + 48) <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)requestPhotoBrowserToUnstageImages:(id)images
{
  imagesCopy = images;
  if ([imagesCopy count])
  {
    v4 = +[CKBalloonPluginManager sharedInstance];
    existingPhotoBrowserViewController = [v4 existingPhotoBrowserViewController];

    entryView = [(CKChatInputController *)self entryView];
    composition = [entryView composition];

    shelfPluginPayload = [composition shelfPluginPayload];
    pluginBundleID = [shelfPluginPayload pluginBundleID];
    v10 = pluginBundleID;
    if (existingPhotoBrowserViewController && shelfPluginPayload && [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]])
    {
      v11 = existingPhotoBrowserViewController;
    }

    else
    {
      v11 = IMBalloonExtensionIDWithSuffix();
      if (![v10 isEqualToString:v11])
      {
LABEL_11:

        goto LABEL_12;
      }

      photoShelfViewController = [shelfPluginPayload photoShelfViewController];

      if (!photoShelfViewController)
      {
LABEL_12:

        goto LABEL_13;
      }

      v13 = +[CKBalloonPluginManager sharedInstance];
      v11 = [v13 viewControllerForPluginIdentifier:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 clearPluginPackagesWithIdentifiers:imagesCopy];
    }

    goto LABEL_11;
  }

LABEL_13:
}

- (void)requestPhotoBrowserToUnstageAllImages
{
  v3 = +[CKBalloonPluginManager sharedInstance];
  existingPhotoBrowserViewController = [v3 existingPhotoBrowserViewController];

  entryView = [(CKChatInputController *)self entryView];
  composition = [entryView composition];

  shelfPluginPayload = [composition shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  if (existingPhotoBrowserViewController)
  {
    v8 = shelfPluginPayload == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]])
  {
    v9 = existingPhotoBrowserViewController;
LABEL_10:
    if (objc_opt_respondsToSelector())
    {
      [v9 clearAllStagedPluginPackages];
    }

    goto LABEL_12;
  }

  v9 = IMBalloonExtensionIDWithSuffix();
  if ([pluginBundleID isEqualToString:v9])
  {
    photoShelfViewController = [shelfPluginPayload photoShelfViewController];

    if (!photoShelfViewController)
    {
      goto LABEL_13;
    }

    v11 = +[CKBalloonPluginManager sharedInstance];
    v9 = [v11 viewControllerForPluginIdentifier:pluginBundleID];

    goto LABEL_10;
  }

LABEL_12:

LABEL_13:
}

- (void)prepareForSuspend
{
  v3 = +[CKPluginExtensionStateObserver sharedInstance];
  passKitUIPresented = [v3 passKitUIPresented];

  if (passKitUIPresented)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v13 = 0;
    v6 = "prepareForSuspend not doing suspend work as we are suspending due to passkit UI";
    v7 = &v13;
LABEL_9:
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
LABEL_10:

    return;
  }

  v8 = +[CKPluginExtensionStateObserver sharedInstance];
  iTunesStoreDialogPresented = [v8 iTunesStoreDialogPresented];

  if (iTunesStoreDialogPresented)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v12 = 0;
    v6 = "prepareForSuspend not doing suspend work as we are suspending due to iTunesStore UI";
    v7 = &v12;
    goto LABEL_9;
  }

  transitionCoordinator = [(CKBrowserSwitcherViewController *)self->_browserSwitcher transitionCoordinator];
  [transitionCoordinator dismissCurrentFullScreenModalAnimated:0 completion:0];

  [(CKChatInputController *)self dismiss];
  [(CKChatInputController *)self dismissBrowserViewController];
  currentInputViewController = [(CKChatInputController *)self currentInputViewController];
  [currentInputViewController setViewController:0];

  [(CKChatInputController *)self setBrowserSwitcher:0];

  [(CKChatInputController *)self setSwitcherInputViewController:0];
}

- (void)applicationWillAddDeactivationReasonNotification:(id)notification
{
  notificationCopy = notification;
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  if (browserPlugin)
  {
    v6 = browserPlugin;
    v7 = CKIsRunningInMacCatalyst();

    if (!v7)
    {
      userInfo = [notificationCopy userInfo];
      v9 = [userInfo objectForKey:*MEMORY[0x1E69DE838]];
      longLongValue = [v9 longLongValue];

      if (longLongValue == 11)
      {
        v11 = +[CKPluginExtensionStateObserver sharedInstance];
        passKitUIPresented = [v11 passKitUIPresented];

        if (passKitUIPresented)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v19 = 0;
              v14 = "prepareForSuspend not doing suspend work as we are suspending due to passkit UI";
              v15 = &v19;
LABEL_12:
              _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
              goto LABEL_13;
            }

            goto LABEL_13;
          }
        }

        else
        {
          v16 = +[CKPluginExtensionStateObserver sharedInstance];
          iTunesStoreDialogPresented = [v16 iTunesStoreDialogPresented];

          if (!iTunesStoreDialogPresented)
          {
            [(CKChatInputController *)self setShouldRestoreAppSwitcher:0];
            [(CKChatInputController *)self dismiss];
            goto LABEL_15;
          }

          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v18 = 0;
              v14 = "prepareForSuspend not doing suspend work as we are suspending due to iTunesStore UI";
              v15 = &v18;
              goto LABEL_12;
            }

LABEL_13:
          }
        }
      }
    }
  }

LABEL_15:
}

- (void)chatControllerReceivedKeyboardWillHideNotification:(id)notification
{
  [(CKChatInputController *)self setKeyboardIsHiding:1];
  [(CKChatInputController *)self stickerPickerWasHidden];
  delegate = [(CKChatInputController *)self delegate];
  [delegate updateActiveEntryViewPositioningGuide];
}

- (void)chatControllerReceivedKeyboardDidHideNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "keyboardDidHide: called", v7, 2u);
    }
  }

  [(CKChatInputController *)self setKeyboardIsHiding:0];
  [(CKChatInputController *)self setKeyboardIsVisible:0];
  orientationManager = [(CKChatInputController *)self orientationManager];
  [orientationManager endListeningForOrientationEventsWithKey:@"KeyboardVisible"];
}

- (void)chatControllerReceivedKeyboardWillShowNotification:(id)notification
{
  orientationManager = [(CKChatInputController *)self orientationManager];
  [orientationManager beginListeningForOrientationEventsWithKey:@"KeyboardVisible"];

  delegate = [(CKChatInputController *)self delegate];
  [delegate updateActiveEntryViewPositioningGuide];
}

- (void)chatControllerReceivedKeyboardDidShowNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "keyboardDidShow: called", buf, 2u);
    }
  }

  [(CKChatInputController *)self setKeyboardIsVisible:1];
  appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
  if ([appCardPresentationOverseer isPresentingCard] && (objc_msgSend(appCardPresentationOverseer, "isPresentingInSendMenuPopover") & 1) == 0 && (objc_msgSend(appCardPresentationOverseer, "isExpanded") & 1) == 0 && -[CKChatInputController isEntryViewFirstResponder](self, "isEntryViewFirstResponder"))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__CKChatInputController_chatControllerReceivedKeyboardDidShowNotification___block_invoke;
    v7[3] = &unk_1E72EBA18;
    v8 = appCardPresentationOverseer;
    [v8 fadeOutCardWithCompletion:v7];
  }
}

- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder
{
  if (!CKIsRunningInMacCatalyst())
  {
    [(CKChatInputController *)self setBrowserPlugin:0];
    [(CKChatInputController *)self setBrowserPluginDataSource:0];

    [(CKChatInputController *)self dismissBrowserViewController];
  }
}

- (BOOL)isHandwritingLandscape
{
  handwritingPresentationController = [(CKChatInputController *)self handwritingPresentationController];
  isHandwritingLandscape = [handwritingPresentationController isHandwritingLandscape];

  return isHandwritingLandscape;
}

- (void)setBrowserPlugin:(id)plugin
{
  v15 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  browserPlugin = self->_browserPlugin;
  p_browserPlugin = &self->_browserPlugin;
  if (browserPlugin != pluginCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        identifier = [(IMBalloonPlugin *)*p_browserPlugin identifier];
        identifier2 = [(IMBalloonPlugin *)pluginCopy identifier];
        v11 = 138412546;
        v12 = identifier;
        v13 = 2112;
        v14 = identifier2;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKChatInputController browserPlugin changing from %@ to %@", &v11, 0x16u);
      }
    }

    objc_storeStrong(p_browserPlugin, plugin);
  }
}

- (void)setInputViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  v5 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v5 isAccessibilityPreferredContentSizeCategory];

  [(CKChatInputController *)self setInputViewVisible:visibleCopy entryFieldCollapsed:isAccessibilityPreferredContentSizeCategory ^ 1u animated:1];
}

- (void)setInputViewVisible:(BOOL)visible entryFieldCollapsed:(BOOL)collapsed animated:(BOOL)animated messageDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  animatedCopy = animated;
  collapsedCopy = collapsed;
  visibleCopy = visible;
  delegate = [(CKChatInputController *)self delegate];
  v12 = [delegate keyboardIsVisibleForChatInputController:self];

  if (self->_inputViewVisible != visibleCopy || visibleCopy & ~v12)
  {
    self->_inputViewVisible = visibleCopy;
    if (delegateCopy)
    {
      delegate2 = [(CKChatInputController *)self delegate];
      [delegate2 chatInputDidUpdateInputViewShowingBrowser:visibleCopy entryFieldCollapsed:collapsedCopy animated:animatedCopy];
    }

    entryView = [(CKChatInputController *)self entryView];
    [entryView setNeedsLayout];

    if (!visibleCopy)
    {
      v16 = +[CKBalloonPluginManager sharedInstance];
      [v16 commitInteractionTimeOrderingChanges];
    }
  }
}

- (void)setCurrentInputViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_currentInputViewController != controllerCopy)
  {
    v8 = controllerCopy;
    objc_storeStrong(&self->_currentInputViewController, controller);
    isInputViewVisible = [(CKChatInputController *)self isInputViewVisible];
    controllerCopy = v8;
    if (isInputViewVisible)
    {
      delegate = [(CKChatInputController *)self delegate];
      [delegate chatInputDidUpdateWithNewInputViewController:self->_currentInputViewController];

      controllerCopy = v8;
    }
  }
}

- (CKBrowserSwitcherViewController)browserSwitcher
{
  browserSwitcher = self->_browserSwitcher;
  if (!browserSwitcher)
  {
    v4 = [CKBrowserSwitcherViewController alloc];
    targetConversation = [(CKChatInputController *)self targetConversation];
    delegate = [(CKChatInputController *)self delegate];
    viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];
    v8 = [(CKBrowserSwitcherViewController *)v4 initWithConversation:targetConversation sendDelegate:self presentingViewController:viewControllerForChatInputModalPresentation];
    v9 = self->_browserSwitcher;
    self->_browserSwitcher = v8;

    [(CKBrowserSwitcherViewController *)self->_browserSwitcher setDelegate:self];
    browserSwitcher = self->_browserSwitcher;
  }

  return browserSwitcher;
}

- (CKKeyboardContentViewController)switcherInputViewController
{
  switcherInputViewController = self->_switcherInputViewController;
  if (!switcherInputViewController || ([(CKKeyboardContentViewController *)switcherInputViewController viewController], v4 = objc_claimAutoreleasedReturnValue(), browserSwitcher = self->_browserSwitcher, v4, v4 != browserSwitcher))
  {
    v6 = [CKKeyboardContentViewController alloc];
    browserSwitcher = [(CKChatInputController *)self browserSwitcher];
    v8 = [(CKKeyboardContentViewController *)v6 initWithViewController:browserSwitcher identifier:@"Switcher"];
    v9 = self->_switcherInputViewController;
    self->_switcherInputViewController = v8;

    view = [(CKKeyboardContentViewController *)self->_switcherInputViewController view];
    [view intrinsicContentSize];
  }

  v11 = self->_switcherInputViewController;

  return v11;
}

- (CKConversation)targetConversation
{
  delegate = [(CKChatInputController *)self delegate];
  v4 = [delegate targetConversationForChatInputController:self];

  return v4;
}

- (BOOL)_isiMessageConversation
{
  targetConversation = [(CKChatInputController *)self targetConversation];
  sendingService = [targetConversation sendingService];
  __ck_isiMessage = [sendingService __ck_isiMessage];

  return __ck_isiMessage;
}

- (BOOL)_isBusinessConversation
{
  targetConversation = [(CKChatInputController *)self targetConversation];
  isBusinessConversation = [targetConversation isBusinessConversation];

  return isBusinessConversation;
}

- (void)beginStickerReactionSessionWithChatItem:(id)item cell:(id)cell
{
  cellCopy = cell;
  itemCopy = item;
  v8 = [CKStickerReactionSession alloc];
  targetConversation = [(CKChatInputController *)self targetConversation];
  v9 = [(CKStickerReactionSession *)v8 initWithConversation:targetConversation chatItem:itemCopy cell:cellCopy];

  [(CKChatInputController *)self setStickerReactionSession:v9];
}

- (void)endStickerReactionSession
{
  [(CKChatInputController *)self setStickerReactionSession:0];

  [(CKChatInputController *)self setCurrentPresentationConfig:0];
}

- (void)appCardOverseerDidDismissAppCard
{
  self->_isAppCardDismissing = 0;
  [(CKChatInputController *)self browserWillDismiss];
  [(CKChatInputController *)self setIsDismissingAppCardForKeyboardPresentation:0];
  if (![(CKChatInputController *)self hasStickerReactionSession])
  {
    delegate = [(CKChatInputController *)self delegate];
    [delegate updateActiveEntryViewPositioningGuide];
  }

  delegate2 = [(CKChatInputController *)self delegate];
  [delegate2 appCardDidDismiss];

  self->_isAppCardDraggingBelowKeyboardDetent = 0;
}

- (void)appCardOverseerWillDismissAppCard
{
  self->_isAppCardDismissing = 1;
  if (![(CKChatInputController *)self hasStickerReactionSession])
  {
    delegate = [(CKChatInputController *)self delegate];
    [delegate updateActiveEntryViewPositioningGuide];
  }
}

- (void)appCardDidMoveToWindow:(id)window
{
  delegate = [(CKChatInputController *)self delegate];
  [delegate enforceSendMenuOrderingInWindowSubviews];
}

- (void)appCardOverseerWillPresentAppCard
{
  self->_isAppCardAppearing = 1;
  delegate = [(CKChatInputController *)self delegate];
  [delegate updateActiveEntryViewPositioningGuide];
}

- (void)appCardOverseerDidPresentAppCard
{
  self->_isAppCardAppearing = 0;
  [(CKChatInputController *)self _informDelegateOfUpdatedAppCardHeightAnimated:1];
  delegate = [(CKChatInputController *)self delegate];
  [delegate updateActiveEntryViewPositioningGuide];
}

- (void)appCardOverseerCardDidChangeHeight:(double)height isBelowKeyboardDetent:(BOOL)detent isDragging:(BOOL)dragging isGeneratingEndOfDragAnimations:(BOOL)animations
{
  animationsCopy = animations;
  draggingCopy = dragging;
  if (dragging)
  {
    self->_isAppCardDraggingBelowKeyboardDetent = detent;
  }

  if (detent && ![(CKChatInputController *)self preventResignFirstResponder])
  {
    delegate = [(CKChatInputController *)self delegate];
    [delegate appCardDidChangeEntryViewAlignmentHeight:!draggingCopy | animationsCopy animated:height];
  }
}

- (double)appCardOverseerCompactHeightExcludingSafeArea
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  keyboardSizeDeterminesAppCardDetentHeight = [v3 keyboardSizeDeterminesAppCardDetentHeight];

  if (keyboardSizeDeterminesAppCardDetentHeight)
  {
    v5 = CKNonFlatDeviceOrientation();
    entryView = [(CKChatInputController *)self entryView];
    contentView = [entryView contentView];
    textView = [contentView textView];

    [MEMORY[0x1E69DCBB8] sizeForInterfaceOrientation:v5 inputDelegate:textView];
    v10 = v9;
    delegate = [(CKChatInputController *)self delegate];
    viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];

    view = [viewControllerForChatInputModalPresentation view];
    [view safeAreaInsets];
    v15 = v14;

    v16 = v10 - v15;
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v26 = 134217984;
        v27 = v16;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "ChatInputController resolved compact app card height %.2f", &v26, 0xCu);
      }
    }
  }

  else
  {
    delegate2 = [(CKChatInputController *)self delegate];
    viewControllerForChatInputModalPresentation2 = [delegate2 viewControllerForChatInputModalPresentation];

    view2 = [viewControllerForChatInputModalPresentation2 view];
    [view2 frame];
    v22 = v21;

    traitCollection = [viewControllerForChatInputModalPresentation2 traitCollection];
    [traitCollection displayScale];
    v16 = round(v22 * 0.4 * v24) / v24;
  }

  return v16;
}

- (void)appCardOverseerViewStateDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(CKChatInputController *)self delegate];
  [delegate appCardViewStateDidChange:changeCopy];
}

- (void)browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:(id)fullscreen withReason:(int64_t)reason
{
  fullscreenCopy = fullscreen;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Hiding entry view", v10, 2u);
    }
  }

  entryView = [(CKChatInputController *)self entryView];
  [entryView setHidden:1];

  if (!reason)
  {
    [(CKChatInputController *)self setInCollapseOrExpandAnimation:1];
    delegate = [(CKChatInputController *)self delegate];
    [delegate chatInputControllerWillTransitionExpanded:self];
    goto LABEL_9;
  }

  if (reason == 2)
  {
    delegate = [(CKChatInputController *)self delegate];
    [delegate chatInputControllerWillPresentModalBrowserViewController:self];
LABEL_9:
  }
}

- (void)browserTransitionCoordinatorDidTransitionOrPresentToFullscreen:(id)fullscreen withReason:(int64_t)reason
{
  entryView = [(CKChatInputController *)self entryView];
  [entryView setHidden:0];

  if (reason)
  {
    if (reason != 2)
    {
      goto LABEL_6;
    }

    delegate = [(CKChatInputController *)self delegate];
    [delegate chatInputControllerDidPresentModalBrowserViewController:self];
  }

  else
  {
    [(CKChatInputController *)self setInCollapseOrExpandAnimation:0];
    delegate = [(CKChatInputController *)self delegate];
    [delegate chatInputControllerDidTransitionExpanded:self];
  }

LABEL_6:
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];

  [(CKChatInputController *)self adjustSupportedInterfaceOrientationForPluginID:identifier requiredPortrait:0];
}

- (void)browserTransitionCoordinatorWillCollapseOrDismiss:(id)dismiss withReason:(int64_t)reason
{
  dismissCopy = dismiss;
  if (reason != 5)
  {
    [(CKChatInputController *)self _reconfigurePluginDataSourceWithBalloonControllerIfNecessary];
    if (reason == 3)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __86__CKChatInputController_browserTransitionCoordinatorWillCollapseOrDismiss_withReason___block_invoke_2;
      v9[3] = &unk_1E72EBA18;
      v9[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v9];
      delegate = [(CKChatInputController *)self delegate];
      [delegate chatInputControllerWillDismissModalBrowserViewController:self];
    }

    else
    {
      if (reason != 1)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __86__CKChatInputController_browserTransitionCoordinatorWillCollapseOrDismiss_withReason___block_invoke_3;
        v8[3] = &unk_1E72EBA18;
        v8[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
        goto LABEL_8;
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __86__CKChatInputController_browserTransitionCoordinatorWillCollapseOrDismiss_withReason___block_invoke;
      v10[3] = &unk_1E72EBA18;
      v10[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
      delegate = [(CKChatInputController *)self delegate];
      [delegate chatInputControllerWillTransitionCollapsed:self];
    }
  }

LABEL_8:
}

uint64_t __86__CKChatInputController_browserTransitionCoordinatorWillCollapseOrDismiss_withReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInCollapseOrExpandAnimation:1];
  v2 = *(a1 + 32);
  v3 = [v2 switcherInputViewController];
  [v2 setCurrentInputViewController:v3];

  v4 = [*(a1 + 32) entryView];
  v5 = [v4 contentView];
  v6 = [v5 pluginEntryViewController];
  v7 = v6 == 0;

  v8 = *(a1 + 32);

  return [v8 setInputViewVisible:1 entryFieldCollapsed:v7 animated:1];
}

uint64_t __86__CKChatInputController_browserTransitionCoordinatorWillCollapseOrDismiss_withReason___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCurrentInputViewController:0];
  v2 = *(a1 + 32);

  return [v2 setInputViewVisible:1 entryFieldCollapsed:0 animated:0];
}

uint64_t __86__CKChatInputController_browserTransitionCoordinatorWillCollapseOrDismiss_withReason___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 switcherInputViewController];
  [v2 setCurrentInputViewController:v3];

  v4 = *(a1 + 32);

  return [v4 setInputViewVisible:1 entryFieldCollapsed:1 animated:0];
}

- (void)_reconfigurePluginDataSourceWithBalloonControllerIfNecessary
{
  if ([(CKChatInputController *)self currentPluginIsDT])
  {
    browserPluginDataSource = [(CKChatInputController *)self browserPluginDataSource];
    delegate = [(CKChatInputController *)self delegate];
    chatInputTranscriptIdentifier = [delegate chatInputTranscriptIdentifier];

    browserPlugin = [(CKChatInputController *)self browserPlugin];
    messageGUID = [browserPluginDataSource messageGUID];
    v7 = [browserPlugin existingBalloonControllerWithMessageGUID:messageGUID contextIdentifier:chatInputTranscriptIdentifier];

    [v7 setDataSource:browserPluginDataSource];
    [(CKChatInputController *)self setBrowserPluginDataSource:0];
  }
}

- (void)browserTransitionCoordinatorDidCollapseOrDismiss:(id)dismiss withReason:(int64_t)reason
{
  dismissCopy = dismiss;
  if ((reason & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(CKChatInputController *)self setInCollapseOrExpandAnimation:0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__CKChatInputController_browserTransitionCoordinatorDidCollapseOrDismiss_withReason___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (reason == 3)
  {
    delegate = [(CKChatInputController *)self delegate];
    [delegate chatInputControllerDidDismissModalBrowserViewController:self];

    [(CKChatInputController *)self setBrowserPlugin:0];
    [(CKChatInputController *)self setInputViewVisible:0];
    [(CKChatInputController *)self setBrowserSwitcher:0];
    [(CKChatInputController *)self setCurrentInputViewController:0];
    [(CKChatInputController *)self setSwitcherInputViewController:0];
  }
}

void __85__CKChatInputController_browserTransitionCoordinatorDidCollapseOrDismiss_withReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 chatInputControllerDidTransitionCollapsed:*(a1 + 32)];
}

- (id)appTitleOverride
{
  targetConversation = [(CKChatInputController *)self targetConversation];
  if ([targetConversation isBusinessConversation])
  {
    chat = [targetConversation chat];
    recipient = [chat recipient];
    name = [recipient name];
  }

  else
  {
    name = 0;
  }

  return name;
}

- (id)appIconOverride
{
  targetConversation = [(CKChatInputController *)self targetConversation];
  if ([targetConversation isBusinessConversation])
  {
    chat = [targetConversation chat];
    recipient = [chat recipient];

    v5 = MEMORY[0x1E69DCAB8];
    brandSquareLogoImageData = [recipient brandSquareLogoImageData];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v8 = [v5 imageWithData:brandSquareLogoImageData scale:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)switcherViewControllerWillAppear:(id)appear
{
  balloonPlugin = [appear balloonPlugin];
  identifier = [balloonPlugin identifier];

  [(CKChatInputController *)self adjustSupportedInterfaceOrientationForPluginID:identifier requiredPortrait:0];
}

- (void)switcherViewControllerWillDisappear:(id)disappear
{
  delegate = [(CKChatInputController *)self delegate];
  [delegate stopForcingOrientation];
}

- (void)setConversationAndRecipientsForBrowser:(id)browser
{
  browserCopy = browser;
  appManagerIsDisplayed = [(CKChatInputController *)self appManagerIsDisplayed];
  v5 = browserCopy;
  if (browserCopy && !appManagerIsDisplayed)
  {
    targetConversation = [(CKChatInputController *)self targetConversation];
    if (objc_opt_respondsToSelector())
    {
      senderIdentifier = [targetConversation senderIdentifier];
      [browserCopy setSender:senderIdentifier];
    }

    if (objc_opt_respondsToSelector())
    {
      recipientStrings = [targetConversation recipientStrings];
      [browserCopy setRecipients:recipientStrings];
    }

    if (objc_opt_respondsToSelector())
    {
      delegate = [(CKChatInputController *)self delegate];
      generatedSummary = [delegate generatedSummary];
      [browserCopy setGeneratedSummary:generatedSummary];
    }

    if (objc_opt_respondsToSelector())
    {
      delegate2 = [(CKChatInputController *)self delegate];
      generativeContext = [delegate2 generativeContext];
      [browserCopy setGenerativeContext:generativeContext];
    }

    if (objc_opt_respondsToSelector())
    {
      [browserCopy setIsiMessage:{-[CKChatInputController _isiMessageConversation](self, "_isiMessageConversation")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [browserCopy setIsBusiness:{-[CKChatInputController _isBusinessConversation](self, "_isBusinessConversation")}];
    }

    if (objc_opt_respondsToSelector())
    {
      chat = [targetConversation chat];
      guid = [chat guid];
      [browserCopy setConversationID:guid];
    }

    balloonPlugin = [browserCopy balloonPlugin];
    [(CKChatInputController *)self setBrowserPlugin:balloonPlugin];

    v5 = browserCopy;
  }
}

- (void)switcherViewControllerDidCollapse:(id)collapse
{
  switcherInputViewController = [(CKChatInputController *)self switcherInputViewController];
  [(CKChatInputController *)self setCurrentInputViewController:switcherInputViewController];

  [(CKChatInputController *)self setInputViewVisible:1];
}

- (void)switcherViewControllerDidSelectAppStore:(id)store shouldRestoreAppSwitcher:(BOOL)switcher
{
  [(CKChatInputController *)self setShouldRestoreAppSwitcher:switcher];
  [(CKChatInputController *)self presentAppStoreForAdamID:0];
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7308]];
}

- (void)switcherViewControllerDidSelectAppManager:(id)manager shouldRestoreAppSwitcher:(BOOL)switcher
{
  [(CKChatInputController *)self setShouldRestoreAppSwitcher:switcher];

  [(CKChatInputController *)self presentAppManager];
}

- (void)_launchAppExtensionForDebugging
{
  v23 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.MobileSMS.CKAppExtension.launch", 0);
  v4 = CKAppExtensionDevelopmentTargetBundle();
  if ([v4 length])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    allPlugins = [mEMORY[0x1E69A5AD0] allPlugins];

    v7 = [allPlugins countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(allPlugins);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v11 identifier];
          v13 = [identifier containsString:v4];

          if (v13)
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          v8 = [allPlugins countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      v14 = v11;

      if (!v14)
      {
        goto LABEL_14;
      }

      [(CKChatInputController *)self showBrowserForPlugin:v14 dataSource:0 style:0];
      browserSwitcher = [(CKChatInputController *)self browserSwitcher];
      [browserSwitcher showPlugin:v14];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69A56D8] object:0];
    }

    else
    {
LABEL_11:

LABEL_14:
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__CKChatInputController__launchAppExtensionForDebugging__block_invoke;
      block[3] = &unk_1E72EBA18;
      block[4] = self;
      if (_launchAppExtensionForDebugging_onceToken != -1)
      {
        dispatch_once(&_launchAppExtensionForDebugging_onceToken, block);
      }
    }
  }
}

void __56__CKChatInputController__launchAppExtensionForDebugging__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__launchAppExtensionForDebugging name:*MEMORY[0x1E69A56D8] object:0];
}

- (void)_setupObserverForLaunchAppExtensionForDebugging
{
  v4 = CKAppExtensionDevelopmentTargetBundle();
  if ([v4 length])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _LaunchAppExtensionForDebuggingNotificationHandler, @"com.apple.MobileSMS.CKAppExtension.launch", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)launchAndShowBrowserForPlugin:(id)plugin dataSource:(id)source style:(unint64_t)style presentationConfiguration:(id)configuration
{
  pluginCopy = plugin;
  sourceCopy = source;
  configurationCopy = configuration;
  v12 = +[CKBalloonPluginManager sharedInstance];
  identifier = [pluginCopy identifier];
  v14 = [v12 isPluginEnabled:identifier];

  if ((v14 & 1) == 0)
  {
    identifier2 = [pluginCopy identifier];
    [v12 setEnabled:1 forPlugin:identifier2];
  }

  visibleDrawerPlugins = [v12 visibleDrawerPlugins];
  v17 = [visibleDrawerPlugins containsObject:pluginCopy];

  if ((v17 & 1) == 0)
  {
    identifier3 = [pluginCopy identifier];
    [v12 updateInteractionTimeForPlugin:identifier3];

    [v12 commitInteractionTimeOrderingChanges];
  }

  [(CKChatInputController *)self showBrowserForPlugin:pluginCopy dataSource:sourceCopy style:style presentationConfiguration:configurationCopy];
}

- (void)showBrowserPopoverForPlugin:(id)plugin dataSource:(id)source style:(unint64_t)style presentationConfiguration:(id)configuration
{
  pluginCopy = plugin;
  sourceCopy = source;
  configurationCopy = configuration;
  browserClass = [pluginCopy browserClass];
  if (style > 1)
  {
    _IMLog();
  }

  else
  {
    v13 = [[browserClass alloc] initWithBalloonPlugin:pluginCopy dataSource:sourceCopy];
    identifier = [pluginCopy identifier];
    v15 = IMBalloonExtensionIDWithSuffix();
    v16 = [identifier isEqualToString:v15];

    if (v16)
    {
      v17 = 380.0;
      v18 = 280.0;
    }

    else
    {
      identifier2 = [pluginCopy identifier];
      v20 = IMBalloonExtensionIDWithSuffix();
      v21 = [identifier2 isEqualToString:v20];

      if (v21)
      {
        v22 = +[CKUIBehavior sharedBehaviors];
        [v22 stickerPopoverSize];
        v18 = v23;
        v17 = v24;
      }

      else
      {
        v17 = 480.0;
        v18 = 320.0;
      }
    }

    [v13 setPreferredContentSize:{v18, v17}];
    v25 = objc_alloc_init(CKBrowserTransitionCoordinator);
    targetConversation = [(CKChatInputController *)self targetConversation];
    [(CKBrowserTransitionCoordinator *)v25 setConversation:targetConversation];

    [(CKBrowserTransitionCoordinator *)v25 updateBrowser:v13];
    v27 = [(CKChatInputController *)self pluginContextForPlugin:pluginCopy];
    identifier3 = [pluginCopy identifier];
    v29 = [identifier3 isEqual:*MEMORY[0x1E69A6A28]];

    if (v29)
    {
      if (objc_opt_respondsToSelector())
      {
        [v13 performSelector:sel_setPluginContext_ withObject:v27];
      }

      if (v27)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          entryView = [(CKChatInputController *)self entryView];
          [entryView setSendLaterPluginInfo:v27 animated:1];
        }
      }
    }

    [(CKChatInputController *)self showExpandedBrowserPopover:v13 presentationConfiguration:configurationCopy];
  }
}

- (void)showExpandedBrowserPopover:(id)popover presentationConfiguration:(id)configuration
{
  popoverCopy = popover;
  configurationCopy = configuration;
  if (configurationCopy)
  {
    [popoverCopy setSendDelegate:self];
    if (objc_opt_respondsToSelector())
    {
      [popoverCopy setCurrentBrowserConsumer:2];
    }

    if (objc_opt_respondsToSelector())
    {
      [popoverCopy setShouldDisableSnapshotView:{objc_msgSend(configurationCopy, "shouldDisableSnapshotView")}];
    }

    [popoverCopy setModalPresentationStyle:7];
    delegate = [(CKChatInputController *)self delegate];
    viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];
    [viewControllerForChatInputModalPresentation presentViewController:popoverCopy animated:1 completion:0];

    sourceView = [configurationCopy sourceView];
    popoverPresentationController = [popoverCopy popoverPresentationController];
    [popoverPresentationController setSourceView:sourceView];

    permittedArrowDirections = [configurationCopy permittedArrowDirections];
    popoverPresentationController2 = [popoverCopy popoverPresentationController];
    [popoverPresentationController2 setPermittedArrowDirections:permittedArrowDirections];

    popoverPresentationController3 = [popoverCopy popoverPresentationController];
    [popoverPresentationController3 setDelegate:self];
  }

  else
  {
    _IMLog();
  }
}

- (BOOL)isShowingAppCardForExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (CKIsAppCardsEnabled() && (-[CKChatInputController appCardPresentationOverseer](self, "appCardPresentationOverseer"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isPresentingCard], v5, v6))
  {
    browserPlugin = [(CKChatInputController *)self browserPlugin];
    extensionIdentifier = [browserPlugin extensionIdentifier];

    v9 = [extensionIdentifier isEqualToString:identifierCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)showBrowserForPlugin:(id)plugin dataSource:(id)source style:(unint64_t)style presentationConfiguration:(id)configuration
{
  v52 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  sourceCopy = source;
  configurationCopy = configuration;
  appBundle = [pluginCopy appBundle];
  bundleIdentifier = [appBundle bundleIdentifier];
  v14 = [(CKChatInputController *)self shouldPreventAppFromDisplayingForBundleIdentifier:bundleIdentifier];

  if (!v14)
  {
    identifier = [pluginCopy identifier];
    v19 = [identifier isEqualToString:*MEMORY[0x1E69A6A28]];

    entryView = [(CKChatInputController *)self entryView];
    composition = [entryView composition];
    shelfPluginPayload = [composition shelfPluginPayload];

    if (shelfPluginPayload)
    {
      supportsSendLater = [shelfPluginPayload supportsSendLater];
      if (v19)
      {
        if ((supportsSendLater & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              pluginBundleID = [shelfPluginPayload pluginBundleID];
              *buf = 138412290;
              v51 = pluginBundleID;
              _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "showBrowserForPlugin: User selected send later, but the currently staged plugin payload (%@) does not allow presentation alongside Send Later. Presenting unsupported item alert and aborting.", buf, 0xCu);
            }
          }

          pluginBundleID2 = [shelfPluginPayload pluginBundleID];
          [(CKChatInputController *)self _presentSendLaterUnsupportedAlertForIdentifier:pluginBundleID2 handler:0];

LABEL_43:
          goto LABEL_44;
        }
      }
    }

    v27 = sourceCopy;
    selfCopy2 = self;
    if (configurationCopy)
    {
      v29 = configurationCopy;
    }

    else
    {
      [(CKChatInputController *)self setStickerPickerMessagePartChatItem:0];
      [(CKChatInputController *)self setStickerPickerMessagePartParentChatItem:0];
      selfCopy2 = self;
      v29 = 0;
    }

    [(CKChatInputController *)selfCopy2 setCurrentPresentationConfig:v29];
    if (CKIsAppCardsEnabled())
    {
      browserPlugin = [(CKChatInputController *)self browserPlugin];
      identifier2 = [browserPlugin identifier];
      identifier3 = [pluginCopy identifier];
      if ([identifier2 isEqualToString:identifier3])
      {
        appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
        isPresentingCard = [appCardPresentationOverseer isPresentingCard];

        if (isPresentingCard)
        {
          sourceCopy = v27;
          if (IMOSLoggingEnabled())
          {
            v35 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              identifier4 = [pluginCopy identifier];
              *buf = 138412290;
              v51 = identifier4;
              _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "presentModernCardForPlugin identifier is already the current plugin: %@. Doing nothing.", buf, 0xCu);
            }
          }

          browserPluginDataSource = [(CKChatInputController *)self browserPluginDataSource];
          v38 = browserPluginDataSource;
          if (browserPluginDataSource == v27)
          {
          }

          else
          {
            appCardPresentationOverseer2 = [(CKChatInputController *)self appCardPresentationOverseer];
            v40 = [appCardPresentationOverseer2 updateCurrentBrowserWithDataSource:v27];

            if (v40)
            {
              appCardPresentationOverseer3 = [(CKChatInputController *)self appCardPresentationOverseer];
              [appCardPresentationOverseer3 requestPresentationStyle:style animated:1];

              [(CKChatInputController *)self setBrowserPluginDataSource:v27];
            }
          }

          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    sourceCopy = v27;
    if (style != 3)
    {
      if (style == 2)
      {
        [(CKChatInputController *)self _presentFullScreenModalBrowserForPlugin:pluginCopy dataSource:v27];
      }

      else
      {
        [(CKChatInputController *)self setBrowserPlugin:pluginCopy];
        [(CKChatInputController *)self setBrowserPluginDataSource:v27];
        delegate = [(CKChatInputController *)self delegate];
        viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];
        traitCollection = [viewControllerForChatInputModalPresentation traitCollection];

        v45 = [(CKChatInputController *)self determineSendMenuPresentationStyleCompatibleWithTraitCollection:traitCollection];
        v46 = CKIsRunningInMacCatalyst();
        v47 = v45 == 1 && configurationCopy != 0;
        if (v46 || v47)
        {
          [(CKChatInputController *)self showBrowserPopoverForPlugin:pluginCopy dataSource:sourceCopy style:style presentationConfiguration:configurationCopy];
        }

        else if (CKIsAppCardsEnabled())
        {
          [(CKChatInputController *)self presentModernCardForPlugin:pluginCopy dataSource:sourceCopy presentationStyle:style];
        }

        else
        {
          v48 = IMLogHandleForCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            [CKChatInputController showBrowserForPlugin:dataSource:style:presentationConfiguration:];
          }
        }
      }
    }

    goto LABEL_43;
  }

  [(CKChatInputController *)self dismissAndReloadInputViews:1];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      appBundle2 = [pluginCopy appBundle];
      bundleIdentifier2 = [appBundle2 bundleIdentifier];
      *buf = 138412290;
      v51 = bundleIdentifier2;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Dismissing App Browser: User attempted to open a plugin that is not allowed by App Limits with Bundle ID%@", buf, 0xCu);
    }
  }

LABEL_44:
}

- (void)_presentFullScreenModalBrowserForPlugin:(id)plugin dataSource:(id)source
{
  v25 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  sourceCopy = source;
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [pluginCopy identifier];
  identifier2 = [browserPlugin identifier];
  v11 = [identifier isEqualToString:identifier2];

  [(CKChatInputController *)self setBrowserPlugin:pluginCopy];
  [(CKChatInputController *)self setBrowserPluginDataSource:sourceCopy];
  if (![(CKChatInputController *)self isAppCardPresented]|| (v11 & 1) != 0)
  {
    identifier3 = [pluginCopy identifier];
    [(CKChatInputController *)self requestPresentationStyleFullScreenModalForPlugin:identifier3 dataSource:sourceCopy skipValidation:1];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        identifier4 = [browserPlugin identifier];
        identifier5 = [pluginCopy identifier];
        *buf = 138412546;
        v22 = identifier4;
        v23 = 2112;
        v24 = identifier5;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "_presentFullScreenModalBrowserForPlugin: dismissing Send Menu presentation for outgoing plugin: %@, new plugin: %@", buf, 0x16u);
      }
    }

    objc_initWeak(buf, self);
    appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__CKChatInputController__presentFullScreenModalBrowserForPlugin_dataSource___block_invoke;
    v17[3] = &unk_1E72ED950;
    objc_copyWeak(&v20, buf);
    v18 = pluginCopy;
    v19 = sourceCopy;
    [appCardPresentationOverseer dismissCardAnimated:1 completion:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __76__CKChatInputController__presentFullScreenModalBrowserForPlugin_dataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) identifier];
  [WeakRetained requestPresentationStyleFullScreenModalForPlugin:v2 dataSource:*(a1 + 40) skipValidation:1];
}

- (void)_presentSendLaterUnsupportedAlertForIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"SHELF_SEND_LATER_UNSUPPORTED_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"SHELF_SEND_LATER_UNSUPPORTED_ITEM" value:&stru_1F04268F8 table:@"ChatKit"];

  v12 = IMBalloonExtensionIDWithSuffix();
  v13 = [identifierCopy isEqualToString:v12];

  if (v13)
  {
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"SHELF_SEND_LATER_UNSUPPORTED_APPLE_CASH_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"SHELF_SEND_LATER_UNSUPPORTED_APPLE_CASH" value:&stru_1F04268F8 table:@"ChatKit"];

    v11 = v17;
    v9 = v15;
  }

  v18 = [CKAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:1];
  v19 = CKFrameworkBundle();
  v20 = [v19 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __80__CKChatInputController__presentSendLaterUnsupportedAlertForIdentifier_handler___block_invoke;
  v27 = &unk_1E72F35C8;
  selfCopy = self;
  v29 = handlerCopy;
  v21 = handlerCopy;
  v22 = [CKAlertAction actionWithTitle:v20 style:0 handler:&v24];
  [v18 addAction:{v22, v24, v25, v26, v27, selfCopy}];

  [(CKChatInputController *)self setIsDisplayingReplaceCompositionAlert:1];
  delegate = [(CKChatInputController *)self delegate];
  [v18 presentFromViewController:delegate animated:1 completion:0];
}

uint64_t __80__CKChatInputController__presentSendLaterUnsupportedAlertForIdentifier_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) dismissPluginAppAfterReplaceAlertInteractedWithIfNeeded];
  v3 = *(a1 + 32);

  return [v3 setIsDisplayingReplaceCompositionAlert:0];
}

- (id)sendLaterPluginInfo
{
  entryView = [(CKChatInputController *)self entryView];
  sendLaterPluginInfo = [entryView sendLaterPluginInfo];
  if (sendLaterPluginInfo)
  {
    v5 = sendLaterPluginInfo;
    entryView2 = [(CKChatInputController *)self entryView];
    sendLaterPluginInfo2 = [entryView2 sendLaterPluginInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      entryView3 = [(CKChatInputController *)self entryView];
      sendLaterPluginInfo3 = [entryView3 sendLaterPluginInfo];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = [CKSendLaterPluginInfo alloc];
  entryView3 = [(CKChatInputController *)self targetConversation];
  sendLaterPluginInfo3 = [(CKSendLaterPluginInfo *)v11 initWithConversation:entryView3];
LABEL_6:
  v12 = sendLaterPluginInfo3;

  return v12;
}

- (id)pluginContextForPlugin:(id)plugin
{
  v12 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  identifier = [pluginCopy identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x1E69A6A28]];

  if (v6)
  {
    sendLaterPluginInfo = [(CKChatInputController *)self sendLaterPluginInfo];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = pluginCopy;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "No pluginContext type known for plugin: %@", &v10, 0xCu);
      }
    }

    sendLaterPluginInfo = 0;
  }

  return sendLaterPluginInfo;
}

- (void)presentModernCardForPlugin:(id)plugin dataSource:(id)source presentationStyle:(unint64_t)style
{
  sourceCopy = source;
  pluginCopy = plugin;
  appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
  v11 = [(CKChatInputController *)self pluginContextForPlugin:pluginCopy];
  v12 = [appCardPresentationOverseer updateCurrentBrowserForPlugin:pluginCopy dataSource:sourceCopy pluginContext:v11];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      entryView = [(CKChatInputController *)self entryView];
      [entryView setSendLaterPluginInfo:v11 animated:1];
    }
  }

  [(CKChatInputController *)self setConversationAndRecipientsForBrowser:v12];
  if (([appCardPresentationOverseer isPresentingInSendMenuPopover] & 1) == 0)
  {
    delegate = [(CKChatInputController *)self delegate];
    isKeyboardVisible = [delegate isKeyboardVisible];

    if (isKeyboardVisible)
    {
      [(CKChatInputController *)self setPreventResignFirstResponder:1];
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    v18 = 0;
  }

  else
  {
    appCardPresentationOverseer2 = [(CKChatInputController *)self appCardPresentationOverseer];
    v18 = [appCardPresentationOverseer2 shouldAnimatePresentationForPresentationStyle:style];
  }

  v20 = appCardPresentationOverseer;
  [v20 presentCardWithStyle:style animated:? completion:?];
  if (v18)
  {
    [(CKChatInputController *)self setPreventResignFirstResponder:0];
    delegate2 = [(CKChatInputController *)self delegate];
    [delegate2 dismissKeyboard];
  }
}

void __81__CKChatInputController_presentModernCardForPlugin_dataSource_presentationStyle___block_invoke(uint64_t a1)
{
  [*(a1 + 40) appCardDismissPadding];
  [*(a1 + 32) setAppCardDismissPadding:?];
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 40) setPreventResignFirstResponder:0];
    v2 = [*(a1 + 40) delegate];
    [v2 dismissKeyboard];

    v3 = [*(a1 + 40) appCardPresentationOverseer];
    v4 = [v3 isExpanded];

    if ((v4 & 1) == 0)
    {
      [*(a1 + 40) _informDelegateOfUpdatedAppCardHeightAnimated:1];
      v5 = [*(a1 + 40) delegate];
      [v5 updateActiveEntryViewPositioningGuide];
    }
  }
}

- (void)extensionRemoteConnectionWasInterrupted:(id)interrupted
{
  userInfo = [interrupted userInfo];
  v8 = [userInfo _stringForKey:*MEMORY[0x1E69A6F20]];

  v5 = IMStickersExtensionIdentifier();
  v6 = IMBalloonExtensionIDWithSuffix();
  v7 = [v8 isEqualToString:v6];

  if (v7)
  {
    [(CKChatInputController *)self dismissStickerPickerPreservingChatItem:0 completion:0];
  }
}

- (void)_informDelegateOfUpdatedAppCardHeightAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(CKChatInputController *)self delegate];
  [(CKChatInputController *)self _appCardHeightWithSafeArea];
  [delegate appCardDidChangeEntryViewAlignmentHeight:animatedCopy animated:?];
}

- (double)_appCardHeightWithSafeArea
{
  delegate = [(CKChatInputController *)self delegate];
  viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];

  [(CKChatInputController *)self appCardOverseerCompactHeightExcludingSafeArea];
  v6 = v5;
  view = [viewControllerForChatInputModalPresentation view];
  [view safeAreaInsets];
  v9 = v6 + v8;

  return v9;
}

- (BOOL)isAppCardPresentationStyleExpanded
{
  appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
  isExpanded = [appCardPresentationOverseer isExpanded];

  return isExpanded;
}

- (void)dismissBrowserViewController
{
  [(CKChatInputController *)self setDeferredPluginDataSource:0];

  [(CKChatInputController *)self _dismissBrowserViewControllerAndReloadInputViews:0];
}

- (void)_dismissBrowserViewControllerAndReloadInputViews:(BOOL)views
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:views];
  [(CKChatInputController *)self _deferredDismissToKeyboardAndFocusEntryView:v4];
}

- (void)showKeyboard
{
  if (!CKIsAppCardsEnabled())
  {
    [(CKChatInputController *)self dismissBrowserViewController];
  }

  entryView = [(CKChatInputController *)self entryView];
  contentView = [entryView contentView];
  textView = [contentView textView];
  [textView becomeFirstResponder];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "showKeyboard called", v7, 2u);
    }
  }
}

- (BOOL)isEntryViewFirstResponder
{
  entryView = [(CKChatInputController *)self entryView];
  contentView = [entryView contentView];
  subjectView = [contentView subjectView];
  isFirstResponder = [subjectView isFirstResponder];

  entryView2 = [(CKChatInputController *)self entryView];
  contentView2 = [entryView2 contentView];
  textView = [contentView2 textView];
  LOBYTE(subjectView) = [textView isFirstResponder];

  return (isFirstResponder | subjectView) & 1;
}

- (BOOL)currentPluginIsDT
{
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69A69A8]];

  return v4;
}

- (BOOL)currentPluginIsPhotos
{
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69A6A00]];

  return v4;
}

- (BOOL)currentPluginIsGenerativePlayground
{
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [identifier isEqualToString:v4];

  return v5;
}

- (BOOL)switcherPluginCanMessageAPIOnBehalfOfPlugin:(id)plugin
{
  v17 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  if (-[CKChatInputController _isCombinedStickersApp](self, "_isCombinedStickersApp") || ![pluginCopy length] || (-[CKChatInputController browserPlugin](self, "browserPlugin"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", pluginCopy), v6, v5, (v7 & 1) != 0))
  {
    if (CKIsRunningInMacCatalyst())
    {
      _switcherPluginCanMessageAPI = 1;
    }

    else
    {
      _switcherPluginCanMessageAPI = [(CKChatInputController *)self _switcherPluginCanMessageAPI];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        balloonPlugin = [(CKBrowserSwitcherViewController *)self->_browserSwitcher balloonPlugin];
        identifier = [balloonPlugin identifier];
        v13 = 138412546;
        v14 = pluginCopy;
        v15 = 2112;
        v16 = identifier;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Denying action for plugin %@ (the current plugin is %@)", &v13, 0x16u);
      }
    }

    _switcherPluginCanMessageAPI = 0;
  }

  return _switcherPluginCanMessageAPI;
}

- (BOOL)_pluginCanMessageAPI:(id)i
{
  iCopy = i;
  if ([iCopy length])
  {
    v4 = IMBalloonExtensionIDWithSuffix();
    v5 = [iCopy isEqualToString:v4];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isZelkovaEnabled = [mEMORY[0x1E69A8070] isZelkovaEnabled];

    if (isZelkovaEnabled)
    {
      v8 = IMBalloonExtensionIDWithSuffix();
      v9 = [iCopy isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isPollsEnabled = [mEMORY[0x1E69A8070]2 isPollsEnabled];

    if (isPollsEnabled)
    {
      v13 = IMBalloonExtensionIDWithSuffix();
      v14 = [iCopy isEqualToString:v13];

      if ((v5 & 1) == 0)
      {
LABEL_8:
        v10 = v9 | v14;
        goto LABEL_11;
      }
    }

    else
    {
      v14 = 0;
      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v10 = 1;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10 & 1;
}

- (BOOL)_isCombinedStickersApp
{
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];
  v4 = [identifier hasSuffix:*MEMORY[0x1E69A68F8]];

  return v4;
}

- (BOOL)_switcherPluginCanMessageAPI
{
  if (!CKIsAppCardsEnabled())
  {
    if (!self->_browserSwitcher)
    {
      return 0;
    }

    browserSwitcher = [(CKChatInputController *)self browserSwitcher];
    if (([browserSwitcher isBrowserReadyForUserInteraction] & 1) == 0)
    {
      browserSwitcher2 = [(CKChatInputController *)self browserSwitcher];
      transitionCoordinator = [browserSwitcher2 transitionCoordinator];
      v3 = [transitionCoordinator currentConsumer] == 2;

LABEL_13:
      return v3;
    }

LABEL_8:
    v3 = 1;
    goto LABEL_13;
  }

  if (![(CKChatInputController *)self appModalIsDisplayed])
  {
    stickerReactionSession = [(CKChatInputController *)self stickerReactionSession];

    browserSwitcher = [(CKChatInputController *)self appCardPresentationOverseer];
    if (([browserSwitcher isPresentingCard] & 1) == 0)
    {
      presentationBegan = [browserSwitcher presentationBegan];
      if (stickerReactionSession)
      {
        v3 = 1;
      }

      else
      {
        v3 = presentationBegan;
      }

      goto LABEL_13;
    }

    goto LABEL_8;
  }

  return 1;
}

- (BOOL)_shouldShowHandwriting
{
  selfCopy = self;
  delegate = [(CKChatInputController *)self delegate];
  LOBYTE(selfCopy) = [delegate chatInputControllerShouldShowHandwriting:selfCopy];

  return selfCopy;
}

- (void)showHandwritingBrowserWithExistingPayload:(id)payload
{
  v28[1] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if ([(CKChatInputController *)self _shouldShowHandwriting])
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      if (payloadCopy)
      {
        v28[0] = payloadCopy;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      }

      else
      {
        v7 = 0;
      }

      v21 = +[CKBalloonPluginManager sharedInstance];
      v22 = [v21 handwritingViewControllerWithPluginPayloads:v7];

      [v22 setSendDelegate:self];
      balloonPlugin = [v22 balloonPlugin];
      [(CKChatInputController *)self setBrowserPlugin:balloonPlugin];

      v24 = [CKKeyboardContentViewController alloc];
      v25 = [(CKKeyboardContentViewController *)v24 initWithViewController:v22 identifier:*MEMORY[0x1E69A69E0]];
      [(CKChatInputController *)self setCurrentInputViewController:v25];
      [(CKChatInputController *)self setInputViewVisible:1];
    }

    else
    {
      orientationManager = [(CKChatInputController *)self orientationManager];
      [orientationManager beginListeningForOrientationEventsWithKey:@"HandwritingOnscreen"];

      handwritingPresentationController = [(CKChatInputController *)self handwritingPresentationController];

      if (!handwritingPresentationController)
      {
        v10 = objc_alloc_init(CKHandwritingPresentationController);
        [(CKChatInputController *)self setHandwritingPresentationController:v10];

        handwritingPresentationController2 = [(CKChatInputController *)self handwritingPresentationController];
        [handwritingPresentationController2 setDelegate:self];

        handwritingPresentationController3 = [(CKChatInputController *)self handwritingPresentationController];
        [handwritingPresentationController3 setSendDelegate:self];

        orientationManager2 = [(CKChatInputController *)self orientationManager];
        handwritingPresentationController4 = [(CKChatInputController *)self handwritingPresentationController];
        [handwritingPresentationController4 setDeviceOrientationManager:orientationManager2];
      }

      handwritingPresentationController5 = [(CKChatInputController *)self handwritingPresentationController];
      [handwritingPresentationController5 setPluginPayload:payloadCopy];

      orientationManager3 = [(CKChatInputController *)self orientationManager];
      isListeningForOrientationEvents = [orientationManager3 isListeningForOrientationEvents];

      if (isListeningForOrientationEvents)
      {
        orientationManager4 = [(CKChatInputController *)self orientationManager];
        currentDeviceOrientation = [orientationManager4 currentDeviceOrientation];

        if (currentDeviceOrientation == 3)
        {
          v20 = 3;
        }

        else
        {
          v20 = 4 * (currentDeviceOrientation == 4);
        }
      }

      else
      {
        v20 = 0;
      }

      handwritingPresentationController6 = [(CKChatInputController *)self handwritingPresentationController];
      [handwritingPresentationController6 setInitialInterfaceOrientation:v20];

      handwritingPresentationController7 = [(CKChatInputController *)self handwritingPresentationController];
      [handwritingPresentationController7 setVisible:1 animated:1];
    }
  }
}

- (BOOL)handwritingIsDisplayed
{
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];
  if ([identifier isEqualToString:*MEMORY[0x1E69A69E0]])
  {
    visible = 1;
  }

  else
  {
    handwritingPresentationController = [(CKChatInputController *)self handwritingPresentationController];
    visible = [handwritingPresentationController visible];
  }

  return visible;
}

- (BOOL)appStoreIsDisplayed
{
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69A6988]];

  return v4;
}

- (BOOL)appManagerIsDisplayed
{
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];
  v4 = [identifier isEqualToString:@"com.apple.messages.browser.MorePlugin"];

  return v4;
}

- (BOOL)appModalIsDisplayed
{
  transitionCoordinator = [(CKBrowserSwitcherViewController *)self->_browserSwitcher transitionCoordinator];
  isPresentingFullScreenModal = [transitionCoordinator isPresentingFullScreenModal];

  return isPresentingFullScreenModal;
}

- (id)_browserViewControllerForInterfaceOrientationMethods
{
  inputViewController = [(CKChatInputController *)self inputViewController];
  transitionCoordinator = [(CKBrowserSwitcherViewController *)self->_browserSwitcher transitionCoordinator];
  isExpanded = [transitionCoordinator isExpanded];

  if ((isExpanded & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    viewController = 0;
  }

  else
  {
    viewController = [inputViewController viewController];

    if (viewController)
    {
      viewController = [inputViewController viewController];
    }
  }

  return viewController;
}

- (BOOL)browserShouldAutorotate
{
  _browserViewControllerForInterfaceOrientationMethods = [(CKChatInputController *)self _browserViewControllerForInterfaceOrientationMethods];
  v3 = _browserViewControllerForInterfaceOrientationMethods;
  if (_browserViewControllerForInterfaceOrientationMethods)
  {
    shouldAutorotate = [_browserViewControllerForInterfaceOrientationMethods shouldAutorotate];
  }

  else
  {
    shouldAutorotate = 1;
  }

  return shouldAutorotate;
}

- (unint64_t)browserSupportedInterfaceOrientations
{
  _browserViewControllerForInterfaceOrientationMethods = [(CKChatInputController *)self _browserViewControllerForInterfaceOrientationMethods];
  v3 = _browserViewControllerForInterfaceOrientationMethods;
  if (_browserViewControllerForInterfaceOrientationMethods)
  {
    supportedInterfaceOrientations = [_browserViewControllerForInterfaceOrientationMethods supportedInterfaceOrientations];
  }

  else
  {
    supportedInterfaceOrientations = 30;
  }

  return supportedInterfaceOrientations;
}

- (void)_handleOrientation
{
  orientationManager = [(CKChatInputController *)self orientationManager];
  currentDeviceOrientation = [orientationManager currentDeviceOrientation];

  if ([(CKChatInputController *)self lastSeenOrientation])
  {
    if (currentDeviceOrientation != [(CKChatInputController *)self lastSeenOrientation])
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (!userInterfaceIdiom && (currentDeviceOrientation - 1) <= 1 && [(CKChatInputController *)self handwritingIsDisplayed])
      {
        handwritingPresentationController = [(CKChatInputController *)self handwritingPresentationController];
        pluginPayload = [handwritingPresentationController pluginPayload];

        if (pluginPayload)
        {
          [(CKChatInputController *)self startEditingPayload:pluginPayload dismiss:1];
        }

        else
        {
          handwritingPresentationController2 = [(CKChatInputController *)self handwritingPresentationController];
          [handwritingPresentationController2 setVisible:0 animated:1];
        }
      }
    }
  }

  [(CKChatInputController *)self setLastSeenOrientation:currentDeviceOrientation];
}

- (void)setShouldBlurForMessageEditing:(BOOL)editing
{
  editingCopy = editing;
  entryView = [(CKChatInputController *)self entryView];
  [entryView setShouldBlurForMessageEditing:editingCopy];
}

- (BOOL)shouldBlurForMessageEditing
{
  entryView = [(CKChatInputController *)self entryView];
  shouldBlurForMessageEditing = [entryView shouldBlurForMessageEditing];

  return shouldBlurForMessageEditing;
}

- (int64_t)determineSendMenuPresentationStyleCompatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v6 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && [collectionCopy horizontalSizeClass] == 2;
  return v6;
}

- (void)handleTextInputPayload:(id)payload withPayloadID:(id)d forPlugin:(id)plugin
{
  payloadCopy = payload;
  dCopy = d;
  pluginCopy = plugin;
  if ([pluginCopy length])
  {
    v11 = +[CKBalloonPluginManager sharedInstance];
    v12 = [v11 viewControllerForPluginIdentifier:pluginCopy];

    if (dCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v12 setSendDelegate:self];
      v13 = [payloadCopy mutableCopy];
      [v13 setObject:&unk_1F04E8088 forKeyedSubscript:@"sessionStartEntryType"];
      v14 = [v13 copy];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__CKChatInputController_handleTextInputPayload_withPayloadID_forPlugin___block_invoke;
      v15[3] = &unk_1E72EB9C8;
      v16 = pluginCopy;
      [v12 handleTextInputPayload:v14 withPayloadID:dCopy completion:v15];
    }
  }
}

void __72__CKChatInputController_handleTextInputPayload_withPayloadID_forPlugin___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Plugin %@ did handle text input payload: %d", &v6, 0x12u);
    }
  }
}

- (void)showLocationPlugin
{
  delegate = [(CKChatInputController *)self delegate];
  v10 = [delegate activeSendMenuPresentationForChatInputController:self];

  v4 = +[CKBalloonPluginManager sharedInstance];
  v5 = IMBalloonExtensionIDWithSuffix();
  v6 = [v4 pluginForExtensionIdentifier:v5];
  if (v6)
  {
    v7 = [v10 presentationStyle] == 1;
    delegate2 = [(CKChatInputController *)self delegate];
    sceneInterfaceOrientation = [delegate2 sceneInterfaceOrientation];

    [(CKChatInputController *)self showBrowserForPlugin:v6 dataSource:0 style:[(CKChatInputController *)self presentationStyleInOrientation:sceneInterfaceOrientation inPopover:v7 forPluginID:v5]];
  }
}

- (void)_handleSelectionOfExtensionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(CKChatInputController *)self delegate];
  v6 = [delegate activeSendMenuPresentationForChatInputController:self];

  v7 = IMBalloonExtensionIDWithSuffix();
  v8 = [identifierCopy isEqualToString:v7];

  if (v8)
  {
    [(CKChatInputController *)self showFunCamera];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

    if (isPopoverSendMenuEnabled)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  v11 = IMBalloonExtensionIDWithSuffix();
  if ([identifierCopy isEqualToString:v11])
  {
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isZelkovaEnabled = [mEMORY[0x1E69A8070]2 isZelkovaEnabled];

    if (isZelkovaEnabled)
    {
      mEMORY[0x1E69A8218] = [MEMORY[0x1E69A8218] sharedCoordinator];
      appPayloadID = [mEMORY[0x1E69A8218] appPayloadID];

      v16 = +[CKBalloonPluginManager sharedInstance];
      appPayloadID2 = [v16 viewControllerForPluginIdentifier:identifierCopy];

      mEMORY[0x1E69A8218]2 = [MEMORY[0x1E69A8218] sharedCoordinator];
      appPayload = [mEMORY[0x1E69A8218]2 appPayload];

      if (!appPayloadID || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_17;
      }

      [appPayloadID2 setSendDelegate:self];
      appPayload2 = [appPayload mutableCopy];
      [appPayload2 setObject:&unk_1F04E80A0 forKeyedSubscript:@"sessionStartEntryType"];
      v21 = [appPayload2 copy];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __67__CKChatInputController__handleSelectionOfExtensionWithIdentifier___block_invoke;
      v64[3] = &unk_1E72EB9C8;
      v65 = identifierCopy;
      [appPayloadID2 handleTextInputPayload:v21 withPayloadID:appPayloadID completion:v64];

LABEL_16:
LABEL_17:

LABEL_18:
      goto LABEL_19;
    }
  }

  else
  {
  }

  v22 = IMBalloonExtensionIDWithSuffix();
  if (([identifierCopy isEqualToString:v22] & 1) == 0)
  {

    goto LABEL_21;
  }

  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPollsEnabled = [mEMORY[0x1E69A8070]3 isPollsEnabled];

  if (!isPollsEnabled)
  {
LABEL_21:
    v34 = IMBalloonExtensionIDWithSuffix();
    v35 = [identifierCopy isEqualToString:v34];

    if (v35)
    {
      entryView = [(CKChatInputController *)self entryView];
      [entryView startRecordingForAudioButtonInEntryView];

      mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isPopoverSendMenuEnabled2 = [mEMORY[0x1E69A8070]4 isPopoverSendMenuEnabled];

      if (isPopoverSendMenuEnabled2 || [v6 presentationStyle] == 1)
      {
        [v6 dismissAnimated:1 completion:0];
      }

      goto LABEL_27;
    }

    v39 = IMBalloonExtensionIDWithSuffix();
    v40 = [identifierCopy isEqualToString:v39];

    if (v40)
    {
      [(CKChatInputController *)self _sendLaterSelectedFromSendMenuWithPresentation:v6];
      goto LABEL_27;
    }

    v44 = IMBalloonExtensionIDWithSuffix();
    v45 = [identifierCopy isEqualToString:v44];

    if (v45)
    {
      v46 = [v6 presentationStyle] == 1;
      delegate2 = [(CKChatInputController *)self delegate];
      sceneInterfaceOrientation = [delegate2 sceneInterfaceOrientation];

      v49 = [(CKChatInputController *)self presentationStyleInOrientation:sceneInterfaceOrientation inPopover:v46 forPluginID:identifierCopy];
      v50 = IMSharedHelperDeviceIsiPad();
      if (v49 == 1)
      {
        v41 = v50;
      }

      else
      {
        v41 = 0;
      }

      goto LABEL_28;
    }

    appPayloadID = +[CKBalloonPluginManager sharedInstance];
    appPayloadID2 = [appPayloadID pluginForExtensionIdentifier:identifierCopy];
    if (appPayloadID2)
    {
      v51 = [v6 presentationStyle] == 1;
      delegate3 = [(CKChatInputController *)self delegate];
      sceneInterfaceOrientation2 = [delegate3 sceneInterfaceOrientation];

      v54 = [(CKChatInputController *)self presentationStyleInOrientation:sceneInterfaceOrientation2 inPopover:v51 forPluginID:identifierCopy];
      [(CKChatInputController *)self showBrowserForPlugin:appPayloadID2 dataSource:0 style:v54];
      v55 = IMSharedHelperDeviceIsiPad();
      if (v54 == 2)
      {
        if (v55)
        {
          [v6 dismissAnimated:1 completion:0];
        }
      }
    }

    goto LABEL_18;
  }

  entryView2 = [(CKChatInputController *)self entryView];
  composition = [entryView2 composition];
  shelfPluginPayload = [composition shelfPluginPayload];
  appPayloadID = [shelfPluginPayload pluginBundleID];

  v28 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(entryView2) = [appPayloadID isEqualToString:v28];

  if ((entryView2 & 1) == 0)
  {
    mEMORY[0x1E69A8218]3 = [MEMORY[0x1E69A8218] sharedCoordinator];
    appPayloadID2 = [mEMORY[0x1E69A8218]3 appPayloadID];

    v30 = +[CKBalloonPluginManager sharedInstance];
    appPayload = [v30 viewControllerForPluginIdentifier:identifierCopy];

    mEMORY[0x1E69A8218]4 = [MEMORY[0x1E69A8218] sharedCoordinator];
    appPayload2 = [mEMORY[0x1E69A8218]4 appPayload];

    if (appPayloadID2 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [appPayload setSendDelegate:self];
      v32 = [appPayload2 mutableCopy];
      [v32 setObject:&unk_1F04E80A0 forKeyedSubscript:@"sessionStartEntryType"];
      v33 = [v32 copy];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __67__CKChatInputController__handleSelectionOfExtensionWithIdentifier___block_invoke_382;
      v62[3] = &unk_1E72EB9C8;
      v63 = identifierCopy;
      [appPayload handleTextInputPayload:v33 withPayloadID:appPayloadID2 completion:v62];
    }

    goto LABEL_16;
  }

LABEL_19:

LABEL_27:
  v41 = 0;
LABEL_28:
  v56 = MEMORY[0x1E69E9820];
  v57 = 3221225472;
  v58 = __67__CKChatInputController__handleSelectionOfExtensionWithIdentifier___block_invoke_383;
  v59 = &unk_1E72ECCA8;
  v60 = identifierCopy;
  selfCopy = self;
  v42 = _Block_copy(&v56);
  if (v41 || (v43 = [v6 presentationStyle]) == 0)
  {
    [v6 dismissAnimated:1 completion:{v42, v56, v57, v58, v59}];
  }

  else if (v43 == 1)
  {
    v42[2](v42, 1);
  }

LABEL_34:
}

void __67__CKChatInputController__handleSelectionOfExtensionWithIdentifier___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Plugin %@ did handle text input payload: %d", &v6, 0x12u);
    }
  }
}

void __67__CKChatInputController__handleSelectionOfExtensionWithIdentifier___block_invoke_382(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Plugin %@ did handle text input payload: %d", &v6, 0x12u);
    }
  }
}

void __67__CKChatInputController__handleSelectionOfExtensionWithIdentifier___block_invoke_383(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMBalloonExtensionIDWithSuffix();
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getTUIGenmojiCreationClass_softClass_0;
    v13 = getTUIGenmojiCreationClass_softClass_0;
    if (!getTUIGenmojiCreationClass_softClass_0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getTUIGenmojiCreationClass_block_invoke_0;
      v9[3] = &unk_1E72EB968;
      v9[4] = &v10;
      __getTUIGenmojiCreationClass_block_invoke_0(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [*(a1 + 40) entryView];
    v7 = [v6 contentView];
    v8 = [v7 textView];
    [v4 showGenmojiCreationForResponder:v8];
  }
}

- (void)sendMenuViewControllerRequestDismiss:(id)dismiss
{
  delegate = [(CKChatInputController *)self delegate];
  v5 = [delegate activeSendMenuPresentationForChatInputController:self];

  [v5 dismissAnimated:1 completion:0];
}

- (void)sendMenuViewControllerWillPerformFullScreenDismissAnimation:(id)animation
{
  animationCopy = animation;
  entryView = [(CKChatInputController *)self entryView];
  [entryView endSendMenuPresentation];

  [(CKChatInputController *)self setShouldSuppressStatusBarForSendMenu:0];
  delegate = [(CKChatInputController *)self delegate];
  [delegate chatInputController:self willBeginFullScreenDismissAnimationForSendMenuViewController:animationCopy];
}

- (void)sendMenuDidAppear:(id)appear presentationStyle:(int64_t)style
{
  entryView = [(CKChatInputController *)self entryView];
  if (style == 1)
  {
    v6 = entryView;
    [entryView beginSendMenuPopoverPresentation];
  }

  else
  {
    if (style)
    {
      goto LABEL_6;
    }

    v6 = entryView;
    [entryView beginSendMenuFullScreenPresentation];
  }

  entryView = v6;
LABEL_6:
}

- (void)sendMenuViewControllerDidFinishDismissAnimation:(id)animation
{
  animationCopy = animation;
  [(CKChatInputController *)self setShouldSuppressStatusBarForSendMenu:0];
  delegate = [(CKChatInputController *)self delegate];
  [delegate chatInputController:self didFinishDismissAnimationForSendMenuViewController:animationCopy];
}

- (BOOL)isKeyboardSnapshotted
{
  delegate = [(CKChatInputController *)self delegate];
  isKeyboardSnapshotted = [delegate isKeyboardSnapshotted];

  return isKeyboardSnapshotted;
}

- (void)messageEntryViewDidExpand:(id)expand
{
  insertPayloadCompletionHandler = [(CKChatInputController *)self insertPayloadCompletionHandler];

  if (insertPayloadCompletionHandler)
  {
    insertPayloadCompletionHandler2 = [(CKChatInputController *)self insertPayloadCompletionHandler];
    insertPayloadCompletionHandler2[2](insertPayloadCompletionHandler2, 0);

    [(CKChatInputController *)self setInsertPayloadCompletionHandler:0];
  }
}

- (void)messageEntryViewInputDidTakeFocus:(id)focus
{
  if (!CKIsAppCardsEnabled())
  {
    [(CKChatInputController *)self browserWillDismiss];

    [(CKChatInputController *)self dismissBrowserViewController];
  }
}

- (void)browserWillDismiss
{
  [(CKChatInputController *)self setBrowserPlugin:0];

  [(CKChatInputController *)self setBrowserPluginDataSource:0];
}

- (void)messageEntryView:(id)view touchUpOutsidePlusButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chatInputControllerShouldEndDeferringSystemNavigationPopGestureForPlusButton:self];
}

- (void)messageEntryView:(id)view touchCancelForPlusButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chatInputControllerShouldEndDeferringSystemNavigationPopGestureForPlusButton:self];
}

- (void)messageEntryView:(id)view touchDragExitForPlusButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chatInputControllerShouldEndDeferringSystemNavigationPopGestureForPlusButton:self];
}

- (void)messageEntryView:(id)view didLongPressPlusButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chatInputControllerShouldEndDeferringSystemNavigationPopGestureForPlusButton:self];

  [(CKChatInputController *)self showPhotosExtension];
}

- (void)messageEntryView:(id)view didReceiveInputSuggestion:(id)suggestion
{
  v40 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  suggestionCopy = suggestion;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isPollsIntelligentCreationEnabled])
  {
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isPollsEnabled = [mEMORY[0x1E69A8070]2 isPollsEnabled];

    if (isPollsEnabled)
    {
      v10 = *MEMORY[0x1E69A6928];
      v33 = IMBalloonExtensionIDWithSuffix();
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.NewMessage", v10];
      v11 = +[CKBalloonPluginManager sharedInstance];
      v31 = [v11 viewControllerForPluginIdentifier:v33];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = suggestionCopy;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Input suggestion using new IP path: %@", buf, 0xCu);
          }
        }

        v13 = suggestionCopy;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:&unk_1F04E80B8 forKeyedSubscript:@"sessionStartEntryType"];
        title = [v13 title];
        [dictionary setObject:title forKeyedSubscript:@"pollTitle"];

        options = [v13 options];
        v17 = [options count] == 0;

        if (!v17)
        {
          v18 = 0;
          do
          {
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pollOption%02lu", v18];
            options2 = [v13 options];
            v21 = [options2 objectAtIndex:v18];

            option = [v21 option];
            v23 = option;
            if (v19 && option)
            {
              [dictionary setValue:option forKey:v19];
            }

            options3 = [v13 options];
            v25 = [options3 count];

            ++v18;
          }

          while (v18 < v25);
        }

        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = dictionary;
            _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Created payload: %@", buf, 0xCu);
          }
        }

        if (!dictionary)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          dictionary = 0;
LABEL_39:

          goto LABEL_40;
        }

        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Input suggestion using old IP path", buf, 2u);
          }
        }

        dictionary = [suggestionCopy smartActionResponse];
        if (!dictionary)
        {
          goto LABEL_39;
        }
      }

      if (v32 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v31 setSendDelegate:self];
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = dictionary;
            _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Payload %@", buf, 0xCu);
          }
        }

        v30 = [dictionary copy];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __68__CKChatInputController_messageEntryView_didReceiveInputSuggestion___block_invoke;
        v35[3] = &unk_1E72ECCA8;
        v36 = v33;
        selfCopy = self;
        [v31 handleTextInputPayload:v30 withPayloadID:v32 completion:v35];
      }

      goto LABEL_39;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Not attempting to stage IP without feature flag enabled.", buf, 2u);
    }
  }

LABEL_40:
}

void __68__CKChatInputController_messageEntryView_didReceiveInputSuggestion___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Plugin %@ did handle text input payload: %d", &v6, 0x12u);
    }
  }

  if (a2)
  {
    [*(a1 + 40) _evaluateMetricsForKeyboardSuggestionWithBundleIdentifier:*MEMORY[0x1E69A6928]];
  }
}

- (void)_evaluateMetricsForKeyboardSuggestionWithBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  v6 = objc_alloc_init(v3);
  [v6 setValue:&unk_1F04E80D0 forKey:*MEMORY[0x1E69A77A0]];
  [v6 setValue:identifierCopy forKey:*MEMORY[0x1E69A77A8]];

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7570] withDictionary:v6];
}

- (BOOL)shouldLaunchPhotosAppForPlusButtonLongPressInMessageEntryView:(id)view
{
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [(CKChatInputController *)self isShowingAppCardForExtensionIdentifier:v4];
  if (v5)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CKChatInputController shouldLaunchPhotosAppForPlusButtonLongPressInMessageEntryView:];
    }
  }

  return !v5;
}

- (void)messageEntryView:(id)view didSelectPlusButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chatInputControllerShouldEndDeferringSystemNavigationPopGestureForPlusButton:self];

  [(CKChatInputController *)self _presentSendMenuForAppCardContentViewController:0 appCardPresentationStyle:0];
}

- (void)_presentSendMenuForAppCardContentViewController:(id)controller appCardPresentationStyle:(unint64_t)style
{
  controllerCopy = controller;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
    firstResponder = [keyWindow firstResponder];

    entryView = [(CKChatInputController *)self entryView];
    contentView = [entryView contentView];
    textView = [contentView textView];

    entryView2 = [(CKChatInputController *)self entryView];
    contentView2 = [entryView2 contentView];
    textView2 = [contentView2 textView];
    v17 = textView2;
    if (textView2 == firstResponder)
    {
    }

    else
    {
      keyboardIsVisible = [(CKChatInputController *)self keyboardIsVisible];

      if (keyboardIsVisible)
      {
        [(CKChatInputController *)self showKeyboard];
      }
    }

    if (textView == firstResponder)
    {
      keyWindow2 = [MEMORY[0x1E69DD2E8] keyWindow];
      firstResponder2 = [keyWindow2 firstResponder];
      [firstResponder2 resignFirstResponder];
    }

    else
    {
      v19 = dispatch_time(0, 100000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __98__CKChatInputController__presentSendMenuForAppCardContentViewController_appCardPresentationStyle___block_invoke;
      block[3] = &unk_1E72EBA18;
      block[4] = self;
      dispatch_after(v19, MEMORY[0x1E69E96A0], block);
    }
  }

  delegate = [(CKChatInputController *)self delegate];
  viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];

  v24 = [CKDefaultSceneOverlayPresentationContext alloc];
  traitCollection = [viewControllerForChatInputModalPresentation traitCollection];
  v26 = [(CKDefaultSceneOverlayPresentationContext *)v24 initWithChatInputController:self initialTraitCollection:traitCollection];

  if (controllerCopy)
  {
    v27 = [CKSendMenuPresentationRequest requestWithPresentationContext:v26 appCardContentViewController:controllerCopy resolvedAppCardPresentationStyle:style completion:&__block_literal_global_409_2];
  }

  else
  {
    v28 = [[CKSendMenuViewController alloc] initWithPresentationContext:v26];
    [(CKSendMenuViewController *)v28 setSendMenuViewControllerDelegate:self];
    [(CKChatInputController *)self setShouldSuppressStatusBarForSendMenu:[(CKSendMenuViewController *)v28 prefersStatusBarHidden]];
    v27 = [CKSendMenuPresentationRequest requestWithPresentationContext:v26 sendMenuViewController:v28 completion:&__block_literal_global_407_1];
  }

  delegate2 = [(CKChatInputController *)self delegate];
  [delegate2 chatInputController:self requestPresentSendMenu:v27];
}

void __98__CKChatInputController__presentSendMenuForAppCardContentViewController_appCardPresentationStyle___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DD2E8] keyWindow];
  v3 = [v2 firstResponder];
  v4 = [*(a1 + 32) entryView];
  v5 = [v4 contentView];
  v6 = [v5 textView];

  if (v3 == v6)
  {
    v8 = [MEMORY[0x1E69DD2E8] keyWindow];
    v7 = [v8 firstResponder];
    [v7 resignFirstResponder];
  }
}

- (BOOL)messageEntryViewShouldResignFirstResponder:(id)responder
{
  v9 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  if ([MEMORY[0x1E69DCBB8] usesInputSystemUI])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8[0] = 67109120;
        v8[1] = [(CKChatInputController *)self preventResignFirstResponder];
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "messageEntryViewShouldResignFirstResponder called: prevented? %{BOOL}d", v8, 8u);
      }
    }

    v6 = ![(CKChatInputController *)self preventResignFirstResponder];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)messageEntryShouldHideCaret:(id)caret
{
  inputViewController = [(CKChatInputController *)self inputViewController];
  v4 = inputViewController != 0;

  return v4;
}

- (BOOL)shouldPreventAppFromDisplayingForBundleIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  identifierCopy = identifier;
  v4 = IMSharedDowntimeController();
  v5 = [v4 allowedToShowAppExtensionWithBundleIdentifier:identifierCopy];

  return v5 ^ 1;
}

- (void)didSelectPlugin:(id)plugin
{
  v24 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      identifier = [pluginCopy identifier];
      *buf = 138412290;
      v23 = identifier;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Entry view selected plugin: %@", buf, 0xCu);
    }
  }

  v7 = +[CKBalloonPluginManager sharedInstance];
  [v7 updateLaunchTimeForPlugin:pluginCopy];

  delegate = [(CKChatInputController *)self delegate];
  sceneInterfaceOrientation = [delegate sceneInterfaceOrientation];

  identifier2 = [pluginCopy identifier];
  v11 = [identifier2 isEqualToString:@"com.apple.messages.browser.MorePlugin"];

  if (v11)
  {
    [(CKChatInputController *)self dismissBrowserViewController];
    browserSwitcher = [(CKChatInputController *)self browserSwitcher];
    [(CKChatInputController *)self switcherViewControllerDidSelectAppManager:browserSwitcher shouldRestoreAppSwitcher:0];
  }

  else
  {
    identifier3 = [pluginCopy identifier];
    v14 = [(CKChatInputController *)self presentationStyleInOrientation:sceneInterfaceOrientation inPopover:0 forPluginID:identifier3];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__CKChatInputController_didSelectPlugin___block_invoke;
    aBlock[3] = &unk_1E72EBC38;
    aBlock[4] = self;
    v15 = pluginCopy;
    v20 = v15;
    v21 = v14;
    v16 = _Block_copy(aBlock);
    buf[0] = 0;
    identifier4 = [v15 identifier];
    [(CKChatInputController *)self adjustSupportedInterfaceOrientationForPluginID:identifier4 requiredPortrait:buf];

    if (buf[0] == 1 && (sceneInterfaceOrientation - 3) <= 1)
    {
      v18 = dispatch_time(0, 50000000);
      dispatch_after(v18, MEMORY[0x1E69E96A0], v16);
    }

    else
    {
      v16[2](v16);
    }
  }
}

- (BOOL)messageEntryViewShouldVerticallyInsetForPresentedAppCard:(id)card
{
  appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
  isPresentingCard = [appCardPresentationOverseer isPresentingCard];

  return isPresentingCard && !self->_isAppCardDraggingBelowKeyboardDetent;
}

- (BOOL)isPresentingAppCardForMessageEntryView:(id)view
{
  appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
  isPresentingCard = [appCardPresentationOverseer isPresentingCard];

  return isPresentingCard;
}

- (BOOL)isPresentingBarelyVisibleAppCardForMessageEntryView:(id)view
{
  v4 = [(CKChatInputController *)self isPresentingAppCardForMessageEntryView:view];
  if (v4)
  {
    appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
    isPresentingBarelyVisibleAppCard = [appCardPresentationOverseer isPresentingBarelyVisibleAppCard];

    LOBYTE(v4) = isPresentingBarelyVisibleAppCard;
  }

  return v4;
}

- (void)adjustSupportedInterfaceOrientationForPluginID:(id)d requiredPortrait:(BOOL *)portrait
{
  v7 = [(CKChatInputController *)self shouldInterfaceBeRestrictedToPortraitForPluginID:?];
  if (d)
  {
    v8 = v7;
    if (portrait)
    {
      *portrait = v7;
    }

    delegate = [(CKChatInputController *)self delegate];
    v10 = delegate;
    if (v8)
    {
      [delegate updateSupportedInterfaceOrientations:2];
    }

    else
    {
      [delegate stopForcingOrientation];
    }
  }
}

- (BOOL)shouldInterfaceBeRestrictedToPortraitForPluginID:(id)d
{
  v3 = *MEMORY[0x1E69A6988];
  dCopy = d;
  LOBYTE(v3) = [dCopy isEqualToString:v3];
  v5 = [dCopy isEqualToString:*MEMORY[0x1E69A69A8]];

  return (v3 | v5) & 1;
}

- (unint64_t)presentationStyleInOrientation:(int64_t)orientation inPopover:(BOOL)popover forPluginID:(id)d
{
  popoverCopy = popover;
  dCopy = d;
  if ([dCopy isEqualToString:*MEMORY[0x1E69A6988]] & 1) != 0 || (IMBalloonExtensionIDWithSuffix(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(dCopy, "isEqualToString:", v8), v8, (v9))
  {
    v10 = 1;
  }

  else
  {
    v12 = IMBalloonExtensionIDWithSuffix();
    v13 = [dCopy isEqualToString:v12];

    if (v13)
    {
      v10 = 2;
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && popoverCopy)
      {
        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isSendMenuEnabled = [mEMORY[0x1E69A8070] isSendMenuEnabled];

        v10 = isSendMenuEnabled;
      }

      else
      {
        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

        v10 = (orientation - 3) < 2 && (userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1;
      }
    }
  }

  return v10;
}

- (id)balloonPluginForIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  v5 = +[CKBalloonPluginManager sharedInstance];
  visibleDrawerPlugins = [v5 visibleDrawerPlugins];

  if ([visibleDrawerPlugins count] <= item)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKChatInputController balloonPluginForIndexPath:];
    }

    v7 = 0;
  }

  else
  {
    v7 = [visibleDrawerPlugins objectAtIndexedSubscript:item];
  }

  return v7;
}

- (void)messageEntryView:(id)view didSelectPluginAtIndex:(id)index
{
  indexCopy = index;
  v6 = [(CKChatInputController *)self balloonPluginForIndexPath:indexCopy];
  v7 = v6;
  if (v6)
  {
    appBundle = [v6 appBundle];
    bundleIdentifier = [appBundle bundleIdentifier];

    if ([(CKChatInputController *)self shouldPreventAppFromDisplayingForBundleIdentifier:bundleIdentifier])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"com.apple.messages.CKScreenTimeDidEnterCurrentAppRestrictionNotification" object:0];
    }

    else
    {
      [(CKChatInputController *)self didSelectPlugin:v7];
    }
  }

  else
  {
    bundleIdentifier = IMLogHandleForCategory();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
    {
      [CKChatInputController messageEntryView:indexCopy didSelectPluginAtIndex:bundleIdentifier];
    }
  }
}

- (void)entryViewDidChangeSize
{
  delegate = [(CKChatInputController *)self delegate];
  [delegate chatInputDidChangeSize];
}

- (void)openURL:(id)l pluginID:(id)d completionHandler:(id)handler
{
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  if ([(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:dCopy])
  {
    if (lCopy)
    {
      v11 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke_3;
      block[3] = &unk_1E72F21A8;
      v12 = v18;
      v18[0] = lCopy;
      v13 = handlerCopy;
      v18[1] = self;
      v19 = v13;
      dispatch_async(v11, block);

LABEL_16:
      goto LABEL_17;
    }

    if (handlerCopy)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke_2;
      v20[3] = &unk_1E72EBDB8;
      v12 = &v21;
      v21 = handlerCopy;
      v15 = MEMORY[0x1E69E96A0];
      v16 = v20;
      goto LABEL_15;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(13);
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "_openURL not allowed as we are not user interactable", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }

    if (handlerCopy)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke;
      v22[3] = &unk_1E72EBDB8;
      v12 = &v23;
      v23 = handlerCopy;
      v15 = MEMORY[0x1E69E96A0];
      v16 = v22;
LABEL_15:
      dispatch_async(v15, v16);
      goto LABEL_16;
    }
  }

LABEL_17:
}

void __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke_4;
  v6[3] = &unk_1E72F56B8;
  v8 = *(a1 + 48);
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 openURL:v3 configuration:0 completionHandler:v6];
}

void __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke_5;
    v5[3] = &unk_1E72F1C80;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    v8 = *(a1 + 48);
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

uint64_t __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(13);
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = _Block_copy(*(a1 + 56));
      v6 = v5;
      v7 = *(a1 + 48);
      *buf = 138413058;
      v12 = v3;
      if (v7)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "LS _openURL %@ URL %@ completionHandler %@, result %@", buf, 0x2Au);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    v9 = _Block_copy(*(a1 + 56));
    _CKLogExternal();
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48) != 0);
}

- (void)openURL:(id)l applicationIdentifier:(id)identifier pluginID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  identifierCopy = identifier;
  lCopy = l;
  v14 = objc_alloc_init(MEMORY[0x193AF5EC0](@"FBSOpenApplicationService", @"FrontBoardServices"));
  [(CKChatInputController *)self _openContainingBundleID:identifierCopy applicationService:v14 withURL:lCopy pluginID:dCopy completionHandler:handlerCopy];
}

- (void)_openContainingBundleID:(id)d applicationService:(id)service withURL:(id)l pluginID:(id)iD completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  lCopy = l;
  iDCopy = iD;
  handlerCopy = handler;
  v17 = [(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:iDCopy];
  v18 = IMOSLoggingEnabled();
  if (v17)
  {
    if (v18)
    {
      CKLogCStringForType(13);
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = _Block_copy(handlerCopy);
        *buf = 138412802;
        selfCopy = self;
        v41 = 2112;
        v42 = lCopy;
        v43 = 2112;
        v44 = v20;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "_openURL %@ URL %@ completionHandler %@", buf, 0x20u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v29 = _Block_copy(handlerCopy);
      _CKLogExternal();
    }

    if (lCopy)
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(13);
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy = dCopy;
          _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "_openURL containingBundleID: %@", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        _CKLogExternal();
      }

      v22 = _openContainingBundleID_applicationService_withURL_pluginID_completionHandler____FBSOpenApplicationOptionKeyPayloadURL;
      if (!_openContainingBundleID_applicationService_withURL_pluginID_completionHandler____FBSOpenApplicationOptionKeyPayloadURL)
      {
        v23 = MEMORY[0x193AF5ED0]("FBSOpenApplicationOptionKeyPayloadURL", @"FrontBoardServices");
        if (v23)
        {
          v24 = *v23;
        }

        else
        {
          v24 = 0;
        }

        objc_storeStrong(&_openContainingBundleID_applicationService_withURL_pluginID_completionHandler____FBSOpenApplicationOptionKeyPayloadURL, v24);
        v22 = _openContainingBundleID_applicationService_withURL_pluginID_completionHandler____FBSOpenApplicationOptionKeyPayloadURL;
      }

      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{lCopy, v22, 0, v29}];
      if (__FBSOpenApplicationOptionsClass_onceToken != -1)
      {
        [CKChatInputController _openContainingBundleID:applicationService:withURL:pluginID:completionHandler:];
      }

      v26 = [__FBSOpenApplicationOptionsClass__optionsClass optionsWithDictionary:v27];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __103__CKChatInputController__openContainingBundleID_applicationService_withURL_pluginID_completionHandler___block_invoke_435;
      v30[3] = &unk_1E72F56E0;
      v31 = lCopy;
      v32 = dCopy;
      v33 = v27;
      v34 = handlerCopy;
      v28 = v27;
      [serviceCopy openApplication:v32 withOptions:v26 completion:v30];
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __103__CKChatInputController__openContainingBundleID_applicationService_withURL_pluginID_completionHandler___block_invoke_427;
      v35[3] = &unk_1E72EBDB8;
      v36 = handlerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], v35);
      v26 = v36;
    }

    goto LABEL_35;
  }

  if (v18)
  {
    CKLogCStringForType(13);
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "_openURL not allowed as we are not user interactable", buf, 2u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    _CKLogExternal();
  }

  if (handlerCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__CKChatInputController__openContainingBundleID_applicationService_withURL_pluginID_completionHandler___block_invoke;
    block[3] = &unk_1E72EBDB8;
    v38 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v26 = v38;
LABEL_35:
  }
}

uint64_t __103__CKChatInputController__openContainingBundleID_applicationService_withURL_pluginID_completionHandler___block_invoke_427(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __103__CKChatInputController__openContainingBundleID_applicationService_withURL_pluginID_completionHandler___block_invoke_435(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(13);
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        *buf = 138413058;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "_openURL error when trying to openURL %@ with bundle ID %@ options dict %@ error %@", buf, 0x2Au);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__CKChatInputController__openContainingBundleID_applicationService_withURL_pluginID_completionHandler___block_invoke_439;
  block[3] = &unk_1E72ED478;
  v12 = *(a1 + 56);
  v13 = v6 == 0;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __103__CKChatInputController__openContainingBundleID_applicationService_withURL_pluginID_completionHandler___block_invoke_439(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (BOOL)commitPayloadBypassingValidation:(id)validation forPlugin:(id)plugin
{
  validationCopy = validation;
  pluginCopy = plugin;
  [validationCopy setUseDirectSend:1];
  pluginBundleID = [validationCopy pluginBundleID];

  if (!pluginBundleID)
  {
    [validationCopy setPluginBundleID:pluginCopy];
  }

  [(CKChatInputController *)self performSelector:sel_deferredCommitPayload_ withObject:validationCopy afterDelay:0.1];

  return 1;
}

- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
  [appCardPresentationOverseer checkForTouchInExtensionWithCompletion:completionCopy];
}

- (void)deferredCommitPayload:(id)payload
{
  v28 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  [payloadCopy setIsFromMe:1];
  if ([payloadCopy isUpdate])
  {
    browserPluginDataSource = [(CKChatInputController *)self browserPluginDataSource];
    datasource = [payloadCopy datasource];
    v7 = datasource;
    if (datasource)
    {
      v8 = datasource;
    }

    else
    {
      v8 = browserPluginDataSource;
    }

    [payloadCopy setDatasource:v8];

    messageGUID = [payloadCopy messageGUID];
    if (messageGUID)
    {
      [payloadCopy setMessageGUID:messageGUID];
    }

    else
    {
      messageGUID2 = [browserPluginDataSource messageGUID];
      [payloadCopy setMessageGUID:messageGUID2];
    }
  }

  handwritingIsDisplayed = [(CKChatInputController *)self handwritingIsDisplayed];
  handwritingPresentationController = [(CKChatInputController *)self handwritingPresentationController];

  if (handwritingPresentationController)
  {
    handwritingPresentationController2 = [(CKChatInputController *)self handwritingPresentationController];
    [handwritingPresentationController2 setVisible:0 animated:1];
  }

  if (payloadCopy && ([payloadCopy pluginBundleID], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    if ([payloadCopy shouldExpire])
    {
      v15 = [CKComposition newExpirableCompositionWithText:0 subject:0 shelfPluginPayload:payloadCopy];
    }

    else
    {
      v15 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__CKChatInputController_deferredCommitPayload___block_invoke;
    aBlock[3] = &unk_1E72EE588;
    aBlock[4] = self;
    v18 = payloadCopy;
    v25 = v18;
    v19 = _Block_copy(aBlock);
    v20 = v19;
    if (v15)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __47__CKChatInputController_deferredCommitPayload___block_invoke_2;
      v21[3] = &unk_1E72EE5D8;
      v23 = v19;
      v22 = v15;
      dispatch_async(MEMORY[0x1E69E96A0], v21);
    }

    else
    {
      [CKComposition compositionWithShelfPluginPayload:v18 completionHandler:v19];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        pluginBundleID = [(CKChatInputController *)self pluginBundleID];
        *buf = 138412290;
        v27 = pluginBundleID;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Attempting to commit nil payload or payload with no identifier; current visible plugin is %@", buf, 0xCu);
      }
    }

    if (handwritingIsDisplayed)
    {
      [(CKChatInputController *)self dismissBrowserViewController];
    }
  }
}

void __47__CKChatInputController_deferredCommitPayload___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 delegate];
    [v5 chatInputSentComposition:v4];
  }

  v7 = +[CKBalloonPluginManager sharedInstance];
  v6 = [*(a1 + 40) pluginBundleID];
  [v7 updateInteractionTimeForPlugin:v6];
}

- (id)_stickerPickerPlugin
{
  v2 = IMStickersExtensionIdentifier();
  v3 = IMBalloonExtensionIDWithSuffix();

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  [mEMORY[0x1E69A5AD0] loadExtensionWithIdentifierIfNeeded:v3];

  mEMORY[0x1E69A5AD0]2 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v6 = [mEMORY[0x1E69A5AD0]2 balloonPluginForBundleID:v3];

  if (!v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKChatInputController _stickerPickerPlugin];
    }
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CKChatInputController _stickerPickerPlugin];
  }

  return v6;
}

- (void)dismissStickerPickerPreservingChatItem:(BOOL)item completion:(id)completion
{
  itemCopy = item;
  block = completion;
  stickerPickerMessagePartChatItem = [(CKChatInputController *)self stickerPickerMessagePartChatItem];

  if (stickerPickerMessagePartChatItem)
  {
    if (!itemCopy)
    {
      [(CKChatInputController *)self setStickerPickerMessagePartChatItem:0];
      [(CKChatInputController *)self setStickerPickerMessagePartParentChatItem:0];
      [(CKChatInputController *)self endStickerReactionSession];
    }

    if (CKIsAppCardsEnabled())
    {
      delegate = [(CKChatInputController *)self delegate];
      viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];
      [viewControllerForChatInputModalPresentation dismissViewControllerAnimated:1 completion:block];

      [(CKChatInputController *)self forceDismissBrowserWithoutAnimation];
    }

    else
    {
      [(CKChatInputController *)self dismissBrowserViewController];
      entryView = [(CKChatInputController *)self entryView];
      contentView = [entryView contentView];
      textView = [contentView textView];
      [textView resignFirstResponder];

      if (block)
      {
        v12 = dispatch_time(0, 300000000);
        dispatch_after(v12, MEMORY[0x1E69E96A0], block);
      }
    }

    [(CKChatInputController *)self setBrowserPlugin:0];
    [(CKChatInputController *)self stickerPickerWasHiddenPreservingChatItem:itemCopy];
  }
}

- (BOOL)isPresentingStickerPicker
{
  stickerPickerMessagePartChatItem = [(CKChatInputController *)self stickerPickerMessagePartChatItem];
  v3 = stickerPickerMessagePartChatItem != 0;

  return v3;
}

- (void)stickerPickerWasHiddenPreservingChatItem:(BOOL)item
{
  stickerPickerMessagePartChatItem = [(CKChatInputController *)self stickerPickerMessagePartChatItem];

  if (stickerPickerMessagePartChatItem)
  {
    stickerPickerMessagePartChatItem2 = [(CKChatInputController *)self stickerPickerMessagePartChatItem];
    if (!item)
    {
      [(CKChatInputController *)self setStickerPickerMessagePartChatItem:0];
      [(CKChatInputController *)self setStickerPickerMessagePartParentChatItem:0];
      [(CKChatInputController *)self endStickerReactionSession];
    }

    delegate = [(CKChatInputController *)self delegate];
    [delegate chatInputController:self didPresentStickerPickerForChatItem:stickerPickerMessagePartChatItem2];

    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CKChatInputController stickerPickerWasHiddenPreservingChatItem:];
    }
  }
}

- (void)commitSticker:(id)sticker forPlugin:(id)plugin stickerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pluginCopy = plugin;
  stickerCopy = sticker;
  delegate = [(CKChatInputController *)self delegate];
  viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];
  presentedViewController = [viewControllerForChatInputModalPresentation presentedViewController];
  view = [presentedViewController view];

  delegate2 = [(CKChatInputController *)self delegate];
  viewControllerForChatInputModalPresentation2 = [delegate2 viewControllerForChatInputModalPresentation];
  view2 = [viewControllerForChatInputModalPresentation2 view];
  window = [view2 window];
  coordinateSpace = [window coordinateSpace];
  [view convertRect:coordinateSpace toCoordinateSpace:{x, y, width, height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [(CKChatInputController *)self commitSticker:stickerCopy forPlugin:pluginCopy bypassValidation:0 stickerFrame:v22, v24, v26, v28];
}

- (void)commitSticker:(id)sticker forPlugin:(id)plugin bypassValidation:(BOOL)validation stickerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  pluginCopy = plugin;
  delegate = [(CKChatInputController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
    firstResponder = [keyWindow firstResponder];
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v27 = 138412546;
      v28 = keyWindow;
      v29 = 2048;
      v30 = firstResponder;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Current keyWindow:%@ firstResponder: %p", &v27, 0x16u);
    }

    delegate2 = [(CKChatInputController *)self delegate];
    v21 = [delegate2 commitStickerAsTapback:stickerCopy];

    if (v21)
    {
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = stickerCopy;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Committed sticker as tapback: %@", &v27, 0xCu);
      }

      goto LABEL_15;
    }
  }

  keyWindow = [(CKChatInputController *)self stickerReactionSession];
  if (keyWindow)
  {
    firstResponder = [(CKChatInputController *)self delegate];
    stickerPickerMessagePartChatItem = [(CKChatInputController *)self stickerPickerMessagePartChatItem];
    stickerPickerMessagePartParentChatItem = [(CKChatInputController *)self stickerPickerMessagePartParentChatItem];
    [firstResponder sendAutomaticallyPlacedSticker:stickerCopy stickerReactionSession:keyWindow forChatItem:stickerPickerMessagePartChatItem forParentChatItem:stickerPickerMessagePartParentChatItem stickerFrame:0 animationCompletionHandler:{x, y, width, height}];

LABEL_15:
    goto LABEL_16;
  }

  if (validation || -[CKChatInputController switcherPluginCanMessageAPIOnBehalfOfPlugin:](self, "switcherPluginCanMessageAPIOnBehalfOfPlugin:", pluginCopy) || (IMBalloonExtensionIDWithSuffix(), v25 = objc_claimAutoreleasedReturnValue(), v26 = [pluginCopy isEqualToString:v25], v25, v26))
  {
    [(CKChatInputController *)self performSelector:sel__deferredCommitSticker_ withObject:stickerCopy afterDelay:0.1];
    firstResponder = +[CKBalloonPluginManager sharedInstance];
    [firstResponder updateInteractionTimeForPlugin:pluginCopy];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)commitSticker:(id)sticker stickerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stickerCopy = sticker;
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];

  v11 = +[CKBalloonPluginManager sharedInstance];
  [v11 updateInteractionTimeForPlugin:identifier];

  [(CKChatInputController *)self commitSticker:stickerCopy forPlugin:0 stickerFrame:x, y, width, height];
}

- (void)_deferredCommitSticker:(id)sticker
{
  v11 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = stickerCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Deferred Committing sticker: %@", buf, 0xCu);
  }

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7748]];

  uiSticker = [stickerCopy uiSticker];
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__CKChatInputController__deferredCommitSticker___block_invoke;
    v8[3] = &unk_1E72EFB88;
    v8[4] = self;
    [uiSticker stk_renderBakedInRepIfNecessaryWithCompletion:v8];
  }

  else
  {
    [(CKChatInputController *)self _insertUISticker:uiSticker];
  }
}

void __48__CKChatInputController__deferredCommitSticker___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CKChatInputController__deferredCommitSticker___block_invoke_2;
  v5[3] = &unk_1E72EB8D0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)_insertUISticker:(id)sticker
{
  stickerCopy = sticker;
  _ck_plainStringEmojiText = [stickerCopy _ck_plainStringEmojiText];
  if ([_ck_plainStringEmojiText length])
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Handling sticker app sticker insertion as plain string system emoji text", buf, 2u);
    }

    entryView = [(CKChatInputController *)self entryView];
    contentView = [entryView contentView];
    textView = [contentView textView];

    [textView insertText:_ck_plainStringEmojiText];
  }

  else
  {
    targetConversation = [(CKChatInputController *)self targetConversation];
    supportsInlineAdaptiveImageGlyphs = [targetConversation supportsInlineAdaptiveImageGlyphs];

    _ck_shouldInsertInCompositionAsAdaptiveImageGlyph = [stickerCopy _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
    v13 = IMLogHandleForCategory();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (supportsInlineAdaptiveImageGlyphs && _ck_shouldInsertInCompositionAsAdaptiveImageGlyph)
    {
      if (v14)
      {
        *v18 = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Handling sticker app sticker insertion as adaptive image glyph", v18, 2u);
      }

      [(CKChatInputController *)self insertUIStickerAsAdaptiveImageGlyph:stickerCopy];
    }

    else
    {
      if (v14)
      {
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Handling sticker app sticker insertion as sticker added to shelf", v17, 2u);
      }

      v15 = [objc_alloc(MEMORY[0x1E69A82C0]) initWithUISticker:stickerCopy adaptiveImageGlyph:0];
      v16 = [CKBrowserItemPayload browserItemFromSticker:v15];
      [(CKChatInputController *)self startEditingPayload:v16];
    }
  }
}

- (void)commitSticker:(id)sticker withDragTarget:(id)target draggedSticker:(id)draggedSticker
{
  v24 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  targetCopy = target;
  draggedStickerCopy = draggedSticker;
  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [targetCopy description];
    v20 = 138412546;
    v21 = stickerCopy;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Committing sticker: %@, for drag target: %@", &v20, 0x16u);
  }

  stickerReactionSession = [(CKChatInputController *)self stickerReactionSession];
  didSendSticker = [stickerReactionSession didSendSticker];

  if ((didSendSticker & 1) == 0)
  {
    browserPlugin = [(CKChatInputController *)self browserPlugin];
    identifier = [browserPlugin identifier];

    v17 = +[CKBalloonPluginManager sharedInstance];
    [v17 updateInteractionTimeForPlugin:identifier];

    delegate = [(CKChatInputController *)self delegate];
    [delegate sendSticker:stickerCopy withDragTarget:targetCopy draggedSticker:draggedStickerCopy];

    stickerReactionSession2 = [(CKChatInputController *)self stickerReactionSession];

    if (stickerReactionSession2)
    {
      [(CKChatInputController *)self endStickerReactionSession];
      [(CKChatInputController *)self dismissStickerPickerPreservingChatItem:0 completion:0];
    }
  }
}

- (void)stickerDropAnimationFinished
{
  if ([(CKChatInputController *)self didDismissAppCardForStickerDrag])
  {
    [(CKChatInputController *)self setDidDismissAppCardForStickerDrag:0];
    pluginToResumeForStickerDrag = [(CKChatInputController *)self pluginToResumeForStickerDrag];
    if (!pluginToResumeForStickerDrag)
    {
      v3 = +[CKBalloonPluginManager sharedInstance];
      v4 = IMStickersExtensionIdentifier();
      v5 = IMBalloonExtensionIDWithSuffix();
      pluginToResumeForStickerDrag = [v3 pluginForIdentifier:v5];
    }

    [(CKChatInputController *)self setPluginToResumeForStickerDrag:0];
    [(CKChatInputController *)self showBrowserForPlugin:pluginToResumeForStickerDrag dataSource:0 style:[(CKChatInputController *)self savedStyleForDragCompletion]];
    [(CKChatInputController *)self setSavedStyleForDragCompletion:0];
  }

  else
  {
    currentPresentationConfig = [(CKChatInputController *)self currentPresentationConfig];
    if (!currentPresentationConfig)
    {
      return;
    }

    v7 = currentPresentationConfig;
    stickerReactionSession = [(CKChatInputController *)self stickerReactionSession];

    if (!stickerReactionSession)
    {
      return;
    }

    pluginToResumeForStickerDrag = IMStickersExtensionIdentifier();
    v9 = IMBalloonExtensionIDWithSuffix();
    currentPresentationConfig2 = [(CKChatInputController *)self currentPresentationConfig];
    sourceView = [currentPresentationConfig2 sourceView];
    [(CKChatInputController *)self showPluginWithExtensionIdentifier:v9 sourceView:sourceView];
  }
}

- (void)commitSticker:(id)sticker atScreenCoordinate:(CGPoint)coordinate scale:(double)scale rotation:(double)rotation stickerFrame:(CGRect)frame
{
  y = coordinate.y;
  x = coordinate.x;
  v28 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v29.x = x;
    v29.y = y;
    v14 = NSStringFromPoint(v29);
    v20 = 138413058;
    v21 = stickerCopy;
    v22 = 2112;
    v23 = v14;
    v24 = 2048;
    scaleCopy = scale;
    v26 = 2048;
    rotationCopy = rotation;
    _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Committing sticker %@ at screen coordinate: %@, scale: %f, rotation: %f", &v20, 0x2Au);
  }

  rotation = [CKBrowserDragControllerTarget targetWithScreenCoordinate:0 initialSize:x scale:y meshScaleFactor:*MEMORY[0x1E695F060] rotation:*(MEMORY[0x1E695F060] + 8) associatedLayoutIntent:scale, 0.4, rotation];
  browserPlugin = [(CKChatInputController *)self browserPlugin];
  identifier = [browserPlugin identifier];

  v18 = +[CKBalloonPluginManager sharedInstance];
  [v18 updateInteractionTimeForPlugin:identifier];

  delegate = [(CKChatInputController *)self delegate];
  [delegate sendSticker:stickerCopy withDragTarget:rotation draggedSticker:0];

  [(CKChatInputController *)self dismissStickerPickerPreservingChatItem:0 completion:0];
}

- (id)dragControllerTranscriptDelegate
{
  delegate = [(CKChatInputController *)self delegate];
  dragControllerTranscriptDelegate = [delegate dragControllerTranscriptDelegate];

  return dragControllerTranscriptDelegate;
}

- (void)dismissAndReloadInputViews:(BOOL)views forPlugin:(id)plugin
{
  pluginCopy = plugin;
  v7 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CKChatInputController_dismissAndReloadInputViews_forPlugin___block_invoke;
  block[3] = &unk_1E72EBBC0;
  viewsCopy = views;
  block[4] = self;
  v10 = pluginCopy;
  v8 = pluginCopy;
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);
}

void __62__CKChatInputController_dismissAndReloadInputViews_forPlugin___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (([*(a1 + 32) currentPluginIsDT] & 1) != 0 || (objc_msgSend(*(a1 + 32), "handwritingIsDisplayed") & 1) != 0 || (objc_msgSend(*(a1 + 32), "appStoreIsDisplayed") & 1) != 0 || objc_msgSend(*(a1 + 32), "appManagerIsDisplayed"))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AD98] numberWithBool:v2];
    [v3 _deferredDismissToKeyboardAndFocusEntryView:v4];

    v10 = [*(a1 + 32) delegate];
    [v10 stopForcingOrientation];
    goto LABEL_6;
  }

  if (([*(a1 + 32) switcherPluginCanMessageAPIOnBehalfOfPlugin:*(a1 + 40)] & 1) == 0 && (objc_msgSend(*(a1 + 32), "appModalIsDisplayed") & 1) == 0)
  {
    v9 = [*(a1 + 32) appCardPresentationOverseer];
    v5 = [v9 isPresentingCard];

    if (!v2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v5 = 1;
  if (v2)
  {
LABEL_12:
    v6 = [*(a1 + 32) appCardPresentationOverseer];
    v2 = [v6 shouldAnimateDismissal] ^ 1;
  }

LABEL_13:
  if (!v5)
  {
    return;
  }

  v7 = [*(a1 + 32) isDisplayingReplaceCompositionAlert];
  v8 = *(a1 + 32);
  if (v7)
  {
    v8[20] = 1;
    return;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  [v8 performSelector:sel__deferredDismissToKeyboardAndFocusEntryView_ withObject:v10 afterDelay:0.1];
LABEL_6:
}

- (void)dismissOrHideHandwritingBrowser
{
  handwritingPresentationController = [(CKChatInputController *)self handwritingPresentationController];

  if (handwritingPresentationController)
  {
    handwritingPresentationController2 = [(CKChatInputController *)self handwritingPresentationController];
    [handwritingPresentationController2 setVisible:0 animated:1];
  }

  else
  {

    [(CKChatInputController *)self dismissBrowserViewController];
  }
}

- (void)_deferredDismissToKeyboardAndFocusEntryView:(id)view
{
  viewCopy = view;
  if ([(CKChatInputController *)self isDisplayingReplaceCompositionAlert])
  {
    self->_dismissPluginAfterReplaceAlertInteractedWith = 1;
    goto LABEL_36;
  }

  [(CKChatInputController *)self setIsDisplayingReplaceCompositionAlert:0];
  handwritingPresentationController = [(CKChatInputController *)self handwritingPresentationController];

  if (handwritingPresentationController)
  {
    handwritingPresentationController2 = [(CKChatInputController *)self handwritingPresentationController];
    [handwritingPresentationController2 setVisible:0 animated:1];
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    shouldAnimateDismissal = 1;
  }

  else
  {
    appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
    shouldAnimateDismissal = [appCardPresentationOverseer shouldAnimateDismissal];
  }

  bOOLValue = [viewCopy BOOLValue];
  if ([(CKChatInputController *)self appModalIsDisplayed])
  {
    self->_isDismissingAppModal = 1;
    browserSwitcher = [(CKChatInputController *)self browserSwitcher];
    transitionCoordinator = [browserSwitcher transitionCoordinator];

    if (bOOLValue)
    {
      [(CKChatInputController *)self setInputViewVisible:0];
      [(CKChatInputController *)self setBrowserSwitcher:0];
      [(CKChatInputController *)self setSwitcherInputViewController:0];
      [(CKChatInputController *)self setCurrentInputViewController:0];
      v29[5] = MEMORY[0x1E69E9820];
      v29[6] = 3221225472;
      v29[7] = __69__CKChatInputController__deferredDismissToKeyboardAndFocusEntryView___block_invoke;
      v29[8] = &unk_1E72EBA18;
      v29[9] = self;
      im_dispatch_after();
    }

    else
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __69__CKChatInputController__deferredDismissToKeyboardAndFocusEntryView___block_invoke_2;
      v29[3] = &unk_1E72EBA18;
      v29[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v29];
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __69__CKChatInputController__deferredDismissToKeyboardAndFocusEntryView___block_invoke_3;
    v28[3] = &unk_1E72EBA18;
    v28[4] = self;
    [transitionCoordinator dismissCurrentFullScreenModalAnimated:1 completion:v28];

    goto LABEL_34;
  }

  if (![(CKChatInputController *)self _isAppBrowserFullScreen])
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    if ([v14 canPresentOverKeyboard])
    {
      isInputViewVisible = [(CKChatInputController *)self isInputViewVisible];

      if (isInputViewVisible)
      {
        [MEMORY[0x1E69DCBB8] sizeForInterfaceOrientation:CKNonFlatDeviceOrientation() ignoreInputView:1];
        v17 = v16;
        delegate = [(CKChatInputController *)self delegate];
        [delegate chatInputWillChangeHeightForCompactPresentation:v17];
        goto LABEL_33;
      }
    }

    else
    {
    }

    [(CKChatInputController *)self setInputViewVisible:0];
    [(CKChatInputController *)self setBrowserSwitcher:0];
    [(CKChatInputController *)self setSwitcherInputViewController:0];
    [(CKChatInputController *)self setCurrentInputViewController:0];
    [(CKChatInputController *)self setBrowserPlugin:0];
    [(CKChatInputController *)self setBrowserPluginDataSource:0];
    if (CKIsAppCardsEnabled())
    {
      [(CKChatInputController *)self _dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention:shouldAnimateDismissal overrideExceptions:1 focusEntryView:bOOLValue];
    }

    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_34;
    }

    delegate2 = [(CKChatInputController *)self delegate];
    delegate = [delegate2 viewControllerForChatInputModalPresentation];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isModal = [delegate isModal];
    }

    else
    {
      isModal = 0;
    }

    presentedViewController = [delegate presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 && (isModal & 1) == 0)
    {
      [delegate dismissViewControllerAnimated:1 completion:0];
    }

    goto LABEL_33;
  }

  if (bOOLValue)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __69__CKChatInputController__deferredDismissToKeyboardAndFocusEntryView___block_invoke_4;
    v26 = &unk_1E72EBA18;
    selfCopy = self;
    im_dispatch_after();
  }

  if (CKIsAppCardsEnabled())
  {
    [(CKChatInputController *)self _dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention:shouldAnimateDismissal overrideExceptions:1 focusEntryView:bOOLValue];
    goto LABEL_34;
  }

  delegate = IMLogHandleForCategory();
  if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
  {
    [CKChatInputController _deferredDismissToKeyboardAndFocusEntryView:];
  }

LABEL_33:

LABEL_34:
  if ([(CKChatInputController *)self isPresentingStickerPicker:v23])
  {
    [(CKChatInputController *)self dismissStickerPickerPreservingChatItem:0 completion:0];
  }

LABEL_36:
}

void __69__CKChatInputController__deferredDismissToKeyboardAndFocusEntryView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 chatInputControllerRequestInputViewFocusFromFullscreen:*(a1 + 32)];
}

uint64_t __69__CKChatInputController__deferredDismissToKeyboardAndFocusEntryView___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isInputViewVisible])
  {
    v2 = *(a1 + 32);
    v3 = [v2 switcherInputViewController];
    [v2 setCurrentInputViewController:v3];

    v4 = [*(a1 + 32) entryView];
    [v4 setKeyboardVisible:1];
  }

  v5 = [*(a1 + 32) entryView];
  v6 = [v5 contentView];
  v7 = [v6 pluginEntryViewController];
  v8 = v7 == 0;

  v9 = *(a1 + 32);
  v10 = [v9 isInputViewVisible];

  return [v9 setInputViewVisible:v10 entryFieldCollapsed:v8 animated:1];
}

void __69__CKChatInputController__deferredDismissToKeyboardAndFocusEntryView___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 9) = 0;
  v2 = [*(a1 + 32) macBrowserViewController];

  if (v2)
  {
    v3 = [CKTranscriptPluginPresentationConfiguration alloc];
    v4 = [*(a1 + 32) entryView];
    v5 = [v4 sendMenuSourceView];
    v8 = [(CKTranscriptPluginPresentationConfiguration *)v3 initWithSourceView:v5 permittedArrowDirections:8 shouldDisableSnapshotView:0];

    v6 = *(a1 + 32);
    v7 = [v6 macBrowserViewController];
    [v6 showExpandedBrowserPopover:v7 presentationConfiguration:v8];

    [*(a1 + 32) setMacBrowserViewController:0];
  }
}

void __69__CKChatInputController__deferredDismissToKeyboardAndFocusEntryView___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 chatInputControllerRequestInputViewFocusFromFullscreen:*(a1 + 32)];
}

- (void)_dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention:(BOOL)prevention overrideExceptions:(BOOL)exceptions focusEntryView:(BOOL)view
{
  appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
  isPresentingCard = [appCardPresentationOverseer isPresentingCard];

  if (isPresentingCard)
  {
    v11 = dispatch_time(0, 150000000);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __126__CKChatInputController__dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention_overrideExceptions_focusEntryView___block_invoke;
    v13[3] = &unk_1E72F0310;
    v13[4] = self;
    preventionCopy = prevention;
    viewCopy = view;
    exceptionsCopy = exceptions;
    dispatch_after(v11, MEMORY[0x1E69E96A0], v13);
  }

  else if ([(CKChatInputController *)self _isAppBrowserFullScreen])
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKChatInputController _deferredDismissToKeyboardAndFocusEntryView:];
    }
  }
}

uint64_t __126__CKChatInputController__dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention_overrideExceptions_focusEntryView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preventResignFirstResponder];
  [*(a1 + 32) setPreventResignFirstResponder:1];
  [*(a1 + 32) dismissAppCardIfNecessaryAnimated:*(a1 + 40) isFocusingKeyboard:*(a1 + 41) overrideExceptions:*(a1 + 42) completion:0];
  v3 = *(a1 + 32);

  return [v3 setPreventResignFirstResponder:v2];
}

- (void)forceDismissBrowserWithoutAnimation
{
  [(CKChatInputController *)self setInputViewVisible:0];
  [(CKChatInputController *)self setBrowserSwitcher:0];
  [(CKChatInputController *)self setSwitcherInputViewController:0];
  [(CKChatInputController *)self setCurrentInputViewController:0];
  if ([(CKChatInputController *)self isPresentingStickerPicker])
  {

    [(CKChatInputController *)self stickerPickerWasHiddenPreservingChatItem:1];
  }
}

- (void)stickerDruidDragStarted
{
  delegate = [(CKChatInputController *)self delegate];
  v17 = [delegate activeSendMenuPresentationForChatInputController:self];

  delegate2 = [(CKChatInputController *)self delegate];
  viewControllerForChatInputModalPresentation = [delegate2 viewControllerForChatInputModalPresentation];

  if (v17)
  {
    [v17 dismissAnimated:1 completion:0];
    goto LABEL_12;
  }

  appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
  if ([appCardPresentationOverseer isPresentingCard])
  {
    traitCollection = [viewControllerForChatInputModalPresentation traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];

    if (verticalSizeClass == 1)
    {
      appCardPresentationOverseer2 = [(CKChatInputController *)self appCardPresentationOverseer];
      v10 = appCardPresentationOverseer2;
      v11 = &__block_literal_global_461_2;
LABEL_9:
      [appCardPresentationOverseer2 dismissCardAnimated:1 completion:v11];

      goto LABEL_12;
    }
  }

  else
  {
  }

  appCardPresentationOverseer3 = [(CKChatInputController *)self appCardPresentationOverseer];
  isExpanded = [appCardPresentationOverseer3 isExpanded];

  if (isExpanded)
  {
    [(CKChatInputController *)self setDidDismissAppCardForStickerDrag:1];
    browserPlugin = [(CKChatInputController *)self browserPlugin];
    [(CKChatInputController *)self setPluginToResumeForStickerDrag:browserPlugin];

    appCardPresentationOverseer4 = [(CKChatInputController *)self appCardPresentationOverseer];
    -[CKChatInputController setSavedStyleForDragCompletion:](self, "setSavedStyleForDragCompletion:", [appCardPresentationOverseer4 isExpanded]);

    appCardPresentationOverseer2 = [(CKChatInputController *)self appCardPresentationOverseer];
    v10 = appCardPresentationOverseer2;
    v11 = &__block_literal_global_463_2;
    goto LABEL_9;
  }

  stickerReactionSession = [(CKChatInputController *)self stickerReactionSession];

  if (stickerReactionSession)
  {
    [(CKChatInputController *)self dismissStickerPickerPreservingChatItem:1 completion:0];
  }

LABEL_12:
}

- (void)canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:identifierCopy])
  {
    v7 = [identifierCopy isEqualToString:*MEMORY[0x1E69A6988]];
  }

  else
  {
    v7 = 0;
  }

  completionCopy[2](completionCopy, v7);
}

- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (-[CKChatInputController switcherPluginCanMessageAPIOnBehalfOfPlugin:](self, "switcherPluginCanMessageAPIOnBehalfOfPlugin:", identifierCopy) && [identifierCopy isEqualToString:*MEMORY[0x1E69A6988]])
  {
    [(CKChatInputController *)self presentAppStoreForURL:0];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)requestPresentationStyleExpanded:(BOOL)expanded forPlugin:(id)plugin
{
  expandedCopy = expanded;
  pluginCopy = plugin;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:expandedCopy];
  if ([(CKChatInputController *)self currentPluginIsDT])
  {
    [(CKChatInputController *)self _deferredRequestPresentationStyleExpanded:v6];
  }

  else if ([(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:pluginCopy])
  {
    [(CKChatInputController *)self performSelector:sel__deferredRequestPresentationStyleExpanded_ withObject:v6 afterDelay:0.1];
  }
}

- (void)requestTransitionPluginFromFullScreen:(id)screen toExpanded:(BOOL)expanded
{
  screenCopy = screen;
  [(CKChatInputController *)self _deferredDismissToKeyboardAndFocusEntryView:MEMORY[0x1E695E110]];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__CKChatInputController_requestTransitionPluginFromFullScreen_toExpanded___block_invoke;
  block[3] = &unk_1E72EBBC0;
  expandedCopy = expanded;
  v9 = screenCopy;
  selfCopy = self;
  v7 = screenCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__CKChatInputController_requestTransitionPluginFromFullScreen_toExpanded___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = +[CKBalloonPluginManager sharedInstance];
  v3 = [v4 pluginForExtensionIdentifier:*(a1 + 32)];
  [*(a1 + 40) showBrowserForPlugin:v3 dataSource:0 style:v2];
}

- (void)requestPresentationStyleFullScreenModalForPlugin:(id)plugin dataSource:(id)source preferredContentSize:(CGSize)size skipValidation:(BOOL)validation
{
  height = size.height;
  width = size.width;
  pluginCopy = plugin;
  sourceCopy = source;
  if (validation || [(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:pluginCopy])
  {
    v13 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__CKChatInputController_requestPresentationStyleFullScreenModalForPlugin_dataSource_preferredContentSize_skipValidation___block_invoke;
    block[3] = &unk_1E72F5708;
    block[4] = self;
    v15 = pluginCopy;
    v16 = sourceCopy;
    v17 = width;
    v18 = height;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);
  }
}

- (void)_deferredRequestPresentationStyleExpanded:(id)expanded
{
  expandedCopy = expanded;
  if (CKIsAppCardsEnabled())
  {
    bOOLValue = [expandedCopy BOOLValue];
    appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
    [appCardPresentationOverseer requestPresentationStyle:bOOLValue animated:1];
  }

  else
  {
    appCardPresentationOverseer = IMLogHandleForCategory();
    if (os_log_type_enabled(appCardPresentationOverseer, OS_LOG_TYPE_ERROR))
    {
      [CKChatInputController _deferredRequestPresentationStyleExpanded:];
    }
  }
}

- (void)_deferredRequestFullScreenModalForPluginIdentifier:(id)identifier dataSource:(id)source preferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  sourceCopy = source;
  identifierCopy = identifier;
  if (CKIsRunningInMacCatalyst())
  {
    delegate = [(CKChatInputController *)self delegate];
    viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];
    presentedViewController = [viewControllerForChatInputModalPresentation presentedViewController];

    if ([presentedViewController conformsToProtocol:&unk_1F05AEEC8])
    {
      [(CKChatInputController *)self setMacBrowserViewController:presentedViewController];
    }
  }

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v16 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:identifierCopy];

  browserSwitcher = [(CKChatInputController *)self browserSwitcher];
  [browserSwitcher showBrowserFullscreenModalForPlugin:v16 datasource:sourceCopy preferredContentSize:{width, height}];
}

- (BOOL)_isAppBrowserFullScreen
{
  if (CKIsAppCardsEnabled())
  {
    appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
    isExpanded = [appCardPresentationOverseer isExpanded];
  }

  else
  {
    appCardPresentationOverseer = [(CKChatInputController *)self browserSwitcher];
    transitionCoordinator = [appCardPresentationOverseer transitionCoordinator];
    isExpanded = [transitionCoordinator currentConsumer] == 2;
  }

  return isExpanded;
}

- (void)startEditingPayloadBypassingValidation:(id)validation forPlugin:(id)plugin completion:(id)completion
{
  validationCopy = validation;
  pluginCopy = plugin;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(CKChatInputController *)self _shouldDeferCallbackForInsertingPayload])
    {
      [(CKChatInputController *)self setInsertPayloadCompletionHandler:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  v11 = dispatch_time(0, 100000000);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __85__CKChatInputController_startEditingPayloadBypassingValidation_forPlugin_completion___block_invoke;
  v17 = &unk_1E72EB8D0;
  selfCopy = self;
  v19 = validationCopy;
  v12 = validationCopy;
  dispatch_after(v11, MEMORY[0x1E69E96A0], &v14);
  v13 = [CKBalloonPluginManager sharedInstance:v14];
  [v13 updateInteractionTimeForPlugin:pluginCopy];
}

- (void)appendMediaPayloadToText:(id)text
{
  textCopy = text;
  delegate = [(CKChatInputController *)self delegate];
  [delegate chatInputController:self didRequestAppendToCompositionForPayload:textCopy];
}

- (void)startEditingPayload:(id)payload
{
  payloadCopy = payload;
  entryView = [(CKChatInputController *)self entryView];
  contentView = [entryView contentView];
  [contentView prepareForShelfPayloadAnimation];

  [(CKChatInputController *)self _startEditingPayload:payloadCopy];
}

- (void)startEditingPayload:(id)payload dismiss:(BOOL)dismiss forPlugin:(id)plugin completion:(id)completion
{
  dismissCopy = dismiss;
  payloadCopy = payload;
  pluginCopy = plugin;
  completionCopy = completion;
  if ([(CKChatInputController *)self currentPluginIsDT]|| [(CKChatInputController *)self handwritingIsDisplayed])
  {
    [(CKChatInputController *)self startEditingPayload:payloadCopy];
  }

  else if ([(CKChatInputController *)self _pluginCanMessageAPI:pluginCopy]|| [(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:pluginCopy])
  {
    if (completionCopy)
    {
      if ([(CKChatInputController *)self _shouldDeferCallbackForInsertingPayload])
      {
        [(CKChatInputController *)self setInsertPayloadCompletionHandler:completionCopy];
      }

      else
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    v16 = dispatch_time(0, 100000000);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __74__CKChatInputController_startEditingPayload_dismiss_forPlugin_completion___block_invoke;
    v20 = &unk_1E72EB8D0;
    selfCopy = self;
    v22 = payloadCopy;
    dispatch_after(v16, MEMORY[0x1E69E96A0], &v17);
  }

  v13 = [CKBalloonPluginManager sharedInstance:v17];
  [v13 updateInteractionTimeForPlugin:pluginCopy];

  if (dismissCopy)
  {
    [(CKChatInputController *)self dismiss];
    handwritingPresentationController = [(CKChatInputController *)self handwritingPresentationController];

    if (handwritingPresentationController)
    {
      handwritingPresentationController2 = [(CKChatInputController *)self handwritingPresentationController];
      [handwritingPresentationController2 setVisible:0 animated:1];
    }
  }
}

- (void)_startEditingPayload:(id)payload
{
  payloadCopy = payload;
  pluginBundleID = [payloadCopy pluginBundleID];

  if (!pluginBundleID)
  {
    pluginBundleID2 = [(CKChatInputController *)self pluginBundleID];
    [payloadCopy setPluginBundleID:pluginBundleID2];
  }

  [payloadCopy setIsFromMe:1];
  if (payloadCopy)
  {
    if ([payloadCopy shouldExpire])
    {
      v7 = [CKComposition newExpirableCompositionWithText:0 subject:0 shelfPluginPayload:payloadCopy];
    }

    else
    {
      v7 = 0;
    }

    [(CKChatInputController *)self setIsDisplayingReplaceCompositionAlert:0];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __46__CKChatInputController__startEditingPayload___block_invoke;
    v14 = &unk_1E72EE588;
    selfCopy = self;
    v8 = payloadCopy;
    v16 = v8;
    v9 = _Block_copy(&v11);
    v10 = v9;
    if (v7)
    {
      (*(v9 + 2))(v9, v7, 0);
    }

    else
    {
      [CKComposition compositionWithShelfPluginPayload:v8 completionHandler:v9, v11, v12, v13, v14, selfCopy];
    }
  }

  else if ([(CKChatInputController *)self handwritingIsDisplayed])
  {
    [(CKChatInputController *)self dismissBrowserViewController];
  }
}

void __46__CKChatInputController__startEditingPayload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) eagerUploadPayload:*(a1 + 40) identifier:0 replace:1];
    v4 = [*(a1 + 32) entryView];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__CKChatInputController__startEditingPayload___block_invoke_2;
    v8[3] = &unk_1E72F5758;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    v11 = v3;
    v12 = v4;
    v7 = v4;
    [v7 compositionWithAcceptedAutocorrection:v8];
  }
}

void __46__CKChatInputController__startEditingPayload___block_invoke_2(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 shelfPluginPayload];
  v5 = [v4 pluginBundleID];
  v6 = [*(a1 + 32) pluginBundleID];
  v7 = [v5 isEqualToString:v6];

  v41 = [v4 pluginBundleID];
  if ([v41 isEqualToString:*MEMORY[0x1E69A6A00]])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v41 containsString:*MEMORY[0x1E69A6A08]];
  }

  if ([*(a1 + 40) _isiMessageConversation])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Insert extension file and ask for MMCS prewarm", buf, 2u);
      }
    }

    v10 = [MEMORY[0x1E69A5B80] sharedInstance];
    [v10 preWarmConnection];
  }

  v11 = *(a1 + 48);
  if (v3)
  {
    v12 = [v3 compositionByAppendingComposition:v11];
  }

  else
  {
    v12 = v11;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__CKChatInputController__startEditingPayload___block_invoke_707;
  aBlock[3] = &unk_1E72F5730;
  v44 = *(a1 + 56);
  v40 = v12;
  v45 = v40;
  v48 = v8;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v46 = v13;
  v47 = v14;
  v15 = _Block_copy(aBlock);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __46__CKChatInputController__startEditingPayload___block_invoke_2_708;
  v42[3] = &unk_1E72EBFE8;
  v42[4] = *(a1 + 40);
  v16 = _Block_copy(v42);
  if (([*(a1 + 32) supportsSendLater] & 1) != 0 || (objc_msgSend(*(a1 + 40), "entryView", v40), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "sendLaterPluginInfo"), v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v17, v19))
  {
    if ((v4 == 0) | v7 & 1)
    {
      v15[2](v15, 0);
    }

    else
    {
      [*(a1 + 40) setIsDisplayingReplaceCompositionAlert:1];
      v24 = CKFrameworkBundle();
      v25 = [v24 localizedStringForKey:@"SHELF_REPLACE_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v26 = CKFrameworkBundle();
      v27 = [v26 localizedStringForKey:@"SHELF_REPLACE_ITEM" value:&stru_1F04268F8 table:@"ChatKit"];
      v28 = [CKAlertController alertControllerWithTitle:v25 message:v27 preferredStyle:1];

      v29 = CKFrameworkBundle();
      v30 = [v29 localizedStringForKey:@"SHELF_REPLACE_ITEM_OK_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v31 = [CKAlertAction actionWithTitle:v30 style:0 handler:v15];
      [v28 addAction:v31];

      v32 = CKFrameworkBundle();
      v33 = [v32 localizedStringForKey:@"SHELF_REPLACE_ITEM_CANCEL_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v34 = [CKAlertAction actionWithTitle:v33 style:0 handler:v16];
      [v28 addAction:v34];

      v35 = [*(a1 + 32) pluginBundleID];
      v36 = IMBalloonExtensionIDWithSuffix();
      LODWORD(v34) = [v35 isEqualToString:v36];

      if (v34 && IMSharedHelperDeviceIsiPad())
      {
        v37 = [*(a1 + 40) delegate];
        v38 = [v37 activeSendMenuPresentationForChatInputController:*(a1 + 40)];

        v39 = [v38 sendMenuViewController];
        [v28 presentFromViewController:v39 animated:1 completion:0];
      }

      else
      {
        v38 = [*(a1 + 40) delegate];
        [v28 presentFromViewController:v38 animated:1 completion:0];
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [*(a1 + 32) pluginBundleID];
        *buf = 138412290;
        v50 = v21;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "_startEditingPayload: Plugin bundle ID (%@) not supported for Send Later. Presenting alert and aborting.", buf, 0xCu);
      }
    }

    v22 = *(a1 + 40);
    v23 = [*(a1 + 32) pluginBundleID];
    [v22 _presentSendLaterUnsupportedAlertForIdentifier:v23 handler:v16];
  }
}

uint64_t __46__CKChatInputController__startEditingPayload___block_invoke_707(uint64_t a1)
{
  [*(a1 + 32) setComposition:*(a1 + 40)];
  if (*(a1 + 64) == 1)
  {
    v2 = +[CKBalloonPluginManager sharedInstance];
    [v2 invalidatePhotosPlugin];
  }

  v3 = [*(a1 + 48) pluginBundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [*(a1 + 56) delegate];
    v7 = [v6 activeSendMenuPresentationForChatInputController:*(a1 + 56)];

    [v7 dismissAnimated:1 completion:0];
    [*(a1 + 56) dismissBrowserViewController];
  }

  v8 = [*(a1 + 56) insertPayloadCompletionHandler];
  if (v8)
  {
    v9 = v8;
    if ([*(a1 + 56) _isAppBrowserFullScreen])
    {
    }

    else
    {
      v10 = [*(a1 + 56) appModalIsDisplayed];

      if ((v10 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v11 = [*(a1 + 56) insertPayloadCompletionHandler];
    v11[2](v11, 0);

    [*(a1 + 56) setInsertPayloadCompletionHandler:0];
  }

LABEL_10:
  [*(a1 + 56) dismissPluginAppAfterReplaceAlertInteractedWithIfNeeded];
  v12 = *(a1 + 56);

  return [v12 setIsDisplayingReplaceCompositionAlert:0];
}

uint64_t __46__CKChatInputController__startEditingPayload___block_invoke_2_708(uint64_t a1)
{
  [*(a1 + 32) dismissPluginAppAfterReplaceAlertInteractedWithIfNeeded];
  v2 = *(a1 + 32);

  return [v2 setIsDisplayingReplaceCompositionAlert:0];
}

- (void)dismissPluginAppAfterReplaceAlertInteractedWithIfNeeded
{
  if (self->_dismissPluginAfterReplaceAlertInteractedWith)
  {
    [(CKChatInputController *)self performSelector:sel__deferredDismissToKeyboardAndFocusEntryView_ withObject:MEMORY[0x1E695E118] afterDelay:0.1];
    self->_dismissPluginAfterReplaceAlertInteractedWith = 0;
  }
}

- (BOOL)_shouldSendTypingIndicatorDataForPluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = [identifierCopy rangeOfString:*MEMORY[0x1E69A69F0]] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pluginBundleID
{
  handwritingPresentationController = [(CKChatInputController *)self handwritingPresentationController];
  visible = [handwritingPresentationController visible];

  if (visible)
  {
    handwritingPresentationController2 = [(CKChatInputController *)self handwritingPresentationController];
    [handwritingPresentationController2 pluginBundleID];
  }

  else
  {
    handwritingPresentationController2 = [(CKChatInputController *)self browserPlugin];
    [handwritingPresentationController2 identifier];
  }
  v6 = ;

  return v6;
}

- (void)setLocalUserIsTyping:(BOOL)typing
{
  typingCopy = typing;
  pluginBundleID = [(CKChatInputController *)self pluginBundleID];
  v6 = [(CKChatInputController *)self _shouldSendTypingIndicatorDataForPluginIdentifier:pluginBundleID];

  if (v6)
  {
    browserPlugin = [(CKChatInputController *)self browserPlugin];
    v10 = [browserPlugin __ck_statusJPEGImageDataForTransportWithCompressionFactor:0.2];
  }

  else
  {
    v10 = 0;
  }

  delegate = [(CKChatInputController *)self delegate];
  pluginBundleID2 = [(CKChatInputController *)self pluginBundleID];
  [delegate setLocalUserIsComposing:typingCopy withPluginBundleID:pluginBundleID2 typingIndicatorData:v10];
}

- (void)showEntryViewPhotosShelf:(id)shelf completion:(id)completion
{
  shelfCopy = shelf;
  completionCopy = completion;
  v7 = IMBalloonExtensionIDWithSuffix();
  entryView = [(CKChatInputController *)self entryView];
  composition = [entryView composition];
  shelfPluginPayload = [composition shelfPluginPayload];

  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v46 = [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]];
  if (v7)
  {
    pluginBundleID2 = IMBalloonExtensionIDWithSuffix();
    shouldSendAsMediaObject = [v7 isEqualToString:pluginBundleID2];
  }

  else
  {
    v14 = pluginBundleID;
    pluginBundleID2 = [shelfPluginPayload pluginBundleID];
    v15 = IMBalloonExtensionIDWithSuffix();
    if ([pluginBundleID2 isEqualToString:v15])
    {
      shouldSendAsMediaObject = [shelfPluginPayload shouldSendAsMediaObject];
    }

    else
    {
      shouldSendAsMediaObject = 0;
    }

    pluginBundleID = v14;
  }

  v16 = objc_alloc_init(CKBrowserItemPayload);
  v45 = v7;
  [(CKBrowserItemPayload *)v16 setPluginBundleID:v7];
  [(CKBrowserItemPayload *)v16 setPhotoShelfViewController:shelfCopy];
  v17 = [CKComposition compositionWithShelfPluginPayload:v16];
  entryView2 = [(CKChatInputController *)self entryView];
  composition2 = [entryView2 composition];

  shelfPluginPayload2 = [composition2 shelfPluginPayload];

  if ([(CKChatInputController *)self _isiMessageConversation])
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "User insert Photo and ask for MMCS prewarm", buf, 2u);
      }
    }

    mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
    [mEMORY[0x1E69A5B80] preWarmConnection];
  }

  v44 = v17;
  if (composition2)
  {
    v23 = [composition2 compositionByAppendingComposition:v17];
  }

  else
  {
    v23 = v17;
  }

  if ((shelfPluginPayload2 == 0) | v46 & 1 | shouldSendAsMediaObject & 1)
  {
    entryView3 = [(CKChatInputController *)self entryView];

    if (entryView3)
    {
      entryView4 = [(CKChatInputController *)self entryView];
      [entryView4 setComposition:v23];
    }

    else
    {
      [(CKChatInputController *)self setDeferredComposition:v23];
    }

    v41 = v45;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v26 = CKFrameworkBundle();
    v42 = v16;
    [v26 localizedStringForKey:@"SHELF_REPLACE_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v27 = v43 = pluginBundleID;
    CKFrameworkBundle();
    v29 = v28 = completionCopy;
    v30 = [v29 localizedStringForKey:@"SHELF_REPLACE_ITEM" value:&stru_1F04268F8 table:@"ChatKit"];
    v31 = [CKAlertController alertControllerWithTitle:v27 message:v30 preferredStyle:1];

    v32 = CKFrameworkBundle();
    v33 = [v32 localizedStringForKey:@"SHELF_REPLACE_ITEM_OK_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __61__CKChatInputController_showEntryViewPhotosShelf_completion___block_invoke;
    v51[3] = &unk_1E72EDEF0;
    v51[4] = self;
    v52 = v23;
    v34 = v28;
    v53 = v34;
    v35 = [CKAlertAction actionWithTitle:v33 style:0 handler:v51];
    [v31 addAction:v35];

    completionCopy = v28;
    v36 = CKFrameworkBundle();
    v37 = [v36 localizedStringForKey:@"SHELF_REPLACE_ITEM_CANCEL_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __61__CKChatInputController_showEntryViewPhotosShelf_completion___block_invoke_2;
    v48[3] = &unk_1E72F5780;
    v50 = v46;
    v48[4] = self;
    v38 = v34;
    pluginBundleID = v43;
    v49 = v38;
    v39 = [CKAlertAction actionWithTitle:v37 style:0 handler:v48];
    [v31 addAction:v39];

    v16 = v42;
    delegate = [(CKChatInputController *)self delegate];
    [v31 presentFromViewController:delegate animated:1 completion:0];

    v41 = v45;
  }
}

uint64_t __61__CKChatInputController_showEntryViewPhotosShelf_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryView];
  [v2 setComposition:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __61__CKChatInputController_showEntryViewPhotosShelf_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 48) == 1)
  {
    v3 = +[CKBalloonPluginManager sharedInstance];
    [v3 invalidatePhotosPlugin];

    [*(a1 + 32) _loadPhotosBrowser];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (void)generatePreviewAndStoreInCacheForSendingPhotoFromPayload:(id)payload
{
  fileURL = [payload fileURL];
  [(CKChatInputController *)self _beginPreviewCreationWithFileURL:fileURL];
}

+ (id)previewQueue
{
  if (previewQueue_onceToken_0 != -1)
  {
    +[CKChatInputController previewQueue];
  }

  v3 = previewQueue__previewQueue_0;

  return v3;
}

uint64_t __37__CKChatInputController_previewQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = previewQueue__previewQueue_0;
  previewQueue__previewQueue_0 = v0;

  [previewQueue__previewQueue_0 setQualityOfService:33];
  v2 = previewQueue__previewQueue_0;

  return [v2 setMaxConcurrentOperationCount:-1];
}

- (void)_beginPreviewCreationWithFileURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [[CKDBFileTransfer alloc] initWithFileURL:lCopy transcoderUserInfo:0 attributionInfo:0 hideAttachment:0];
    lastPathComponent = [lCopy lastPathComponent];
    [(CKDBFileTransfer *)v5 setFilename:lastPathComponent];

    [(CKDBFileTransfer *)v5 setTransferState:5];
    [(CKDBFileTransfer *)v5 setPreviewGenerationState:1];
    v7 = +[CKMediaObjectManager sharedInstance];
    filename = [(CKDBFileTransfer *)v5 filename];
    v9 = [v7 classForFilename:filename];

    v10 = +[CKMessageContext selfContext];
    v11 = [[v9 alloc] initWithTransfer:v5 context:v10 forceInlinePreview:1];
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 previewMaxWidth];
    v14 = v13;

    v15 = [v11 previewCacheKeyWithOrientation:1];
    delegate = [(CKChatInputController *)self delegate];
    fileURLKeyToGuidMapping = [delegate fileURLKeyToGuidMapping];
    [fileURLKeyToGuidMapping setObject:v15 forKey:lCopy];

    if (([v11 needsAnimation] & 1) == 0)
    {
      v18 = +[CKChatInputController previewQueue];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __58__CKChatInputController__beginPreviewCreationWithFileURL___block_invoke;
      v19[3] = &unk_1E72ED810;
      v20 = v11;
      v21 = v14;
      [v18 addOperationWithBlock:v19];
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      [CKChatInputController _beginPreviewCreationWithFileURL:];
    }
  }
}

- (void)showModalViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  appCardPresentationOverseer = [(CKChatInputController *)self appCardPresentationOverseer];
  isPresentingCard = [appCardPresentationOverseer isPresentingCard];

  if (isPresentingCard)
  {
    appCardPresentationOverseer2 = [(CKChatInputController *)self appCardPresentationOverseer];
    containerViewController = [appCardPresentationOverseer2 containerViewController];
    [containerViewController presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];

    completionCopy = controllerCopy;
    controllerCopy = containerViewController;
  }

  else
  {
    appCardPresentationOverseer2 = [(CKChatInputController *)self delegate];
    [appCardPresentationOverseer2 chatInputController:self presentShelfModal:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)dismissEntryViewShelf
{
  dismissEntryViewShelfUpdater = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
  isHoldingUpdates = [dismissEntryViewShelfUpdater isHoldingUpdates];

  if ((isHoldingUpdates & 1) == 0)
  {
    entryView = [(CKChatInputController *)self entryView];
    [entryView invalidateCompositionForReason:2];
  }
}

- (id)workingDraftDirForPluginIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  targetConversation = [(CKChatInputController *)self targetConversation];
  if (targetConversation)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uniqueIdentifier = @"Pending";
      goto LABEL_6;
    }

    uniqueIdentifier = [targetConversation uniqueIdentifier];
    if (uniqueIdentifier)
    {
LABEL_6:
      v8 = CKPluginTmpSubDirectoryURL(uniqueIdentifier, identifierCopy);
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v15 = 0;
      [defaultManager createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v15];
      v7 = v15;

      if (v8)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }

    v7 = 0;
  }

  else
  {
    v7 = 0;
    uniqueIdentifier = 0;
  }

LABEL_9:
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CKChatInputController workingDraftDirForPluginIdentifier:];
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = uniqueIdentifier;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failure info - guid: %@, error: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      entryView = [(CKChatInputController *)self entryView];
      *buf = 138412290;
      v17 = entryView;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Failure info - entryView: %@", buf, 0xCu);
    }
  }

  v8 = 0;
LABEL_20:

  return v8;
}

- (void)stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  archiveCopy = archive;
  handlerCopy = handler;
  v10 = IMBalloonExtensionIDWithSuffix();
  v11 = +[CKBalloonPluginManager sharedInstance];
  v12 = [v11 viewControllerForPluginIdentifier:v10];

  [v12 setSendDelegate:self];
  if (objc_opt_respondsToSelector())
  {
    [v12 _stageAssetArchive:archiveCopy skipShelf:shelfCopy completionHandler:handlerCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Failed to dispatch asset archive to the photos browser", v14, 2u);
    }
  }
}

- (void)removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = +[CKBalloonPluginManager sharedInstance];
  v10 = [v9 viewControllerForPluginIdentifier:v8];

  [v10 setSendDelegate:self];
  if (objc_opt_respondsToSelector())
  {
    [v10 _removeAssetArchiveWithIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to dispatch asset archive removal to the photos browser", v12, 2u);
    }
  }
}

- (void)notifyActiveBrowserAssetArchiveWasRemoved:(id)removed
{
  removedCopy = removed;
  if ([(CKChatInputController *)self currentPluginIsPhotos]|| [(CKChatInputController *)self currentPluginIsGenerativePlayground])
  {
    v4 = IMBalloonExtensionIDWithSuffix();
    if (v4)
    {
      v5 = v4;
      v6 = +[CKBalloonPluginManager sharedInstance];
      v7 = [v6 viewControllerForPluginIdentifier:v5];

      [v7 _assetArchiveRemoved:removedCopy];
    }
  }
}

- (id)configurePhotosDraftAssetArchivesWithConversationID:(id)d
{
  dCopy = d;
  v5 = IMBalloonExtensionIDWithSuffix();
  v6 = +[CKBalloonPluginManager sharedInstance];
  v7 = [v6 viewControllerForPluginIdentifier:v5];

  [v7 setSendDelegate:self];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 _configurePhotosDraftAssetArchivesWithConversationID:dCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Failed to dispatch configureDraftAssetArchives to the photos browser", v11, 2u);
      }
    }

    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (void)didStageAssetArchive:(id)archive identifier:(id)identifier
{
  archiveCopy = archive;
  identifierCopy = identifier;
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  if ([mEMORY[0x1E69A7FC8] checksForSensitivityOnSend])
  {
    mediaObjectFromPayload = [archiveCopy mediaObjectFromPayload];
    mEMORY[0x1E69A7FC0] = [MEMORY[0x1E69A7FC0] sharedManager];
    fileURL = [mediaObjectFromPayload fileURL];
    targetConversation = [(CKChatInputController *)self targetConversation];
    chat = [targetConversation chat];
    chatIdentifier = [chat chatIdentifier];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__CKChatInputController_didStageAssetArchive_identifier___block_invoke;
    v16[3] = &unk_1E72EC088;
    v17 = mediaObjectFromPayload;
    v15 = mediaObjectFromPayload;
    [mEMORY[0x1E69A7FC0] isSensitiveContent:fileURL withChatID:chatIdentifier completionHandler:v16];
  }

  [(CKChatInputController *)self eagerUploadPayload:archiveCopy identifier:identifierCopy replace:0];
}

void __57__CKChatInputController_didStageAssetArchive_identifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) filename];
      v8 = v7;
      v9 = @"NO";
      if (a2)
      {
        v9 = @"YES";
      }

      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Staged asset %@ is sensitive: %@", &v10, 0x16u);
    }
  }
}

- (void)dismissPlugin
{
  [(CKChatInputController *)self dismiss];
  [(CKChatInputController *)self dismissBrowserViewController];
  handwritingPresentationController = [(CKChatInputController *)self handwritingPresentationController];

  if (handwritingPresentationController)
  {
    handwritingPresentationController2 = [(CKChatInputController *)self handwritingPresentationController];
    [handwritingPresentationController2 setVisible:0 animated:1];
  }
}

- (void)handwritingPresentationControllerDidShowHandwriting:(id)handwriting
{
  [(CKChatInputController *)self setShouldSuppressStatusBarForHandwriting:1];
  delegate = [(CKChatInputController *)self delegate];
  [delegate chatInputControllerDidShowHandwriting:self];
}

- (void)handwritingPresentationControllerWillHideHandwriting:(id)handwriting
{
  [(CKChatInputController *)self setShouldSuppressStatusBarForHandwriting:0];
  delegate = [(CKChatInputController *)self delegate];
  [delegate chatInputControllerWillHideHandwriting:self];
}

- (void)didBeginInstallingAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(CKChatInputController *)a2 didBeginInstallingAppWithBundleIdentifier:?];
  }

  v5 = +[CKAppInstallationWatcher sharedInstance];
  [v5 startListeningForAppBundleIdentifier:identifierCopy];
}

- (void)openAppExtensionWithAdamID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  allPlugins = [mEMORY[0x1E69A5AD0] allPlugins];

  v7 = [allPlugins countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(allPlugins);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        adamID = [v10 adamID];
        v12 = [adamID isEqualToNumber:dCopy];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [allPlugins countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_13;
    }

    browserSwitcher = [(CKChatInputController *)self browserSwitcher];
    transitionCoordinator = [browserSwitcher transitionCoordinator];
    isExpanded = [transitionCoordinator isExpanded];

    deferredPluginDataSource = [(CKChatInputController *)self deferredPluginDataSource];
    [(CKChatInputController *)self showBrowserForPlugin:v13 dataSource:deferredPluginDataSource style:isExpanded];

    [(CKChatInputController *)self setDeferredPluginDataSource:0];
  }

  else
  {
LABEL_10:

LABEL_13:
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = dCopy;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Failed to find and open app with adam ID: %@", buf, 0xCu);
      }
    }
  }
}

- (void)deviceOrientationManager:(id)manager orientationDidChange:(int64_t)change
{
  v4 = [(CKChatInputController *)self orientationUpdater:manager];
  [v4 setNeedsUpdate];
}

- (void)showFindMyPlugin
{
  v3 = IMBalloonExtensionIDWithSuffix();
  [(CKChatInputController *)self showPluginWithExtensionIdentifier:v3];
}

- (unint64_t)appPresentationStyleForShowingPluginID:(id)d
{
  dCopy = d;
  delegate = [(CKChatInputController *)self delegate];
  viewControllerForChatInputModalPresentation = [delegate viewControllerForChatInputModalPresentation];
  traitCollection = [viewControllerForChatInputModalPresentation traitCollection];

  v8 = -[CKChatInputController presentationStyleInOrientation:inPopover:forPluginID:](self, "presentationStyleInOrientation:inPopover:forPluginID:", [delegate sceneInterfaceOrientation], -[CKChatInputController determineSendMenuPresentationStyleCompatibleWithTraitCollection:](self, "determineSendMenuPresentationStyleCompatibleWithTraitCollection:", traitCollection) == 1, dCopy);
  return v8;
}

- (void)showPluginWithExtensionIdentifier:(id)identifier sourceView:(id)view
{
  identifierCopy = identifier;
  viewCopy = view;
  v7 = +[CKBalloonPluginManager sharedInstance];
  v8 = [v7 pluginForExtensionIdentifier:identifierCopy];
  if (v8)
  {
    v9 = [(CKChatInputController *)self appPresentationStyleForShowingPluginID:identifierCopy];
    if (viewCopy)
    {
      v10 = [[CKTranscriptPluginPresentationConfiguration alloc] initWithSourceView:viewCopy permittedArrowDirections:15 shouldDisableSnapshotView:0];
    }

    else
    {
      v10 = 0;
    }

    [(CKChatInputController *)self showBrowserForPlugin:v8 dataSource:0 style:v9 presentationConfiguration:v10];
  }
}

- (void)eagerUploadPayload:(id)payload identifier:(id)identifier replace:(BOOL)replace
{
  replaceCopy = replace;
  payloadCopy = payload;
  identifierCopy = identifier;
  if ([(CKChatInputController *)self _isiMessageConversation])
  {
    targetConversation = [(CKChatInputController *)self targetConversation];
    if (([targetConversation isBusinessConversation] & 1) == 0)
    {
      v11 = _os_activity_create(&dword_19020E000, "com.apple.messages.iMessageAttachmentEagerUpload", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      v20.opaque[0] = 0;
      v20.opaque[1] = 0;
      os_activity_scope_enter(v11, &v20);
      mediaObjectFromPayload = [payloadCopy mediaObjectFromPayload];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([mediaObjectFromPayload duration], v14 = v13, objc_msgSend(targetConversation, "maxTrimDurationForMedia:", mediaObjectFromPayload), v14 <= v15))
      {
        transfer = [mediaObjectFromPayload transfer];
        v17 = CKFileSizeEligibleForEagerUpload([transfer totalBytes]);

        if (v17)
        {
          eagerUploadController = self->_eagerUploadController;
          participantHandles = [(CKChatInputController *)self participantHandles];
          [(CKChatEagerUploadController *)eagerUploadController uploadPayload:payloadCopy identifier:identifierCopy replace:replaceCopy recipients:participantHandles];
        }
      }

      os_activity_scope_leave(&v20);
    }
  }
}

- (id)participantHandles
{
  targetConversation = [(CKChatInputController *)self targetConversation];
  senderIdentifier = [targetConversation senderIdentifier];
  v4 = IMChatCanonicalIDSIDsForAddress();

  if (v4)
  {
    recipients = [targetConversation recipients];
    __im_canonicalIDSAddressesFromEntities = [recipients __im_canonicalIDSAddressesFromEntities];
    __im_canonicalIDSAddressesFromEntities2 = [__im_canonicalIDSAddressesFromEntities arrayByAddingObject:v4];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "canonicalAddress is nil!", v10, 2u);
      }
    }

    recipients = [targetConversation recipients];
    __im_canonicalIDSAddressesFromEntities2 = [recipients __im_canonicalIDSAddressesFromEntities];
  }

  return __im_canonicalIDSAddressesFromEntities2;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if ([(CKChatInputController *)self isPresentingStickerPicker])
  {
    delegate = [(CKChatInputController *)self delegate];
    [delegate inputController:self willDismissPresentationController:dismissCopy];

    [(CKChatInputController *)self endStickerReactionSession];
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  v5 = [presentedViewController conformsToProtocol:&unk_1F05AEEC8];

  if (v5 && CKIsRunningInMacCatalyst() && ![(CKChatInputController *)self appModalIsDisplayed])
  {
    [(CKChatInputController *)self browserWillDismiss];
    presentedViewController2 = [dismissCopy presentedViewController];
    if (objc_opt_respondsToSelector())
    {
      [presentedViewController2 deferredForceTearDownRemoteView];
    }
  }
}

- (CKExternalPluginViewControllerProvider)externalPluginControllerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_externalPluginControllerProvider);

  return WeakRetained;
}

- (UINavigationController)wolfBrowserNavController
{
  WeakRetained = objc_loadWeakRetained(&self->_wolfBrowserNavController);

  return WeakRetained;
}

- (void)registerForTextInputPayloadHandling:(BOOL)handling isGroupChat:(BOOL)chat
{
  v12[1] = *MEMORY[0x1E69E9840];
  textInputPayloadController = [(CKChatInputController *)self textInputPayloadController];
  if (CKIsRunningInMessagesViewService())
  {
    v12[0] = @"com.apple.messages.stageSticker";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v11[0] = @"com.apple.messages.currentLocation";
    v11[1] = @"com.apple.messages.stageSticker";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    if (+[CKMentionsUtilities supportsSupplementalLexiconMentions])
    {
      v9 = [v8 arrayByAddingObject:@"com.apple.messages.mentions"];

      v8 = v9;
    }

    if (!handling)
    {
      v10 = [v8 arrayByAddingObject:@"com.apple.messages.photos"];

      if (!CKShouldShowSURF() || chat)
      {
        v8 = v10;
      }

      else
      {
        v8 = [v10 arrayByAddingObject:@"com.apple.messages.surf"];
      }
    }

    [getDDActionClass() setClientActionsDelegate:self];
  }

  [textInputPayloadController setSupportedPayloadIds:v8];
  [textInputPayloadController setPayloadDelegate:self];
}

- (void)registerForTextInputPayloadHandlingForSenderHandleID:(id)d receiverHandleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isZelkovaEnabled = [mEMORY[0x1E69A8070] isZelkovaEnabled];

  if (isZelkovaEnabled)
  {
    mEMORY[0x1E69A8218] = [MEMORY[0x1E69A8218] sharedCoordinator];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __114__CKChatInputController_TextInputPayloads__registerForTextInputPayloadHandlingForSenderHandleID_receiverHandleID___block_invoke;
    v11[3] = &unk_1E72F0360;
    v11[4] = self;
    v12 = dCopy;
    v13 = iDCopy;
    [mEMORY[0x1E69A8218] shouldShowKeyboardSuggestionForInitiator:v12 andReceiver:v13 completion:v11];
  }
}

void __114__CKChatInputController_TextInputPayloads__registerForTextInputPayloadHandlingForSenderHandleID_receiverHandleID___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __114__CKChatInputController_TextInputPayloads__registerForTextInputPayloadHandlingForSenderHandleID_receiverHandleID___block_invoke_2;
    block[3] = &unk_1E72EB880;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v5 = v3;
    v6 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __114__CKChatInputController_TextInputPayloads__registerForTextInputPayloadHandlingForSenderHandleID_receiverHandleID___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) textInputPayloadController];
  v3 = [v2 supportedPayloadIds];
  v4 = [v3 mutableCopy];

  [v4 addObject:*MEMORY[0x1E69A6930]];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Updating supported Payload IDs: %@ for sender:%@ and receiver: %@", &v9, 0x20u);
    }
  }

  v8 = [v4 copy];
  [v2 setSupportedPayloadIds:v8];
}

- (void)unregisterForTextInputPayloadHandling
{
  textInputPayloadController = [(CKChatInputController *)self textInputPayloadController];
  payloadDelegate = [textInputPayloadController payloadDelegate];

  if (payloadDelegate == self)
  {
    [textInputPayloadController setPayloadDelegate:0];
    [textInputPayloadController setSupportedPayloadIds:MEMORY[0x1E695E0F0]];
  }

  clientActionsDelegate = [getDDActionClass() clientActionsDelegate];

  if (clientActionsDelegate == self)
  {
    [getDDActionClass() setClientActionsDelegate:0];
  }
}

- (void)presentPluginWithBundleID:(id)d appLaunchPayload:(id)payload
{
  payloadCopy = payload;
  dCopy = d;
  if ([payloadCopy count])
  {
    v7 = @"com.apple.messages.appLaunchURLPluginPayload";
  }

  else
  {
    v7 = 0;
  }

  [(CKChatInputController *)self _presentPluginWithBundleID:dCopy sendingTextInputPayload:payloadCopy withPayloadID:v7];
}

- (void)handlePayload:(id)payload withPayloadId:(id)id
{
  v54 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  idCopy = id;
  appPayloadID = idCopy;
  if (idCopy)
  {
    if ([idCopy isEqualToString:@"com.apple.messages.currentLocation"])
    {
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isWaldoEnabled = [mEMORY[0x1E69A8070] isWaldoEnabled];

      if (isWaldoEnabled)
      {
        v11 = [payloadCopy valueForKey:@"shouldSendRequestLocation"];
        v12 = [payloadCopy valueForKey:@"shouldSendCurrentLocation"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 BOOLValue])
        {
          delegate = [(CKChatInputController *)self delegate];
          [delegate chatInputControllerDidSelectRequestLocation:self];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 BOOLValue])
          {
            [(CKChatInputController *)self showFindMyPlugin];
          }
        }
      }

      else
      {
        delegate2 = [(CKChatInputController *)self delegate];
        [delegate2 sendCurrentLocation];
      }
    }

    else
    {
      if ([appPayloadID isEqualToString:*MEMORY[0x1E69A6930]])
      {
        v14 = *MEMORY[0x1E69A69F0];
        v15 = appPayloadID;
        v16 = [v14 stringByAppendingFormat:@":%@:%@", @"0000000000", v15];
        mEMORY[0x1E69A8218] = [MEMORY[0x1E69A8218] sharedCoordinator];

        appPayloadID = [mEMORY[0x1E69A8218] appPayloadID];

        v18 = +[CKBalloonPluginManager sharedInstance];
        v19 = [v18 viewControllerForPluginIdentifier:v16];

        if (objc_opt_respondsToSelector())
        {
          [v19 setSendDelegate:self];
          v20 = [payloadCopy mutableCopy];
          [v20 setObject:&unk_1F04E8568 forKeyedSubscript:@"sessionStartEntryType"];
          v21 = [v20 copy];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __72__CKChatInputController_TextInputPayloads__handlePayload_withPayloadId___block_invoke;
          v49[3] = &unk_1E72ECCA8;
          v50 = appPayloadID;
          selfCopy = self;
          [v19 handleTextInputPayload:v21 withPayloadID:v50 completion:v49];
        }
      }

      if ([appPayloadID isEqualToString:@"com.apple.messages.mentions"])
      {
        if (+[CKMentionsUtilities supportsSupplementalLexiconMentions])
        {
          v22 = [payloadCopy objectForKeyedSubscript:@"name"];
          if ([v22 length])
          {
            entryView = [(CKChatInputController *)self entryView];
            contentView = [entryView contentView];
            textView = [contentView textView];
            [textView insertMentionByName:v22];
          }
        }
      }

      else if (![(CKChatInputController *)self _presentPluginIfNecessaryWithPayload:payloadCopy withPayloadID:appPayloadID])
      {
        if ([appPayloadID isEqualToString:@"com.apple.messages.stageSticker"])
        {
          v27 = _UIStickerCreateStickerFromTextInputPayload();
          representations = [v27 representations];
          v29 = [representations count] == 0;

          if (v29)
          {
            _ck_plainStringEmojiText = IMLogHandleForCategory();
            if (os_log_type_enabled(_ck_plainStringEmojiText, OS_LOG_TYPE_ERROR))
            {
              [(CKNotificationChatController(TextInputPayloadsInternal) *)_ck_plainStringEmojiText _handleStickerTextInputPayload:v36, v37, v38, v39, v40, v41, v42];
            }
          }

          else
          {
            _ck_plainStringEmojiText = [v27 _ck_plainStringEmojiText];
            if ([_ck_plainStringEmojiText length])
            {
              v31 = IMLogHandleForCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "Handling received sticker payload as plain string system emoji text", buf, 2u);
              }

              entryView2 = [(CKChatInputController *)self entryView];
              contentView2 = [entryView2 contentView];
              textView2 = [contentView2 textView];

              [textView2 insertText:_ck_plainStringEmojiText];
            }

            else
            {
              targetConversation = [(CKChatInputController *)self targetConversation];
              supportsInlineAdaptiveImageGlyphs = [targetConversation supportsInlineAdaptiveImageGlyphs];

              _ck_shouldInsertInCompositionAsAdaptiveImageGlyph = [v27 _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
              v46 = IMLogHandleForCategory();
              v47 = os_log_type_enabled(v46, OS_LOG_TYPE_INFO);
              if ((supportsInlineAdaptiveImageGlyphs & _ck_shouldInsertInCompositionAsAdaptiveImageGlyph) != 0)
              {
                if (v47)
                {
                  *buf = 0;
                  _os_log_impl(&dword_19020E000, v46, OS_LOG_TYPE_INFO, "Handling received sticker payload as an adaptive image glyph", buf, 2u);
                }

                [(CKChatInputController *)self insertUIStickerAsAdaptiveImageGlyph:v27];
              }

              else
              {
                if (v47)
                {
                  *buf = 0;
                  _os_log_impl(&dword_19020E000, v46, OS_LOG_TYPE_INFO, "Handling received sticker payload as staged sticker object", buf, 2u);
                }

                v48 = [objc_alloc(MEMORY[0x1E69A82C0]) initWithUISticker:v27 adaptiveImageGlyph:0];
                [(CKChatInputController *)self commitStickerBypassingValidation:v48 forPlugin:*MEMORY[0x1E69A68F8] stickerFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
              }
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v53 = appPayloadID;
            _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "Unhandled text input payload ID: %@", buf, 0xCu);
          }
        }
      }
    }
  }
}

void __72__CKChatInputController_TextInputPayloads__handlePayload_withPayloadId___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v8 = v5;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Keyboard Suggestion. Plugin %@ did handle text input payload: %d", buf, 0x12u);
    }
  }

  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__CKChatInputController_TextInputPayloads__handlePayload_withPayloadId___block_invoke_259;
    block[3] = &unk_1E72EBA18;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __72__CKChatInputController_TextInputPayloads__handlePayload_withPayloadId___block_invoke_259(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) textInputPayloadController];
  v2 = [v1 supportedPayloadIds];
  v3 = [v2 mutableCopy];

  [v3 removeObject:*MEMORY[0x1E69A6930]];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Removing SafetyMonitor as a supported payloadID. Updated list: %@", &v6, 0xCu);
    }
  }

  v5 = [v3 copy];
  [v1 setSupportedPayloadIds:v5];
}

- (void)insertUIStickerAsAdaptiveImageGlyph:(id)glyph
{
  glyphCopy = glyph;
  if (objc_opt_respondsToSelector())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __80__CKChatInputController_TextInputPayloads__insertUIStickerAsAdaptiveImageGlyph___block_invoke;
    v5[3] = &unk_1E72EFB88;
    v5[4] = self;
    [glyphCopy stk_renderBakedInRepIfNecessaryWithCompletion:v5];
  }

  else
  {
    [(CKChatInputController *)self _insertUIStickerAsAdaptiveImageGlyph:glyphCopy];
  }
}

void __80__CKChatInputController_TextInputPayloads__insertUIStickerAsAdaptiveImageGlyph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__CKChatInputController_TextInputPayloads__insertUIStickerAsAdaptiveImageGlyph___block_invoke_2;
  v5[3] = &unk_1E72EB8D0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)_insertUIStickerAsAdaptiveImageGlyph:(id)glyph
{
  glyphCopy = glyph;
  v5 = _UIStickerCreateAdaptiveImageGlyphFromSticker();
  if (v5)
  {
    entryView = [(CKChatInputController *)self entryView];
    contentView = [entryView contentView];
    textView = [contentView textView];

    v9 = [textView existingMediaObjectMatchingAdaptiveImageGlyph:v5];
    if (!v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E69A82C0]) initWithUISticker:glyphCopy adaptiveImageGlyph:v5];
      v11 = +[CKMediaObjectManager sharedInstance];
      v12 = MEMORY[0x1E69A82C0];
      getSafeExternalURI = [v10 getSafeExternalURI];
      v14 = [v12 userInfoDictionaryWithExternalURI:getSafeExternalURI];
      v15 = [v11 mediaObjectWithSticker:v10 stickerUserInfo:v14];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v15;
      }

      else
      {
        v23 = IMLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(CKNotificationChatController(TextInputPayloadsInternal) *)v23 _insertUIStickerAsAdaptiveImageGlyph:v24, v25, v26, v27, v28, v29, v30];
        }

        v9 = 0;
      }
    }

    [textView insertAdaptiveImageGlyph:v5 withMediaObject:v9];
  }

  else
  {
    textView = IMLogHandleForCategory();
    if (os_log_type_enabled(textView, OS_LOG_TYPE_ERROR))
    {
      [(CKNotificationChatController(TextInputPayloadsInternal) *)textView _insertUIStickerAsAdaptiveImageGlyph:v16, v17, v18, v19, v20, v21, v22];
    }
  }
}

- (BOOL)_presentPluginIfNecessaryWithPayload:(id)payload withPayloadID:(id)d
{
  v17[5] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  dCopy = d;
  v8 = *MEMORY[0x1E69A6A38];
  v16[0] = @"com.apple.messages.surf";
  v16[1] = @"com.apple.messages.photos";
  v9 = *MEMORY[0x1E69A6A08];
  v17[0] = v8;
  v17[1] = v9;
  v17[2] = *MEMORY[0x1E69A6980];
  v16[2] = @"com.apple.messages.animoji.stickers";
  v16[3] = @"com.apple.messages.stickers";
  v10 = IMStickersExtensionIdentifier();
  v16[4] = @"com.apple.messages.polldefinition";
  v11 = *MEMORY[0x1E69A6928];
  v17[3] = v10;
  v17[4] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];

  v13 = [v12 objectForKeyedSubscript:dCopy];
  if (v13)
  {
    v14 = [(CKChatInputController *)self _formattedPayload:payloadCopy forPayloadID:dCopy];
    -[CKChatInputController _presentPluginWithBundleID:sendingTextInputPayload:withPayloadID:style:](self, "_presentPluginWithBundleID:sendingTextInputPayload:withPayloadID:style:", v13, v14, dCopy, [v13 isEqualToString:v9]);
  }

  return v13 != 0;
}

- (void)_stageStickerWithFileURL:(id)l accessibilityLabel:(id)label
{
  v6 = MEMORY[0x1E69A82C0];
  labelCopy = label;
  lCopy = l;
  v9 = [v6 alloc];
  lastPathComponent = [lCopy lastPathComponent];
  v11 = *MEMORY[0x1E69A6980];
  v12 = [v9 initWithStickerID:lastPathComponent stickerPackID:*MEMORY[0x1E69A6980] fileURL:lCopy accessibilityLabel:labelCopy accessibilityName:0 searchText:0 sanitizedPrompt:0 moodCategory:0 stickerName:0];

  [(CKChatInputController *)self commitStickerBypassingValidation:v12 forPlugin:v11 stickerFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (id)_formattedPayload:(id)payload forPayloadID:(id)d
{
  v16[1] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  dCopy = d;
  v7 = payloadCopy;
  v8 = v7;
  if (([dCopy isEqualToString:@"com.apple.messages.surf"] & 1) == 0)
  {
    v8 = v7;
    if ([dCopy isEqualToString:@"com.apple.messages.photos"])
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = [v7 objectForKeyedSubscript:@"message"];
      if (v10)
      {
        [v9 setObject:v10 forKeyedSubscript:@"Text"];
      }

      v15 = @"Photos";
      v11 = [v9 copy];
      v14 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      v16[0] = v12;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }
  }

  return v8;
}

- (void)_presentPluginWithBundleID:(id)d sendingTextInputPayload:(id)payload withPayloadID:(id)iD style:(unint64_t)style
{
  dCopy = d;
  payloadCopy = payload;
  iDCopy = iD;
  v13 = +[CKBalloonPluginManager sharedInstance];
  v14 = [v13 balloonPluginIdentifierForAppExtensionBundleIdentifier:dCopy];

  if (!v14)
  {
    if ([dCopy isEqualToString:*MEMORY[0x1E69A6A38]])
    {
      v15 = *MEMORY[0x1E69A6A40];

      v16 = +[CKBalloonPluginManager sharedInstance];
      v14 = [v16 balloonPluginIdentifierForAppExtensionBundleIdentifier:v15];

      dCopy = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  if ([dCopy containsString:*MEMORY[0x1E69A6930]])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isZelkovaEnabled = [mEMORY[0x1E69A8070] isZelkovaEnabled];

    if (isZelkovaEnabled)
    {
      v19 = [iDCopy length];
      v20 = dCopy;

      dCopy = v20;
      if (!v19)
      {
        dCopy = [v20 stringByReplacingOccurrencesOfString:@".NewMessage" withString:&stru_1F04268F8];
      }

      v21 = +[CKBalloonPluginManager sharedInstance];
      v22 = [v21 balloonPluginIdentifierForAppExtensionBundleIdentifier:dCopy];

      if (!payloadCopy)
      {
        mEMORY[0x1E69A8218] = [MEMORY[0x1E69A8218] sharedCoordinator];
        payloadCopy = [mEMORY[0x1E69A8218] appPayload];
      }

      v24 = +[CKBalloonPluginManager sharedInstance];
      v25 = [v24 viewControllerForPluginIdentifier:v22];

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v14 = v22;
        iDCopy = v20;
        goto LABEL_31;
      }

      [v25 setSendDelegate:self];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __115__CKChatInputController_TextInputPayloads___presentPluginWithBundleID_sendingTextInputPayload_withPayloadID_style___block_invoke;
      v37[3] = &unk_1E72EB9C8;
      v26 = &v38;
      v14 = v22;
      v38 = v14;
      [v25 handleTextInputPayload:payloadCopy withPayloadID:v20 completion:v37];
      iDCopy = v20;
LABEL_29:

LABEL_31:
      goto LABEL_32;
    }
  }

  if (v14 || [dCopy isEqualToString:*MEMORY[0x1E69A6990]] && (+[CKBalloonPluginManager sharedInstance](CKBalloonPluginManager, "sharedInstance"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "balloonPluginIdentifierForAppExtensionBundleIdentifier:", dCopy), v14 = objc_claimAutoreleasedReturnValue(), v31, v14))
  {
    v27 = +[CKBalloonPluginManager sharedInstance];
    v25 = [v27 viewControllerForPluginIdentifier:v14];

    browserPlugin = [(CKChatInputController *)self browserPlugin];
    identifier = [browserPlugin identifier];
    if ([identifier isEqualToString:v14])
    {
      isInputViewVisible = [(CKChatInputController *)self isInputViewVisible];

      if (isInputViewVisible)
      {
LABEL_25:
        v34 = [payloadCopy count];
        if (!iDCopy || !v34 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_31;
        }

        [v25 setSendDelegate:self];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __115__CKChatInputController_TextInputPayloads___presentPluginWithBundleID_sendingTextInputPayload_withPayloadID_style___block_invoke_286;
        v35[3] = &unk_1E72EB9C8;
        v26 = &v36;
        v14 = v14;
        v36 = v14;
        [v25 handleTextInputPayload:payloadCopy withPayloadID:iDCopy completion:v35];
        goto LABEL_29;
      }
    }

    else
    {
    }

    balloonPlugin = [v25 balloonPlugin];
    if ((CKIsSendMenuEnabled() & 1) != 0 || [balloonPlugin showInBrowser])
    {
      balloonPluginDataSource = [v25 balloonPluginDataSource];
      [(CKChatInputController *)self launchAndShowBrowserForPlugin:balloonPlugin dataSource:balloonPluginDataSource style:style];
    }

    goto LABEL_25;
  }

LABEL_32:
}

void __115__CKChatInputController_TextInputPayloads___presentPluginWithBundleID_sendingTextInputPayload_withPayloadID_style___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Plugin %@ did handle text input payload: %d", &v6, 0x12u);
    }
  }
}

void __115__CKChatInputController_TextInputPayloads___presentPluginWithBundleID_sendingTextInputPayload_withPayloadID_style___block_invoke_286(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Plugin %@ did handle text input payload: %d", &v6, 0x12u);
    }
  }
}

- (id)localizedTitleForClientActionFromUrl:(id)url context:(id)context
{
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"DATA_DETECTORS_PHOTOS_ACTION" value:&stru_1F04268F8 table:@"ChatKit"];

  return v5;
}

- (void)handleClientActionFromUrl:(id)url context:(id)context
{
  v33[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v8 = getkDataDetectorsReferenceDateKeySymbolLoc_ptr_0;
  v30 = getkDataDetectorsReferenceDateKeySymbolLoc_ptr_0;
  if (!getkDataDetectorsReferenceDateKeySymbolLoc_ptr_0)
  {
    v9 = DataDetectorsUILibrary_0();
    v28[3] = dlsym(v9, "kDataDetectorsReferenceDateKey");
    getkDataDetectorsReferenceDateKeySymbolLoc_ptr_0 = v28[3];
    v8 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v8)
  {
    [CKChatInputController(DDClientActionsDelegate) handleClientActionFromUrl:context:];
  }

  selfCopy = self;
  v10 = [contextCopy objectForKeyedSubscript:*v8];
  if (v10)
  {
    [v7 setObject:v10 forKeyedSubscript:@"Timestamp"];
  }

  v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v12 = getkDataDetectorsLeadingTextSymbolLoc_ptr;
  v30 = getkDataDetectorsLeadingTextSymbolLoc_ptr;
  if (!getkDataDetectorsLeadingTextSymbolLoc_ptr)
  {
    v13 = DataDetectorsUILibrary_0();
    v28[3] = dlsym(v13, "kDataDetectorsLeadingText");
    getkDataDetectorsLeadingTextSymbolLoc_ptr = v28[3];
    v12 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v12)
  {
    [CKChatInputController(DDClientActionsDelegate) handleClientActionFromUrl:context:];
  }

  v14 = [contextCopy objectForKeyedSubscript:*v12];
  if (v14)
  {
    [v11 appendString:v14];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v15 = getkDataDetectorsMiddleTextSymbolLoc_ptr;
  v30 = getkDataDetectorsMiddleTextSymbolLoc_ptr;
  if (!getkDataDetectorsMiddleTextSymbolLoc_ptr)
  {
    v16 = DataDetectorsUILibrary_0();
    v28[3] = dlsym(v16, "kDataDetectorsMiddleText");
    getkDataDetectorsMiddleTextSymbolLoc_ptr = v28[3];
    v15 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v15)
  {
    [CKChatInputController(DDClientActionsDelegate) handleClientActionFromUrl:context:];
  }

  v17 = [contextCopy objectForKeyedSubscript:*v15];
  if (v17)
  {
    [v11 appendString:v17];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v18 = getkDataDetectorsTrailingTextSymbolLoc_ptr;
  v30 = getkDataDetectorsTrailingTextSymbolLoc_ptr;
  if (!getkDataDetectorsTrailingTextSymbolLoc_ptr)
  {
    v19 = DataDetectorsUILibrary_0();
    v28[3] = dlsym(v19, "kDataDetectorsTrailingText");
    getkDataDetectorsTrailingTextSymbolLoc_ptr = v28[3];
    v18 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v18)
  {
    [CKChatInputController(DDClientActionsDelegate) handleClientActionFromUrl:context:];
  }

  v20 = [contextCopy objectForKeyedSubscript:*v18];
  if (v20)
  {
    [v11 appendString:v20];
  }

  if ([v11 length])
  {
    v21 = [v11 copy];
    [v7 setObject:v21 forKeyedSubscript:@"Text"];
  }

  v32 = @"Photos";
  v22 = [v7 copy];
  v31 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v33[0] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];

  [(CKChatInputController *)selfCopy _presentPluginWithBundleID:*MEMORY[0x1E69A6A08] sendingTextInputPayload:v24 withPayloadID:@"com.apple.messages.datadetectors.photos" style:1];
}

- (BOOL)shouldShowMoneyActionWithAmount:(id)amount currencies:(id)currencies
{
  amountCopy = amount;
  currenciesCopy = currencies;
  v8 = currenciesCopy;
  if (!amountCopy)
  {
    goto LABEL_9;
  }

  if (![currenciesCopy count])
  {
    goto LABEL_9;
  }

  delegate = [(CKChatInputController *)self delegate];
  recipientsCount = [delegate recipientsCount];

  if (!recipientsCount || !CKShouldShowSURF())
  {
    goto LABEL_9;
  }

  if (shouldShowMoneyActionWithAmount_currencies___pred_PKPeerPaymentShouldDisplayResultForDetectedAmountPassKitCore != -1)
  {
    [CKChatInputController(DDClientActionsDelegate) shouldShowMoneyActionWithAmount:currencies:];
  }

  firstObject = [v8 firstObject];
  ShouldDisplayResultForDetectedAmount = PKPeerPaymentShouldDisplayResultForDetectedAmount();

  if (ShouldDisplayResultForDetectedAmount)
  {
    v13 = 1;
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  return v13;
}

uint64_t __93__CKChatInputController_DDClientActionsDelegate__shouldShowMoneyActionWithAmount_currencies___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("PKPeerPaymentShouldDisplayResultForDetectedAmount", @"PassKitCore");
  shouldShowMoneyActionWithAmount_currencies___PKPeerPaymentShouldDisplayResultForDetectedAmount = result;
  return result;
}

- (void)handleMoneyActionWithAmount:(id)amount currencies:(id)currencies
{
  v34 = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  currenciesCopy = currencies;
  v8 = currenciesCopy;
  if (amountCopy && [currenciesCopy count])
  {
    stringValue = [amountCopy stringValue];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lastTappedChatItemWithDataDetector = [(CKChatInputController *)self lastTappedChatItemWithDataDetector];

    selfCopy = self;
    if (lastTappedChatItemWithDataDetector)
    {
      lastTappedChatItemWithDataDetector2 = [(CKChatInputController *)self lastTappedChatItemWithDataDetector];
      sender = [lastTappedChatItemWithDataDetector2 sender];
      displayID = [sender displayID];

      [(CKChatInputController *)self setLastTappedChatItemWithDataDetector:0];
    }

    else
    {
      displayID = &stru_1F04268F8;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v31[0] = @"CurrencyType";
          v31[1] = @"CurrencyValue";
          v32[0] = v19;
          v32[1] = stringValue;
          v31[2] = @"SenderHandle";
          v32[2] = displayID;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:{3, selfCopy}];
          [v9 addObject:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    v29 = @"Currency";
    v21 = [v9 copy];
    v30 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    [(CKChatInputController *)selfCopy _presentPluginWithBundleID:*MEMORY[0x1E69A6A38] sendingTextInputPayload:v22 withPayloadID:@"com.apple.messages.datadetectors.currency"];
  }
}

- (void)commitPayload:(CKBrowserItemPayload *)payload forPlugin:(NSString *)plugin allowAllCommits:(BOOL)commits completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = payload;
  *(v15 + 24) = plugin;
  *(v15 + 32) = commits;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_190D572E0();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_190DF6FF8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_190DD75C0;
  v18[5] = v17;
  payloadCopy = payload;
  pluginCopy = plugin;
  selfCopy = self;
  sub_190C798DC(0, 0, v13, &unk_190DD75C8, v18);
}

- (void)balloonPluginForIndexPath:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_19020E000, v1, OS_LOG_TYPE_ERROR, "Tried to select a balloon plugin at an invalid index: %@, visiblePlugins: %@", v2, 0x16u);
}

- (void)messageEntryView:(uint64_t)a1 didSelectPluginAtIndex:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[CKChatInputController messageEntryView:didSelectPluginAtIndex:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "%s can't select plugin at index: %@, aborting.", &v2, 0x16u);
}

- (void)_stickerPickerPlugin
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_19020E000, v0, OS_LOG_TYPE_DEBUG, "Loaded sticker picker plugin for ID: %@", v1, 0xCu);
}

- (void)stickerPickerWasHiddenPreservingChatItem:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_19020E000, v0, OS_LOG_TYPE_DEBUG, "Sticker picker for chat item was hidden: %@", v1, 0xCu);
}

- (void)workingDraftDirForPluginIdentifier:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_19020E000, v0, OS_LOG_TYPE_ERROR, "Failed to create draft directory for conversation: %@", v1, 0xCu);
}

- (void)didBeginInstallingAppWithBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKChatInputController.m" lineNumber:4286 description:@"Cannot call -didBeginInstallingAppWithBundleIdentifier: with nil identifier!"];
}

@end
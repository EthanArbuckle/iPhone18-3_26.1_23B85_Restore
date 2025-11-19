@interface CKChatInputController
+ (id)previewQueue;
- (BOOL)_isAppBrowserFullScreen;
- (BOOL)_isBusinessConversation;
- (BOOL)_isCombinedStickersApp;
- (BOOL)_isiMessageConversation;
- (BOOL)_pluginCanMessageAPI:(id)a3;
- (BOOL)_presentPluginIfNecessaryWithPayload:(id)a3 withPayloadID:(id)a4;
- (BOOL)_shouldSendTypingIndicatorDataForPluginIdentifier:(id)a3;
- (BOOL)_shouldShowHandwriting;
- (BOOL)_switcherPluginCanMessageAPI;
- (BOOL)appManagerIsDisplayed;
- (BOOL)appModalIsDisplayed;
- (BOOL)appStoreIsDisplayed;
- (BOOL)browserShouldAutorotate;
- (BOOL)commitPayloadBypassingValidation:(id)a3 forPlugin:(id)a4;
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
- (BOOL)isPresentingAppCardForMessageEntryView:(id)a3;
- (BOOL)isPresentingBarelyVisibleAppCardForMessageEntryView:(id)a3;
- (BOOL)isPresentingStickerPicker;
- (BOOL)isShowingAppCardForExtensionIdentifier:(id)a3;
- (BOOL)messageEntryShouldHideCaret:(id)a3;
- (BOOL)messageEntryViewShouldResignFirstResponder:(id)a3;
- (BOOL)messageEntryViewShouldVerticallyInsetForPresentedAppCard:(id)a3;
- (BOOL)presentedAppBypassesSendMenu;
- (BOOL)shouldBlurForMessageEditing;
- (BOOL)shouldInterfaceBeRestrictedToPortraitForPluginID:(id)a3;
- (BOOL)shouldLaunchPhotosAppForPlusButtonLongPressInMessageEntryView:(id)a3;
- (BOOL)shouldPreventAppFromDisplayingForBundleIdentifier:(id)a3;
- (BOOL)shouldShowMoneyActionWithAmount:(id)a3 currencies:(id)a4;
- (BOOL)switcherPluginCanMessageAPIOnBehalfOfPlugin:(id)a3;
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
- (id)_adamIDFromPluginPayloadData:(id)a3;
- (id)_browserViewControllerForInterfaceOrientationMethods;
- (id)_formattedPayload:(id)a3 forPayloadID:(id)a4;
- (id)_stickerPickerPlugin;
- (id)activeSendMenuPresentationForAppCardOverseer;
- (id)appIconOverride;
- (id)appTitleOverride;
- (id)balloonPluginForIndexPath:(id)a3;
- (id)configurePhotosDraftAssetArchivesWithConversationID:(id)a3;
- (id)dragControllerTranscriptDelegate;
- (id)inputViewController;
- (id)localizedTitleForClientActionFromUrl:(id)a3 context:(id)a4;
- (id)participantHandles;
- (id)pluginBundleID;
- (id)pluginContextForPlugin:(id)a3;
- (id)sendLaterPluginInfo;
- (id)workingDraftDirForPluginIdentifier:(id)a3;
- (int64_t)determineSendMenuPresentationStyleCompatibleWithTraitCollection:(id)a3;
- (unint64_t)appPresentationStyleForShowingPluginID:(id)a3;
- (unint64_t)browserSupportedInterfaceOrientations;
- (unint64_t)presentationStyleInOrientation:(int64_t)a3 inPopover:(BOOL)a4 forPluginID:(id)a5;
- (void)_beginPreviewCreationWithFileURL:(id)a3;
- (void)_deferredCommitSticker:(id)a3;
- (void)_deferredDismissToKeyboardAndFocusEntryView:(id)a3;
- (void)_deferredRequestFullScreenModalForPluginIdentifier:(id)a3 dataSource:(id)a4 preferredContentSize:(CGSize)a5;
- (void)_deferredRequestPresentationStyleExpanded:(id)a3;
- (void)_dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention:(BOOL)a3 overrideExceptions:(BOOL)a4 focusEntryView:(BOOL)a5;
- (void)_dismissBrowserViewControllerAndReloadInputViews:(BOOL)a3;
- (void)_evaluateMetricsForKeyboardSuggestionWithBundleIdentifier:(id)a3;
- (void)_handleOrientation;
- (void)_handleSelectionOfExtensionWithIdentifier:(id)a3;
- (void)_informDelegateOfUpdatedAppCardHeightAnimated:(BOOL)a3;
- (void)_insertUISticker:(id)a3;
- (void)_insertUIStickerAsAdaptiveImageGlyph:(id)a3;
- (void)_launchAppExtensionForDebugging;
- (void)_loadPhotosBrowserCollapsingEntryField:(BOOL)a3;
- (void)_openContainingBundleID:(id)a3 applicationService:(id)a4 withURL:(id)a5 pluginID:(id)a6 completionHandler:(id)a7;
- (void)_presentFullScreenModalBrowserForPlugin:(id)a3 dataSource:(id)a4;
- (void)_presentPluginWithBundleID:(id)a3 sendingTextInputPayload:(id)a4 withPayloadID:(id)a5 style:(unint64_t)a6;
- (void)_presentSendLaterUnsupportedAlertForIdentifier:(id)a3 handler:(id)a4;
- (void)_presentSendMenuForAppCardContentViewController:(id)a3 appCardPresentationStyle:(unint64_t)a4;
- (void)_reconfigurePluginDataSourceWithBalloonControllerIfNecessary;
- (void)_sendLaterSelectedFromSendMenuWithPresentation:(id)a3;
- (void)_setupObserverForLaunchAppExtensionForDebugging;
- (void)_stageStickerWithFileURL:(id)a3 accessibilityLabel:(id)a4;
- (void)_startEditingPayload:(id)a3;
- (void)_stickerPickerPlugin;
- (void)adjustSupportedInterfaceOrientationForPluginID:(id)a3 requiredPortrait:(BOOL *)a4;
- (void)appCardDidMoveToWindow:(id)a3;
- (void)appCardOverseerCardDidChangeHeight:(double)a3 isBelowKeyboardDetent:(BOOL)a4 isDragging:(BOOL)a5 isGeneratingEndOfDragAnimations:(BOOL)a6;
- (void)appCardOverseerDidDismissAppCard;
- (void)appCardOverseerDidPresentAppCard;
- (void)appCardOverseerViewStateDidChange:(BOOL)a3;
- (void)appCardOverseerWillDismissAppCard;
- (void)appCardOverseerWillPresentAppCard;
- (void)appSelectionInterfaceSelectedItem:(id)a3;
- (void)appendMediaPayloadToText:(id)a3;
- (void)applicationWillAddDeactivationReasonNotification:(id)a3;
- (void)beginStickerReactionSessionWithChatItem:(id)a3 cell:(id)a4;
- (void)browserTransitionCoordinatorDidCollapseOrDismiss:(id)a3 withReason:(int64_t)a4;
- (void)browserTransitionCoordinatorDidTransitionOrPresentToFullscreen:(id)a3 withReason:(int64_t)a4;
- (void)browserTransitionCoordinatorWillCollapseOrDismiss:(id)a3 withReason:(int64_t)a4;
- (void)browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:(id)a3 withReason:(int64_t)a4;
- (void)browserWillDismiss;
- (void)canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4;
- (void)chatControllerReceivedKeyboardDidHideNotification:(id)a3;
- (void)chatControllerReceivedKeyboardDidShowNotification:(id)a3;
- (void)chatControllerReceivedKeyboardWillHideNotification:(id)a3;
- (void)chatControllerReceivedKeyboardWillShowNotification:(id)a3;
- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)a3;
- (void)clearBrowserViewControllerIfNecessary;
- (void)commitPayload:(CKBrowserItemPayload *)a3 forPlugin:(NSString *)a4 allowAllCommits:(BOOL)a5 completionHandler:(id)a6;
- (void)commitSticker:(id)a3 atScreenCoordinate:(CGPoint)a4 scale:(double)a5 rotation:(double)a6 stickerFrame:(CGRect)a7;
- (void)commitSticker:(id)a3 forPlugin:(id)a4 bypassValidation:(BOOL)a5 stickerFrame:(CGRect)a6;
- (void)commitSticker:(id)a3 forPlugin:(id)a4 stickerFrame:(CGRect)a5;
- (void)commitSticker:(id)a3 stickerFrame:(CGRect)a4;
- (void)commitSticker:(id)a3 withDragTarget:(id)a4 draggedSticker:(id)a5;
- (void)composeRecipientViewDidBecomeFirstResponder:(id)a3;
- (void)dealloc;
- (void)deferredCommitPayload:(id)a3;
- (void)deviceOrientationManager:(id)a3 orientationDidChange:(int64_t)a4;
- (void)didBeginInstallingAppWithBundleIdentifier:(id)a3;
- (void)didSelectPlugin:(id)a3;
- (void)didStageAssetArchive:(id)a3 identifier:(id)a4;
- (void)dismissAndReloadInputViews:(BOOL)a3 forPlugin:(id)a4;
- (void)dismissAppCardIfNecessaryAnimated:(BOOL)a3 isFocusingKeyboard:(BOOL)a4 overrideExceptions:(BOOL)a5 completion:(id)a6;
- (void)dismissBrowserViewController;
- (void)dismissEntryViewShelf;
- (void)dismissOrHideHandwritingBrowser;
- (void)dismissPlugin;
- (void)dismissPluginAppAfterReplaceAlertInteractedWithIfNeeded;
- (void)dismissSendMenuAndPresentFunCamera;
- (void)dismissStickerPickerPreservingChatItem:(BOOL)a3 completion:(id)a4;
- (void)eagerUploadPayload:(id)a3 identifier:(id)a4 replace:(BOOL)a5;
- (void)endStickerReactionSession;
- (void)entryViewDidChangeSize;
- (void)extensionRemoteConnectionWasInterrupted:(id)a3;
- (void)forceDismissBrowserWithoutAnimation;
- (void)generatePreviewAndStoreInCacheForSendingPhotoFromPayload:(id)a3;
- (void)handleClientActionFromUrl:(id)a3 context:(id)a4;
- (void)handleMoneyActionWithAmount:(id)a3 currencies:(id)a4;
- (void)handlePayload:(id)a3 withPayloadId:(id)a4;
- (void)handleTextInputPayload:(id)a3 withPayloadID:(id)a4 forPlugin:(id)a5;
- (void)handwritingPresentationControllerDidShowHandwriting:(id)a3;
- (void)handwritingPresentationControllerWillHideHandwriting:(id)a3;
- (void)insertUIStickerAsAdaptiveImageGlyph:(id)a3;
- (void)launchAndShowBrowserForPlugin:(id)a3 dataSource:(id)a4 style:(unint64_t)a5 presentationConfiguration:(id)a6;
- (void)messageEntryView:(id)a3 didLongPressPlusButton:(id)a4;
- (void)messageEntryView:(id)a3 didReceiveInputSuggestion:(id)a4;
- (void)messageEntryView:(id)a3 didSelectPluginAtIndex:(id)a4;
- (void)messageEntryView:(id)a3 didSelectPlusButton:(id)a4;
- (void)messageEntryView:(id)a3 touchCancelForPlusButton:(id)a4;
- (void)messageEntryView:(id)a3 touchDragExitForPlusButton:(id)a4;
- (void)messageEntryView:(id)a3 touchUpOutsidePlusButton:(id)a4;
- (void)messageEntryViewDidExpand:(id)a3;
- (void)messageEntryViewInputDidTakeFocus:(id)a3;
- (void)notifyActiveBrowserAssetArchiveWasRemoved:(id)a3;
- (void)notifyBrowserViewControllerOfMatchingNewMessages:(id)a3;
- (void)openAppExtensionWithAdamID:(id)a3;
- (void)openURL:(id)a3 applicationIdentifier:(id)a4 pluginID:(id)a5 completionHandler:(id)a6;
- (void)openURL:(id)a3 pluginID:(id)a4 completionHandler:(id)a5;
- (void)prepareForSuspend;
- (void)presentAppManager;
- (void)presentAppStoreForAdamID:(id)a3;
- (void)presentAppStoreForURL:(id)a3 fromSourceApplication:(id)a4;
- (void)presentModernCardForPlugin:(id)a3 dataSource:(id)a4 presentationStyle:(unint64_t)a5;
- (void)presentPluginWithBundleID:(id)a3 appLaunchPayload:(id)a4;
- (void)presentViewControllerWithPluginChatItem:(id)a3 presentationStyle:(unint64_t)a4 presentationConfiguration:(id)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)registerForTextInputPayloadHandling:(BOOL)a3 isGroupChat:(BOOL)a4;
- (void)registerForTextInputPayloadHandlingForSenderHandleID:(id)a3 receiverHandleID:(id)a4;
- (void)removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)requestPhotoBrowserInitFromDraft:(id)a3;
- (void)requestPhotoBrowserToAppendFinalImagesToComposition;
- (void)requestPhotoBrowserToEnumerateSelectedImagesUsingBlock:(id)a3;
- (void)requestPhotoBrowserToPrepareForDraftClearingPhotoShelfViewController:(BOOL)a3;
- (void)requestPhotoBrowserToUnstageAllImages;
- (void)requestPhotoBrowserToUnstageImages:(id)a3;
- (void)requestPollPluginToPrepareForDraftWithCompletion:(id)a3;
- (void)requestPresentationStyleExpanded:(BOOL)a3 forPlugin:(id)a4;
- (void)requestPresentationStyleFullScreenModalForPlugin:(id)a3 dataSource:(id)a4 preferredContentSize:(CGSize)a5 skipValidation:(BOOL)a6;
- (void)requestTransitionPluginFromFullScreen:(id)a3 toExpanded:(BOOL)a4;
- (void)sendLaterPluginInfoUpdated;
- (void)sendMenuDidAppear:(id)a3 presentationStyle:(int64_t)a4;
- (void)sendMenuViewControllerDidFinishDismissAnimation:(id)a3;
- (void)sendMenuViewControllerRequestDismiss:(id)a3;
- (void)sendMenuViewControllerWillPerformFullScreenDismissAnimation:(id)a3;
- (void)setAppCardDismissPadding:(double)a3;
- (void)setBrowserPlugin:(id)a3;
- (void)setConversationAndRecipientsForBrowser:(id)a3;
- (void)setCurrentInputViewController:(id)a3;
- (void)setEntryView:(id)a3;
- (void)setInputViewVisible:(BOOL)a3;
- (void)setInputViewVisible:(BOOL)a3 entryFieldCollapsed:(BOOL)a4 animated:(BOOL)a5 messageDelegate:(BOOL)a6;
- (void)setLocalUserIsTyping:(BOOL)a3;
- (void)setShouldBlurForMessageEditing:(BOOL)a3;
- (void)showBrowserForPlugin:(id)a3 dataSource:(id)a4 style:(unint64_t)a5 presentationConfiguration:(id)a6;
- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)showBrowserPopoverForPlugin:(id)a3 dataSource:(id)a4 style:(unint64_t)a5 presentationConfiguration:(id)a6;
- (void)showDTCompose;
- (void)showEntryViewPhotosShelf:(id)a3 completion:(id)a4;
- (void)showExpandedBrowserPopover:(id)a3 presentationConfiguration:(id)a4;
- (void)showFindMyPlugin;
- (void)showFunCamera;
- (void)showFunCamera:(id)a3;
- (void)showHandwritingBrowserWithExistingPayload:(id)a3;
- (void)showKeyboard;
- (void)showLocationPlugin;
- (void)showModalViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)showPhotosBrowser;
- (void)showPhotosBrowserCollapsingEntryField:(BOOL)a3;
- (void)showPhotosExtension;
- (void)showPluginWithExtensionIdentifier:(id)a3 sourceView:(id)a4;
- (void)showSendLater;
- (void)stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)startEditingPayload:(id)a3;
- (void)startEditingPayload:(id)a3 dismiss:(BOOL)a4 forPlugin:(id)a5 completion:(id)a6;
- (void)startEditingPayloadBypassingValidation:(id)a3 forPlugin:(id)a4 completion:(id)a5;
- (void)stickerDropAnimationFinished;
- (void)stickerDruidDragStarted;
- (void)stickerPickerWasHiddenPreservingChatItem:(BOOL)a3;
- (void)swipeDismissBrowser;
- (void)switcherViewControllerDidCollapse:(id)a3;
- (void)switcherViewControllerDidSelectAppManager:(id)a3 shouldRestoreAppSwitcher:(BOOL)a4;
- (void)switcherViewControllerDidSelectAppStore:(id)a3 shouldRestoreAppSwitcher:(BOOL)a4;
- (void)switcherViewControllerWillAppear:(id)a3;
- (void)switcherViewControllerWillDisappear:(id)a3;
- (void)unregisterForTextInputPayloadHandling;
@end

@implementation CKChatInputController

- (id)inputViewController
{
  if ([(CKChatInputController *)self isInputViewVisible])
  {
    v3 = [(CKChatInputController *)self currentInputViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CKAppCardPresentationOverseer)appCardPresentationOverseer
{
  appCardPresentationOverseer = self->_appCardPresentationOverseer;
  if (!appCardPresentationOverseer)
  {
    v4 = [CKAppCardPresentationOverseer alloc];
    v5 = [(CKChatInputController *)self delegate];
    v6 = [v5 viewControllerForChatInputModalPresentation];
    v7 = [(CKAppCardPresentationOverseer *)v4 initWithPresentingViewController:v6 sendDelegate:self];
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
    v4 = [(CKChatInputController *)self appCardPresentationOverseer];
    v5 = [v4 isPresentingCard];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isAppCardUsingSheetPresentation
{
  v2 = [(CKChatInputController *)self appCardPresentationOverseer];
  v3 = [v2 isPresentingInSheetController];

  return v3;
}

- (id)activeSendMenuPresentationForAppCardOverseer
{
  v3 = [(CKChatInputController *)self delegate];
  v4 = [v3 activeSendMenuPresentationForChatInputController:self];

  return v4;
}

- (BOOL)hasStickerReactionSession
{
  v2 = [(CKChatInputController *)self stickerReactionSession];
  v3 = v2 != 0;

  return v3;
}

- (UITextInputPayloadController)textInputPayloadController
{
  textInputPayloadController = self->_textInputPayloadController;
  if (!textInputPayloadController)
  {
    v4 = [MEMORY[0x1E69DD0F0] sharedInstance];
    v5 = self->_textInputPayloadController;
    self->_textInputPayloadController = v4;

    textInputPayloadController = self->_textInputPayloadController;
  }

  return textInputPayloadController;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.MobileSMS.CKAppExtension.launch", 0);
  v4 = [(CKChatInputController *)self textInputPayloadController];
  v5 = [v4 payloadDelegate];

  if (v5 == self)
  {
    [v4 setPayloadDelegate:0];
    [v4 setSupportedPayloadIds:MEMORY[0x1E695E0F0]];
  }

  v6 = [__DDActionClass() clientActionsDelegate];

  if (v6 == self)
  {
    [__DDActionClass() setClientActionsDelegate:0];
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self];

  v8 = [(CKBrowserSwitcherViewController *)self->_browserSwitcher transitionCoordinator];
  [v8 dismissCurrentFullScreenModalAnimated:0 completion:0];

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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_applicationWillAddDeactivationReasonNotification_ name:*MEMORY[0x1E69DE878] object:0];
    [v4 addObserver:v3 selector:sel_composeRecipientViewDidBecomeFirstResponder_ name:@"com.apple.ChatKit.CKComposeRecipientView.BecameFirstResponder" object:0];
    [v4 addObserver:v3 selector:sel_extensionRemoteConnectionWasInterrupted_ name:*MEMORY[0x1E69A6F28] object:0];
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

- (void)setEntryView:(id)a3
{
  v4 = a3;
  [(CKMessageEntryView *)self->_entryView setInputDelegate:0];
  entryView = self->_entryView;
  self->_entryView = v4;
  v6 = v4;

  [(CKMessageEntryView *)self->_entryView setInputDelegate:self];
  if (v6)
  {
    v7 = [(CKChatInputController *)self deferredComposition];

    if (v7)
    {
      v8 = [(CKChatInputController *)self entryView];
      v9 = [(CKChatInputController *)self deferredComposition];
      [v8 setComposition:v9];

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

- (void)_loadPhotosBrowserCollapsingEntryField:(BOOL)a3
{
  v3 = a3;
  if (self->_switcherInputViewController)
  {
    v5 = [(CKChatInputController *)self browserSwitcher];
    [v5 unloadRemoteViewControllers];

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
    v13 = [v7 existingPhotoBrowserViewController];

    if (!v13)
    {
      v8 = +[CKBalloonPluginManager sharedInstance];
      v13 = [v8 photosBrowserViewControllerWithPluginPayloads:0];
    }

    [v13 setSendDelegate:self];
    v9 = [v13 balloonPlugin];
    [(CKChatInputController *)self setBrowserPlugin:v9];

    v10 = [CKKeyboardContentViewController alloc];
    v11 = [(CKKeyboardContentViewController *)v10 initWithViewController:v13 identifier:*MEMORY[0x1E69A6A00]];
    v12 = [(CKKeyboardContentViewController *)v11 view];
    [v13 setDragTargetView:v12];

    [(CKChatInputController *)self setCurrentInputViewController:v11];
    [(CKChatInputController *)self setInputViewVisible:1 entryFieldCollapsed:v3 animated:1];
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
  v4 = [v3 isAccessibilityPreferredContentSizeCategory];

  [(CKChatInputController *)self showPhotosBrowserCollapsingEntryField:v4 ^ 1u];
}

- (void)showPhotosBrowserCollapsingEntryField:(BOOL)a3
{
  v3 = a3;
  if ([(CKChatInputController *)self isInputViewVisible])
  {
    v5 = [(CKChatInputController *)self currentInputViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(CKChatInputController *)self currentInputViewController];
      v7 = [v9 identifier];
      v8 = [v7 isEqualToString:*MEMORY[0x1E69A6A00]];

      if (v8)
      {
        [(CKChatInputController *)self setBrowserPlugin:0];
        [(CKChatInputController *)self setBrowserPluginDataSource:0];
        [(CKChatInputController *)self dismissBrowserViewController];

        return;
      }
    }
  }

  [(CKChatInputController *)self _loadPhotosBrowserCollapsingEntryField:v3];
}

- (void)showFunCamera
{
  if (+[CKFunCameraUserConsentManager shouldPromptUserForFunCameraConsent])
  {
    v3 = [(CKChatInputController *)self delegate];
    v4 = [v3 activeSendMenuPresentationForChatInputController:self];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__CKChatInputController_showFunCamera__block_invoke;
    aBlock[3] = &unk_1E72EBB98;
    objc_copyWeak(&v11, &location);
    v5 = v4;
    v10 = v5;
    v6 = _Block_copy(aBlock);
    v7 = [v5 sendMenuViewController];
    [CKFunCameraUserConsentManager presentFromViewController:v7 presentedBlock:&__block_literal_global_197 confirmBlock:v6 cancelBlock:0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = [(CKChatInputController *)self entryView];
    [(CKChatInputController *)self showFunCamera:v8];
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

- (void)showFunCamera:(id)a3
{
  v4 = a3;
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

    v6 = [MEMORY[0x1E69A5B80] sharedInstance];
    [v6 preWarmConnection];
  }

  v7 = [(CKChatInputController *)self delegate];
  v8 = [v7 activeSendMenuPresentationForChatInputController:self];

  if (v8)
  {
    v9 = [v8 presentationStyle] == 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isPopoverSendMenuEnabled];

  if (v11)
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
        v13 = [(CKChatInputController *)self delegate];
        [v13 chatInputControllerDidSelectFunCamera:self];

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
  v3 = [(CKChatInputController *)self delegate];
  v4 = [v3 activeSendMenuPresentationForChatInputController:self];

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
    v5 = [(CKChatInputController *)self delegate];
    [v5 chatInputControllerDidSelectFunCamera:self];
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
  v3 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v4 = [v3 balloonPluginForBundleID:*MEMORY[0x1E69A69A8]];

  [(CKChatInputController *)self showBrowserForPlugin:v4 dataSource:0 style:0];
}

- (void)showSendLater
{
  v3 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v11 = [v3 balloonPluginForBundleID:*MEMORY[0x1E69A6A28]];

  if (IMSharedHelperDeviceIsiPad())
  {
    v4 = [(CKChatInputController *)self entryView];
    v5 = [v4 contentView];
    v6 = [v5 sendLaterView];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(CKChatInputController *)self entryView];
    }

    v10 = v8;

    v9 = [[CKTranscriptPluginPresentationConfiguration alloc] initWithSourceView:v10 permittedArrowDirections:2 shouldDisableSnapshotView:0];
  }

  else
  {
    v9 = 0;
  }

  [(CKChatInputController *)self showBrowserForPlugin:v11 dataSource:0 style:0 presentationConfiguration:v9];
}

- (void)_sendLaterSelectedFromSendMenuWithPresentation:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v6 = [v5 balloonPluginForBundleID:*MEMORY[0x1E69A6A28]];

  v7 = [(CKChatInputController *)self entryView];
  v8 = [v7 composition];
  v9 = [v8 hasContent];

  v10 = [(CKChatInputController *)self browserPlugin];
  v11 = [v10 identifier];
  v12 = [v6 identifier];
  v13 = [v11 isEqualToString:v12];

  LOBYTE(v12) = [v4 presentationStyle] == 1;
  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LOBYTE(v11) = [v14 isPopoverSendMenuEnabled];

  v15 = v11 | v12;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      v25 = v9;
      v26 = 1024;
      v27 = v13;
      v28 = 1024;
      v29 = v15 & 1;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "_sendLaterSelectedFromSendMenu preferDatePicker: %{BOOL}d, datePickerIsPresented: %{BOOL}d, sendMenuInPopover: %{BOOL}d", buf, 0x14u);
    }
  }

  if (v9)
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
        [v4 dismissAnimated:1 completion:v23];
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
      v18 = [(CKChatInputController *)self entryView];
      [v18 setSendLaterPluginInfo:v17 animated:1];
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
  if (v9 & 1 | ((v15 & 1) == 0))
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
    [v4 dismissAnimated:1 completion:v21];
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
  v3 = [(CKChatInputController *)self entryView];
  v4 = [v3 sendLaterPluginInfo];

  if (!v4)
  {
    if (IMSharedHelperDeviceIsiPad() && (-[CKChatInputController browserPlugin](self, "browserPlugin"), v5 = objc_claimAutoreleasedReturnValue(), [v5 identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69A6A28]), v6, v5, v7))
    {

      [(CKChatInputController *)self dismissBrowserViewController];
    }

    else
    {
      v14 = [(CKChatInputController *)self appCardPresentationOverseer];
      v8 = [v14 browserViewController];
      if (v8)
      {
        v9 = v8;
        v10 = [v14 browserViewController];
        v11 = [v10 balloonPlugin];
        v12 = [v11 identifier];
        v13 = [v12 isEqualToString:*MEMORY[0x1E69A6A28]];

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

- (void)appSelectionInterfaceSelectedItem:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v6 = [v4 identifier];
  v7 = [v5 balloonPluginForBundleID:v6];

  v8 = [v4 identifier];
  v9 = [v8 isEqualToString:@"kAppMenuAudio"];

  v10 = [v4 identifier];
  v11 = [v10 isEqualToString:*MEMORY[0x1E69A6A28]];

  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v13 = [v12 isPollsEnabled];

  if (v13)
  {
    v14 = [v4 identifier];
    v15 = IMBalloonExtensionIDWithSuffix();
    v16 = [v14 isEqualToString:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v4 identifier];
  v18 = IMBalloonExtensionIDWithSuffix();
  v19 = [v17 isEqualToString:v18];

  if (v19)
  {
    goto LABEL_5;
  }

  if (v16)
  {
    v21 = IMBalloonExtensionIDWithSuffix();
    [(CKChatInputController *)self _handleSelectionOfExtensionWithIdentifier:v21];
LABEL_11:

    goto LABEL_12;
  }

  if (v7)
  {
    v21 = [(CKChatInputController *)self entryView];
    v22 = [v21 sendMenuSourceView];
    v23 = [[CKTranscriptPluginPresentationConfiguration alloc] initWithSourceView:v22 permittedArrowDirections:8 shouldDisableSnapshotView:0];
    [(CKChatInputController *)self showBrowserForPlugin:v7 dataSource:0 style:1 presentationConfiguration:v23];

    goto LABEL_11;
  }

  v24 = [v4 identifier];
  v25 = IMBalloonExtensionIDWithSuffix();
  v26 = [v24 isEqualToString:v25];

  if (v26)
  {
LABEL_5:
    v20 = [(CKChatInputController *)self delegate];
    [v20 chatInputDidSelectGenmojiApp];
LABEL_6:

    goto LABEL_12;
  }

  v27 = [v4 identifier];
  v28 = [v27 isEqualToString:@"kAppMenuPhotosItemIdentifier"];

  if (v28)
  {
    v20 = [(CKChatInputController *)self delegate];
    [v20 chatInputDidSelectPhotoPicker];
    goto LABEL_6;
  }

  v29 = [v4 identifier];
  v30 = [v29 isEqualToString:@"kAppMenuEffectsItemIdentifier"];

  if (v30)
  {
    v20 = [(CKChatInputController *)self delegate];
    [v20 chatInputDidSelectEffectPicker];
    goto LABEL_6;
  }

  v31 = [v4 identifier];
  if ([v31 isEqualToString:@"kAppMenuEmoji"])
  {
    v32 = [(CKChatInputController *)self delegate];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      v20 = [(CKChatInputController *)self delegate];
      [v20 chatInputDidSelectEmojiPicker];
      goto LABEL_6;
    }
  }

  else
  {
  }

  if (v9)
  {
    v20 = [(CKChatInputController *)self entryView];
    [v20 startRecordingForAudioButtonInEntryView];
    goto LABEL_6;
  }

  if (v11)
  {
    v34 = [(CKChatInputController *)self entryView];
    v35 = [v34 composition];
    v36 = [v35 shelfPluginPayload];

    if (v36 && ([v36 supportsSendLater] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = [v36 pluginBundleID];
          v44 = 138412290;
          v45 = v42;
          _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "User selected send later, but the currently staged plugin payload (%@) does not allow presentation alongside Send Later. Presenting unsupported item alert and aborting.", &v44, 0xCu);
        }
      }

      v43 = [v36 pluginBundleID];
      [(CKChatInputController *)self _presentSendLaterUnsupportedAlertForIdentifier:v43 handler:0];
    }

    else
    {
      v37 = [(CKChatInputController *)self sendLaterPluginInfo];
      v38 = [(CKChatInputController *)self entryView];
      [v38 setSendLaterPluginInfo:v37 animated:1];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = [v4 identifier];
      v44 = 138412290;
      v45 = v40;
      _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "unknown CKAppMenuItem:  %@", &v44, 0xCu);
    }
  }

LABEL_12:
}

- (void)swipeDismissBrowser
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 isAccessibilityPreferredContentSizeCategory];

  [(CKChatInputController *)self setInputViewVisible:0 entryFieldCollapsed:v4 ^ 1u animated:0 messageDelegate:0];
}

- (void)dismissAppCardIfNecessaryAnimated:(BOOL)a3 isFocusingKeyboard:(BOOL)a4 overrideExceptions:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v10 = a6;
  if (CKIsAppCardsEnabled())
  {
    v11 = [(CKChatInputController *)self appCardPresentationOverseer];
    v12 = [v11 isPresentingCard];

    if (v12)
    {
      if ([(CKChatInputController *)self isDismissingAppCardForKeyboardPresentation]|| v7)
      {
        v13 = [(CKChatInputController *)self appCardPresentationOverseer];
        v7 = [v13 shouldAnimateDismissal] ^ 1;
      }

      [(CKChatInputController *)self setIsDismissingAppCardForKeyboardPresentation:v7];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __108__CKChatInputController_dismissAppCardIfNecessaryAnimated_isFocusingKeyboard_overrideExceptions_completion___block_invoke;
      aBlock[3] = &unk_1E72ED8D8;
      v29 = v7;
      aBlock[4] = self;
      v14 = _Block_copy(aBlock);
      v15 = [(CKChatInputController *)self activeSendMenuPresentationForAppCardOverseer];
      if (v15 && (v16 = v15, -[CKChatInputController activeSendMenuPresentationForAppCardOverseer](self, "activeSendMenuPresentationForAppCardOverseer"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 presentationStyle], v17, v16, v18 == 1))
      {
        v19 = 1;
      }

      else
      {
        v14[2](v14);
        v19 = 0;
      }

      v21 = [(CKChatInputController *)self appCardPresentationOverseer];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __108__CKChatInputController_dismissAppCardIfNecessaryAnimated_isFocusingKeyboard_overrideExceptions_completion___block_invoke_2;
      v24[3] = &unk_1E72EF578;
      v27 = v19;
      v25 = v14;
      v26 = v10;
      v22 = v14;
      [v21 dismissCardAnimated:v8 overrideExceptions:v6 completion:v24];
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

- (void)setAppCardDismissPadding:(double)a3
{
  self->_appCardDismissPadding = a3;
  if (CKIsAppCardsEnabled())
  {
    v5 = [(CKChatInputController *)self appCardPresentationOverseer];
    [v5 setAppCardDismissPadding:a3];
  }
}

- (BOOL)presentedAppBypassesSendMenu
{
  v3 = CKIsAppCardsEnabled();
  if (v3)
  {
    v4 = [(CKChatInputController *)self appCardPresentationOverseer];
    v5 = [v4 presentedAppBypassesSendMenu];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)_adamIDFromPluginPayloadData:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0;
  v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v12];
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

- (void)presentViewControllerWithPluginChatItem:(id)a3 presentationStyle:(unint64_t)a4 presentationConfiguration:(id)a5
{
  v21 = a5;
  v8 = [a3 IMChatItem];
  v9 = [v8 dataSource];

  v10 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v11 = [v9 bundleID];
  v12 = [v10 balloonPluginForBundleID:v11];

  v13 = [(CKChatInputController *)self browserPluginDataSource];
  v14 = v13;
  if (v13 != v9)
  {

    goto LABEL_3;
  }

  v20 = [(CKChatInputController *)self browserPlugin];

  if (a4 == 2 || v20 != v12)
  {
LABEL_3:
    v15 = [v12 identifier];
    if ([v15 isEqualToString:*MEMORY[0x1E69A69F0]])
    {
      v16 = [v9 pluginPayload];
      v17 = [v16 data];

      v18 = [(CKChatInputController *)self _adamIDFromPluginPayloadData:v17];
      [(CKChatInputController *)self setDeferredPluginDataSource:v9];
      [(CKChatInputController *)self presentAppStoreForAdamID:v18];
      v19 = [MEMORY[0x1E69A8168] sharedInstance];
      [v19 trackEvent:*MEMORY[0x1E69A72F8]];
    }

    else
    {
      [(CKChatInputController *)self launchAndShowBrowserForPlugin:v12 dataSource:v9 style:a4 presentationConfiguration:v21];
    }
  }
}

- (void)presentAppStoreForAdamID:(id)a3
{
  v4 = a3;
  v5 = +[CKBalloonPluginManager sharedInstance];
  v6 = *MEMORY[0x1E69A6988];
  v7 = [v5 viewControllerForPluginIdentifier:*MEMORY[0x1E69A6988] dataSource:0];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 setAdamID:v4];
    }

    v8 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v9 = [v8 balloonPluginForBundleID:v6];

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

- (void)presentAppStoreForURL:(id)a3 fromSourceApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CKBalloonPluginManager sharedInstance];
  v9 = *MEMORY[0x1E69A6988];
  v10 = [v8 viewControllerForPluginIdentifier:*MEMORY[0x1E69A6988] dataSource:0];

  if (v10)
  {
    [v10 setSendDelegate:self];
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v10 setStoreLaunchURL:v6 sourceApplication:v7];
    }

    v11 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v12 = [v11 balloonPluginForBundleID:v9];

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
    v5 = [v4 balloonPlugin];
    [(CKChatInputController *)self setBrowserPlugin:v5];

    [v4 setSendDelegate:self];
    [v4 setModalPresentationStyle:2];
    v6 = [(CKChatInputController *)self delegate];
    v7 = [v6 viewControllerForChatInputModalPresentation];
    [v7 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_6;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Not launching the app manager, got nil back for the VC", v8, 2u);
    }
  }

LABEL_6:
}

- (void)notifyBrowserViewControllerOfMatchingNewMessages:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 dataSource];
          v12 = [v11 bundleID];

          v13 = [(CKChatInputController *)self pluginBundleID];
          v14 = [v12 isEqualToString:v13];

          if (v14)
          {
            v15 = [(CKChatInputController *)self browserSwitcher];
            v16 = [v15 currentViewController];

            if (objc_opt_respondsToSelector())
            {
              v17 = [v10 dataSource];
              [v16 messageAddedWithDataSource:v17];
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

- (void)requestPhotoBrowserToAppendFinalImagesToComposition
{
  v3 = +[CKBalloonPluginManager sharedInstance];
  v20 = [v3 existingPhotoBrowserViewController];

  v4 = [(CKChatInputController *)self entryView];
  v5 = [v4 composition];

  v6 = [v5 shelfPluginPayload];
  v7 = [v6 pluginBundleID];
  if (v20)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ![v7 isEqualToString:*MEMORY[0x1E69A6A00]])
  {
    v12 = IMBalloonExtensionIDWithSuffix();
    v13 = [v7 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = +[CKBalloonPluginManager sharedInstance];
    v9 = [v14 viewControllerForPluginIdentifier:v7];

    [v9 setSendDelegate:self];
    v11 = v6;
    v15 = [v11 photoShelfViewController];

    if (v15)
    {
      v16 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
      [v16 beginHoldingUpdatesForKey:_kHoldShelfUpdateForSend];

      if (objc_opt_respondsToSelector())
      {
        v17 = [v9 fetchPluginPayloadsAndClear:1];
      }

      else
      {
        v17 = 0;
      }

      v19 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
      [v19 endHoldingUpdatesForKey:_kHoldShelfUpdateForSend];

      [v11 setAttachments:v17];
    }
  }

  else
  {
    v9 = v20;
    v10 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
    [v10 beginHoldingUpdatesForKey:_kHoldShelfUpdateForSend];

    if (objc_opt_respondsToSelector())
    {
      v11 = [v9 fetchPluginPayloadsAndClear:1];
    }

    else
    {
      v11 = 0;
    }

    v18 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
    [v18 endHoldingUpdatesForKey:_kHoldShelfUpdateForSend];

    [v6 setAttachments:v11];
  }

LABEL_17:
}

- (void)requestPollPluginToPrepareForDraftWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CKChatInputController *)self entryView];
  v6 = [v5 composition];

  v7 = [v6 shelfPluginPayload];
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isPollsEnabled];

  if (v9 && ([v7 pluginBundleID], v10 = objc_claimAutoreleasedReturnValue(), IMBalloonExtensionIDWithSuffix(), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, (v12 & 1) != 0))
  {
    v13 = [(CKChatInputController *)self entryView];
    v14 = [v13 contentView];
    v15 = [v14 pluginEntryViewController];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__CKChatInputController_requestPollPluginToPrepareForDraftWithCompletion___block_invoke;
    v16[3] = &unk_1E72F5668;
    v17 = v7;
    v18 = v6;
    v19 = self;
    v20 = v4;
    [v15 fetchInternalMessageStateForDraft:1 completion:v16];
  }

  else
  {
    (*(v4 + 2))(v4, v6);
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

- (void)requestPhotoBrowserToPrepareForDraftClearingPhotoShelfViewController:(BOOL)a3
{
  v3 = a3;
  v5 = +[CKBalloonPluginManager sharedInstance];
  v21 = [v5 existingPhotoBrowserViewController];

  v6 = [(CKChatInputController *)self entryView];
  v7 = [v6 composition];

  v8 = [v7 shelfPluginPayload];
  if (v21)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || ([v8 pluginBundleID], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E69A6A00]), v10, !v11))
  {
    v13 = [v8 pluginBundleID];
    v14 = IMBalloonExtensionIDWithSuffix();
    v15 = [v13 isEqualToString:v14];

    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = +[CKBalloonPluginManager sharedInstance];
    v17 = [v8 pluginBundleID];
    v12 = [v16 viewControllerForPluginIdentifier:v17];

    [v12 setSendDelegate:self];
  }

  else
  {
    v12 = v21;
  }

  v18 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
  [v18 beginHoldingUpdatesForKey:_kHoldShelfUpdateForDraft];

  if (objc_opt_respondsToSelector())
  {
    v19 = [v12 fetchPluginPayloadsAndClear:0];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
  [v20 endHoldingUpdatesForKey:_kHoldShelfUpdateForDraft];

  [v8 setAttachments:v19];
  if (v3)
  {
    [v8 setPhotoShelfViewController:0];
  }

LABEL_15:
}

- (void)requestPhotoBrowserInitFromDraft:(id)a3
{
  v4 = a3;
  v5 = [v4 shelfPluginPayload];
  v6 = [v5 pluginBundleID];
  v7 = [v6 isEqualToString:*MEMORY[0x1E69A6A00]];

  if (v7)
  {
    v8 = +[CKBalloonPluginManager sharedInstance];
    v9 = [v5 attachments];
    v10 = [v8 photosBrowserViewControllerWithPluginPayloads:v9];

    [v10 setSendDelegate:self];
    v11 = [v10 balloonPlugin];
    [(CKChatInputController *)self setBrowserPlugin:v11];

    [v5 setAttachments:0];
  }

  else
  {
    v12 = [v5 pluginBundleID];
    v13 = IMBalloonExtensionIDWithSuffix();
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      v15 = +[CKBalloonPluginManager sharedInstance];
      [v15 invalidatePhotosViewController];

      v16 = +[CKBalloonPluginManager sharedInstance];
      v17 = [v5 pluginBundleID];
      v18 = [v16 viewControllerForPluginIdentifier:v17];

      if (v18)
      {
        v19 = v5;
        v20 = [v19 attachments];
        v21 = [v20 count];

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

          v23 = [v18 balloonPlugin];
          [(CKChatInputController *)self setBrowserPlugin:v23];
        }

        else
        {
          v23 = IMLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
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

- (void)requestPhotoBrowserToEnumerateSelectedImagesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = +[CKBalloonPluginManager sharedInstance];
  v6 = [v5 existingPhotoBrowserViewController];

  v7 = [(CKChatInputController *)self entryView];
  v8 = [v7 composition];

  v9 = [v8 shelfPluginPayload];
  v10 = [v9 pluginBundleID];
  v11 = v10;
  if (v6)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && [v10 isEqualToString:*MEMORY[0x1E69A6A00]])
  {
    v13 = v6;
LABEL_10:
    if (objc_opt_respondsToSelector())
    {
      v14 = [v13 fetchPluginPayloadsAndClear:0];
    }

    else
    {
      v14 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [v13 fetchPluginStagedIdentifiers];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_17;
  }

  v13 = IMBalloonExtensionIDWithSuffix();
  if ([v11 isEqualToString:v13])
  {
    v14 = [v9 photoShelfViewController];

    if (!v14)
    {
      v16 = 0;
      goto LABEL_18;
    }

    v15 = +[CKBalloonPluginManager sharedInstance];
    v13 = [v15 viewControllerForPluginIdentifier:v11];

    goto LABEL_10;
  }

  v16 = 0;
  v14 = 0;
LABEL_17:

LABEL_18:
  v17 = [v16 count];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__CKChatInputController_requestPhotoBrowserToEnumerateSelectedImagesUsingBlock___block_invoke;
  v20[3] = &unk_1E72F5690;
  v22 = v4;
  v23 = v17;
  v21 = v16;
  v18 = v4;
  v19 = v16;
  [v14 enumerateObjectsUsingBlock:v20];
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

- (void)requestPhotoBrowserToUnstageImages:(id)a3
{
  v14 = a3;
  if ([v14 count])
  {
    v4 = +[CKBalloonPluginManager sharedInstance];
    v5 = [v4 existingPhotoBrowserViewController];

    v6 = [(CKChatInputController *)self entryView];
    v7 = [v6 composition];

    v8 = [v7 shelfPluginPayload];
    v9 = [v8 pluginBundleID];
    v10 = v9;
    if (v5 && v8 && [v9 isEqualToString:*MEMORY[0x1E69A6A00]])
    {
      v11 = v5;
    }

    else
    {
      v11 = IMBalloonExtensionIDWithSuffix();
      if (![v10 isEqualToString:v11])
      {
LABEL_11:

        goto LABEL_12;
      }

      v12 = [v8 photoShelfViewController];

      if (!v12)
      {
LABEL_12:

        goto LABEL_13;
      }

      v13 = +[CKBalloonPluginManager sharedInstance];
      v11 = [v13 viewControllerForPluginIdentifier:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 clearPluginPackagesWithIdentifiers:v14];
    }

    goto LABEL_11;
  }

LABEL_13:
}

- (void)requestPhotoBrowserToUnstageAllImages
{
  v3 = +[CKBalloonPluginManager sharedInstance];
  v12 = [v3 existingPhotoBrowserViewController];

  v4 = [(CKChatInputController *)self entryView];
  v5 = [v4 composition];

  v6 = [v5 shelfPluginPayload];
  v7 = [v6 pluginBundleID];
  if (v12)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && [v7 isEqualToString:*MEMORY[0x1E69A6A00]])
  {
    v9 = v12;
LABEL_10:
    if (objc_opt_respondsToSelector())
    {
      [v9 clearAllStagedPluginPackages];
    }

    goto LABEL_12;
  }

  v9 = IMBalloonExtensionIDWithSuffix();
  if ([v7 isEqualToString:v9])
  {
    v10 = [v6 photoShelfViewController];

    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = +[CKBalloonPluginManager sharedInstance];
    v9 = [v11 viewControllerForPluginIdentifier:v7];

    goto LABEL_10;
  }

LABEL_12:

LABEL_13:
}

- (void)prepareForSuspend
{
  v3 = +[CKPluginExtensionStateObserver sharedInstance];
  v4 = [v3 passKitUIPresented];

  if (v4)
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
  v9 = [v8 iTunesStoreDialogPresented];

  if (v9)
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

  v10 = [(CKBrowserSwitcherViewController *)self->_browserSwitcher transitionCoordinator];
  [v10 dismissCurrentFullScreenModalAnimated:0 completion:0];

  [(CKChatInputController *)self dismiss];
  [(CKChatInputController *)self dismissBrowserViewController];
  v11 = [(CKChatInputController *)self currentInputViewController];
  [v11 setViewController:0];

  [(CKChatInputController *)self setBrowserSwitcher:0];

  [(CKChatInputController *)self setSwitcherInputViewController:0];
}

- (void)applicationWillAddDeactivationReasonNotification:(id)a3
{
  v4 = a3;
  v5 = [(CKChatInputController *)self browserPlugin];
  if (v5)
  {
    v6 = v5;
    v7 = CKIsRunningInMacCatalyst();

    if (!v7)
    {
      v8 = [v4 userInfo];
      v9 = [v8 objectForKey:*MEMORY[0x1E69DE838]];
      v10 = [v9 longLongValue];

      if (v10 == 11)
      {
        v11 = +[CKPluginExtensionStateObserver sharedInstance];
        v12 = [v11 passKitUIPresented];

        if (v12)
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
          v17 = [v16 iTunesStoreDialogPresented];

          if (!v17)
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

- (void)chatControllerReceivedKeyboardWillHideNotification:(id)a3
{
  [(CKChatInputController *)self setKeyboardIsHiding:1];
  [(CKChatInputController *)self stickerPickerWasHidden];
  v4 = [(CKChatInputController *)self delegate];
  [v4 updateActiveEntryViewPositioningGuide];
}

- (void)chatControllerReceivedKeyboardDidHideNotification:(id)a3
{
  v4 = a3;
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
  v6 = [(CKChatInputController *)self orientationManager];
  [v6 endListeningForOrientationEventsWithKey:@"KeyboardVisible"];
}

- (void)chatControllerReceivedKeyboardWillShowNotification:(id)a3
{
  v4 = [(CKChatInputController *)self orientationManager];
  [v4 beginListeningForOrientationEventsWithKey:@"KeyboardVisible"];

  v5 = [(CKChatInputController *)self delegate];
  [v5 updateActiveEntryViewPositioningGuide];
}

- (void)chatControllerReceivedKeyboardDidShowNotification:(id)a3
{
  v4 = a3;
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
  v6 = [(CKChatInputController *)self appCardPresentationOverseer];
  if ([v6 isPresentingCard] && (objc_msgSend(v6, "isPresentingInSendMenuPopover") & 1) == 0 && (objc_msgSend(v6, "isExpanded") & 1) == 0 && -[CKChatInputController isEntryViewFirstResponder](self, "isEntryViewFirstResponder"))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__CKChatInputController_chatControllerReceivedKeyboardDidShowNotification___block_invoke;
    v7[3] = &unk_1E72EBA18;
    v8 = v6;
    [v8 fadeOutCardWithCompletion:v7];
  }
}

- (void)composeRecipientViewDidBecomeFirstResponder:(id)a3
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
  v2 = [(CKChatInputController *)self handwritingPresentationController];
  v3 = [v2 isHandwritingLandscape];

  return v3;
}

- (void)setBrowserPlugin:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  browserPlugin = self->_browserPlugin;
  p_browserPlugin = &self->_browserPlugin;
  if (browserPlugin != v5)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [(IMBalloonPlugin *)*p_browserPlugin identifier];
        v10 = [(IMBalloonPlugin *)v5 identifier];
        v11 = 138412546;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKChatInputController browserPlugin changing from %@ to %@", &v11, 0x16u);
      }
    }

    objc_storeStrong(p_browserPlugin, a3);
  }
}

- (void)setInputViewVisible:(BOOL)a3
{
  v3 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 isAccessibilityPreferredContentSizeCategory];

  [(CKChatInputController *)self setInputViewVisible:v3 entryFieldCollapsed:v6 ^ 1u animated:1];
}

- (void)setInputViewVisible:(BOOL)a3 entryFieldCollapsed:(BOOL)a4 animated:(BOOL)a5 messageDelegate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = [(CKChatInputController *)self delegate];
  v12 = [v11 keyboardIsVisibleForChatInputController:self];

  if (self->_inputViewVisible != v9 || v9 & ~v12)
  {
    self->_inputViewVisible = v9;
    if (v6)
    {
      v14 = [(CKChatInputController *)self delegate];
      [v14 chatInputDidUpdateInputViewShowingBrowser:v9 entryFieldCollapsed:v8 animated:v7];
    }

    v15 = [(CKChatInputController *)self entryView];
    [v15 setNeedsLayout];

    if (!v9)
    {
      v16 = +[CKBalloonPluginManager sharedInstance];
      [v16 commitInteractionTimeOrderingChanges];
    }
  }
}

- (void)setCurrentInputViewController:(id)a3
{
  v5 = a3;
  if (self->_currentInputViewController != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_currentInputViewController, a3);
    v6 = [(CKChatInputController *)self isInputViewVisible];
    v5 = v8;
    if (v6)
    {
      v7 = [(CKChatInputController *)self delegate];
      [v7 chatInputDidUpdateWithNewInputViewController:self->_currentInputViewController];

      v5 = v8;
    }
  }
}

- (CKBrowserSwitcherViewController)browserSwitcher
{
  browserSwitcher = self->_browserSwitcher;
  if (!browserSwitcher)
  {
    v4 = [CKBrowserSwitcherViewController alloc];
    v5 = [(CKChatInputController *)self targetConversation];
    v6 = [(CKChatInputController *)self delegate];
    v7 = [v6 viewControllerForChatInputModalPresentation];
    v8 = [(CKBrowserSwitcherViewController *)v4 initWithConversation:v5 sendDelegate:self presentingViewController:v7];
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
    v7 = [(CKChatInputController *)self browserSwitcher];
    v8 = [(CKKeyboardContentViewController *)v6 initWithViewController:v7 identifier:@"Switcher"];
    v9 = self->_switcherInputViewController;
    self->_switcherInputViewController = v8;

    v10 = [(CKKeyboardContentViewController *)self->_switcherInputViewController view];
    [v10 intrinsicContentSize];
  }

  v11 = self->_switcherInputViewController;

  return v11;
}

- (CKConversation)targetConversation
{
  v3 = [(CKChatInputController *)self delegate];
  v4 = [v3 targetConversationForChatInputController:self];

  return v4;
}

- (BOOL)_isiMessageConversation
{
  v2 = [(CKChatInputController *)self targetConversation];
  v3 = [v2 sendingService];
  v4 = [v3 __ck_isiMessage];

  return v4;
}

- (BOOL)_isBusinessConversation
{
  v2 = [(CKChatInputController *)self targetConversation];
  v3 = [v2 isBusinessConversation];

  return v3;
}

- (void)beginStickerReactionSessionWithChatItem:(id)a3 cell:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CKStickerReactionSession alloc];
  v10 = [(CKChatInputController *)self targetConversation];
  v9 = [(CKStickerReactionSession *)v8 initWithConversation:v10 chatItem:v7 cell:v6];

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
    v3 = [(CKChatInputController *)self delegate];
    [v3 updateActiveEntryViewPositioningGuide];
  }

  v4 = [(CKChatInputController *)self delegate];
  [v4 appCardDidDismiss];

  self->_isAppCardDraggingBelowKeyboardDetent = 0;
}

- (void)appCardOverseerWillDismissAppCard
{
  self->_isAppCardDismissing = 1;
  if (![(CKChatInputController *)self hasStickerReactionSession])
  {
    v3 = [(CKChatInputController *)self delegate];
    [v3 updateActiveEntryViewPositioningGuide];
  }
}

- (void)appCardDidMoveToWindow:(id)a3
{
  v3 = [(CKChatInputController *)self delegate];
  [v3 enforceSendMenuOrderingInWindowSubviews];
}

- (void)appCardOverseerWillPresentAppCard
{
  self->_isAppCardAppearing = 1;
  v2 = [(CKChatInputController *)self delegate];
  [v2 updateActiveEntryViewPositioningGuide];
}

- (void)appCardOverseerDidPresentAppCard
{
  self->_isAppCardAppearing = 0;
  [(CKChatInputController *)self _informDelegateOfUpdatedAppCardHeightAnimated:1];
  v3 = [(CKChatInputController *)self delegate];
  [v3 updateActiveEntryViewPositioningGuide];
}

- (void)appCardOverseerCardDidChangeHeight:(double)a3 isBelowKeyboardDetent:(BOOL)a4 isDragging:(BOOL)a5 isGeneratingEndOfDragAnimations:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  if (a5)
  {
    self->_isAppCardDraggingBelowKeyboardDetent = a4;
  }

  if (a4 && ![(CKChatInputController *)self preventResignFirstResponder])
  {
    v10 = [(CKChatInputController *)self delegate];
    [v10 appCardDidChangeEntryViewAlignmentHeight:!v7 | v6 animated:a3];
  }
}

- (double)appCardOverseerCompactHeightExcludingSafeArea
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 keyboardSizeDeterminesAppCardDetentHeight];

  if (v4)
  {
    v5 = CKNonFlatDeviceOrientation();
    v6 = [(CKChatInputController *)self entryView];
    v7 = [v6 contentView];
    v8 = [v7 textView];

    [MEMORY[0x1E69DCBB8] sizeForInterfaceOrientation:v5 inputDelegate:v8];
    v10 = v9;
    v11 = [(CKChatInputController *)self delegate];
    v12 = [v11 viewControllerForChatInputModalPresentation];

    v13 = [v12 view];
    [v13 safeAreaInsets];
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
    v18 = [(CKChatInputController *)self delegate];
    v19 = [v18 viewControllerForChatInputModalPresentation];

    v20 = [v19 view];
    [v20 frame];
    v22 = v21;

    v23 = [v19 traitCollection];
    [v23 displayScale];
    v16 = round(v22 * 0.4 * v24) / v24;
  }

  return v16;
}

- (void)appCardOverseerViewStateDidChange:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKChatInputController *)self delegate];
  [v4 appCardViewStateDidChange:v3];
}

- (void)browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:(id)a3 withReason:(int64_t)a4
{
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Hiding entry view", v10, 2u);
    }
  }

  v8 = [(CKChatInputController *)self entryView];
  [v8 setHidden:1];

  if (!a4)
  {
    [(CKChatInputController *)self setInCollapseOrExpandAnimation:1];
    v9 = [(CKChatInputController *)self delegate];
    [v9 chatInputControllerWillTransitionExpanded:self];
    goto LABEL_9;
  }

  if (a4 == 2)
  {
    v9 = [(CKChatInputController *)self delegate];
    [v9 chatInputControllerWillPresentModalBrowserViewController:self];
LABEL_9:
  }
}

- (void)browserTransitionCoordinatorDidTransitionOrPresentToFullscreen:(id)a3 withReason:(int64_t)a4
{
  v6 = [(CKChatInputController *)self entryView];
  [v6 setHidden:0];

  if (a4)
  {
    if (a4 != 2)
    {
      goto LABEL_6;
    }

    v7 = [(CKChatInputController *)self delegate];
    [v7 chatInputControllerDidPresentModalBrowserViewController:self];
  }

  else
  {
    [(CKChatInputController *)self setInCollapseOrExpandAnimation:0];
    v7 = [(CKChatInputController *)self delegate];
    [v7 chatInputControllerDidTransitionExpanded:self];
  }

LABEL_6:
  v8 = [(CKChatInputController *)self browserPlugin];
  v9 = [v8 identifier];

  [(CKChatInputController *)self adjustSupportedInterfaceOrientationForPluginID:v9 requiredPortrait:0];
}

- (void)browserTransitionCoordinatorWillCollapseOrDismiss:(id)a3 withReason:(int64_t)a4
{
  v6 = a3;
  if (a4 != 5)
  {
    [(CKChatInputController *)self _reconfigurePluginDataSourceWithBalloonControllerIfNecessary];
    if (a4 == 3)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __86__CKChatInputController_browserTransitionCoordinatorWillCollapseOrDismiss_withReason___block_invoke_2;
      v9[3] = &unk_1E72EBA18;
      v9[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v9];
      v7 = [(CKChatInputController *)self delegate];
      [v7 chatInputControllerWillDismissModalBrowserViewController:self];
    }

    else
    {
      if (a4 != 1)
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
      v7 = [(CKChatInputController *)self delegate];
      [v7 chatInputControllerWillTransitionCollapsed:self];
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
    v8 = [(CKChatInputController *)self browserPluginDataSource];
    v3 = [(CKChatInputController *)self delegate];
    v4 = [v3 chatInputTranscriptIdentifier];

    v5 = [(CKChatInputController *)self browserPlugin];
    v6 = [v8 messageGUID];
    v7 = [v5 existingBalloonControllerWithMessageGUID:v6 contextIdentifier:v4];

    [v7 setDataSource:v8];
    [(CKChatInputController *)self setBrowserPluginDataSource:0];
  }
}

- (void)browserTransitionCoordinatorDidCollapseOrDismiss:(id)a3 withReason:(int64_t)a4
{
  v6 = a3;
  if ((a4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(CKChatInputController *)self setInCollapseOrExpandAnimation:0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__CKChatInputController_browserTransitionCoordinatorDidCollapseOrDismiss_withReason___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (a4 == 3)
  {
    v7 = [(CKChatInputController *)self delegate];
    [v7 chatInputControllerDidDismissModalBrowserViewController:self];

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
  v2 = [(CKChatInputController *)self targetConversation];
  if ([v2 isBusinessConversation])
  {
    v3 = [v2 chat];
    v4 = [v3 recipient];
    v5 = [v4 name];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)appIconOverride
{
  v2 = [(CKChatInputController *)self targetConversation];
  if ([v2 isBusinessConversation])
  {
    v3 = [v2 chat];
    v4 = [v3 recipient];

    v5 = MEMORY[0x1E69DCAB8];
    v6 = [v4 brandSquareLogoImageData];
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
    v8 = [v5 imageWithData:v6 scale:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)switcherViewControllerWillAppear:(id)a3
{
  v4 = [a3 balloonPlugin];
  v5 = [v4 identifier];

  [(CKChatInputController *)self adjustSupportedInterfaceOrientationForPluginID:v5 requiredPortrait:0];
}

- (void)switcherViewControllerWillDisappear:(id)a3
{
  v3 = [(CKChatInputController *)self delegate];
  [v3 stopForcingOrientation];
}

- (void)setConversationAndRecipientsForBrowser:(id)a3
{
  v16 = a3;
  v4 = [(CKChatInputController *)self appManagerIsDisplayed];
  v5 = v16;
  if (v16 && !v4)
  {
    v6 = [(CKChatInputController *)self targetConversation];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 senderIdentifier];
      [v16 setSender:v7];
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 recipientStrings];
      [v16 setRecipients:v8];
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [(CKChatInputController *)self delegate];
      v10 = [v9 generatedSummary];
      [v16 setGeneratedSummary:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [(CKChatInputController *)self delegate];
      v12 = [v11 generativeContext];
      [v16 setGenerativeContext:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      [v16 setIsiMessage:{-[CKChatInputController _isiMessageConversation](self, "_isiMessageConversation")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v16 setIsBusiness:{-[CKChatInputController _isBusinessConversation](self, "_isBusinessConversation")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [v6 chat];
      v14 = [v13 guid];
      [v16 setConversationID:v14];
    }

    v15 = [v16 balloonPlugin];
    [(CKChatInputController *)self setBrowserPlugin:v15];

    v5 = v16;
  }
}

- (void)switcherViewControllerDidCollapse:(id)a3
{
  v4 = [(CKChatInputController *)self switcherInputViewController];
  [(CKChatInputController *)self setCurrentInputViewController:v4];

  [(CKChatInputController *)self setInputViewVisible:1];
}

- (void)switcherViewControllerDidSelectAppStore:(id)a3 shouldRestoreAppSwitcher:(BOOL)a4
{
  [(CKChatInputController *)self setShouldRestoreAppSwitcher:a4];
  [(CKChatInputController *)self presentAppStoreForAdamID:0];
  v5 = [MEMORY[0x1E69A8168] sharedInstance];
  [v5 trackEvent:*MEMORY[0x1E69A7308]];
}

- (void)switcherViewControllerDidSelectAppManager:(id)a3 shouldRestoreAppSwitcher:(BOOL)a4
{
  [(CKChatInputController *)self setShouldRestoreAppSwitcher:a4];

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
    v5 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v6 = [v5 allPlugins];

    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 identifier];
          v13 = [v12 containsString:v4];

          if (v13)
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
      v15 = [(CKChatInputController *)self browserSwitcher];
      [v15 showPlugin:v14];

      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 removeObserver:self name:*MEMORY[0x1E69A56D8] object:0];
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

- (void)launchAndShowBrowserForPlugin:(id)a3 dataSource:(id)a4 style:(unint64_t)a5 presentationConfiguration:(id)a6
{
  v19 = a3;
  v10 = a4;
  v11 = a6;
  v12 = +[CKBalloonPluginManager sharedInstance];
  v13 = [v19 identifier];
  v14 = [v12 isPluginEnabled:v13];

  if ((v14 & 1) == 0)
  {
    v15 = [v19 identifier];
    [v12 setEnabled:1 forPlugin:v15];
  }

  v16 = [v12 visibleDrawerPlugins];
  v17 = [v16 containsObject:v19];

  if ((v17 & 1) == 0)
  {
    v18 = [v19 identifier];
    [v12 updateInteractionTimeForPlugin:v18];

    [v12 commitInteractionTimeOrderingChanges];
  }

  [(CKChatInputController *)self showBrowserForPlugin:v19 dataSource:v10 style:a5 presentationConfiguration:v11];
}

- (void)showBrowserPopoverForPlugin:(id)a3 dataSource:(id)a4 style:(unint64_t)a5 presentationConfiguration:(id)a6
{
  v31 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v31 browserClass];
  if (a5 > 1)
  {
    _IMLog();
  }

  else
  {
    v13 = [[v12 alloc] initWithBalloonPlugin:v31 dataSource:v10];
    v14 = [v31 identifier];
    v15 = IMBalloonExtensionIDWithSuffix();
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      v17 = 380.0;
      v18 = 280.0;
    }

    else
    {
      v19 = [v31 identifier];
      v20 = IMBalloonExtensionIDWithSuffix();
      v21 = [v19 isEqualToString:v20];

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
    v26 = [(CKChatInputController *)self targetConversation];
    [(CKBrowserTransitionCoordinator *)v25 setConversation:v26];

    [(CKBrowserTransitionCoordinator *)v25 updateBrowser:v13];
    v27 = [(CKChatInputController *)self pluginContextForPlugin:v31];
    v28 = [v31 identifier];
    v29 = [v28 isEqual:*MEMORY[0x1E69A6A28]];

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
          v30 = [(CKChatInputController *)self entryView];
          [v30 setSendLaterPluginInfo:v27 animated:1];
        }
      }
    }

    [(CKChatInputController *)self showExpandedBrowserPopover:v13 presentationConfiguration:v11];
  }
}

- (void)showExpandedBrowserPopover:(id)a3 presentationConfiguration:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v6)
  {
    [v14 setSendDelegate:self];
    if (objc_opt_respondsToSelector())
    {
      [v14 setCurrentBrowserConsumer:2];
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 setShouldDisableSnapshotView:{objc_msgSend(v6, "shouldDisableSnapshotView")}];
    }

    [v14 setModalPresentationStyle:7];
    v7 = [(CKChatInputController *)self delegate];
    v8 = [v7 viewControllerForChatInputModalPresentation];
    [v8 presentViewController:v14 animated:1 completion:0];

    v9 = [v6 sourceView];
    v10 = [v14 popoverPresentationController];
    [v10 setSourceView:v9];

    v11 = [v6 permittedArrowDirections];
    v12 = [v14 popoverPresentationController];
    [v12 setPermittedArrowDirections:v11];

    v13 = [v14 popoverPresentationController];
    [v13 setDelegate:self];
  }

  else
  {
    _IMLog();
  }
}

- (BOOL)isShowingAppCardForExtensionIdentifier:(id)a3
{
  v4 = a3;
  if (CKIsAppCardsEnabled() && (-[CKChatInputController appCardPresentationOverseer](self, "appCardPresentationOverseer"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isPresentingCard], v5, v6))
  {
    v7 = [(CKChatInputController *)self browserPlugin];
    v8 = [v7 extensionIdentifier];

    v9 = [v8 isEqualToString:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)showBrowserForPlugin:(id)a3 dataSource:(id)a4 style:(unint64_t)a5 presentationConfiguration:(id)a6
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 appBundle];
  v13 = [v12 bundleIdentifier];
  v14 = [(CKChatInputController *)self shouldPreventAppFromDisplayingForBundleIdentifier:v13];

  if (!v14)
  {
    v18 = [v9 identifier];
    v19 = [v18 isEqualToString:*MEMORY[0x1E69A6A28]];

    v20 = [(CKChatInputController *)self entryView];
    v21 = [v20 composition];
    v22 = [v21 shelfPluginPayload];

    if (v22)
    {
      v23 = [v22 supportsSendLater];
      if (v19)
      {
        if ((v23 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = [v22 pluginBundleID];
              *buf = 138412290;
              v51 = v25;
              _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "showBrowserForPlugin: User selected send later, but the currently staged plugin payload (%@) does not allow presentation alongside Send Later. Presenting unsupported item alert and aborting.", buf, 0xCu);
            }
          }

          v26 = [v22 pluginBundleID];
          [(CKChatInputController *)self _presentSendLaterUnsupportedAlertForIdentifier:v26 handler:0];

LABEL_43:
          goto LABEL_44;
        }
      }
    }

    v27 = v10;
    v28 = self;
    if (v11)
    {
      v29 = v11;
    }

    else
    {
      [(CKChatInputController *)self setStickerPickerMessagePartChatItem:0];
      [(CKChatInputController *)self setStickerPickerMessagePartParentChatItem:0];
      v28 = self;
      v29 = 0;
    }

    [(CKChatInputController *)v28 setCurrentPresentationConfig:v29];
    if (CKIsAppCardsEnabled())
    {
      v30 = [(CKChatInputController *)self browserPlugin];
      v31 = [v30 identifier];
      v32 = [v9 identifier];
      if ([v31 isEqualToString:v32])
      {
        v33 = [(CKChatInputController *)self appCardPresentationOverseer];
        v34 = [v33 isPresentingCard];

        if (v34)
        {
          v10 = v27;
          if (IMOSLoggingEnabled())
          {
            v35 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = [v9 identifier];
              *buf = 138412290;
              v51 = v36;
              _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "presentModernCardForPlugin identifier is already the current plugin: %@. Doing nothing.", buf, 0xCu);
            }
          }

          v37 = [(CKChatInputController *)self browserPluginDataSource];
          v38 = v37;
          if (v37 == v27)
          {
          }

          else
          {
            v39 = [(CKChatInputController *)self appCardPresentationOverseer];
            v40 = [v39 updateCurrentBrowserWithDataSource:v27];

            if (v40)
            {
              v41 = [(CKChatInputController *)self appCardPresentationOverseer];
              [v41 requestPresentationStyle:a5 animated:1];

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

    v10 = v27;
    if (a5 != 3)
    {
      if (a5 == 2)
      {
        [(CKChatInputController *)self _presentFullScreenModalBrowserForPlugin:v9 dataSource:v27];
      }

      else
      {
        [(CKChatInputController *)self setBrowserPlugin:v9];
        [(CKChatInputController *)self setBrowserPluginDataSource:v27];
        v42 = [(CKChatInputController *)self delegate];
        v43 = [v42 viewControllerForChatInputModalPresentation];
        v44 = [v43 traitCollection];

        v45 = [(CKChatInputController *)self determineSendMenuPresentationStyleCompatibleWithTraitCollection:v44];
        v46 = CKIsRunningInMacCatalyst();
        v47 = v45 == 1 && v11 != 0;
        if (v46 || v47)
        {
          [(CKChatInputController *)self showBrowserPopoverForPlugin:v9 dataSource:v10 style:a5 presentationConfiguration:v11];
        }

        else if (CKIsAppCardsEnabled())
        {
          [(CKChatInputController *)self presentModernCardForPlugin:v9 dataSource:v10 presentationStyle:a5];
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
      v16 = [v9 appBundle];
      v17 = [v16 bundleIdentifier];
      *buf = 138412290;
      v51 = v17;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Dismissing App Browser: User attempted to open a plugin that is not allowed by App Limits with Bundle ID%@", buf, 0xCu);
    }
  }

LABEL_44:
}

- (void)_presentFullScreenModalBrowserForPlugin:(id)a3 dataSource:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKChatInputController *)self browserPlugin];
  v9 = [v6 identifier];
  v10 = [v8 identifier];
  v11 = [v9 isEqualToString:v10];

  [(CKChatInputController *)self setBrowserPlugin:v6];
  [(CKChatInputController *)self setBrowserPluginDataSource:v7];
  if (![(CKChatInputController *)self isAppCardPresented]|| (v11 & 1) != 0)
  {
    v16 = [v6 identifier];
    [(CKChatInputController *)self requestPresentationStyleFullScreenModalForPlugin:v16 dataSource:v7 skipValidation:1];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v8 identifier];
        v14 = [v6 identifier];
        *buf = 138412546;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "_presentFullScreenModalBrowserForPlugin: dismissing Send Menu presentation for outgoing plugin: %@, new plugin: %@", buf, 0x16u);
      }
    }

    objc_initWeak(buf, self);
    v15 = [(CKChatInputController *)self appCardPresentationOverseer];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__CKChatInputController__presentFullScreenModalBrowserForPlugin_dataSource___block_invoke;
    v17[3] = &unk_1E72ED950;
    objc_copyWeak(&v20, buf);
    v18 = v6;
    v19 = v7;
    [v15 dismissCardAnimated:1 completion:v17];

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

- (void)_presentSendLaterUnsupportedAlertForIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"SHELF_SEND_LATER_UNSUPPORTED_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"SHELF_SEND_LATER_UNSUPPORTED_ITEM" value:&stru_1F04268F8 table:@"ChatKit"];

  v12 = IMBalloonExtensionIDWithSuffix();
  v13 = [v7 isEqualToString:v12];

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
  v28 = self;
  v29 = v6;
  v21 = v6;
  v22 = [CKAlertAction actionWithTitle:v20 style:0 handler:&v24];
  [v18 addAction:{v22, v24, v25, v26, v27, v28}];

  [(CKChatInputController *)self setIsDisplayingReplaceCompositionAlert:1];
  v23 = [(CKChatInputController *)self delegate];
  [v18 presentFromViewController:v23 animated:1 completion:0];
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
  v3 = [(CKChatInputController *)self entryView];
  v4 = [v3 sendLaterPluginInfo];
  if (v4)
  {
    v5 = v4;
    v6 = [(CKChatInputController *)self entryView];
    v7 = [v6 sendLaterPluginInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(CKChatInputController *)self entryView];
      v10 = [v9 sendLaterPluginInfo];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = [CKSendLaterPluginInfo alloc];
  v9 = [(CKChatInputController *)self targetConversation];
  v10 = [(CKSendLaterPluginInfo *)v11 initWithConversation:v9];
LABEL_6:
  v12 = v10;

  return v12;
}

- (id)pluginContextForPlugin:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69A6A28]];

  if (v6)
  {
    v7 = [(CKChatInputController *)self sendLaterPluginInfo];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "No pluginContext type known for plugin: %@", &v10, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)presentModernCardForPlugin:(id)a3 dataSource:(id)a4 presentationStyle:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CKChatInputController *)self appCardPresentationOverseer];
  v11 = [(CKChatInputController *)self pluginContextForPlugin:v9];
  v12 = [v10 updateCurrentBrowserForPlugin:v9 dataSource:v8 pluginContext:v11];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(CKChatInputController *)self entryView];
      [v13 setSendLaterPluginInfo:v11 animated:1];
    }
  }

  [(CKChatInputController *)self setConversationAndRecipientsForBrowser:v12];
  if (([v10 isPresentingInSendMenuPopover] & 1) == 0)
  {
    v14 = [(CKChatInputController *)self delegate];
    v15 = [v14 isKeyboardVisible];

    if (v15)
    {
      [(CKChatInputController *)self setPreventResignFirstResponder:1];
    }
  }

  v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v17 = [v16 isPopoverSendMenuEnabled];

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v19 = [(CKChatInputController *)self appCardPresentationOverseer];
    v18 = [v19 shouldAnimatePresentationForPresentationStyle:a5];
  }

  v20 = v10;
  [v20 presentCardWithStyle:a5 animated:? completion:?];
  if (v18)
  {
    [(CKChatInputController *)self setPreventResignFirstResponder:0];
    v21 = [(CKChatInputController *)self delegate];
    [v21 dismissKeyboard];
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

- (void)extensionRemoteConnectionWasInterrupted:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 _stringForKey:*MEMORY[0x1E69A6F20]];

  v5 = IMStickersExtensionIdentifier();
  v6 = IMBalloonExtensionIDWithSuffix();
  v7 = [v8 isEqualToString:v6];

  if (v7)
  {
    [(CKChatInputController *)self dismissStickerPickerPreservingChatItem:0 completion:0];
  }
}

- (void)_informDelegateOfUpdatedAppCardHeightAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKChatInputController *)self delegate];
  [(CKChatInputController *)self _appCardHeightWithSafeArea];
  [v5 appCardDidChangeEntryViewAlignmentHeight:v3 animated:?];
}

- (double)_appCardHeightWithSafeArea
{
  v3 = [(CKChatInputController *)self delegate];
  v4 = [v3 viewControllerForChatInputModalPresentation];

  [(CKChatInputController *)self appCardOverseerCompactHeightExcludingSafeArea];
  v6 = v5;
  v7 = [v4 view];
  [v7 safeAreaInsets];
  v9 = v6 + v8;

  return v9;
}

- (BOOL)isAppCardPresentationStyleExpanded
{
  v2 = [(CKChatInputController *)self appCardPresentationOverseer];
  v3 = [v2 isExpanded];

  return v3;
}

- (void)dismissBrowserViewController
{
  [(CKChatInputController *)self setDeferredPluginDataSource:0];

  [(CKChatInputController *)self _dismissBrowserViewControllerAndReloadInputViews:0];
}

- (void)_dismissBrowserViewControllerAndReloadInputViews:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(CKChatInputController *)self _deferredDismissToKeyboardAndFocusEntryView:v4];
}

- (void)showKeyboard
{
  if (!CKIsAppCardsEnabled())
  {
    [(CKChatInputController *)self dismissBrowserViewController];
  }

  v3 = [(CKChatInputController *)self entryView];
  v4 = [v3 contentView];
  v5 = [v4 textView];
  [v5 becomeFirstResponder];

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
  v3 = [(CKChatInputController *)self entryView];
  v4 = [v3 contentView];
  v5 = [v4 subjectView];
  v6 = [v5 isFirstResponder];

  v7 = [(CKChatInputController *)self entryView];
  v8 = [v7 contentView];
  v9 = [v8 textView];
  LOBYTE(v5) = [v9 isFirstResponder];

  return (v6 | v5) & 1;
}

- (BOOL)currentPluginIsDT
{
  v2 = [(CKChatInputController *)self browserPlugin];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69A69A8]];

  return v4;
}

- (BOOL)currentPluginIsPhotos
{
  v2 = [(CKChatInputController *)self browserPlugin];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69A6A00]];

  return v4;
}

- (BOOL)currentPluginIsGenerativePlayground
{
  v2 = [(CKChatInputController *)self browserPlugin];
  v3 = [v2 identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)switcherPluginCanMessageAPIOnBehalfOfPlugin:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (-[CKChatInputController _isCombinedStickersApp](self, "_isCombinedStickersApp") || ![v4 length] || (-[CKChatInputController browserPlugin](self, "browserPlugin"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", v4), v6, v5, (v7 & 1) != 0))
  {
    if (CKIsRunningInMacCatalyst())
    {
      v8 = 1;
    }

    else
    {
      v8 = [(CKChatInputController *)self _switcherPluginCanMessageAPI];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(CKBrowserSwitcherViewController *)self->_browserSwitcher balloonPlugin];
        v11 = [v10 identifier];
        v13 = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Denying action for plugin %@ (the current plugin is %@)", &v13, 0x16u);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_pluginCanMessageAPI:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = IMBalloonExtensionIDWithSuffix();
    v5 = [v3 isEqualToString:v4];

    v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v7 = [v6 isZelkovaEnabled];

    if (v7)
    {
      v8 = IMBalloonExtensionIDWithSuffix();
      v9 = [v3 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }

    v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v12 = [v11 isPollsEnabled];

    if (v12)
    {
      v13 = IMBalloonExtensionIDWithSuffix();
      v14 = [v3 isEqualToString:v13];

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
  v2 = [(CKChatInputController *)self browserPlugin];
  v3 = [v2 identifier];
  v4 = [v3 hasSuffix:*MEMORY[0x1E69A68F8]];

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

    v4 = [(CKChatInputController *)self browserSwitcher];
    if (([v4 isBrowserReadyForUserInteraction] & 1) == 0)
    {
      v5 = [(CKChatInputController *)self browserSwitcher];
      v6 = [v5 transitionCoordinator];
      v3 = [v6 currentConsumer] == 2;

LABEL_13:
      return v3;
    }

LABEL_8:
    v3 = 1;
    goto LABEL_13;
  }

  if (![(CKChatInputController *)self appModalIsDisplayed])
  {
    v7 = [(CKChatInputController *)self stickerReactionSession];

    v4 = [(CKChatInputController *)self appCardPresentationOverseer];
    if (([v4 isPresentingCard] & 1) == 0)
    {
      v8 = [v4 presentationBegan];
      if (v7)
      {
        v3 = 1;
      }

      else
      {
        v3 = v8;
      }

      goto LABEL_13;
    }

    goto LABEL_8;
  }

  return 1;
}

- (BOOL)_shouldShowHandwriting
{
  v2 = self;
  v3 = [(CKChatInputController *)self delegate];
  LOBYTE(v2) = [v3 chatInputControllerShouldShowHandwriting:v2];

  return v2;
}

- (void)showHandwritingBrowserWithExistingPayload:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKChatInputController *)self _shouldShowHandwriting])
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6)
    {
      if (v4)
      {
        v28[0] = v4;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      }

      else
      {
        v7 = 0;
      }

      v21 = +[CKBalloonPluginManager sharedInstance];
      v22 = [v21 handwritingViewControllerWithPluginPayloads:v7];

      [v22 setSendDelegate:self];
      v23 = [v22 balloonPlugin];
      [(CKChatInputController *)self setBrowserPlugin:v23];

      v24 = [CKKeyboardContentViewController alloc];
      v25 = [(CKKeyboardContentViewController *)v24 initWithViewController:v22 identifier:*MEMORY[0x1E69A69E0]];
      [(CKChatInputController *)self setCurrentInputViewController:v25];
      [(CKChatInputController *)self setInputViewVisible:1];
    }

    else
    {
      v8 = [(CKChatInputController *)self orientationManager];
      [v8 beginListeningForOrientationEventsWithKey:@"HandwritingOnscreen"];

      v9 = [(CKChatInputController *)self handwritingPresentationController];

      if (!v9)
      {
        v10 = objc_alloc_init(CKHandwritingPresentationController);
        [(CKChatInputController *)self setHandwritingPresentationController:v10];

        v11 = [(CKChatInputController *)self handwritingPresentationController];
        [v11 setDelegate:self];

        v12 = [(CKChatInputController *)self handwritingPresentationController];
        [v12 setSendDelegate:self];

        v13 = [(CKChatInputController *)self orientationManager];
        v14 = [(CKChatInputController *)self handwritingPresentationController];
        [v14 setDeviceOrientationManager:v13];
      }

      v15 = [(CKChatInputController *)self handwritingPresentationController];
      [v15 setPluginPayload:v4];

      v16 = [(CKChatInputController *)self orientationManager];
      v17 = [v16 isListeningForOrientationEvents];

      if (v17)
      {
        v18 = [(CKChatInputController *)self orientationManager];
        v19 = [v18 currentDeviceOrientation];

        if (v19 == 3)
        {
          v20 = 3;
        }

        else
        {
          v20 = 4 * (v19 == 4);
        }
      }

      else
      {
        v20 = 0;
      }

      v26 = [(CKChatInputController *)self handwritingPresentationController];
      [v26 setInitialInterfaceOrientation:v20];

      v27 = [(CKChatInputController *)self handwritingPresentationController];
      [v27 setVisible:1 animated:1];
    }
  }
}

- (BOOL)handwritingIsDisplayed
{
  v3 = [(CKChatInputController *)self browserPlugin];
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*MEMORY[0x1E69A69E0]])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CKChatInputController *)self handwritingPresentationController];
    v5 = [v6 visible];
  }

  return v5;
}

- (BOOL)appStoreIsDisplayed
{
  v2 = [(CKChatInputController *)self browserPlugin];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69A6988]];

  return v4;
}

- (BOOL)appManagerIsDisplayed
{
  v2 = [(CKChatInputController *)self browserPlugin];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:@"com.apple.messages.browser.MorePlugin"];

  return v4;
}

- (BOOL)appModalIsDisplayed
{
  v2 = [(CKBrowserSwitcherViewController *)self->_browserSwitcher transitionCoordinator];
  v3 = [v2 isPresentingFullScreenModal];

  return v3;
}

- (id)_browserViewControllerForInterfaceOrientationMethods
{
  v3 = [(CKChatInputController *)self inputViewController];
  v4 = [(CKBrowserSwitcherViewController *)self->_browserSwitcher transitionCoordinator];
  v5 = [v4 isExpanded];

  if ((v5 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 viewController];

    if (v6)
    {
      v6 = [v3 viewController];
    }
  }

  return v6;
}

- (BOOL)browserShouldAutorotate
{
  v2 = [(CKChatInputController *)self _browserViewControllerForInterfaceOrientationMethods];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 shouldAutorotate];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)browserSupportedInterfaceOrientations
{
  v2 = [(CKChatInputController *)self _browserViewControllerForInterfaceOrientationMethods];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 supportedInterfaceOrientations];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (void)_handleOrientation
{
  v3 = [(CKChatInputController *)self orientationManager];
  v4 = [v3 currentDeviceOrientation];

  if ([(CKChatInputController *)self lastSeenOrientation])
  {
    if (v4 != [(CKChatInputController *)self lastSeenOrientation])
    {
      v5 = [MEMORY[0x1E69DC938] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (!v6 && (v4 - 1) <= 1 && [(CKChatInputController *)self handwritingIsDisplayed])
      {
        v7 = [(CKChatInputController *)self handwritingPresentationController];
        v8 = [v7 pluginPayload];

        if (v8)
        {
          [(CKChatInputController *)self startEditingPayload:v8 dismiss:1];
        }

        else
        {
          v9 = [(CKChatInputController *)self handwritingPresentationController];
          [v9 setVisible:0 animated:1];
        }
      }
    }
  }

  [(CKChatInputController *)self setLastSeenOrientation:v4];
}

- (void)setShouldBlurForMessageEditing:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKChatInputController *)self entryView];
  [v4 setShouldBlurForMessageEditing:v3];
}

- (BOOL)shouldBlurForMessageEditing
{
  v2 = [(CKChatInputController *)self entryView];
  v3 = [v2 shouldBlurForMessageEditing];

  return v3;
}

- (int64_t)determineSendMenuPresentationStyleCompatibleWithTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && [v3 horizontalSizeClass] == 2;
  return v6;
}

- (void)handleTextInputPayload:(id)a3 withPayloadID:(id)a4 forPlugin:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 length])
  {
    v11 = +[CKBalloonPluginManager sharedInstance];
    v12 = [v11 viewControllerForPluginIdentifier:v10];

    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v12 setSendDelegate:self];
      v13 = [v8 mutableCopy];
      [v13 setObject:&unk_1F04E8088 forKeyedSubscript:@"sessionStartEntryType"];
      v14 = [v13 copy];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__CKChatInputController_handleTextInputPayload_withPayloadID_forPlugin___block_invoke;
      v15[3] = &unk_1E72EB9C8;
      v16 = v10;
      [v12 handleTextInputPayload:v14 withPayloadID:v9 completion:v15];
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
  v3 = [(CKChatInputController *)self delegate];
  v10 = [v3 activeSendMenuPresentationForChatInputController:self];

  v4 = +[CKBalloonPluginManager sharedInstance];
  v5 = IMBalloonExtensionIDWithSuffix();
  v6 = [v4 pluginForExtensionIdentifier:v5];
  if (v6)
  {
    v7 = [v10 presentationStyle] == 1;
    v8 = [(CKChatInputController *)self delegate];
    v9 = [v8 sceneInterfaceOrientation];

    [(CKChatInputController *)self showBrowserForPlugin:v6 dataSource:0 style:[(CKChatInputController *)self presentationStyleInOrientation:v9 inPopover:v7 forPluginID:v5]];
  }
}

- (void)_handleSelectionOfExtensionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CKChatInputController *)self delegate];
  v6 = [v5 activeSendMenuPresentationForChatInputController:self];

  v7 = IMBalloonExtensionIDWithSuffix();
  v8 = [v4 isEqualToString:v7];

  if (v8)
  {
    [(CKChatInputController *)self showFunCamera];
    v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v10 = [v9 isPopoverSendMenuEnabled];

    if (v10)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  v11 = IMBalloonExtensionIDWithSuffix();
  if ([v4 isEqualToString:v11])
  {
    v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v13 = [v12 isZelkovaEnabled];

    if (v13)
    {
      v14 = [MEMORY[0x1E69A8218] sharedCoordinator];
      v15 = [v14 appPayloadID];

      v16 = +[CKBalloonPluginManager sharedInstance];
      v17 = [v16 viewControllerForPluginIdentifier:v4];

      v18 = [MEMORY[0x1E69A8218] sharedCoordinator];
      v19 = [v18 appPayload];

      if (!v15 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_17;
      }

      [v17 setSendDelegate:self];
      v20 = [v19 mutableCopy];
      [v20 setObject:&unk_1F04E80A0 forKeyedSubscript:@"sessionStartEntryType"];
      v21 = [v20 copy];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __67__CKChatInputController__handleSelectionOfExtensionWithIdentifier___block_invoke;
      v64[3] = &unk_1E72EB9C8;
      v65 = v4;
      [v17 handleTextInputPayload:v21 withPayloadID:v15 completion:v64];

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
  if (([v4 isEqualToString:v22] & 1) == 0)
  {

    goto LABEL_21;
  }

  v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v24 = [v23 isPollsEnabled];

  if (!v24)
  {
LABEL_21:
    v34 = IMBalloonExtensionIDWithSuffix();
    v35 = [v4 isEqualToString:v34];

    if (v35)
    {
      v36 = [(CKChatInputController *)self entryView];
      [v36 startRecordingForAudioButtonInEntryView];

      v37 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v38 = [v37 isPopoverSendMenuEnabled];

      if (v38 || [v6 presentationStyle] == 1)
      {
        [v6 dismissAnimated:1 completion:0];
      }

      goto LABEL_27;
    }

    v39 = IMBalloonExtensionIDWithSuffix();
    v40 = [v4 isEqualToString:v39];

    if (v40)
    {
      [(CKChatInputController *)self _sendLaterSelectedFromSendMenuWithPresentation:v6];
      goto LABEL_27;
    }

    v44 = IMBalloonExtensionIDWithSuffix();
    v45 = [v4 isEqualToString:v44];

    if (v45)
    {
      v46 = [v6 presentationStyle] == 1;
      v47 = [(CKChatInputController *)self delegate];
      v48 = [v47 sceneInterfaceOrientation];

      v49 = [(CKChatInputController *)self presentationStyleInOrientation:v48 inPopover:v46 forPluginID:v4];
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

    v15 = +[CKBalloonPluginManager sharedInstance];
    v17 = [v15 pluginForExtensionIdentifier:v4];
    if (v17)
    {
      v51 = [v6 presentationStyle] == 1;
      v52 = [(CKChatInputController *)self delegate];
      v53 = [v52 sceneInterfaceOrientation];

      v54 = [(CKChatInputController *)self presentationStyleInOrientation:v53 inPopover:v51 forPluginID:v4];
      [(CKChatInputController *)self showBrowserForPlugin:v17 dataSource:0 style:v54];
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

  v25 = [(CKChatInputController *)self entryView];
  v26 = [v25 composition];
  v27 = [v26 shelfPluginPayload];
  v15 = [v27 pluginBundleID];

  v28 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(v25) = [v15 isEqualToString:v28];

  if ((v25 & 1) == 0)
  {
    v29 = [MEMORY[0x1E69A8218] sharedCoordinator];
    v17 = [v29 appPayloadID];

    v30 = +[CKBalloonPluginManager sharedInstance];
    v19 = [v30 viewControllerForPluginIdentifier:v4];

    v31 = [MEMORY[0x1E69A8218] sharedCoordinator];
    v20 = [v31 appPayload];

    if (v17 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v19 setSendDelegate:self];
      v32 = [v20 mutableCopy];
      [v32 setObject:&unk_1F04E80A0 forKeyedSubscript:@"sessionStartEntryType"];
      v33 = [v32 copy];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __67__CKChatInputController__handleSelectionOfExtensionWithIdentifier___block_invoke_382;
      v62[3] = &unk_1E72EB9C8;
      v63 = v4;
      [v19 handleTextInputPayload:v33 withPayloadID:v17 completion:v62];
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
  v60 = v4;
  v61 = self;
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

- (void)sendMenuViewControllerRequestDismiss:(id)a3
{
  v4 = [(CKChatInputController *)self delegate];
  v5 = [v4 activeSendMenuPresentationForChatInputController:self];

  [v5 dismissAnimated:1 completion:0];
}

- (void)sendMenuViewControllerWillPerformFullScreenDismissAnimation:(id)a3
{
  v4 = a3;
  v5 = [(CKChatInputController *)self entryView];
  [v5 endSendMenuPresentation];

  [(CKChatInputController *)self setShouldSuppressStatusBarForSendMenu:0];
  v6 = [(CKChatInputController *)self delegate];
  [v6 chatInputController:self willBeginFullScreenDismissAnimationForSendMenuViewController:v4];
}

- (void)sendMenuDidAppear:(id)a3 presentationStyle:(int64_t)a4
{
  v5 = [(CKChatInputController *)self entryView];
  if (a4 == 1)
  {
    v6 = v5;
    [v5 beginSendMenuPopoverPresentation];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v6 = v5;
    [v5 beginSendMenuFullScreenPresentation];
  }

  v5 = v6;
LABEL_6:
}

- (void)sendMenuViewControllerDidFinishDismissAnimation:(id)a3
{
  v4 = a3;
  [(CKChatInputController *)self setShouldSuppressStatusBarForSendMenu:0];
  v5 = [(CKChatInputController *)self delegate];
  [v5 chatInputController:self didFinishDismissAnimationForSendMenuViewController:v4];
}

- (BOOL)isKeyboardSnapshotted
{
  v2 = [(CKChatInputController *)self delegate];
  v3 = [v2 isKeyboardSnapshotted];

  return v3;
}

- (void)messageEntryViewDidExpand:(id)a3
{
  v4 = [(CKChatInputController *)self insertPayloadCompletionHandler];

  if (v4)
  {
    v5 = [(CKChatInputController *)self insertPayloadCompletionHandler];
    v5[2](v5, 0);

    [(CKChatInputController *)self setInsertPayloadCompletionHandler:0];
  }
}

- (void)messageEntryViewInputDidTakeFocus:(id)a3
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

- (void)messageEntryView:(id)a3 touchUpOutsidePlusButton:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chatInputControllerShouldEndDeferringSystemNavigationPopGestureForPlusButton:self];
}

- (void)messageEntryView:(id)a3 touchCancelForPlusButton:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chatInputControllerShouldEndDeferringSystemNavigationPopGestureForPlusButton:self];
}

- (void)messageEntryView:(id)a3 touchDragExitForPlusButton:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chatInputControllerShouldEndDeferringSystemNavigationPopGestureForPlusButton:self];
}

- (void)messageEntryView:(id)a3 didLongPressPlusButton:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chatInputControllerShouldEndDeferringSystemNavigationPopGestureForPlusButton:self];

  [(CKChatInputController *)self showPhotosExtension];
}

- (void)messageEntryView:(id)a3 didReceiveInputSuggestion:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v7 isPollsIntelligentCreationEnabled])
  {
    v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v9 = [v8 isPollsEnabled];

    if (v9)
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
            v39 = v6;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Input suggestion using new IP path: %@", buf, 0xCu);
          }
        }

        v13 = v6;
        v14 = [MEMORY[0x1E695DF90] dictionary];
        [v14 setObject:&unk_1F04E80B8 forKeyedSubscript:@"sessionStartEntryType"];
        v15 = [v13 title];
        [v14 setObject:v15 forKeyedSubscript:@"pollTitle"];

        v16 = [v13 options];
        v17 = [v16 count] == 0;

        if (!v17)
        {
          v18 = 0;
          do
          {
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pollOption%02lu", v18];
            v20 = [v13 options];
            v21 = [v20 objectAtIndex:v18];

            v22 = [v21 option];
            v23 = v22;
            if (v19 && v22)
            {
              [v14 setValue:v22 forKey:v19];
            }

            v24 = [v13 options];
            v25 = [v24 count];

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
            v39 = v14;
            _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Created payload: %@", buf, 0xCu);
          }
        }

        if (!v14)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v14 = 0;
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

        v14 = [v6 smartActionResponse];
        if (!v14)
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
            v39 = v14;
            _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Payload %@", buf, 0xCu);
          }
        }

        v30 = [v14 copy];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __68__CKChatInputController_messageEntryView_didReceiveInputSuggestion___block_invoke;
        v35[3] = &unk_1E72ECCA8;
        v36 = v33;
        v37 = self;
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

- (void)_evaluateMetricsForKeyboardSuggestionWithBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v6 = objc_alloc_init(v3);
  [v6 setValue:&unk_1F04E80D0 forKey:*MEMORY[0x1E69A77A0]];
  [v6 setValue:v4 forKey:*MEMORY[0x1E69A77A8]];

  v5 = [MEMORY[0x1E69A8168] sharedInstance];
  [v5 trackEvent:*MEMORY[0x1E69A7570] withDictionary:v6];
}

- (BOOL)shouldLaunchPhotosAppForPlusButtonLongPressInMessageEntryView:(id)a3
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

- (void)messageEntryView:(id)a3 didSelectPlusButton:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chatInputControllerShouldEndDeferringSystemNavigationPopGestureForPlusButton:self];

  [(CKChatInputController *)self _presentSendMenuForAppCardContentViewController:0 appCardPresentationStyle:0];
}

- (void)_presentSendMenuForAppCardContentViewController:(id)a3 appCardPresentationStyle:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    v9 = [MEMORY[0x1E69DD2E8] keyWindow];
    v10 = [v9 firstResponder];

    v11 = [(CKChatInputController *)self entryView];
    v12 = [v11 contentView];
    v13 = [v12 textView];

    v14 = [(CKChatInputController *)self entryView];
    v15 = [v14 contentView];
    v16 = [v15 textView];
    v17 = v16;
    if (v16 == v10)
    {
    }

    else
    {
      v18 = [(CKChatInputController *)self keyboardIsVisible];

      if (v18)
      {
        [(CKChatInputController *)self showKeyboard];
      }
    }

    if (v13 == v10)
    {
      v20 = [MEMORY[0x1E69DD2E8] keyWindow];
      v21 = [v20 firstResponder];
      [v21 resignFirstResponder];
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

  v22 = [(CKChatInputController *)self delegate];
  v23 = [v22 viewControllerForChatInputModalPresentation];

  v24 = [CKDefaultSceneOverlayPresentationContext alloc];
  v25 = [v23 traitCollection];
  v26 = [(CKDefaultSceneOverlayPresentationContext *)v24 initWithChatInputController:self initialTraitCollection:v25];

  if (v6)
  {
    v27 = [CKSendMenuPresentationRequest requestWithPresentationContext:v26 appCardContentViewController:v6 resolvedAppCardPresentationStyle:a4 completion:&__block_literal_global_409_2];
  }

  else
  {
    v28 = [[CKSendMenuViewController alloc] initWithPresentationContext:v26];
    [(CKSendMenuViewController *)v28 setSendMenuViewControllerDelegate:self];
    [(CKChatInputController *)self setShouldSuppressStatusBarForSendMenu:[(CKSendMenuViewController *)v28 prefersStatusBarHidden]];
    v27 = [CKSendMenuPresentationRequest requestWithPresentationContext:v26 sendMenuViewController:v28 completion:&__block_literal_global_407_1];
  }

  v29 = [(CKChatInputController *)self delegate];
  [v29 chatInputController:self requestPresentSendMenu:v27];
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

- (BOOL)messageEntryViewShouldResignFirstResponder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (BOOL)messageEntryShouldHideCaret:(id)a3
{
  v3 = [(CKChatInputController *)self inputViewController];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)shouldPreventAppFromDisplayingForBundleIdentifier:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = IMSharedDowntimeController();
  v5 = [v4 allowedToShowAppExtensionWithBundleIdentifier:v3];

  return v5 ^ 1;
}

- (void)didSelectPlugin:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 identifier];
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Entry view selected plugin: %@", buf, 0xCu);
    }
  }

  v7 = +[CKBalloonPluginManager sharedInstance];
  [v7 updateLaunchTimeForPlugin:v4];

  v8 = [(CKChatInputController *)self delegate];
  v9 = [v8 sceneInterfaceOrientation];

  v10 = [v4 identifier];
  v11 = [v10 isEqualToString:@"com.apple.messages.browser.MorePlugin"];

  if (v11)
  {
    [(CKChatInputController *)self dismissBrowserViewController];
    v12 = [(CKChatInputController *)self browserSwitcher];
    [(CKChatInputController *)self switcherViewControllerDidSelectAppManager:v12 shouldRestoreAppSwitcher:0];
  }

  else
  {
    v13 = [v4 identifier];
    v14 = [(CKChatInputController *)self presentationStyleInOrientation:v9 inPopover:0 forPluginID:v13];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__CKChatInputController_didSelectPlugin___block_invoke;
    aBlock[3] = &unk_1E72EBC38;
    aBlock[4] = self;
    v15 = v4;
    v20 = v15;
    v21 = v14;
    v16 = _Block_copy(aBlock);
    buf[0] = 0;
    v17 = [v15 identifier];
    [(CKChatInputController *)self adjustSupportedInterfaceOrientationForPluginID:v17 requiredPortrait:buf];

    if (buf[0] == 1 && (v9 - 3) <= 1)
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

- (BOOL)messageEntryViewShouldVerticallyInsetForPresentedAppCard:(id)a3
{
  v4 = [(CKChatInputController *)self appCardPresentationOverseer];
  v5 = [v4 isPresentingCard];

  return v5 && !self->_isAppCardDraggingBelowKeyboardDetent;
}

- (BOOL)isPresentingAppCardForMessageEntryView:(id)a3
{
  v3 = [(CKChatInputController *)self appCardPresentationOverseer];
  v4 = [v3 isPresentingCard];

  return v4;
}

- (BOOL)isPresentingBarelyVisibleAppCardForMessageEntryView:(id)a3
{
  v4 = [(CKChatInputController *)self isPresentingAppCardForMessageEntryView:a3];
  if (v4)
  {
    v5 = [(CKChatInputController *)self appCardPresentationOverseer];
    v6 = [v5 isPresentingBarelyVisibleAppCard];

    LOBYTE(v4) = v6;
  }

  return v4;
}

- (void)adjustSupportedInterfaceOrientationForPluginID:(id)a3 requiredPortrait:(BOOL *)a4
{
  v7 = [(CKChatInputController *)self shouldInterfaceBeRestrictedToPortraitForPluginID:?];
  if (a3)
  {
    v8 = v7;
    if (a4)
    {
      *a4 = v7;
    }

    v9 = [(CKChatInputController *)self delegate];
    v10 = v9;
    if (v8)
    {
      [v9 updateSupportedInterfaceOrientations:2];
    }

    else
    {
      [v9 stopForcingOrientation];
    }
  }
}

- (BOOL)shouldInterfaceBeRestrictedToPortraitForPluginID:(id)a3
{
  v3 = *MEMORY[0x1E69A6988];
  v4 = a3;
  LOBYTE(v3) = [v4 isEqualToString:v3];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69A69A8]];

  return (v3 | v5) & 1;
}

- (unint64_t)presentationStyleInOrientation:(int64_t)a3 inPopover:(BOOL)a4 forPluginID:(id)a5
{
  v5 = a4;
  v7 = a5;
  if ([v7 isEqualToString:*MEMORY[0x1E69A6988]] & 1) != 0 || (IMBalloonExtensionIDWithSuffix(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, (v9))
  {
    v10 = 1;
  }

  else
  {
    v12 = IMBalloonExtensionIDWithSuffix();
    v13 = [v7 isEqualToString:v12];

    if (v13)
    {
      v10 = 2;
    }

    else
    {
      v14 = [MEMORY[0x1E69DC938] currentDevice];
      v15 = [v14 userInterfaceIdiom];

      if ((v15 & 0xFFFFFFFFFFFFFFFBLL) == 1 && v5)
      {
        v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v17 = [v16 isSendMenuEnabled];

        v10 = v17;
      }

      else
      {
        v18 = [MEMORY[0x1E69DC938] currentDevice];
        v19 = [v18 userInterfaceIdiom];

        v10 = (a3 - 3) < 2 && (v19 & 0xFFFFFFFFFFFFFFFBLL) != 1;
      }
    }
  }

  return v10;
}

- (id)balloonPluginForIndexPath:(id)a3
{
  v3 = a3;
  v4 = [v3 item];
  v5 = +[CKBalloonPluginManager sharedInstance];
  v6 = [v5 visibleDrawerPlugins];

  if ([v6 count] <= v4)
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
    v7 = [v6 objectAtIndexedSubscript:v4];
  }

  return v7;
}

- (void)messageEntryView:(id)a3 didSelectPluginAtIndex:(id)a4
{
  v5 = a4;
  v6 = [(CKChatInputController *)self balloonPluginForIndexPath:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 appBundle];
    v9 = [v8 bundleIdentifier];

    if ([(CKChatInputController *)self shouldPreventAppFromDisplayingForBundleIdentifier:v9])
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 postNotificationName:@"com.apple.messages.CKScreenTimeDidEnterCurrentAppRestrictionNotification" object:0];
    }

    else
    {
      [(CKChatInputController *)self didSelectPlugin:v7];
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CKChatInputController messageEntryView:v5 didSelectPluginAtIndex:v9];
    }
  }
}

- (void)entryViewDidChangeSize
{
  v2 = [(CKChatInputController *)self delegate];
  [v2 chatInputDidChangeSize];
}

- (void)openURL:(id)a3 pluginID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:v9])
  {
    if (v8)
    {
      v11 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke_3;
      block[3] = &unk_1E72F21A8;
      v12 = v18;
      v18[0] = v8;
      v13 = v10;
      v18[1] = self;
      v19 = v13;
      dispatch_async(v11, block);

LABEL_16:
      goto LABEL_17;
    }

    if (v10)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke_2;
      v20[3] = &unk_1E72EBDB8;
      v12 = &v21;
      v21 = v10;
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

    if (v10)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __60__CKChatInputController_openURL_pluginID_completionHandler___block_invoke;
      v22[3] = &unk_1E72EBDB8;
      v12 = &v23;
      v23 = v10;
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

- (void)openURL:(id)a3 applicationIdentifier:(id)a4 pluginID:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(MEMORY[0x193AF5EC0](@"FBSOpenApplicationService", @"FrontBoardServices"));
  [(CKChatInputController *)self _openContainingBundleID:v12 applicationService:v14 withURL:v13 pluginID:v11 completionHandler:v10];
}

- (void)_openContainingBundleID:(id)a3 applicationService:(id)a4 withURL:(id)a5 pluginID:(id)a6 completionHandler:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:v15];
  v18 = IMOSLoggingEnabled();
  if (v17)
  {
    if (v18)
    {
      CKLogCStringForType(13);
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = _Block_copy(v16);
        *buf = 138412802;
        v40 = self;
        v41 = 2112;
        v42 = v14;
        v43 = 2112;
        v44 = v20;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "_openURL %@ URL %@ completionHandler %@", buf, 0x20u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v29 = _Block_copy(v16);
      _CKLogExternal();
    }

    if (v14)
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(13);
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = v12;
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

      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v14, v22, 0, v29}];
      if (__FBSOpenApplicationOptionsClass_onceToken != -1)
      {
        [CKChatInputController _openContainingBundleID:applicationService:withURL:pluginID:completionHandler:];
      }

      v26 = [__FBSOpenApplicationOptionsClass__optionsClass optionsWithDictionary:v27];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __103__CKChatInputController__openContainingBundleID_applicationService_withURL_pluginID_completionHandler___block_invoke_435;
      v30[3] = &unk_1E72F56E0;
      v31 = v14;
      v32 = v12;
      v33 = v27;
      v34 = v16;
      v28 = v27;
      [v13 openApplication:v32 withOptions:v26 completion:v30];
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __103__CKChatInputController__openContainingBundleID_applicationService_withURL_pluginID_completionHandler___block_invoke_427;
      v35[3] = &unk_1E72EBDB8;
      v36 = v16;
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

  if (v16)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__CKChatInputController__openContainingBundleID_applicationService_withURL_pluginID_completionHandler___block_invoke;
    block[3] = &unk_1E72EBDB8;
    v38 = v16;
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

- (BOOL)commitPayloadBypassingValidation:(id)a3 forPlugin:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setUseDirectSend:1];
  v8 = [v6 pluginBundleID];

  if (!v8)
  {
    [v6 setPluginBundleID:v7];
  }

  [(CKChatInputController *)self performSelector:sel_deferredCommitPayload_ withObject:v6 afterDelay:0.1];

  return 1;
}

- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CKChatInputController *)self appCardPresentationOverseer];
  [v5 checkForTouchInExtensionWithCompletion:v4];
}

- (void)deferredCommitPayload:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setIsFromMe:1];
  if ([v4 isUpdate])
  {
    v5 = [(CKChatInputController *)self browserPluginDataSource];
    v6 = [v4 datasource];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    [v4 setDatasource:v8];

    v9 = [v4 messageGUID];
    if (v9)
    {
      [v4 setMessageGUID:v9];
    }

    else
    {
      v10 = [v5 messageGUID];
      [v4 setMessageGUID:v10];
    }
  }

  v11 = [(CKChatInputController *)self handwritingIsDisplayed];
  v12 = [(CKChatInputController *)self handwritingPresentationController];

  if (v12)
  {
    v13 = [(CKChatInputController *)self handwritingPresentationController];
    [v13 setVisible:0 animated:1];
  }

  if (v4 && ([v4 pluginBundleID], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    if ([v4 shouldExpire])
    {
      v15 = [CKComposition newExpirableCompositionWithText:0 subject:0 shelfPluginPayload:v4];
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
    v18 = v4;
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
        v17 = [(CKChatInputController *)self pluginBundleID];
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Attempting to commit nil payload or payload with no identifier; current visible plugin is %@", buf, 0xCu);
      }
    }

    if (v11)
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

  v4 = [MEMORY[0x1E69A5AD0] sharedInstance];
  [v4 loadExtensionWithIdentifierIfNeeded:v3];

  v5 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v6 = [v5 balloonPluginForBundleID:v3];

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

- (void)dismissStickerPickerPreservingChatItem:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  block = a4;
  v6 = [(CKChatInputController *)self stickerPickerMessagePartChatItem];

  if (v6)
  {
    if (!v4)
    {
      [(CKChatInputController *)self setStickerPickerMessagePartChatItem:0];
      [(CKChatInputController *)self setStickerPickerMessagePartParentChatItem:0];
      [(CKChatInputController *)self endStickerReactionSession];
    }

    if (CKIsAppCardsEnabled())
    {
      v7 = [(CKChatInputController *)self delegate];
      v8 = [v7 viewControllerForChatInputModalPresentation];
      [v8 dismissViewControllerAnimated:1 completion:block];

      [(CKChatInputController *)self forceDismissBrowserWithoutAnimation];
    }

    else
    {
      [(CKChatInputController *)self dismissBrowserViewController];
      v9 = [(CKChatInputController *)self entryView];
      v10 = [v9 contentView];
      v11 = [v10 textView];
      [v11 resignFirstResponder];

      if (block)
      {
        v12 = dispatch_time(0, 300000000);
        dispatch_after(v12, MEMORY[0x1E69E96A0], block);
      }
    }

    [(CKChatInputController *)self setBrowserPlugin:0];
    [(CKChatInputController *)self stickerPickerWasHiddenPreservingChatItem:v4];
  }
}

- (BOOL)isPresentingStickerPicker
{
  v2 = [(CKChatInputController *)self stickerPickerMessagePartChatItem];
  v3 = v2 != 0;

  return v3;
}

- (void)stickerPickerWasHiddenPreservingChatItem:(BOOL)a3
{
  v5 = [(CKChatInputController *)self stickerPickerMessagePartChatItem];

  if (v5)
  {
    v6 = [(CKChatInputController *)self stickerPickerMessagePartChatItem];
    if (!a3)
    {
      [(CKChatInputController *)self setStickerPickerMessagePartChatItem:0];
      [(CKChatInputController *)self setStickerPickerMessagePartParentChatItem:0];
      [(CKChatInputController *)self endStickerReactionSession];
    }

    v7 = [(CKChatInputController *)self delegate];
    [v7 chatInputController:self didPresentStickerPickerForChatItem:v6];

    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CKChatInputController stickerPickerWasHiddenPreservingChatItem:];
    }
  }
}

- (void)commitSticker:(id)a3 forPlugin:(id)a4 stickerFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  v13 = [(CKChatInputController *)self delegate];
  v14 = [v13 viewControllerForChatInputModalPresentation];
  v15 = [v14 presentedViewController];
  v29 = [v15 view];

  v16 = [(CKChatInputController *)self delegate];
  v17 = [v16 viewControllerForChatInputModalPresentation];
  v18 = [v17 view];
  v19 = [v18 window];
  v20 = [v19 coordinateSpace];
  [v29 convertRect:v20 toCoordinateSpace:{x, y, width, height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [(CKChatInputController *)self commitSticker:v12 forPlugin:v11 bypassValidation:0 stickerFrame:v22, v24, v26, v28];
}

- (void)commitSticker:(id)a3 forPlugin:(id)a4 bypassValidation:(BOOL)a5 stickerFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = [(CKChatInputController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [MEMORY[0x1E69DD2E8] keyWindow];
    v18 = [v17 firstResponder];
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v27 = 138412546;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Current keyWindow:%@ firstResponder: %p", &v27, 0x16u);
    }

    v20 = [(CKChatInputController *)self delegate];
    v21 = [v20 commitStickerAsTapback:v13];

    if (v21)
    {
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v13;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Committed sticker as tapback: %@", &v27, 0xCu);
      }

      goto LABEL_15;
    }
  }

  v17 = [(CKChatInputController *)self stickerReactionSession];
  if (v17)
  {
    v18 = [(CKChatInputController *)self delegate];
    v23 = [(CKChatInputController *)self stickerPickerMessagePartChatItem];
    v24 = [(CKChatInputController *)self stickerPickerMessagePartParentChatItem];
    [v18 sendAutomaticallyPlacedSticker:v13 stickerReactionSession:v17 forChatItem:v23 forParentChatItem:v24 stickerFrame:0 animationCompletionHandler:{x, y, width, height}];

LABEL_15:
    goto LABEL_16;
  }

  if (a5 || -[CKChatInputController switcherPluginCanMessageAPIOnBehalfOfPlugin:](self, "switcherPluginCanMessageAPIOnBehalfOfPlugin:", v14) || (IMBalloonExtensionIDWithSuffix(), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v14 isEqualToString:v25], v25, v26))
  {
    [(CKChatInputController *)self performSelector:sel__deferredCommitSticker_ withObject:v13 afterDelay:0.1];
    v18 = +[CKBalloonPluginManager sharedInstance];
    [v18 updateInteractionTimeForPlugin:v14];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)commitSticker:(id)a3 stickerFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(CKChatInputController *)self browserPlugin];
  v12 = [v10 identifier];

  v11 = +[CKBalloonPluginManager sharedInstance];
  [v11 updateInteractionTimeForPlugin:v12];

  [(CKChatInputController *)self commitSticker:v9 forPlugin:0 stickerFrame:x, y, width, height];
}

- (void)_deferredCommitSticker:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Deferred Committing sticker: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E69A8168] sharedInstance];
  [v6 trackEvent:*MEMORY[0x1E69A7748]];

  v7 = [v4 uiSticker];
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__CKChatInputController__deferredCommitSticker___block_invoke;
    v8[3] = &unk_1E72EFB88;
    v8[4] = self;
    [v7 stk_renderBakedInRepIfNecessaryWithCompletion:v8];
  }

  else
  {
    [(CKChatInputController *)self _insertUISticker:v7];
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

- (void)_insertUISticker:(id)a3
{
  v4 = a3;
  v5 = [v4 _ck_plainStringEmojiText];
  if ([v5 length])
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Handling sticker app sticker insertion as plain string system emoji text", buf, 2u);
    }

    v7 = [(CKChatInputController *)self entryView];
    v8 = [v7 contentView];
    v9 = [v8 textView];

    [v9 insertText:v5];
  }

  else
  {
    v10 = [(CKChatInputController *)self targetConversation];
    v11 = [v10 supportsInlineAdaptiveImageGlyphs];

    v12 = [v4 _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
    v13 = IMLogHandleForCategory();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v11 && v12)
    {
      if (v14)
      {
        *v18 = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Handling sticker app sticker insertion as adaptive image glyph", v18, 2u);
      }

      [(CKChatInputController *)self insertUIStickerAsAdaptiveImageGlyph:v4];
    }

    else
    {
      if (v14)
      {
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Handling sticker app sticker insertion as sticker added to shelf", v17, 2u);
      }

      v15 = [objc_alloc(MEMORY[0x1E69A82C0]) initWithUISticker:v4 adaptiveImageGlyph:0];
      v16 = [CKBrowserItemPayload browserItemFromSticker:v15];
      [(CKChatInputController *)self startEditingPayload:v16];
    }
  }
}

- (void)commitSticker:(id)a3 withDragTarget:(id)a4 draggedSticker:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v9 description];
    v20 = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Committing sticker: %@, for drag target: %@", &v20, 0x16u);
  }

  v13 = [(CKChatInputController *)self stickerReactionSession];
  v14 = [v13 didSendSticker];

  if ((v14 & 1) == 0)
  {
    v15 = [(CKChatInputController *)self browserPlugin];
    v16 = [v15 identifier];

    v17 = +[CKBalloonPluginManager sharedInstance];
    [v17 updateInteractionTimeForPlugin:v16];

    v18 = [(CKChatInputController *)self delegate];
    [v18 sendSticker:v8 withDragTarget:v9 draggedSticker:v10];

    v19 = [(CKChatInputController *)self stickerReactionSession];

    if (v19)
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
    v12 = [(CKChatInputController *)self pluginToResumeForStickerDrag];
    if (!v12)
    {
      v3 = +[CKBalloonPluginManager sharedInstance];
      v4 = IMStickersExtensionIdentifier();
      v5 = IMBalloonExtensionIDWithSuffix();
      v12 = [v3 pluginForIdentifier:v5];
    }

    [(CKChatInputController *)self setPluginToResumeForStickerDrag:0];
    [(CKChatInputController *)self showBrowserForPlugin:v12 dataSource:0 style:[(CKChatInputController *)self savedStyleForDragCompletion]];
    [(CKChatInputController *)self setSavedStyleForDragCompletion:0];
  }

  else
  {
    v6 = [(CKChatInputController *)self currentPresentationConfig];
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = [(CKChatInputController *)self stickerReactionSession];

    if (!v8)
    {
      return;
    }

    v12 = IMStickersExtensionIdentifier();
    v9 = IMBalloonExtensionIDWithSuffix();
    v10 = [(CKChatInputController *)self currentPresentationConfig];
    v11 = [v10 sourceView];
    [(CKChatInputController *)self showPluginWithExtensionIdentifier:v9 sourceView:v11];
  }
}

- (void)commitSticker:(id)a3 atScreenCoordinate:(CGPoint)a4 scale:(double)a5 rotation:(double)a6 stickerFrame:(CGRect)a7
{
  y = a4.y;
  x = a4.x;
  v28 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v29.x = x;
    v29.y = y;
    v14 = NSStringFromPoint(v29);
    v20 = 138413058;
    v21 = v12;
    v22 = 2112;
    v23 = v14;
    v24 = 2048;
    v25 = a5;
    v26 = 2048;
    v27 = a6;
    _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Committing sticker %@ at screen coordinate: %@, scale: %f, rotation: %f", &v20, 0x2Au);
  }

  v15 = [CKBrowserDragControllerTarget targetWithScreenCoordinate:0 initialSize:x scale:y meshScaleFactor:*MEMORY[0x1E695F060] rotation:*(MEMORY[0x1E695F060] + 8) associatedLayoutIntent:a5, 0.4, a6];
  v16 = [(CKChatInputController *)self browserPlugin];
  v17 = [v16 identifier];

  v18 = +[CKBalloonPluginManager sharedInstance];
  [v18 updateInteractionTimeForPlugin:v17];

  v19 = [(CKChatInputController *)self delegate];
  [v19 sendSticker:v12 withDragTarget:v15 draggedSticker:0];

  [(CKChatInputController *)self dismissStickerPickerPreservingChatItem:0 completion:0];
}

- (id)dragControllerTranscriptDelegate
{
  v2 = [(CKChatInputController *)self delegate];
  v3 = [v2 dragControllerTranscriptDelegate];

  return v3;
}

- (void)dismissAndReloadInputViews:(BOOL)a3 forPlugin:(id)a4
{
  v6 = a4;
  v7 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CKChatInputController_dismissAndReloadInputViews_forPlugin___block_invoke;
  block[3] = &unk_1E72EBBC0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
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
  v3 = [(CKChatInputController *)self handwritingPresentationController];

  if (v3)
  {
    v4 = [(CKChatInputController *)self handwritingPresentationController];
    [v4 setVisible:0 animated:1];
  }

  else
  {

    [(CKChatInputController *)self dismissBrowserViewController];
  }
}

- (void)_deferredDismissToKeyboardAndFocusEntryView:(id)a3
{
  v4 = a3;
  if ([(CKChatInputController *)self isDisplayingReplaceCompositionAlert])
  {
    self->_dismissPluginAfterReplaceAlertInteractedWith = 1;
    goto LABEL_36;
  }

  [(CKChatInputController *)self setIsDisplayingReplaceCompositionAlert:0];
  v5 = [(CKChatInputController *)self handwritingPresentationController];

  if (v5)
  {
    v6 = [(CKChatInputController *)self handwritingPresentationController];
    [v6 setVisible:0 animated:1];
  }

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(CKChatInputController *)self appCardPresentationOverseer];
    v9 = [v10 shouldAnimateDismissal];
  }

  v11 = [v4 BOOLValue];
  if ([(CKChatInputController *)self appModalIsDisplayed])
  {
    self->_isDismissingAppModal = 1;
    v12 = [(CKChatInputController *)self browserSwitcher];
    v13 = [v12 transitionCoordinator];

    if (v11)
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
    [v13 dismissCurrentFullScreenModalAnimated:1 completion:v28];

    goto LABEL_34;
  }

  if (![(CKChatInputController *)self _isAppBrowserFullScreen])
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    if ([v14 canPresentOverKeyboard])
    {
      v15 = [(CKChatInputController *)self isInputViewVisible];

      if (v15)
      {
        [MEMORY[0x1E69DCBB8] sizeForInterfaceOrientation:CKNonFlatDeviceOrientation() ignoreInputView:1];
        v17 = v16;
        v18 = [(CKChatInputController *)self delegate];
        [v18 chatInputWillChangeHeightForCompactPresentation:v17];
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
      [(CKChatInputController *)self _dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention:v9 overrideExceptions:1 focusEntryView:v11];
    }

    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_34;
    }

    v19 = [(CKChatInputController *)self delegate];
    v18 = [v19 viewControllerForChatInputModalPresentation];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v18 isModal];
    }

    else
    {
      v20 = 0;
    }

    v21 = [v18 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 && (v20 & 1) == 0)
    {
      [v18 dismissViewControllerAnimated:1 completion:0];
    }

    goto LABEL_33;
  }

  if (v11)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __69__CKChatInputController__deferredDismissToKeyboardAndFocusEntryView___block_invoke_4;
    v26 = &unk_1E72EBA18;
    v27 = self;
    im_dispatch_after();
  }

  if (CKIsAppCardsEnabled())
  {
    [(CKChatInputController *)self _dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention:v9 overrideExceptions:1 focusEntryView:v11];
    goto LABEL_34;
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
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

- (void)_dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention:(BOOL)a3 overrideExceptions:(BOOL)a4 focusEntryView:(BOOL)a5
{
  v9 = [(CKChatInputController *)self appCardPresentationOverseer];
  v10 = [v9 isPresentingCard];

  if (v10)
  {
    v11 = dispatch_time(0, 150000000);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __126__CKChatInputController__dismissAppCardIfNecessaryAnimatedAndResetFirstResponderPrevention_overrideExceptions_focusEntryView___block_invoke;
    v13[3] = &unk_1E72F0310;
    v13[4] = self;
    v14 = a3;
    v15 = a5;
    v16 = a4;
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
  v3 = [(CKChatInputController *)self delegate];
  v17 = [v3 activeSendMenuPresentationForChatInputController:self];

  v4 = [(CKChatInputController *)self delegate];
  v5 = [v4 viewControllerForChatInputModalPresentation];

  if (v17)
  {
    [v17 dismissAnimated:1 completion:0];
    goto LABEL_12;
  }

  v6 = [(CKChatInputController *)self appCardPresentationOverseer];
  if ([v6 isPresentingCard])
  {
    v7 = [v5 traitCollection];
    v8 = [v7 verticalSizeClass];

    if (v8 == 1)
    {
      v9 = [(CKChatInputController *)self appCardPresentationOverseer];
      v10 = v9;
      v11 = &__block_literal_global_461_2;
LABEL_9:
      [v9 dismissCardAnimated:1 completion:v11];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v12 = [(CKChatInputController *)self appCardPresentationOverseer];
  v13 = [v12 isExpanded];

  if (v13)
  {
    [(CKChatInputController *)self setDidDismissAppCardForStickerDrag:1];
    v14 = [(CKChatInputController *)self browserPlugin];
    [(CKChatInputController *)self setPluginToResumeForStickerDrag:v14];

    v15 = [(CKChatInputController *)self appCardPresentationOverseer];
    -[CKChatInputController setSavedStyleForDragCompletion:](self, "setSavedStyleForDragCompletion:", [v15 isExpanded]);

    v9 = [(CKChatInputController *)self appCardPresentationOverseer];
    v10 = v9;
    v11 = &__block_literal_global_463_2;
    goto LABEL_9;
  }

  v16 = [(CKChatInputController *)self stickerReactionSession];

  if (v16)
  {
    [(CKChatInputController *)self dismissStickerPickerPreservingChatItem:1 completion:0];
  }

LABEL_12:
}

- (void)canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:v8])
  {
    v7 = [v8 isEqualToString:*MEMORY[0x1E69A6988]];
  }

  else
  {
    v7 = 0;
  }

  v6[2](v6, v7);
}

- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v7 = a5;
  if (-[CKChatInputController switcherPluginCanMessageAPIOnBehalfOfPlugin:](self, "switcherPluginCanMessageAPIOnBehalfOfPlugin:", v8) && [v8 isEqualToString:*MEMORY[0x1E69A6988]])
  {
    [(CKChatInputController *)self presentAppStoreForURL:0];
  }

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)requestPresentationStyleExpanded:(BOOL)a3 forPlugin:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  if ([(CKChatInputController *)self currentPluginIsDT])
  {
    [(CKChatInputController *)self _deferredRequestPresentationStyleExpanded:v6];
  }

  else if ([(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:v7])
  {
    [(CKChatInputController *)self performSelector:sel__deferredRequestPresentationStyleExpanded_ withObject:v6 afterDelay:0.1];
  }
}

- (void)requestTransitionPluginFromFullScreen:(id)a3 toExpanded:(BOOL)a4
{
  v6 = a3;
  [(CKChatInputController *)self _deferredDismissToKeyboardAndFocusEntryView:MEMORY[0x1E695E110]];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__CKChatInputController_requestTransitionPluginFromFullScreen_toExpanded___block_invoke;
  block[3] = &unk_1E72EBBC0;
  v11 = a4;
  v9 = v6;
  v10 = self;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__CKChatInputController_requestTransitionPluginFromFullScreen_toExpanded___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = +[CKBalloonPluginManager sharedInstance];
  v3 = [v4 pluginForExtensionIdentifier:*(a1 + 32)];
  [*(a1 + 40) showBrowserForPlugin:v3 dataSource:0 style:v2];
}

- (void)requestPresentationStyleFullScreenModalForPlugin:(id)a3 dataSource:(id)a4 preferredContentSize:(CGSize)a5 skipValidation:(BOOL)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  if (a6 || [(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:v11])
  {
    v13 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__CKChatInputController_requestPresentationStyleFullScreenModalForPlugin_dataSource_preferredContentSize_skipValidation___block_invoke;
    block[3] = &unk_1E72F5708;
    block[4] = self;
    v15 = v11;
    v16 = v12;
    v17 = width;
    v18 = height;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);
  }
}

- (void)_deferredRequestPresentationStyleExpanded:(id)a3
{
  v4 = a3;
  if (CKIsAppCardsEnabled())
  {
    v5 = [v4 BOOLValue];
    v6 = [(CKChatInputController *)self appCardPresentationOverseer];
    [v6 requestPresentationStyle:v5 animated:1];
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CKChatInputController _deferredRequestPresentationStyleExpanded:];
    }
  }
}

- (void)_deferredRequestFullScreenModalForPluginIdentifier:(id)a3 dataSource:(id)a4 preferredContentSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  v10 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    v11 = [(CKChatInputController *)self delegate];
    v12 = [v11 viewControllerForChatInputModalPresentation];
    v13 = [v12 presentedViewController];

    if ([v13 conformsToProtocol:&unk_1F05AEEC8])
    {
      [(CKChatInputController *)self setMacBrowserViewController:v13];
    }
  }

  v14 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v16 = [v14 balloonPluginForBundleID:v10];

  v15 = [(CKChatInputController *)self browserSwitcher];
  [v15 showBrowserFullscreenModalForPlugin:v16 datasource:v9 preferredContentSize:{width, height}];
}

- (BOOL)_isAppBrowserFullScreen
{
  if (CKIsAppCardsEnabled())
  {
    v3 = [(CKChatInputController *)self appCardPresentationOverseer];
    v4 = [v3 isExpanded];
  }

  else
  {
    v3 = [(CKChatInputController *)self browserSwitcher];
    v5 = [v3 transitionCoordinator];
    v4 = [v5 currentConsumer] == 2;
  }

  return v4;
}

- (void)startEditingPayloadBypassingValidation:(id)a3 forPlugin:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([(CKChatInputController *)self _shouldDeferCallbackForInsertingPayload])
    {
      [(CKChatInputController *)self setInsertPayloadCompletionHandler:v10];
    }

    else
    {
      v10[2](v10, 0);
    }
  }

  v11 = dispatch_time(0, 100000000);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __85__CKChatInputController_startEditingPayloadBypassingValidation_forPlugin_completion___block_invoke;
  v17 = &unk_1E72EB8D0;
  v18 = self;
  v19 = v8;
  v12 = v8;
  dispatch_after(v11, MEMORY[0x1E69E96A0], &v14);
  v13 = [CKBalloonPluginManager sharedInstance:v14];
  [v13 updateInteractionTimeForPlugin:v9];
}

- (void)appendMediaPayloadToText:(id)a3
{
  v4 = a3;
  v5 = [(CKChatInputController *)self delegate];
  [v5 chatInputController:self didRequestAppendToCompositionForPayload:v4];
}

- (void)startEditingPayload:(id)a3
{
  v6 = a3;
  v4 = [(CKChatInputController *)self entryView];
  v5 = [v4 contentView];
  [v5 prepareForShelfPayloadAnimation];

  [(CKChatInputController *)self _startEditingPayload:v6];
}

- (void)startEditingPayload:(id)a3 dismiss:(BOOL)a4 forPlugin:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(CKChatInputController *)self currentPluginIsDT]|| [(CKChatInputController *)self handwritingIsDisplayed])
  {
    [(CKChatInputController *)self startEditingPayload:v10];
  }

  else if ([(CKChatInputController *)self _pluginCanMessageAPI:v11]|| [(CKChatInputController *)self switcherPluginCanMessageAPIOnBehalfOfPlugin:v11])
  {
    if (v12)
    {
      if ([(CKChatInputController *)self _shouldDeferCallbackForInsertingPayload])
      {
        [(CKChatInputController *)self setInsertPayloadCompletionHandler:v12];
      }

      else
      {
        v12[2](v12, 0);
      }
    }

    v16 = dispatch_time(0, 100000000);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __74__CKChatInputController_startEditingPayload_dismiss_forPlugin_completion___block_invoke;
    v20 = &unk_1E72EB8D0;
    v21 = self;
    v22 = v10;
    dispatch_after(v16, MEMORY[0x1E69E96A0], &v17);
  }

  v13 = [CKBalloonPluginManager sharedInstance:v17];
  [v13 updateInteractionTimeForPlugin:v11];

  if (v8)
  {
    [(CKChatInputController *)self dismiss];
    v14 = [(CKChatInputController *)self handwritingPresentationController];

    if (v14)
    {
      v15 = [(CKChatInputController *)self handwritingPresentationController];
      [v15 setVisible:0 animated:1];
    }
  }
}

- (void)_startEditingPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 pluginBundleID];

  if (!v5)
  {
    v6 = [(CKChatInputController *)self pluginBundleID];
    [v4 setPluginBundleID:v6];
  }

  [v4 setIsFromMe:1];
  if (v4)
  {
    if ([v4 shouldExpire])
    {
      v7 = [CKComposition newExpirableCompositionWithText:0 subject:0 shelfPluginPayload:v4];
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
    v15 = self;
    v8 = v4;
    v16 = v8;
    v9 = _Block_copy(&v11);
    v10 = v9;
    if (v7)
    {
      (*(v9 + 2))(v9, v7, 0);
    }

    else
    {
      [CKComposition compositionWithShelfPluginPayload:v8 completionHandler:v9, v11, v12, v13, v14, v15];
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

- (BOOL)_shouldSendTypingIndicatorDataForPluginIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 rangeOfString:*MEMORY[0x1E69A69F0]] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pluginBundleID
{
  v3 = [(CKChatInputController *)self handwritingPresentationController];
  v4 = [v3 visible];

  if (v4)
  {
    v5 = [(CKChatInputController *)self handwritingPresentationController];
    [v5 pluginBundleID];
  }

  else
  {
    v5 = [(CKChatInputController *)self browserPlugin];
    [v5 identifier];
  }
  v6 = ;

  return v6;
}

- (void)setLocalUserIsTyping:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKChatInputController *)self pluginBundleID];
  v6 = [(CKChatInputController *)self _shouldSendTypingIndicatorDataForPluginIdentifier:v5];

  if (v6)
  {
    v7 = [(CKChatInputController *)self browserPlugin];
    v10 = [v7 __ck_statusJPEGImageDataForTransportWithCompressionFactor:0.2];
  }

  else
  {
    v10 = 0;
  }

  v8 = [(CKChatInputController *)self delegate];
  v9 = [(CKChatInputController *)self pluginBundleID];
  [v8 setLocalUserIsComposing:v3 withPluginBundleID:v9 typingIndicatorData:v10];
}

- (void)showEntryViewPhotosShelf:(id)a3 completion:(id)a4
{
  v47 = a3;
  v6 = a4;
  v7 = IMBalloonExtensionIDWithSuffix();
  v8 = [(CKChatInputController *)self entryView];
  v9 = [v8 composition];
  v10 = [v9 shelfPluginPayload];

  v11 = [v10 pluginBundleID];
  v46 = [v11 isEqualToString:*MEMORY[0x1E69A6A00]];
  if (v7)
  {
    v12 = IMBalloonExtensionIDWithSuffix();
    v13 = [v7 isEqualToString:v12];
  }

  else
  {
    v14 = v11;
    v12 = [v10 pluginBundleID];
    v15 = IMBalloonExtensionIDWithSuffix();
    if ([v12 isEqualToString:v15])
    {
      v13 = [v10 shouldSendAsMediaObject];
    }

    else
    {
      v13 = 0;
    }

    v11 = v14;
  }

  v16 = objc_alloc_init(CKBrowserItemPayload);
  v45 = v7;
  [(CKBrowserItemPayload *)v16 setPluginBundleID:v7];
  [(CKBrowserItemPayload *)v16 setPhotoShelfViewController:v47];
  v17 = [CKComposition compositionWithShelfPluginPayload:v16];
  v18 = [(CKChatInputController *)self entryView];
  v19 = [v18 composition];

  v20 = [v19 shelfPluginPayload];

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

    v22 = [MEMORY[0x1E69A5B80] sharedInstance];
    [v22 preWarmConnection];
  }

  v44 = v17;
  if (v19)
  {
    v23 = [v19 compositionByAppendingComposition:v17];
  }

  else
  {
    v23 = v17;
  }

  if ((v20 == 0) | v46 & 1 | v13 & 1)
  {
    v24 = [(CKChatInputController *)self entryView];

    if (v24)
    {
      v25 = [(CKChatInputController *)self entryView];
      [v25 setComposition:v23];
    }

    else
    {
      [(CKChatInputController *)self setDeferredComposition:v23];
    }

    v41 = v45;
    if (v6)
    {
      v6[2](v6, 1);
    }
  }

  else
  {
    v26 = CKFrameworkBundle();
    v42 = v16;
    [v26 localizedStringForKey:@"SHELF_REPLACE_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v27 = v43 = v11;
    CKFrameworkBundle();
    v29 = v28 = v6;
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

    v6 = v28;
    v36 = CKFrameworkBundle();
    v37 = [v36 localizedStringForKey:@"SHELF_REPLACE_ITEM_CANCEL_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __61__CKChatInputController_showEntryViewPhotosShelf_completion___block_invoke_2;
    v48[3] = &unk_1E72F5780;
    v50 = v46;
    v48[4] = self;
    v38 = v34;
    v11 = v43;
    v49 = v38;
    v39 = [CKAlertAction actionWithTitle:v37 style:0 handler:v48];
    [v31 addAction:v39];

    v16 = v42;
    v40 = [(CKChatInputController *)self delegate];
    [v31 presentFromViewController:v40 animated:1 completion:0];

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

- (void)generatePreviewAndStoreInCacheForSendingPhotoFromPayload:(id)a3
{
  v4 = [a3 fileURL];
  [(CKChatInputController *)self _beginPreviewCreationWithFileURL:v4];
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

- (void)_beginPreviewCreationWithFileURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[CKDBFileTransfer alloc] initWithFileURL:v4 transcoderUserInfo:0 attributionInfo:0 hideAttachment:0];
    v6 = [v4 lastPathComponent];
    [(CKDBFileTransfer *)v5 setFilename:v6];

    [(CKDBFileTransfer *)v5 setTransferState:5];
    [(CKDBFileTransfer *)v5 setPreviewGenerationState:1];
    v7 = +[CKMediaObjectManager sharedInstance];
    v8 = [(CKDBFileTransfer *)v5 filename];
    v9 = [v7 classForFilename:v8];

    v10 = +[CKMessageContext selfContext];
    v11 = [[v9 alloc] initWithTransfer:v5 context:v10 forceInlinePreview:1];
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 previewMaxWidth];
    v14 = v13;

    v15 = [v11 previewCacheKeyWithOrientation:1];
    v16 = [(CKChatInputController *)self delegate];
    v17 = [v16 fileURLKeyToGuidMapping];
    [v17 setObject:v15 forKey:v4];

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

- (void)showModalViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(CKChatInputController *)self appCardPresentationOverseer];
  v11 = [v10 isPresentingCard];

  if (v11)
  {
    v13 = [(CKChatInputController *)self appCardPresentationOverseer];
    v12 = [v13 containerViewController];
    [v12 presentViewController:v9 animated:v5 completion:v8];

    v8 = v9;
    v9 = v12;
  }

  else
  {
    v13 = [(CKChatInputController *)self delegate];
    [v13 chatInputController:self presentShelfModal:v9 animated:v5 completion:v8];
  }
}

- (void)dismissEntryViewShelf
{
  v3 = [(CKChatInputController *)self dismissEntryViewShelfUpdater];
  v4 = [v3 isHoldingUpdates];

  if ((v4 & 1) == 0)
  {
    v5 = [(CKChatInputController *)self entryView];
    [v5 invalidateCompositionForReason:2];
  }
}

- (id)workingDraftDirForPluginIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKChatInputController *)self targetConversation];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = @"Pending";
      goto LABEL_6;
    }

    v6 = [v5 uniqueIdentifier];
    if (v6)
    {
LABEL_6:
      v8 = CKPluginTmpSubDirectoryURL(v6, v4);
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v15 = 0;
      [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v15];
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
    v6 = 0;
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
      v17 = v6;
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
      v13 = [(CKChatInputController *)self entryView];
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Failure info - entryView: %@", buf, 0xCu);
    }
  }

  v8 = 0;
LABEL_20:

  return v8;
}

- (void)stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = IMBalloonExtensionIDWithSuffix();
  v11 = +[CKBalloonPluginManager sharedInstance];
  v12 = [v11 viewControllerForPluginIdentifier:v10];

  [v12 setSendDelegate:self];
  if (objc_opt_respondsToSelector())
  {
    [v12 _stageAssetArchive:v8 skipShelf:v6 completionHandler:v9];
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

- (void)removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = +[CKBalloonPluginManager sharedInstance];
  v10 = [v9 viewControllerForPluginIdentifier:v8];

  [v10 setSendDelegate:self];
  if (objc_opt_respondsToSelector())
  {
    [v10 _removeAssetArchiveWithIdentifier:v6 completionHandler:v7];
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

- (void)notifyActiveBrowserAssetArchiveWasRemoved:(id)a3
{
  v8 = a3;
  if ([(CKChatInputController *)self currentPluginIsPhotos]|| [(CKChatInputController *)self currentPluginIsGenerativePlayground])
  {
    v4 = IMBalloonExtensionIDWithSuffix();
    if (v4)
    {
      v5 = v4;
      v6 = +[CKBalloonPluginManager sharedInstance];
      v7 = [v6 viewControllerForPluginIdentifier:v5];

      [v7 _assetArchiveRemoved:v8];
    }
  }
}

- (id)configurePhotosDraftAssetArchivesWithConversationID:(id)a3
{
  v4 = a3;
  v5 = IMBalloonExtensionIDWithSuffix();
  v6 = +[CKBalloonPluginManager sharedInstance];
  v7 = [v6 viewControllerForPluginIdentifier:v5];

  [v7 setSendDelegate:self];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 _configurePhotosDraftAssetArchivesWithConversationID:v4];
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

- (void)didStageAssetArchive:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A7FC8] sharedManager];
  if ([v8 checksForSensitivityOnSend])
  {
    v9 = [v6 mediaObjectFromPayload];
    v10 = [MEMORY[0x1E69A7FC0] sharedManager];
    v11 = [v9 fileURL];
    v12 = [(CKChatInputController *)self targetConversation];
    v13 = [v12 chat];
    v14 = [v13 chatIdentifier];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__CKChatInputController_didStageAssetArchive_identifier___block_invoke;
    v16[3] = &unk_1E72EC088;
    v17 = v9;
    v15 = v9;
    [v10 isSensitiveContent:v11 withChatID:v14 completionHandler:v16];
  }

  [(CKChatInputController *)self eagerUploadPayload:v6 identifier:v7 replace:0];
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
  v3 = [(CKChatInputController *)self handwritingPresentationController];

  if (v3)
  {
    v4 = [(CKChatInputController *)self handwritingPresentationController];
    [v4 setVisible:0 animated:1];
  }
}

- (void)handwritingPresentationControllerDidShowHandwriting:(id)a3
{
  [(CKChatInputController *)self setShouldSuppressStatusBarForHandwriting:1];
  v4 = [(CKChatInputController *)self delegate];
  [v4 chatInputControllerDidShowHandwriting:self];
}

- (void)handwritingPresentationControllerWillHideHandwriting:(id)a3
{
  [(CKChatInputController *)self setShouldSuppressStatusBarForHandwriting:0];
  v4 = [(CKChatInputController *)self delegate];
  [v4 chatInputControllerWillHideHandwriting:self];
}

- (void)didBeginInstallingAppWithBundleIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CKChatInputController *)a2 didBeginInstallingAppWithBundleIdentifier:?];
  }

  v5 = +[CKAppInstallationWatcher sharedInstance];
  [v5 startListeningForAppBundleIdentifier:v6];
}

- (void)openAppExtensionWithAdamID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v6 = [v5 allPlugins];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 adamID];
        v12 = [v11 isEqualToNumber:v4];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
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

    v14 = [(CKChatInputController *)self browserSwitcher];
    v15 = [v14 transitionCoordinator];
    v16 = [v15 isExpanded];

    v17 = [(CKChatInputController *)self deferredPluginDataSource];
    [(CKChatInputController *)self showBrowserForPlugin:v13 dataSource:v17 style:v16];

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
        v24 = v4;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Failed to find and open app with adam ID: %@", buf, 0xCu);
      }
    }
  }
}

- (void)deviceOrientationManager:(id)a3 orientationDidChange:(int64_t)a4
{
  v4 = [(CKChatInputController *)self orientationUpdater:a3];
  [v4 setNeedsUpdate];
}

- (void)showFindMyPlugin
{
  v3 = IMBalloonExtensionIDWithSuffix();
  [(CKChatInputController *)self showPluginWithExtensionIdentifier:v3];
}

- (unint64_t)appPresentationStyleForShowingPluginID:(id)a3
{
  v4 = a3;
  v5 = [(CKChatInputController *)self delegate];
  v6 = [v5 viewControllerForChatInputModalPresentation];
  v7 = [v6 traitCollection];

  v8 = -[CKChatInputController presentationStyleInOrientation:inPopover:forPluginID:](self, "presentationStyleInOrientation:inPopover:forPluginID:", [v5 sceneInterfaceOrientation], -[CKChatInputController determineSendMenuPresentationStyleCompatibleWithTraitCollection:](self, "determineSendMenuPresentationStyleCompatibleWithTraitCollection:", v7) == 1, v4);
  return v8;
}

- (void)showPluginWithExtensionIdentifier:(id)a3 sourceView:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = +[CKBalloonPluginManager sharedInstance];
  v8 = [v7 pluginForExtensionIdentifier:v11];
  if (v8)
  {
    v9 = [(CKChatInputController *)self appPresentationStyleForShowingPluginID:v11];
    if (v6)
    {
      v10 = [[CKTranscriptPluginPresentationConfiguration alloc] initWithSourceView:v6 permittedArrowDirections:15 shouldDisableSnapshotView:0];
    }

    else
    {
      v10 = 0;
    }

    [(CKChatInputController *)self showBrowserForPlugin:v8 dataSource:0 style:v9 presentationConfiguration:v10];
  }
}

- (void)eagerUploadPayload:(id)a3 identifier:(id)a4 replace:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([(CKChatInputController *)self _isiMessageConversation])
  {
    v10 = [(CKChatInputController *)self targetConversation];
    if (([v10 isBusinessConversation] & 1) == 0)
    {
      v11 = _os_activity_create(&dword_19020E000, "com.apple.messages.iMessageAttachmentEagerUpload", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      v20.opaque[0] = 0;
      v20.opaque[1] = 0;
      os_activity_scope_enter(v11, &v20);
      v12 = [v8 mediaObjectFromPayload];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v12 duration], v14 = v13, objc_msgSend(v10, "maxTrimDurationForMedia:", v12), v14 <= v15))
      {
        v16 = [v12 transfer];
        v17 = CKFileSizeEligibleForEagerUpload([v16 totalBytes]);

        if (v17)
        {
          eagerUploadController = self->_eagerUploadController;
          v19 = [(CKChatInputController *)self participantHandles];
          [(CKChatEagerUploadController *)eagerUploadController uploadPayload:v8 identifier:v9 replace:v5 recipients:v19];
        }
      }

      os_activity_scope_leave(&v20);
    }
  }
}

- (id)participantHandles
{
  v2 = [(CKChatInputController *)self targetConversation];
  v3 = [v2 senderIdentifier];
  v4 = IMChatCanonicalIDSIDsForAddress();

  if (v4)
  {
    v5 = [v2 recipients];
    v6 = [v5 __im_canonicalIDSAddressesFromEntities];
    v7 = [v6 arrayByAddingObject:v4];
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

    v5 = [v2 recipients];
    v7 = [v5 __im_canonicalIDSAddressesFromEntities];
  }

  return v7;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v5 = a3;
  if ([(CKChatInputController *)self isPresentingStickerPicker])
  {
    v4 = [(CKChatInputController *)self delegate];
    [v4 inputController:self willDismissPresentationController:v5];

    [(CKChatInputController *)self endStickerReactionSession];
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v7 = a3;
  v4 = [v7 presentedViewController];
  v5 = [v4 conformsToProtocol:&unk_1F05AEEC8];

  if (v5 && CKIsRunningInMacCatalyst() && ![(CKChatInputController *)self appModalIsDisplayed])
  {
    [(CKChatInputController *)self browserWillDismiss];
    v6 = [v7 presentedViewController];
    if (objc_opt_respondsToSelector())
    {
      [v6 deferredForceTearDownRemoteView];
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

- (void)registerForTextInputPayloadHandling:(BOOL)a3 isGroupChat:(BOOL)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = [(CKChatInputController *)self textInputPayloadController];
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

    if (!a3)
    {
      v10 = [v8 arrayByAddingObject:@"com.apple.messages.photos"];

      if (!CKShouldShowSURF() || a4)
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

  [v7 setSupportedPayloadIds:v8];
  [v7 setPayloadDelegate:self];
}

- (void)registerForTextInputPayloadHandlingForSenderHandleID:(id)a3 receiverHandleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isZelkovaEnabled];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A8218] sharedCoordinator];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __114__CKChatInputController_TextInputPayloads__registerForTextInputPayloadHandlingForSenderHandleID_receiverHandleID___block_invoke;
    v11[3] = &unk_1E72F0360;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [v10 shouldShowKeyboardSuggestionForInitiator:v12 andReceiver:v13 completion:v11];
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
  v5 = [(CKChatInputController *)self textInputPayloadController];
  v3 = [v5 payloadDelegate];

  if (v3 == self)
  {
    [v5 setPayloadDelegate:0];
    [v5 setSupportedPayloadIds:MEMORY[0x1E695E0F0]];
  }

  v4 = [getDDActionClass() clientActionsDelegate];

  if (v4 == self)
  {
    [getDDActionClass() setClientActionsDelegate:0];
  }
}

- (void)presentPluginWithBundleID:(id)a3 appLaunchPayload:(id)a4
{
  v6 = a4;
  v8 = a3;
  if ([v6 count])
  {
    v7 = @"com.apple.messages.appLaunchURLPluginPayload";
  }

  else
  {
    v7 = 0;
  }

  [(CKChatInputController *)self _presentPluginWithBundleID:v8 sendingTextInputPayload:v6 withPayloadID:v7];
}

- (void)handlePayload:(id)a3 withPayloadId:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"com.apple.messages.currentLocation"])
    {
      v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v10 = [v9 isWaldoEnabled];

      if (v10)
      {
        v11 = [v6 valueForKey:@"shouldSendRequestLocation"];
        v12 = [v6 valueForKey:@"shouldSendCurrentLocation"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 BOOLValue])
        {
          v13 = [(CKChatInputController *)self delegate];
          [v13 chatInputControllerDidSelectRequestLocation:self];
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
        v26 = [(CKChatInputController *)self delegate];
        [v26 sendCurrentLocation];
      }
    }

    else
    {
      if ([v8 isEqualToString:*MEMORY[0x1E69A6930]])
      {
        v14 = *MEMORY[0x1E69A69F0];
        v15 = v8;
        v16 = [v14 stringByAppendingFormat:@":%@:%@", @"0000000000", v15];
        v17 = [MEMORY[0x1E69A8218] sharedCoordinator];

        v8 = [v17 appPayloadID];

        v18 = +[CKBalloonPluginManager sharedInstance];
        v19 = [v18 viewControllerForPluginIdentifier:v16];

        if (objc_opt_respondsToSelector())
        {
          [v19 setSendDelegate:self];
          v20 = [v6 mutableCopy];
          [v20 setObject:&unk_1F04E8568 forKeyedSubscript:@"sessionStartEntryType"];
          v21 = [v20 copy];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __72__CKChatInputController_TextInputPayloads__handlePayload_withPayloadId___block_invoke;
          v49[3] = &unk_1E72ECCA8;
          v50 = v8;
          v51 = self;
          [v19 handleTextInputPayload:v21 withPayloadID:v50 completion:v49];
        }
      }

      if ([v8 isEqualToString:@"com.apple.messages.mentions"])
      {
        if (+[CKMentionsUtilities supportsSupplementalLexiconMentions])
        {
          v22 = [v6 objectForKeyedSubscript:@"name"];
          if ([v22 length])
          {
            v23 = [(CKChatInputController *)self entryView];
            v24 = [v23 contentView];
            v25 = [v24 textView];
            [v25 insertMentionByName:v22];
          }
        }
      }

      else if (![(CKChatInputController *)self _presentPluginIfNecessaryWithPayload:v6 withPayloadID:v8])
      {
        if ([v8 isEqualToString:@"com.apple.messages.stageSticker"])
        {
          v27 = _UIStickerCreateStickerFromTextInputPayload();
          v28 = [v27 representations];
          v29 = [v28 count] == 0;

          if (v29)
          {
            v30 = IMLogHandleForCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              [(CKNotificationChatController(TextInputPayloadsInternal) *)v30 _handleStickerTextInputPayload:v36, v37, v38, v39, v40, v41, v42];
            }
          }

          else
          {
            v30 = [v27 _ck_plainStringEmojiText];
            if ([v30 length])
            {
              v31 = IMLogHandleForCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "Handling received sticker payload as plain string system emoji text", buf, 2u);
              }

              v32 = [(CKChatInputController *)self entryView];
              v33 = [v32 contentView];
              v34 = [v33 textView];

              [v34 insertText:v30];
            }

            else
            {
              v43 = [(CKChatInputController *)self targetConversation];
              v44 = [v43 supportsInlineAdaptiveImageGlyphs];

              v45 = [v27 _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
              v46 = IMLogHandleForCategory();
              v47 = os_log_type_enabled(v46, OS_LOG_TYPE_INFO);
              if ((v44 & v45) != 0)
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
            v53 = v8;
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

- (void)insertUIStickerAsAdaptiveImageGlyph:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __80__CKChatInputController_TextInputPayloads__insertUIStickerAsAdaptiveImageGlyph___block_invoke;
    v5[3] = &unk_1E72EFB88;
    v5[4] = self;
    [v4 stk_renderBakedInRepIfNecessaryWithCompletion:v5];
  }

  else
  {
    [(CKChatInputController *)self _insertUIStickerAsAdaptiveImageGlyph:v4];
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

- (void)_insertUIStickerAsAdaptiveImageGlyph:(id)a3
{
  v4 = a3;
  v5 = _UIStickerCreateAdaptiveImageGlyphFromSticker();
  if (v5)
  {
    v6 = [(CKChatInputController *)self entryView];
    v7 = [v6 contentView];
    v8 = [v7 textView];

    v9 = [v8 existingMediaObjectMatchingAdaptiveImageGlyph:v5];
    if (!v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E69A82C0]) initWithUISticker:v4 adaptiveImageGlyph:v5];
      v11 = +[CKMediaObjectManager sharedInstance];
      v12 = MEMORY[0x1E69A82C0];
      v13 = [v10 getSafeExternalURI];
      v14 = [v12 userInfoDictionaryWithExternalURI:v13];
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

    [v8 insertAdaptiveImageGlyph:v5 withMediaObject:v9];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CKNotificationChatController(TextInputPayloadsInternal) *)v8 _insertUIStickerAsAdaptiveImageGlyph:v16, v17, v18, v19, v20, v21, v22];
    }
  }
}

- (BOOL)_presentPluginIfNecessaryWithPayload:(id)a3 withPayloadID:(id)a4
{
  v17[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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

  v13 = [v12 objectForKeyedSubscript:v7];
  if (v13)
  {
    v14 = [(CKChatInputController *)self _formattedPayload:v6 forPayloadID:v7];
    -[CKChatInputController _presentPluginWithBundleID:sendingTextInputPayload:withPayloadID:style:](self, "_presentPluginWithBundleID:sendingTextInputPayload:withPayloadID:style:", v13, v14, v7, [v13 isEqualToString:v9]);
  }

  return v13 != 0;
}

- (void)_stageStickerWithFileURL:(id)a3 accessibilityLabel:(id)a4
{
  v6 = MEMORY[0x1E69A82C0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v8 lastPathComponent];
  v11 = *MEMORY[0x1E69A6980];
  v12 = [v9 initWithStickerID:v10 stickerPackID:*MEMORY[0x1E69A6980] fileURL:v8 accessibilityLabel:v7 accessibilityName:0 searchText:0 sanitizedPrompt:0 moodCategory:0 stickerName:0];

  [(CKChatInputController *)self commitStickerBypassingValidation:v12 forPlugin:v11 stickerFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (id)_formattedPayload:(id)a3 forPayloadID:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if (([v6 isEqualToString:@"com.apple.messages.surf"] & 1) == 0)
  {
    v8 = v7;
    if ([v6 isEqualToString:@"com.apple.messages.photos"])
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

- (void)_presentPluginWithBundleID:(id)a3 sendingTextInputPayload:(id)a4 withPayloadID:(id)a5 style:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[CKBalloonPluginManager sharedInstance];
  v14 = [v13 balloonPluginIdentifierForAppExtensionBundleIdentifier:v10];

  if (!v14)
  {
    if ([v10 isEqualToString:*MEMORY[0x1E69A6A38]])
    {
      v15 = *MEMORY[0x1E69A6A40];

      v16 = +[CKBalloonPluginManager sharedInstance];
      v14 = [v16 balloonPluginIdentifierForAppExtensionBundleIdentifier:v15];

      v10 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  if ([v10 containsString:*MEMORY[0x1E69A6930]])
  {
    v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v18 = [v17 isZelkovaEnabled];

    if (v18)
    {
      v19 = [v12 length];
      v20 = v10;

      v10 = v20;
      if (!v19)
      {
        v10 = [v20 stringByReplacingOccurrencesOfString:@".NewMessage" withString:&stru_1F04268F8];
      }

      v21 = +[CKBalloonPluginManager sharedInstance];
      v22 = [v21 balloonPluginIdentifierForAppExtensionBundleIdentifier:v10];

      if (!v11)
      {
        v23 = [MEMORY[0x1E69A8218] sharedCoordinator];
        v11 = [v23 appPayload];
      }

      v24 = +[CKBalloonPluginManager sharedInstance];
      v25 = [v24 viewControllerForPluginIdentifier:v22];

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v14 = v22;
        v12 = v20;
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
      [v25 handleTextInputPayload:v11 withPayloadID:v20 completion:v37];
      v12 = v20;
LABEL_29:

LABEL_31:
      goto LABEL_32;
    }
  }

  if (v14 || [v10 isEqualToString:*MEMORY[0x1E69A6990]] && (+[CKBalloonPluginManager sharedInstance](CKBalloonPluginManager, "sharedInstance"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "balloonPluginIdentifierForAppExtensionBundleIdentifier:", v10), v14 = objc_claimAutoreleasedReturnValue(), v31, v14))
  {
    v27 = +[CKBalloonPluginManager sharedInstance];
    v25 = [v27 viewControllerForPluginIdentifier:v14];

    v28 = [(CKChatInputController *)self browserPlugin];
    v29 = [v28 identifier];
    if ([v29 isEqualToString:v14])
    {
      v30 = [(CKChatInputController *)self isInputViewVisible];

      if (v30)
      {
LABEL_25:
        v34 = [v11 count];
        if (!v12 || !v34 || (objc_opt_respondsToSelector() & 1) == 0)
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
        [v25 handleTextInputPayload:v11 withPayloadID:v12 completion:v35];
        goto LABEL_29;
      }
    }

    else
    {
    }

    v32 = [v25 balloonPlugin];
    if ((CKIsSendMenuEnabled() & 1) != 0 || [v32 showInBrowser])
    {
      v33 = [v25 balloonPluginDataSource];
      [(CKChatInputController *)self launchAndShowBrowserForPlugin:v32 dataSource:v33 style:a6];
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

- (id)localizedTitleForClientActionFromUrl:(id)a3 context:(id)a4
{
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"DATA_DETECTORS_PHOTOS_ACTION" value:&stru_1F04268F8 table:@"ChatKit"];

  return v5;
}

- (void)handleClientActionFromUrl:(id)a3 context:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v26 = a3;
  v6 = a4;
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

  v25 = self;
  v10 = [v6 objectForKeyedSubscript:*v8];
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

  v14 = [v6 objectForKeyedSubscript:*v12];
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

  v17 = [v6 objectForKeyedSubscript:*v15];
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

  v20 = [v6 objectForKeyedSubscript:*v18];
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

  [(CKChatInputController *)v25 _presentPluginWithBundleID:*MEMORY[0x1E69A6A08] sendingTextInputPayload:v24 withPayloadID:@"com.apple.messages.datadetectors.photos" style:1];
}

- (BOOL)shouldShowMoneyActionWithAmount:(id)a3 currencies:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_9;
  }

  if (![v7 count])
  {
    goto LABEL_9;
  }

  v9 = [(CKChatInputController *)self delegate];
  v10 = [v9 recipientsCount];

  if (!v10 || !CKShouldShowSURF())
  {
    goto LABEL_9;
  }

  if (shouldShowMoneyActionWithAmount_currencies___pred_PKPeerPaymentShouldDisplayResultForDetectedAmountPassKitCore != -1)
  {
    [CKChatInputController(DDClientActionsDelegate) shouldShowMoneyActionWithAmount:currencies:];
  }

  v11 = [v8 firstObject];
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

- (void)handleMoneyActionWithAmount:(id)a3 currencies:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 count])
  {
    v24 = [v6 stringValue];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [(CKChatInputController *)self lastTappedChatItemWithDataDetector];

    v23 = self;
    if (v10)
    {
      v11 = [(CKChatInputController *)self lastTappedChatItemWithDataDetector];
      v12 = [v11 sender];
      v13 = [v12 displayID];

      [(CKChatInputController *)self setLastTappedChatItemWithDataDetector:0];
    }

    else
    {
      v13 = &stru_1F04268F8;
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
          v32[1] = v24;
          v31[2] = @"SenderHandle";
          v32[2] = v13;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:{3, v23}];
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

    [(CKChatInputController *)v23 _presentPluginWithBundleID:*MEMORY[0x1E69A6A38] sendingTextInputPayload:v22 withPayloadID:@"com.apple.messages.datadetectors.currency"];
  }
}

- (void)commitPayload:(CKBrowserItemPayload *)a3 forPlugin:(NSString *)a4 allowAllCommits:(BOOL)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = self;
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
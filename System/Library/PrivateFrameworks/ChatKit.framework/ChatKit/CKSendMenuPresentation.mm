@interface CKSendMenuPresentation
+ (BOOL)_shouldUseZoomTransitionForSendMenuPopover;
- (CGRect)lastAnchorViewRectInWindow;
- (CKSendMenuPresentation)initWithOverlayPresentationContext:(id)context presentingViewController:(id)controller appCardContentViewController:(id)viewController appCardPresentationStyle:(unint64_t)style delegate:(id)delegate;
- (CKSendMenuPresentation)initWithOverlayPresentationContext:(id)context presentingViewController:(id)controller sendMenuViewController:(id)viewController delegate:(id)delegate;
- (CKSendMenuPresentationDelegate)delegate;
- (UIViewController)presentingViewController;
- (_TtC7ChatKit40CKSendMenuPopoverContainerViewController)popoverContainerViewController;
- (id)newPopoverLayoutMetrics;
- (void)__dismissPopoverPresentationAnimated:(BOOL)animated completion:(id)completion;
- (void)_beginFullscreenPresentationWithCompletion:(id)completion;
- (void)_beginPopoverPresentationWithCompletion:(id)completion;
- (void)_cleanUpSendMenuPresentation;
- (void)_delegateDidDismissSendMenu;
- (void)_dismissFullscreenPresentationAnimated:(BOOL)animated completion:(id)completion;
- (void)_dismissPopoverPresentationAnimated:(BOOL)animated completion:(id)completion;
- (void)_layoutFullScreenSendMenuView;
- (void)beginPresentationWithCompletion:(id)completion;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)enforceSendMenuOrderingInWindowSubviews;
- (void)informSendMenuOfAnchorViewPositionChangeIfNecessary;
- (void)layout;
- (void)presentCardWithContentViewController:(id)controller style:(unint64_t)style completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)rePresentSendMenu;
- (void)removeSendMenuFromViewHierarchy;
- (void)requestDismissKeyboardSnapshotForSendMenuIfNeeded;
- (void)sendMenuFrameChanged:(CGRect)changed;
- (void)sendMenuHasInitialFrame:(CGRect)frame;
- (void)sendMenuPresentationControllerWantsToBeDismissed:(id)dismissed;
- (void)sendMenuPresentationControllerWillDismiss:(id)dismiss;
@end

@implementation CKSendMenuPresentation

- (void)presentationControllerWillDismiss:(id)dismiss
{
  v15 = *MEMORY[0x1E69E9840];
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  initiallyInteractive = [transitionCoordinator initiallyInteractive];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v12 = presentedViewController;
      v13 = 1024;
      v14 = initiallyInteractive;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Send menu will dismiss, vc=%@, isInitiallyInteractive=%{BOOL}d", buf, 0x12u);
    }
  }

  if (initiallyInteractive)
  {
    objc_initWeak(buf, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__CKSendMenuPresentation_presentationControllerWillDismiss___block_invoke;
    v9[3] = &unk_1E72F3630;
    objc_copyWeak(&v10, buf);
    [transitionCoordinator notifyWhenInteractionChangesUsingBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    [(CKSendMenuPresentation *)self _cleanUpSendMenuPresentation];
  }
}

void __60__CKSendMenuPresentation_presentationControllerWillDismiss___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109376;
      v7[1] = [v3 isInteractive];
      v8 = 1024;
      v9 = [v3 isCancelled];
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "> Interaction changed, isInteractive=%{BOOL}d, isCancelled=%{BOOL}d", v7, 0xEu);
    }
  }

  if (([v3 isInteractive] & 1) == 0 && (objc_msgSend(v3, "isCancelled") & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v7[0]) = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Committing transition completion.", v7, 2u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _cleanUpSendMenuPresentation];
  }
}

- (void)_cleanUpSendMenuPresentation
{
  v19 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = uUIDString;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "presentationControllerWillDismiss: Scheduling kb snapshot removal for id={%@}", buf, 0xCu);
      }
    }

    v8 = dispatch_time(0, 300000000);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __54__CKSendMenuPresentation__cleanUpSendMenuPresentation__block_invoke;
    v14 = &unk_1E72EB8D0;
    v15 = uUIDString;
    selfCopy = self;
    v9 = uUIDString;
    dispatch_after(v8, MEMORY[0x1E69E96A0], &v11);
    v10 = [(CKSendMenuPopoverViewController *)self->_popoverRootViewController presentationController:v11];
    [(CKSendMenuPresentation *)self sendMenuPresentationControllerWillDismiss:v10];
  }
}

uint64_t __54__CKSendMenuPresentation__cleanUpSendMenuPresentation__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "presentationControllerWillDismiss: Dismissing kb snapshot for id={%@}", &v5, 0xCu);
    }
  }

  return [*(a1 + 40) requestDismissKeyboardSnapshotForSendMenuIfNeeded];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sendMenuPresentationDidDismiss:self];
}

- (CKSendMenuPresentation)initWithOverlayPresentationContext:(id)context presentingViewController:(id)controller sendMenuViewController:(id)viewController delegate:(id)delegate
{
  contextCopy = context;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = CKSendMenuPresentation;
  v15 = [(CKSendMenuPresentation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_overlayPresentationContext, context);
    objc_storeWeak(&v16->_presentingViewController, controllerCopy);
    objc_storeStrong(&v16->_sendMenuViewController, viewController);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v16->_presentationState = 0;
  }

  return v16;
}

- (CKSendMenuPresentation)initWithOverlayPresentationContext:(id)context presentingViewController:(id)controller appCardContentViewController:(id)viewController appCardPresentationStyle:(unint64_t)style delegate:(id)delegate
{
  contextCopy = context;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = CKSendMenuPresentation;
  v17 = [(CKSendMenuPresentation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_overlayPresentationContext, context);
    objc_storeWeak(&v18->_presentingViewController, controllerCopy);
    objc_storeStrong(&v18->_appCardContentViewController, viewController);
    v18->_appCardPresentationStyle = style;
    objc_storeWeak(&v18->_delegate, delegateCopy);
    v18->_presentationState = 0;
  }

  return v18;
}

- (void)beginPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (!self->_presentationState)
  {
    self->_presentationState = 1;
    presentingViewController = [(CKSendMenuPresentation *)self presentingViewController];
    traitCollection = [presentingViewController traitCollection];

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __58__CKSendMenuPresentation_beginPresentationWithCompletion___block_invoke;
    v16 = &unk_1E72ED1C8;
    selfCopy = self;
    v18 = v5;
    v8 = _Block_copy(&v13);
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

    if (isPopoverSendMenuEnabled)
    {
      goto LABEL_6;
    }

    overlayPresentationContext = [(CKSendMenuPresentation *)self overlayPresentationContext];
    presentationStyle = [overlayPresentationContext presentationStyle];

    if (!presentationStyle)
    {
      [(CKSendMenuPresentation *)self _beginFullscreenPresentationWithCompletion:v8];
      goto LABEL_7;
    }

    if (presentationStyle == 1)
    {
LABEL_6:
      [(CKSendMenuPresentation *)self _beginPopoverPresentationWithCompletion:v8];
    }

LABEL_7:

    goto LABEL_8;
  }

  (*(completionCopy + 2))(completionCopy);
LABEL_8:
}

uint64_t __58__CKSendMenuPresentation_beginPresentationWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentationState:2];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (BOOL)_shouldUseZoomTransitionForSendMenuPopover
{
  if (_shouldUseZoomTransitionForSendMenuPopover_onceToken != -1)
  {
    +[CKSendMenuPresentation _shouldUseZoomTransitionForSendMenuPopover];
  }

  return (_shouldUseZoomTransitionForSendMenuPopover_zoomDisabled & 1) == 0;
}

void __68__CKSendMenuPresentation__shouldUseZoomTransitionForSendMenuPopover__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  _shouldUseZoomTransitionForSendMenuPopover_zoomDisabled = [v0 BOOLForKey:@"ChatKitSendMenuPopoverZoomTransitionDisabled"];
}

- (void)_beginPopoverPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    delegate = [(CKSendMenuPresentation *)self delegate];
    v8 = [delegate sendMenuPresentationShouldUseKeyboardSnapshot:self];

    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained requestShowKeyboardSnapshotForSendMenu];

      self->_hasRequestedKeyboardSnapshot = 1;
    }
  }

  else
  {
    v10 = objc_alloc_init(CKSendMenuPopoverViewController);
    [(CKSendMenuPresentation *)self setPopoverRootViewController:v10];

    popoverRootViewController = [(CKSendMenuPresentation *)self popoverRootViewController];
    [popoverRootViewController setDelegate:self];

    v12 = objc_alloc_init(CKSendMenuPopoverTransitioningDelegate);
    [(CKSendMenuPresentation *)self setSendMenuTransitioningDelegate:v12];

    sendMenuTransitioningDelegate = [(CKSendMenuPresentation *)self sendMenuTransitioningDelegate];
    [(CKSendMenuPopoverViewController *)self->_popoverRootViewController setTransitioningDelegate:sendMenuTransitioningDelegate];

    [(CKSendMenuPopoverViewController *)self->_popoverRootViewController setModalPresentationStyle:4];
  }

  sendMenuViewController = self->_sendMenuViewController;
  if (sendMenuViewController)
  {
    v15 = sendMenuViewController;
    [(CKSendMenuViewController *)v15 updatePreferredContentSize];
    [(CKSendMenuViewController *)v15 preferredContentSize];
    v17 = v16;
    v19 = v18;

    sendMenuViewController = [(CKSendMenuPresentation *)self sendMenuViewController];
    view = [sendMenuViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:1];

    sendMenuViewController2 = [(CKSendMenuPresentation *)self sendMenuViewController];
    view2 = [sendMenuViewController2 view];
    [view2 setAutoresizingMask:0];

    sendMenuViewController3 = [(CKSendMenuPresentation *)self sendMenuViewController];
    view3 = [sendMenuViewController3 view];
    [view3 setFrame:{0.0, 0.0, v17, v19}];

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(view3) = [mEMORY[0x1E69A8070]2 isPopoverSendMenuEnabled];

    if ((view3 & 1) == 0)
    {
      popoverRootViewController2 = [(CKSendMenuPresentation *)self popoverRootViewController];
      view4 = [popoverRootViewController2 view];
      [view4 setFrame:{0.0, 0.0, v17, v19}];
    }
  }

  else
  {
    [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext willPresentAppCard];
  }

  anchorView = [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext anchorView];
  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled2 = [mEMORY[0x1E69A8070]3 isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled2)
  {
    popoverContainerViewController = [(CKSendMenuPresentation *)self popoverContainerViewController];
    [(CKSendMenuPopoverViewController *)popoverContainerViewController setDelegate:self];
    appCardContentViewController = self->_sendMenuViewController;
    if (!appCardContentViewController)
    {
      appCardContentViewController = self->_appCardContentViewController;
    }

    [(CKSendMenuPopoverViewController *)popoverContainerViewController updateChildViewController:appCardContentViewController style:self->_appCardPresentationStyle completion:&__block_literal_global_210_0];
    presentationController = [(CKSendMenuPopoverViewController *)popoverContainerViewController presentationController];
    if (objc_opt_respondsToSelector())
    {
      v35 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
      [v35 setSubvariant:@"messagesTapback"];
      [v35 setFlexible:1];
      v36 = [MEMORY[0x1E69DCA68] effectWithGlass:v35];
      [presentationController setBackgroundEffect:v36];
    }

    v37 = self->_sendMenuViewController;
    if (v37)
    {
      [(CKSendMenuViewController *)v37 preferredContentSize];
      [(CKSendMenuPopoverViewController *)popoverContainerViewController setPreferredContentSize:?];
    }

    [presentationController setDelegate:self];
    [presentationController setSourceView:anchorView];
    [presentationController _setIgnoresKeyboardNotifications:1];
    if ([objc_opt_class() _shouldUseZoomTransitionForSendMenuPopover])
    {
      objc_initWeak(&location, anchorView);
      v38 = MEMORY[0x1E69DD260];
      v47 = MEMORY[0x1E69E9820];
      v48 = 3221225472;
      v49 = __66__CKSendMenuPresentation__beginPopoverPresentationWithCompletion___block_invoke_2;
      v50 = &unk_1E72F3658;
      objc_copyWeak(&v51, &location);
      v39 = [v38 zoomWithOptions:0 sourceViewProvider:&v47];
      [(CKSendMenuPopoverViewController *)popoverContainerViewController setPreferredTransition:v39, v47, v48, v49, v50];
      traitCollection = [anchorView traitCollection];
      if ([traitCollection isTranscriptBackgroundActive] && objc_msgSend(traitCollection, "isDiffusedSystemGlassSettingEnabled"))
      {
        ck_systemUserInterfaceStyle = [traitCollection ck_systemUserInterfaceStyle];
      }

      else
      {
        ck_systemUserInterfaceStyle = 0;
      }

      [(CKSendMenuPopoverViewController *)popoverContainerViewController setOverrideUserInterfaceStyle:ck_systemUserInterfaceStyle];

      objc_destroyWeak(&v51);
      objc_destroyWeak(&location);
    }

    presentingViewController2 = self->_appCardContentViewController;
    if (!presentingViewController2 || !self->_sendMenuViewController)
    {
      presentingViewController = [(CKSendMenuPresentation *)self presentingViewController];
      [presentingViewController presentViewController:popoverContainerViewController animated:1 completion:completionCopy];

      goto LABEL_30;
    }

    popoverRootViewController = popoverContainerViewController;
  }

  else
  {
    popoverContainerViewController = [(CKSendMenuPopoverViewController *)self->_popoverRootViewController presentationController];
    v42 = [CKSendMenuPopoverPresentationControllerAnchorItem alloc];
    [anchorView bounds];
    v43 = [(CKSendMenuPopoverPresentationControllerAnchorItem *)v42 initWithView:anchorView rect:?];
    [(CKSendMenuPopoverViewController *)popoverContainerViewController setAnchorItem:v43];

    [(CKSendMenuPopoverViewController *)popoverContainerViewController setDelegate:self];
    [(CKSendMenuPopoverViewController *)popoverContainerViewController setSendMenuViewController:self->_sendMenuViewController];
    [(CKSendMenuPopoverViewController *)popoverContainerViewController setAppCardContentViewController:self->_appCardContentViewController];
    if (self->_appCardContentViewController)
    {
      [(CKSendMenuPopoverViewController *)popoverContainerViewController setAppCardPresentationStyle:self->_appCardPresentationStyle];
    }

    presentingViewController2 = [(CKSendMenuPresentation *)self presentingViewController];
    presentationController = presentingViewController2;
    popoverRootViewController = self->_popoverRootViewController;
  }

  [presentingViewController2 presentViewController:popoverRootViewController animated:1 completion:completionCopy];
LABEL_30:
}

id __66__CKSendMenuPresentation__beginPopoverPresentationWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  return WeakRetained;
}

- (_TtC7ChatKit40CKSendMenuPopoverContainerViewController)popoverContainerViewController
{
  popoverContainerViewController = self->_popoverContainerViewController;
  if (!popoverContainerViewController)
  {
    v4 = objc_alloc_init(_TtC7ChatKit40CKSendMenuPopoverContainerViewController);
    v5 = self->_popoverContainerViewController;
    self->_popoverContainerViewController = v4;

    popoverContainerViewController = self->_popoverContainerViewController;
  }

  return popoverContainerViewController;
}

- (void)rePresentSendMenu
{
  presentationState = self->_presentationState;
  if (presentationState <= 1)
  {
    if (presentationState)
    {
      if (presentationState != 1)
      {
        return;
      }

      sendMenuViewController = IMLogHandleForCategory();
      if (os_log_type_enabled(sendMenuViewController, OS_LOG_TYPE_ERROR))
      {
        [CKSendMenuPresentation rePresentSendMenu];
      }
    }

    else
    {
      sendMenuViewController = IMLogHandleForCategory();
      if (os_log_type_enabled(sendMenuViewController, OS_LOG_TYPE_ERROR))
      {
        [CKSendMenuPresentation rePresentSendMenu];
      }
    }
  }

  else
  {
    switch(presentationState)
    {
      case 2:
        sendMenuViewController = IMLogHandleForCategory();
        if (os_log_type_enabled(sendMenuViewController, OS_LOG_TYPE_ERROR))
        {
          [CKSendMenuPresentation rePresentSendMenu];
        }

        break;
      case 3:
        v5 = IMLogHandleForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [CKSendMenuPresentation rePresentSendMenu];
        }

        self->_presentationState = 1;
        sendMenuViewController = [(CKSendMenuPresentation *)self sendMenuViewController];
        [sendMenuViewController rePresentSendMenu];
        self->_presentationState = 2;
        break;
      case 4:
        sendMenuViewController = IMLogHandleForCategory();
        if (os_log_type_enabled(sendMenuViewController, OS_LOG_TYPE_ERROR))
        {
          [CKSendMenuPresentation rePresentSendMenu];
        }

        break;
      default:
        return;
    }
  }
}

- (void)_beginFullscreenPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestShowKeyboardSnapshotForSendMenu];

  self->_hasRequestedKeyboardSnapshot = 1;
  v5 = objc_loadWeakRetained(&self->_presentingViewController);
  view = [v5 view];
  window = [view window];
  [window bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view2 = [(CKSendMenuViewController *)self->_sendMenuViewController view];
  [view2 setFrame:{v9, v11, v13, v15}];

  v17 = objc_loadWeakRetained(&self->_presentingViewController);
  view3 = [v17 view];
  window2 = [view3 window];
  view4 = [(CKSendMenuViewController *)self->_sendMenuViewController view];
  [window2 addSubview:view4];

  completionCopy[2]();
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  location[3] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (self->_overlayPresentationContext)
  {
    if ((self->_presentationState - 1) < 2)
    {
      self->_presentationState = 3;
      objc_initWeak(location, self);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __53__CKSendMenuPresentation_dismissAnimated_completion___block_invoke;
      v17 = &unk_1E72F3680;
      objc_copyWeak(&v19, location);
      v18 = completionCopy;
      v7 = _Block_copy(&v14);
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

      if (isPopoverSendMenuEnabled)
      {
        goto LABEL_4;
      }

      overlayPresentationContext = [(CKSendMenuPresentation *)self overlayPresentationContext];
      presentationStyle = [overlayPresentationContext presentationStyle];

      if (!presentationStyle)
      {
        [(CKSendMenuPresentation *)self _dismissFullscreenPresentationAnimated:animatedCopy completion:v7];
        goto LABEL_13;
      }

      if (presentationStyle == 1)
      {
LABEL_4:
        [(CKSendMenuPresentation *)self _dismissPopoverPresentationAnimated:animatedCopy completion:v7];
      }

LABEL_13:

      objc_destroyWeak(&v19);
      objc_destroyWeak(location);
      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        presentationState = self->_presentationState;
        LODWORD(location[0]) = 134217984;
        *(location + 4) = presentationState;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Ignoring request to dismiss the send menu because the presentation state currently is: %li.", location, 0xCu);
      }
    }
  }

LABEL_14:
}

uint64_t __53__CKSendMenuPresentation_dismissAnimated_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setPresentationState:4];
    [WeakRetained _delegateDidDismissSendMenu];
    [WeakRetained requestDismissKeyboardSnapshotForSendMenuIfNeeded];
    [WeakRetained setOverlayPresentationContext:0];
    [WeakRetained setSendMenuViewController:0];
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)__dismissPopoverPresentationAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    popoverContainerViewController = [(CKSendMenuPresentation *)self popoverContainerViewController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__CKSendMenuPresentation___dismissPopoverPresentationAnimated_completion___block_invoke;
    v16[3] = &unk_1E72EE5D8;
    v10 = &v17;
    v16[4] = self;
    v17 = completionCopy;
    v11 = completionCopy;
    [popoverContainerViewController dismissViewControllerAnimated:animatedCopy completion:v16];
  }

  else
  {
    popoverRootViewController = self->_popoverRootViewController;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__CKSendMenuPresentation___dismissPopoverPresentationAnimated_completion___block_invoke_2;
    v14[3] = &unk_1E72EE5D8;
    v10 = &v15;
    v14[4] = self;
    v15 = completionCopy;
    v13 = completionCopy;
    [(CKSendMenuPopoverViewController *)popoverRootViewController dismissViewControllerAnimated:animatedCopy completion:v14];
  }
}

uint64_t __74__CKSendMenuPresentation___dismissPopoverPresentationAnimated_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setSendMenuViewController:0];
  v2 = *(a1 + 32);

  return [v2 setPopoverRootViewController:0];
}

uint64_t __74__CKSendMenuPresentation___dismissPopoverPresentationAnimated_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setSendMenuViewController:0];
  v2 = *(a1 + 32);

  return [v2 setPopoverRootViewController:0];
}

- (void)_dismissPopoverPresentationAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (animated)
  {
    [(CKSendMenuPresentation *)self __dismissPopoverPresentationAnimated:1 completion:completionCopy];
  }

  else
  {
    v8 = MEMORY[0x1E69DD258];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__CKSendMenuPresentation__dismissPopoverPresentationAnimated_completion___block_invoke;
    v9[3] = &unk_1E72F36A8;
    v9[4] = self;
    v11 = 0;
    v10 = completionCopy;
    [v8 _performWithoutDeferringTransitions:v9];
  }
}

- (void)_dismissFullscreenPresentationAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (animatedCopy)
  {
    sendMenuViewController = [(CKSendMenuPresentation *)self sendMenuViewController];
    [sendMenuViewController performFullScreenDismissAnimationWithCompletion:completionCopy];

    v7 = sendMenuViewController;
  }

  else
  {
    [(CKSendMenuPresentation *)self removeSendMenuFromViewHierarchy];
    (*(completionCopy + 2))(completionCopy, 1);
    v7 = completionCopy;
  }
}

- (void)removeSendMenuFromViewHierarchy
{
  [(CKSendMenuPresentation *)self requestDismissKeyboardSnapshotForSendMenuIfNeeded];
  sendMenuViewController = [(CKSendMenuPresentation *)self sendMenuViewController];
  view = [sendMenuViewController view];
  [view removeFromSuperview];

  sendMenuViewController = self->_sendMenuViewController;

  [(CKSendMenuViewController *)sendMenuViewController setSendMenuViewControllerDelegate:0];
}

- (void)requestDismissKeyboardSnapshotForSendMenuIfNeeded
{
  if (self->_hasRequestedKeyboardSnapshot)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained requestDismissKeyboardSnapshotForSendMenu];

    self->_hasRequestedKeyboardSnapshot = 0;
  }
}

- (void)layout
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if ((isPopoverSendMenuEnabled & 1) == 0)
  {
    overlayPresentationContext = [(CKSendMenuPresentation *)self overlayPresentationContext];
    presentationStyle = [overlayPresentationContext presentationStyle];

    if (!presentationStyle)
    {
      [(CKSendMenuPresentation *)self _layoutFullScreenSendMenuView];
    }

    [(CKSendMenuPresentation *)self informSendMenuOfAnchorViewPositionChangeIfNecessary];
  }
}

- (void)informSendMenuOfAnchorViewPositionChangeIfNecessary
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if ((isPopoverSendMenuEnabled & 1) == 0)
  {
    anchorView = [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext anchorView];
    [anchorView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    window = [anchorView window];
    [anchorView convertRect:window toView:{v6, v8, v10, v12}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v24.origin.x = v15;
    v24.origin.y = v17;
    v24.size.width = v19;
    v24.size.height = v21;
    if (!CGRectEqualToRect(self->_lastAnchorViewRectInWindow, v24))
    {
      self->_lastAnchorViewRectInWindow.origin.x = v15;
      self->_lastAnchorViewRectInWindow.origin.y = v17;
      self->_lastAnchorViewRectInWindow.size.width = v19;
      self->_lastAnchorViewRectInWindow.size.height = v21;
      [(CKSendMenuPopoverViewController *)self->_popoverRootViewController anchorViewDidMove];
      [(CKSendMenuViewController *)self->_sendMenuViewController anchorViewDidMove];
    }
  }
}

- (void)_layoutFullScreenSendMenuView
{
  presentingViewController = [(CKSendMenuPresentation *)self presentingViewController];
  view = [presentingViewController view];
  window = [view window];
  [window bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [(CKSendMenuViewController *)self->_sendMenuViewController view];
  [view2 setFrame:{v6, v8, v10, v12}];
}

- (void)_delegateDidDismissSendMenu
{
  [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext didDismissSendMenuPresentation];
  delegate = [(CKSendMenuPresentation *)self delegate];
  overlayPresentationContext = [(CKSendMenuPresentation *)self overlayPresentationContext];
  [delegate didDismissSendMenu:self usingPresentationContext:overlayPresentationContext];
}

- (void)presentCardWithContentViewController:(id)controller style:(unint64_t)style completion:(id)completion
{
  completionCopy = completion;
  v9 = MEMORY[0x1E69A8070];
  controllerCopy = controller;
  sharedFeatureFlags = [v9 sharedFeatureFlags];
  isPopoverSendMenuEnabled = [sharedFeatureFlags isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    popoverContainerViewController = [(CKSendMenuPresentation *)self popoverContainerViewController];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__CKSendMenuPresentation_presentCardWithContentViewController_style_completion___block_invoke;
    v14[3] = &unk_1E72EBDB8;
    v15 = completionCopy;
    [popoverContainerViewController updateChildViewController:controllerCopy style:style completion:v14];
  }

  else
  {
    [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext willPresentAppCard];
    popoverContainerViewController = [(CKSendMenuPopoverViewController *)self->_popoverRootViewController presentationController];
    [popoverContainerViewController presentCardWithContentViewController:controllerCopy style:style completion:completionCopy];
  }
}

uint64_t __80__CKSendMenuPresentation_presentCardWithContentViewController_style_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)enforceSendMenuOrderingInWindowSubviews
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if ((isPopoverSendMenuEnabled & 1) == 0)
  {
    overlayPresentationContext = [(CKSendMenuPresentation *)self overlayPresentationContext];
    presentationStyle = [overlayPresentationContext presentationStyle];

    if (!presentationStyle)
    {
      WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
      view = [WeakRetained view];
      window = [view window];
      view2 = [(CKSendMenuViewController *)self->_sendMenuViewController view];
      [window bringSubviewToFront:view2];
    }
  }
}

- (id)newPopoverLayoutMetrics
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    popoverContainerViewController = self->_popoverContainerViewController;
    if (popoverContainerViewController)
    {
      view = [(CKSendMenuPopoverContainerViewController *)popoverContainerViewController view];
      view2 = [(CKSendMenuPopoverContainerViewController *)self->_popoverContainerViewController view];
      [view2 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      presentingViewController = [(CKSendMenuPresentation *)self presentingViewController];
      view3 = [presentingViewController view];
      [view convertRect:view3 toView:{v9, v11, v13, v15}];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v26 = self->_popoverContainerViewController;
      childViewControllers = [(CKSendMenuPopoverContainerViewController *)v26 childViewControllers];
      firstObject = [childViewControllers firstObject];
      LODWORD(view3) = firstObject != self->_sendMenuViewController;

      v29 = 2 * view3;
      v30 = [CKPopoverViewLayoutMetrics alloc];
      presentingViewController2 = [(CKSendMenuPresentation *)self presentingViewController];
      view4 = [presentingViewController2 view];
      coordinateSpace = [view4 coordinateSpace];
      newPopoverLayoutMetrics = [(CKPopoverViewLayoutMetrics *)v30 initWithState:v29 frame:coordinateSpace coordinateSpace:v19, v21, v23, v25];

LABEL_10:
      return newPopoverLayoutMetrics;
    }
  }

  else
  {
    popoverRootViewController = self->_popoverRootViewController;
    if (popoverRootViewController)
    {
      presentingViewController2 = [(CKSendMenuPopoverViewController *)popoverRootViewController presentationController];
      if (presentingViewController2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        newPopoverLayoutMetrics = [presentingViewController2 newPopoverLayoutMetrics];
      }

      else
      {
        newPopoverLayoutMetrics = 0;
      }

      goto LABEL_10;
    }
  }

  return 0;
}

- (void)sendMenuPresentationControllerWantsToBeDismissed:(id)dismissed
{
  if (self->_presentationState == 2)
  {
    [(CKSendMenuPresentation *)self dismissAnimated:1 completion:0];
  }
}

- (void)sendMenuPresentationControllerWillDismiss:(id)dismiss
{
  [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext willDismissSendMenuPresentation];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sendMenuPresentationWillDismiss:self];
}

- (void)sendMenuHasInitialFrame:(CGRect)frame
{
  sendMenuHasInitialFrame = self->_sendMenuHasInitialFrame;
  if (sendMenuHasInitialFrame)
  {
    sendMenuHasInitialFrame[2](frame.origin, *&frame.origin.y, frame.size, *&frame.size.height);
  }
}

- (void)sendMenuFrameChanged:(CGRect)changed
{
  sendMenuFrameChanged = self->_sendMenuFrameChanged;
  if (sendMenuFrameChanged)
  {
    sendMenuFrameChanged[2](changed.origin, *&changed.origin.y, changed.size, *&changed.size.height);
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (CKSendMenuPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)lastAnchorViewRectInWindow
{
  x = self->_lastAnchorViewRectInWindow.origin.x;
  y = self->_lastAnchorViewRectInWindow.origin.y;
  width = self->_lastAnchorViewRectInWindow.size.width;
  height = self->_lastAnchorViewRectInWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
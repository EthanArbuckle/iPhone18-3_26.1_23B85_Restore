@interface CKSendMenuPresentation
+ (BOOL)_shouldUseZoomTransitionForSendMenuPopover;
- (CGRect)lastAnchorViewRectInWindow;
- (CKSendMenuPresentation)initWithOverlayPresentationContext:(id)a3 presentingViewController:(id)a4 appCardContentViewController:(id)a5 appCardPresentationStyle:(unint64_t)a6 delegate:(id)a7;
- (CKSendMenuPresentation)initWithOverlayPresentationContext:(id)a3 presentingViewController:(id)a4 sendMenuViewController:(id)a5 delegate:(id)a6;
- (CKSendMenuPresentationDelegate)delegate;
- (UIViewController)presentingViewController;
- (_TtC7ChatKit40CKSendMenuPopoverContainerViewController)popoverContainerViewController;
- (id)newPopoverLayoutMetrics;
- (void)__dismissPopoverPresentationAnimated:(BOOL)a3 completion:(id)a4;
- (void)_beginFullscreenPresentationWithCompletion:(id)a3;
- (void)_beginPopoverPresentationWithCompletion:(id)a3;
- (void)_cleanUpSendMenuPresentation;
- (void)_delegateDidDismissSendMenu;
- (void)_dismissFullscreenPresentationAnimated:(BOOL)a3 completion:(id)a4;
- (void)_dismissPopoverPresentationAnimated:(BOOL)a3 completion:(id)a4;
- (void)_layoutFullScreenSendMenuView;
- (void)beginPresentationWithCompletion:(id)a3;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)enforceSendMenuOrderingInWindowSubviews;
- (void)informSendMenuOfAnchorViewPositionChangeIfNecessary;
- (void)layout;
- (void)presentCardWithContentViewController:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)rePresentSendMenu;
- (void)removeSendMenuFromViewHierarchy;
- (void)requestDismissKeyboardSnapshotForSendMenuIfNeeded;
- (void)sendMenuFrameChanged:(CGRect)a3;
- (void)sendMenuHasInitialFrame:(CGRect)a3;
- (void)sendMenuPresentationControllerWantsToBeDismissed:(id)a3;
- (void)sendMenuPresentationControllerWillDismiss:(id)a3;
@end

@implementation CKSendMenuPresentation

- (void)presentationControllerWillDismiss:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 presentedViewController];
  v6 = [v5 transitionCoordinator];
  v7 = [v6 initiallyInteractive];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v12 = v5;
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Send menu will dismiss, vc=%@, isInitiallyInteractive=%{BOOL}d", buf, 0x12u);
    }
  }

  if (v7)
  {
    objc_initWeak(buf, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__CKSendMenuPresentation_presentationControllerWillDismiss___block_invoke;
    v9[3] = &unk_1E72F3630;
    objc_copyWeak(&v10, buf);
    [v6 notifyWhenInteractionChangesUsingBlock:v9];
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
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isPopoverSendMenuEnabled];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "presentationControllerWillDismiss: Scheduling kb snapshot removal for id={%@}", buf, 0xCu);
      }
    }

    v8 = dispatch_time(0, 300000000);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __54__CKSendMenuPresentation__cleanUpSendMenuPresentation__block_invoke;
    v14 = &unk_1E72EB8D0;
    v15 = v6;
    v16 = self;
    v9 = v6;
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

- (void)presentationControllerDidDismiss:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sendMenuPresentationDidDismiss:self];
}

- (CKSendMenuPresentation)initWithOverlayPresentationContext:(id)a3 presentingViewController:(id)a4 sendMenuViewController:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CKSendMenuPresentation;
  v15 = [(CKSendMenuPresentation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_overlayPresentationContext, a3);
    objc_storeWeak(&v16->_presentingViewController, v12);
    objc_storeStrong(&v16->_sendMenuViewController, a5);
    objc_storeWeak(&v16->_delegate, v14);
    v16->_presentationState = 0;
  }

  return v16;
}

- (CKSendMenuPresentation)initWithOverlayPresentationContext:(id)a3 presentingViewController:(id)a4 appCardContentViewController:(id)a5 appCardPresentationStyle:(unint64_t)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = CKSendMenuPresentation;
  v17 = [(CKSendMenuPresentation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_overlayPresentationContext, a3);
    objc_storeWeak(&v18->_presentingViewController, v14);
    objc_storeStrong(&v18->_appCardContentViewController, a5);
    v18->_appCardPresentationStyle = a6;
    objc_storeWeak(&v18->_delegate, v16);
    v18->_presentationState = 0;
  }

  return v18;
}

- (void)beginPresentationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_presentationState)
  {
    self->_presentationState = 1;
    v6 = [(CKSendMenuPresentation *)self presentingViewController];
    v7 = [v6 traitCollection];

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __58__CKSendMenuPresentation_beginPresentationWithCompletion___block_invoke;
    v16 = &unk_1E72ED1C8;
    v17 = self;
    v18 = v5;
    v8 = _Block_copy(&v13);
    v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v10 = [v9 isPopoverSendMenuEnabled];

    if (v10)
    {
      goto LABEL_6;
    }

    v11 = [(CKSendMenuPresentation *)self overlayPresentationContext];
    v12 = [v11 presentationStyle];

    if (!v12)
    {
      [(CKSendMenuPresentation *)self _beginFullscreenPresentationWithCompletion:v8];
      goto LABEL_7;
    }

    if (v12 == 1)
    {
LABEL_6:
      [(CKSendMenuPresentation *)self _beginPopoverPresentationWithCompletion:v8];
    }

LABEL_7:

    goto LABEL_8;
  }

  (*(v4 + 2))(v4);
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

- (void)_beginPopoverPresentationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isPopoverSendMenuEnabled];

  if (v6)
  {
    v7 = [(CKSendMenuPresentation *)self delegate];
    v8 = [v7 sendMenuPresentationShouldUseKeyboardSnapshot:self];

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

    v11 = [(CKSendMenuPresentation *)self popoverRootViewController];
    [v11 setDelegate:self];

    v12 = objc_alloc_init(CKSendMenuPopoverTransitioningDelegate);
    [(CKSendMenuPresentation *)self setSendMenuTransitioningDelegate:v12];

    v13 = [(CKSendMenuPresentation *)self sendMenuTransitioningDelegate];
    [(CKSendMenuPopoverViewController *)self->_popoverRootViewController setTransitioningDelegate:v13];

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

    v20 = [(CKSendMenuPresentation *)self sendMenuViewController];
    v21 = [v20 view];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:1];

    v22 = [(CKSendMenuPresentation *)self sendMenuViewController];
    v23 = [v22 view];
    [v23 setAutoresizingMask:0];

    v24 = [(CKSendMenuPresentation *)self sendMenuViewController];
    v25 = [v24 view];
    [v25 setFrame:{0.0, 0.0, v17, v19}];

    v26 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(v25) = [v26 isPopoverSendMenuEnabled];

    if ((v25 & 1) == 0)
    {
      v27 = [(CKSendMenuPresentation *)self popoverRootViewController];
      v28 = [v27 view];
      [v28 setFrame:{0.0, 0.0, v17, v19}];
    }
  }

  else
  {
    [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext willPresentAppCard];
  }

  v29 = [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext anchorView];
  v30 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v31 = [v30 isPopoverSendMenuEnabled];

  if (v31)
  {
    v32 = [(CKSendMenuPresentation *)self popoverContainerViewController];
    [(CKSendMenuPopoverViewController *)v32 setDelegate:self];
    appCardContentViewController = self->_sendMenuViewController;
    if (!appCardContentViewController)
    {
      appCardContentViewController = self->_appCardContentViewController;
    }

    [(CKSendMenuPopoverViewController *)v32 updateChildViewController:appCardContentViewController style:self->_appCardPresentationStyle completion:&__block_literal_global_210_0];
    v34 = [(CKSendMenuPopoverViewController *)v32 presentationController];
    if (objc_opt_respondsToSelector())
    {
      v35 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
      [v35 setSubvariant:@"messagesTapback"];
      [v35 setFlexible:1];
      v36 = [MEMORY[0x1E69DCA68] effectWithGlass:v35];
      [v34 setBackgroundEffect:v36];
    }

    v37 = self->_sendMenuViewController;
    if (v37)
    {
      [(CKSendMenuViewController *)v37 preferredContentSize];
      [(CKSendMenuPopoverViewController *)v32 setPreferredContentSize:?];
    }

    [v34 setDelegate:self];
    [v34 setSourceView:v29];
    [v34 _setIgnoresKeyboardNotifications:1];
    if ([objc_opt_class() _shouldUseZoomTransitionForSendMenuPopover])
    {
      objc_initWeak(&location, v29);
      v38 = MEMORY[0x1E69DD260];
      v47 = MEMORY[0x1E69E9820];
      v48 = 3221225472;
      v49 = __66__CKSendMenuPresentation__beginPopoverPresentationWithCompletion___block_invoke_2;
      v50 = &unk_1E72F3658;
      objc_copyWeak(&v51, &location);
      v39 = [v38 zoomWithOptions:0 sourceViewProvider:&v47];
      [(CKSendMenuPopoverViewController *)v32 setPreferredTransition:v39, v47, v48, v49, v50];
      v40 = [v29 traitCollection];
      if ([v40 isTranscriptBackgroundActive] && objc_msgSend(v40, "isDiffusedSystemGlassSettingEnabled"))
      {
        v41 = [v40 ck_systemUserInterfaceStyle];
      }

      else
      {
        v41 = 0;
      }

      [(CKSendMenuPopoverViewController *)v32 setOverrideUserInterfaceStyle:v41];

      objc_destroyWeak(&v51);
      objc_destroyWeak(&location);
    }

    v44 = self->_appCardContentViewController;
    if (!v44 || !self->_sendMenuViewController)
    {
      v46 = [(CKSendMenuPresentation *)self presentingViewController];
      [v46 presentViewController:v32 animated:1 completion:v4];

      goto LABEL_30;
    }

    popoverRootViewController = v32;
  }

  else
  {
    v32 = [(CKSendMenuPopoverViewController *)self->_popoverRootViewController presentationController];
    v42 = [CKSendMenuPopoverPresentationControllerAnchorItem alloc];
    [v29 bounds];
    v43 = [(CKSendMenuPopoverPresentationControllerAnchorItem *)v42 initWithView:v29 rect:?];
    [(CKSendMenuPopoverViewController *)v32 setAnchorItem:v43];

    [(CKSendMenuPopoverViewController *)v32 setDelegate:self];
    [(CKSendMenuPopoverViewController *)v32 setSendMenuViewController:self->_sendMenuViewController];
    [(CKSendMenuPopoverViewController *)v32 setAppCardContentViewController:self->_appCardContentViewController];
    if (self->_appCardContentViewController)
    {
      [(CKSendMenuPopoverViewController *)v32 setAppCardPresentationStyle:self->_appCardPresentationStyle];
    }

    v44 = [(CKSendMenuPresentation *)self presentingViewController];
    v34 = v44;
    popoverRootViewController = self->_popoverRootViewController;
  }

  [v44 presentViewController:popoverRootViewController animated:1 completion:v4];
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

      v3 = IMLogHandleForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [CKSendMenuPresentation rePresentSendMenu];
      }
    }

    else
    {
      v3 = IMLogHandleForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
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
        v3 = IMLogHandleForCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
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
        v3 = [(CKSendMenuPresentation *)self sendMenuViewController];
        [v3 rePresentSendMenu];
        self->_presentationState = 2;
        break;
      case 4:
        v3 = IMLogHandleForCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          [CKSendMenuPresentation rePresentSendMenu];
        }

        break;
      default:
        return;
    }
  }
}

- (void)_beginFullscreenPresentationWithCompletion:(id)a3
{
  v21 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestShowKeyboardSnapshotForSendMenu];

  self->_hasRequestedKeyboardSnapshot = 1;
  v5 = objc_loadWeakRetained(&self->_presentingViewController);
  v6 = [v5 view];
  v7 = [v6 window];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(CKSendMenuViewController *)self->_sendMenuViewController view];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = objc_loadWeakRetained(&self->_presentingViewController);
  v18 = [v17 view];
  v19 = [v18 window];
  v20 = [(CKSendMenuViewController *)self->_sendMenuViewController view];
  [v19 addSubview:v20];

  v21[2]();
}

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  location[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
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
      v18 = v6;
      v7 = _Block_copy(&v14);
      v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v9 = [v8 isPopoverSendMenuEnabled];

      if (v9)
      {
        goto LABEL_4;
      }

      v12 = [(CKSendMenuPresentation *)self overlayPresentationContext];
      v13 = [v12 presentationStyle];

      if (!v13)
      {
        [(CKSendMenuPresentation *)self _dismissFullscreenPresentationAnimated:v4 completion:v7];
        goto LABEL_13;
      }

      if (v13 == 1)
      {
LABEL_4:
        [(CKSendMenuPresentation *)self _dismissPopoverPresentationAnimated:v4 completion:v7];
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

- (void)__dismissPopoverPresentationAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isPopoverSendMenuEnabled];

  if (v8)
  {
    v9 = [(CKSendMenuPresentation *)self popoverContainerViewController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__CKSendMenuPresentation___dismissPopoverPresentationAnimated_completion___block_invoke;
    v16[3] = &unk_1E72EE5D8;
    v10 = &v17;
    v16[4] = self;
    v17 = v6;
    v11 = v6;
    [v9 dismissViewControllerAnimated:v4 completion:v16];
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
    v15 = v6;
    v13 = v6;
    [(CKSendMenuPopoverViewController *)popoverRootViewController dismissViewControllerAnimated:v4 completion:v14];
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

- (void)_dismissPopoverPresentationAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    [(CKSendMenuPresentation *)self __dismissPopoverPresentationAnimated:1 completion:v6];
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
    v10 = v6;
    [v8 _performWithoutDeferringTransitions:v9];
  }
}

- (void)_dismissFullscreenPresentationAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v8 = a4;
  if (v4)
  {
    v6 = [(CKSendMenuPresentation *)self sendMenuViewController];
    [v6 performFullScreenDismissAnimationWithCompletion:v8];

    v7 = v6;
  }

  else
  {
    [(CKSendMenuPresentation *)self removeSendMenuFromViewHierarchy];
    (*(v8 + 2))(v8, 1);
    v7 = v8;
  }
}

- (void)removeSendMenuFromViewHierarchy
{
  [(CKSendMenuPresentation *)self requestDismissKeyboardSnapshotForSendMenuIfNeeded];
  v3 = [(CKSendMenuPresentation *)self sendMenuViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

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
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isPopoverSendMenuEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = [(CKSendMenuPresentation *)self overlayPresentationContext];
    v6 = [v5 presentationStyle];

    if (!v6)
    {
      [(CKSendMenuPresentation *)self _layoutFullScreenSendMenuView];
    }

    [(CKSendMenuPresentation *)self informSendMenuOfAnchorViewPositionChangeIfNecessary];
  }
}

- (void)informSendMenuOfAnchorViewPositionChangeIfNecessary
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isPopoverSendMenuEnabled];

  if ((v4 & 1) == 0)
  {
    v22 = [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext anchorView];
    [v22 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v22 window];
    [v22 convertRect:v13 toView:{v6, v8, v10, v12}];
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
  v14 = [(CKSendMenuPresentation *)self presentingViewController];
  v3 = [v14 view];
  v4 = [v3 window];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CKSendMenuViewController *)self->_sendMenuViewController view];
  [v13 setFrame:{v6, v8, v10, v12}];
}

- (void)_delegateDidDismissSendMenu
{
  [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext didDismissSendMenuPresentation];
  v4 = [(CKSendMenuPresentation *)self delegate];
  v3 = [(CKSendMenuPresentation *)self overlayPresentationContext];
  [v4 didDismissSendMenu:self usingPresentationContext:v3];
}

- (void)presentCardWithContentViewController:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E69A8070];
  v10 = a3;
  v11 = [v9 sharedFeatureFlags];
  v12 = [v11 isPopoverSendMenuEnabled];

  if (v12)
  {
    v13 = [(CKSendMenuPresentation *)self popoverContainerViewController];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__CKSendMenuPresentation_presentCardWithContentViewController_style_completion___block_invoke;
    v14[3] = &unk_1E72EBDB8;
    v15 = v8;
    [v13 updateChildViewController:v10 style:a4 completion:v14];
  }

  else
  {
    [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext willPresentAppCard];
    v13 = [(CKSendMenuPopoverViewController *)self->_popoverRootViewController presentationController];
    [v13 presentCardWithContentViewController:v10 style:a4 completion:v8];
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
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isPopoverSendMenuEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = [(CKSendMenuPresentation *)self overlayPresentationContext];
    v6 = [v5 presentationStyle];

    if (!v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
      v7 = [WeakRetained view];
      v8 = [v7 window];
      v9 = [(CKSendMenuViewController *)self->_sendMenuViewController view];
      [v8 bringSubviewToFront:v9];
    }
  }
}

- (id)newPopoverLayoutMetrics
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isPopoverSendMenuEnabled];

  if (v4)
  {
    popoverContainerViewController = self->_popoverContainerViewController;
    if (popoverContainerViewController)
    {
      v6 = [(CKSendMenuPopoverContainerViewController *)popoverContainerViewController view];
      v7 = [(CKSendMenuPopoverContainerViewController *)self->_popoverContainerViewController view];
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(CKSendMenuPresentation *)self presentingViewController];
      v17 = [v16 view];
      [v6 convertRect:v17 toView:{v9, v11, v13, v15}];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v26 = self->_popoverContainerViewController;
      v27 = [(CKSendMenuPopoverContainerViewController *)v26 childViewControllers];
      v28 = [v27 firstObject];
      LODWORD(v17) = v28 != self->_sendMenuViewController;

      v29 = 2 * v17;
      v30 = [CKPopoverViewLayoutMetrics alloc];
      v31 = [(CKSendMenuPresentation *)self presentingViewController];
      v32 = [v31 view];
      v33 = [v32 coordinateSpace];
      v34 = [(CKPopoverViewLayoutMetrics *)v30 initWithState:v29 frame:v33 coordinateSpace:v19, v21, v23, v25];

LABEL_10:
      return v34;
    }
  }

  else
  {
    popoverRootViewController = self->_popoverRootViewController;
    if (popoverRootViewController)
    {
      v31 = [(CKSendMenuPopoverViewController *)popoverRootViewController presentationController];
      if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v34 = [v31 newPopoverLayoutMetrics];
      }

      else
      {
        v34 = 0;
      }

      goto LABEL_10;
    }
  }

  return 0;
}

- (void)sendMenuPresentationControllerWantsToBeDismissed:(id)a3
{
  if (self->_presentationState == 2)
  {
    [(CKSendMenuPresentation *)self dismissAnimated:1 completion:0];
  }
}

- (void)sendMenuPresentationControllerWillDismiss:(id)a3
{
  [(CKSceneOverlayPresentationContext *)self->_overlayPresentationContext willDismissSendMenuPresentation];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sendMenuPresentationWillDismiss:self];
}

- (void)sendMenuHasInitialFrame:(CGRect)a3
{
  sendMenuHasInitialFrame = self->_sendMenuHasInitialFrame;
  if (sendMenuHasInitialFrame)
  {
    sendMenuHasInitialFrame[2](a3.origin, *&a3.origin.y, a3.size, *&a3.size.height);
  }
}

- (void)sendMenuFrameChanged:(CGRect)a3
{
  sendMenuFrameChanged = self->_sendMenuFrameChanged;
  if (sendMenuFrameChanged)
  {
    sendMenuFrameChanged[2](a3.origin, *&a3.origin.y, a3.size, *&a3.size.height);
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
@interface CKBrowserTransitionCoordinator
- (BOOL)_shouldRestrictToPortraitOrientationForPlugin:(id)plugin;
- (BOOL)isHostingRemoteKeyboardView;
- (BOOL)isPresentingFullScreenModal;
- (BOOL)shouldAlwaysShowAppTitle;
- (BOOL)updateBrowserSessionForPlugin:(id)plugin datasource:(id)datasource;
- (BOOL)usePresentationWindowDuringTransition;
- (BOOL)wasCurrentBrowserExpanded;
- (CGRect)cachedCompactFrame;
- (CGSize)_clampedModalContentSizeForSize:(CGSize)result;
- (CKBrowserTransitionCoordinatorDelegate)delegate;
- (CKBrowserViewControllerSendDelegate)sendDelegate;
- (UIViewController)presentingViewController;
- (UIWindow)preModalKeyWindow;
- (UIWindow)previousKeyWindow;
- (id)appIconOverride;
- (id)appTitleOverride;
- (id)modalPresentationViewController;
- (id)requestOwnershipOfBrowserForConsumer:(int64_t)consumer;
- (id)transitionViewController;
- (void)dismissCurrentFullScreenModalAnimated:(BOOL)animated completion:(id)completion;
- (void)expandedAppViewControllerDidTransitionFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation;
- (void)presentPluginFullScreenModal:(id)modal datasource:(id)datasource preferredContentSize:(CGSize)size animated:(BOOL)animated completion:(id)completion;
- (void)releaseOwnershipOfBrowserForConsumer:(int64_t)consumer;
- (void)setCurrentBrowser:(id)browser;
- (void)setCurrentConsumer:(int64_t)consumer;
- (void)setExpanded:(BOOL)expanded withReason:(int64_t)reason;
- (void)updateBrowser:(id)browser;
- (void)updateSupportedInterfaceOrientationsOfAppWindow:(id)window forPlugin:(id)plugin;
@end

@implementation CKBrowserTransitionCoordinator

- (BOOL)wasCurrentBrowserExpanded
{
  currentBrowser = [(CKBrowserTransitionCoordinator *)self currentBrowser];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  currentBrowser2 = [(CKBrowserTransitionCoordinator *)self currentBrowser];
  wasExpandedPresentation = [currentBrowser2 wasExpandedPresentation];

  return wasExpandedPresentation;
}

- (BOOL)isHostingRemoteKeyboardView
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  windows = [mEMORY[0x1E69DC668] windows];

  v4 = [windows countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(windows);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [windows countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  firstResponder = [v4 firstResponder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)usePresentationWindowDuringTransition
{
  presentingViewController = [(CKBrowserTransitionCoordinator *)self presentingViewController];
  traitCollection = [presentingViewController traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v5 = CKIsRunningInMacCatalyst();
  result = 0;
  if (!v5 && userInterfaceIdiom != 6)
  {
    return !IMIsRunningIniMessageAppsViewService() && !IMIsRunningIniMessageAppExtension() && CKIsRunningInInCallService() == 0;
  }

  return result;
}

- (id)modalPresentationViewController
{
  transitionViewController = [(CKBrowserTransitionCoordinator *)self transitionViewController];
  if ([(CKBrowserTransitionCoordinator *)self shouldPresentModalFromPresentingViewController])
  {
    presentingViewController = [(CKBrowserTransitionCoordinator *)self presentingViewController];
  }

  else
  {
    if (![(CKBrowserTransitionCoordinator *)self usePresentationWindowDuringTransition])
    {
      goto LABEL_6;
    }

    modalAppWindow = [(CKBrowserTransitionCoordinator *)self modalAppWindow];
    presentingViewController = [modalAppWindow rootViewController];

    transitionViewController = modalAppWindow;
  }

  transitionViewController = presentingViewController;
LABEL_6:

  return transitionViewController;
}

- (id)transitionViewController
{
  if (-[CKBrowserTransitionCoordinator usePresentationWindowDuringTransition](self, "usePresentationWindowDuringTransition") || (-[CKBrowserTransitionCoordinator delegate](self, "delegate"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) == 0) || (-[CKBrowserTransitionCoordinator delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 transitionsPresentationViewController], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "__ck_topViewController"), rootViewController = objc_claimAutoreleasedReturnValue(), v6, v5, !rootViewController))
  {
    appWindow = [(CKBrowserTransitionCoordinator *)self appWindow];
    rootViewController = [appWindow rootViewController];

    if (!rootViewController)
    {
      keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
      rootViewController = [keyWindow rootViewController];
    }
  }

  return rootViewController;
}

- (BOOL)updateBrowserSessionForPlugin:(id)plugin datasource:(id)datasource
{
  v29 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  datasourceCopy = datasource;
  identifier = [pluginCopy identifier];
  v9 = [identifier isEqualToString:*MEMORY[0x1E69A69A8]];

  appWindow = [(CKBrowserTransitionCoordinator *)self appWindow];
  [(CKBrowserTransitionCoordinator *)self updateSupportedInterfaceOrientationsOfAppWindow:appWindow forPlugin:pluginCopy];

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      identifier2 = [pluginCopy identifier];
      v25 = 138412290;
      v26 = identifier2;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "updateBrowserSessionForPlugin - %@", &v25, 0xCu);
    }
  }

  conversation = [(CKBrowserTransitionCoordinator *)self conversation];
  recipientStrings = [conversation recipientStrings];
  v15 = [pluginCopy shouldShowForRecipients:recipientStrings];

  if (!v15)
  {
    goto LABEL_18;
  }

  if ((v9 & 1) == 0)
  {
    if (![(CKBrowserTransitionCoordinator *)self currentConsumer])
    {
      [(CKBrowserTransitionCoordinator *)self setCachedCompactFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v16 = +[CKBalloonPluginManager sharedInstance];
      identifier3 = [pluginCopy identifier];
      v17 = [v16 viewControllerForPluginIdentifier:identifier3 dataSource:datasourceCopy];

      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        identifier4 = [pluginCopy identifier];
        currentConsumer = [(CKBrowserTransitionCoordinator *)self currentConsumer];
        if (currentConsumer > 3)
        {
          v21 = 0;
        }

        else
        {
          v21 = off_1E72F6A10[currentConsumer];
        }

        v25 = 138412546;
        v26 = identifier4;
        v27 = 2112;
        v28 = v21;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Request to update browser session for plugin %@ denied as %@ currently has lock on browser", &v25, 0x16u);
      }
    }

LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  [(CKBrowserTransitionCoordinator *)self setCachedCompactFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v16 = +[CKBalloonPluginManager sharedInstance];
  v17 = [v16 digitalTouchViewControllerWithDataSource:datasourceCopy];
LABEL_14:

  [(CKBrowserTransitionCoordinator *)self updateBrowser:v17];
  v23 = 1;
LABEL_19:

  return v23;
}

- (void)updateBrowser:(id)browser
{
  browserCopy = browser;
  sendDelegate = [(CKBrowserTransitionCoordinator *)self sendDelegate];
  [browserCopy setSendDelegate:sendDelegate];

  if (objc_opt_respondsToSelector())
  {
    conversation = [(CKBrowserTransitionCoordinator *)self conversation];
    senderIdentifier = [conversation senderIdentifier];
    [browserCopy setSender:senderIdentifier];
  }

  if (objc_opt_respondsToSelector())
  {
    conversation2 = [(CKBrowserTransitionCoordinator *)self conversation];
    recipientStrings = [conversation2 recipientStrings];

    [browserCopy setRecipients:recipientStrings];
  }

  if (objc_opt_respondsToSelector())
  {
    conversation3 = [(CKBrowserTransitionCoordinator *)self conversation];
    chat = [conversation3 chat];
    guid = [chat guid];
    [browserCopy setConversationID:guid];
  }

  if (objc_opt_respondsToSelector())
  {
    conversation4 = [(CKBrowserTransitionCoordinator *)self conversation];
    chat2 = [conversation4 chat];
    engramID = [chat2 engramID];
    [browserCopy setConversationEngramID:engramID];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [browserCopy isLoaded] ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  currentBrowser = [(CKBrowserTransitionCoordinator *)self currentBrowser];
  v17 = (currentBrowser != browserCopy) | v15;

  currentBrowser2 = [(CKBrowserTransitionCoordinator *)self currentBrowser];

  if (currentBrowser2)
  {
    if (v17)
    {
      delegate = [(CKBrowserTransitionCoordinator *)self delegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        delegate2 = [(CKBrowserTransitionCoordinator *)self delegate];
        currentBrowser3 = [(CKBrowserTransitionCoordinator *)self currentBrowser];
        [delegate2 browserTransitionCoordinator:self browserWillBecomeInactive:currentBrowser3];
      }
    }
  }

  delegate3 = [(CKBrowserTransitionCoordinator *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    delegate4 = [(CKBrowserTransitionCoordinator *)self delegate];
    [delegate4 browserTransitionCoordinator:self preferredSizeForBrowser:browserCopy];
    v27 = v26;
    v29 = v28;

    view = [browserCopy view];
    [view frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    if ((v27 != *MEMORY[0x1E695F060] || v29 != *(MEMORY[0x1E695F060] + 8)) && (v27 != v36 || v29 != v38))
    {
      view2 = [browserCopy view];
      [view2 setFrame:{v32, v34, v27, v29}];
    }
  }

  if ((v17 & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && ![(CKBrowserTransitionCoordinator *)self underTest])
  {
    [browserCopy loadRemoteViewWithCompletion:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [browserCopy prepareForDisplay];
  }

  [(CKBrowserTransitionCoordinator *)self setCurrentBrowser:browserCopy];
}

- (id)requestOwnershipOfBrowserForConsumer:(int64_t)consumer
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(CKBrowserTransitionCoordinator *)self currentConsumer]&& [(CKBrowserTransitionCoordinator *)self currentConsumer]!= consumer)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if (consumer > 3)
        {
          v7 = 0;
        }

        else
        {
          v7 = off_1E72F6A10[consumer];
        }

        currentConsumer = [(CKBrowserTransitionCoordinator *)self currentConsumer];
        if (currentConsumer > 3)
        {
          v9 = 0;
        }

        else
        {
          v9 = off_1E72F6A10[currentConsumer];
        }

        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "%@ tried to take browser ownership but %@ is the current owner", &v11, 0x16u);
      }
    }

    currentBrowser = 0;
  }

  else
  {
    [(CKBrowserTransitionCoordinator *)self setCurrentConsumer:consumer];
    currentBrowser = [(CKBrowserTransitionCoordinator *)self currentBrowser];
  }

  return currentBrowser;
}

- (void)releaseOwnershipOfBrowserForConsumer:(int64_t)consumer
{
  if ([(CKBrowserTransitionCoordinator *)self currentConsumer]== consumer)
  {

    [(CKBrowserTransitionCoordinator *)self setCurrentConsumer:0];
  }
}

- (BOOL)_shouldRestrictToPortraitOrientationForPlugin:(id)plugin
{
  v3 = MEMORY[0x1E69DC938];
  pluginCopy = plugin;
  currentDevice = [v3 currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1;
  identifier = [pluginCopy identifier];
  LOBYTE(userInterfaceIdiom) = [identifier isEqualToString:*MEMORY[0x1E69A6988]];

  identifier2 = [pluginCopy identifier];

  LOBYTE(pluginCopy) = [identifier2 isEqualToString:*MEMORY[0x1E69A69A8]];
  return v7 & (userInterfaceIdiom | pluginCopy);
}

- (void)updateSupportedInterfaceOrientationsOfAppWindow:(id)window forPlugin:(id)plugin
{
  windowCopy = window;
  pluginCopy = plugin;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = windowCopy;
    [v7 setRestrictedToPortraitOrientation:{-[CKBrowserTransitionCoordinator _shouldRestrictToPortraitOrientationForPlugin:](self, "_shouldRestrictToPortraitOrientationForPlugin:", pluginCopy)}];
  }
}

- (CGSize)_clampedModalContentSizeForSize:(CGSize)result
{
  if (result.width == 0.0)
  {
    result.width = 624.0;
  }

  if (result.height == 0.0)
  {
    result.height = 746.0;
  }

  return result;
}

- (void)presentPluginFullScreenModal:(id)modal datasource:(id)datasource preferredContentSize:(CGSize)size animated:(BOOL)animated completion:(id)completion
{
  height = size.height;
  width = size.width;
  v81 = *MEMORY[0x1E69E9840];
  modalCopy = modal;
  datasourceCopy = datasource;
  completionCopy = completion;
  usePresentationWindowDuringTransition = [(CKBrowserTransitionCoordinator *)self usePresentationWindowDuringTransition];
  if ([(CKBrowserTransitionCoordinator *)self isPresentingFullScreenModal])
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Already presenting extension in full screen modal.", buf, 2u);
      }
    }

    goto LABEL_51;
  }

  if (modalCopy)
  {
    animatedCopy = animated;
    v67 = usePresentationWindowDuringTransition;
    v16 = [objc_alloc(objc_msgSend(modalCopy "browserClass"))];
    v17 = CKIsRunningInMacCatalyst();
    if (v17)
    {
      identifier = [modalCopy identifier];
      v19 = IMBalloonExtensionIDWithSuffix();
      v68 = [identifier isEqualToString:v19];
    }

    else
    {
      v68 = 0;
    }

    if (+[CKUtilities isIpad])
    {
      identifier2 = [modalCopy identifier];
      v23 = IMBalloonExtensionIDWithSuffix();
      v24 = [identifier2 isEqualToString:v23] ^ 1;
    }

    else
    {
      v24 = 1;
    }

    v25 = v17 != 0;
    identifier3 = [modalCopy identifier];
    v27 = IMBalloonExtensionIDWithSuffix();
    v28 = [identifier3 isEqualToString:v27];

    v65 = v28;
    if ((v25 & v28 & 1) == 0)
    {
      [v16 setIsPrimaryViewController:0];
    }

    if (v68)
    {
      [v16 setPreferredContentSize:{580.0, 548.0}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v16 loadRemoteViewWithCompletion:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [v16 setCurrentBrowserConsumer:3];
    }

    [(CKBrowserTransitionCoordinator *)self setCurrentModalBrowser:v16];
    v29 = [[CKFullscreenBrowserNavigationController alloc] initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    [(CKFullscreenBrowserNavigationController *)v29 setModalInPresentation:v24];
    v30 = [CKFullScreenCardAppViewController alloc];
    conversation = [(CKBrowserTransitionCoordinator *)self conversation];
    v32 = [(CKFullScreenCardAppViewController *)v30 initWithConversation:conversation plugin:modalCopy];

    [(CKFullScreenCardAppViewController *)v32 setContentViewController:v16];
    [(CKFullScreenCardAppViewController *)v32 setDelegate:self];
    sendDelegate = [(CKBrowserTransitionCoordinator *)self sendDelegate];
    [(CKFullScreenCardAppViewController *)v32 setSendDelegate:sendDelegate];

    v78 = v32;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
    [(CKFullscreenBrowserNavigationController *)v29 setViewControllers:v34];

    if ([(CKFullScreenCardAppViewController *)v32 conformsToProtocol:&unk_1F051F498])
    {
      presentationController = [(CKFullscreenBrowserNavigationController *)v29 presentationController];
      [presentationController setDelegate:v32];

      if (v68)
      {
        v36 = 548.0;
        v37 = 580.0;
      }

      else if (v28 & 1) != 0 && (IMSharedHelperDeviceIsiPad())
      {
        v37 = 640.0;
        v36 = 640.0;
      }

      else
      {
        [(CKBrowserTransitionCoordinator *)self _clampedModalContentSizeForSize:width, height];
      }

      [(CKFullscreenBrowserNavigationController *)v29 setPreferredContentSize:v37, v36];
    }

    if (objc_opt_respondsToSelector())
    {
      parentTransitioningDelegate = [(CKFullScreenCardAppViewController *)v32 parentTransitioningDelegate];
      [(CKFullscreenBrowserNavigationController *)v29 setTransitioningDelegate:parentTransitioningDelegate];
    }

    modalAppWindow = [(CKBrowserTransitionCoordinator *)self modalAppWindow];
    v40 = modalAppWindow == 0;

    if (v40 && v67)
    {
      balloonPlugin = [v16 balloonPlugin];
      v42 = [(CKBrowserTransitionCoordinator *)self _shouldRestrictToPortraitOrientationForPlugin:balloonPlugin];

      v43 = IMSharedHelperDeviceIsiPad();
      v44 = [CKPresentationControllerWindow alloc];
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      keyWindow = [mEMORY[0x1E69DC668] keyWindow];
      [keyWindow bounds];
      v47 = [(CKPresentationControllerWindow *)v44 initWithFrame:0 allowsRotation:(v43 ^ 1) & v65 allowsStatusBarChanges:v42 restrictedToPortraitOrientation:?];

      transitionViewController = [(CKBrowserTransitionCoordinator *)self transitionViewController];
      view = [transitionViewController view];
      window = [view window];
      windowScene = [window windowScene];
      [(CKPresentationControllerWindow *)v47 setWindowScene:windowScene];

      [(CKBrowserTransitionCoordinator *)self setModalAppWindow:v47];
    }

    else
    {
      if (!v67)
      {
        [(CKBrowserTransitionCoordinator *)self setPresentedModalBrowserNavigationController:v29];
        goto LABEL_44;
      }

      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v52, OS_LOG_TYPE_INFO, "CKBrowserTransitionCoordinator: FullScreenModal presentation: appWindow unexpected not nil. We didn't cleanup correctly.", buf, 2u);
        }
      }
    }

    [(CKBrowserTransitionCoordinator *)self setPresentedModalBrowserNavigationController:v29];
    modalAppWindow2 = [(CKBrowserTransitionCoordinator *)self modalAppWindow];
    [modalAppWindow2 setWindowLevel:*MEMORY[0x1E69DE7E0]];

    keyWindow2 = [MEMORY[0x1E69DD2E8] keyWindow];
    [(CKBrowserTransitionCoordinator *)self setPreModalKeyWindow:keyWindow2];

    modalAppWindow3 = [(CKBrowserTransitionCoordinator *)self modalAppWindow];
    [modalAppWindow3 makeKeyAndVisible];

LABEL_44:
    modalPresentationViewController = [(CKBrowserTransitionCoordinator *)self modalPresentationViewController];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __115__CKBrowserTransitionCoordinator_presentPluginFullScreenModal_datasource_preferredContentSize_animated_completion___block_invoke;
    aBlock[3] = &unk_1E72F69F0;
    v57 = modalPresentationViewController;
    v72 = v57;
    v58 = v29;
    v73 = v58;
    v76 = animatedCopy;
    v77 = v68;
    v75 = xmmword_190DD18B0;
    v59 = v16;
    v74 = v59;
    v60 = _Block_copy(aBlock);
    delegate = [(CKBrowserTransitionCoordinator *)self delegate];
    v62 = objc_opt_respondsToSelector();

    if (v62)
    {
      delegate2 = [(CKBrowserTransitionCoordinator *)self delegate];
      [delegate2 browserTransitionCoordinator:self willPresentBrowserModally:v59];
    }

    if (v67 || ([v57 presentedViewController], v64 = objc_claimAutoreleasedReturnValue(), v64, !v64))
    {
      v60[2](v60);
    }

    else
    {
      [v57 dismissViewControllerAnimated:1 completion:v60];
    }

    goto LABEL_51;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v80 = objc_opt_class();
      v21 = v80;
      _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "%@: No plugin provided!", buf, 0xCu);
    }
  }

LABEL_51:
}

void __115__CKBrowserTransitionCoordinator_presentPluginFullScreenModal_datasource_preferredContentSize_animated_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __115__CKBrowserTransitionCoordinator_presentPluginFullScreenModal_datasource_preferredContentSize_animated_completion___block_invoke_2;
  v5[3] = &unk_1E72F69C8;
  v9 = *(a1 + 73);
  v6 = v2;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v3 presentViewController:v6 animated:v4 completion:v5];
}

void __115__CKBrowserTransitionCoordinator_presentPluginFullScreenModal_datasource_preferredContentSize_animated_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
    v4 = [*(a1 + 32) view];
    v5 = [v4 window];
    v6 = [v5 windowScene];
    v7 = [v6 sizeRestrictions];
    [v7 setMaximumSize:{v2, v3}];

    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = [*(a1 + 32) view];
    v11 = [v10 window];
    v12 = [v11 windowScene];
    v13 = [v12 sizeRestrictions];
    [v13 setMinimumSize:{v8, v9}];
  }

  v14 = [*(a1 + 40) view];
  [v14 setAlpha:1.0];
}

- (BOOL)isPresentingFullScreenModal
{
  presentedModalBrowserNavigationController = [(CKBrowserTransitionCoordinator *)self presentedModalBrowserNavigationController];
  v3 = presentedModalBrowserNavigationController != 0;

  return v3;
}

- (void)dismissCurrentFullScreenModalAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(CKBrowserTransitionCoordinator *)self isPresentingFullScreenModal])
  {
    currentModalBrowser = [(CKBrowserTransitionCoordinator *)self currentModalBrowser];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__CKBrowserTransitionCoordinator_dismissCurrentFullScreenModalAnimated_completion___block_invoke;
    aBlock[3] = &unk_1E72EDA68;
    v8 = currentModalBrowser;
    v18 = v8;
    selfCopy = self;
    v20 = completionCopy;
    v9 = _Block_copy(aBlock);
    delegate = [(CKBrowserTransitionCoordinator *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(CKBrowserTransitionCoordinator *)self delegate];
      [delegate2 browserTransitionCoordinatorWillCollapseOrDismiss:self withReason:5];
    }

    preModalKeyWindow = [(CKBrowserTransitionCoordinator *)self preModalKeyWindow];
    [preModalKeyWindow makeKeyWindow];

    [(CKBrowserTransitionCoordinator *)self setPreModalKeyWindow:0];
    presentedModalBrowserNavigationController = [(CKBrowserTransitionCoordinator *)self presentedModalBrowserNavigationController];
    [presentedModalBrowserNavigationController dismissViewControllerAnimated:animatedCopy completion:v9];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Modal dismissal did not occur, not presenting modal", v16, 2u);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __83__CKBrowserTransitionCoordinator_dismissCurrentFullScreenModalAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  v3 = [*(a1 + 40) modalAppWindow];
  [v3 setHidden:1];

  v4 = [*(a1 + 40) modalAppWindow];
  v5 = [v4 rootViewController];
  [v5 dismissViewControllerAnimated:0 completion:0];

  v6 = [*(a1 + 40) delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [*(a1 + 40) delegate];
    [v7 browserTransitionCoordinatorDidCollapseOrDismiss:*(a1 + 40) withReason:5];
  }

  v8 = [*(a1 + 40) modalAppWindow];
  [v8 setRootViewController:0];

  [*(a1 + 40) setModalAppWindow:0];
  v9 = [*(a1 + 40) currentModalBrowser];
  [v9 unloadRemoteView];

  [*(a1 + 40) setPresentedModalBrowserNavigationController:0];
  [*(a1 + 40) setCurrentModalBrowser:0];
  result = *(a1 + 48);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

- (void)expandedAppViewControllerDidTransitionFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation
{
  delegate = [(CKBrowserTransitionCoordinator *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CKBrowserTransitionCoordinator *)self delegate];
    [delegate2 browserTransitionCoordinator:self didTransitionFromOrientation:orientation toOrientation:toOrientation];
  }
}

- (BOOL)shouldAlwaysShowAppTitle
{
  delegate = [(CKBrowserTransitionCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    shouldAlwaysShowAppTitle = [delegate shouldAlwaysShowAppTitle];
  }

  else
  {
    shouldAlwaysShowAppTitle = 0;
  }

  return shouldAlwaysShowAppTitle;
}

- (id)appTitleOverride
{
  delegate = [(CKBrowserTransitionCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    appTitleOverride = [delegate appTitleOverride];
  }

  else
  {
    appTitleOverride = 0;
  }

  return appTitleOverride;
}

- (id)appIconOverride
{
  delegate = [(CKBrowserTransitionCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    appIconOverride = [delegate appIconOverride];
  }

  else
  {
    appIconOverride = 0;
  }

  return appIconOverride;
}

- (void)setCurrentConsumer:(int64_t)consumer
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_currentConsumer != consumer)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        currentConsumer = self->_currentConsumer;
        if (currentConsumer > 3)
        {
          v7 = 0;
        }

        else
        {
          v7 = off_1E72F6A10[currentConsumer];
        }

        if (consumer > 3)
        {
          v8 = 0;
        }

        else
        {
          v8 = off_1E72F6A10[consumer];
        }

        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Browser consumer ownership changing from %@ to %@", &v10, 0x16u);
      }
    }

    self->_currentConsumer = consumer;
    currentBrowser = [(CKBrowserTransitionCoordinator *)self currentBrowser];
    if (objc_opt_respondsToSelector())
    {
      [currentBrowser setCurrentBrowserConsumer:self->_currentConsumer];
    }
  }
}

- (void)setCurrentBrowser:(id)browser
{
  v15 = *MEMORY[0x1E69E9840];
  browserCopy = browser;
  if (self->_currentBrowser != browserCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        balloonPlugin = [(CKBrowserViewControllerProtocol *)self->_currentBrowser balloonPlugin];
        identifier = [balloonPlugin identifier];
        balloonPlugin2 = [(CKBrowserViewControllerProtocol *)browserCopy balloonPlugin];
        identifier2 = [balloonPlugin2 identifier];
        v11 = 138412546;
        v12 = identifier;
        v13 = 2112;
        v14 = identifier2;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Current browser session transitioning from %@ to %@", &v11, 0x16u);
      }
    }

    objc_storeStrong(&self->_currentBrowser, browser);
    if (objc_opt_respondsToSelector())
    {
      [(CKBrowserViewControllerProtocol *)self->_currentBrowser setCurrentBrowserConsumer:[(CKBrowserTransitionCoordinator *)self currentConsumer]];
    }
  }
}

- (void)setExpanded:(BOOL)expanded withReason:(int64_t)reason
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_expanded != expanded)
  {
    expandedCopy = expanded;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        if (self->_expanded)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        *v13 = 138412802;
        *&v13[4] = v8;
        if (expandedCopy)
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        *&v13[12] = 2112;
        *&v13[14] = v9;
        v14 = 2048;
        reasonCopy = reason;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Browser expanded transitioning from %@ to %@ with reason %lld ", v13, 0x20u);
      }
    }

    [(CKBrowserTransitionCoordinator *)self setLastTransitionReason:reason, *v13];
    self->_expanded = expandedCopy;
    delegate = [(CKBrowserTransitionCoordinator *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(CKBrowserTransitionCoordinator *)self delegate];
      [delegate2 browserTransitionCoordinator:self expandedStateDidChange:-[CKBrowserTransitionCoordinator isExpanded](self withReason:{"isExpanded"), reason}];
    }
  }
}

- (CKBrowserTransitionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (CKBrowserViewControllerSendDelegate)sendDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sendDelegate);

  return WeakRetained;
}

- (UIWindow)previousKeyWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_previousKeyWindow);

  return WeakRetained;
}

- (UIWindow)preModalKeyWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_preModalKeyWindow);

  return WeakRetained;
}

- (CGRect)cachedCompactFrame
{
  x = self->_cachedCompactFrame.origin.x;
  y = self->_cachedCompactFrame.origin.y;
  width = self->_cachedCompactFrame.size.width;
  height = self->_cachedCompactFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
@interface CKBrowserTransitionCoordinator
- (BOOL)_shouldRestrictToPortraitOrientationForPlugin:(id)a3;
- (BOOL)isHostingRemoteKeyboardView;
- (BOOL)isPresentingFullScreenModal;
- (BOOL)shouldAlwaysShowAppTitle;
- (BOOL)updateBrowserSessionForPlugin:(id)a3 datasource:(id)a4;
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
- (id)requestOwnershipOfBrowserForConsumer:(int64_t)a3;
- (id)transitionViewController;
- (void)dismissCurrentFullScreenModalAnimated:(BOOL)a3 completion:(id)a4;
- (void)expandedAppViewControllerDidTransitionFromOrientation:(int64_t)a3 toOrientation:(int64_t)a4;
- (void)presentPluginFullScreenModal:(id)a3 datasource:(id)a4 preferredContentSize:(CGSize)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)releaseOwnershipOfBrowserForConsumer:(int64_t)a3;
- (void)setCurrentBrowser:(id)a3;
- (void)setCurrentConsumer:(int64_t)a3;
- (void)setExpanded:(BOOL)a3 withReason:(int64_t)a4;
- (void)updateBrowser:(id)a3;
- (void)updateSupportedInterfaceOrientationsOfAppWindow:(id)a3 forPlugin:(id)a4;
@end

@implementation CKBrowserTransitionCoordinator

- (BOOL)wasCurrentBrowserExpanded
{
  v3 = [(CKBrowserTransitionCoordinator *)self currentBrowser];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(CKBrowserTransitionCoordinator *)self currentBrowser];
  v6 = [v5 wasExpandedPresentation];

  return v6;
}

- (BOOL)isHostingRemoteKeyboardView
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 windows];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = [v4 firstResponder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)usePresentationWindowDuringTransition
{
  v2 = [(CKBrowserTransitionCoordinator *)self presentingViewController];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = CKIsRunningInMacCatalyst();
  result = 0;
  if (!v5 && v4 != 6)
  {
    return !IMIsRunningIniMessageAppsViewService() && !IMIsRunningIniMessageAppExtension() && CKIsRunningInInCallService() == 0;
  }

  return result;
}

- (id)modalPresentationViewController
{
  v3 = [(CKBrowserTransitionCoordinator *)self transitionViewController];
  if ([(CKBrowserTransitionCoordinator *)self shouldPresentModalFromPresentingViewController])
  {
    v4 = [(CKBrowserTransitionCoordinator *)self presentingViewController];
  }

  else
  {
    if (![(CKBrowserTransitionCoordinator *)self usePresentationWindowDuringTransition])
    {
      goto LABEL_6;
    }

    v5 = [(CKBrowserTransitionCoordinator *)self modalAppWindow];
    v4 = [v5 rootViewController];

    v3 = v5;
  }

  v3 = v4;
LABEL_6:

  return v3;
}

- (id)transitionViewController
{
  if (-[CKBrowserTransitionCoordinator usePresentationWindowDuringTransition](self, "usePresentationWindowDuringTransition") || (-[CKBrowserTransitionCoordinator delegate](self, "delegate"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) == 0) || (-[CKBrowserTransitionCoordinator delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 transitionsPresentationViewController], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "__ck_topViewController"), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, !v7))
  {
    v8 = [(CKBrowserTransitionCoordinator *)self appWindow];
    v7 = [v8 rootViewController];

    if (!v7)
    {
      v9 = [MEMORY[0x1E69DD2E8] keyWindow];
      v7 = [v9 rootViewController];
    }
  }

  return v7;
}

- (BOOL)updateBrowserSessionForPlugin:(id)a3 datasource:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v8 isEqualToString:*MEMORY[0x1E69A69A8]];

  v10 = [(CKBrowserTransitionCoordinator *)self appWindow];
  [(CKBrowserTransitionCoordinator *)self updateSupportedInterfaceOrientationsOfAppWindow:v10 forPlugin:v6];

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v6 identifier];
      v25 = 138412290;
      v26 = v12;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "updateBrowserSessionForPlugin - %@", &v25, 0xCu);
    }
  }

  v13 = [(CKBrowserTransitionCoordinator *)self conversation];
  v14 = [v13 recipientStrings];
  v15 = [v6 shouldShowForRecipients:v14];

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
      v22 = [v6 identifier];
      v17 = [v16 viewControllerForPluginIdentifier:v22 dataSource:v7];

      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v6 identifier];
        v20 = [(CKBrowserTransitionCoordinator *)self currentConsumer];
        if (v20 > 3)
        {
          v21 = 0;
        }

        else
        {
          v21 = off_1E72F6A10[v20];
        }

        v25 = 138412546;
        v26 = v19;
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
  v17 = [v16 digitalTouchViewControllerWithDataSource:v7];
LABEL_14:

  [(CKBrowserTransitionCoordinator *)self updateBrowser:v17];
  v23 = 1;
LABEL_19:

  return v23;
}

- (void)updateBrowser:(id)a3
{
  v40 = a3;
  v4 = [(CKBrowserTransitionCoordinator *)self sendDelegate];
  [v40 setSendDelegate:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [(CKBrowserTransitionCoordinator *)self conversation];
    v6 = [v5 senderIdentifier];
    [v40 setSender:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(CKBrowserTransitionCoordinator *)self conversation];
    v8 = [v7 recipientStrings];

    [v40 setRecipients:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [(CKBrowserTransitionCoordinator *)self conversation];
    v10 = [v9 chat];
    v11 = [v10 guid];
    [v40 setConversationID:v11];
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [(CKBrowserTransitionCoordinator *)self conversation];
    v13 = [v12 chat];
    v14 = [v13 engramID];
    [v40 setConversationEngramID:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v40 isLoaded] ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  v16 = [(CKBrowserTransitionCoordinator *)self currentBrowser];
  v17 = (v16 != v40) | v15;

  v18 = [(CKBrowserTransitionCoordinator *)self currentBrowser];

  if (v18)
  {
    if (v17)
    {
      v19 = [(CKBrowserTransitionCoordinator *)self delegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = [(CKBrowserTransitionCoordinator *)self delegate];
        v22 = [(CKBrowserTransitionCoordinator *)self currentBrowser];
        [v21 browserTransitionCoordinator:self browserWillBecomeInactive:v22];
      }
    }
  }

  v23 = [(CKBrowserTransitionCoordinator *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = [(CKBrowserTransitionCoordinator *)self delegate];
    [v25 browserTransitionCoordinator:self preferredSizeForBrowser:v40];
    v27 = v26;
    v29 = v28;

    v30 = [v40 view];
    [v30 frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    if ((v27 != *MEMORY[0x1E695F060] || v29 != *(MEMORY[0x1E695F060] + 8)) && (v27 != v36 || v29 != v38))
    {
      v39 = [v40 view];
      [v39 setFrame:{v32, v34, v27, v29}];
    }
  }

  if ((v17 & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && ![(CKBrowserTransitionCoordinator *)self underTest])
  {
    [v40 loadRemoteViewWithCompletion:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v40 prepareForDisplay];
  }

  [(CKBrowserTransitionCoordinator *)self setCurrentBrowser:v40];
}

- (id)requestOwnershipOfBrowserForConsumer:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(CKBrowserTransitionCoordinator *)self currentConsumer]&& [(CKBrowserTransitionCoordinator *)self currentConsumer]!= a3)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if (a3 > 3)
        {
          v7 = 0;
        }

        else
        {
          v7 = off_1E72F6A10[a3];
        }

        v8 = [(CKBrowserTransitionCoordinator *)self currentConsumer];
        if (v8 > 3)
        {
          v9 = 0;
        }

        else
        {
          v9 = off_1E72F6A10[v8];
        }

        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "%@ tried to take browser ownership but %@ is the current owner", &v11, 0x16u);
      }
    }

    v5 = 0;
  }

  else
  {
    [(CKBrowserTransitionCoordinator *)self setCurrentConsumer:a3];
    v5 = [(CKBrowserTransitionCoordinator *)self currentBrowser];
  }

  return v5;
}

- (void)releaseOwnershipOfBrowserForConsumer:(int64_t)a3
{
  if ([(CKBrowserTransitionCoordinator *)self currentConsumer]== a3)
  {

    [(CKBrowserTransitionCoordinator *)self setCurrentConsumer:0];
  }
}

- (BOOL)_shouldRestrictToPortraitOrientationForPlugin:(id)a3
{
  v3 = MEMORY[0x1E69DC938];
  v4 = a3;
  v5 = [v3 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = (v6 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  v8 = [v4 identifier];
  LOBYTE(v6) = [v8 isEqualToString:*MEMORY[0x1E69A6988]];

  v9 = [v4 identifier];

  LOBYTE(v4) = [v9 isEqualToString:*MEMORY[0x1E69A69A8]];
  return v7 & (v6 | v4);
}

- (void)updateSupportedInterfaceOrientationsOfAppWindow:(id)a3 forPlugin:(id)a4
{
  v8 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v8;
    [v7 setRestrictedToPortraitOrientation:{-[CKBrowserTransitionCoordinator _shouldRestrictToPortraitOrientationForPlugin:](self, "_shouldRestrictToPortraitOrientationForPlugin:", v6)}];
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

- (void)presentPluginFullScreenModal:(id)a3 datasource:(id)a4 preferredContentSize:(CGSize)a5 animated:(BOOL)a6 completion:(id)a7
{
  height = a5.height;
  width = a5.width;
  v81 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v70 = a4;
  v69 = a7;
  v14 = [(CKBrowserTransitionCoordinator *)self usePresentationWindowDuringTransition];
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

  if (v13)
  {
    v66 = a6;
    v67 = v14;
    v16 = [objc_alloc(objc_msgSend(v13 "browserClass"))];
    v17 = CKIsRunningInMacCatalyst();
    if (v17)
    {
      v18 = [v13 identifier];
      v19 = IMBalloonExtensionIDWithSuffix();
      v68 = [v18 isEqualToString:v19];
    }

    else
    {
      v68 = 0;
    }

    if (+[CKUtilities isIpad])
    {
      v22 = [v13 identifier];
      v23 = IMBalloonExtensionIDWithSuffix();
      v24 = [v22 isEqualToString:v23] ^ 1;
    }

    else
    {
      v24 = 1;
    }

    v25 = v17 != 0;
    v26 = [v13 identifier];
    v27 = IMBalloonExtensionIDWithSuffix();
    v28 = [v26 isEqualToString:v27];

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
    v31 = [(CKBrowserTransitionCoordinator *)self conversation];
    v32 = [(CKFullScreenCardAppViewController *)v30 initWithConversation:v31 plugin:v13];

    [(CKFullScreenCardAppViewController *)v32 setContentViewController:v16];
    [(CKFullScreenCardAppViewController *)v32 setDelegate:self];
    v33 = [(CKBrowserTransitionCoordinator *)self sendDelegate];
    [(CKFullScreenCardAppViewController *)v32 setSendDelegate:v33];

    v78 = v32;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
    [(CKFullscreenBrowserNavigationController *)v29 setViewControllers:v34];

    if ([(CKFullScreenCardAppViewController *)v32 conformsToProtocol:&unk_1F051F498])
    {
      v35 = [(CKFullscreenBrowserNavigationController *)v29 presentationController];
      [v35 setDelegate:v32];

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
      v38 = [(CKFullScreenCardAppViewController *)v32 parentTransitioningDelegate];
      [(CKFullscreenBrowserNavigationController *)v29 setTransitioningDelegate:v38];
    }

    v39 = [(CKBrowserTransitionCoordinator *)self modalAppWindow];
    v40 = v39 == 0;

    if (v40 && v67)
    {
      v41 = [v16 balloonPlugin];
      v42 = [(CKBrowserTransitionCoordinator *)self _shouldRestrictToPortraitOrientationForPlugin:v41];

      v43 = IMSharedHelperDeviceIsiPad();
      v44 = [CKPresentationControllerWindow alloc];
      v45 = [MEMORY[0x1E69DC668] sharedApplication];
      v46 = [v45 keyWindow];
      [v46 bounds];
      v47 = [(CKPresentationControllerWindow *)v44 initWithFrame:0 allowsRotation:(v43 ^ 1) & v65 allowsStatusBarChanges:v42 restrictedToPortraitOrientation:?];

      v48 = [(CKBrowserTransitionCoordinator *)self transitionViewController];
      v49 = [v48 view];
      v50 = [v49 window];
      v51 = [v50 windowScene];
      [(CKPresentationControllerWindow *)v47 setWindowScene:v51];

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
    v53 = [(CKBrowserTransitionCoordinator *)self modalAppWindow];
    [v53 setWindowLevel:*MEMORY[0x1E69DE7E0]];

    v54 = [MEMORY[0x1E69DD2E8] keyWindow];
    [(CKBrowserTransitionCoordinator *)self setPreModalKeyWindow:v54];

    v55 = [(CKBrowserTransitionCoordinator *)self modalAppWindow];
    [v55 makeKeyAndVisible];

LABEL_44:
    v56 = [(CKBrowserTransitionCoordinator *)self modalPresentationViewController];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __115__CKBrowserTransitionCoordinator_presentPluginFullScreenModal_datasource_preferredContentSize_animated_completion___block_invoke;
    aBlock[3] = &unk_1E72F69F0;
    v57 = v56;
    v72 = v57;
    v58 = v29;
    v73 = v58;
    v76 = v66;
    v77 = v68;
    v75 = xmmword_190DD18B0;
    v59 = v16;
    v74 = v59;
    v60 = _Block_copy(aBlock);
    v61 = [(CKBrowserTransitionCoordinator *)self delegate];
    v62 = objc_opt_respondsToSelector();

    if (v62)
    {
      v63 = [(CKBrowserTransitionCoordinator *)self delegate];
      [v63 browserTransitionCoordinator:self willPresentBrowserModally:v59];
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
  v2 = [(CKBrowserTransitionCoordinator *)self presentedModalBrowserNavigationController];
  v3 = v2 != 0;

  return v3;
}

- (void)dismissCurrentFullScreenModalAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(CKBrowserTransitionCoordinator *)self isPresentingFullScreenModal])
  {
    v7 = [(CKBrowserTransitionCoordinator *)self currentModalBrowser];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__CKBrowserTransitionCoordinator_dismissCurrentFullScreenModalAnimated_completion___block_invoke;
    aBlock[3] = &unk_1E72EDA68;
    v8 = v7;
    v18 = v8;
    v19 = self;
    v20 = v6;
    v9 = _Block_copy(aBlock);
    v10 = [(CKBrowserTransitionCoordinator *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(CKBrowserTransitionCoordinator *)self delegate];
      [v12 browserTransitionCoordinatorWillCollapseOrDismiss:self withReason:5];
    }

    v13 = [(CKBrowserTransitionCoordinator *)self preModalKeyWindow];
    [v13 makeKeyWindow];

    [(CKBrowserTransitionCoordinator *)self setPreModalKeyWindow:0];
    v14 = [(CKBrowserTransitionCoordinator *)self presentedModalBrowserNavigationController];
    [v14 dismissViewControllerAnimated:v4 completion:v9];
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

    if (v6)
    {
      v6[2](v6);
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

- (void)expandedAppViewControllerDidTransitionFromOrientation:(int64_t)a3 toOrientation:(int64_t)a4
{
  v7 = [(CKBrowserTransitionCoordinator *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CKBrowserTransitionCoordinator *)self delegate];
    [v9 browserTransitionCoordinator:self didTransitionFromOrientation:a3 toOrientation:a4];
  }
}

- (BOOL)shouldAlwaysShowAppTitle
{
  v2 = [(CKBrowserTransitionCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldAlwaysShowAppTitle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)appTitleOverride
{
  v2 = [(CKBrowserTransitionCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 appTitleOverride];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)appIconOverride
{
  v2 = [(CKBrowserTransitionCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 appIconOverride];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCurrentConsumer:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_currentConsumer != a3)
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

        if (a3 > 3)
        {
          v8 = 0;
        }

        else
        {
          v8 = off_1E72F6A10[a3];
        }

        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Browser consumer ownership changing from %@ to %@", &v10, 0x16u);
      }
    }

    self->_currentConsumer = a3;
    v9 = [(CKBrowserTransitionCoordinator *)self currentBrowser];
    if (objc_opt_respondsToSelector())
    {
      [v9 setCurrentBrowserConsumer:self->_currentConsumer];
    }
  }
}

- (void)setCurrentBrowser:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_currentBrowser != v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(CKBrowserViewControllerProtocol *)self->_currentBrowser balloonPlugin];
        v8 = [v7 identifier];
        v9 = [(CKBrowserViewControllerProtocol *)v5 balloonPlugin];
        v10 = [v9 identifier];
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Current browser session transitioning from %@ to %@", &v11, 0x16u);
      }
    }

    objc_storeStrong(&self->_currentBrowser, a3);
    if (objc_opt_respondsToSelector())
    {
      [(CKBrowserViewControllerProtocol *)self->_currentBrowser setCurrentBrowserConsumer:[(CKBrowserTransitionCoordinator *)self currentConsumer]];
    }
  }
}

- (void)setExpanded:(BOOL)a3 withReason:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_expanded != a3)
  {
    v5 = a3;
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
        if (v5)
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
        v15 = a4;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Browser expanded transitioning from %@ to %@ with reason %lld ", v13, 0x20u);
      }
    }

    [(CKBrowserTransitionCoordinator *)self setLastTransitionReason:a4, *v13];
    self->_expanded = v5;
    v10 = [(CKBrowserTransitionCoordinator *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(CKBrowserTransitionCoordinator *)self delegate];
      [v12 browserTransitionCoordinator:self expandedStateDidChange:-[CKBrowserTransitionCoordinator isExpanded](self withReason:{"isExpanded"), a4}];
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
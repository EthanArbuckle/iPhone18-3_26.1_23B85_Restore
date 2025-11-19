@interface CKFullScreenCardAppViewController
- (BOOL)_currentPluginIsJellyfish;
- (BOOL)canBecomeFirstResponder;
- (BOOL)isBusiness;
- (BOOL)prefersStatusBarHidden;
- (CGRect)finalContentViewFrame;
- (CKExpandedAppViewControllerDelegate)delegate;
- (CKFullScreenCardAppViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4;
- (CKFullScreenCardAppViewController)initWithConversation:(id)a3 plugin:(id)a4;
- (UIViewControllerTransitioningDelegate)parentTransitioningDelegate;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleRemoteConnectionInterrupted:(id)a3;
- (void)_updateDimmingViewAlpha;
- (void)dealloc;
- (void)loadView;
- (void)setContentView:(id)a3;
- (void)setContentViewController:(id)a3;
- (void)setIsBusiness:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation CKFullScreenCardAppViewController

- (CKFullScreenCardAppViewController)initWithConversation:(id)a3 plugin:(id)a4
{
  v5 = a3;
  v6 = [(CKFullScreenCardAppViewController *)self init];
  v7 = v6;
  if (v6)
  {
    [(CKFullScreenCardAppViewController *)v6 setConversation:v5];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v7 selector:sel__handleRemoteConnectionInterrupted_ name:*MEMORY[0x1E69A6F28] object:0];
  }

  return v7;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = CKFullScreenCardAppViewController;
  [(CKFullScreenCardAppViewController *)&v5 loadView];
  v3 = [(CKFullScreenCardAppViewController *)self view];
  [v3 setBackgroundColor:0];

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  -[CKFullScreenCardAppViewController setLastKnownDeviceOrientation:](self, "setLastKnownDeviceOrientation:", [v4 orientation]);
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = CKFullScreenCardAppViewController;
  [(CKFullScreenCardAppViewController *)&v18 viewDidLayoutSubviews];
  v3 = [(CKFullScreenCardAppViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKFullScreenCardAppViewController *)self contentView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(CKFullScreenCardAppViewController *)self dismissView];
  [v13 setHidden:1];

  v14 = [(CKFullScreenCardAppViewController *)self contentView];
  v15 = [v14 superview];

  if (!v15)
  {
    v16 = [(CKFullScreenCardAppViewController *)self view];
    v17 = [(CKFullScreenCardAppViewController *)self contentView];
    [v16 addSubview:v17];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CKFullScreenCardAppViewController;
  [(CKFullScreenCardAppViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CKFullScreenCardAppViewController;
  [(CKFullScreenCardAppViewController *)&v7 viewDidDisappear:a3];
  [(CKFullScreenCardAppViewController *)self setEditing:0];
  v4 = [(CKFullScreenCardAppViewController *)self contentViewController];
  v5 = [v4 isDismissing];

  if ((v5 & 1) == 0)
  {
    v6 = [(CKFullScreenCardAppViewController *)self contentViewController];
    [v6 dismiss];
  }
}

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  if (self->_contentViewController != v5)
  {
    v10 = v5;
    [(CKFullScreenCardAppViewController *)self removeChildViewController:?];
    v6 = [(CKBrowserViewControllerProtocol *)self->_contentViewController view];
    [v6 removeFromSuperview];

    [(CKBrowserViewControllerProtocol *)self->_contentViewController didMoveToParentViewController:0];
    objc_storeStrong(&self->_contentViewController, a3);
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        [(CKBrowserViewControllerProtocol *)v10 browserScrolledOnScreen];
      }

      [(CKFullScreenCardAppViewController *)self addChildViewController:self->_contentViewController];
      v7 = [(CKBrowserViewControllerProtocol *)self->_contentViewController view];
      [(CKFullScreenCardAppViewController *)self setContentView:v7];

      [(CKBrowserViewControllerProtocol *)self->_contentViewController didMoveToParentViewController:self];
      if (CKIsRunningInMessages())
      {
        v8 = [(CKFullScreenCardAppViewController *)self _currentPluginIsJellyfish];
        v9 = [MEMORY[0x1E69DC668] sharedApplication];
        [v9 setIdleTimerDisabled:v8];
      }
    }

    [(CKFullScreenCardAppViewController *)self setNeedsStatusBarAppearanceUpdate];
    [(CKFullScreenCardAppViewController *)self reloadInputViews];
    v5 = v10;
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v9 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    v7 = [(CKFullScreenCardAppViewController *)self view];
    [v7 addSubview:v9];

    v8 = [(CKFullScreenCardAppViewController *)self view];
    [v8 setNeedsLayout];

    v5 = v9;
  }
}

- (CGRect)finalContentViewFrame
{
  v3 = [(CKFullScreenCardAppViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKFullScreenCardAppViewController *)self view];
  [v12 safeAreaInsets];
  v14 = v5 + v13;

  v15 = [(CKFullScreenCardAppViewController *)self view];
  [v15 safeAreaInsets];
  v17 = v16;
  v18 = [(CKFullScreenCardAppViewController *)self view];
  [v18 safeAreaInsets];
  v20 = v9 - (v17 + v19);

  v21 = v14;
  v22 = v7;
  v23 = v20;
  v24 = v11;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 setIdleTimerDisabled:0];

  dismissView = self->_dismissView;
  if (dismissView)
  {
    [(CKDismissView *)dismissView setDelegate:0];
  }

  v6.receiver = self;
  v6.super_class = CKFullScreenCardAppViewController;
  [(CKFullScreenCardAppViewController *)&v6 dealloc];
}

- (void)willMoveToParentViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setNavigationBarHidden:1 animated:0];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  contentViewController = self->_contentViewController;
  if (contentViewController)
  {

    return [(CKBrowserViewControllerProtocol *)contentViewController supportedInterfaceOrientations];
  }

  else
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 supportedInterfaceOrientations];

    return v6;
  }
}

- (int64_t)preferredStatusBarStyle
{
  v3 = [(CKFullScreenCardAppViewController *)self contentViewController];

  if (v3)
  {
    v4 = [(CKFullScreenCardAppViewController *)self contentViewController];
    v5 = [v4 preferredStatusBarStyle];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKFullScreenCardAppViewController;
    return [(CKFullScreenCardAppViewController *)&v7 preferredStatusBarStyle];
  }
}

- (BOOL)prefersStatusBarHidden
{
  v3 = [(CKFullScreenCardAppViewController *)self contentViewController];

  if (v3)
  {
    v4 = [(CKFullScreenCardAppViewController *)self contentViewController];
    v5 = [v4 prefersStatusBarHidden];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKFullScreenCardAppViewController;
    return [(CKFullScreenCardAppViewController *)&v7 prefersStatusBarHidden];
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 2 * ([v4 horizontalSizeClass] != 1);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(CKFullScreenCardAppViewController *)self contentViewController];
  v3 = [v2 shouldShowChatChrome];

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CKFullScreenCardAppViewController;
  v7 = a4;
  [(CKFullScreenCardAppViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__CKFullScreenCardAppViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E72F0B40;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

uint64_t __88__CKFullScreenCardAppViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 orientation];

  result = [*(a1 + 32) lastKnownDeviceOrientation];
  if (result != v3)
  {
    v5 = [*(a1 + 32) delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) delegate];
      [v7 expandedAppViewControllerDidTransitionFromOrientation:objc_msgSend(*(a1 + 32) toOrientation:{"lastKnownDeviceOrientation"), v3}];
    }

    [*(a1 + 32) setLastKnownDeviceOrientation:v3];
    v8 = *(a1 + 32);

    return [v8 becomeFirstResponder];
  }

  return result;
}

- (BOOL)_currentPluginIsJellyfish
{
  v2 = [(CKFullScreenCardAppViewController *)self balloonPlugin];
  v3 = [v2 identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_updateDimmingViewAlpha
{
  if ([(CKFullScreenCardAppViewController *)self _shouldShowDimmingView])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [(CKFullScreenCardAppViewController *)self dismissView];
  [v4 setAlpha:v3];
}

- (CKExpandedAppViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewControllerTransitioningDelegate)parentTransitioningDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTransitioningDelegate);

  return WeakRetained;
}

- (BOOL)isBusiness
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  contentViewController = self->_contentViewController;

  return [(CKBrowserViewControllerProtocol *)contentViewController isBusiness];
}

- (void)setIsBusiness:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    contentViewController = self->_contentViewController;

    [(CKBrowserViewControllerProtocol *)contentViewController setIsBusiness:v3];
  }
}

- (CKFullScreenCardAppViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[CKFullScreenCardAppViewController(CKBrowserViewControllerProtocol) initWithBalloonPlugin:dataSource:]", "CKFullScreenCardAppViewController.m", 363, "false");
}

- (void)_handleRemoteConnectionInterrupted:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69A6F20]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(CKFullScreenCardAppViewController *)self contentViewController];
    v7 = [v6 balloonPlugin];
    v8 = [v7 identifier];

    if ([v8 isEqualToIgnoringCase:v5])
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Dismissing due to extension interruption for %@", &v13, 0xCu);
      }

      v10 = [(CKFullScreenCardAppViewController *)self sendDelegate];
      v11 = [(CKFullScreenCardAppViewController *)self balloonPlugin];
      v12 = [v11 identifier];
      [v10 dismissAndReloadInputViews:1 forPlugin:v12];
    }
  }
}

@end
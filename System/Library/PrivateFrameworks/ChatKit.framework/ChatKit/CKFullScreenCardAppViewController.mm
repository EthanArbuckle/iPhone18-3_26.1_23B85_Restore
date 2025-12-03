@interface CKFullScreenCardAppViewController
- (BOOL)_currentPluginIsJellyfish;
- (BOOL)canBecomeFirstResponder;
- (BOOL)isBusiness;
- (BOOL)prefersStatusBarHidden;
- (CGRect)finalContentViewFrame;
- (CKExpandedAppViewControllerDelegate)delegate;
- (CKFullScreenCardAppViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source;
- (CKFullScreenCardAppViewController)initWithConversation:(id)conversation plugin:(id)plugin;
- (UIViewControllerTransitioningDelegate)parentTransitioningDelegate;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleRemoteConnectionInterrupted:(id)interrupted;
- (void)_updateDimmingViewAlpha;
- (void)dealloc;
- (void)loadView;
- (void)setContentView:(id)view;
- (void)setContentViewController:(id)controller;
- (void)setIsBusiness:(BOOL)business;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation CKFullScreenCardAppViewController

- (CKFullScreenCardAppViewController)initWithConversation:(id)conversation plugin:(id)plugin
{
  conversationCopy = conversation;
  v6 = [(CKFullScreenCardAppViewController *)self init];
  v7 = v6;
  if (v6)
  {
    [(CKFullScreenCardAppViewController *)v6 setConversation:conversationCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handleRemoteConnectionInterrupted_ name:*MEMORY[0x1E69A6F28] object:0];
  }

  return v7;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = CKFullScreenCardAppViewController;
  [(CKFullScreenCardAppViewController *)&v5 loadView];
  view = [(CKFullScreenCardAppViewController *)self view];
  [view setBackgroundColor:0];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  -[CKFullScreenCardAppViewController setLastKnownDeviceOrientation:](self, "setLastKnownDeviceOrientation:", [currentDevice orientation]);
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = CKFullScreenCardAppViewController;
  [(CKFullScreenCardAppViewController *)&v18 viewDidLayoutSubviews];
  view = [(CKFullScreenCardAppViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  contentView = [(CKFullScreenCardAppViewController *)self contentView];
  [contentView setFrame:{v5, v7, v9, v11}];

  dismissView = [(CKFullScreenCardAppViewController *)self dismissView];
  [dismissView setHidden:1];

  contentView2 = [(CKFullScreenCardAppViewController *)self contentView];
  superview = [contentView2 superview];

  if (!superview)
  {
    view2 = [(CKFullScreenCardAppViewController *)self view];
    contentView3 = [(CKFullScreenCardAppViewController *)self contentView];
    [view2 addSubview:contentView3];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CKFullScreenCardAppViewController;
  [(CKFullScreenCardAppViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = CKFullScreenCardAppViewController;
  [(CKFullScreenCardAppViewController *)&v7 viewDidDisappear:disappear];
  [(CKFullScreenCardAppViewController *)self setEditing:0];
  contentViewController = [(CKFullScreenCardAppViewController *)self contentViewController];
  isDismissing = [contentViewController isDismissing];

  if ((isDismissing & 1) == 0)
  {
    contentViewController2 = [(CKFullScreenCardAppViewController *)self contentViewController];
    [contentViewController2 dismiss];
  }
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_contentViewController != controllerCopy)
  {
    v10 = controllerCopy;
    [(CKFullScreenCardAppViewController *)self removeChildViewController:?];
    view = [(CKBrowserViewControllerProtocol *)self->_contentViewController view];
    [view removeFromSuperview];

    [(CKBrowserViewControllerProtocol *)self->_contentViewController didMoveToParentViewController:0];
    objc_storeStrong(&self->_contentViewController, controller);
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        [(CKBrowserViewControllerProtocol *)v10 browserScrolledOnScreen];
      }

      [(CKFullScreenCardAppViewController *)self addChildViewController:self->_contentViewController];
      view2 = [(CKBrowserViewControllerProtocol *)self->_contentViewController view];
      [(CKFullScreenCardAppViewController *)self setContentView:view2];

      [(CKBrowserViewControllerProtocol *)self->_contentViewController didMoveToParentViewController:self];
      if (CKIsRunningInMessages())
      {
        _currentPluginIsJellyfish = [(CKFullScreenCardAppViewController *)self _currentPluginIsJellyfish];
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        [mEMORY[0x1E69DC668] setIdleTimerDisabled:_currentPluginIsJellyfish];
      }
    }

    [(CKFullScreenCardAppViewController *)self setNeedsStatusBarAppearanceUpdate];
    [(CKFullScreenCardAppViewController *)self reloadInputViews];
    controllerCopy = v10;
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v9 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    view = [(CKFullScreenCardAppViewController *)self view];
    [view addSubview:v9];

    view2 = [(CKFullScreenCardAppViewController *)self view];
    [view2 setNeedsLayout];

    viewCopy = v9;
  }
}

- (CGRect)finalContentViewFrame
{
  view = [(CKFullScreenCardAppViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(CKFullScreenCardAppViewController *)self view];
  [view2 safeAreaInsets];
  v14 = v5 + v13;

  view3 = [(CKFullScreenCardAppViewController *)self view];
  [view3 safeAreaInsets];
  v17 = v16;
  view4 = [(CKFullScreenCardAppViewController *)self view];
  [view4 safeAreaInsets];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setIdleTimerDisabled:0];

  dismissView = self->_dismissView;
  if (dismissView)
  {
    [(CKDismissView *)dismissView setDelegate:0];
  }

  v6.receiver = self;
  v6.super_class = CKFullScreenCardAppViewController;
  [(CKFullScreenCardAppViewController *)&v6 dealloc];
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setNavigationBarHidden:1 animated:0];
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
    supportedInterfaceOrientations = [v5 supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }
}

- (int64_t)preferredStatusBarStyle
{
  contentViewController = [(CKFullScreenCardAppViewController *)self contentViewController];

  if (contentViewController)
  {
    contentViewController2 = [(CKFullScreenCardAppViewController *)self contentViewController];
    preferredStatusBarStyle = [contentViewController2 preferredStatusBarStyle];

    return preferredStatusBarStyle;
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
  contentViewController = [(CKFullScreenCardAppViewController *)self contentViewController];

  if (contentViewController)
  {
    contentViewController2 = [(CKFullScreenCardAppViewController *)self contentViewController];
    prefersStatusBarHidden = [contentViewController2 prefersStatusBarHidden];

    return prefersStatusBarHidden;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKFullScreenCardAppViewController;
    return [(CKFullScreenCardAppViewController *)&v7 prefersStatusBarHidden];
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  collectionCopy = collection;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 2 * ([collectionCopy horizontalSizeClass] != 1);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canBecomeFirstResponder
{
  contentViewController = [(CKFullScreenCardAppViewController *)self contentViewController];
  shouldShowChatChrome = [contentViewController shouldShowChatChrome];

  return shouldShowChatChrome;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CKFullScreenCardAppViewController;
  coordinatorCopy = coordinator;
  [(CKFullScreenCardAppViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__CKFullScreenCardAppViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E72F0B40;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
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
  balloonPlugin = [(CKFullScreenCardAppViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [identifier isEqualToString:v4];

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

  dismissView = [(CKFullScreenCardAppViewController *)self dismissView];
  [dismissView setAlpha:v3];
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

- (void)setIsBusiness:(BOOL)business
{
  businessCopy = business;
  if (objc_opt_respondsToSelector())
  {
    contentViewController = self->_contentViewController;

    [(CKBrowserViewControllerProtocol *)contentViewController setIsBusiness:businessCopy];
  }
}

- (CKFullScreenCardAppViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source
{
  pluginCopy = plugin;
  sourceCopy = source;
  __assert_rtn("[CKFullScreenCardAppViewController(CKBrowserViewControllerProtocol) initWithBalloonPlugin:dataSource:]", "CKFullScreenCardAppViewController.m", 363, "false");
}

- (void)_handleRemoteConnectionInterrupted:(id)interrupted
{
  v15 = *MEMORY[0x1E69E9840];
  userInfo = [interrupted userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69A6F20]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentViewController = [(CKFullScreenCardAppViewController *)self contentViewController];
    balloonPlugin = [contentViewController balloonPlugin];
    identifier = [balloonPlugin identifier];

    if ([identifier isEqualToIgnoringCase:v5])
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = identifier;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Dismissing due to extension interruption for %@", &v13, 0xCu);
      }

      sendDelegate = [(CKFullScreenCardAppViewController *)self sendDelegate];
      balloonPlugin2 = [(CKFullScreenCardAppViewController *)self balloonPlugin];
      identifier2 = [balloonPlugin2 identifier];
      [sendDelegate dismissAndReloadInputViews:1 forPlugin:identifier2];
    }
  }
}

@end
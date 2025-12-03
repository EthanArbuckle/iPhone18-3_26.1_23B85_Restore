@interface CKBrowserAppManagerViewController
- (BOOL)appAllowedByScreenTimeWithBundleIdentifier:(id)identifier;
- (CKBrowserAppManagerViewControllerDelegate)delegate;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)browserAppManagerDidSelectPlugin:(id)plugin;
- (void)delegate_BrowserAppManagerDidSelectPlugin:(id)plugin;
- (void)dismiss;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKBrowserAppManagerViewController

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CKBrowserAppManagerViewController;
  [(CKBrowserViewController *)&v5 viewWillAppear:appear];
  presentationController = [(CKBrowserAppManagerViewController *)self presentationController];
  [presentationController setDelegate:self];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CKBrowserAppManagerViewController;
  [(CKBrowserAppManagerViewController *)&v10 viewDidLoad];
  view = [(CKBrowserAppManagerViewController *)self view];
  v4 = objc_alloc_init(CKAppManagerViewController);
  appViewController = self->_appViewController;
  self->_appViewController = v4;

  [(CKAppManagerViewController *)self->_appViewController setDelegate:self];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_appViewController];
  navController = self->_navController;
  self->_navController = v6;

  view2 = [(UINavigationController *)self->_navController view];
  view3 = [(CKBrowserAppManagerViewController *)self view];
  [view3 bounds];
  [view2 setFrame:?];

  [view2 setAutoresizingMask:18];
  [view addSubview:view2];
  [(CKBrowserAppManagerViewController *)self addChildViewController:self->_navController];
  [(UINavigationController *)self->_navController didMoveToParentViewController:self];
}

- (BOOL)appAllowedByScreenTimeWithBundleIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 1;
  }

  identifierCopy = identifier;
  v4 = IMSharedDowntimeController();
  v5 = [v4 allowedToShowAppExtensionWithBundleIdentifier:identifierCopy];

  return v5;
}

- (void)browserAppManagerDidSelectPlugin:(id)plugin
{
  pluginCopy = plugin;
  [(CKBrowserAppManagerViewController *)self dismiss];
  appBundle = [pluginCopy appBundle];
  bundleIdentifier = [appBundle bundleIdentifier];

  if ([(CKBrowserAppManagerViewController *)self appAllowedByScreenTimeWithBundleIdentifier:bundleIdentifier])
  {
    [(CKBrowserAppManagerViewController *)self delegate_BrowserAppManagerDidSelectPlugin:pluginCopy];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CKBrowserAppManagerViewController *)bundleIdentifier browserAppManagerDidSelectPlugin:v7];
    }
  }
}

- (void)delegate_BrowserAppManagerDidSelectPlugin:(id)plugin
{
  pluginCopy = plugin;
  delegate = [(CKBrowserAppManagerViewController *)self delegate];
  [delegate browserAppManagerDidSelectPlugin:pluginCopy];
}

- (void)dismiss
{
  sendDelegate = [(CKBrowserViewController *)self sendDelegate];
  [sendDelegate dismiss];

  v3 = +[CKBalloonPluginManager sharedInstance];
  [v3 invalidateAppManagerPlugin];
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  NSClassFromString(&cfstr_Ckfullscreenbr.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [[CKBrowserFullscreenRevealAnimationController alloc] initWithDirection:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  NSClassFromString(&cfstr_Ckfullscreenbr.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [[CKBrowserFullscreenRevealAnimationController alloc] initWithDirection:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  NSClassFromString(&cfstr_Ckfullscreenbr.isa);
  if (objc_opt_isKindOfClass())
  {
    v11 = [[CKBrowserFullscreenRevealPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __132__CKBrowserAppManagerViewController_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke;
    v13[3] = &unk_1E72F5048;
    objc_copyWeak(&v14, &location);
    [(CKBrowserFullscreenRevealPresentationController *)v11 setDismissHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __132__CKBrowserAppManagerViewController_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismiss];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  sendDelegate = [(CKBrowserViewController *)self sendDelegate];
  [sendDelegate dismissAndReloadInputViews:1];
}

- (CKBrowserAppManagerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)browserAppManagerDidSelectPlugin:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "ScreenTime preventing launch of Message App with bundle identifier: %@", &v2, 0xCu);
}

@end
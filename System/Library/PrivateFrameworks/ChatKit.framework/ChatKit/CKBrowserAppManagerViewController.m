@interface CKBrowserAppManagerViewController
- (BOOL)appAllowedByScreenTimeWithBundleIdentifier:(id)a3;
- (CKBrowserAppManagerViewControllerDelegate)delegate;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)browserAppManagerDidSelectPlugin:(id)a3;
- (void)delegate_BrowserAppManagerDidSelectPlugin:(id)a3;
- (void)dismiss;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKBrowserAppManagerViewController

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKBrowserAppManagerViewController;
  [(CKBrowserViewController *)&v5 viewWillAppear:a3];
  v4 = [(CKBrowserAppManagerViewController *)self presentationController];
  [v4 setDelegate:self];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CKBrowserAppManagerViewController;
  [(CKBrowserAppManagerViewController *)&v10 viewDidLoad];
  v3 = [(CKBrowserAppManagerViewController *)self view];
  v4 = objc_alloc_init(CKAppManagerViewController);
  appViewController = self->_appViewController;
  self->_appViewController = v4;

  [(CKAppManagerViewController *)self->_appViewController setDelegate:self];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_appViewController];
  navController = self->_navController;
  self->_navController = v6;

  v8 = [(UINavigationController *)self->_navController view];
  v9 = [(CKBrowserAppManagerViewController *)self view];
  [v9 bounds];
  [v8 setFrame:?];

  [v8 setAutoresizingMask:18];
  [v3 addSubview:v8];
  [(CKBrowserAppManagerViewController *)self addChildViewController:self->_navController];
  [(UINavigationController *)self->_navController didMoveToParentViewController:self];
}

- (BOOL)appAllowedByScreenTimeWithBundleIdentifier:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3;
  v4 = IMSharedDowntimeController();
  v5 = [v4 allowedToShowAppExtensionWithBundleIdentifier:v3];

  return v5;
}

- (void)browserAppManagerDidSelectPlugin:(id)a3
{
  v4 = a3;
  [(CKBrowserAppManagerViewController *)self dismiss];
  v5 = [v4 appBundle];
  v6 = [v5 bundleIdentifier];

  if ([(CKBrowserAppManagerViewController *)self appAllowedByScreenTimeWithBundleIdentifier:v6])
  {
    [(CKBrowserAppManagerViewController *)self delegate_BrowserAppManagerDidSelectPlugin:v4];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CKBrowserAppManagerViewController *)v6 browserAppManagerDidSelectPlugin:v7];
    }
  }
}

- (void)delegate_BrowserAppManagerDidSelectPlugin:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserAppManagerViewController *)self delegate];
  [v5 browserAppManagerDidSelectPlugin:v4];
}

- (void)dismiss
{
  v2 = [(CKBrowserViewController *)self sendDelegate];
  [v2 dismiss];

  v3 = +[CKBalloonPluginManager sharedInstance];
  [v3 invalidateAppManagerPlugin];
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = a3;
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

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = a3;
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

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  NSClassFromString(&cfstr_Ckfullscreenbr.isa);
  if (objc_opt_isKindOfClass())
  {
    v11 = [[CKBrowserFullscreenRevealPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v9];
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

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = [(CKBrowserViewController *)self sendDelegate];
  [v3 dismissAndReloadInputViews:1];
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
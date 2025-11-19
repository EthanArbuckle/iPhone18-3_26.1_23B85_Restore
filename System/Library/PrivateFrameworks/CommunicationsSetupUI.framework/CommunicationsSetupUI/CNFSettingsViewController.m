@interface CNFSettingsViewController
- (CNFSettingsViewController)init;
- (id)name;
- (id)settingsClassName;
- (id)specifierTitle;
- (int64_t)serviceType;
- (void)_invokePendingDeepLink;
- (void)_loadChildViewController;
- (void)applicationDidResume;
- (void)containerViewControllerShouldUpdate:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)set_currentChildViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNFSettingsViewController

- (CNFSettingsViewController)init
{
  v7.receiver = self;
  v7.super_class = CNFSettingsViewController;
  v2 = [(CNFSettingsViewController *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D18D68] sharedInstance];
    v4 = [(CNFSettingsViewController *)v2 name];
    [v3 addListenerID:v4 capabilities:*MEMORY[0x277D19338]];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_containerViewControllerShouldUpdate_ name:@"CNFSettingsViewControllerNeedsContainerUpdate" object:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CNFSettingsViewController;
  [(CNFSettingsViewController *)&v10 viewDidLoad];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Container – viewDidLoad", v9, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v4 = [MEMORY[0x277D18D68] sharedInstance];
  v5 = [v4 isConnected];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277D18D68] sharedInstance];
    [v6 blockUntilConnected];
  }

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    CNFRegSetGlobalAppearanceStyle(2);
    CNFRegSetSupportsAutoRotation(1);
  }

  [(CNFSettingsViewController *)self _loadChildViewController];
}

- (void)_loadChildViewController
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(CNFSettingsViewController *)self serviceType];
  CNFRegSetStringTableForServiceType(v3);
  switch(v3)
  {
    case 2:
      goto LABEL_4;
    case 1:
      v4 = [MEMORY[0x277D18DE0] iMessageService];
      goto LABEL_6;
    case 0:
LABEL_4:
      v4 = [MEMORY[0x277D18DE0] facetimeService];
LABEL_6:
      v5 = v4;
      goto LABEL_8;
  }

  v5 = 0;
LABEL_8:
  if ([CNFRegAppleIDSplashViewController shouldShowSplashViewForService:v5 inProgressRegisteringNonPhoneAccount:0])
  {
    v6 = objc_opt_class();
  }

  else
  {
    v7 = [(CNFSettingsViewController *)self settingsClassName];
    v6 = NSClassFromString(v7);
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromClass(v6);
    *buf = 138412290;
    v23 = v9;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Container view controller choosing to show initialChildViewControllerClass %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v21 = NSStringFromClass(v6);
    IMLogString();
  }

  v10 = MEMORY[0x277D3FAD8];
  v11 = [(CNFSettingsViewController *)self specifierTitle];
  v12 = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:2 edit:0];

  v13 = [(CNFSettingsViewController *)self settingsClassName];
  [v12 setProperty:v13 forKey:@"cnf-completionclass"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  [v12 setProperty:v14 forKey:@"ft-serviceType"];

  [v12 setProperty:MEMORY[0x277CBEC38] forKey:@"cnf-hideLearnMoreButton"];
  v15 = [(CNFSettingsViewController *)self specifier];
  v16 = *MEMORY[0x277D40038];
  v17 = [v15 propertyForKey:*MEMORY[0x277D40038]];
  [v12 setProperty:v17 forKey:v16];

  v18 = CreateDetailControllerInstanceWithClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
    if (([v19 isConnected] & 1) == 0)
    {
      [v19 connect:1];
    }
  }

  [v18 setSpecifier:v12];
  [(CNFSettingsViewController *)self set_currentChildViewController:v18];
  if ([(CNFSettingsViewController *)self _hasPendingDeepLink])
  {
    [(CNFSettingsViewController *)self _invokePendingDeepLink];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)set_currentChildViewController:(id)a3
{
  v5 = a3;
  currentChildViewController = self->__currentChildViewController;
  if (currentChildViewController != v5)
  {
    v24 = v5;
    if (currentChildViewController)
    {
      [(PSController *)currentChildViewController willMoveToParentViewController:0];
      v7 = [(PSController *)self->__currentChildViewController view];
      [v7 removeFromSuperview];

      [(PSController *)self->__currentChildViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->__currentChildViewController, a3);
    v8 = self->__currentChildViewController;
    v9 = [(CNFSettingsViewController *)self rootController];
    [(PSController *)v8 setRootController:v9];

    if (v24)
    {
      [(CNFSettingsViewController *)self addChildViewController:v24];
      v10 = [(CNFSettingsViewController *)self view];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [(PSController *)v24 view];
      [v19 setFrame:{v12, v14, v16, v18}];

      v20 = [(CNFSettingsViewController *)self view];
      v21 = [(PSController *)v24 view];
      [v20 addSubview:v21];

      [(PSController *)v24 didMoveToParentViewController:self];
      v22 = [(PSController *)v24 specifier];
      v23 = [v22 name];
      [(CNFSettingsViewController *)self setTitle:v23];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)viewDidLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = CNFSettingsViewController;
  [(CNFSettingsViewController *)&v30 viewDidLayoutSubviews];
  v3 = [(CNFSettingsViewController *)self _currentChildViewController];
  v4 = [v3 view];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CNFSettingsViewController *)self view];
  [v13 bounds];
  v32.origin.x = v14;
  v32.origin.y = v15;
  v32.size.width = v16;
  v32.size.height = v17;
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  v18 = CGRectEqualToRect(v31, v32);

  if (!v18)
  {
    v19 = [(CNFSettingsViewController *)self view];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [(CNFSettingsViewController *)self _currentChildViewController];
    v29 = [v28 view];
    [v29 setFrame:{v21, v23, v25, v27}];
  }
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = CNFSettingsViewController;
  [(CNFSettingsViewController *)&v3 applicationDidResume];
  v2 = [MEMORY[0x277D1A908] sharedInstance];
  [v2 resetCacheSubscriptionInfo];
}

- (void)containerViewControllerShouldUpdate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Container received notification to re-determine child view controller.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(CNFSettingsViewController *)self _loadChildViewController];
  v6 = [(CNFSettingsViewController *)self navigationController];
  v7 = [v6 viewControllers];

  v8 = [(CNFSettingsViewController *)self parentViewController];
  if (v8 && (-[CNFSettingsViewController parentViewController](self, "parentViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v7 containsObject:v9], v9, v8, (v10 & 1) != 0))
  {
    v11 = [(CNFSettingsViewController *)self parentViewController];
  }

  else
  {
    v11 = self;
  }

  v12 = v11;
  v13 = [(CNFSettingsViewController *)self navigationController];
  v14 = [v13 popToViewController:v12 animated:0];

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Container view controller attempted to pop to {%@}.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CNFPendingDeepLinkRepresentation);
  [(CNFPendingDeepLinkRepresentation *)v8 setResourceDictionary:v6];
  [(CNFPendingDeepLinkRepresentation *)v8 setCompletion:v7];
  [(CNFSettingsViewController *)self setPendingDeepLinkRepresentation:v8];
  v9 = [(CNFSettingsViewController *)self _currentChildViewController];

  if (v9)
  {
    [(CNFSettingsViewController *)self _invokePendingDeepLink];
  }

  else
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "Failed to route a prefs link because we have no contained child controller to forward to. Will try again after the childViewController is configured.", v11, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)_invokePendingDeepLink
{
  if (self->_pendingDeepLinkRepresentation)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Forwarding pending prefs deep link now that child controller is configured.", v8, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    v4 = [(CNFPendingDeepLinkRepresentation *)self->_pendingDeepLinkRepresentation resourceDictionary];
    v5 = [(CNFPendingDeepLinkRepresentation *)self->_pendingDeepLinkRepresentation completion];
    pendingDeepLinkRepresentation = self->_pendingDeepLinkRepresentation;
    self->_pendingDeepLinkRepresentation = 0;

    v7 = [(CNFSettingsViewController *)self _currentChildViewController];
    [v7 handleURL:v4 withCompletion:v5];
  }
}

- (id)specifierTitle
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CNFSettingsViewController.m" lineNumber:255 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

- (int64_t)serviceType
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CNFSettingsViewController.m" lineNumber:260 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)settingsClassName
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CNFSettingsViewController.m" lineNumber:265 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)name
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CNFSettingsViewController.m" lineNumber:270 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

@end
@interface CNFSettingsViewController
- (CNFSettingsViewController)init;
- (id)name;
- (id)settingsClassName;
- (id)specifierTitle;
- (int64_t)serviceType;
- (void)_invokePendingDeepLink;
- (void)_loadChildViewController;
- (void)applicationDidResume;
- (void)containerViewControllerShouldUpdate:(id)update;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)set_currentChildViewController:(id)controller;
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
    mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
    name = [(CNFSettingsViewController *)v2 name];
    [mEMORY[0x277D18D68] addListenerID:name capabilities:*MEMORY[0x277D19338]];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_containerViewControllerShouldUpdate_ name:@"CNFSettingsViewControllerNeedsContainerUpdate" object:0];
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

  mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
  isConnected = [mEMORY[0x277D18D68] isConnected];

  if ((isConnected & 1) == 0)
  {
    mEMORY[0x277D18D68]2 = [MEMORY[0x277D18D68] sharedInstance];
    [mEMORY[0x277D18D68]2 blockUntilConnected];
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    CNFRegSetGlobalAppearanceStyle(2);
    CNFRegSetSupportsAutoRotation(1);
  }

  [(CNFSettingsViewController *)self _loadChildViewController];
}

- (void)_loadChildViewController
{
  v24 = *MEMORY[0x277D85DE8];
  serviceType = [(CNFSettingsViewController *)self serviceType];
  CNFRegSetStringTableForServiceType(serviceType);
  switch(serviceType)
  {
    case 2:
      goto LABEL_4;
    case 1:
      iMessageService = [MEMORY[0x277D18DE0] iMessageService];
      goto LABEL_6;
    case 0:
LABEL_4:
      iMessageService = [MEMORY[0x277D18DE0] facetimeService];
LABEL_6:
      v5 = iMessageService;
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
    settingsClassName = [(CNFSettingsViewController *)self settingsClassName];
    v6 = NSClassFromString(settingsClassName);
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
  specifierTitle = [(CNFSettingsViewController *)self specifierTitle];
  v12 = [v10 preferenceSpecifierNamed:specifierTitle target:self set:0 get:0 detail:0 cell:2 edit:0];

  settingsClassName2 = [(CNFSettingsViewController *)self settingsClassName];
  [v12 setProperty:settingsClassName2 forKey:@"cnf-completionclass"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:serviceType];
  [v12 setProperty:v14 forKey:@"ft-serviceType"];

  [v12 setProperty:MEMORY[0x277CBEC38] forKey:@"cnf-hideLearnMoreButton"];
  specifier = [(CNFSettingsViewController *)self specifier];
  v16 = *MEMORY[0x277D40038];
  v17 = [specifier propertyForKey:*MEMORY[0x277D40038]];
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

- (void)set_currentChildViewController:(id)controller
{
  controllerCopy = controller;
  currentChildViewController = self->__currentChildViewController;
  if (currentChildViewController != controllerCopy)
  {
    v24 = controllerCopy;
    if (currentChildViewController)
    {
      [(PSController *)currentChildViewController willMoveToParentViewController:0];
      view = [(PSController *)self->__currentChildViewController view];
      [view removeFromSuperview];

      [(PSController *)self->__currentChildViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->__currentChildViewController, controller);
    v8 = self->__currentChildViewController;
    rootController = [(CNFSettingsViewController *)self rootController];
    [(PSController *)v8 setRootController:rootController];

    if (v24)
    {
      [(CNFSettingsViewController *)self addChildViewController:v24];
      view2 = [(CNFSettingsViewController *)self view];
      [view2 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      view3 = [(PSController *)v24 view];
      [view3 setFrame:{v12, v14, v16, v18}];

      view4 = [(CNFSettingsViewController *)self view];
      view5 = [(PSController *)v24 view];
      [view4 addSubview:view5];

      [(PSController *)v24 didMoveToParentViewController:self];
      specifier = [(PSController *)v24 specifier];
      name = [specifier name];
      [(CNFSettingsViewController *)self setTitle:name];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)viewDidLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = CNFSettingsViewController;
  [(CNFSettingsViewController *)&v30 viewDidLayoutSubviews];
  _currentChildViewController = [(CNFSettingsViewController *)self _currentChildViewController];
  view = [_currentChildViewController view];
  [view frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [(CNFSettingsViewController *)self view];
  [view2 bounds];
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
    view3 = [(CNFSettingsViewController *)self view];
    [view3 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    _currentChildViewController2 = [(CNFSettingsViewController *)self _currentChildViewController];
    view4 = [_currentChildViewController2 view];
    [view4 setFrame:{v21, v23, v25, v27}];
  }
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = CNFSettingsViewController;
  [(CNFSettingsViewController *)&v3 applicationDidResume];
  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  [mEMORY[0x277D1A908] resetCacheSubscriptionInfo];
}

- (void)containerViewControllerShouldUpdate:(id)update
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
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
  navigationController = [(CNFSettingsViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  parentViewController = [(CNFSettingsViewController *)self parentViewController];
  if (parentViewController && (-[CNFSettingsViewController parentViewController](self, "parentViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [viewControllers containsObject:v9], v9, parentViewController, (v10 & 1) != 0))
  {
    selfCopy = [(CNFSettingsViewController *)self parentViewController];
  }

  else
  {
    selfCopy = self;
  }

  v12 = selfCopy;
  navigationController2 = [(CNFSettingsViewController *)self navigationController];
  v14 = [navigationController2 popToViewController:v12 animated:0];

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

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = objc_alloc_init(CNFPendingDeepLinkRepresentation);
  [(CNFPendingDeepLinkRepresentation *)v8 setResourceDictionary:lCopy];
  [(CNFPendingDeepLinkRepresentation *)v8 setCompletion:completionCopy];
  [(CNFSettingsViewController *)self setPendingDeepLinkRepresentation:v8];
  _currentChildViewController = [(CNFSettingsViewController *)self _currentChildViewController];

  if (_currentChildViewController)
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

    resourceDictionary = [(CNFPendingDeepLinkRepresentation *)self->_pendingDeepLinkRepresentation resourceDictionary];
    completion = [(CNFPendingDeepLinkRepresentation *)self->_pendingDeepLinkRepresentation completion];
    pendingDeepLinkRepresentation = self->_pendingDeepLinkRepresentation;
    self->_pendingDeepLinkRepresentation = 0;

    _currentChildViewController = [(CNFSettingsViewController *)self _currentChildViewController];
    [_currentChildViewController handleURL:resourceDictionary withCompletion:completion];
  }
}

- (id)specifierTitle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CNFSettingsViewController.m" lineNumber:255 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

- (int64_t)serviceType
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CNFSettingsViewController.m" lineNumber:260 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)settingsClassName
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CNFSettingsViewController.m" lineNumber:265 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)name
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CNFSettingsViewController.m" lineNumber:270 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

@end
@interface CPSTabBarViewController
- (BOOL)_isEligibleForNowPlayingButton;
- (BOOL)restoresFocusAfterTransition;
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (CPSTabBarViewController)initWithTabBarTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment;
- (CPSTemplateEnvironment)templateEnvironment;
- (CPSTemplateViewControllerDelegate)viewControllerDelegate;
- (id)tabBarTemplate;
- (void)_cleanup;
- (void)_nowPlayingButtonTapped;
- (void)_updateNowPlayingButtonIfNeeded;
- (void)_updateTitle;
- (void)applicationDidBecomeNowPlayingApp:(BOOL)app;
- (void)invalidate;
- (void)removeFromParentViewController;
- (void)setSelectedIndex:(unint64_t)index;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)showNowPlayingButton:(BOOL)button;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPSTabBarViewController

- (CPSTabBarViewController)initWithTabBarTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v15 = 0;
  objc_storeStrong(&v15, delegate);
  v14 = 0;
  objc_storeStrong(&v14, environment);
  v5 = selfCopy;
  selfCopy = 0;
  v13.receiver = v5;
  v13.super_class = CPSTabBarViewController;
  v12 = [(CPSTabBarViewController *)&v13 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    objc_storeStrong(&selfCopy->_associatedTemplate, location[0]);
    objc_storeStrong(&selfCopy->_templateDelegate, v15);
    v6 = objc_opt_new();
    templateProviderFuture = selfCopy->_templateProviderFuture;
    selfCopy->_templateProviderFuture = v6;
    MEMORY[0x277D82BD8](templateProviderFuture);
    objc_storeWeak(&selfCopy->_templateEnvironment, v14);
    [(CPSTabBarViewController *)selfCopy setDelegate:selfCopy];
    if ([v14 canBecomeNowPlayingApp])
    {
      [v14 addTemplateEnvironmentDelegate:selfCopy];
    }

    if ([v14 isNowPlayingApp])
    {
      [(CPSTabBarViewController *)selfCopy showNowPlayingButton:1];
    }
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)tabBarTemplate
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSTabBarViewController *)self associatedTemplate];
  v5 = CPSSafeCast_5(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (void)invalidate
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = CarPlaySupportGeneralLogging();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v17, selfCopy);
    _os_log_impl(&dword_242FE8000, location[0], v13, "Invalidating %@", v17, 0xCu);
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy->_templateProviderFuture, 0);
  viewControllers = [(CPSTabBarViewController *)selfCopy viewControllers];
  v12 = [viewControllers copy];
  MEMORY[0x277D82BD8](viewControllers);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v12);
  v8 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v8)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v8;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v4);
      v9 = CPSSafeProtocolCast_1(&unk_2855D67D8, v11);
      [v9 invalidate];
      objc_storeStrong(&v9, 0);
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&v12, 0);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v2 viewDidLayoutSubviews];
  [(CPSTabBarViewController *)selfCopy _updateNowPlayingButtonIfNeeded];
}

- (void)showNowPlayingButton:(BOOL)button
{
  selfCopy = self;
  v22 = a2;
  buttonCopy = button;
  _accessoryView = [(CPSTabBarViewController *)self _accessoryView];
  v10 = 0;
  if (_accessoryView)
  {
    v10 = buttonCopy;
  }

  MEMORY[0x277D82BD8](_accessoryView);
  if (v10)
  {
    location = CarPlaySupportGeneralLogging();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_impl(&dword_242FE8000, log, type, "Accessory View already set", v18, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  else if (buttonCopy)
  {
    v17 = CarPlaySupportGeneralLogging();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v17;
      v6 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_242FE8000, v5, v6, "Showing Now Playing button in Tab Bar", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v14 = objc_alloc_init(MEMORY[0x277CF9150]);
    [v14 addTarget:selfCopy action:sel__nowPlayingButtonTapped forControlEvents:64];
    [v14 setAccessibilityIdentifier:@"CPTabBarNowPlayingButton"];
    [(CPSTabBarViewController *)selfCopy _setAccessoryView:v14];
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v13 = CarPlaySupportGeneralLogging();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v13;
      v4 = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_impl(&dword_242FE8000, v3, v4, "Hiding Now Playing button in Tab Bar", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    [(CPSTabBarViewController *)selfCopy _setAccessoryView:0];
  }
}

- (void)_nowPlayingButtonTapped
{
  templateEnvironment = [(CPSTabBarViewController *)self templateEnvironment];
  templateProvider = [(CPSTemplateEnvironment *)templateEnvironment templateProvider];
  [(CPTemplateProviding *)templateProvider clientRequestNowPlayingTemplateAnimated:1];
  MEMORY[0x277D82BD8](templateProvider);
  MEMORY[0x277D82BD8](templateEnvironment);
}

- (void)_updateTitle
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v19[1] = a2;
  v13 = objc_opt_class();
  selectedViewController = [(CPSTabBarViewController *)selfCopy selectedViewController];
  v19[0] = CPSSafeCast_5(v13, selectedViewController);
  associatedTemplate = [v19[0] associatedTemplate];
  location = [associatedTemplate identifier];
  MEMORY[0x277D82BD8](associatedTemplate);
  if (location)
  {
    memset(__b, 0, sizeof(__b));
    associatedTemplate2 = [(CPSTabBarViewController *)selfCopy associatedTemplate];
    obj = [(CPTemplate *)associatedTemplate2 templates];
    v12 = [obj countByEnumeratingWithState:__b objects:v21 count:{16, MEMORY[0x277D82BD8](associatedTemplate2).n128_f64[0]}];
    if (v12)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v12;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(__b[1] + 8 * v8);
        identifier = [v17 identifier];
        v5 = [identifier isEqual:location];
        *&v2 = MEMORY[0x277D82BD8](identifier).n128_u64[0];
        if (v5)
        {
          break;
        }

        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [obj countByEnumeratingWithState:__b objects:v21 count:{16, v2}];
          if (!v9)
          {
            goto LABEL_10;
          }
        }
      }

      backTitle = [v17 backTitle];
      [(CPSTabBarViewController *)selfCopy setTitle:?];
      MEMORY[0x277D82BD8](backTitle);
    }

LABEL_10:
    MEMORY[0x277D82BD8](obj);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v19, 0);
}

- (void)setSelectedIndex:(unint64_t)index
{
  selfCopy = self;
  v5 = a2;
  indexCopy = index;
  v3.receiver = self;
  v3.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v3 setSelectedIndex:index];
  [(CPSTabBarViewController *)selfCopy _updateTitle];
}

- (void)applicationDidBecomeNowPlayingApp:(BOOL)app
{
  selfCopy = self;
  v14 = a2;
  appCopy = app;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __61__CPSTabBarViewController_applicationDidBecomeNowPlayingApp___block_invoke;
  v10 = &unk_278D91CA8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = appCopy;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
}

uint64_t __61__CPSTabBarViewController_applicationDidBecomeNowPlayingApp___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isEligibleForNowPlayingButton])
  {
    return [*(a1 + 32) showNowPlayingButton:*(a1 + 40) & 1];
  }

  else
  {
    return [*(a1 + 32) showNowPlayingButton:0];
  }
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  objc_storeStrong(&v10, viewController);
  selectedViewController = [(CPSTabBarViewController *)selfCopy selectedViewController];
  v7 = v10;
  MEMORY[0x277D82BD8](selectedViewController);
  if (selectedViewController == v7)
  {
    v4 = objc_opt_class();
    v9 = CPSSafeCast_5(v4, v10);
    if (v9)
    {
      [v9 scrollToTop];
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v13 = 0;
  objc_storeStrong(&v13, viewController);
  v12 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    associatedTemplate = [v13 associatedTemplate];
    identifier = [associatedTemplate identifier];
    v5 = v12;
    v12 = identifier;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](associatedTemplate);
  }

  [(CPSTabBarViewController *)selfCopy _updateTitle];
  tabBarTemplateDelegate = [(CPSTabBarViewController *)selfCopy tabBarTemplateDelegate];
  v9 = 0;
  if ([tabBarTemplateDelegate conformsToProtocol:&unk_28562C040])
  {
    v9 = v12 != 0;
  }

  *&v6 = MEMORY[0x277D82BD8](tabBarTemplateDelegate).n128_u64[0];
  if (v9)
  {
    tabBarTemplateDelegate2 = [(CPSTabBarViewController *)selfCopy tabBarTemplateDelegate];
    [tabBarTemplateDelegate2 handleActionForControlIdentifier:v12];
    MEMORY[0x277D82BD8](tabBarTemplateDelegate2);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)removeFromParentViewController
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v2 removeFromParentViewController];
  [(CPSTabBarViewController *)selfCopy _cleanup];
}

- (void)_cleanup
{
  objc_storeStrong(&self->_templateProviderFuture, 0);
  viewControllerDelegate = [(CPSTabBarViewController *)self viewControllerDelegate];
  [(CPSTemplateViewControllerDelegate *)viewControllerDelegate templateViewControllerDidPop:self];
  MEMORY[0x277D82BD8](viewControllerDelegate);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v5 viewDidLoad];
  tabBar = [(CPSTabBarViewController *)selfCopy tabBar];
  [tabBar setAccessibilityIdentifier:@"CPTabBar"];
  MEMORY[0x277D82BD8](tabBar);
  if (_UISolariumEnabled())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    view = [(CPSTabBarViewController *)selfCopy view];
    [view setBackgroundColor:clearColor];
    MEMORY[0x277D82BD8](view);
    MEMORY[0x277D82BD8](clearColor);
  }

  [(CPSTabBarViewController *)selfCopy _updateTitle];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v9 viewWillAppear:appear];
  tabBarTemplateDelegate = [(CPSTabBarViewController *)selfCopy tabBarTemplateDelegate];
  v8 = [tabBarTemplateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](tabBarTemplateDelegate).n128_u64[0];
  if (v8)
  {
    tabBarTemplateDelegate2 = [(CPSTabBarViewController *)selfCopy tabBarTemplateDelegate];
    associatedTemplate = [(CPSTabBarViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [tabBarTemplateDelegate2 templateWillAppearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    MEMORY[0x277D82BD8](tabBarTemplateDelegate2);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v9 viewDidAppear:appear];
  tabBarTemplateDelegate = [(CPSTabBarViewController *)selfCopy tabBarTemplateDelegate];
  v8 = [tabBarTemplateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](tabBarTemplateDelegate).n128_u64[0];
  if (v8)
  {
    tabBarTemplateDelegate2 = [(CPSTabBarViewController *)selfCopy tabBarTemplateDelegate];
    associatedTemplate = [(CPSTabBarViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [tabBarTemplateDelegate2 templateDidAppearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    MEMORY[0x277D82BD8](tabBarTemplateDelegate2);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v11 = a2;
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v9 viewWillDisappear:disappear];
  tabBarTemplateDelegate = [(CPSTabBarViewController *)selfCopy tabBarTemplateDelegate];
  v8 = [tabBarTemplateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](tabBarTemplateDelegate).n128_u64[0];
  if (v8)
  {
    tabBarTemplateDelegate2 = [(CPSTabBarViewController *)selfCopy tabBarTemplateDelegate];
    associatedTemplate = [(CPSTabBarViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [tabBarTemplateDelegate2 templateWillDisappearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    MEMORY[0x277D82BD8](tabBarTemplateDelegate2);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v11 = a2;
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v9 viewDidDisappear:disappear];
  tabBarTemplateDelegate = [(CPSTabBarViewController *)selfCopy tabBarTemplateDelegate];
  v8 = [tabBarTemplateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](tabBarTemplateDelegate).n128_u64[0];
  if (v8)
  {
    tabBarTemplateDelegate2 = [(CPSTabBarViewController *)selfCopy tabBarTemplateDelegate];
    associatedTemplate = [(CPSTabBarViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [tabBarTemplateDelegate2 templateDidDisappearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    MEMORY[0x277D82BD8](tabBarTemplateDelegate2);
  }
}

- (BOOL)restoresFocusAfterTransition
{
  selectedViewController = [(CPSTabBarViewController *)self selectedViewController];
  restoresFocusAfterTransition = [selectedViewController restoresFocusAfterTransition];
  MEMORY[0x277D82BD8](selectedViewController);
  return restoresFocusAfterTransition;
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controllers);
  animatedCopy = animated;
  v5.receiver = selfCopy;
  v5.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v5 setViewControllers:location[0] animated:animated];
  [(CPSTabBarViewController *)selfCopy _updateNowPlayingButtonIfNeeded];
  objc_storeStrong(location, 0);
}

- (BOOL)_isEligibleForNowPlayingButton
{
  templateEnvironment = [(CPSTabBarViewController *)self templateEnvironment];
  canBecomeNowPlayingApp = [(CPSTemplateEnvironment *)templateEnvironment canBecomeNowPlayingApp];
  *&v2 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (!canBecomeNowPlayingApp)
  {
    return 0;
  }

  viewControllers = [(CPSTabBarViewController *)self viewControllers];
  v7 = [viewControllers count];
  *&v3 = MEMORY[0x277D82BD8](viewControllers).n128_u64[0];
  if (v7 <= 4)
  {
    return 1;
  }

  view = [(CPSTabBarViewController *)self view];
  [view bounds];
  v11 = CGRectGetWidth(v12) >= 440.0;
  MEMORY[0x277D82BD8](view);
  return v11;
}

- (void)_updateNowPlayingButtonIfNeeded
{
  _accessoryView = [(CPSTabBarViewController *)self _accessoryView];
  v6 = _accessoryView != 0;
  templateEnvironment = [(CPSTabBarViewController *)self templateEnvironment];
  _isEligibleForNowPlayingButton = 0;
  if ([(CPSTemplateEnvironment *)templateEnvironment isNowPlayingApp])
  {
    _isEligibleForNowPlayingButton = [(CPSTabBarViewController *)self _isEligibleForNowPlayingButton];
  }

  *&v3 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (v6 != _isEligibleForNowPlayingButton)
  {
    [(CPSTabBarViewController *)self showNowPlayingButton:_isEligibleForNowPlayingButton, v3];
  }
}

- (CPSTemplateViewControllerDelegate)viewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerDelegate);

  return WeakRetained;
}

- (CPSTemplateEnvironment)templateEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_templateEnvironment);

  return WeakRetained;
}

@end
@interface CPSTabBarViewController
- (BOOL)_isEligibleForNowPlayingButton;
- (BOOL)restoresFocusAfterTransition;
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (CPSTabBarViewController)initWithTabBarTemplate:(id)a3 templateDelegate:(id)a4 templateEnvironment:(id)a5;
- (CPSTemplateEnvironment)templateEnvironment;
- (CPSTemplateViewControllerDelegate)viewControllerDelegate;
- (id)tabBarTemplate;
- (void)_cleanup;
- (void)_nowPlayingButtonTapped;
- (void)_updateNowPlayingButtonIfNeeded;
- (void)_updateTitle;
- (void)applicationDidBecomeNowPlayingApp:(BOOL)a3;
- (void)invalidate;
- (void)removeFromParentViewController;
- (void)setSelectedIndex:(unint64_t)a3;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)showNowPlayingButton:(BOOL)a3;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CPSTabBarViewController

- (CPSTabBarViewController)initWithTabBarTemplate:(id)a3 templateDelegate:(id)a4 templateEnvironment:(id)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v5 = v17;
  v17 = 0;
  v13.receiver = v5;
  v13.super_class = CPSTabBarViewController;
  v12 = [(CPSTabBarViewController *)&v13 init];
  v17 = v12;
  objc_storeStrong(&v17, v12);
  if (v12)
  {
    objc_storeStrong(&v17->_associatedTemplate, location[0]);
    objc_storeStrong(&v17->_templateDelegate, v15);
    v6 = objc_opt_new();
    templateProviderFuture = v17->_templateProviderFuture;
    v17->_templateProviderFuture = v6;
    MEMORY[0x277D82BD8](templateProviderFuture);
    objc_storeWeak(&v17->_templateEnvironment, v14);
    [(CPSTabBarViewController *)v17 setDelegate:v17];
    if ([v14 canBecomeNowPlayingApp])
    {
      [v14 addTemplateEnvironmentDelegate:v17];
    }

    if ([v14 isNowPlayingApp])
    {
      [(CPSTabBarViewController *)v17 showNowPlayingButton:1];
    }
  }

  v9 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v9;
}

- (id)tabBarTemplate
{
  v3 = objc_opt_class();
  v4 = [(CPSTabBarViewController *)self associatedTemplate];
  v5 = CPSSafeCast_5(v3, v4);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)invalidate
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  location[0] = CarPlaySupportGeneralLogging();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v17, v15);
    _os_log_impl(&dword_242FE8000, location[0], v13, "Invalidating %@", v17, 0xCu);
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v15->_templateProviderFuture, 0);
  v6 = [(CPSTabBarViewController *)v15 viewControllers];
  v12 = [v6 copy];
  MEMORY[0x277D82BD8](v6);
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
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v2 viewDidLayoutSubviews];
  [(CPSTabBarViewController *)v4 _updateNowPlayingButtonIfNeeded];
}

- (void)showNowPlayingButton:(BOOL)a3
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  v9 = [(CPSTabBarViewController *)self _accessoryView];
  v10 = 0;
  if (v9)
  {
    v10 = v21;
  }

  MEMORY[0x277D82BD8](v9);
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

  else if (v21)
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
    [v14 addTarget:v23 action:sel__nowPlayingButtonTapped forControlEvents:64];
    [v14 setAccessibilityIdentifier:@"CPTabBarNowPlayingButton"];
    [(CPSTabBarViewController *)v23 _setAccessoryView:v14];
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
    [(CPSTabBarViewController *)v23 _setAccessoryView:0];
  }
}

- (void)_nowPlayingButtonTapped
{
  v3 = [(CPSTabBarViewController *)self templateEnvironment];
  v2 = [(CPSTemplateEnvironment *)v3 templateProvider];
  [(CPTemplateProviding *)v2 clientRequestNowPlayingTemplateAnimated:1];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
}

- (void)_updateTitle
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  v19[1] = a2;
  v13 = objc_opt_class();
  v14 = [(CPSTabBarViewController *)v20 selectedViewController];
  v19[0] = CPSSafeCast_5(v13, v14);
  v15 = [v19[0] associatedTemplate];
  location = [v15 identifier];
  MEMORY[0x277D82BD8](v15);
  if (location)
  {
    memset(__b, 0, sizeof(__b));
    v10 = [(CPSTabBarViewController *)v20 associatedTemplate];
    obj = [(CPTemplate *)v10 templates];
    v12 = [obj countByEnumeratingWithState:__b objects:v21 count:{16, MEMORY[0x277D82BD8](v10).n128_f64[0]}];
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
        v4 = [v17 identifier];
        v5 = [v4 isEqual:location];
        *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
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

      v3 = [v17 backTitle];
      [(CPSTabBarViewController *)v20 setTitle:?];
      MEMORY[0x277D82BD8](v3);
    }

LABEL_10:
    MEMORY[0x277D82BD8](obj);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v19, 0);
}

- (void)setSelectedIndex:(unint64_t)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v3 setSelectedIndex:a3];
  [(CPSTabBarViewController *)v6 _updateTitle];
}

- (void)applicationDidBecomeNowPlayingApp:(BOOL)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __61__CPSTabBarViewController_applicationDidBecomeNowPlayingApp___block_invoke;
  v10 = &unk_278D91CA8;
  v11 = MEMORY[0x277D82BE0](v15);
  v12 = v13;
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

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v8 = [(CPSTabBarViewController *)v12 selectedViewController];
  v7 = v10;
  MEMORY[0x277D82BD8](v8);
  if (v8 == v7)
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

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v13 associatedTemplate];
    v4 = [v10 identifier];
    v5 = v12;
    v12 = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v10);
  }

  [(CPSTabBarViewController *)v15 _updateTitle];
  v8 = [(CPSTabBarViewController *)v15 tabBarTemplateDelegate];
  v9 = 0;
  if ([v8 conformsToProtocol:&unk_28562C040])
  {
    v9 = v12 != 0;
  }

  *&v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    v7 = [(CPSTabBarViewController *)v15 tabBarTemplateDelegate];
    [v7 handleActionForControlIdentifier:v12];
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)removeFromParentViewController
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v2 removeFromParentViewController];
  [(CPSTabBarViewController *)v4 _cleanup];
}

- (void)_cleanup
{
  objc_storeStrong(&self->_templateProviderFuture, 0);
  v2 = [(CPSTabBarViewController *)self viewControllerDelegate];
  [(CPSTemplateViewControllerDelegate *)v2 templateViewControllerDidPop:self];
  MEMORY[0x277D82BD8](v2);
}

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v5 viewDidLoad];
  v4 = [(CPSTabBarViewController *)v7 tabBar];
  [v4 setAccessibilityIdentifier:@"CPTabBar"];
  MEMORY[0x277D82BD8](v4);
  if (_UISolariumEnabled())
  {
    v3 = [MEMORY[0x277D75348] clearColor];
    v2 = [(CPSTabBarViewController *)v7 view];
    [v2 setBackgroundColor:v3];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  [(CPSTabBarViewController *)v7 _updateTitle];
}

- (void)viewWillAppear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v9 viewWillAppear:a3];
  v7 = [(CPSTabBarViewController *)v12 tabBarTemplateDelegate];
  v8 = [v7 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSTabBarViewController *)v12 tabBarTemplateDelegate];
    v5 = [(CPSTabBarViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [v6 templateWillAppearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v9 viewDidAppear:a3];
  v7 = [(CPSTabBarViewController *)v12 tabBarTemplateDelegate];
  v8 = [v7 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSTabBarViewController *)v12 tabBarTemplateDelegate];
    v5 = [(CPSTabBarViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [v6 templateDidAppearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v9 viewWillDisappear:a3];
  v7 = [(CPSTabBarViewController *)v12 tabBarTemplateDelegate];
  v8 = [v7 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSTabBarViewController *)v12 tabBarTemplateDelegate];
    v5 = [(CPSTabBarViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [v6 templateWillDisappearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v9 viewDidDisappear:a3];
  v7 = [(CPSTabBarViewController *)v12 tabBarTemplateDelegate];
  v8 = [v7 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSTabBarViewController *)v12 tabBarTemplateDelegate];
    v5 = [(CPSTabBarViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [v6 templateDidDisappearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

- (BOOL)restoresFocusAfterTransition
{
  v3 = [(CPSTabBarViewController *)self selectedViewController];
  v4 = [v3 restoresFocusAfterTransition];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5.receiver = v8;
  v5.super_class = CPSTabBarViewController;
  [(CPSTabBarViewController *)&v5 setViewControllers:location[0] animated:a4];
  [(CPSTabBarViewController *)v8 _updateNowPlayingButtonIfNeeded];
  objc_storeStrong(location, 0);
}

- (BOOL)_isEligibleForNowPlayingButton
{
  v8 = [(CPSTabBarViewController *)self templateEnvironment];
  v9 = [(CPSTemplateEnvironment *)v8 canBecomeNowPlayingApp];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (!v9)
  {
    return 0;
  }

  v6 = [(CPSTabBarViewController *)self viewControllers];
  v7 = [v6 count];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7 <= 4)
  {
    return 1;
  }

  v5 = [(CPSTabBarViewController *)self view];
  [v5 bounds];
  v11 = CGRectGetWidth(v12) >= 440.0;
  MEMORY[0x277D82BD8](v5);
  return v11;
}

- (void)_updateNowPlayingButtonIfNeeded
{
  v2 = [(CPSTabBarViewController *)self _accessoryView];
  v6 = v2 != 0;
  v4 = [(CPSTabBarViewController *)self templateEnvironment];
  v5 = 0;
  if ([(CPSTemplateEnvironment *)v4 isNowPlayingApp])
  {
    v5 = [(CPSTabBarViewController *)self _isEligibleForNowPlayingButton];
  }

  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v6 != v5)
  {
    [(CPSTabBarViewController *)self showNowPlayingButton:v5, v3];
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
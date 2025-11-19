@interface CPSBaseTemplateViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceivePress:(id)a4;
- (CPSBaseTemplateViewController)initWithTemplate:(id)a3 templateDelegate:(id)a4 templateEnvironment:(id)a5;
- (CPSTemplateViewControllerDelegate)viewControllerDelegate;
- (id)_barButtonItemForBarButton:(id)a3;
- (id)_barButtonItemForIdentifier:(id)a3;
- (void)_activateSiriForGridItem:(id)a3;
- (void)_addGestureRecognizerIfNecessary;
- (void)_backGestureFired:(id)a3;
- (void)_cleanup;
- (void)_dismissTemplateViewController;
- (void)_nowPlayingButtonTapped:(id)a3;
- (void)_updateBarButtonAXLabels;
- (void)_updateLeadingBarButtons;
- (void)_updateTemplate:(id)a3;
- (void)_updateTrailingBarButtons;
- (void)_viewDidLoad;
- (void)applicationDidBecomeNowPlayingApp:(BOOL)a3;
- (void)dealloc;
- (void)didSelectButton:(id)a3;
- (void)invalidate;
- (void)removeFromParentViewController;
- (void)setBarButton:(id)a3 image:(id)a4;
- (void)setBarButton:(id)a3 title:(id)a4;
- (void)setControl:(id)a3 enabled:(BOOL)a4;
- (void)setControl:(id)a3 selected:(BOOL)a4;
- (void)setDidDisappear:(BOOL)a3;
- (void)setHostBackButton:(id)a3;
- (void)setIsPopping:(BOOL)a3;
- (void)setLeadingNavigationBarButtons:(id)a3;
- (void)setTrailingNavigationBarButtons:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CPSBaseTemplateViewController

- (CPSTemplateViewControllerDelegate)viewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerDelegate);

  return WeakRetained;
}

- (CPSBaseTemplateViewController)initWithTemplate:(id)a3 templateDelegate:(id)a4 templateEnvironment:(id)a5
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
  v13.super_class = CPSBaseTemplateViewController;
  v12 = [(CPSBaseTemplateViewController *)&v13 init];
  v17 = v12;
  objc_storeStrong(&v17, v12);
  if (v12)
  {
    v6 = objc_opt_new();
    templateProviderFuture = v17->_templateProviderFuture;
    v17->_templateProviderFuture = v6;
    MEMORY[0x277D82BD8](templateProviderFuture);
    objc_storeStrong(&v17->_templateEnvironment, v14);
    objc_storeStrong(&v17->_templateDelegate, v15);
    [(CPSBaseTemplateViewController *)v17 _updateTemplate:location[0]];
    if ([v14 canBecomeNowPlayingApp])
    {
      [v14 addTemplateEnvironmentDelegate:v17];
    }

    if ([v14 isNowPlayingApp])
    {
      [(CPSBaseTemplateViewController *)v17 _updateTrailingBarButtons];
    }
  }

  v9 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v9;
}

- (void)_dismissTemplateViewController
{
  v8[2] = self;
  v8[1] = a2;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __63__CPSBaseTemplateViewController__dismissTemplateViewController__block_invoke;
  v7 = &unk_278D913E8;
  v8[0] = MEMORY[0x277D82BE0](self);
  [(CPSBaseTemplateViewController *)self dismissViewControllerAnimated:1 completion:?];
  objc_storeStrong(v8, 0);
}

double __63__CPSBaseTemplateViewController__dismissTemplateViewController__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) viewControllerDelegate];
  [v3 templateViewControllerDidDismiss:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)_updateTemplate:(id)a3
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v34->_associatedTemplate, location[0]);
  v26 = [(CPSBaseTemplateViewController *)v34 associatedTemplate];
  v27 = [(CPTemplate *)v26 tabImage];
  MEMORY[0x277D82BD8](v27);
  *&v3 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  if (v27)
  {
    v24 = [(CPSBaseTemplateViewController *)v34 associatedTemplate];
    v32 = [(CPTemplate *)v24 tabTitle];
    v4 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    v30 = 0;
    v25 = 0;
    if (!v32)
    {
      v31 = [(CPSBaseTemplateViewController *)v34 associatedTemplate];
      v30 = 1;
      v25 = objc_opt_respondsToSelector();
    }

    if (v30)
    {
      v4 = MEMORY[0x277D82BD8](v31).n128_u64[0];
    }

    if (v25)
    {
      v23 = [(CPSBaseTemplateViewController *)v34 associatedTemplate];
      v5 = [(CPTemplate *)v23 title];
      v6 = v32;
      v32 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v23);
    }

    v19 = objc_alloc(MEMORY[0x277D75B28]);
    v18 = v32;
    v22 = [(CPSBaseTemplateViewController *)v34 associatedTemplate];
    v21 = [(CPTemplate *)v22 tabImage];
    v20 = [v19 initWithTitle:v18 image:? tag:?];
    [(CPSBaseTemplateViewController *)v34 setTabBarItem:?];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277D75B28]);
    v17 = [(CPSBaseTemplateViewController *)v34 associatedTemplate];
    v16 = [v15 initWithTabBarSystemItem:-[CPTemplate tabSystemItem](v17 tag:{"tabSystemItem"), 0}];
    [(CPSBaseTemplateViewController *)v34 setTabBarItem:?];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
  }

  v13 = [(CPSBaseTemplateViewController *)v34 associatedTemplate];
  v14 = [(CPTemplate *)v13 showsTabBadge];
  *&v7 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14)
  {
    v12 = [(CPSBaseTemplateViewController *)v34 tabBarItem];
    [v12 setBadgeValue:&stru_2855A5FC8];
    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    v11 = [(CPSBaseTemplateViewController *)v34 tabBarItem];
    [v11 setBadgeValue:0];
    MEMORY[0x277D82BD8](v11);
  }

  UIOffsetMake();
  v28 = v8;
  v29 = v9;
  v10 = [(CPSBaseTemplateViewController *)v34 tabBarItem];
  [v10 setBadgeOffset:{v28, v29}];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(location, 0);
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
  v9 = __67__CPSBaseTemplateViewController_applicationDidBecomeNowPlayingApp___block_invoke;
  v10 = &unk_278D91CA8;
  v11 = MEMORY[0x277D82BE0](v15);
  v12 = v13;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
}

- (void)invalidate
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = self;
  oslog[1] = a2;
  oslog[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v4, v3);
    _os_log_impl(&dword_242FE8000, oslog[0], OS_LOG_TYPE_DEFAULT, "Invalidating %@", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v3->_templateProviderFuture, 0);
}

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewDidLoad];
  if (_UISolariumEnabled())
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    v3 = [(CPSBaseTemplateViewController *)v7 view];
    [v3 setBackgroundColor:v4];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  [(CPSBaseTemplateViewController *)v7 _viewDidLoad];
  v2 = [(CPSBaseTemplateViewController *)v7 templateProviderFuture];
  [(NAFuture *)v2 finishWithResult:v7];
  MEMORY[0x277D82BD8](v2);
}

- (void)_viewDidLoad
{
  v2 = [(CPSBaseTemplateViewController *)self navigationItem];
  [v2 setLeftItemsSupplementBackButton:1];
  [(CPSBaseTemplateViewController *)self _updateLeadingBarButtons];
  [(CPSBaseTemplateViewController *)self _updateTrailingBarButtons];
}

- (void)setIsPopping:(BOOL)a3
{
  if (a3 != self->_isPopping)
  {
    self->_isPopping = a3;
    if ([(CPSBaseTemplateViewController *)self didDisappear]&& a3)
    {
      [(CPSBaseTemplateViewController *)self _cleanup];
    }
  }
}

- (void)setDidDisappear:(BOOL)a3
{
  if (self->_didDisappear != a3)
  {
    self->_didDisappear = a3;
    if (a3 && [(CPSBaseTemplateViewController *)self isPopping])
    {
      [(CPSBaseTemplateViewController *)self _cleanup];
    }
  }
}

- (void)removeFromParentViewController
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v2 removeFromParentViewController];
  [(CPSBaseTemplateViewController *)v4 _cleanup];
}

- (void)_cleanup
{
  objc_storeStrong(&self->_templateProviderFuture, 0);
  v2 = [(CPSBaseTemplateViewController *)self viewControllerDelegate];
  [(CPSTemplateViewControllerDelegate *)v2 templateViewControllerDidPop:self];
  MEMORY[0x277D82BD8](v2);
}

- (void)viewWillAppear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v9 viewWillAppear:a3];
  [(CPSBaseTemplateViewController *)v12 setDidDisappear:0];
  [(CPSBaseTemplateViewController *)v12 setIsPopping:0];
  v7 = [(CPSBaseTemplateViewController *)v12 templateDelegate];
  v8 = [(CPTemplateDelegate *)v7 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSBaseTemplateViewController *)v12 templateDelegate];
    v5 = [(CPSBaseTemplateViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [CPTemplateDelegate templateWillAppearWithIdentifier:v6 animated:"templateWillAppearWithIdentifier:animated:"];
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
  v9.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v9 viewDidAppear:a3];
  v7 = [(CPSBaseTemplateViewController *)v12 templateDelegate];
  v8 = [(CPTemplateDelegate *)v7 conformsToProtocol:&unk_28562C040];
  v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSBaseTemplateViewController *)v12 templateDelegate];
    v5 = [(CPSBaseTemplateViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [CPTemplateDelegate templateDidAppearWithIdentifier:v6 animated:"templateDidAppearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  [(CPSBaseTemplateViewController *)v12 _addGestureRecognizerIfNecessary];
}

- (void)_addGestureRecognizerIfNecessary
{
  v11 = self;
  v10[1] = a2;
  v7 = [(CPSBaseTemplateViewController *)self navigationController];
  v6 = [v7 view];
  v5 = [(CPSBaseTemplateViewController *)v11 backGestureRecognizer];
  [v6 removeGestureRecognizer:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v8 = [(CPSBaseTemplateViewController *)v11 associatedTemplate];
  v9 = [(CPTemplate *)v8 backButton];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    v10[0] = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v11 action:sel__backGestureFired_];
    [v10[0] setAllowedPressTypes:&unk_2855C5060];
    [v10[0] setDelegate:v11];
    v4 = [(CPSBaseTemplateViewController *)v11 navigationController];
    v3 = [v4 view];
    [v3 addGestureRecognizer:v10[0]];
    MEMORY[0x277D82BD8](v3);
    *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [(CPSBaseTemplateViewController *)v11 setBackGestureRecognizer:v10[0], v2];
    objc_storeStrong(v10, 0);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12.receiver = self;
  v12.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v12 viewWillDisappear:a3];
  v10 = [(CPSBaseTemplateViewController *)v15 templateDelegate];
  v11 = [(CPTemplateDelegate *)v10 conformsToProtocol:&unk_28562C040];
  v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v9 = [(CPSBaseTemplateViewController *)v15 templateDelegate];
    v8 = [(CPSBaseTemplateViewController *)v15 associatedTemplate];
    v7 = [(CPTemplate *)v8 identifier];
    [CPTemplateDelegate templateWillDisappearWithIdentifier:v9 animated:"templateWillDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  v6 = [(CPSBaseTemplateViewController *)v15 navigationController];
  v5 = [v6 view];
  v4 = [(CPSBaseTemplateViewController *)v15 backGestureRecognizer];
  [v5 removeGestureRecognizer:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v9 viewDidDisappear:a3];
  v7 = [(CPSBaseTemplateViewController *)v12 templateDelegate];
  v8 = [(CPTemplateDelegate *)v7 conformsToProtocol:&unk_28562C040];
  v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSBaseTemplateViewController *)v12 templateDelegate];
    v5 = [(CPSBaseTemplateViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [CPTemplateDelegate templateDidDisappearWithIdentifier:v6 animated:"templateDidDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  [(CPSBaseTemplateViewController *)v12 setDidDisappear:1, *&v3];
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:v6];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v4 dealloc];
}

- (void)didSelectButton:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = [location[0] identifier];
  v21 = CarPlaySupportGeneralLogging();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v25, v24, v22);
    _os_log_impl(&dword_242FE8000, v21, v20, "%@: button selected with UUID: %@", v25, 0x16u);
  }

  objc_storeStrong(&v21, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D551E0];
    v13 = [(CPSBaseTemplateViewController *)v24 templateEnvironment];
    v12 = [(CPSTemplateEnvironment *)v13 bundleIdentifier];
    v19 = [v11 messageComposeDirectActionWithAppBundleId:?];
    MEMORY[0x277D82BD8](v12);
    *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v14 = [(CPSBaseTemplateViewController *)v24 viewControllerDelegate];
    [(CPSTemplateViewControllerDelegate *)v14 templateViewController:v24 shouldActivateSiriWithDirectActionContext:v19];
    MEMORY[0x277D82BD8](v14);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    objc_opt_class();
    v17 = 0;
    v15 = 0;
    v10 = 0;
    if (objc_opt_isKindOfClass())
    {
      v18 = [location[0] gridButton];
      v17 = 1;
      v16 = [v18 messageConfiguration];
      v15 = 1;
      v10 = v16 != 0;
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    if (v17)
    {
      MEMORY[0x277D82BD8](v18);
    }

    if (v10)
    {
      v8 = v24;
      v9 = [location[0] gridButton];
      [(CPSBaseTemplateViewController *)v8 _activateSiriForGridItem:?];
      MEMORY[0x277D82BD8](v9);
    }

    else
    {
      v6 = [(CPSBaseTemplateViewController *)v24 templateDelegate];
      v7 = [(CPTemplateDelegate *)v6 conformsToProtocol:&unk_28562C040];
      *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      if (v7)
      {
        v5 = [(CPSBaseTemplateViewController *)v24 templateDelegate];
        [(CPTemplateDelegate *)v5 handleActionForControlIdentifier:v22];
        MEMORY[0x277D82BD8](v5);
      }
    }
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)_activateSiriForGridItem:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  v20 = [location[0] messageConfiguration];
  v21 = [v20 isUnread];
  *&v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  if (v21)
  {
    v15 = MEMORY[0x277D551E0];
    v19 = [(CPSBaseTemplateViewController *)v24 templateEnvironment];
    v18 = [(CPSTemplateEnvironment *)v19 bundleIdentifier];
    v17 = [location[0] messageConfiguration];
    v16 = [v17 conversationIdentifier];
    v4 = [v15 messageReadDirectActionWithAppBundleId:v18 conversationGUID:?];
    v5 = v22;
    v22 = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    v6 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  }

  else
  {
    v10 = MEMORY[0x277D551E0];
    v14 = [(CPSBaseTemplateViewController *)v24 templateEnvironment];
    v13 = [(CPSTemplateEnvironment *)v14 bundleIdentifier];
    v12 = [location[0] messageConfiguration];
    v11 = [v12 conversationIdentifier];
    v7 = [v10 messageReplyDirectActionWithAppBundleId:v13 conversationGUID:?];
    v8 = v22;
    v22 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  }

  if (v22)
  {
    v9 = [(CPSBaseTemplateViewController *)v24 viewControllerDelegate];
    [(CPSTemplateViewControllerDelegate *)v9 templateViewController:v24 shouldActivateSiriWithDirectActionContext:v22];
    MEMORY[0x277D82BD8](v9);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (id)_barButtonItemForIdentifier:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v9 = [(CPSBaseTemplateViewController *)v25 navigationItem];
  v8 = [v9 leftBarButtonItems];
  v7 = [(CPSBaseTemplateViewController *)v25 navigationItem];
  v6 = [v7 rightBarButtonItems];
  v16 = [v8 arrayByAddingObjectsFromArray:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v5 = v16;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __61__CPSBaseTemplateViewController__barButtonItemForIdentifier___block_invoke;
  v14 = &unk_278D926C8;
  v15[0] = MEMORY[0x277D82BE0](location[0]);
  v15[1] = &v17;
  [v5 enumerateObjectsUsingBlock:&v10];
  v4 = MEMORY[0x277D82BE0](v18[5]);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);

  return v4;
}

void __61__CPSBaseTemplateViewController__barButtonItemForIdentifier___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a3;
  v11 = a4;
  v10[1] = a1;
  v4 = objc_opt_class();
  v10[0] = CPSSafeCast_10(v4, location[0]);
  v8 = [v10[0] cps_identifier];
  v9 = [v8 isEqual:a1[4]];
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v10[0]);
    *v11 = 1;
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);
}

- (id)_barButtonItemForBarButton:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (_UISolariumEnabled())
  {
    v3 = [CPSModernBarButtonItem alloc];
    v9 = [(CPSModernBarButtonItem *)v3 initWithCPBarButton:location[0]];
    [(CPSModernBarButtonItem *)v9 setDelegate:v11];
    v12 = MEMORY[0x277D82BE0](v9);
    v8 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v4 = [CPSBarButtonItem alloc];
    v7 = [(CPSBarButtonItem *)v4 initWithCPBarButton:location[0]];
    [(CPSBarButtonItem *)v7 setDelegate:v11];
    v12 = MEMORY[0x277D82BE0](v7);
    v8 = 1;
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(location, 0);
  v5 = v12;

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceivePress:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = location[0];
  v7 = [(CPSBaseTemplateViewController *)v15 backGestureRecognizer];
  v11 = 0;
  v9 = 0;
  v8 = 0;
  if (v6 == v7)
  {
    v12 = [(CPSBaseTemplateViewController *)v15 associatedTemplate];
    v11 = 1;
    v10 = [(CPTemplate *)v12 backButton];
    v9 = 1;
    v8 = v10 != 0;
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  MEMORY[0x277D82BD8](v7);
  v16 = v8;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v16;
}

- (void)_backGestureFired:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSBaseTemplateViewController *)v10 associatedTemplate];
  v8 = [(CPTemplate *)v7 backButton];
  MEMORY[0x277D82BD8](v8);
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v4 = v10;
    v6 = [(CPSBaseTemplateViewController *)v10 associatedTemplate];
    v5 = [(CPTemplate *)v6 backButton];
    [(CPSBaseTemplateViewController *)v4 didSelectButton:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
}

- (void)_nowPlayingButtonTapped:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = CarPlaySupportGeneralLogging();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    log = v31;
    type = v30;
    __os_log_helper_16_0_0(v29);
    _os_log_impl(&dword_242FE8000, log, type, "System Now Playing button tapped", v29, 2u);
  }

  objc_storeStrong(&v31, 0);
  memset(__b, 0, sizeof(__b));
  v15 = [(CPSBaseTemplateViewController *)v33 navigationController];
  obj = [v15 viewControllers];
  v17 = [obj countByEnumeratingWithState:__b objects:v34 count:{16, MEMORY[0x277D82BD8](v15).n128_f64[0]}];
  if (v17)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v17;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(__b[1] + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
        if (!v14)
        {
          goto LABEL_13;
        }
      }
    }

    oslog = CarPlaySupportGeneralLogging();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = oslog;
      v10 = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_impl(&dword_242FE8000, v9, v10, "Popping to existing now playing view controller.", v24, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v8 = [(CPSBaseTemplateViewController *)v33 navigationController];
    v3 = [v8 popToViewController:v28 animated:1];
    MEMORY[0x277D82BD8](v8);
    v23 = 1;
  }

  else
  {
LABEL_13:
    v23 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v23)
  {
    v22 = CarPlaySupportGeneralLogging();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v22;
      v7 = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_242FE8000, v6, v7, "Requesting Now Playing from client.", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    v5 = [(CPSBaseTemplateViewController *)v33 templateEnvironment];
    v4 = [(CPSTemplateEnvironment *)v5 templateProvider];
    [(CPTemplateProviding *)v4 clientRequestNowPlayingTemplateAnimated:1];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    v23 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)setHostBackButton:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __51__CPSBaseTemplateViewController_setHostBackButton___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __51__CPSBaseTemplateViewController_setHostBackButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) associatedTemplate];
  [v2 setBackButton:*(a1 + 40)];
  return [*(a1 + 32) _updateLeadingBarButtons];
}

- (void)_updateLeadingBarButtons
{
  v46[1] = *MEMORY[0x277D85DE8];
  v42 = self;
  v41[1] = a2;
  v41[0] = objc_opt_new();
  v32 = [(CPSBaseTemplateViewController *)v42 view];
  v31 = [v32 window];
  v30 = [(CPSBaseTemplateViewController *)v42 backGestureRecognizer];
  [v31 removeGestureRecognizer:?];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  v33 = [(CPSBaseTemplateViewController *)v42 associatedTemplate];
  v34 = [(CPTemplate *)v33 backButton];
  MEMORY[0x277D82BD8](v34);
  *&v2 = MEMORY[0x277D82BD8](v33).n128_u64[0];
  if (v34)
  {
    v29 = [(CPSBaseTemplateViewController *)v42 navigationItem];
    [v29 setHidesBackButton:1];
    MEMORY[0x277D82BD8](v29);
    if (_UISolariumEnabled())
    {
      v23 = [CPSModernBackBarButtonItem alloc];
      v25 = [(CPSBaseTemplateViewController *)v42 associatedTemplate];
      v24 = [(CPTemplate *)v25 backButton];
      v40 = [(CPSModernBackBarButtonItem *)v23 initWithCPBarButton:?];
      MEMORY[0x277D82BD8](v24);
      *&v3 = MEMORY[0x277D82BD8](v25).n128_u64[0];
      [(CPSModernBackBarButtonItem *)v40 setAccessibilityIdentifier:@"CPBackButton", v3];
      v26 = CPUILocalizedStringForKey();
      [(CPSModernBackBarButtonItem *)v40 setAccessibilityLabel:?];
      MEMORY[0x277D82BD8](v26);
      v28 = CPUILocalizedStringForKey();
      v46[0] = v28;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
      [(CPSModernBackBarButtonItem *)v40 setAccessibilityUserInputLabels:?];
      MEMORY[0x277D82BD8](v27);
      *&v4 = MEMORY[0x277D82BD8](v28).n128_u64[0];
      [(CPSModernBarButtonItem *)v40 setDelegate:v42, v4];
      [v41[0] addObject:v40];
      objc_storeStrong(&v40, 0);
    }

    else
    {
      v17 = [CPSBarBackButtonItem alloc];
      v19 = [(CPSBaseTemplateViewController *)v42 associatedTemplate];
      v18 = [(CPTemplate *)v19 backButton];
      v39 = [(CPSBarBackButtonItem *)v17 initWithCPBarButton:?];
      MEMORY[0x277D82BD8](v18);
      *&v5 = MEMORY[0x277D82BD8](v19).n128_u64[0];
      [(CPSBarBackButtonItem *)v39 setAccessibilityIdentifier:@"CPBackButton", v5];
      v20 = CPUILocalizedStringForKey();
      [(CPSBarBackButtonItem *)v39 setAccessibilityLabel:?];
      MEMORY[0x277D82BD8](v20);
      v22 = CPUILocalizedStringForKey();
      v45 = v22;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      [(CPSBarBackButtonItem *)v39 setAccessibilityUserInputLabels:?];
      MEMORY[0x277D82BD8](v21);
      *&v6 = MEMORY[0x277D82BD8](v22).n128_u64[0];
      [(CPSBarButtonItem *)v39 setDelegate:v42, v6];
      [v41[0] addObject:v39];
      objc_storeStrong(&v39, 0);
    }

    [(CPSBaseTemplateViewController *)v42 _addGestureRecognizerIfNecessary];
  }

  memset(__b, 0, sizeof(__b));
  v14 = [(CPSBaseTemplateViewController *)v42 associatedTemplate];
  obj = [(CPTemplate *)v14 internalLeadingBarButtons];
  v16 = [obj countByEnumeratingWithState:__b objects:v44 count:{16, MEMORY[0x277D82BD8](v14).n128_f64[0]}];
  if (v16)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v16;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(__b[1] + 8 * v12);
      v36 = [(CPSBaseTemplateViewController *)v42 _barButtonItemForBarButton:v38];
      [v41[0] addObject:v36];
      objc_storeStrong(&v36, 0);
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v43, v42, v41[0]);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: Updating leading bar buttons: %@", v43, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v8 = v41[0];
  v9 = [(CPSBaseTemplateViewController *)v42 navigationItem];
  [v9 setLeftBarButtonItems:v8];
  *&v7 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  [(CPSBaseTemplateViewController *)v42 _updateBarButtonAXLabels];
  objc_storeStrong(v41, 0);
}

- (void)_updateTrailingBarButtons
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = self;
  v22[1] = a2;
  v22[0] = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  v15 = [(CPSBaseTemplateViewController *)v23 associatedTemplate];
  obj = [(CPTemplate *)v15 internalTrailingBarButtons];
  v17 = [obj countByEnumeratingWithState:__b objects:v25 count:{16, MEMORY[0x277D82BD8](v15).n128_f64[0]}];
  if (v17)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v17;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(__b[1] + 8 * v13);
      v19 = [(CPSBaseTemplateViewController *)v23 _barButtonItemForBarButton:v21];
      [v22[0] addObject:v19];
      objc_storeStrong(&v19, 0);
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  *&v2 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  v9 = [(CPSBaseTemplateViewController *)v23 templateEnvironment];
  v10 = 0;
  if ([(CPSTemplateEnvironment *)v9 canBecomeNowPlayingApp])
  {
    v10 = 0;
    if ([(CPSBaseTemplateViewController *)v23 isNowPlayingApp])
    {
      v10 = [(CPSBaseTemplateViewController *)v23 _wantsNowPlayingButton];
    }
  }

  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v7 = v22[0];
    v8 = [(CPSBaseTemplateViewController *)v23 _nowPlayingBarButtonItem];
    [v7 insertObject:? atIndex:?];
    MEMORY[0x277D82BD8](v8);
  }

  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v24, v23, v22[0]);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: Updating trailing bar buttons: %@", v24, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v22[0];
  v6 = [(CPSBaseTemplateViewController *)v23 navigationItem];
  [v6 setRightBarButtonItems:v5];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [(CPSBaseTemplateViewController *)v23 _updateBarButtonAXLabels];
  objc_storeStrong(v22, 0);
}

- (void)setLeadingNavigationBarButtons:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__CPSBaseTemplateViewController_setLeadingNavigationBarButtons___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __64__CPSBaseTemplateViewController_setLeadingNavigationBarButtons___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) associatedTemplate];
  [v2 setInternalLeadingBarButtons:*(a1 + 40)];
  return [*(a1 + 32) _updateLeadingBarButtons];
}

- (void)setTrailingNavigationBarButtons:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __65__CPSBaseTemplateViewController_setTrailingNavigationBarButtons___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __65__CPSBaseTemplateViewController_setTrailingNavigationBarButtons___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) associatedTemplate];
  [v2 setInternalTrailingBarButtons:*(a1 + 40)];
  return [*(a1 + 32) _updateTrailingBarButtons];
}

- (void)setControl:(id)a3 enabled:(BOOL)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__CPSBaseTemplateViewController_setControl_enabled___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](v18);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = v16;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __52__CPSBaseTemplateViewController_setControl_enabled___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _barButtonItemForIdentifier:*(a1 + 40)];
  [v2[0] setEnabled:*(a1 + 48) & 1];
  objc_storeStrong(v2, 0);
}

- (void)setControl:(id)a3 selected:(BOOL)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)setBarButton:(id)a3 image:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__CPSBaseTemplateViewController_setBarButton_image___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](v18);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __52__CPSBaseTemplateViewController_setBarButton_image___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _barButtonItemForIdentifier:*(a1 + 40)];
  [v2[0] setImage:*(a1 + 48)];
  objc_storeStrong(v2, 0);
}

- (void)setBarButton:(id)a3 title:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__CPSBaseTemplateViewController_setBarButton_title___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](v18);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __52__CPSBaseTemplateViewController_setBarButton_title___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _barButtonItemForIdentifier:*(a1 + 40)];
  [v2[0] setTitle:*(a1 + 48)];
  objc_storeStrong(v2, 0);
}

- (void)_updateBarButtonAXLabels
{
  v13 = self;
  v12[1] = a2;
  v10 = [(CPSBaseTemplateViewController *)self navigationItem];
  v11 = [v10 leftBarButtonItems];
  if (v11)
  {
    v2 = MEMORY[0x277D82BE0](v11);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  }

  v12[0] = v2;
  MEMORY[0x277D82BD8](v11);
  v7 = [(CPSBaseTemplateViewController *)v13 navigationItem];
  v8 = [v7 rightBarButtonItems];
  v9 = [v8 bs_reverse];
  if (v9)
  {
    v6 = v9;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v3 = [v12[0] arrayByAddingObjectsFromArray:v6];
  v4 = v12[0];
  v12[0] = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v8);
  *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [v12[0] enumerateObjectsUsingBlock:{&__block_literal_global_4, v5}];
  objc_storeStrong(v12, 0);
}

void __57__CPSBaseTemplateViewController__updateBarButtonAXLabels__block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = a3;
  v16[2] = a4;
  v16[1] = a1;
  v16[0] = [location[0] customView];
  v15 = [MEMORY[0x277CBEB18] array];
  v14 = [v16[0] accessibilityLabel];
  v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v14)
  {
    v10 = [v16[0] accessibilityLabel];
    [v15 addObject:?];
    v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  if (v17)
  {
    switch(v17)
    {
      case 1:
        v8 = CPUILocalizedStringForKey();
        [v15 addObject:?];
        v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
        break;
      case 2:
        v7 = CPUILocalizedStringForKey();
        [v15 addObject:?];
        v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
        break;
      case 3:
        v6 = CPUILocalizedStringForKey();
        [v15 addObject:?];
        v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
        break;
    }
  }

  else
  {
    v9 = CPUILocalizedStringForKey();
    [v15 addObject:?];
    v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  v5 = [v15 copy];
  [v16[0] setAccessibilityUserInputLabels:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);
}

@end
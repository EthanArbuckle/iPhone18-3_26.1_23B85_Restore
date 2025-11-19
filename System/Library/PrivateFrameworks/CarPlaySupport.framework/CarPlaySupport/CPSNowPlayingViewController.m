@interface CPSNowPlayingViewController
- (CPSNowPlayingViewController)initWithNowPlayingTemplate:(id)a3 templateDelegate:(id)a4 environment:(id)a5;
- (CPSTemplateEnvironment)templateEnvironment;
- (CPSTemplateViewControllerDelegate)viewControllerDelegate;
- (id)nowPlayingTemplate;
- (void)_cleanup;
- (void)didSelectButton:(id)a3;
- (void)invalidate;
- (void)reloadData;
- (void)removeFromParentViewController;
- (void)setControl:(id)a3 enabled:(BOOL)a4;
- (void)setControl:(id)a3 selected:(BOOL)a4;
- (void)setDidDisappear:(BOOL)a3;
- (void)setIsPopping:(BOOL)a3;
- (void)updateNowPlayingTemplate:(id)a3 withProxyDelegate:(id)a4 canThrottle:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CPSNowPlayingViewController

- (CPSNowPlayingViewController)initWithNowPlayingTemplate:(id)a3 templateDelegate:(id)a4 environment:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  objc_storeStrong(&v30, a5);
  v5 = [CPSAudioPlaybackManager alloc];
  v29 = [(CPSAudioPlaybackManager *)v5 initWithNowPlayingTemplate:location[0] templateDelegate:v31 environment:v30];
  v24 = v33;
  v25 = [v30 bundleIdentifier];
  v33 = 0;
  v28.receiver = v24;
  v28.super_class = CPSNowPlayingViewController;
  v26 = [CPUINowPlayingViewController initWithBundleIdentifier:sel_initWithBundleIdentifier_dataSource_delegate_ dataSource:? delegate:?];
  v33 = v26;
  objc_storeStrong(&v33, v26);
  MEMORY[0x277D82BD8](v25);
  if (v26)
  {
    objc_storeStrong(&v33->_audioPlaybackManager, v29);
    [(CPSAudioPlaybackManager *)v33->_audioPlaybackManager setNowPlayingViewController:v33];
    v6 = [objc_alloc(MEMORY[0x277CF91A8]) initWithBase:2.0];
    updateThrottle = v33->_updateThrottle;
    v33->_updateThrottle = v6;
    MEMORY[0x277D82BD8](updateThrottle);
    objc_storeWeak(&v33->_templateEnvironment, v30);
    objc_storeStrong(&v33->_associatedTemplate, location[0]);
    objc_storeStrong(&v33->_templateDelegate, v31);
    v21 = [location[0] tabImage];
    MEMORY[0x277D82BD8](v21);
    if (v21)
    {
      v17 = objc_alloc(MEMORY[0x277D75B28]);
      v20 = [location[0] tabTitle];
      v19 = [location[0] tabImage];
      v18 = [v17 initWithTitle:v20 image:? tag:?];
      [(CPSNowPlayingViewController *)v33 setTabBarItem:?];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x277D75B28]);
      v14 = [v13 initWithTabBarSystemItem:objc_msgSend(location[0] tag:{"tabSystemItem"), 0}];
      [(CPSNowPlayingViewController *)v33 setTabBarItem:?];
      *&v8 = MEMORY[0x277D82BD8](v14).n128_u64[0];
      v16 = [(CPSNowPlayingViewController *)v33 tabBarItem];
      v15 = [location[0] tabTitle];
      [v16 _setInternalTitle:?];
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
    }

    v27 = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v34, v33);
      _os_log_impl(&dword_242FE8000, v27, OS_LOG_TYPE_DEFAULT, "%@: Creating now playing Future", v34, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v9 = [MEMORY[0x277D2C900] futureWithResult:v33];
    templateProviderFuture = v33->_templateProviderFuture;
    v33->_templateProviderFuture = v9;
    MEMORY[0x277D82BD8](templateProviderFuture);
  }

  v12 = MEMORY[0x277D82BE0](v33);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v33, 0);
  return v12;
}

- (id)nowPlayingTemplate
{
  v3 = objc_opt_class();
  v4 = [(CPSNowPlayingViewController *)self associatedTemplate];
  v5 = CPSSafeCast_6(v3, v4);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)viewDidLoad
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v3 viewDidLoad];
  v2 = [(CPSNowPlayingViewController *)v5 navigationController];
  [v2 setNavigationBarHidden:0 animated:1];
  MEMORY[0x277D82BD8](v2);
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
  objc_storeStrong(&v3->_audioPlaybackManager, 0);
}

- (void)updateNowPlayingTemplate:(id)a3 withProxyDelegate:(id)a4 canThrottle:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v8;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __86__CPSNowPlayingViewController_updateNowPlayingTemplate_withProxyDelegate_canThrottle___block_invoke;
  v14 = &unk_278D91E10;
  v15 = MEMORY[0x277D82BE0](v22);
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = MEMORY[0x277D82BE0](v20);
  v18 = MEMORY[0x277D82BE0](v19);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __86__CPSNowPlayingViewController_updateNowPlayingTemplate_withProxyDelegate_canThrottle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAssociatedTemplate:*(a1 + 40)];
  [*(a1 + 32) setTemplateDelegate:*(a1 + 48)];
  v1 = [*(a1 + 32) audioPlaybackManager];
  [v1 updateNowPlayingTemplate:*(a1 + 40) templateDelegate:*(a1 + 48)];
  v4 = 0;
  v3 = 1;
  if ([*(a1 + 56) BOOLValue])
  {
    v5 = [*(a1 + 32) updateThrottle];
    v4 = 1;
    v3 = [v5 incrementAttempts];
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](v5);
  }

  if (v3)
  {
    [*(a1 + 32) reloadData];
  }
}

- (void)reloadData
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v3 reloadData];
  v2 = [(CPSNowPlayingViewController *)v5 updateThrottle];
  [(CPUIThrottle *)v2 unthrottle];
  MEMORY[0x277D82BD8](v2);
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
  v11 = __50__CPSNowPlayingViewController_setControl_enabled___block_invoke;
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

double __50__CPSNowPlayingViewController_setControl_enabled___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = a1;
  v15 = a1;
  memset(__b, 0, sizeof(__b));
  v10 = [*(a1 + 32) playModeControlView];
  obj = [v10 mediaButtons];
  v12 = [obj countByEnumeratingWithState:__b objects:v17 count:{16, MEMORY[0x277D82BD8](v10).n128_f64[0]}];
  if (v12)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v12;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v7);
      v3 = [v14 identifier];
      v4 = [v3 isEqual:*(a1 + 40)];
      *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
      if (v4)
      {
        [v14 setEnabled:{*(a1 + 48) & 1, v1}];
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v17 count:{16, v1}];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  *&result = MEMORY[0x277D82BD8](obj).n128_u64[0];
  return result;
}

- (void)setControl:(id)a3 selected:(BOOL)a4
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
  v11 = __51__CPSNowPlayingViewController_setControl_selected___block_invoke;
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

double __51__CPSNowPlayingViewController_setControl_selected___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = a1;
  v15 = a1;
  memset(__b, 0, sizeof(__b));
  v10 = [*(a1 + 32) playModeControlView];
  obj = [v10 mediaButtons];
  v12 = [obj countByEnumeratingWithState:__b objects:v17 count:{16, MEMORY[0x277D82BD8](v10).n128_f64[0]}];
  if (v12)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v12;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v7);
      v3 = [v14 identifier];
      v4 = [v3 isEqual:*(a1 + 40)];
      *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
      if (v4)
      {
        [v14 setSelected:{*(a1 + 48) & 1, v1}];
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v17 count:{16, v1}];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  *&result = MEMORY[0x277D82BD8](obj).n128_u64[0];
  return result;
}

- (void)setIsPopping:(BOOL)a3
{
  if (a3 != self->_isPopping)
  {
    self->_isPopping = a3;
  }

  if (self->_didDisappear && a3)
  {
    [(CPSNowPlayingViewController *)self _cleanup];
  }
}

- (void)setDidDisappear:(BOOL)a3
{
  if (self->_didDisappear != a3)
  {
    self->_didDisappear = a3;
  }

  if (a3 && self->_isPopping)
  {
    [(CPSNowPlayingViewController *)self _cleanup];
  }
}

- (void)removeFromParentViewController
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSNowPlayingViewController;
  [(CPSNowPlayingViewController *)&v2 removeFromParentViewController];
  [(CPSNowPlayingViewController *)v4 _cleanup];
}

- (void)viewDidLayoutSubviews
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v3 viewDidLayoutSubviews];
  v2 = [(CPSNowPlayingViewController *)v5 audioPlaybackManager];
  [(CPSAudioPlaybackManager *)v2 _updateArtworkSizing];
  MEMORY[0x277D82BD8](v2);
}

- (void)_cleanup
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = self;
  oslog[1] = a2;
  oslog[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, v4);
    _os_log_impl(&dword_242FE8000, oslog[0], OS_LOG_TYPE_DEFAULT, "Cleaning up %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v4->_templateProviderFuture, 0);
  v2 = [(CPSNowPlayingViewController *)v4 viewControllerDelegate];
  [(CPSTemplateViewControllerDelegate *)v2 templateViewControllerDidPop:v4];
  MEMORY[0x277D82BD8](v2);
}

- (void)viewWillAppear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v9 viewWillAppear:a3];
  [(CPSNowPlayingViewController *)v12 setIsPopping:0];
  [(CPSNowPlayingViewController *)v12 setDidDisappear:0];
  v7 = [(CPSNowPlayingViewController *)v12 templateDelegate];
  v8 = [(CPTemplateDelegate *)v7 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSNowPlayingViewController *)v12 templateDelegate];
    v5 = [(CPSNowPlayingViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [CPTemplateDelegate templateWillAppearWithIdentifier:v6 animated:"templateWillAppearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v11 viewDidAppear:a3];
  v8 = [(CPSNowPlayingViewController *)v14 audioPlaybackManager];
  [(CPSAudioPlaybackManager *)v8 _updateArtworkSizing];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = [(CPSNowPlayingViewController *)v14 templateDelegate];
  v10 = [(CPTemplateDelegate *)v9 conformsToProtocol:&unk_28562C040];
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v7 = [(CPSNowPlayingViewController *)v14 templateDelegate];
    v6 = [(CPSNowPlayingViewController *)v14 associatedTemplate];
    v5 = [(CPTemplate *)v6 identifier];
    [CPTemplateDelegate templateDidAppearWithIdentifier:v7 animated:"templateDidAppearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v9 viewWillDisappear:a3];
  v7 = [(CPSNowPlayingViewController *)v12 templateDelegate];
  v8 = [(CPTemplateDelegate *)v7 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSNowPlayingViewController *)v12 templateDelegate];
    v5 = [(CPSNowPlayingViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [CPTemplateDelegate templateWillDisappearWithIdentifier:v6 animated:"templateWillDisappearWithIdentifier:animated:"];
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
  v9.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v9 viewDidDisappear:a3];
  v7 = [(CPSNowPlayingViewController *)v12 templateDelegate];
  v8 = [(CPTemplateDelegate *)v7 conformsToProtocol:&unk_28562C040];
  v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSNowPlayingViewController *)v12 templateDelegate];
    v5 = [(CPSNowPlayingViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [CPTemplateDelegate templateDidDisappearWithIdentifier:v6 animated:"templateDidDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  [(CPSNowPlayingViewController *)v12 setDidDisappear:1, *&v3];
}

- (void)didSelectButton:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] cps_identifier];
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v11, v10, v8);
    _os_log_debug_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEBUG, "%@: button selected with UUID: %@", v11, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(CPSNowPlayingViewController *)v10 templateDelegate];
  v6 = [(CPTemplateDelegate *)v5 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(CPSNowPlayingViewController *)v10 templateDelegate];
    [(CPTemplateDelegate *)v4 handleActionForControlIdentifier:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
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
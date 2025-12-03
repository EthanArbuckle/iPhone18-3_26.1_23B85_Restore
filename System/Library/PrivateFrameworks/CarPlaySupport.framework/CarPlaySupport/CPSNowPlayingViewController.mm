@interface CPSNowPlayingViewController
- (CPSNowPlayingViewController)initWithNowPlayingTemplate:(id)template templateDelegate:(id)delegate environment:(id)environment;
- (CPSTemplateEnvironment)templateEnvironment;
- (CPSTemplateViewControllerDelegate)viewControllerDelegate;
- (id)nowPlayingTemplate;
- (void)_cleanup;
- (void)didSelectButton:(id)button;
- (void)invalidate;
- (void)reloadData;
- (void)removeFromParentViewController;
- (void)setControl:(id)control enabled:(BOOL)enabled;
- (void)setControl:(id)control selected:(BOOL)selected;
- (void)setDidDisappear:(BOOL)disappear;
- (void)setIsPopping:(BOOL)popping;
- (void)updateNowPlayingTemplate:(id)template withProxyDelegate:(id)delegate canThrottle:(id)throttle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPSNowPlayingViewController

- (CPSNowPlayingViewController)initWithNowPlayingTemplate:(id)template templateDelegate:(id)delegate environment:(id)environment
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v31 = 0;
  objc_storeStrong(&v31, delegate);
  v30 = 0;
  objc_storeStrong(&v30, environment);
  v5 = [CPSAudioPlaybackManager alloc];
  v29 = [(CPSAudioPlaybackManager *)v5 initWithNowPlayingTemplate:location[0] templateDelegate:v31 environment:v30];
  v24 = selfCopy;
  bundleIdentifier = [v30 bundleIdentifier];
  selfCopy = 0;
  v28.receiver = v24;
  v28.super_class = CPSNowPlayingViewController;
  v26 = [CPUINowPlayingViewController initWithBundleIdentifier:sel_initWithBundleIdentifier_dataSource_delegate_ dataSource:? delegate:?];
  selfCopy = v26;
  objc_storeStrong(&selfCopy, v26);
  MEMORY[0x277D82BD8](bundleIdentifier);
  if (v26)
  {
    objc_storeStrong(&selfCopy->_audioPlaybackManager, v29);
    [(CPSAudioPlaybackManager *)selfCopy->_audioPlaybackManager setNowPlayingViewController:selfCopy];
    v6 = [objc_alloc(MEMORY[0x277CF91A8]) initWithBase:2.0];
    updateThrottle = selfCopy->_updateThrottle;
    selfCopy->_updateThrottle = v6;
    MEMORY[0x277D82BD8](updateThrottle);
    objc_storeWeak(&selfCopy->_templateEnvironment, v30);
    objc_storeStrong(&selfCopy->_associatedTemplate, location[0]);
    objc_storeStrong(&selfCopy->_templateDelegate, v31);
    tabImage = [location[0] tabImage];
    MEMORY[0x277D82BD8](tabImage);
    if (tabImage)
    {
      v17 = objc_alloc(MEMORY[0x277D75B28]);
      tabTitle = [location[0] tabTitle];
      tabImage2 = [location[0] tabImage];
      v18 = [v17 initWithTitle:tabTitle image:? tag:?];
      [(CPSNowPlayingViewController *)selfCopy setTabBarItem:?];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](tabImage2);
      MEMORY[0x277D82BD8](tabTitle);
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x277D75B28]);
      v14 = [v13 initWithTabBarSystemItem:objc_msgSend(location[0] tag:{"tabSystemItem"), 0}];
      [(CPSNowPlayingViewController *)selfCopy setTabBarItem:?];
      *&v8 = MEMORY[0x277D82BD8](v14).n128_u64[0];
      tabBarItem = [(CPSNowPlayingViewController *)selfCopy tabBarItem];
      tabTitle2 = [location[0] tabTitle];
      [tabBarItem _setInternalTitle:?];
      MEMORY[0x277D82BD8](tabTitle2);
      MEMORY[0x277D82BD8](tabBarItem);
    }

    v27 = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v34, selfCopy);
      _os_log_impl(&dword_242FE8000, v27, OS_LOG_TYPE_DEFAULT, "%@: Creating now playing Future", v34, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v9 = [MEMORY[0x277D2C900] futureWithResult:selfCopy];
    templateProviderFuture = selfCopy->_templateProviderFuture;
    selfCopy->_templateProviderFuture = v9;
    MEMORY[0x277D82BD8](templateProviderFuture);
  }

  v12 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (id)nowPlayingTemplate
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSNowPlayingViewController *)self associatedTemplate];
  v5 = CPSSafeCast_6(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v3 viewDidLoad];
  navigationController = [(CPSNowPlayingViewController *)selfCopy navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];
  MEMORY[0x277D82BD8](navigationController);
}

- (void)invalidate
{
  v5 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v4, selfCopy);
    _os_log_impl(&dword_242FE8000, oslog[0], OS_LOG_TYPE_DEFAULT, "Invalidating %@", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&selfCopy->_templateProviderFuture, 0);
  objc_storeStrong(&selfCopy->_audioPlaybackManager, 0);
}

- (void)updateNowPlayingTemplate:(id)template withProxyDelegate:(id)delegate canThrottle:(id)throttle
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v20 = 0;
  objc_storeStrong(&v20, delegate);
  v19 = 0;
  objc_storeStrong(&v19, throttle);
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v8;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __86__CPSNowPlayingViewController_updateNowPlayingTemplate_withProxyDelegate_canThrottle___block_invoke;
  v14 = &unk_278D91E10;
  v15 = MEMORY[0x277D82BE0](selfCopy);
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
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v3 reloadData];
  updateThrottle = [(CPSNowPlayingViewController *)selfCopy updateThrottle];
  [(CPUIThrottle *)updateThrottle unthrottle];
  MEMORY[0x277D82BD8](updateThrottle);
}

- (void)setControl:(id)control enabled:(BOOL)enabled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, control);
  enabledCopy = enabled;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __50__CPSNowPlayingViewController_setControl_enabled___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = enabledCopy;
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

- (void)setControl:(id)control selected:(BOOL)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, control);
  selectedCopy = selected;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __51__CPSNowPlayingViewController_setControl_selected___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = selectedCopy;
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

- (void)setIsPopping:(BOOL)popping
{
  if (popping != self->_isPopping)
  {
    self->_isPopping = popping;
  }

  if (self->_didDisappear && popping)
  {
    [(CPSNowPlayingViewController *)self _cleanup];
  }
}

- (void)setDidDisappear:(BOOL)disappear
{
  if (self->_didDisappear != disappear)
  {
    self->_didDisappear = disappear;
  }

  if (disappear && self->_isPopping)
  {
    [(CPSNowPlayingViewController *)self _cleanup];
  }
}

- (void)removeFromParentViewController
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSNowPlayingViewController;
  [(CPSNowPlayingViewController *)&v2 removeFromParentViewController];
  [(CPSNowPlayingViewController *)selfCopy _cleanup];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v3 viewDidLayoutSubviews];
  audioPlaybackManager = [(CPSNowPlayingViewController *)selfCopy audioPlaybackManager];
  [(CPSAudioPlaybackManager *)audioPlaybackManager _updateArtworkSizing];
  MEMORY[0x277D82BD8](audioPlaybackManager);
}

- (void)_cleanup
{
  v6 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, selfCopy);
    _os_log_impl(&dword_242FE8000, oslog[0], OS_LOG_TYPE_DEFAULT, "Cleaning up %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&selfCopy->_templateProviderFuture, 0);
  viewControllerDelegate = [(CPSNowPlayingViewController *)selfCopy viewControllerDelegate];
  [(CPSTemplateViewControllerDelegate *)viewControllerDelegate templateViewControllerDidPop:selfCopy];
  MEMORY[0x277D82BD8](viewControllerDelegate);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v9 viewWillAppear:appear];
  [(CPSNowPlayingViewController *)selfCopy setIsPopping:0];
  [(CPSNowPlayingViewController *)selfCopy setDidDisappear:0];
  templateDelegate = [(CPSNowPlayingViewController *)selfCopy templateDelegate];
  v8 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v8)
  {
    templateDelegate2 = [(CPSNowPlayingViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSNowPlayingViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateWillAppearWithIdentifier:templateDelegate2 animated:"templateWillAppearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    MEMORY[0x277D82BD8](templateDelegate2);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v13 = a2;
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v11 viewDidAppear:appear];
  audioPlaybackManager = [(CPSNowPlayingViewController *)selfCopy audioPlaybackManager];
  [(CPSAudioPlaybackManager *)audioPlaybackManager _updateArtworkSizing];
  *&v3 = MEMORY[0x277D82BD8](audioPlaybackManager).n128_u64[0];
  templateDelegate = [(CPSNowPlayingViewController *)selfCopy templateDelegate];
  v10 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v4 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v10)
  {
    templateDelegate2 = [(CPSNowPlayingViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSNowPlayingViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateDidAppearWithIdentifier:templateDelegate2 animated:"templateDidAppearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    MEMORY[0x277D82BD8](templateDelegate2);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v11 = a2;
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v9 viewWillDisappear:disappear];
  templateDelegate = [(CPSNowPlayingViewController *)selfCopy templateDelegate];
  v8 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v8)
  {
    templateDelegate2 = [(CPSNowPlayingViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSNowPlayingViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateWillDisappearWithIdentifier:templateDelegate2 animated:"templateWillDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    MEMORY[0x277D82BD8](templateDelegate2);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v11 = a2;
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = CPSNowPlayingViewController;
  [(CPUINowPlayingViewController *)&v9 viewDidDisappear:disappear];
  templateDelegate = [(CPSNowPlayingViewController *)selfCopy templateDelegate];
  v8 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v8)
  {
    templateDelegate2 = [(CPSNowPlayingViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSNowPlayingViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateDidDisappearWithIdentifier:templateDelegate2 animated:"templateDidDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    v3 = MEMORY[0x277D82BD8](templateDelegate2).n128_u64[0];
  }

  [(CPSNowPlayingViewController *)selfCopy setDidDisappear:1, *&v3];
}

- (void)didSelectButton:(id)button
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  cps_identifier = [location[0] cps_identifier];
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v11, selfCopy, cps_identifier);
    _os_log_debug_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEBUG, "%@: button selected with UUID: %@", v11, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  templateDelegate = [(CPSNowPlayingViewController *)selfCopy templateDelegate];
  v6 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v6)
  {
    templateDelegate2 = [(CPSNowPlayingViewController *)selfCopy templateDelegate];
    [(CPTemplateDelegate *)templateDelegate2 handleActionForControlIdentifier:cps_identifier];
    MEMORY[0x277D82BD8](templateDelegate2);
  }

  objc_storeStrong(&cps_identifier, 0);
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
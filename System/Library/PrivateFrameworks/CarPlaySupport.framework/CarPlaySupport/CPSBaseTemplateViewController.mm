@interface CPSBaseTemplateViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceivePress:(id)press;
- (CPSBaseTemplateViewController)initWithTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment;
- (CPSTemplateViewControllerDelegate)viewControllerDelegate;
- (id)_barButtonItemForBarButton:(id)button;
- (id)_barButtonItemForIdentifier:(id)identifier;
- (void)_activateSiriForGridItem:(id)item;
- (void)_addGestureRecognizerIfNecessary;
- (void)_backGestureFired:(id)fired;
- (void)_cleanup;
- (void)_dismissTemplateViewController;
- (void)_nowPlayingButtonTapped:(id)tapped;
- (void)_updateBarButtonAXLabels;
- (void)_updateLeadingBarButtons;
- (void)_updateTemplate:(id)template;
- (void)_updateTrailingBarButtons;
- (void)_viewDidLoad;
- (void)applicationDidBecomeNowPlayingApp:(BOOL)app;
- (void)dealloc;
- (void)didSelectButton:(id)button;
- (void)invalidate;
- (void)removeFromParentViewController;
- (void)setBarButton:(id)button image:(id)image;
- (void)setBarButton:(id)button title:(id)title;
- (void)setControl:(id)control enabled:(BOOL)enabled;
- (void)setControl:(id)control selected:(BOOL)selected;
- (void)setDidDisappear:(BOOL)disappear;
- (void)setHostBackButton:(id)button;
- (void)setIsPopping:(BOOL)popping;
- (void)setLeadingNavigationBarButtons:(id)buttons;
- (void)setTrailingNavigationBarButtons:(id)buttons;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPSBaseTemplateViewController

- (CPSTemplateViewControllerDelegate)viewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerDelegate);

  return WeakRetained;
}

- (CPSBaseTemplateViewController)initWithTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment
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
  v13.super_class = CPSBaseTemplateViewController;
  v12 = [(CPSBaseTemplateViewController *)&v13 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    v6 = objc_opt_new();
    templateProviderFuture = selfCopy->_templateProviderFuture;
    selfCopy->_templateProviderFuture = v6;
    MEMORY[0x277D82BD8](templateProviderFuture);
    objc_storeStrong(&selfCopy->_templateEnvironment, v14);
    objc_storeStrong(&selfCopy->_templateDelegate, v15);
    [(CPSBaseTemplateViewController *)selfCopy _updateTemplate:location[0]];
    if ([v14 canBecomeNowPlayingApp])
    {
      [v14 addTemplateEnvironmentDelegate:selfCopy];
    }

    if ([v14 isNowPlayingApp])
    {
      [(CPSBaseTemplateViewController *)selfCopy _updateTrailingBarButtons];
    }
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

- (void)_updateTemplate:(id)template
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  objc_storeStrong(&selfCopy->_associatedTemplate, location[0]);
  associatedTemplate = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
  tabImage = [(CPTemplate *)associatedTemplate tabImage];
  MEMORY[0x277D82BD8](tabImage);
  *&v3 = MEMORY[0x277D82BD8](associatedTemplate).n128_u64[0];
  if (tabImage)
  {
    associatedTemplate2 = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
    tabTitle = [(CPTemplate *)associatedTemplate2 tabTitle];
    v4 = MEMORY[0x277D82BD8](associatedTemplate2).n128_u64[0];
    v30 = 0;
    v25 = 0;
    if (!tabTitle)
    {
      associatedTemplate3 = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
      v30 = 1;
      v25 = objc_opt_respondsToSelector();
    }

    if (v30)
    {
      v4 = MEMORY[0x277D82BD8](associatedTemplate3).n128_u64[0];
    }

    if (v25)
    {
      associatedTemplate4 = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
      title = [(CPTemplate *)associatedTemplate4 title];
      v6 = tabTitle;
      tabTitle = title;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](associatedTemplate4);
    }

    v19 = objc_alloc(MEMORY[0x277D75B28]);
    v18 = tabTitle;
    associatedTemplate5 = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
    tabImage2 = [(CPTemplate *)associatedTemplate5 tabImage];
    v20 = [v19 initWithTitle:v18 image:? tag:?];
    [(CPSBaseTemplateViewController *)selfCopy setTabBarItem:?];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](tabImage2);
    MEMORY[0x277D82BD8](associatedTemplate5);
    objc_storeStrong(&tabTitle, 0);
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277D75B28]);
    associatedTemplate6 = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
    v16 = [v15 initWithTabBarSystemItem:-[CPTemplate tabSystemItem](associatedTemplate6 tag:{"tabSystemItem"), 0}];
    [(CPSBaseTemplateViewController *)selfCopy setTabBarItem:?];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](associatedTemplate6);
  }

  associatedTemplate7 = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
  showsTabBadge = [(CPTemplate *)associatedTemplate7 showsTabBadge];
  *&v7 = MEMORY[0x277D82BD8](associatedTemplate7).n128_u64[0];
  if (showsTabBadge)
  {
    tabBarItem = [(CPSBaseTemplateViewController *)selfCopy tabBarItem];
    [tabBarItem setBadgeValue:&stru_2855A5FC8];
    MEMORY[0x277D82BD8](tabBarItem);
  }

  else
  {
    tabBarItem2 = [(CPSBaseTemplateViewController *)selfCopy tabBarItem];
    [tabBarItem2 setBadgeValue:0];
    MEMORY[0x277D82BD8](tabBarItem2);
  }

  UIOffsetMake();
  v28 = v8;
  v29 = v9;
  tabBarItem3 = [(CPSBaseTemplateViewController *)selfCopy tabBarItem];
  [tabBarItem3 setBadgeOffset:{v28, v29}];
  MEMORY[0x277D82BD8](tabBarItem3);
  objc_storeStrong(location, 0);
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
  v9 = __67__CPSBaseTemplateViewController_applicationDidBecomeNowPlayingApp___block_invoke;
  v10 = &unk_278D91CA8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = appCopy;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
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
}

- (void)viewDidLoad
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewDidLoad];
  if (_UISolariumEnabled())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    view = [(CPSBaseTemplateViewController *)selfCopy view];
    [view setBackgroundColor:clearColor];
    MEMORY[0x277D82BD8](view);
    MEMORY[0x277D82BD8](clearColor);
  }

  [(CPSBaseTemplateViewController *)selfCopy _viewDidLoad];
  templateProviderFuture = [(CPSBaseTemplateViewController *)selfCopy templateProviderFuture];
  [(NAFuture *)templateProviderFuture finishWithResult:selfCopy];
  MEMORY[0x277D82BD8](templateProviderFuture);
}

- (void)_viewDidLoad
{
  navigationItem = [(CPSBaseTemplateViewController *)self navigationItem];
  [navigationItem setLeftItemsSupplementBackButton:1];
  [(CPSBaseTemplateViewController *)self _updateLeadingBarButtons];
  [(CPSBaseTemplateViewController *)self _updateTrailingBarButtons];
}

- (void)setIsPopping:(BOOL)popping
{
  if (popping != self->_isPopping)
  {
    self->_isPopping = popping;
    if ([(CPSBaseTemplateViewController *)self didDisappear]&& popping)
    {
      [(CPSBaseTemplateViewController *)self _cleanup];
    }
  }
}

- (void)setDidDisappear:(BOOL)disappear
{
  if (self->_didDisappear != disappear)
  {
    self->_didDisappear = disappear;
    if (disappear && [(CPSBaseTemplateViewController *)self isPopping])
    {
      [(CPSBaseTemplateViewController *)self _cleanup];
    }
  }
}

- (void)removeFromParentViewController
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v2 removeFromParentViewController];
  [(CPSBaseTemplateViewController *)selfCopy _cleanup];
}

- (void)_cleanup
{
  objc_storeStrong(&self->_templateProviderFuture, 0);
  viewControllerDelegate = [(CPSBaseTemplateViewController *)self viewControllerDelegate];
  [(CPSTemplateViewControllerDelegate *)viewControllerDelegate templateViewControllerDidPop:self];
  MEMORY[0x277D82BD8](viewControllerDelegate);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v9 viewWillAppear:appear];
  [(CPSBaseTemplateViewController *)selfCopy setDidDisappear:0];
  [(CPSBaseTemplateViewController *)selfCopy setIsPopping:0];
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  v8 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v8)
  {
    templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
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
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v9 viewDidAppear:appear];
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  v8 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v8)
  {
    templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateDidAppearWithIdentifier:templateDelegate2 animated:"templateDidAppearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    v3 = MEMORY[0x277D82BD8](templateDelegate2).n128_u64[0];
  }

  [(CPSBaseTemplateViewController *)selfCopy _addGestureRecognizerIfNecessary];
}

- (void)_addGestureRecognizerIfNecessary
{
  selfCopy = self;
  v10[1] = a2;
  navigationController = [(CPSBaseTemplateViewController *)self navigationController];
  view = [navigationController view];
  backGestureRecognizer = [(CPSBaseTemplateViewController *)selfCopy backGestureRecognizer];
  [view removeGestureRecognizer:?];
  MEMORY[0x277D82BD8](backGestureRecognizer);
  MEMORY[0x277D82BD8](view);
  associatedTemplate = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
  backButton = [(CPTemplate *)associatedTemplate backButton];
  MEMORY[0x277D82BD8](backButton);
  MEMORY[0x277D82BD8](associatedTemplate);
  if (backButton)
  {
    v10[0] = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:selfCopy action:sel__backGestureFired_];
    [v10[0] setAllowedPressTypes:&unk_2855C5060];
    [v10[0] setDelegate:selfCopy];
    navigationController2 = [(CPSBaseTemplateViewController *)selfCopy navigationController];
    view2 = [navigationController2 view];
    [view2 addGestureRecognizer:v10[0]];
    MEMORY[0x277D82BD8](view2);
    *&v2 = MEMORY[0x277D82BD8](navigationController2).n128_u64[0];
    [(CPSBaseTemplateViewController *)selfCopy setBackGestureRecognizer:v10[0], v2];
    objc_storeStrong(v10, 0);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v14 = a2;
  disappearCopy = disappear;
  v12.receiver = self;
  v12.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v12 viewWillDisappear:disappear];
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  v11 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v11)
  {
    templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateWillDisappearWithIdentifier:templateDelegate2 animated:"templateWillDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    v3 = MEMORY[0x277D82BD8](templateDelegate2).n128_u64[0];
  }

  navigationController = [(CPSBaseTemplateViewController *)selfCopy navigationController];
  view = [navigationController view];
  backGestureRecognizer = [(CPSBaseTemplateViewController *)selfCopy backGestureRecognizer];
  [view removeGestureRecognizer:?];
  MEMORY[0x277D82BD8](backGestureRecognizer);
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](navigationController);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v11 = a2;
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v9 viewDidDisappear:disappear];
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  v8 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v8)
  {
    templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateDidDisappearWithIdentifier:templateDelegate2 animated:"templateDidDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    v3 = MEMORY[0x277D82BD8](templateDelegate2).n128_u64[0];
  }

  [(CPSBaseTemplateViewController *)selfCopy setDidDisappear:1, *&v3];
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
  *&v2 = MEMORY[0x277D82BD8](defaultCenter).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = CPSBaseTemplateViewController;
  [(CPSBaseTemplateViewController *)&v4 dealloc];
}

- (void)didSelectButton:(id)button
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  identifier = [location[0] identifier];
  v21 = CarPlaySupportGeneralLogging();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v25, selfCopy, identifier);
    _os_log_impl(&dword_242FE8000, v21, v20, "%@: button selected with UUID: %@", v25, 0x16u);
  }

  objc_storeStrong(&v21, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D551E0];
    templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
    bundleIdentifier = [(CPSTemplateEnvironment *)templateEnvironment bundleIdentifier];
    v19 = [v11 messageComposeDirectActionWithAppBundleId:?];
    MEMORY[0x277D82BD8](bundleIdentifier);
    *&v3 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
    viewControllerDelegate = [(CPSBaseTemplateViewController *)selfCopy viewControllerDelegate];
    [(CPSTemplateViewControllerDelegate *)viewControllerDelegate templateViewController:selfCopy shouldActivateSiriWithDirectActionContext:v19];
    MEMORY[0x277D82BD8](viewControllerDelegate);
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
      gridButton = [location[0] gridButton];
      v17 = 1;
      messageConfiguration = [gridButton messageConfiguration];
      v15 = 1;
      v10 = messageConfiguration != 0;
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](messageConfiguration);
    }

    if (v17)
    {
      MEMORY[0x277D82BD8](gridButton);
    }

    if (v10)
    {
      v8 = selfCopy;
      gridButton2 = [location[0] gridButton];
      [(CPSBaseTemplateViewController *)v8 _activateSiriForGridItem:?];
      MEMORY[0x277D82BD8](gridButton2);
    }

    else
    {
      templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
      v7 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
      *&v4 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
      if (v7)
      {
        templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
        [(CPTemplateDelegate *)templateDelegate2 handleActionForControlIdentifier:identifier];
        MEMORY[0x277D82BD8](templateDelegate2);
      }
    }
  }

  objc_storeStrong(&identifier, 0);
  objc_storeStrong(location, 0);
}

- (void)_activateSiriForGridItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v22 = 0;
  messageConfiguration = [location[0] messageConfiguration];
  isUnread = [messageConfiguration isUnread];
  *&v3 = MEMORY[0x277D82BD8](messageConfiguration).n128_u64[0];
  if (isUnread)
  {
    v15 = MEMORY[0x277D551E0];
    templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
    bundleIdentifier = [(CPSTemplateEnvironment *)templateEnvironment bundleIdentifier];
    messageConfiguration2 = [location[0] messageConfiguration];
    conversationIdentifier = [messageConfiguration2 conversationIdentifier];
    v4 = [v15 messageReadDirectActionWithAppBundleId:bundleIdentifier conversationGUID:?];
    v5 = v22;
    v22 = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](conversationIdentifier);
    MEMORY[0x277D82BD8](messageConfiguration2);
    MEMORY[0x277D82BD8](bundleIdentifier);
    v6 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  }

  else
  {
    v10 = MEMORY[0x277D551E0];
    templateEnvironment2 = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
    bundleIdentifier2 = [(CPSTemplateEnvironment *)templateEnvironment2 bundleIdentifier];
    messageConfiguration3 = [location[0] messageConfiguration];
    conversationIdentifier2 = [messageConfiguration3 conversationIdentifier];
    v7 = [v10 messageReplyDirectActionWithAppBundleId:bundleIdentifier2 conversationGUID:?];
    v8 = v22;
    v22 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](conversationIdentifier2);
    MEMORY[0x277D82BD8](messageConfiguration3);
    MEMORY[0x277D82BD8](bundleIdentifier2);
    v6 = MEMORY[0x277D82BD8](templateEnvironment2).n128_u64[0];
  }

  if (v22)
  {
    viewControllerDelegate = [(CPSBaseTemplateViewController *)selfCopy viewControllerDelegate];
    [(CPSTemplateViewControllerDelegate *)viewControllerDelegate templateViewController:selfCopy shouldActivateSiriWithDirectActionContext:v22];
    MEMORY[0x277D82BD8](viewControllerDelegate);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (id)_barButtonItemForIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  navigationItem = [(CPSBaseTemplateViewController *)selfCopy navigationItem];
  leftBarButtonItems = [navigationItem leftBarButtonItems];
  navigationItem2 = [(CPSBaseTemplateViewController *)selfCopy navigationItem];
  rightBarButtonItems = [navigationItem2 rightBarButtonItems];
  v16 = [leftBarButtonItems arrayByAddingObjectsFromArray:?];
  MEMORY[0x277D82BD8](rightBarButtonItems);
  MEMORY[0x277D82BD8](navigationItem2);
  MEMORY[0x277D82BD8](leftBarButtonItems);
  MEMORY[0x277D82BD8](navigationItem);
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

- (id)_barButtonItemForBarButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  if (_UISolariumEnabled())
  {
    v3 = [CPSModernBarButtonItem alloc];
    v9 = [(CPSModernBarButtonItem *)v3 initWithCPBarButton:location[0]];
    [(CPSModernBarButtonItem *)v9 setDelegate:selfCopy];
    v12 = MEMORY[0x277D82BE0](v9);
    v8 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v4 = [CPSBarButtonItem alloc];
    v7 = [(CPSBarButtonItem *)v4 initWithCPBarButton:location[0]];
    [(CPSBarButtonItem *)v7 setDelegate:selfCopy];
    v12 = MEMORY[0x277D82BE0](v7);
    v8 = 1;
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(location, 0);
  v5 = v12;

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceivePress:(id)press
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, recognizer);
  v13 = 0;
  objc_storeStrong(&v13, press);
  v6 = location[0];
  backGestureRecognizer = [(CPSBaseTemplateViewController *)selfCopy backGestureRecognizer];
  v11 = 0;
  v9 = 0;
  v8 = 0;
  if (v6 == backGestureRecognizer)
  {
    associatedTemplate = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
    v11 = 1;
    backButton = [(CPTemplate *)associatedTemplate backButton];
    v9 = 1;
    v8 = backButton != 0;
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](backButton);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](associatedTemplate);
  }

  MEMORY[0x277D82BD8](backGestureRecognizer);
  v16 = v8;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v16;
}

- (void)_backGestureFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  associatedTemplate = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
  backButton = [(CPTemplate *)associatedTemplate backButton];
  MEMORY[0x277D82BD8](backButton);
  *&v3 = MEMORY[0x277D82BD8](associatedTemplate).n128_u64[0];
  if (backButton)
  {
    v4 = selfCopy;
    associatedTemplate2 = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
    backButton2 = [(CPTemplate *)associatedTemplate2 backButton];
    [(CPSBaseTemplateViewController *)v4 didSelectButton:?];
    MEMORY[0x277D82BD8](backButton2);
    MEMORY[0x277D82BD8](associatedTemplate2);
  }

  objc_storeStrong(location, 0);
}

- (void)_nowPlayingButtonTapped:(id)tapped
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
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
  navigationController = [(CPSBaseTemplateViewController *)selfCopy navigationController];
  obj = [navigationController viewControllers];
  v17 = [obj countByEnumeratingWithState:__b objects:v34 count:{16, MEMORY[0x277D82BD8](navigationController).n128_f64[0]}];
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
    navigationController2 = [(CPSBaseTemplateViewController *)selfCopy navigationController];
    v3 = [navigationController2 popToViewController:v28 animated:1];
    MEMORY[0x277D82BD8](navigationController2);
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
    templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
    templateProvider = [(CPSTemplateEnvironment *)templateEnvironment templateProvider];
    [(CPTemplateProviding *)templateProvider clientRequestNowPlayingTemplateAnimated:1];
    MEMORY[0x277D82BD8](templateProvider);
    MEMORY[0x277D82BD8](templateEnvironment);
    v23 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)setHostBackButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __51__CPSBaseTemplateViewController_setHostBackButton___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
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
  selfCopy = self;
  v41[1] = a2;
  v41[0] = objc_opt_new();
  view = [(CPSBaseTemplateViewController *)selfCopy view];
  window = [view window];
  backGestureRecognizer = [(CPSBaseTemplateViewController *)selfCopy backGestureRecognizer];
  [window removeGestureRecognizer:?];
  MEMORY[0x277D82BD8](backGestureRecognizer);
  MEMORY[0x277D82BD8](window);
  associatedTemplate = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
  backButton = [(CPTemplate *)associatedTemplate backButton];
  MEMORY[0x277D82BD8](backButton);
  *&v2 = MEMORY[0x277D82BD8](associatedTemplate).n128_u64[0];
  if (backButton)
  {
    navigationItem = [(CPSBaseTemplateViewController *)selfCopy navigationItem];
    [navigationItem setHidesBackButton:1];
    MEMORY[0x277D82BD8](navigationItem);
    if (_UISolariumEnabled())
    {
      v23 = [CPSModernBackBarButtonItem alloc];
      associatedTemplate2 = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
      backButton2 = [(CPTemplate *)associatedTemplate2 backButton];
      v40 = [(CPSModernBackBarButtonItem *)v23 initWithCPBarButton:?];
      MEMORY[0x277D82BD8](backButton2);
      *&v3 = MEMORY[0x277D82BD8](associatedTemplate2).n128_u64[0];
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
      [(CPSModernBarButtonItem *)v40 setDelegate:selfCopy, v4];
      [v41[0] addObject:v40];
      objc_storeStrong(&v40, 0);
    }

    else
    {
      v17 = [CPSBarBackButtonItem alloc];
      associatedTemplate3 = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
      backButton3 = [(CPTemplate *)associatedTemplate3 backButton];
      v39 = [(CPSBarBackButtonItem *)v17 initWithCPBarButton:?];
      MEMORY[0x277D82BD8](backButton3);
      *&v5 = MEMORY[0x277D82BD8](associatedTemplate3).n128_u64[0];
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
      [(CPSBarButtonItem *)v39 setDelegate:selfCopy, v6];
      [v41[0] addObject:v39];
      objc_storeStrong(&v39, 0);
    }

    [(CPSBaseTemplateViewController *)selfCopy _addGestureRecognizerIfNecessary];
  }

  memset(__b, 0, sizeof(__b));
  associatedTemplate4 = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
  obj = [(CPTemplate *)associatedTemplate4 internalLeadingBarButtons];
  v16 = [obj countByEnumeratingWithState:__b objects:v44 count:{16, MEMORY[0x277D82BD8](associatedTemplate4).n128_f64[0]}];
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
      v36 = [(CPSBaseTemplateViewController *)selfCopy _barButtonItemForBarButton:v38];
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
    __os_log_helper_16_2_2_8_64_8_64(v43, selfCopy, v41[0]);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: Updating leading bar buttons: %@", v43, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v8 = v41[0];
  navigationItem2 = [(CPSBaseTemplateViewController *)selfCopy navigationItem];
  [navigationItem2 setLeftBarButtonItems:v8];
  *&v7 = MEMORY[0x277D82BD8](navigationItem2).n128_u64[0];
  [(CPSBaseTemplateViewController *)selfCopy _updateBarButtonAXLabels];
  objc_storeStrong(v41, 0);
}

- (void)_updateTrailingBarButtons
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v22[1] = a2;
  v22[0] = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  associatedTemplate = [(CPSBaseTemplateViewController *)selfCopy associatedTemplate];
  obj = [(CPTemplate *)associatedTemplate internalTrailingBarButtons];
  v17 = [obj countByEnumeratingWithState:__b objects:v25 count:{16, MEMORY[0x277D82BD8](associatedTemplate).n128_f64[0]}];
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
      v19 = [(CPSBaseTemplateViewController *)selfCopy _barButtonItemForBarButton:v21];
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
  templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
  _wantsNowPlayingButton = 0;
  if ([(CPSTemplateEnvironment *)templateEnvironment canBecomeNowPlayingApp])
  {
    _wantsNowPlayingButton = 0;
    if ([(CPSBaseTemplateViewController *)selfCopy isNowPlayingApp])
    {
      _wantsNowPlayingButton = [(CPSBaseTemplateViewController *)selfCopy _wantsNowPlayingButton];
    }
  }

  *&v3 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (_wantsNowPlayingButton)
  {
    v7 = v22[0];
    _nowPlayingBarButtonItem = [(CPSBaseTemplateViewController *)selfCopy _nowPlayingBarButtonItem];
    [v7 insertObject:? atIndex:?];
    MEMORY[0x277D82BD8](_nowPlayingBarButtonItem);
  }

  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v24, selfCopy, v22[0]);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: Updating trailing bar buttons: %@", v24, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v22[0];
  navigationItem = [(CPSBaseTemplateViewController *)selfCopy navigationItem];
  [navigationItem setRightBarButtonItems:v5];
  *&v4 = MEMORY[0x277D82BD8](navigationItem).n128_u64[0];
  [(CPSBaseTemplateViewController *)selfCopy _updateBarButtonAXLabels];
  objc_storeStrong(v22, 0);
}

- (void)setLeadingNavigationBarButtons:(id)buttons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__CPSBaseTemplateViewController_setLeadingNavigationBarButtons___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)setTrailingNavigationBarButtons:(id)buttons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __65__CPSBaseTemplateViewController_setTrailingNavigationBarButtons___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
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
  v11 = __52__CPSBaseTemplateViewController_setControl_enabled___block_invoke;
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

void __52__CPSBaseTemplateViewController_setControl_enabled___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _barButtonItemForIdentifier:*(a1 + 40)];
  [v2[0] setEnabled:*(a1 + 48) & 1];
  objc_storeStrong(v2, 0);
}

- (void)setControl:(id)control selected:(BOOL)selected
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, control);
  objc_storeStrong(location, 0);
}

- (void)setBarButton:(id)button image:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v16 = 0;
  objc_storeStrong(&v16, image);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__CPSBaseTemplateViewController_setBarButton_image___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)setBarButton:(id)button title:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v16 = 0;
  objc_storeStrong(&v16, title);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__CPSBaseTemplateViewController_setBarButton_title___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
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
  selfCopy = self;
  v12[1] = a2;
  navigationItem = [(CPSBaseTemplateViewController *)self navigationItem];
  leftBarButtonItems = [navigationItem leftBarButtonItems];
  if (leftBarButtonItems)
  {
    v2 = MEMORY[0x277D82BE0](leftBarButtonItems);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  }

  v12[0] = v2;
  MEMORY[0x277D82BD8](leftBarButtonItems);
  navigationItem2 = [(CPSBaseTemplateViewController *)selfCopy navigationItem];
  rightBarButtonItems = [navigationItem2 rightBarButtonItems];
  bs_reverse = [rightBarButtonItems bs_reverse];
  if (bs_reverse)
  {
    v6 = bs_reverse;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v3 = [v12[0] arrayByAddingObjectsFromArray:v6];
  v4 = v12[0];
  v12[0] = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](bs_reverse);
  MEMORY[0x277D82BD8](rightBarButtonItems);
  *&v5 = MEMORY[0x277D82BD8](navigationItem2).n128_u64[0];
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
@interface CPSEntityViewController
- (BOOL)entityContentViewController:(id)controller didPressButton:(id)button forEntity:(id)entity;
- (BOOL)entityContentViewController:(id)controller didPressButton:(id)button forPOI:(id)i;
- (BOOL)entityContentViewController:(id)controller didSelectPointOfInterestWithIdentifier:(id)identifier;
- (BOOL)entityContentViewController:(id)controller regionDidChange:(id *)change;
- (CPSEntityViewController)initWithEntityTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment;
- (id)entityTemplate;
- (id)entityTemplateDelegate;
- (void)_viewDidLoad;
- (void)setupViewControllers;
- (void)trailingBarButtonPressed:(id)pressed;
- (void)updateEntityTemplate:(id)template withProxyDelegate:(id)delegate;
@end

@implementation CPSEntityViewController

- (CPSEntityViewController)initWithEntityTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v26 = 0;
  objc_storeStrong(&v26, delegate);
  v25 = 0;
  objc_storeStrong(&v25, environment);
  v5 = selfCopy;
  selfCopy = 0;
  v24.receiver = v5;
  v24.super_class = CPSEntityViewController;
  v23 = [(CPSBaseTemplateViewController *)&v24 initWithTemplate:location[0] templateDelegate:v26 templateEnvironment:v25];
  selfCopy = v23;
  objc_storeStrong(&selfCopy, v23);
  if (v23)
  {
    entity = [location[0] entity];
    entity = selfCopy->_entity;
    selfCopy->_entity = entity;
    v8 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:MEMORY[0x277D82BD8](entity).n128_f64[0]];
    buttonMap = selfCopy->_buttonMap;
    selfCopy->_buttonMap = v8;
    MEMORY[0x277D82BD8](buttonMap);
    v10 = [CPSEntityResourceProvider alloc];
    v11 = [(CPSEntityResourceProvider *)v10 initWithTemplateEnvironment:v25 entityTemplate:location[0] templateDelegate:v26 actionDelegate:selfCopy];
    resourceProvider = selfCopy->_resourceProvider;
    selfCopy->_resourceProvider = v11;
    MEMORY[0x277D82BD8](resourceProvider);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [CPSContactEntityViewController alloc];
      v14 = [(CPSContactEntityViewController *)v13 initWithEntity:selfCopy->_entity resourceProvider:selfCopy->_resourceProvider];
      contentViewController = selfCopy->_contentViewController;
      selfCopy->_contentViewController = v14;
      MEMORY[0x277D82BD8](contentViewController);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [CPSPointsOfInterestEntityViewController alloc];
        v17 = [(CPSPointsOfInterestEntityViewController *)v16 initWithEntity:selfCopy->_entity resourceProvider:selfCopy->_resourceProvider];
        v18 = selfCopy->_contentViewController;
        selfCopy->_contentViewController = v17;
        MEMORY[0x277D82BD8](v18);
      }
    }
  }

  v20 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v20;
}

- (id)entityTemplate
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_15(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (id)entityTemplateDelegate
{
  templateDelegate = [(CPSBaseTemplateViewController *)self templateDelegate];
  v4 = CPSSafeProtocolCast_2(&unk_285632A28, templateDelegate);
  MEMORY[0x277D82BD8](templateDelegate);

  return v4;
}

- (void)_viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSEntityViewController;
  [(CPSBaseTemplateViewController *)&v2 _viewDidLoad];
  [(CPSEntityViewController *)selfCopy setupViewControllers];
}

- (void)setupViewControllers
{
  v78[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v75[1] = a2;
  if (_UISolariumEnabled())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    view = [(CPSEntityViewController *)selfCopy view];
    [view setBackgroundColor:clearColor];
    MEMORY[0x277D82BD8](view);
    v2 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
  }

  else
  {
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    view2 = [(CPSEntityViewController *)selfCopy view];
    [view2 setBackgroundColor:tableBackgroundColor];
    MEMORY[0x277D82BD8](view2);
    v2 = MEMORY[0x277D82BD8](tableBackgroundColor).n128_u64[0];
  }

  contentViewController = [(CPSEntityViewController *)selfCopy contentViewController];
  view3 = [(CPSBaseEntityContentViewController *)contentViewController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](view3);
  contentViewController2 = [(CPSEntityViewController *)selfCopy contentViewController];
  [(CPSBaseEntityContentViewController *)contentViewController2 willMoveToParentViewController:selfCopy];
  contentViewController3 = [(CPSEntityViewController *)selfCopy contentViewController];
  [(CPSEntityViewController *)selfCopy addChildViewController:?];
  view4 = [(CPSEntityViewController *)selfCopy view];
  contentViewController4 = [(CPSEntityViewController *)selfCopy contentViewController];
  view5 = [(CPSBaseEntityContentViewController *)contentViewController4 view];
  [view4 addSubview:?];
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](contentViewController4);
  contentViewController5 = [(CPSEntityViewController *)selfCopy contentViewController];
  [(CPSBaseEntityContentViewController *)contentViewController5 didMoveToParentViewController:selfCopy];
  v75[0] = 0;
  contentViewController6 = [(CPSEntityViewController *)selfCopy contentViewController];
  shouldAppearInUnsafeArea = [(CPSBaseEntityContentViewController *)contentViewController6 shouldAppearInUnsafeArea];
  *&v3 = MEMORY[0x277D82BD8](contentViewController6).n128_u64[0];
  if (shouldAppearInUnsafeArea)
  {
    contentViewController7 = [(CPSEntityViewController *)selfCopy contentViewController];
    view6 = [(CPSBaseEntityContentViewController *)contentViewController7 view];
    topAnchor = [view6 topAnchor];
    view7 = [(CPSEntityViewController *)selfCopy view];
    topAnchor2 = [view7 topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:?];
    v78[0] = v55;
    contentViewController8 = [(CPSEntityViewController *)selfCopy contentViewController];
    view8 = [(CPSBaseEntityContentViewController *)contentViewController8 view];
    bottomAnchor = [view8 bottomAnchor];
    view9 = [(CPSEntityViewController *)selfCopy view];
    bottomAnchor2 = [view9 bottomAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:?];
    v78[1] = v49;
    contentViewController9 = [(CPSEntityViewController *)selfCopy contentViewController];
    view10 = [(CPSBaseEntityContentViewController *)contentViewController9 view];
    leftAnchor = [view10 leftAnchor];
    view11 = [(CPSEntityViewController *)selfCopy view];
    leftAnchor2 = [view11 leftAnchor];
    v43 = [leftAnchor constraintEqualToAnchor:?];
    v78[2] = v43;
    contentViewController10 = [(CPSEntityViewController *)selfCopy contentViewController];
    view12 = [(CPSBaseEntityContentViewController *)contentViewController10 view];
    rightAnchor = [view12 rightAnchor];
    view13 = [(CPSEntityViewController *)selfCopy view];
    rightAnchor2 = [view13 rightAnchor];
    v37 = [rightAnchor constraintEqualToAnchor:?];
    v78[3] = v37;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];
    v5 = v75[0];
    v75[0] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](view13);
    MEMORY[0x277D82BD8](rightAnchor);
    MEMORY[0x277D82BD8](view12);
    MEMORY[0x277D82BD8](contentViewController10);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](leftAnchor2);
    MEMORY[0x277D82BD8](view11);
    MEMORY[0x277D82BD8](leftAnchor);
    MEMORY[0x277D82BD8](view10);
    MEMORY[0x277D82BD8](contentViewController9);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](view9);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](view8);
    MEMORY[0x277D82BD8](contentViewController8);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](view7);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](view6);
    v6 = MEMORY[0x277D82BD8](contentViewController7).n128_u64[0];
  }

  else
  {
    contentViewController11 = [(CPSEntityViewController *)selfCopy contentViewController];
    view14 = [(CPSBaseEntityContentViewController *)contentViewController11 view];
    topAnchor3 = [view14 topAnchor];
    view15 = [(CPSEntityViewController *)selfCopy view];
    safeAreaLayoutGuide = [view15 safeAreaLayoutGuide];
    topAnchor4 = [safeAreaLayoutGuide topAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:?];
    v77[0] = v30;
    contentViewController12 = [(CPSEntityViewController *)selfCopy contentViewController];
    view16 = [(CPSBaseEntityContentViewController *)contentViewController12 view];
    bottomAnchor3 = [view16 bottomAnchor];
    view17 = [(CPSEntityViewController *)selfCopy view];
    safeAreaLayoutGuide2 = [view17 safeAreaLayoutGuide];
    bottomAnchor4 = [safeAreaLayoutGuide2 bottomAnchor];
    v23 = [bottomAnchor3 constraintEqualToAnchor:?];
    v77[1] = v23;
    contentViewController13 = [(CPSEntityViewController *)selfCopy contentViewController];
    view18 = [(CPSBaseEntityContentViewController *)contentViewController13 view];
    leftAnchor3 = [view18 leftAnchor];
    view19 = [(CPSEntityViewController *)selfCopy view];
    safeAreaLayoutGuide3 = [view19 safeAreaLayoutGuide];
    leftAnchor4 = [safeAreaLayoutGuide3 leftAnchor];
    v16 = [leftAnchor3 constraintEqualToAnchor:?];
    v77[2] = v16;
    contentViewController14 = [(CPSEntityViewController *)selfCopy contentViewController];
    view20 = [(CPSBaseEntityContentViewController *)contentViewController14 view];
    rightAnchor3 = [view20 rightAnchor];
    view21 = [(CPSEntityViewController *)selfCopy view];
    safeAreaLayoutGuide4 = [view21 safeAreaLayoutGuide];
    rightAnchor4 = [safeAreaLayoutGuide4 rightAnchor];
    v9 = [rightAnchor3 constraintEqualToAnchor:?];
    v77[3] = v9;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:4];
    v8 = v75[0];
    v75[0] = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](rightAnchor4);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
    MEMORY[0x277D82BD8](view21);
    MEMORY[0x277D82BD8](rightAnchor3);
    MEMORY[0x277D82BD8](view20);
    MEMORY[0x277D82BD8](contentViewController14);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](leftAnchor4);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
    MEMORY[0x277D82BD8](view19);
    MEMORY[0x277D82BD8](leftAnchor3);
    MEMORY[0x277D82BD8](view18);
    MEMORY[0x277D82BD8](contentViewController13);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
    MEMORY[0x277D82BD8](view17);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](view16);
    MEMORY[0x277D82BD8](contentViewController12);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
    MEMORY[0x277D82BD8](view15);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](view14);
    v6 = MEMORY[0x277D82BD8](contentViewController11).n128_u64[0];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:{v75[0], *&v6}];
  objc_storeStrong(v75, 0);
}

- (void)trailingBarButtonPressed:(id)pressed
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  buttonMap = [(CPSEntityViewController *)selfCopy buttonMap];
  v10 = [(NSMapTable *)buttonMap objectForKey:location[0]];
  identifier = [v10 identifier];
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v13, selfCopy, identifier);
    _os_log_debug_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEBUG, "%@: entity button selected with UUID: %@", v13, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  v6 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v6)
  {
    templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    [(CPTemplateDelegate *)templateDelegate2 handleActionForControlIdentifier:identifier];
    MEMORY[0x277D82BD8](templateDelegate2);
  }

  objc_storeStrong(&identifier, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)entityContentViewController:(id)controller didPressButton:(id)button forEntity:(id)entity
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v29 = 0;
  objc_storeStrong(&v29, button);
  v28 = 0;
  objc_storeStrong(&v28, entity);
  identifier = [v29 identifier];
  v26 = CarPlaySupportGeneralLogging();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v33, selfCopy, identifier);
    _os_log_debug_impl(&dword_242FE8000, v26, v25, "%@: entity button selected with UUID: %@", v33, 0x16u);
  }

  objc_storeStrong(&v26, 0);
  objc_opt_class();
  v23 = 0;
  isKindOfClass = 0;
  if (objc_opt_isKindOfClass())
  {
    entity = [(CPSEntityViewController *)selfCopy entity];
    v23 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](entity);
  }

  if (isKindOfClass)
  {
    v22 = MEMORY[0x277D82BE0](v29);
    entity2 = [(CPSEntityViewController *)selfCopy entity];
    v11 = MEMORY[0x277D551E0];
    templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
    bundleIdentifier = [(CPSTemplateEnvironment *)templateEnvironment bundleIdentifier];
    name = [(CPEntity *)entity2 name];
    phoneOrEmail = [v22 phoneOrEmail];
    v20 = [v11 messageComposeNewThreadDirectActionWithAppBundleId:bundleIdentifier fullName:name phoneOrEmailAddress:?];
    MEMORY[0x277D82BD8](phoneOrEmail);
    MEMORY[0x277D82BD8](name);
    MEMORY[0x277D82BD8](bundleIdentifier);
    *&v5 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
    viewControllerDelegate = [(CPSBaseTemplateViewController *)selfCopy viewControllerDelegate];
    [(CPSTemplateViewControllerDelegate *)viewControllerDelegate templateViewController:selfCopy shouldActivateSiriWithDirectActionContext:v20];
    MEMORY[0x277D82BD8](viewControllerDelegate);
    v32 = 1;
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&entity2, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    v10 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
    *&v6 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
    if (v10)
    {
      templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
      [(CPTemplateDelegate *)templateDelegate2 handleActionForControlIdentifier:identifier];
      MEMORY[0x277D82BD8](templateDelegate2);
    }

    v32 = 1;
  }

  objc_storeStrong(&identifier, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  return v32 & 1;
}

- (BOOL)entityContentViewController:(id)controller regionDidChange:(id *)change
{
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  entityTemplateDelegate = [(CPSEntityViewController *)selfCopy entityTemplateDelegate];
  v12 = [entityTemplateDelegate conformsToProtocol:&unk_285632A28];
  *&v8 = MEMORY[0x277D82BD8](entityTemplateDelegate).n128_u64[0];
  if (v12)
  {
    entityTemplateDelegate2 = [(CPSEntityViewController *)selfCopy entityTemplateDelegate];
    [entityTemplateDelegate2 handleMapRegionDidChange:{v15, v16, v17, v18}];
    MEMORY[0x277D82BD8](entityTemplateDelegate2);
  }

  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)entityContentViewController:(id)controller didSelectPointOfInterestWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  objc_storeStrong(&v10, identifier);
  entityTemplateDelegate = [(CPSEntityViewController *)selfCopy entityTemplateDelegate];
  v9 = [entityTemplateDelegate conformsToProtocol:&unk_285632A28];
  *&v4 = MEMORY[0x277D82BD8](entityTemplateDelegate).n128_u64[0];
  if (v9)
  {
    entityTemplateDelegate2 = [(CPSEntityViewController *)selfCopy entityTemplateDelegate];
    [entityTemplateDelegate2 handleDidSelectPointOfInterestWithIdentifier:v10];
    MEMORY[0x277D82BD8](entityTemplateDelegate2);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)entityContentViewController:(id)controller didPressButton:(id)button forPOI:(id)i
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v15 = 0;
  objc_storeStrong(&v15, button);
  v14 = 0;
  objc_storeStrong(&v14, i);
  identifier = [v15 identifier];
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v18, selfCopy, identifier);
    _os_log_debug_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEBUG, "%@: POI button selected with UUID: %@", v18, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  v9 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v5 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v9)
  {
    templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    [(CPTemplateDelegate *)templateDelegate2 handleActionForControlIdentifier:identifier];
    MEMORY[0x277D82BD8](templateDelegate2);
  }

  objc_storeStrong(&identifier, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)updateEntityTemplate:(id)template withProxyDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v16 = 0;
  objc_storeStrong(&v16, delegate);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __66__CPSEntityViewController_updateEntityTemplate_withProxyDelegate___block_invoke;
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

double __66__CPSEntityViewController_updateEntityTemplate_withProxyDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceProvider];
  [v2 updateEntityTemplate:*(a1 + 40) withProxyDelegate:*(a1 + 48)];
  [*(a1 + 32) setAssociatedTemplate:{*(a1 + 40), MEMORY[0x277D82BD8](v2).n128_f64[0]}];
  [*(a1 + 32) setTemplateDelegate:*(a1 + 48)];
  v5 = [*(a1 + 32) contentViewController];
  v4 = [*(a1 + 40) entity];
  [v5 updateWithEntity:?];
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

@end
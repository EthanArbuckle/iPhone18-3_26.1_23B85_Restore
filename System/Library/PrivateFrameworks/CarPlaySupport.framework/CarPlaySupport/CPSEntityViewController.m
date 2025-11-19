@interface CPSEntityViewController
- (BOOL)entityContentViewController:(id)a3 didPressButton:(id)a4 forEntity:(id)a5;
- (BOOL)entityContentViewController:(id)a3 didPressButton:(id)a4 forPOI:(id)a5;
- (BOOL)entityContentViewController:(id)a3 didSelectPointOfInterestWithIdentifier:(id)a4;
- (BOOL)entityContentViewController:(id)a3 regionDidChange:(id *)a4;
- (CPSEntityViewController)initWithEntityTemplate:(id)a3 templateDelegate:(id)a4 templateEnvironment:(id)a5;
- (id)entityTemplate;
- (id)entityTemplateDelegate;
- (void)_viewDidLoad;
- (void)setupViewControllers;
- (void)trailingBarButtonPressed:(id)a3;
- (void)updateEntityTemplate:(id)a3 withProxyDelegate:(id)a4;
@end

@implementation CPSEntityViewController

- (CPSEntityViewController)initWithEntityTemplate:(id)a3 templateDelegate:(id)a4 templateEnvironment:(id)a5
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v5 = v28;
  v28 = 0;
  v24.receiver = v5;
  v24.super_class = CPSEntityViewController;
  v23 = [(CPSBaseTemplateViewController *)&v24 initWithTemplate:location[0] templateDelegate:v26 templateEnvironment:v25];
  v28 = v23;
  objc_storeStrong(&v28, v23);
  if (v23)
  {
    v6 = [location[0] entity];
    entity = v28->_entity;
    v28->_entity = v6;
    v8 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:MEMORY[0x277D82BD8](entity).n128_f64[0]];
    buttonMap = v28->_buttonMap;
    v28->_buttonMap = v8;
    MEMORY[0x277D82BD8](buttonMap);
    v10 = [CPSEntityResourceProvider alloc];
    v11 = [(CPSEntityResourceProvider *)v10 initWithTemplateEnvironment:v25 entityTemplate:location[0] templateDelegate:v26 actionDelegate:v28];
    resourceProvider = v28->_resourceProvider;
    v28->_resourceProvider = v11;
    MEMORY[0x277D82BD8](resourceProvider);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [CPSContactEntityViewController alloc];
      v14 = [(CPSContactEntityViewController *)v13 initWithEntity:v28->_entity resourceProvider:v28->_resourceProvider];
      contentViewController = v28->_contentViewController;
      v28->_contentViewController = v14;
      MEMORY[0x277D82BD8](contentViewController);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [CPSPointsOfInterestEntityViewController alloc];
        v17 = [(CPSPointsOfInterestEntityViewController *)v16 initWithEntity:v28->_entity resourceProvider:v28->_resourceProvider];
        v18 = v28->_contentViewController;
        v28->_contentViewController = v17;
        MEMORY[0x277D82BD8](v18);
      }
    }
  }

  v20 = MEMORY[0x277D82BE0](v28);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v28, 0);
  return v20;
}

- (id)entityTemplate
{
  v3 = objc_opt_class();
  v4 = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_15(v3, v4);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)entityTemplateDelegate
{
  v3 = [(CPSBaseTemplateViewController *)self templateDelegate];
  v4 = CPSSafeProtocolCast_2(&unk_285632A28, v3);
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)_viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSEntityViewController;
  [(CPSBaseTemplateViewController *)&v2 _viewDidLoad];
  [(CPSEntityViewController *)v4 setupViewControllers];
}

- (void)setupViewControllers
{
  v78[4] = *MEMORY[0x277D85DE8];
  v76 = self;
  v75[1] = a2;
  if (_UISolariumEnabled())
  {
    v74 = [MEMORY[0x277D75348] clearColor];
    v73 = [(CPSEntityViewController *)v76 view];
    [v73 setBackgroundColor:v74];
    MEMORY[0x277D82BD8](v73);
    v2 = MEMORY[0x277D82BD8](v74).n128_u64[0];
  }

  else
  {
    v72 = [MEMORY[0x277D75348] tableBackgroundColor];
    v71 = [(CPSEntityViewController *)v76 view];
    [v71 setBackgroundColor:v72];
    MEMORY[0x277D82BD8](v71);
    v2 = MEMORY[0x277D82BD8](v72).n128_u64[0];
  }

  v62 = [(CPSEntityViewController *)v76 contentViewController];
  v61 = [(CPSBaseEntityContentViewController *)v62 view];
  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](v61);
  v63 = [(CPSEntityViewController *)v76 contentViewController];
  [(CPSBaseEntityContentViewController *)v63 willMoveToParentViewController:v76];
  v64 = [(CPSEntityViewController *)v76 contentViewController];
  [(CPSEntityViewController *)v76 addChildViewController:?];
  v67 = [(CPSEntityViewController *)v76 view];
  v66 = [(CPSEntityViewController *)v76 contentViewController];
  v65 = [(CPSBaseEntityContentViewController *)v66 view];
  [v67 addSubview:?];
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  v68 = [(CPSEntityViewController *)v76 contentViewController];
  [(CPSBaseEntityContentViewController *)v68 didMoveToParentViewController:v76];
  v75[0] = 0;
  v69 = [(CPSEntityViewController *)v76 contentViewController];
  v70 = [(CPSBaseEntityContentViewController *)v69 shouldAppearInUnsafeArea];
  *&v3 = MEMORY[0x277D82BD8](v69).n128_u64[0];
  if (v70)
  {
    v60 = [(CPSEntityViewController *)v76 contentViewController];
    v59 = [(CPSBaseEntityContentViewController *)v60 view];
    v58 = [v59 topAnchor];
    v57 = [(CPSEntityViewController *)v76 view];
    v56 = [v57 topAnchor];
    v55 = [v58 constraintEqualToAnchor:?];
    v78[0] = v55;
    v54 = [(CPSEntityViewController *)v76 contentViewController];
    v53 = [(CPSBaseEntityContentViewController *)v54 view];
    v52 = [v53 bottomAnchor];
    v51 = [(CPSEntityViewController *)v76 view];
    v50 = [v51 bottomAnchor];
    v49 = [v52 constraintEqualToAnchor:?];
    v78[1] = v49;
    v48 = [(CPSEntityViewController *)v76 contentViewController];
    v47 = [(CPSBaseEntityContentViewController *)v48 view];
    v46 = [v47 leftAnchor];
    v45 = [(CPSEntityViewController *)v76 view];
    v44 = [v45 leftAnchor];
    v43 = [v46 constraintEqualToAnchor:?];
    v78[2] = v43;
    v42 = [(CPSEntityViewController *)v76 contentViewController];
    v41 = [(CPSBaseEntityContentViewController *)v42 view];
    v40 = [v41 rightAnchor];
    v39 = [(CPSEntityViewController *)v76 view];
    v38 = [v39 rightAnchor];
    v37 = [v40 constraintEqualToAnchor:?];
    v78[3] = v37;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];
    v5 = v75[0];
    v75[0] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v59);
    v6 = MEMORY[0x277D82BD8](v60).n128_u64[0];
  }

  else
  {
    v36 = [(CPSEntityViewController *)v76 contentViewController];
    v35 = [(CPSBaseEntityContentViewController *)v36 view];
    v34 = [v35 topAnchor];
    v33 = [(CPSEntityViewController *)v76 view];
    v32 = [v33 safeAreaLayoutGuide];
    v31 = [v32 topAnchor];
    v30 = [v34 constraintEqualToAnchor:?];
    v77[0] = v30;
    v29 = [(CPSEntityViewController *)v76 contentViewController];
    v28 = [(CPSBaseEntityContentViewController *)v29 view];
    v27 = [v28 bottomAnchor];
    v26 = [(CPSEntityViewController *)v76 view];
    v25 = [v26 safeAreaLayoutGuide];
    v24 = [v25 bottomAnchor];
    v23 = [v27 constraintEqualToAnchor:?];
    v77[1] = v23;
    v22 = [(CPSEntityViewController *)v76 contentViewController];
    v21 = [(CPSBaseEntityContentViewController *)v22 view];
    v20 = [v21 leftAnchor];
    v19 = [(CPSEntityViewController *)v76 view];
    v18 = [v19 safeAreaLayoutGuide];
    v17 = [v18 leftAnchor];
    v16 = [v20 constraintEqualToAnchor:?];
    v77[2] = v16;
    v15 = [(CPSEntityViewController *)v76 contentViewController];
    v14 = [(CPSBaseEntityContentViewController *)v15 view];
    v13 = [v14 rightAnchor];
    v12 = [(CPSEntityViewController *)v76 view];
    v11 = [v12 safeAreaLayoutGuide];
    v10 = [v11 rightAnchor];
    v9 = [v13 constraintEqualToAnchor:?];
    v77[3] = v9;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:4];
    v8 = v75[0];
    v75[0] = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    v6 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:{v75[0], *&v6}];
  objc_storeStrong(v75, 0);
}

- (void)trailingBarButtonPressed:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSEntityViewController *)v12 buttonMap];
  v10 = [(NSMapTable *)v7 objectForKey:location[0]];
  v9 = [v10 identifier];
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v13, v12, v9);
    _os_log_debug_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEBUG, "%@: entity button selected with UUID: %@", v13, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(CPSBaseTemplateViewController *)v12 templateDelegate];
  v6 = [(CPTemplateDelegate *)v5 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(CPSBaseTemplateViewController *)v12 templateDelegate];
    [(CPTemplateDelegate *)v4 handleActionForControlIdentifier:v9];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)entityContentViewController:(id)a3 didPressButton:(id)a4 forEntity:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = [v29 identifier];
  v26 = CarPlaySupportGeneralLogging();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v33, v31, v27);
    _os_log_debug_impl(&dword_242FE8000, v26, v25, "%@: entity button selected with UUID: %@", v33, 0x16u);
  }

  objc_storeStrong(&v26, 0);
  objc_opt_class();
  v23 = 0;
  isKindOfClass = 0;
  if (objc_opt_isKindOfClass())
  {
    v24 = [(CPSEntityViewController *)v31 entity];
    v23 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  if (isKindOfClass)
  {
    v22 = MEMORY[0x277D82BE0](v29);
    v21 = [(CPSEntityViewController *)v31 entity];
    v11 = MEMORY[0x277D551E0];
    v15 = [(CPSBaseTemplateViewController *)v31 templateEnvironment];
    v14 = [(CPSTemplateEnvironment *)v15 bundleIdentifier];
    v13 = [(CPEntity *)v21 name];
    v12 = [v22 phoneOrEmail];
    v20 = [v11 messageComposeNewThreadDirectActionWithAppBundleId:v14 fullName:v13 phoneOrEmailAddress:?];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    *&v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    v16 = [(CPSBaseTemplateViewController *)v31 viewControllerDelegate];
    [(CPSTemplateViewControllerDelegate *)v16 templateViewController:v31 shouldActivateSiriWithDirectActionContext:v20];
    MEMORY[0x277D82BD8](v16);
    v32 = 1;
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v9 = [(CPSBaseTemplateViewController *)v31 templateDelegate];
    v10 = [(CPTemplateDelegate *)v9 conformsToProtocol:&unk_28562C040];
    *&v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    if (v10)
    {
      v8 = [(CPSBaseTemplateViewController *)v31 templateDelegate];
      [(CPTemplateDelegate *)v8 handleActionForControlIdentifier:v27];
      MEMORY[0x277D82BD8](v8);
    }

    v32 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  return v32 & 1;
}

- (BOOL)entityContentViewController:(id)a3 regionDidChange:(id *)a4
{
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [(CPSEntityViewController *)v14 entityTemplateDelegate];
  v12 = [v11 conformsToProtocol:&unk_285632A28];
  *&v8 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v10 = [(CPSEntityViewController *)v14 entityTemplateDelegate];
    [v10 handleMapRegionDidChange:{v15, v16, v17, v18}];
    MEMORY[0x277D82BD8](v10);
  }

  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)entityContentViewController:(id)a3 didSelectPointOfInterestWithIdentifier:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v8 = [(CPSEntityViewController *)v12 entityTemplateDelegate];
  v9 = [v8 conformsToProtocol:&unk_285632A28];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    v6 = [(CPSEntityViewController *)v12 entityTemplateDelegate];
    [v6 handleDidSelectPointOfInterestWithIdentifier:v10];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)entityContentViewController:(id)a3 didPressButton:(id)a4 forPOI:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = [v15 identifier];
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v18, v17, v13);
    _os_log_debug_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEBUG, "%@: POI button selected with UUID: %@", v18, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v8 = [(CPSBaseTemplateViewController *)v17 templateDelegate];
  v9 = [(CPTemplateDelegate *)v8 conformsToProtocol:&unk_28562C040];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    v7 = [(CPSBaseTemplateViewController *)v17 templateDelegate];
    [(CPTemplateDelegate *)v7 handleActionForControlIdentifier:v13];
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)updateEntityTemplate:(id)a3 withProxyDelegate:(id)a4
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
  v11 = __66__CPSEntityViewController_updateEntityTemplate_withProxyDelegate___block_invoke;
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
@interface CPSGridTemplateViewController
- (CPGridTemplate)gridTemplate;
- (CPSGridTemplateViewController)initWithGridTemplate:(id)template interfaceDelegate:(id)delegate templateEnvironment:(id)environment;
- (CPUIGridTemplateCollectionView)gridView;
- (id)_buttonForIdentifier:(id)identifier;
- (id)_prepareCPUIGridButtonsForButtons:(id)buttons;
- (void)_viewDidLoad;
- (void)gridButton:(id)button setImageSet:(id)set;
- (void)gridButton:(id)button setTitleVariants:(id)variants;
- (void)gridButton:(id)button setUnread:(BOOL)unread;
- (void)reloadTemplate:(id)template;
- (void)setControl:(id)control enabled:(BOOL)enabled;
@end

@implementation CPSGridTemplateViewController

- (CPSGridTemplateViewController)initWithGridTemplate:(id)template interfaceDelegate:(id)delegate templateEnvironment:(id)environment
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
  v13.super_class = CPSGridTemplateViewController;
  v12 = [(CPSBaseTemplateViewController *)&v13 initWithTemplate:location[0] templateDelegate:v15 templateEnvironment:v14];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    gridTemplate = [(CPSGridTemplateViewController *)selfCopy gridTemplate];
    title = [(CPGridTemplate *)gridTemplate title];
    [(CPSGridTemplateViewController *)selfCopy setTitle:?];
    MEMORY[0x277D82BD8](title);
    MEMORY[0x277D82BD8](gridTemplate);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (CPGridTemplate)gridTemplate
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_12(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (void)_viewDidLoad
{
  v39[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v37 = a2;
  v36.receiver = self;
  v36.super_class = CPSGridTemplateViewController;
  [(CPSBaseTemplateViewController *)&v36 _viewDidLoad];
  view = [(CPSGridTemplateViewController *)selfCopy view];
  if (_UISolariumEnabled())
  {
    view2 = [(CPSGridTemplateViewController *)selfCopy view];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [view2 setBackgroundColor:?];
    MEMORY[0x277D82BD8](clearColor);
    v2 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  }

  else
  {
    view3 = [(CPSGridTemplateViewController *)selfCopy view];
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    [view3 setBackgroundColor:?];
    MEMORY[0x277D82BD8](tableBackgroundColor);
    v2 = MEMORY[0x277D82BD8](view3).n128_u64[0];
  }

  v10 = [(CPSGridTemplateViewController *)selfCopy gridTemplate:*&v2];
  gridButtons = [(CPGridTemplate *)v10 gridButtons];
  v34 = [v8 _prepareCPUIGridButtonsForButtons:?];
  MEMORY[0x277D82BD8](gridButtons);
  MEMORY[0x277D82BD8](v10);
  v11 = objc_alloc(MEMORY[0x277CF9108]);
  [view frame];
  v32[1] = v3;
  v32[2] = v4;
  v32[3] = v5;
  v32[4] = v6;
  v33 = [v11 initWithFrame:v34 gridButtons:{*&v3, *&v4, *&v5, *&v6}];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v33];
  [(CPSGridTemplateViewController *)selfCopy setGridView:v33];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  topAnchor2 = [v33 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:?];
  v39[0] = v24;
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor2 = [v33 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:?];
  v39[1] = v20;
  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide3 leadingAnchor];
  leadingAnchor2 = [v33 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:?];
  v39[2] = v16;
  safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide4 trailingAnchor];
  trailingAnchor2 = [v33 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:?];
  v39[3] = v12;
  v32[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  *&v7 = MEMORY[0x277D82BD8](safeAreaLayoutGuide).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v32[0], v7}];
  objc_storeStrong(v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&view, 0);
}

- (id)_buttonForIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  gridView = [(CPSGridTemplateViewController *)selfCopy gridView];
  gridButtons = [(CPUIGridTemplateCollectionView *)gridView gridButtons];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __54__CPSGridTemplateViewController__buttonForIdentifier___block_invoke;
  v11 = &unk_278D92DB0;
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  v12[1] = &v13;
  [gridButtons enumerateObjectsUsingBlock:&v7];
  MEMORY[0x277D82BD8](gridButtons);
  MEMORY[0x277D82BD8](gridView);
  v4 = MEMORY[0x277D82BE0](v14[5]);
  objc_storeStrong(v12, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v4;
}

void __54__CPSGridTemplateViewController__buttonForIdentifier___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = [location[0] identifier];
  v7 = [v6 isEqual:a1[4]];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), location[0]);
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_prepareCPUIGridButtonsForButtons:(id)buttons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v20 = objc_opt_new();
  v10 = objc_alloc(MEMORY[0x277CF9100]);
  view = [(CPSGridTemplateViewController *)selfCopy view];
  [view frame];
  v16[3] = v3;
  v16[4] = v4;
  *&v17 = v5;
  *(&v17 + 1) = v6;
  v18 = v17;
  [MEMORY[0x277CBB088] maximumGridButtonImageSize];
  v16[1] = v7;
  v16[2] = v8;
  v19 = [v10 initWithSize:1 style:v17 imageSize:{*&v7, *&v8}];
  MEMORY[0x277D82BD8](view);
  v12 = location[0];
  v14 = MEMORY[0x277D82BE0](v19);
  v15 = MEMORY[0x277D82BE0](selfCopy);
  v16[0] = MEMORY[0x277D82BE0](v20);
  [v12 enumerateObjectsUsingBlock:?];
  v13 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v13;
}

void __67__CPSGridTemplateViewController__prepareCPUIGridButtonsForButtons___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[3] = a3;
  v12[2] = a4;
  v12[1] = a1;
  if (a3 < *MEMORY[0x277CBB028])
  {
    v7 = MEMORY[0x277CF90F8];
    v5 = location[0];
    v6 = *(a1 + 32);
    v8 = [*(a1 + 40) templateDelegate];
    v12[0] = [v7 buttonWithGridButton:v5 layout:v6 templateDelegate:?];
    *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    [v12[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v4}];
    [v12[0] setDelegate:*(a1 + 40)];
    [*(a1 + 48) addObject:v12[0]];
    objc_storeStrong(v12, 0);
  }

  objc_storeStrong(location, 0);
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
  v11 = __52__CPSGridTemplateViewController_setControl_enabled___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v15 = enabledCopy;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __52__CPSGridTemplateViewController_setControl_enabled___block_invoke(uint64_t a1)
{
  v7 = a1;
  v6 = a1;
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v5.receiver = *(a1 + 40);
  v5.super_class = CPSGridTemplateViewController;
  objc_msgSendSuper2(&v5, sel_setControl_enabled_, v1, v2 & 1);
  v4 = [*(a1 + 40) _buttonForIdentifier:*(a1 + 32)];
  [v4 setEnabled:*(a1 + 48) & 1];
  objc_storeStrong(&v4, 0);
}

- (void)reloadTemplate:(id)template
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __48__CPSGridTemplateViewController_reloadTemplate___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

double __48__CPSGridTemplateViewController_reloadTemplate___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v11, *(a1 + 32));
    _os_log_impl(&dword_242FE8000, location[0], OS_LOG_TYPE_DEFAULT, "Received update for grid template %@", v11, 0xCu);
  }

  objc_storeStrong(location, 0);
  [*(a1 + 40) _updateTemplate:*(a1 + 32)];
  v3 = [*(a1 + 32) title];
  [*(a1 + 40) setTitle:?];
  *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v4 = *(a1 + 40);
  v8 = [v4 gridTemplate];
  v7 = [v8 gridButtons];
  v6 = [v4 _prepareCPUIGridButtonsForButtons:?];
  v5 = [*(a1 + 40) gridView];
  [v5 setGridButtons:v6];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  *&result = MEMORY[0x277D82BD8](v8).n128_u64[0];
  return result;
}

- (void)gridButton:(id)button setImageSet:(id)set
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v16 = 0;
  objc_storeStrong(&v16, set);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __56__CPSGridTemplateViewController_gridButton_setImageSet___block_invoke;
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

void __56__CPSGridTemplateViewController_gridButton_setImageSet___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  [v2[0] updateImageSet:*(a1 + 48)];
  objc_storeStrong(v2, 0);
}

- (void)gridButton:(id)button setTitleVariants:(id)variants
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v16 = 0;
  objc_storeStrong(&v16, variants);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __61__CPSGridTemplateViewController_gridButton_setTitleVariants___block_invoke;
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

void __61__CPSGridTemplateViewController_gridButton_setTitleVariants___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  [v2[0] updateTitleVariants:*(a1 + 48)];
  objc_storeStrong(v2, 0);
}

- (void)gridButton:(id)button setUnread:(BOOL)unread
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  unreadCopy = unread;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __54__CPSGridTemplateViewController_gridButton_setUnread___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = unreadCopy;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __54__CPSGridTemplateViewController_gridButton_setUnread___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  [v2[0] updateUnread:*(a1 + 48) & 1];
  objc_storeStrong(v2, 0);
}

- (CPUIGridTemplateCollectionView)gridView
{
  WeakRetained = objc_loadWeakRetained(&self->_gridView);

  return WeakRetained;
}

@end
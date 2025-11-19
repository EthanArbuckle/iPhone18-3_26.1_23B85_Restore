@interface CPSGridTemplateViewController
- (CPGridTemplate)gridTemplate;
- (CPSGridTemplateViewController)initWithGridTemplate:(id)a3 interfaceDelegate:(id)a4 templateEnvironment:(id)a5;
- (CPUIGridTemplateCollectionView)gridView;
- (id)_buttonForIdentifier:(id)a3;
- (id)_prepareCPUIGridButtonsForButtons:(id)a3;
- (void)_viewDidLoad;
- (void)gridButton:(id)a3 setImageSet:(id)a4;
- (void)gridButton:(id)a3 setTitleVariants:(id)a4;
- (void)gridButton:(id)a3 setUnread:(BOOL)a4;
- (void)reloadTemplate:(id)a3;
- (void)setControl:(id)a3 enabled:(BOOL)a4;
@end

@implementation CPSGridTemplateViewController

- (CPSGridTemplateViewController)initWithGridTemplate:(id)a3 interfaceDelegate:(id)a4 templateEnvironment:(id)a5
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
  v13.super_class = CPSGridTemplateViewController;
  v12 = [(CPSBaseTemplateViewController *)&v13 initWithTemplate:location[0] templateDelegate:v15 templateEnvironment:v14];
  v17 = v12;
  objc_storeStrong(&v17, v12);
  if (v12)
  {
    v9 = [(CPSGridTemplateViewController *)v17 gridTemplate];
    v8 = [(CPGridTemplate *)v9 title];
    [(CPSGridTemplateViewController *)v17 setTitle:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  v7 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v7;
}

- (CPGridTemplate)gridTemplate
{
  v3 = objc_opt_class();
  v4 = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_12(v3, v4);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)_viewDidLoad
{
  v39[4] = *MEMORY[0x277D85DE8];
  v38 = self;
  v37 = a2;
  v36.receiver = self;
  v36.super_class = CPSGridTemplateViewController;
  [(CPSBaseTemplateViewController *)&v36 _viewDidLoad];
  v35 = [(CPSGridTemplateViewController *)v38 view];
  if (_UISolariumEnabled())
  {
    v31 = [(CPSGridTemplateViewController *)v38 view];
    v30 = [MEMORY[0x277D75348] clearColor];
    [v31 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v30);
    v2 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  }

  else
  {
    v29 = [(CPSGridTemplateViewController *)v38 view];
    v28 = [MEMORY[0x277D75348] tableBackgroundColor];
    [v29 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v28);
    v2 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  }

  v10 = [(CPSGridTemplateViewController *)v38 gridTemplate:*&v2];
  v9 = [(CPGridTemplate *)v10 gridButtons];
  v34 = [v8 _prepareCPUIGridButtonsForButtons:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v11 = objc_alloc(MEMORY[0x277CF9108]);
  [v35 frame];
  v32[1] = v3;
  v32[2] = v4;
  v32[3] = v5;
  v32[4] = v6;
  v33 = [v11 initWithFrame:v34 gridButtons:{*&v3, *&v4, *&v5, *&v6}];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v35 addSubview:v33];
  [(CPSGridTemplateViewController *)v38 setGridView:v33];
  v27 = [v35 safeAreaLayoutGuide];
  v26 = [v27 topAnchor];
  v25 = [v33 topAnchor];
  v24 = [v26 constraintEqualToAnchor:?];
  v39[0] = v24;
  v23 = [v35 safeAreaLayoutGuide];
  v22 = [v23 bottomAnchor];
  v21 = [v33 bottomAnchor];
  v20 = [v22 constraintEqualToAnchor:?];
  v39[1] = v20;
  v19 = [v35 safeAreaLayoutGuide];
  v18 = [v19 leadingAnchor];
  v17 = [v33 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:?];
  v39[2] = v16;
  v15 = [v35 safeAreaLayoutGuide];
  v14 = [v15 trailingAnchor];
  v13 = [v33 trailingAnchor];
  v12 = [v14 constraintEqualToAnchor:?];
  v39[3] = v12;
  v32[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
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
  *&v7 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v32[0], v7}];
  objc_storeStrong(v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
}

- (id)_buttonForIdentifier:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v6 = [(CPSGridTemplateViewController *)v21 gridView];
  v5 = [(CPUIGridTemplateCollectionView *)v6 gridButtons];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __54__CPSGridTemplateViewController__buttonForIdentifier___block_invoke;
  v11 = &unk_278D92DB0;
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  v12[1] = &v13;
  [v5 enumerateObjectsUsingBlock:&v7];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
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

- (id)_prepareCPUIGridButtonsForButtons:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = objc_opt_new();
  v10 = objc_alloc(MEMORY[0x277CF9100]);
  v11 = [(CPSGridTemplateViewController *)v22 view];
  [v11 frame];
  v16[3] = v3;
  v16[4] = v4;
  *&v17 = v5;
  *(&v17 + 1) = v6;
  v18 = v17;
  [MEMORY[0x277CBB088] maximumGridButtonImageSize];
  v16[1] = v7;
  v16[2] = v8;
  v19 = [v10 initWithSize:1 style:v17 imageSize:{*&v7, *&v8}];
  MEMORY[0x277D82BD8](v11);
  v12 = location[0];
  v14 = MEMORY[0x277D82BE0](v19);
  v15 = MEMORY[0x277D82BE0](v22);
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
  v11 = __52__CPSGridTemplateViewController_setControl_enabled___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v15 = v16;
  v14 = MEMORY[0x277D82BE0](v18);
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

- (void)reloadTemplate:(id)a3
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
  v9 = __48__CPSGridTemplateViewController_reloadTemplate___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](v14);
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

- (void)gridButton:(id)a3 setImageSet:(id)a4
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
  v11 = __56__CPSGridTemplateViewController_gridButton_setImageSet___block_invoke;
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

void __56__CPSGridTemplateViewController_gridButton_setImageSet___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  [v2[0] updateImageSet:*(a1 + 48)];
  objc_storeStrong(v2, 0);
}

- (void)gridButton:(id)a3 setTitleVariants:(id)a4
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
  v11 = __61__CPSGridTemplateViewController_gridButton_setTitleVariants___block_invoke;
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

void __61__CPSGridTemplateViewController_gridButton_setTitleVariants___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  [v2[0] updateTitleVariants:*(a1 + 48)];
  objc_storeStrong(v2, 0);
}

- (void)gridButton:(id)a3 setUnread:(BOOL)a4
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
  v11 = __54__CPSGridTemplateViewController_gridButton_setUnread___block_invoke;
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
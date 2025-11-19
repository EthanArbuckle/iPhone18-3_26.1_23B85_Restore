@interface CPSPanViewController
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CPSPanEventDelegate)panDelegate;
- (CPSPanViewController)initWithEnvironment:(id)a3;
- (CPSTemplateEnvironment)environment;
- (double)sideButtonTopInset;
- (id)_linearFocusItems;
- (id)_linearFocusItemsWithPresentedMapButtons:(id)a3;
- (id)preferredFocusEnvironments;
- (void)_handleNudgeLongPress:(id)a3;
- (void)_handleNudgeTapped:(id)a3;
- (void)loadView;
- (void)panView:(id)a3 panBeganWithDirection:(int64_t)a4;
- (void)panView:(id)a3 panEndedWithDirection:(int64_t)a4;
- (void)panView:(id)a3 panWithDirection:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CPSPanViewController

- (CPSPanViewController)initWithEnvironment:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = CPSPanViewController;
  v6 = [(CPSPanViewController *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeWeak(&v9->_environment, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)loadView
{
  v2 = objc_alloc(MEMORY[0x277CF9170]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(CPSPanViewController *)self setView:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)viewDidLoad
{
  v35[4] = *MEMORY[0x277D85DE8];
  v34 = self;
  v33 = a2;
  v32.receiver = self;
  v32.super_class = CPSPanViewController;
  [(CPSPanViewController *)&v32 viewDidLoad];
  v6 = [(CPSPanViewController *)v34 environment];
  v2 = [(CPSTemplateEnvironment *)v6 rightHandDrive];
  v34->_rightHandDrive = v2;
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v31 = [(CPSPanViewController *)v34 view];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [CPSPanView alloc];
  v30 = [(CPSPanView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(CPSPanView *)v30 setDelegate:v34];
  [v31 addSubview:v30];
  v7 = v31;
  v20 = [(CPSPanView *)v30 leftAnchor];
  v19 = [v31 leftAnchor];
  v18 = [v20 constraintEqualToAnchor:?];
  v35[0] = v18;
  v17 = [(CPSPanView *)v30 topAnchor];
  v16 = [v31 topAnchor];
  v15 = [v17 constraintEqualToAnchor:?];
  v35[1] = v15;
  v14 = [(CPSPanView *)v30 rightAnchor];
  v13 = [v31 rightAnchor];
  v12 = [v14 constraintEqualToAnchor:?];
  v35[2] = v12;
  v11 = [(CPSPanView *)v30 bottomAnchor];
  v10 = [v31 bottomAnchor];
  v9 = [v11 constraintEqualToAnchor:?];
  v35[3] = v9;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [v7 addConstraints:?];
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
  *&v5 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  [(CPSPanViewController *)v34 setPanView:v30, v5];
  v29 = MEMORY[0x277D82BE0](&unk_2855C5048);
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = v29;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __35__CPSPanViewController_viewDidLoad__block_invoke;
  v25 = &unk_278D920B0;
  v26 = MEMORY[0x277D82BE0](v34);
  v27 = MEMORY[0x277D82BE0](v28);
  [v21 enumerateObjectsUsingBlock:?];
  objc_storeStrong(&v34->_nudgeGestureRecognizers, v28);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
}

void __35__CPSPanViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[3] = a3;
  v14[2] = a4;
  v14[1] = a1;
  v14[0] = [[_CPSNudgeLongPressGestureRecognizer alloc] initWithTarget:*(a1 + 32) action:sel__handleNudgeLongPress_];
  v8 = v14[0];
  v17[0] = location[0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:?];
  [v8 setAllowedPressTypes:?];
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  [v14[0] setDirection:{_CPPanDirectionForPressType(objc_msgSend(location[0], "unsignedIntegerValue", v4))}];
  [v14[0] setMinimumPressDuration:0.25];
  [*(a1 + 40) addObject:v14[0]];
  v13 = [[_CPSNudgeTapGestureRecognizer alloc] initWithTarget:*(a1 + 32) action:sel__handleNudgeTapped_];
  v10 = v13;
  v16 = location[0];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [(_CPSNudgeTapGestureRecognizer *)v10 setAllowedPressTypes:?];
  *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  -[_CPSNudgeTapGestureRecognizer setDirection:](v13, "setDirection:", _CPPanDirectionForPressType([location[0] unsignedIntegerValue]));
  [(_CPSNudgeTapGestureRecognizer *)v13 requireGestureRecognizerToFail:v14[0]];
  [(_CPSNudgeTapGestureRecognizer *)v13 setDelegate:*(a1 + 32)];
  [*(a1 + 40) addObject:v13];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = CPSPanViewController;
  [(CPSPanViewController *)&v11 viewDidAppear:a3];
  v4 = [(CPSPanViewController *)v14 nudgeGestureRecognizers];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __38__CPSPanViewController_viewDidAppear___block_invoke;
  v9 = &unk_278D920D8;
  v10 = MEMORY[0x277D82BE0](v14);
  [(NSArray *)v4 enumerateObjectsUsingBlock:?];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [(CPSPanViewController *)v14 setNeedsFocusUpdate];
  objc_storeStrong(&v10, 0);
}

void __38__CPSPanViewController_viewDidAppear___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] view];
  v3 = [v4 _window];
  [v3 addGestureRecognizer:location[0]];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = CPSPanViewController;
  [(CPSPanViewController *)&v10 viewWillDisappear:a3];
  v3 = [(CPSPanViewController *)v13 nudgeGestureRecognizers];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __42__CPSPanViewController_viewWillDisappear___block_invoke;
  v8 = &unk_278D920D8;
  v9 = MEMORY[0x277D82BE0](v13);
  [(NSArray *)v3 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v9, 0);
}

void __42__CPSPanViewController_viewWillDisappear___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] view];
  v3 = [v4 _window];
  [v3 removeGestureRecognizer:location[0]];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_handleNudgeTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSPanViewController *)v5 panDelegate];
  -[CPSPanEventDelegate panWithDirection:](v3, "panWithDirection:", [location[0] direction]);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)_handleNudgeLongPress:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] state];
  if (v5 == 1)
  {
    v4 = [(CPSPanViewController *)v7 panDelegate];
    -[CPSPanEventDelegate panBeganWithDirection:](v4, "panBeganWithDirection:", [location[0] direction]);
    MEMORY[0x277D82BD8](v4);
  }

  else if (v5 == 3)
  {
    v3 = [(CPSPanViewController *)v7 panDelegate];
    -[CPSPanEventDelegate panEndedWithDirection:](v3, "panEndedWithDirection:", [location[0] direction]);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)panView:(id)a3 panBeganWithDirection:(int64_t)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSPanViewController *)v7 panDelegate];
  [(CPSPanEventDelegate *)v5 panBeganWithDirection:a4];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)panView:(id)a3 panEndedWithDirection:(int64_t)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSPanViewController *)v7 panDelegate];
  [(CPSPanEventDelegate *)v5 panEndedWithDirection:a4];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)panView:(id)a3 panWithDirection:(int64_t)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSPanViewController *)v7 panDelegate];
  [(CPSPanEventDelegate *)v5 panWithDirection:a4];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self->_rightHandDrive)
  {
    v6 = [(CPSPanViewController *)self panView];
    v5 = [(CPSPanView *)v6 panLeftButton];
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v4 = [(CPSPanViewController *)self panView];
    v3 = [(CPSPanView *)v4 panUpButton];
    v8 = v3;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  return v7;
}

- (id)_linearFocusItemsWithPresentedMapButtons:(id)a3
{
  v31[3] = *MEMORY[0x277D85DE8];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v28->_rightHandDrive)
  {
    v22 = [(CPSPanViewController *)v28 panView];
    v21 = [(CPSPanView *)v22 panLeftButton];
    v31[0] = v21;
    v20 = [(CPSPanViewController *)v28 panView];
    v19 = [(CPSPanView *)v20 panUpButton];
    v31[1] = v19;
    v18 = [(CPSPanViewController *)v28 panView];
    v17 = [(CPSPanView *)v18 panRightButton];
    v31[2] = v17;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
    [v26 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    *&v3 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    [v26 addObjectsFromArray:{location[0], v3}];
    v25 = [(CPSPanViewController *)v28 panView];
    v24 = [(CPSPanView *)v25 panDownButton];
    v30 = v24;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v26 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
  }

  else
  {
    v8 = [(CPSPanViewController *)v28 panView];
    v7 = [(CPSPanView *)v8 panRightButton];
    [v26 addObject:?];
    MEMORY[0x277D82BD8](v7);
    *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    [v26 addObjectsFromArray:{location[0], v4}];
    v15 = [(CPSPanViewController *)v28 panView];
    v14 = [(CPSPanView *)v15 panDownButton];
    v29[0] = v14;
    v13 = [(CPSPanViewController *)v28 panView];
    v12 = [(CPSPanView *)v13 panLeftButton];
    v29[1] = v12;
    v11 = [(CPSPanViewController *)v28 panView];
    v10 = [(CPSPanView *)v11 panUpButton];
    v29[2] = v10;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v26 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
  }

  v6 = MEMORY[0x277D82BE0](v26);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_linearFocusItems
{
  v22[4] = *MEMORY[0x277D85DE8];
  if (self->_rightHandDrive)
  {
    v18 = [(CPSPanViewController *)self panView];
    v17 = [(CPSPanView *)v18 panLeftButton];
    v22[0] = v17;
    v16 = [(CPSPanViewController *)self panView];
    v15 = [(CPSPanView *)v16 panUpButton];
    v22[1] = v15;
    v14 = [(CPSPanViewController *)self panView];
    v13 = [(CPSPanView *)v14 panRightButton];
    v22[2] = v13;
    v12 = [(CPSPanViewController *)self panView];
    v11 = [(CPSPanView *)v12 panDownButton];
    v22[3] = v11;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
  }

  else
  {
    v10 = [(CPSPanViewController *)self panView];
    v9 = [(CPSPanView *)v10 panRightButton];
    v21[0] = v9;
    v8 = [(CPSPanViewController *)self panView];
    v7 = [(CPSPanView *)v8 panDownButton];
    v21[1] = v7;
    v6 = [(CPSPanViewController *)self panView];
    v5 = [(CPSPanView *)v6 panLeftButton];
    v21[2] = v5;
    v4 = [(CPSPanViewController *)self panView];
    v3 = [(CPSPanView *)v4 panUpButton];
    v21[3] = v3;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  return v20;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] previouslyFocusedItem];
  v4 = [(CPSPanViewController *)v15 panView];
  v6 = [(CPSPanView *)v4 panUpButton];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if (v5 == v6)
  {
    v13 = [location[0] nextFocusedItem];
    v12 = 1;
    v11 = [(CPSPanViewController *)v15 panView];
    v10 = 1;
    v9 = [(CPSPanView *)v11 panLeftButton];
    v8 = 1;
    v7 = 0;
    if (v13 == v9)
    {
      v7 = [location[0] focusHeading] == 16;
    }
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v16 = !v7;
  objc_storeStrong(location, 0);
  return v16;
}

- (double)sideButtonTopInset
{
  v4 = [(CPSPanViewController *)self panView];
  [(CPSPanView *)v4 sideButtonTopInset];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (CPSTemplateEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (CPSPanEventDelegate)panDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_panDelegate);

  return WeakRetained;
}

@end
@interface CPSPanViewController
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CPSPanEventDelegate)panDelegate;
- (CPSPanViewController)initWithEnvironment:(id)environment;
- (CPSTemplateEnvironment)environment;
- (double)sideButtonTopInset;
- (id)_linearFocusItems;
- (id)_linearFocusItemsWithPresentedMapButtons:(id)buttons;
- (id)preferredFocusEnvironments;
- (void)_handleNudgeLongPress:(id)press;
- (void)_handleNudgeTapped:(id)tapped;
- (void)loadView;
- (void)panView:(id)view panBeganWithDirection:(int64_t)direction;
- (void)panView:(id)view panEndedWithDirection:(int64_t)direction;
- (void)panView:(id)view panWithDirection:(int64_t)direction;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPSPanViewController

- (CPSPanViewController)initWithEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = CPSPanViewController;
  v6 = [(CPSPanViewController *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeWeak(&selfCopy->_environment, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  selfCopy = self;
  v33 = a2;
  v32.receiver = self;
  v32.super_class = CPSPanViewController;
  [(CPSPanViewController *)&v32 viewDidLoad];
  environment = [(CPSPanViewController *)selfCopy environment];
  rightHandDrive = [(CPSTemplateEnvironment *)environment rightHandDrive];
  selfCopy->_rightHandDrive = rightHandDrive;
  *&v3 = MEMORY[0x277D82BD8](environment).n128_u64[0];
  view = [(CPSPanViewController *)selfCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [CPSPanView alloc];
  v30 = [(CPSPanView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(CPSPanView *)v30 setDelegate:selfCopy];
  [view addSubview:v30];
  v7 = view;
  leftAnchor = [(CPSPanView *)v30 leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v18 = [leftAnchor constraintEqualToAnchor:?];
  v35[0] = v18;
  topAnchor = [(CPSPanView *)v30 topAnchor];
  topAnchor2 = [view topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:?];
  v35[1] = v15;
  rightAnchor = [(CPSPanView *)v30 rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v12 = [rightAnchor constraintEqualToAnchor:?];
  v35[2] = v12;
  bottomAnchor = [(CPSPanView *)v30 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:?];
  v35[3] = v9;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [v7 addConstraints:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](leftAnchor2);
  *&v5 = MEMORY[0x277D82BD8](leftAnchor).n128_u64[0];
  [(CPSPanViewController *)selfCopy setPanView:v30, v5];
  v29 = MEMORY[0x277D82BE0](&unk_2855C5048);
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = v29;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __35__CPSPanViewController_viewDidLoad__block_invoke;
  v25 = &unk_278D920B0;
  v26 = MEMORY[0x277D82BE0](selfCopy);
  v27 = MEMORY[0x277D82BE0](v28);
  [v21 enumerateObjectsUsingBlock:?];
  objc_storeStrong(&selfCopy->_nudgeGestureRecognizers, v28);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&view, 0);
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v13 = a2;
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = CPSPanViewController;
  [(CPSPanViewController *)&v11 viewDidAppear:appear];
  nudgeGestureRecognizers = [(CPSPanViewController *)selfCopy nudgeGestureRecognizers];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __38__CPSPanViewController_viewDidAppear___block_invoke;
  v9 = &unk_278D920D8;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  [(NSArray *)nudgeGestureRecognizers enumerateObjectsUsingBlock:?];
  *&v3 = MEMORY[0x277D82BD8](nudgeGestureRecognizers).n128_u64[0];
  [(CPSPanViewController *)selfCopy setNeedsFocusUpdate];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v12 = a2;
  disappearCopy = disappear;
  v10.receiver = self;
  v10.super_class = CPSPanViewController;
  [(CPSPanViewController *)&v10 viewWillDisappear:disappear];
  nudgeGestureRecognizers = [(CPSPanViewController *)selfCopy nudgeGestureRecognizers];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __42__CPSPanViewController_viewWillDisappear___block_invoke;
  v8 = &unk_278D920D8;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  [(NSArray *)nudgeGestureRecognizers enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](nudgeGestureRecognizers);
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

- (void)_handleNudgeTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  panDelegate = [(CPSPanViewController *)selfCopy panDelegate];
  -[CPSPanEventDelegate panWithDirection:](panDelegate, "panWithDirection:", [location[0] direction]);
  MEMORY[0x277D82BD8](panDelegate);
  objc_storeStrong(location, 0);
}

- (void)_handleNudgeLongPress:(id)press
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, press);
  state = [location[0] state];
  if (state == 1)
  {
    panDelegate = [(CPSPanViewController *)selfCopy panDelegate];
    -[CPSPanEventDelegate panBeganWithDirection:](panDelegate, "panBeganWithDirection:", [location[0] direction]);
    MEMORY[0x277D82BD8](panDelegate);
  }

  else if (state == 3)
  {
    panDelegate2 = [(CPSPanViewController *)selfCopy panDelegate];
    -[CPSPanEventDelegate panEndedWithDirection:](panDelegate2, "panEndedWithDirection:", [location[0] direction]);
    MEMORY[0x277D82BD8](panDelegate2);
  }

  objc_storeStrong(location, 0);
}

- (void)panView:(id)view panBeganWithDirection:(int64_t)direction
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  panDelegate = [(CPSPanViewController *)selfCopy panDelegate];
  [(CPSPanEventDelegate *)panDelegate panBeganWithDirection:direction];
  MEMORY[0x277D82BD8](panDelegate);
  objc_storeStrong(location, 0);
}

- (void)panView:(id)view panEndedWithDirection:(int64_t)direction
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  panDelegate = [(CPSPanViewController *)selfCopy panDelegate];
  [(CPSPanEventDelegate *)panDelegate panEndedWithDirection:direction];
  MEMORY[0x277D82BD8](panDelegate);
  objc_storeStrong(location, 0);
}

- (void)panView:(id)view panWithDirection:(int64_t)direction
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  panDelegate = [(CPSPanViewController *)selfCopy panDelegate];
  [(CPSPanEventDelegate *)panDelegate panWithDirection:direction];
  MEMORY[0x277D82BD8](panDelegate);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self->_rightHandDrive)
  {
    panView = [(CPSPanViewController *)self panView];
    panLeftButton = [(CPSPanView *)panView panLeftButton];
    v9[0] = panLeftButton;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    MEMORY[0x277D82BD8](panLeftButton);
    MEMORY[0x277D82BD8](panView);
  }

  else
  {
    panView2 = [(CPSPanViewController *)self panView];
    panUpButton = [(CPSPanView *)panView2 panUpButton];
    v8 = panUpButton;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    MEMORY[0x277D82BD8](panUpButton);
    MEMORY[0x277D82BD8](panView2);
  }

  return v7;
}

- (id)_linearFocusItemsWithPresentedMapButtons:(id)buttons
{
  v31[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (selfCopy->_rightHandDrive)
  {
    panView = [(CPSPanViewController *)selfCopy panView];
    panLeftButton = [(CPSPanView *)panView panLeftButton];
    v31[0] = panLeftButton;
    panView2 = [(CPSPanViewController *)selfCopy panView];
    panUpButton = [(CPSPanView *)panView2 panUpButton];
    v31[1] = panUpButton;
    panView3 = [(CPSPanViewController *)selfCopy panView];
    panRightButton = [(CPSPanView *)panView3 panRightButton];
    v31[2] = panRightButton;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
    [v26 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](panRightButton);
    MEMORY[0x277D82BD8](panView3);
    MEMORY[0x277D82BD8](panUpButton);
    MEMORY[0x277D82BD8](panView2);
    MEMORY[0x277D82BD8](panLeftButton);
    *&v3 = MEMORY[0x277D82BD8](panView).n128_u64[0];
    [v26 addObjectsFromArray:{location[0], v3}];
    panView4 = [(CPSPanViewController *)selfCopy panView];
    panDownButton = [(CPSPanView *)panView4 panDownButton];
    v30 = panDownButton;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v26 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](panDownButton);
    MEMORY[0x277D82BD8](panView4);
  }

  else
  {
    panView5 = [(CPSPanViewController *)selfCopy panView];
    panRightButton2 = [(CPSPanView *)panView5 panRightButton];
    [v26 addObject:?];
    MEMORY[0x277D82BD8](panRightButton2);
    *&v4 = MEMORY[0x277D82BD8](panView5).n128_u64[0];
    [v26 addObjectsFromArray:{location[0], v4}];
    panView6 = [(CPSPanViewController *)selfCopy panView];
    panDownButton2 = [(CPSPanView *)panView6 panDownButton];
    v29[0] = panDownButton2;
    panView7 = [(CPSPanViewController *)selfCopy panView];
    panLeftButton2 = [(CPSPanView *)panView7 panLeftButton];
    v29[1] = panLeftButton2;
    panView8 = [(CPSPanViewController *)selfCopy panView];
    panUpButton2 = [(CPSPanView *)panView8 panUpButton];
    v29[2] = panUpButton2;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v26 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](panUpButton2);
    MEMORY[0x277D82BD8](panView8);
    MEMORY[0x277D82BD8](panLeftButton2);
    MEMORY[0x277D82BD8](panView7);
    MEMORY[0x277D82BD8](panDownButton2);
    MEMORY[0x277D82BD8](panView6);
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
    panView = [(CPSPanViewController *)self panView];
    panLeftButton = [(CPSPanView *)panView panLeftButton];
    v22[0] = panLeftButton;
    panView2 = [(CPSPanViewController *)self panView];
    panUpButton = [(CPSPanView *)panView2 panUpButton];
    v22[1] = panUpButton;
    panView3 = [(CPSPanViewController *)self panView];
    panRightButton = [(CPSPanView *)panView3 panRightButton];
    v22[2] = panRightButton;
    panView4 = [(CPSPanViewController *)self panView];
    panDownButton = [(CPSPanView *)panView4 panDownButton];
    v22[3] = panDownButton;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    MEMORY[0x277D82BD8](panDownButton);
    MEMORY[0x277D82BD8](panView4);
    MEMORY[0x277D82BD8](panRightButton);
    MEMORY[0x277D82BD8](panView3);
    MEMORY[0x277D82BD8](panUpButton);
    MEMORY[0x277D82BD8](panView2);
    MEMORY[0x277D82BD8](panLeftButton);
    MEMORY[0x277D82BD8](panView);
  }

  else
  {
    panView5 = [(CPSPanViewController *)self panView];
    panRightButton2 = [(CPSPanView *)panView5 panRightButton];
    v21[0] = panRightButton2;
    panView6 = [(CPSPanViewController *)self panView];
    panDownButton2 = [(CPSPanView *)panView6 panDownButton];
    v21[1] = panDownButton2;
    panView7 = [(CPSPanViewController *)self panView];
    panLeftButton2 = [(CPSPanView *)panView7 panLeftButton];
    v21[2] = panLeftButton2;
    panView8 = [(CPSPanViewController *)self panView];
    panUpButton2 = [(CPSPanView *)panView8 panUpButton];
    v21[3] = panUpButton2;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    MEMORY[0x277D82BD8](panUpButton2);
    MEMORY[0x277D82BD8](panView8);
    MEMORY[0x277D82BD8](panLeftButton2);
    MEMORY[0x277D82BD8](panView7);
    MEMORY[0x277D82BD8](panDownButton2);
    MEMORY[0x277D82BD8](panView6);
    MEMORY[0x277D82BD8](panRightButton2);
    MEMORY[0x277D82BD8](panView5);
  }

  return v20;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  previouslyFocusedItem = [location[0] previouslyFocusedItem];
  panView = [(CPSPanViewController *)selfCopy panView];
  panUpButton = [(CPSPanView *)panView panUpButton];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if (previouslyFocusedItem == panUpButton)
  {
    nextFocusedItem = [location[0] nextFocusedItem];
    v12 = 1;
    panView2 = [(CPSPanViewController *)selfCopy panView];
    v10 = 1;
    panLeftButton = [(CPSPanView *)panView2 panLeftButton];
    v8 = 1;
    v7 = 0;
    if (nextFocusedItem == panLeftButton)
    {
      v7 = [location[0] focusHeading] == 16;
    }
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](panLeftButton);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](panView2);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](nextFocusedItem);
  }

  MEMORY[0x277D82BD8](panUpButton);
  MEMORY[0x277D82BD8](panView);
  MEMORY[0x277D82BD8](previouslyFocusedItem);
  v16 = !v7;
  objc_storeStrong(location, 0);
  return v16;
}

- (double)sideButtonTopInset
{
  panView = [(CPSPanViewController *)self panView];
  [(CPSPanView *)panView sideButtonTopInset];
  v5 = v2;
  MEMORY[0x277D82BD8](panView);
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
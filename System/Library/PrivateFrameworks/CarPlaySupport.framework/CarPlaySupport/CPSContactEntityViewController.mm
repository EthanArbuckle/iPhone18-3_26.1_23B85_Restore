@interface CPSContactEntityViewController
- (CPSContactEntityViewController)initWithEntity:(id)entity resourceProvider:(id)provider;
- (id)createActionButtons:(id)buttons;
- (void)didUpdateEntity:(id)entity;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupLayoutGuides;
- (void)setupViewControllers;
- (void)tappedButton:(id)button;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation CPSContactEntityViewController

- (CPSContactEntityViewController)initWithEntity:(id)entity resourceProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v24 = 0;
  objc_storeStrong(&v24, provider);
  v4 = selfCopy;
  selfCopy = 0;
  v23.receiver = v4;
  v23.super_class = CPSContactEntityViewController;
  v22 = [(CPSBaseEntityContentViewController *)&v23 initWithEntity:location[0] resourceProvider:v24];
  selfCopy = v22;
  objc_storeStrong(&selfCopy, v22);
  if (v22)
  {
    v5 = [CPSAvatarViewController alloc];
    v6 = [(CPSAvatarViewController *)v5 initWithEntity:location[0]];
    avatarViewController = selfCopy->_avatarViewController;
    selfCopy->_avatarViewController = v6;
    MEMORY[0x277D82BD8](avatarViewController);
    v8 = [CPSNameViewController alloc];
    v9 = [(CPSNameViewController *)v8 initWithEntity:location[0]];
    nameViewController = selfCopy->_nameViewController;
    selfCopy->_nameViewController = v9;
    *&v11 = MEMORY[0x277D82BD8](nameViewController).n128_u64[0];
    v18 = MEMORY[0x277D75D28];
    v17 = selfCopy;
    v16 = selfCopy;
    actionButtons = [location[0] actionButtons];
    v19 = [(CPSContactEntityViewController *)v16 createActionButtons:?];
    v12 = [v18 contactActionHostingControllerWithDelegate:v17 contactButtons:?];
    actionsHostingController = selfCopy->_actionsHostingController;
    selfCopy->_actionsHostingController = v12;
    MEMORY[0x277D82BD8](actionsHostingController);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](actionButtons);
  }

  v15 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

- (id)createActionButtons:(id)buttons
{
  v23 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v20 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v17 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v17)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v17;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v14);
      if (([v19 isMemberOfClass:objc_opt_class()] & 1) == 0 && (objc_msgSend(v19, "isMemberOfClass:", objc_opt_class()) & 1) == 0)
      {
        [v19 isMemberOfClass:objc_opt_class()];
      }

      v7 = v20;
      v6 = [CPSContactButtonRepresentation alloc];
      identifier = [v19 identifier];
      title = [v19 title];
      image = [v19 image];
      v8 = [CPSContactButtonRepresentation initWithIdentifier:v6 title:"initWithIdentifier:title:image:type:" image:identifier type:title];
      [v7 addObject:?];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](image);
      MEMORY[0x277D82BD8](title);
      *&v3 = MEMORY[0x277D82BD8](identifier).n128_u64[0];
      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v22 count:{16, v3}];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v5 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)didUpdateEntity:(id)entity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v15.receiver = selfCopy;
  v15.super_class = CPSContactEntityViewController;
  [(CPSBaseEntityContentViewController *)&v15 didUpdateEntity:location[0]];
  avatarViewController = selfCopy->_avatarViewController;
  entity = [(CPSBaseEntityContentViewController *)selfCopy entity];
  [(CPSAvatarViewController *)avatarViewController updateWithEntity:?];
  *&v3 = MEMORY[0x277D82BD8](entity).n128_u64[0];
  nameViewController = selfCopy->_nameViewController;
  entity2 = [(CPSBaseEntityContentViewController *)selfCopy entity];
  [(CPSNameViewController *)nameViewController updateWithEntity:?];
  *&v4 = MEMORY[0x277D82BD8](entity2).n128_u64[0];
  actionsHostingController = selfCopy->_actionsHostingController;
  v10 = selfCopy;
  v9 = selfCopy;
  entity3 = [(CPSBaseEntityContentViewController *)selfCopy entity];
  actionButtons = [(CPEntity *)entity3 actionButtons];
  v12 = [(CPSContactEntityViewController *)v9 createActionButtons:?];
  [(UIViewController *)actionsHostingController updateHostingControllerWithDelegate:v10 contactButtons:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](actionButtons);
  MEMORY[0x277D82BD8](entity3);
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CPSContactEntityViewController;
  [(CPSContactEntityViewController *)&v3 viewDidLoad];
  [(CPSContactEntityViewController *)selfCopy setupViewControllers];
  view = [(CPSContactEntityViewController *)selfCopy view];
  [view setAccessibilityIdentifier:@"CPContactTemplate"];
  MEMORY[0x277D82BD8](view);
}

- (void)setupViewControllers
{
  v38[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  if (_UISolariumEnabled())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    view = [(CPSContactEntityViewController *)selfCopy view];
    [view setBackgroundColor:clearColor];
    MEMORY[0x277D82BD8](view);
    v2 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
  }

  else
  {
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    view2 = [(CPSContactEntityViewController *)selfCopy view];
    [view2 setBackgroundColor:tableBackgroundColor];
    MEMORY[0x277D82BD8](view2);
    v2 = MEMORY[0x277D82BD8](tableBackgroundColor).n128_u64[0];
  }

  avatarViewController = [(CPSContactEntityViewController *)selfCopy avatarViewController];
  v38[0] = avatarViewController;
  nameViewController = [(CPSContactEntityViewController *)selfCopy nameViewController];
  v38[1] = nameViewController;
  actionsHostingController = [(CPSContactEntityViewController *)selfCopy actionsHostingController];
  v38[2] = actionsHostingController;
  location[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  MEMORY[0x277D82BD8](actionsHostingController);
  MEMORY[0x277D82BD8](nameViewController);
  MEMORY[0x277D82BD8](avatarViewController);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v27 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
  if (v27)
  {
    v20 = *__b[2];
    v21 = 0;
    v22 = v27;
    while (1)
    {
      v19 = v21;
      if (*__b[2] != v20)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(__b[1] + 8 * v21);
      view3 = [v33 view];
      [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
      *&v3 = MEMORY[0x277D82BD8](view3).n128_u64[0];
      [v33 willMoveToParentViewController:{selfCopy, v3}];
      [(CPSContactEntityViewController *)selfCopy addChildViewController:v33];
      view4 = [(CPSContactEntityViewController *)selfCopy view];
      view5 = [v33 view];
      [view4 addSubview:?];
      MEMORY[0x277D82BD8](view5);
      *&v4 = MEMORY[0x277D82BD8](view4).n128_u64[0];
      [v33 didMoveToParentViewController:{selfCopy, v4}];
      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v22)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v8 = objc_alloc_init(MEMORY[0x277D75500]);
  [(CPSContactEntityViewController *)selfCopy setFocusGuide:?];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  actionsHostingController2 = [(CPSContactEntityViewController *)selfCopy actionsHostingController];
  view6 = [(UIViewController *)actionsHostingController2 view];
  v36 = view6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  focusGuide = [(CPSContactEntityViewController *)selfCopy focusGuide];
  [(UIFocusGuide *)focusGuide setPreferredFocusEnvironments:v10];
  MEMORY[0x277D82BD8](focusGuide);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](view6);
  *&v6 = MEMORY[0x277D82BD8](actionsHostingController2).n128_u64[0];
  focusGuide2 = [(CPSContactEntityViewController *)selfCopy focusGuide];
  [(UIFocusGuide *)focusGuide2 setEnabled:1];
  *&v7 = MEMORY[0x277D82BD8](focusGuide2).n128_u64[0];
  view7 = [(CPSContactEntityViewController *)selfCopy view];
  focusGuide3 = [(CPSContactEntityViewController *)selfCopy focusGuide];
  [view7 addLayoutGuide:?];
  MEMORY[0x277D82BD8](focusGuide3);
  MEMORY[0x277D82BD8](view7);
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSContactEntityViewController;
  [(CPSContactEntityViewController *)&v3 traitCollectionDidChange:location[0]];
  [(CPSContactEntityViewController *)selfCopy resetLayoutConstraints];
  objc_storeStrong(location, 0);
}

- (void)resetLayoutConstraints
{
  layoutConstraints = [(CPSContactEntityViewController *)self layoutConstraints];
  v7 = [(NSArray *)layoutConstraints count];
  *&v2 = MEMORY[0x277D82BD8](layoutConstraints).n128_u64[0];
  if (v7)
  {
    v3 = MEMORY[0x277CCAAD0];
    layoutConstraints2 = [(CPSContactEntityViewController *)self layoutConstraints];
    [v3 deactivateConstraints:?];
    [(CPSContactEntityViewController *)self setLayoutConstraints:0, MEMORY[0x277D82BD8](layoutConstraints2).n128_f64[0]];
    view = [(CPSContactEntityViewController *)self view];
    [view setNeedsUpdateConstraints];
    MEMORY[0x277D82BD8](view);
  }
}

- (void)updateViewConstraints
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSContactEntityViewController;
  [(CPSContactEntityViewController *)&v5 updateViewConstraints];
  layoutConstraints = [(CPSContactEntityViewController *)selfCopy layoutConstraints];
  v4 = [(NSArray *)layoutConstraints count];
  *&v2 = MEMORY[0x277D82BD8](layoutConstraints).n128_u64[0];
  if (!v4)
  {
    [(CPSContactEntityViewController *)selfCopy setupLayoutGuides];
    [(CPSContactEntityViewController *)selfCopy setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v140[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v134[1] = a2;
  v134[0] = objc_opt_new();
  centeringLayoutGuide = [(CPSContactEntityViewController *)selfCopy centeringLayoutGuide];
  topAnchor = [(UILayoutGuide *)centeringLayoutGuide topAnchor];
  view = [(CPSContactEntityViewController *)selfCopy view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v26 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
  v140[0] = v26;
  centeringLayoutGuide2 = [(CPSContactEntityViewController *)selfCopy centeringLayoutGuide];
  bottomAnchor = [(UILayoutGuide *)centeringLayoutGuide2 bottomAnchor];
  actionsHostingController = [(CPSContactEntityViewController *)selfCopy actionsHostingController];
  view2 = [(UIViewController *)actionsHostingController view];
  topAnchor3 = [(UIView *)view2 topAnchor];
  v20 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
  v140[1] = v20;
  centeringLayoutGuide3 = [(CPSContactEntityViewController *)selfCopy centeringLayoutGuide];
  leadingAnchor = [(UILayoutGuide *)centeringLayoutGuide3 leadingAnchor];
  view3 = [(CPSContactEntityViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v14 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:?];
  v140[2] = v14;
  centeringLayoutGuide4 = [(CPSContactEntityViewController *)selfCopy centeringLayoutGuide];
  trailingAnchor = [(UILayoutGuide *)centeringLayoutGuide4 trailingAnchor];
  view4 = [(CPSContactEntityViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v8 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:?];
  v140[3] = v8;
  v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide4);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide3);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](actionsHostingController);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](centeringLayoutGuide2);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](topAnchor);
  *&v2 = MEMORY[0x277D82BD8](centeringLayoutGuide).n128_u64[0];
  avatarAndDetailsLayoutGuide = [(CPSContactEntityViewController *)selfCopy avatarAndDetailsLayoutGuide];
  centerYAnchor = [(UILayoutGuide *)avatarAndDetailsLayoutGuide centerYAnchor];
  centeringLayoutGuide5 = [(CPSContactEntityViewController *)selfCopy centeringLayoutGuide];
  centerYAnchor2 = [(UILayoutGuide *)centeringLayoutGuide5 centerYAnchor];
  v57 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
  v139[0] = v57;
  avatarAndDetailsLayoutGuide2 = [(CPSContactEntityViewController *)selfCopy avatarAndDetailsLayoutGuide];
  centerXAnchor = [(UILayoutGuide *)avatarAndDetailsLayoutGuide2 centerXAnchor];
  centeringLayoutGuide6 = [(CPSContactEntityViewController *)selfCopy centeringLayoutGuide];
  centerXAnchor2 = [(UILayoutGuide *)centeringLayoutGuide6 centerXAnchor];
  v52 = [(NSLayoutXAxisAnchor *)centerXAnchor constraintEqualToAnchor:?];
  v139[1] = v52;
  avatarAndDetailsLayoutGuide3 = [(CPSContactEntityViewController *)selfCopy avatarAndDetailsLayoutGuide];
  leadingAnchor3 = [(UILayoutGuide *)avatarAndDetailsLayoutGuide3 leadingAnchor];
  centeringLayoutGuide7 = [(CPSContactEntityViewController *)selfCopy centeringLayoutGuide];
  leadingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide7 leadingAnchor];
  v47 = [(NSLayoutXAxisAnchor *)leadingAnchor3 constraintGreaterThanOrEqualToAnchor:?];
  v139[2] = v47;
  avatarAndDetailsLayoutGuide4 = [(CPSContactEntityViewController *)selfCopy avatarAndDetailsLayoutGuide];
  trailingAnchor3 = [(UILayoutGuide *)avatarAndDetailsLayoutGuide4 trailingAnchor];
  centeringLayoutGuide8 = [(CPSContactEntityViewController *)selfCopy centeringLayoutGuide];
  trailingAnchor4 = [(UILayoutGuide *)centeringLayoutGuide8 trailingAnchor];
  v42 = [(NSLayoutXAxisAnchor *)trailingAnchor3 constraintLessThanOrEqualToAnchor:?];
  v139[3] = v42;
  avatarAndDetailsLayoutGuide5 = [(CPSContactEntityViewController *)selfCopy avatarAndDetailsLayoutGuide];
  topAnchor4 = [(UILayoutGuide *)avatarAndDetailsLayoutGuide5 topAnchor];
  centeringLayoutGuide9 = [(CPSContactEntityViewController *)selfCopy centeringLayoutGuide];
  topAnchor5 = [(UILayoutGuide *)centeringLayoutGuide9 topAnchor];
  v37 = [(NSLayoutYAxisAnchor *)topAnchor4 constraintGreaterThanOrEqualToAnchor:?];
  v139[4] = v37;
  avatarAndDetailsLayoutGuide6 = [(CPSContactEntityViewController *)selfCopy avatarAndDetailsLayoutGuide];
  bottomAnchor2 = [(UILayoutGuide *)avatarAndDetailsLayoutGuide6 bottomAnchor];
  centeringLayoutGuide10 = [(CPSContactEntityViewController *)selfCopy centeringLayoutGuide];
  bottomAnchor3 = [(UILayoutGuide *)centeringLayoutGuide10 bottomAnchor];
  v32 = [(NSLayoutYAxisAnchor *)bottomAnchor2 constraintLessThanOrEqualToAnchor:?];
  v139[5] = v32;
  v132 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:6];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](centeringLayoutGuide10);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](avatarAndDetailsLayoutGuide6);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](centeringLayoutGuide9);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](avatarAndDetailsLayoutGuide5);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide8);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](avatarAndDetailsLayoutGuide4);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](centeringLayoutGuide7);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](avatarAndDetailsLayoutGuide3);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide6);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](avatarAndDetailsLayoutGuide2);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](centeringLayoutGuide5);
  MEMORY[0x277D82BD8](centerYAnchor);
  *&v3 = MEMORY[0x277D82BD8](avatarAndDetailsLayoutGuide).n128_u64[0];
  actionsHostingController2 = [(CPSContactEntityViewController *)selfCopy actionsHostingController];
  view5 = [(UIViewController *)actionsHostingController2 view];
  leadingAnchor5 = [(UIView *)view5 leadingAnchor];
  view6 = [(CPSContactEntityViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide4 leadingAnchor];
  v80 = [(NSLayoutXAxisAnchor *)leadingAnchor5 constraintEqualToAnchor:?];
  v138[0] = v80;
  actionsHostingController3 = [(CPSContactEntityViewController *)selfCopy actionsHostingController];
  view7 = [(UIViewController *)actionsHostingController3 view];
  trailingAnchor5 = [(UIView *)view7 trailingAnchor];
  view8 = [(CPSContactEntityViewController *)selfCopy view];
  safeAreaLayoutGuide5 = [view8 safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide5 trailingAnchor];
  v73 = [(NSLayoutXAxisAnchor *)trailingAnchor5 constraintEqualToAnchor:?];
  v138[1] = v73;
  actionsHostingController4 = [(CPSContactEntityViewController *)selfCopy actionsHostingController];
  view9 = [(UIViewController *)actionsHostingController4 view];
  bottomAnchor4 = [(UIView *)view9 bottomAnchor];
  view10 = [(CPSContactEntityViewController *)selfCopy view];
  safeAreaLayoutGuide6 = [view10 safeAreaLayoutGuide];
  bottomAnchor5 = [safeAreaLayoutGuide6 bottomAnchor];
  v66 = [(NSLayoutYAxisAnchor *)bottomAnchor4 constraintEqualToAnchor:-12.0 constant:?];
  v138[2] = v66;
  actionsHostingController5 = [(CPSContactEntityViewController *)selfCopy actionsHostingController];
  view11 = [(UIViewController *)actionsHostingController5 view];
  heightAnchor = [(UIView *)view11 heightAnchor];
  v62 = [(NSLayoutDimension *)heightAnchor constraintEqualToConstant:69.0];
  v138[3] = v62;
  v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:4];
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](view11);
  MEMORY[0x277D82BD8](actionsHostingController5);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide6);
  MEMORY[0x277D82BD8](view10);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](view9);
  MEMORY[0x277D82BD8](actionsHostingController4);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide5);
  MEMORY[0x277D82BD8](view8);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](view7);
  MEMORY[0x277D82BD8](actionsHostingController3);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](view5);
  *&v4 = MEMORY[0x277D82BD8](actionsHostingController2).n128_u64[0];
  nameViewController = [(CPSContactEntityViewController *)selfCopy nameViewController];
  view12 = [(CPSNameViewController *)nameViewController view];
  centerYAnchor3 = [view12 centerYAnchor];
  avatarAndDetailsLayoutGuide7 = [(CPSContactEntityViewController *)selfCopy avatarAndDetailsLayoutGuide];
  centerYAnchor4 = [(UILayoutGuide *)avatarAndDetailsLayoutGuide7 centerYAnchor];
  v100 = [centerYAnchor3 constraintEqualToAnchor:?];
  v137[0] = v100;
  nameViewController2 = [(CPSContactEntityViewController *)selfCopy nameViewController];
  view13 = [(CPSNameViewController *)nameViewController2 view];
  leadingAnchor7 = [view13 leadingAnchor];
  avatarViewController = [(CPSContactEntityViewController *)selfCopy avatarViewController];
  view14 = [(CPSAvatarViewController *)avatarViewController view];
  trailingAnchor7 = [view14 trailingAnchor];
  v93 = [leadingAnchor7 constraintEqualToAnchor:12.0 constant:?];
  v137[1] = v93;
  nameViewController3 = [(CPSContactEntityViewController *)selfCopy nameViewController];
  view15 = [(CPSNameViewController *)nameViewController3 view];
  trailingAnchor8 = [view15 trailingAnchor];
  avatarAndDetailsLayoutGuide8 = [(CPSContactEntityViewController *)selfCopy avatarAndDetailsLayoutGuide];
  trailingAnchor9 = [(UILayoutGuide *)avatarAndDetailsLayoutGuide8 trailingAnchor];
  v87 = [trailingAnchor8 constraintEqualToAnchor:?];
  v137[2] = v87;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:3];
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](trailingAnchor9);
  MEMORY[0x277D82BD8](avatarAndDetailsLayoutGuide8);
  MEMORY[0x277D82BD8](trailingAnchor8);
  MEMORY[0x277D82BD8](view15);
  MEMORY[0x277D82BD8](nameViewController3);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](trailingAnchor7);
  MEMORY[0x277D82BD8](view14);
  MEMORY[0x277D82BD8](avatarViewController);
  MEMORY[0x277D82BD8](leadingAnchor7);
  MEMORY[0x277D82BD8](view13);
  MEMORY[0x277D82BD8](nameViewController2);
  MEMORY[0x277D82BD8](v100);
  MEMORY[0x277D82BD8](centerYAnchor4);
  MEMORY[0x277D82BD8](avatarAndDetailsLayoutGuide7);
  MEMORY[0x277D82BD8](centerYAnchor3);
  MEMORY[0x277D82BD8](view12);
  *&v5 = MEMORY[0x277D82BD8](nameViewController).n128_u64[0];
  avatarViewController2 = [(CPSContactEntityViewController *)selfCopy avatarViewController];
  view16 = [(CPSAvatarViewController *)avatarViewController2 view];
  centerYAnchor5 = [view16 centerYAnchor];
  avatarAndDetailsLayoutGuide9 = [(CPSContactEntityViewController *)selfCopy avatarAndDetailsLayoutGuide];
  centerYAnchor6 = [(UILayoutGuide *)avatarAndDetailsLayoutGuide9 centerYAnchor];
  v120 = [centerYAnchor5 constraintEqualToAnchor:?];
  v136[0] = v120;
  avatarViewController3 = [(CPSContactEntityViewController *)selfCopy avatarViewController];
  view17 = [(CPSAvatarViewController *)avatarViewController3 view];
  leadingAnchor8 = [view17 leadingAnchor];
  avatarAndDetailsLayoutGuide10 = [(CPSContactEntityViewController *)selfCopy avatarAndDetailsLayoutGuide];
  leadingAnchor9 = [(UILayoutGuide *)avatarAndDetailsLayoutGuide10 leadingAnchor];
  v114 = [leadingAnchor8 constraintEqualToAnchor:?];
  v136[1] = v114;
  avatarViewController4 = [(CPSContactEntityViewController *)selfCopy avatarViewController];
  view18 = [(CPSAvatarViewController *)avatarViewController4 view];
  widthAnchor = [view18 widthAnchor];
  v110 = [widthAnchor constraintEqualToConstant:*&CPSAvatarSize];
  v136[2] = v110;
  avatarViewController5 = [(CPSContactEntityViewController *)selfCopy avatarViewController];
  view19 = [(CPSAvatarViewController *)avatarViewController5 view];
  heightAnchor2 = [view19 heightAnchor];
  v106 = [heightAnchor2 constraintEqualToConstant:*&CPSAvatarSize];
  v136[3] = v106;
  v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:4];
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](view19);
  MEMORY[0x277D82BD8](avatarViewController5);
  MEMORY[0x277D82BD8](v110);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](view18);
  MEMORY[0x277D82BD8](avatarViewController4);
  MEMORY[0x277D82BD8](v114);
  MEMORY[0x277D82BD8](leadingAnchor9);
  MEMORY[0x277D82BD8](avatarAndDetailsLayoutGuide10);
  MEMORY[0x277D82BD8](leadingAnchor8);
  MEMORY[0x277D82BD8](view17);
  MEMORY[0x277D82BD8](avatarViewController3);
  MEMORY[0x277D82BD8](v120);
  MEMORY[0x277D82BD8](centerYAnchor6);
  MEMORY[0x277D82BD8](avatarAndDetailsLayoutGuide9);
  MEMORY[0x277D82BD8](centerYAnchor5);
  MEMORY[0x277D82BD8](view16);
  *&v6 = MEMORY[0x277D82BD8](avatarViewController2).n128_u64[0];
  [v134[0] addObjectsFromArray:{v133, v6}];
  [v134[0] addObjectsFromArray:v132];
  [v134[0] addObjectsFromArray:v129];
  [v134[0] addObjectsFromArray:v130];
  [v134[0] addObjectsFromArray:v131];
  v126 = [v134[0] copy];
  [(CPSContactEntityViewController *)selfCopy setLayoutConstraints:?];
  *&v7 = MEMORY[0x277D82BD8](v126).n128_u64[0];
  v127 = MEMORY[0x277CCAAD0];
  layoutConstraints = [(CPSContactEntityViewController *)selfCopy layoutConstraints];
  [v127 activateConstraints:?];
  MEMORY[0x277D82BD8](layoutConstraints);
  objc_storeStrong(&v129, 0);
  objc_storeStrong(&v130, 0);
  objc_storeStrong(&v131, 0);
  objc_storeStrong(&v132, 0);
  objc_storeStrong(&v133, 0);
  objc_storeStrong(v134, 0);
}

- (void)setupLayoutGuides
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = objc_alloc_init(MEMORY[0x277D756D0]);
  view = [(CPSContactEntityViewController *)selfCopy view];
  [view addLayoutGuide:v7[0]];
  *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
  [(CPSContactEntityViewController *)selfCopy setCenteringLayoutGuide:v7[0], v2];
  v6 = objc_alloc_init(MEMORY[0x277D756D0]);
  view2 = [(CPSContactEntityViewController *)selfCopy view];
  [view2 addLayoutGuide:v6];
  *&v3 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  [(CPSContactEntityViewController *)selfCopy setAvatarAndDetailsLayoutGuide:v6, v3];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
}

- (void)tappedButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  entity = [(CPSBaseEntityContentViewController *)selfCopy entity];
  actionButtons = [(CPEntity *)entity actionButtons];
  *&v3 = MEMORY[0x277D82BD8](entity).n128_u64[0];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", v3, location[0]];
  v8 = [actionButtons filteredArrayUsingPredicate:?];
  firstObject = [v8 firstObject];
  MEMORY[0x277D82BD8](v8);
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (firstObject)
  {
    v5 = selfCopy;
    actionsHostingController = [(CPSContactEntityViewController *)selfCopy actionsHostingController];
    [CPSBaseEntityContentViewController viewController:v5 didPressButton:"viewController:didPressButton:"];
    MEMORY[0x277D82BD8](actionsHostingController);
  }

  objc_storeStrong(&firstObject, 0);
  objc_storeStrong(&actionButtons, 0);
  objc_storeStrong(location, 0);
}

@end
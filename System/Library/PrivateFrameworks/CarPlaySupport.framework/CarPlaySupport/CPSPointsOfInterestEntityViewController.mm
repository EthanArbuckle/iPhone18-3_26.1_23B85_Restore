@interface CPSPointsOfInterestEntityViewController
- (CPSPointsOfInterestEntityViewController)initWithEntity:(id)entity resourceProvider:(id)provider;
- (void)didUpdateEntity:(id)entity;
- (void)setupViewControllers;
- (void)viewDidLoad;
@end

@implementation CPSPointsOfInterestEntityViewController

- (CPSPointsOfInterestEntityViewController)initWithEntity:(id)entity resourceProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v13 = 0;
  objc_storeStrong(&v13, provider);
  v4 = selfCopy;
  selfCopy = 0;
  v12.receiver = v4;
  v12.super_class = CPSPointsOfInterestEntityViewController;
  v11 = [(CPSBaseEntityContentViewController *)&v12 initWithEntity:location[0] resourceProvider:v13];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    v5 = [CPSPointsOfInterestMapViewController alloc];
    v6 = [(CPSPointsOfInterestMapViewController *)v5 initWithEntity:location[0] resourceProvider:v13];
    mapViewController = selfCopy->_mapViewController;
    selfCopy->_mapViewController = v6;
    MEMORY[0x277D82BD8](mapViewController);
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)didUpdateEntity:(id)entity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v3.receiver = selfCopy;
  v3.super_class = CPSPointsOfInterestEntityViewController;
  [(CPSBaseEntityContentViewController *)&v3 didUpdateEntity:location[0]];
  [(CPSBaseEntityContentViewController *)selfCopy->_mapViewController updateWithEntity:location[0]];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointsOfInterestEntityViewController;
  [(CPSPointsOfInterestEntityViewController *)&v2 viewDidLoad];
  [(CPSPointsOfInterestEntityViewController *)selfCopy setupViewControllers];
}

- (void)setupViewControllers
{
  v49[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v45[1] = a2;
  tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
  view = [(CPSPointsOfInterestEntityViewController *)selfCopy view];
  [view setBackgroundColor:tableBackgroundColor];
  MEMORY[0x277D82BD8](view);
  mapViewController = [(CPSPointsOfInterestEntityViewController *)selfCopy mapViewController];
  v49[0] = mapViewController;
  v45[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  MEMORY[0x277D82BD8](mapViewController);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v45[0]);
  v40 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
  if (v40)
  {
    v33 = *__b[2];
    v34 = 0;
    v35 = v40;
    while (1)
    {
      v32 = v34;
      if (*__b[2] != v33)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(__b[1] + 8 * v34);
      [v44 willMoveToParentViewController:selfCopy];
      [(CPSPointsOfInterestEntityViewController *)selfCopy addChildViewController:v44];
      view2 = [v44 view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      *&v2 = MEMORY[0x277D82BD8](view2).n128_u64[0];
      view3 = [(CPSPointsOfInterestEntityViewController *)selfCopy view];
      view4 = [v44 view];
      [view3 addSubview:?];
      MEMORY[0x277D82BD8](view4);
      *&v3 = MEMORY[0x277D82BD8](view3).n128_u64[0];
      [v44 didMoveToParentViewController:{selfCopy, v3}];
      ++v34;
      if (v32 + 1 >= v35)
      {
        v34 = 0;
        v35 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
        if (!v35)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v42 = objc_opt_new();
  mapViewController2 = [(CPSPointsOfInterestEntityViewController *)selfCopy mapViewController];
  view5 = [(CPSPointsOfInterestMapViewController *)mapViewController2 view];
  topAnchor = [view5 topAnchor];
  view6 = [(CPSPointsOfInterestEntityViewController *)selfCopy view];
  topAnchor2 = [view6 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:?];
  v47[0] = v23;
  mapViewController3 = [(CPSPointsOfInterestEntityViewController *)selfCopy mapViewController];
  view7 = [(CPSPointsOfInterestMapViewController *)mapViewController3 view];
  bottomAnchor = [view7 bottomAnchor];
  view8 = [(CPSPointsOfInterestEntityViewController *)selfCopy view];
  bottomAnchor2 = [view8 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:?];
  v47[1] = v17;
  mapViewController4 = [(CPSPointsOfInterestEntityViewController *)selfCopy mapViewController];
  view9 = [(CPSPointsOfInterestMapViewController *)mapViewController4 view];
  leadingAnchor = [view9 leadingAnchor];
  view10 = [(CPSPointsOfInterestEntityViewController *)selfCopy view];
  leadingAnchor2 = [view10 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:?];
  v47[2] = v11;
  mapViewController5 = [(CPSPointsOfInterestEntityViewController *)selfCopy mapViewController];
  view11 = [(CPSPointsOfInterestMapViewController *)mapViewController5 view];
  trailingAnchor = [view11 trailingAnchor];
  view12 = [(CPSPointsOfInterestEntityViewController *)selfCopy view];
  trailingAnchor2 = [view12 trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:?];
  v47[3] = v5;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](view12);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](view11);
  MEMORY[0x277D82BD8](mapViewController5);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](view10);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](view9);
  MEMORY[0x277D82BD8](mapViewController4);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](view8);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](view7);
  MEMORY[0x277D82BD8](mapViewController3);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](view5);
  *&v4 = MEMORY[0x277D82BD8](mapViewController2).n128_u64[0];
  [v42 addObjectsFromArray:{v41, v4}];
  [MEMORY[0x277CCAAD0] activateConstraints:v42];
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(v45, 0);
}

@end
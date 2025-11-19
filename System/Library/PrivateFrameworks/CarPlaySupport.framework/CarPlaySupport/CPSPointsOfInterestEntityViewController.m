@interface CPSPointsOfInterestEntityViewController
- (CPSPointsOfInterestEntityViewController)initWithEntity:(id)a3 resourceProvider:(id)a4;
- (void)didUpdateEntity:(id)a3;
- (void)setupViewControllers;
- (void)viewDidLoad;
@end

@implementation CPSPointsOfInterestEntityViewController

- (CPSPointsOfInterestEntityViewController)initWithEntity:(id)a3 resourceProvider:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v4 = v15;
  v15 = 0;
  v12.receiver = v4;
  v12.super_class = CPSPointsOfInterestEntityViewController;
  v11 = [(CPSBaseEntityContentViewController *)&v12 initWithEntity:location[0] resourceProvider:v13];
  v15 = v11;
  objc_storeStrong(&v15, v11);
  if (v11)
  {
    v5 = [CPSPointsOfInterestMapViewController alloc];
    v6 = [(CPSPointsOfInterestMapViewController *)v5 initWithEntity:location[0] resourceProvider:v13];
    mapViewController = v15->_mapViewController;
    v15->_mapViewController = v6;
    MEMORY[0x277D82BD8](mapViewController);
  }

  v9 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v9;
}

- (void)didUpdateEntity:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSPointsOfInterestEntityViewController;
  [(CPSBaseEntityContentViewController *)&v3 didUpdateEntity:location[0]];
  [(CPSBaseEntityContentViewController *)v5->_mapViewController updateWithEntity:location[0]];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointsOfInterestEntityViewController;
  [(CPSPointsOfInterestEntityViewController *)&v2 viewDidLoad];
  [(CPSPointsOfInterestEntityViewController *)v4 setupViewControllers];
}

- (void)setupViewControllers
{
  v49[1] = *MEMORY[0x277D85DE8];
  v46 = self;
  v45[1] = a2;
  v37 = [MEMORY[0x277D75348] tableBackgroundColor];
  v36 = [(CPSPointsOfInterestEntityViewController *)v46 view];
  [v36 setBackgroundColor:v37];
  MEMORY[0x277D82BD8](v36);
  v38 = [(CPSPointsOfInterestEntityViewController *)v46 mapViewController];
  v49[0] = v38;
  v45[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  MEMORY[0x277D82BD8](v38);
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
      [v44 willMoveToParentViewController:v46];
      [(CPSPointsOfInterestEntityViewController *)v46 addChildViewController:v44];
      v29 = [v44 view];
      [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
      *&v2 = MEMORY[0x277D82BD8](v29).n128_u64[0];
      v31 = [(CPSPointsOfInterestEntityViewController *)v46 view];
      v30 = [v44 view];
      [v31 addSubview:?];
      MEMORY[0x277D82BD8](v30);
      *&v3 = MEMORY[0x277D82BD8](v31).n128_u64[0];
      [v44 didMoveToParentViewController:{v46, v3}];
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
  v28 = [(CPSPointsOfInterestEntityViewController *)v46 mapViewController];
  v27 = [(CPSPointsOfInterestMapViewController *)v28 view];
  v26 = [v27 topAnchor];
  v25 = [(CPSPointsOfInterestEntityViewController *)v46 view];
  v24 = [v25 topAnchor];
  v23 = [v26 constraintEqualToAnchor:?];
  v47[0] = v23;
  v22 = [(CPSPointsOfInterestEntityViewController *)v46 mapViewController];
  v21 = [(CPSPointsOfInterestMapViewController *)v22 view];
  v20 = [v21 bottomAnchor];
  v19 = [(CPSPointsOfInterestEntityViewController *)v46 view];
  v18 = [v19 bottomAnchor];
  v17 = [v20 constraintEqualToAnchor:?];
  v47[1] = v17;
  v16 = [(CPSPointsOfInterestEntityViewController *)v46 mapViewController];
  v15 = [(CPSPointsOfInterestMapViewController *)v16 view];
  v14 = [v15 leadingAnchor];
  v13 = [(CPSPointsOfInterestEntityViewController *)v46 view];
  v12 = [v13 leadingAnchor];
  v11 = [v14 constraintEqualToAnchor:?];
  v47[2] = v11;
  v10 = [(CPSPointsOfInterestEntityViewController *)v46 mapViewController];
  v9 = [(CPSPointsOfInterestMapViewController *)v10 view];
  v8 = [v9 trailingAnchor];
  v7 = [(CPSPointsOfInterestEntityViewController *)v46 view];
  v6 = [v7 trailingAnchor];
  v5 = [v8 constraintEqualToAnchor:?];
  v47[3] = v5;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
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
  *&v4 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  [v42 addObjectsFromArray:{v41, v4}];
  [MEMORY[0x277CCAAD0] activateConstraints:v42];
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(v45, 0);
}

@end
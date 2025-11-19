@interface CPSBaseEntityContentViewController
- (BOOL)viewController:(id)a3 didPressButton:(id)a4;
- (CPSBaseEntityContentViewController)initWithEntity:(id)a3 resourceProvider:(id)a4;
- (void)didUpdateEntity:(id)a3;
- (void)updateWithEntity:(id)a3;
@end

@implementation CPSBaseEntityContentViewController

- (CPSBaseEntityContentViewController)initWithEntity:(id)a3 resourceProvider:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = CPSBaseEntityContentViewController;
  v8 = [(CPSBaseEntityContentViewController *)&v9 initWithNibName:0 bundle:?];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_resourceProvider, v10);
    [(CPSBaseEntityContentViewController *)v12 updateWithEntity:location[0]];
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)updateWithEntity:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(CPEntity *)v4->_entity isEqual:location[0]])
  {
    objc_storeStrong(&v4->_entity, location[0]);
    [(CPSBaseEntityContentViewController *)v4 didUpdateEntity:v4->_entity];
  }

  objc_storeStrong(location, 0);
}

- (void)didUpdateEntity:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (BOOL)viewController:(id)a3 didPressButton:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v13 = [(CPSBaseEntityContentViewController *)v17 resourceProvider];
  v12 = [(CPSEntityResourceProvider *)v13 actionDelegate];
  v14 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](v12);
  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14)
  {
    v10 = [(CPSBaseEntityContentViewController *)v17 resourceProvider];
    v9 = [(CPSEntityResourceProvider *)v10 actionDelegate];
    v6 = v17;
    v7 = v15;
    v8 = [(CPSBaseEntityContentViewController *)v17 entity];
    [(CPSEntityActionDelegate *)v9 entityContentViewController:v6 didPressButton:v7 forEntity:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end
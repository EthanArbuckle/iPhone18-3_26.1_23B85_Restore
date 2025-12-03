@interface CPSBaseEntityContentViewController
- (BOOL)viewController:(id)controller didPressButton:(id)button;
- (CPSBaseEntityContentViewController)initWithEntity:(id)entity resourceProvider:(id)provider;
- (void)didUpdateEntity:(id)entity;
- (void)updateWithEntity:(id)entity;
@end

@implementation CPSBaseEntityContentViewController

- (CPSBaseEntityContentViewController)initWithEntity:(id)entity resourceProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v10 = 0;
  objc_storeStrong(&v10, provider);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = CPSBaseEntityContentViewController;
  v8 = [(CPSBaseEntityContentViewController *)&v9 initWithNibName:0 bundle:?];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_resourceProvider, v10);
    [(CPSBaseEntityContentViewController *)selfCopy updateWithEntity:location[0]];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)updateWithEntity:(id)entity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  if (![(CPEntity *)selfCopy->_entity isEqual:location[0]])
  {
    objc_storeStrong(&selfCopy->_entity, location[0]);
    [(CPSBaseEntityContentViewController *)selfCopy didUpdateEntity:selfCopy->_entity];
  }

  objc_storeStrong(location, 0);
}

- (void)didUpdateEntity:(id)entity
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  objc_storeStrong(location, 0);
}

- (BOOL)viewController:(id)controller didPressButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v15 = 0;
  objc_storeStrong(&v15, button);
  resourceProvider = [(CPSBaseEntityContentViewController *)selfCopy resourceProvider];
  actionDelegate = [(CPSEntityResourceProvider *)resourceProvider actionDelegate];
  v14 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](actionDelegate);
  *&v4 = MEMORY[0x277D82BD8](resourceProvider).n128_u64[0];
  if (v14)
  {
    resourceProvider2 = [(CPSBaseEntityContentViewController *)selfCopy resourceProvider];
    actionDelegate2 = [(CPSEntityResourceProvider *)resourceProvider2 actionDelegate];
    v6 = selfCopy;
    v7 = v15;
    entity = [(CPSBaseEntityContentViewController *)selfCopy entity];
    [(CPSEntityActionDelegate *)actionDelegate2 entityContentViewController:v6 didPressButton:v7 forEntity:?];
    MEMORY[0x277D82BD8](entity);
    MEMORY[0x277D82BD8](actionDelegate2);
    MEMORY[0x277D82BD8](resourceProvider2);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end
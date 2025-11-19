@interface CPSNavigationBar
- (CPSNavigationBar)initWithFrame:(CGRect)a3;
- (id)_linearFocusItems;
- (id)popNavigationItemAnimated:(BOOL)a3;
- (id)preferredFocusEnvironments;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation CPSNavigationBar

- (CPSNavigationBar)initWithFrame:(CGRect)a3
{
  v10 = a3;
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = CPSNavigationBar;
  v9 = [(CPSNavigationBar *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:?];
    lastFocusedItems = v9->_lastFocusedItems;
    v9->_lastFocusedItems = v3;
    MEMORY[0x277D82BD8](lastFocusedItems);
  }

  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v6;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13.receiver = v16;
  v13.super_class = CPSNavigationBar;
  [(CPSNavigationBar *)&v13 didUpdateFocusInContext:location[0] withAnimationCoordinator:v14];
  v9 = [location[0] nextFocusedView];
  v11 = 0;
  v10 = 0;
  if (v9)
  {
    v12 = [location[0] nextFocusedView];
    v11 = 1;
    v10 = [v12 isDescendantOfView:v16];
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v7 = [(CPSNavigationBar *)v16 lastFocusedItems];
    v6 = [location[0] nextFocusedItem];
    v5 = [(CPSNavigationBar *)v16 topItem];
    [(NSMapTable *)v7 setObject:v6 forKey:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)popNavigationItemAnimated:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v6.receiver = self;
  v6.super_class = CPSNavigationBar;
  v7 = [(CPSNavigationBar *)&v6 popNavigationItemAnimated:a3];
  v4 = [(CPSNavigationBar *)v10 lastFocusedItems];
  [(NSMapTable *)v4 removeObjectForKey:v7];
  MEMORY[0x277D82BD8](v4);
  v5 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);

  return v5;
}

- (id)preferredFocusEnvironments
{
  v15 = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(CPSNavigationBar *)v15 lastFocusedItems];
  v11 = [(CPSNavigationBar *)v15 topItem];
  v13 = [(NSMapTable *)v12 objectForKey:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v11);
  v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v13)
  {
    v10 = [(CPSNavigationBar *)v15 lastFocusedItems];
    v9 = [(CPSNavigationBar *)v15 topItem];
    v8 = [(NSMapTable *)v10 objectForKey:?];
    [v14[0] addObject:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  v5 = v14[0];
  v6 = [(CPSNavigationBar *)v15 _linearFocusItems];
  [v5 addObjectsFromArray:?];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = [v14[0] copy];
  objc_storeStrong(v14, 0);

  return v7;
}

- (id)_linearFocusItems
{
  v18 = self;
  v17[1] = a2;
  v17[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(CPSNavigationBar *)v18 items];
  v6 = [v7 firstObject];
  v5 = [v6 leftBarButtonItems];
  v16 = [v5 cps_map:&__block_literal_global_18];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v10 = [(CPSNavigationBar *)v18 items];
  v9 = [v10 firstObject];
  v8 = [v9 rightBarButtonItems];
  v15 = [v8 cps_map:&__block_literal_global_7];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [v17[0] addObjectsFromArray:{v16, v3}];
  v11 = v17[0];
  v13 = [v15 reverseObjectEnumerator];
  v12 = [v13 allObjects];
  [v11 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v14 = MEMORY[0x277D82BE0](v17[0]);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);

  return v14;
}

id __37__CPSNavigationBar__linearFocusItems__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] customView];
  objc_storeStrong(location, 0);

  return v3;
}

id __37__CPSNavigationBar__linearFocusItems__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] customView];
  objc_storeStrong(location, 0);

  return v3;
}

@end
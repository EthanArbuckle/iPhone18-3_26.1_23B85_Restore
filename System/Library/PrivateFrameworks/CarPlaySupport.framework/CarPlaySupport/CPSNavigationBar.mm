@interface CPSNavigationBar
- (CPSNavigationBar)initWithFrame:(CGRect)frame;
- (id)_linearFocusItems;
- (id)popNavigationItemAnimated:(BOOL)animated;
- (id)preferredFocusEnvironments;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation CPSNavigationBar

- (CPSNavigationBar)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = CPSNavigationBar;
  v9 = [(CPSNavigationBar *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, coordinator);
  v13.receiver = selfCopy;
  v13.super_class = CPSNavigationBar;
  [(CPSNavigationBar *)&v13 didUpdateFocusInContext:location[0] withAnimationCoordinator:v14];
  nextFocusedView = [location[0] nextFocusedView];
  v11 = 0;
  v10 = 0;
  if (nextFocusedView)
  {
    nextFocusedView2 = [location[0] nextFocusedView];
    v11 = 1;
    v10 = [nextFocusedView2 isDescendantOfView:selfCopy];
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](nextFocusedView2);
  }

  *&v4 = MEMORY[0x277D82BD8](nextFocusedView).n128_u64[0];
  if (v10)
  {
    lastFocusedItems = [(CPSNavigationBar *)selfCopy lastFocusedItems];
    nextFocusedItem = [location[0] nextFocusedItem];
    topItem = [(CPSNavigationBar *)selfCopy topItem];
    [(NSMapTable *)lastFocusedItems setObject:nextFocusedItem forKey:?];
    MEMORY[0x277D82BD8](topItem);
    MEMORY[0x277D82BD8](nextFocusedItem);
    MEMORY[0x277D82BD8](lastFocusedItems);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)popNavigationItemAnimated:(BOOL)animated
{
  selfCopy = self;
  v9 = a2;
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = CPSNavigationBar;
  v7 = [(CPSNavigationBar *)&v6 popNavigationItemAnimated:animated];
  lastFocusedItems = [(CPSNavigationBar *)selfCopy lastFocusedItems];
  [(NSMapTable *)lastFocusedItems removeObjectForKey:v7];
  MEMORY[0x277D82BD8](lastFocusedItems);
  v5 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);

  return v5;
}

- (id)preferredFocusEnvironments
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  lastFocusedItems = [(CPSNavigationBar *)selfCopy lastFocusedItems];
  topItem = [(CPSNavigationBar *)selfCopy topItem];
  v13 = [(NSMapTable *)lastFocusedItems objectForKey:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](topItem);
  v2 = MEMORY[0x277D82BD8](lastFocusedItems).n128_u64[0];
  if (v13)
  {
    lastFocusedItems2 = [(CPSNavigationBar *)selfCopy lastFocusedItems];
    topItem2 = [(CPSNavigationBar *)selfCopy topItem];
    v8 = [(NSMapTable *)lastFocusedItems2 objectForKey:?];
    [v14[0] addObject:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](topItem2);
    v2 = MEMORY[0x277D82BD8](lastFocusedItems2).n128_u64[0];
  }

  v5 = v14[0];
  _linearFocusItems = [(CPSNavigationBar *)selfCopy _linearFocusItems];
  [v5 addObjectsFromArray:?];
  *&v3 = MEMORY[0x277D82BD8](_linearFocusItems).n128_u64[0];
  v7 = [v14[0] copy];
  objc_storeStrong(v14, 0);

  return v7;
}

- (id)_linearFocusItems
{
  selfCopy = self;
  v17[1] = a2;
  v17[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  items = [(CPSNavigationBar *)selfCopy items];
  firstObject = [items firstObject];
  leftBarButtonItems = [firstObject leftBarButtonItems];
  v16 = [leftBarButtonItems cps_map:&__block_literal_global_18];
  MEMORY[0x277D82BD8](leftBarButtonItems);
  MEMORY[0x277D82BD8](firstObject);
  *&v2 = MEMORY[0x277D82BD8](items).n128_u64[0];
  items2 = [(CPSNavigationBar *)selfCopy items];
  firstObject2 = [items2 firstObject];
  rightBarButtonItems = [firstObject2 rightBarButtonItems];
  v15 = [rightBarButtonItems cps_map:&__block_literal_global_7];
  MEMORY[0x277D82BD8](rightBarButtonItems);
  MEMORY[0x277D82BD8](firstObject2);
  *&v3 = MEMORY[0x277D82BD8](items2).n128_u64[0];
  [v17[0] addObjectsFromArray:{v16, v3}];
  v11 = v17[0];
  reverseObjectEnumerator = [v15 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  [v11 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](allObjects);
  MEMORY[0x277D82BD8](reverseObjectEnumerator);
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
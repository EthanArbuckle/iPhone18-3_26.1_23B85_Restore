@interface MSPurchasesViewController
- (MSPurchasesViewController)initWithSection:(id)section;
- (id)_newSegmentedControlWithPageSectionGroup:(id)group;
- (id)_newViewControllerForPageSection:(id)section;
- (id)copyArchivableContext;
- (void)_reloadSegmentedControlPlacement;
- (void)_reloadViewControllersWithSection:(id)section;
- (void)_segmentedControlAction:(id)action;
- (void)_setActiveViewControllerIndex:(int64_t)index;
- (void)_showActiveViewController;
- (void)dealloc;
- (void)invalidateForMemoryPurge;
- (void)loadView;
- (void)restoreArchivableContext:(id)context;
- (void)tabBarControllerDidReselectTabBarItem:(id)item;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MSPurchasesViewController

- (MSPurchasesViewController)initWithSection:(id)section
{
  v9.receiver = self;
  v9.super_class = MSPurchasesViewController;
  v4 = [(SUViewController *)&v9 initWithSection:?];
  if (v4)
  {
    pageSectionGroup = [section pageSectionGroup];
    if ([objc_msgSend(pageSectionGroup "sections")])
    {
      v4->_activeViewControllerIndex = [pageSectionGroup defaultSectionIndex];
      v6 = [(MSPurchasesViewController *)v4 _newSegmentedControlWithPageSectionGroup:pageSectionGroup];
      v4->_segmentedControl = v6;
      [(SUSegmentedControl *)v6 addTarget:v4 action:sel__segmentedControlAction_ forControlEvents:4096];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__tabConfigurationChangedNotification_ name:*MEMORY[0x277D7FF60] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7FF60] object:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  viewControllers = self->_viewControllers;
  v5 = [(NSArray *)viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        [(MSPurchasesViewController *)self removeChildViewController:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [(NSArray *)viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(SUSegmentedControl *)self->_segmentedControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v9.receiver = self;
  v9.super_class = MSPurchasesViewController;
  [(SUViewController *)&v9 dealloc];
}

- (id)copyArchivableContext
{
  v5.receiver = self;
  v5.super_class = MSPurchasesViewController;
  copyArchivableContext = [(SUViewController *)&v5 copyArchivableContext];
  [copyArchivableContext setValue:objc_msgSend(MEMORY[0x277CCABB0] forMetadataKey:{"numberWithInteger:", self->_activeViewControllerIndex), @"index"}];
  return copyArchivableContext;
}

- (void)invalidateForMemoryPurge
{
  [(NSArray *)self->_viewControllers makeObjectsPerformSelector:a2];
  [(MSPurchasesViewController *)self _reloadSegmentedControlPlacement];
  v3.receiver = self;
  v3.super_class = MSPurchasesViewController;
  [(SUViewController *)&v3 invalidateForMemoryPurge];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = MSPurchasesViewController;
  [(SUViewController *)&v7 loadView];
  v6.receiver = self;
  v6.super_class = MSPurchasesViewController;
  view = [(MSPurchasesViewController *)&v6 view];
  containerView = self->_containerView;
  if (!containerView)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    self->_containerView = v5;
    [(UIView *)v5 setAutoresizingMask:18];
    containerView = self->_containerView;
  }

  [view bounds];
  [(UIView *)containerView setFrame:?];
  [view addSubview:self->_containerView];
  if (![(NSArray *)self->_viewControllers count])
  {
    [(MSPurchasesViewController *)self _reloadViewControllersWithSection:[(MSPurchasesViewController *)self section]];
  }

  [(MSPurchasesViewController *)self _reloadSegmentedControlPlacement];
  [(MSPurchasesViewController *)self _showActiveViewController];
}

- (void)restoreArchivableContext:(id)context
{
  v5 = [objc_msgSend(context valueForMetadataKey:{@"index", "integerValue"}];
  v6 = [(NSArray *)self->_viewControllers count];
  if (v5 >= v6 - 1)
  {
    v5 = v6 - 1;
  }

  [(MSPurchasesViewController *)self _setActiveViewControllerIndex:v5];
  [(SUSegmentedControl *)self->_segmentedControl setSelectedItemIndex:v5];
  v7.receiver = self;
  v7.super_class = MSPurchasesViewController;
  [(SUViewController *)&v7 restoreArchivableContext:context];
}

- (void)tabBarControllerDidReselectTabBarItem:(id)item
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewControllers = self->_viewControllers;
  v5 = [(NSArray *)viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v9 + 1) + 8 * i) tabBarControllerDidReselectTabBarItem:item];
      }

      v6 = [(NSArray *)viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(MSPurchasesViewController *)self _reloadSegmentedControlPlacement];
  v5.receiver = self;
  v5.super_class = MSPurchasesViewController;
  [(SUViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)_segmentedControlAction:(id)action
{
  selectedItemIndex = [(SUSegmentedControl *)self->_segmentedControl selectedItemIndex];

  [(MSPurchasesViewController *)self _setActiveViewControllerIndex:selectedItemIndex];
}

- (id)_newSegmentedControlWithPageSectionGroup:(id)group
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D7FE80]);
  sections = [group sections];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [sections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(sections);
        }

        [v7 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * v11++), "segmentedControlItem")}];
      }

      while (v9 != v11);
      v9 = [sections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [v5 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  [v5 setItems:v7];
  [v5 setSelectedItemIndex:self->_activeViewControllerIndex];

  return v5;
}

- (id)_newViewControllerForPageSection:(id)section
{
  viewControllerFactory = [(SUViewController *)self viewControllerFactory];
  if ([section structuredPageType] == 9)
  {
    newDownloadsViewController = [viewControllerFactory newDownloadsViewController];
  }

  else
  {
    newDownloadsViewController = [viewControllerFactory newStorePageViewControllerWithSection:0];
    [newDownloadsViewController setURLRequestProperties:{objc_msgSend(section, "URLRequestProperties")}];
  }

  [newDownloadsViewController setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  return newDownloadsViewController;
}

- (void)_reloadSegmentedControlPlacement
{
  if (self->_segmentedControl && [(MSPurchasesViewController *)self isViewLoaded])
  {
    view = [(MSPurchasesViewController *)self view];
    if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1 || !-[MSPurchasesViewController isInMoreList](self, "isInMoreList"))
    {
      if ([(SUSegmentedControl *)self->_segmentedControl superview]== view)
      {
        [(SUSegmentedControl *)self->_segmentedControl removeFromSuperview];
      }

      [(SUSegmentedControl *)self->_segmentedControl setAutoresizingMask:0];
      [(SUNavigationItem *)[(SUViewController *)self navigationItem] setTitleView:self->_segmentedControl];
    }

    else
    {
      [(SUNavigationItem *)[(SUViewController *)self navigationItem] setTitleView:0];
      [(SUSegmentedControl *)self->_segmentedControl setAutoresizingMask:2];
      [(SUSegmentedControl *)self->_segmentedControl setSegmentedControlStyle:7];
      [view addSubview:self->_segmentedControl];
    }

    [(SUSegmentedControl *)self->_segmentedControl sizeToFitUserInterfaceIdiom];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if ([(SUSegmentedControl *)self->_segmentedControl superview]== view)
    {
      [(SUSegmentedControl *)self->_segmentedControl frame];
      v14 = v13;
      v15 = *MEMORY[0x277CBF348];
      v16 = *(MEMORY[0x277CBF348] + 8);
      [(SUSegmentedControl *)self->_segmentedControl setFrame:*MEMORY[0x277CBF348], v16, v9];
      p_containerView = &self->_containerView;
      [(UIView *)*p_containerView frame];
      v18 = v17;
      v22.origin.x = v15;
      v22.origin.y = v16;
      v22.size.width = v9;
      v22.size.height = v14;
      MaxY = CGRectGetMaxY(v22);
      v23.origin.x = v5;
      v23.origin.y = v7;
      v23.size.width = v9;
      v23.size.height = v11;
      v11 = CGRectGetHeight(v23) - MaxY;
      v5 = v18;
      v7 = MaxY;
    }

    else
    {
      p_containerView = &self->_containerView;
    }

    v20 = *p_containerView;

    [(UIView *)v20 setFrame:v5, v7, v9, v11];
  }
}

- (void)_reloadViewControllersWithSection:(id)section
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [objc_msgSend(section "pageSectionGroup")];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MSPurchasesViewController *)self _newViewControllerForPageSection:*(*(&v24 + 1) + 8 * v10)];
        if (v11)
        {
          v12 = v11;
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {
    v13 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
    if (v13)
    {
      v14 = v13;
      [v13 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
      [v5 addObject:v14];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v5);
        }

        v19 = *(*(&v20 + 1) + 8 * v18);
        [v19 _setExistingNavigationItem:{-[SUViewController navigationItem](self, "navigationItem")}];
        [v19 _setExistingTabBarItem:{-[SUViewController tabBarItem](self, "tabBarItem")}];
        ++v18;
      }

      while (v16 != v18);
      v16 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  self->_viewControllers = [v5 copy];
}

- (void)_setActiveViewControllerIndex:(int64_t)index
{
  if (self->_activeViewControllerIndex != index)
  {
    if ([(MSPurchasesViewController *)self isViewLoaded])
    {
      v5 = [(NSArray *)self->_viewControllers objectAtIndex:self->_activeViewControllerIndex];
      [v5 storePageCleanupBeforeTearDown];
      [(MSPurchasesViewController *)self removeChildViewController:v5];
      [v5 viewWillDisappear:0];
      [objc_msgSend(v5 "view")];
      [v5 viewDidDisappear:0];
      self->_activeViewControllerIndex = index;

      [(MSPurchasesViewController *)self _showActiveViewController];
    }

    else
    {
      self->_activeViewControllerIndex = index;
    }
  }
}

- (void)_showActiveViewController
{
  v3 = [(NSArray *)self->_viewControllers objectAtIndex:self->_activeViewControllerIndex];
  [(MSPurchasesViewController *)self addChildViewController:v3];
  [v3 viewWillAppear:0];
  view = [v3 view];
  [(UIView *)self->_containerView bounds];
  [view setFrame:?];
  [(UIView *)self->_containerView addSubview:view];

  [v3 viewDidAppear:1];
}

@end
@interface LibraryController
- (LibraryController)initWithConfiguration:(id)configuration;
- (NSString)currentCollection;
- (void)_reportSelectedItemForAnalytics:(id)analytics;
- (void)_updateSidebarButton;
- (void)didSwitchProfile;
- (void)libraryViewController:(id)controller didSelectItem:(id)item;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)reloadBookmarks;
- (void)reloadExpansionStateForTabGroup:(id)group;
- (void)setCurrentCollection:(id)collection;
- (void)setSidebarViewController:(id)controller;
- (void)toggleEditBookmarks;
@end

@implementation LibraryController

- (LibraryController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = LibraryController;
  v6 = [(LibraryController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = v7;
  }

  return v7;
}

- (void)reloadExpansionStateForTabGroup:(id)group
{
  v34 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  sectionControllers = [(LibraryViewController *)self->_sidebarViewController sectionControllers];
  v6 = [sectionControllers countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    selfCopy = self;
    v23 = sectionControllers;
    v19 = *v29;
    do
    {
      v9 = 0;
      v20 = v7;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(sectionControllers);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = v10;
          itemControllers = [v10 itemControllers];
          v12 = [itemControllers countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            while (2)
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(itemControllers);
                }

                v16 = *(*(&v24 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  tabGroup = [v16 tabGroup];
                  v18 = [groupCopy isEqual:tabGroup];

                  if (v18)
                  {
                    [(LibraryViewController *)selfCopy->_sidebarViewController reloadExpansionStateForItem:v16 inSection:v22];

                    sectionControllers = v23;
                    goto LABEL_21;
                  }
                }
              }

              v13 = [itemControllers countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          sectionControllers = v23;
          v8 = v19;
          v7 = v20;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [sectionControllers countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

LABEL_21:
}

- (void)_updateSidebarButton
{
  leadingSidebarButtonItem = [(SidebarUIProxy *)self->_sidebarUIProxy leadingSidebarButtonItem];
  navigationItem = [(LibraryViewController *)self->_sidebarViewController navigationItem];
  [navigationItem setLeftBarButtonItem:leadingSidebarButtonItem];

  array = [MEMORY[0x277CBEB18] array];
  trailingSidebarButtonItem = [(SidebarUIProxy *)self->_sidebarUIProxy trailingSidebarButtonItem];
  if (trailingSidebarButtonItem)
  {
    [array addObject:trailingSidebarButtonItem];
    v6 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    [array addObject:v6];
  }

  editButtonItem = [(LibraryViewController *)self->_sidebarViewController editButtonItem];
  [editButtonItem setAccessibilityIdentifier:@"TabsEditButton"];
  [array safari_addObjectUnlessNil:editButtonItem];

  navigationItem2 = [(LibraryViewController *)self->_sidebarViewController navigationItem];
  [navigationItem2 setRightBarButtonItems:array];

  navigationController = [(LibraryViewController *)self->_sidebarViewController navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController != self->_sidebarViewController)
  {
    navigationItem3 = [(LibraryViewController *)topViewController navigationItem];
    [navigationItem3 setRightBarButtonItem:leadingSidebarButtonItem];
  }
}

- (void)setSidebarViewController:(id)controller
{
  v30[5] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  sidebarViewController = self->_sidebarViewController;
  if (sidebarViewController != controllerCopy)
  {
    navigationController = [(LibraryViewController *)sidebarViewController navigationController];
    [navigationController setDelegate:0];

    [(LibraryViewController *)self->_sidebarViewController setDelegate:0];
    objc_storeStrong(&self->_sidebarViewController, controller);
    configuration = [(LibraryController *)self configuration];
    [(LibraryViewController *)self->_sidebarViewController setConfiguration:configuration];

    [(LibraryViewController *)self->_sidebarViewController setDelegate:self];
    navigationController2 = [(LibraryViewController *)self->_sidebarViewController navigationController];
    [navigationController2 setDelegate:self];

    navigationController3 = [(LibraryViewController *)self->_sidebarViewController navigationController];
    navigationBar = [navigationController3 navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    v12 = [[MainLibrarySectionController alloc] initWithConfiguration:self->_configuration];
    objc_storeWeak(&self->_mainLibrarySectionController, v12);
    v13 = [[TabGroupLibrarySectionController alloc] initWithConfiguration:self->_configuration forNamedGroups:0];
    v30[0] = v13;
    v14 = [[TabGroupLibrarySectionController alloc] initWithConfiguration:self->_configuration forNamedGroups:1];
    v30[1] = v14;
    v30[2] = v12;
    v15 = [[SharedWithYouSectionController alloc] initWithConfiguration:self->_configuration];
    v30[3] = v15;
    v16 = [[ProfilesSectionController alloc] initWithConfiguration:self->_configuration];
    v30[4] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
    [(LibraryViewController *)self->_sidebarViewController setSectionControllers:v17];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    itemsByCollection = self->_itemsByCollection;
    self->_itemsByCollection = dictionary;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    sectionControllers = [(LibraryViewController *)self->_sidebarViewController sectionControllers];
    v21 = [sectionControllers countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v26;
      do
      {
        v24 = 0;
        do
        {
          if (*v26 != v23)
          {
            objc_enumerationMutation(sectionControllers);
          }

          [*(*(&v25 + 1) + 8 * v24++) registerItemsWithRegistration:self];
        }

        while (v22 != v24);
        v22 = [sectionControllers countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v22);
    }

    [(LibraryController *)self _updateSidebarButton];
  }
}

- (NSString)currentCollection
{
  presentedItemController = [(LibraryViewController *)self->_sidebarViewController presentedItemController];
  v4 = presentedItemController;
  if (presentedItemController)
  {
    selectedItemController = presentedItemController;
  }

  else
  {
    selectedItemController = [(LibraryViewController *)self->_sidebarViewController selectedItemController];
  }

  v6 = selectedItemController;

  WeakRetained = objc_loadWeakRetained(&self->_viewControllerForLastSelectedItemController);
  v8 = objc_loadWeakRetained(&self->_lastSelectedItemController);
  v9 = v8;
  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10 && WeakRetained != 0)
  {
    navigationController = [(LibraryViewController *)self->_sidebarViewController navigationController];
    viewControllers = [navigationController viewControllers];
    v14 = [viewControllers containsObject:WeakRetained];

    if (v14)
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  itemsByCollection = self->_itemsByCollection;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __38__LibraryController_currentCollection__block_invoke;
  v20[3] = &unk_2781D8CB8;
  v21 = v6;
  v16 = v6;
  v17 = [(NSMutableDictionary *)itemsByCollection keysOfEntriesPassingTest:v20];
  anyObject = [v17 anyObject];

  return anyObject;
}

- (void)setCurrentCollection:(id)collection
{
  collectionCopy = collection;
  currentCollection = [(LibraryController *)self currentCollection];
  v5 = [currentCollection isEqualToString:collectionCopy];

  if ((v5 & 1) == 0)
  {
    v6 = [(NSMutableDictionary *)self->_itemsByCollection objectForKeyedSubscript:collectionCopy];
    [(LibraryViewController *)self->_sidebarViewController setSelectedItemController:v6];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  viewControllers = [controllerCopy viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject == viewControllerCopy)
  {
    [controllerCopy setToolbarHidden:1 animated:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_mainLibrarySectionController);
    [WeakRetained updateToolbarIfNeeded];

    [controllerCopy setToolbarHidden:0 animated:1];
  }

  [(LibraryController *)self _updateSidebarButton];
  sidebarViewController = self->_sidebarViewController;
  if (sidebarViewController == viewControllerCopy)
  {
    [(LibraryViewController *)sidebarViewController setPresentedItemController:0];
  }
}

- (void)didSwitchProfile
{
  [(LibraryController *)self setNeedsReloadForProfileSwitcher];
  navigationController = [(LibraryViewController *)self->_sidebarViewController navigationController];
  topViewController = [navigationController topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [navigationController popToRootViewControllerAnimated:0];
  }
}

- (void)toggleEditBookmarks
{
  WeakRetained = objc_loadWeakRetained(&self->_mainLibrarySectionController);
  itemControllers = [WeakRetained itemControllers];
  v4 = [itemControllers safari_firstObjectPassingTest:&__block_literal_global_37];

  [v4 toggleEditBookmarks];
}

uint64_t __40__LibraryController_toggleEditBookmarks__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)reloadBookmarks
{
  WeakRetained = objc_loadWeakRetained(&self->_mainLibrarySectionController);
  itemControllers = [WeakRetained itemControllers];
  v4 = [itemControllers safari_firstObjectPassingTest:&__block_literal_global_15];

  [v4 reloadBookmarksControllers];
}

uint64_t __36__LibraryController_reloadBookmarks__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)libraryViewController:(id)controller didSelectItem:(id)item
{
  itemCopy = item;
  isSelectingItem = self->_isSelectingItem;
  self->_isSelectingItem = 1;
  obj = itemCopy;
  viewController = [itemCopy viewController];
  if (viewController)
  {
    objc_storeWeak(&self->_lastSelectedItemController, obj);
    objc_storeWeak(&self->_viewControllerForLastSelectedItemController, viewController);
    navigationController = [(LibraryViewController *)self->_sidebarViewController navigationController];
    topViewController = [navigationController topViewController];

    if (topViewController == viewController)
    {
      v13 = [navigationController popToRootViewControllerAnimated:1];
    }

    else
    {
      viewControllers = [navigationController viewControllers];
      v11 = [viewControllers containsObject:viewController];

      if (v11)
      {
        v12 = [navigationController popToViewController:viewController animated:0];
      }

      else
      {
        viewControllers2 = [navigationController viewControllers];
        v15 = [viewControllers2 count] == 1;

        v16 = [navigationController popToRootViewControllerAnimated:0];
        [navigationController pushViewController:viewController animated:v15];
      }
    }

    [(LibraryController *)self _reportSelectedItemForAnalytics:obj];
  }

  else
  {
    [obj didSelectItem];
  }

  self->_isSelectingItem = isSelectingItem;
}

- (void)_reportSelectedItemForAnalytics:(id)analytics
{
  v3 = MEMORY[0x277D499B8];
  analyticsCopy = analytics;
  sharedLogger = [v3 sharedLogger];
  sidebarSelectionAnalyticsAction = [analyticsCopy sidebarSelectionAnalyticsAction];

  [sharedLogger didUseSidebarAction:sidebarSelectionAnalyticsAction];
}

@end
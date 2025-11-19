@interface LibraryController
- (LibraryController)initWithConfiguration:(id)a3;
- (NSString)currentCollection;
- (void)_reportSelectedItemForAnalytics:(id)a3;
- (void)_updateSidebarButton;
- (void)didSwitchProfile;
- (void)libraryViewController:(id)a3 didSelectItem:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)reloadBookmarks;
- (void)reloadExpansionStateForTabGroup:(id)a3;
- (void)setCurrentCollection:(id)a3;
- (void)setSidebarViewController:(id)a3;
- (void)toggleEditBookmarks;
@end

@implementation LibraryController

- (LibraryController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LibraryController;
  v6 = [(LibraryController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = v7;
  }

  return v7;
}

- (void)reloadExpansionStateForTabGroup:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(LibraryViewController *)self->_sidebarViewController sectionControllers];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v21 = self;
    v23 = v5;
    v19 = *v29;
    do
    {
      v9 = 0;
      v20 = v7;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
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
          v11 = [v10 itemControllers];
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v24 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = [v16 tabGroup];
                  v18 = [v4 isEqual:v17];

                  if (v18)
                  {
                    [(LibraryViewController *)v21->_sidebarViewController reloadExpansionStateForItem:v16 inSection:v22];

                    v5 = v23;
                    goto LABEL_21;
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v5 = v23;
          v8 = v19;
          v7 = v20;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

LABEL_21:
}

- (void)_updateSidebarButton
{
  v12 = [(SidebarUIProxy *)self->_sidebarUIProxy leadingSidebarButtonItem];
  v3 = [(LibraryViewController *)self->_sidebarViewController navigationItem];
  [v3 setLeftBarButtonItem:v12];

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(SidebarUIProxy *)self->_sidebarUIProxy trailingSidebarButtonItem];
  if (v5)
  {
    [v4 addObject:v5];
    v6 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    [v4 addObject:v6];
  }

  v7 = [(LibraryViewController *)self->_sidebarViewController editButtonItem];
  [v7 setAccessibilityIdentifier:@"TabsEditButton"];
  [v4 safari_addObjectUnlessNil:v7];

  v8 = [(LibraryViewController *)self->_sidebarViewController navigationItem];
  [v8 setRightBarButtonItems:v4];

  v9 = [(LibraryViewController *)self->_sidebarViewController navigationController];
  v10 = [v9 topViewController];

  if (v10 != self->_sidebarViewController)
  {
    v11 = [(LibraryViewController *)v10 navigationItem];
    [v11 setRightBarButtonItem:v12];
  }
}

- (void)setSidebarViewController:(id)a3
{
  v30[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  sidebarViewController = self->_sidebarViewController;
  if (sidebarViewController != v5)
  {
    v7 = [(LibraryViewController *)sidebarViewController navigationController];
    [v7 setDelegate:0];

    [(LibraryViewController *)self->_sidebarViewController setDelegate:0];
    objc_storeStrong(&self->_sidebarViewController, a3);
    v8 = [(LibraryController *)self configuration];
    [(LibraryViewController *)self->_sidebarViewController setConfiguration:v8];

    [(LibraryViewController *)self->_sidebarViewController setDelegate:self];
    v9 = [(LibraryViewController *)self->_sidebarViewController navigationController];
    [v9 setDelegate:self];

    v10 = [(LibraryViewController *)self->_sidebarViewController navigationController];
    v11 = [v10 navigationBar];
    [v11 setPrefersLargeTitles:1];

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

    v18 = [MEMORY[0x277CBEB38] dictionary];
    itemsByCollection = self->_itemsByCollection;
    self->_itemsByCollection = v18;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = [(LibraryViewController *)self->_sidebarViewController sectionControllers];
    v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v20);
          }

          [*(*(&v25 + 1) + 8 * v24++) registerItemsWithRegistration:self];
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v22);
    }

    [(LibraryController *)self _updateSidebarButton];
  }
}

- (NSString)currentCollection
{
  v3 = [(LibraryViewController *)self->_sidebarViewController presentedItemController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(LibraryViewController *)self->_sidebarViewController selectedItemController];
  }

  v6 = v5;

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
    v12 = [(LibraryViewController *)self->_sidebarViewController navigationController];
    v13 = [v12 viewControllers];
    v14 = [v13 containsObject:WeakRetained];

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
  v18 = [v17 anyObject];

  return v18;
}

- (void)setCurrentCollection:(id)a3
{
  v7 = a3;
  v4 = [(LibraryController *)self currentCollection];
  v5 = [v4 isEqualToString:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(NSMutableDictionary *)self->_itemsByCollection objectForKeyedSubscript:v7];
    [(LibraryViewController *)self->_sidebarViewController setSelectedItemController:v6];
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v12 = a3;
  v7 = a4;
  v8 = [v12 viewControllers];
  v9 = [v8 firstObject];

  if (v9 == v7)
  {
    [v12 setToolbarHidden:1 animated:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_mainLibrarySectionController);
    [WeakRetained updateToolbarIfNeeded];

    [v12 setToolbarHidden:0 animated:1];
  }

  [(LibraryController *)self _updateSidebarButton];
  sidebarViewController = self->_sidebarViewController;
  if (sidebarViewController == v7)
  {
    [(LibraryViewController *)sidebarViewController setPresentedItemController:0];
  }
}

- (void)didSwitchProfile
{
  [(LibraryController *)self setNeedsReloadForProfileSwitcher];
  v6 = [(LibraryViewController *)self->_sidebarViewController navigationController];
  v3 = [v6 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v6 popToRootViewControllerAnimated:0];
  }
}

- (void)toggleEditBookmarks
{
  WeakRetained = objc_loadWeakRetained(&self->_mainLibrarySectionController);
  v3 = [WeakRetained itemControllers];
  v4 = [v3 safari_firstObjectPassingTest:&__block_literal_global_37];

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
  v3 = [WeakRetained itemControllers];
  v4 = [v3 safari_firstObjectPassingTest:&__block_literal_global_15];

  [v4 reloadBookmarksControllers];
}

uint64_t __36__LibraryController_reloadBookmarks__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)libraryViewController:(id)a3 didSelectItem:(id)a4
{
  v5 = a4;
  isSelectingItem = self->_isSelectingItem;
  self->_isSelectingItem = 1;
  obj = v5;
  v7 = [v5 viewController];
  if (v7)
  {
    objc_storeWeak(&self->_lastSelectedItemController, obj);
    objc_storeWeak(&self->_viewControllerForLastSelectedItemController, v7);
    v8 = [(LibraryViewController *)self->_sidebarViewController navigationController];
    v9 = [v8 topViewController];

    if (v9 == v7)
    {
      v13 = [v8 popToRootViewControllerAnimated:1];
    }

    else
    {
      v10 = [v8 viewControllers];
      v11 = [v10 containsObject:v7];

      if (v11)
      {
        v12 = [v8 popToViewController:v7 animated:0];
      }

      else
      {
        v14 = [v8 viewControllers];
        v15 = [v14 count] == 1;

        v16 = [v8 popToRootViewControllerAnimated:0];
        [v8 pushViewController:v7 animated:v15];
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

- (void)_reportSelectedItemForAnalytics:(id)a3
{
  v3 = MEMORY[0x277D499B8];
  v4 = a3;
  v6 = [v3 sharedLogger];
  v5 = [v4 sidebarSelectionAnalyticsAction];

  [v6 didUseSidebarAction:v5];
}

@end
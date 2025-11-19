@interface HUItemCollectionViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)shouldManageTextFieldForItem:(id)a3;
- (BOOL)shouldPerformUpdateWithAnimationForDiffableDataItemManager:(id)a3;
- (BOOL)textFieldShouldClear:(id)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HFItem)hu_presentedItem;
- (HUItemCollectionViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (NSString)description;
- (id)_displayedPackageIconDescriptorsForItems:(id)a3;
- (id)_itemForTextField:(id)a3;
- (id)_layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)_sortedItemMapFrom:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)compositionalLayoutConfigurationForTraitCollection:(id)a3;
- (id)currentTextForTextField:(id)a3 item:(id)a4;
- (id)defaultTextForTextField:(id)a3 item:(id)a4;
- (id)hu_preloadContent;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)itemManager:(id)a3 futureToUpdateItems:(id)a4 itemUpdateOptions:(id)a5;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)moduleController:(id)a3 presentViewControllerForRequest:(id)a4;
- (id)moduleControllerForItem:(id)a3;
- (id)placeholderTextForTextField:(id)a3 item:(id)a4;
- (id)textFieldForVisibleItem:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_cancelIconPreload;
- (void)_commonInitWithItemManager:(id)a3;
- (void)_configureLayout;
- (void)_performStandardUpdateForCell:(id)a3 forItem:(id)a4;
- (void)_preloadIconsIfNeededWithItems:(id)a3;
- (void)_prioritizeIconPreloadIfNeeded;
- (void)_routeUpdateForCell:(id)a3 forItem:(id)a4;
- (void)_transformViewControllerForRequest:(id)a3;
- (void)_updateTitle;
- (void)cleanupRecentlyRemovedModuleControllers;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)diffableDataItemManager:(id)a3 prefetchResourcesForItems:(id)a4;
- (void)executionEnvironmentRunningStateDidChange:(id)a3;
- (void)itemManager:(id)a3 didChangeHome:(id)a4;
- (void)itemManager:(id)a3 didInsertItem:(id)a4 atIndexPath:(id)a5;
- (void)itemManager:(id)a3 didInsertSections:(id)a4;
- (void)itemManager:(id)a3 didMoveItem:(id)a4 fromIndexPath:(id)a5 toIndexPath:(id)a6;
- (void)itemManager:(id)a3 didMoveSection:(int64_t)a4 toSection:(int64_t)a5;
- (void)itemManager:(id)a3 didRemoveItem:(id)a4 atIndexPath:(id)a5;
- (void)itemManager:(id)a3 didRemoveSections:(id)a4;
- (void)itemManager:(id)a3 didUpdateItemModules:(id)a4;
- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5;
- (void)itemManager:(id)a3 performUpdateRequest:(id)a4;
- (void)itemManagerDidUpdate:(id)a3;
- (void)recursivelyDisableItemUpdates:(BOOL)a3 withReason:(id)a4;
- (void)reloadCellForItems:(id)a3;
- (void)setUpDiffableDataItemManagerIfNeeded;
- (void)setViewVisible:(BOOL)a3;
- (void)setWantsPreferredContentSize:(BOOL)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateCellForItems:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUItemCollectionViewController

- (void)_commonInitWithItemManager:(id)a3
{
  v18 = a3;
  objc_storeStrong(&self->_itemManager, a3);
  [(HFItemManager *)self->_itemManager setDelegate:self];
  v5 = [MEMORY[0x277CBEB18] array];
  foregroundUpdateFutures = self->_foregroundUpdateFutures;
  self->_foregroundUpdateFutures = v5;

  v7 = [MEMORY[0x277CBEB18] array];
  viewVisibleFutures = self->_viewVisibleFutures;
  self->_viewVisibleFutures = v7;

  v9 = [MEMORY[0x277CBEB58] set];
  registeredCellClasses = self->_registeredCellClasses;
  self->_registeredCellClasses = v9;

  v11 = [MEMORY[0x277CBEB58] set];
  internalItemModuleControllers = self->_internalItemModuleControllers;
  self->_internalItemModuleControllers = v11;

  v13 = [MEMORY[0x277CBEB58] set];
  recentlyRemovedItemModuleControllers = self->_recentlyRemovedItemModuleControllers;
  self->_recentlyRemovedItemModuleControllers = v13;

  v15 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
  textFieldToCellMap = self->_textFieldToCellMap;
  self->_textFieldToCellMap = v15;

  self->_iconPreloadIsPrioritized = 0;
  v17 = [MEMORY[0x277D14670] sharedInstance];
  [v17 addObserver:self];

  if (![objc_opt_class() updateMode])
  {
    [v18 disableExternalUpdatesWithReason:@"HUItemCollectionViewController_NotVisible"];
  }

  [(HUItemCollectionViewController *)self _updateTitle];
}

- (HUItemCollectionViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HUItemCollectionViewController;
  v7 = [(HUCollectionViewController *)&v10 initWithCollectionViewLayout:a4];
  v8 = v7;
  if (v7)
  {
    [(HUItemCollectionViewController *)v7 _commonInitWithItemManager:v6];
  }

  return v8;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277D752B8]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HUItemCollectionViewController_initUsingCompositionalLayoutWithItemManager___block_invoke;
  v14[3] = &unk_277DC0818;
  objc_copyWeak(&v16, &location);
  v8 = v6;
  v15 = v8;
  v9 = [v7 initWithSectionProvider:v14];
  v13.receiver = self;
  v13.super_class = HUItemCollectionViewController;
  v10 = [(HUCollectionViewController *)&v13 initWithCollectionViewLayout:v9];
  v11 = v10;
  if (v10)
  {
    [(HUItemCollectionViewController *)v10 _commonInitWithItemManager:v4];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

id __78__HUItemCollectionViewController_initUsingCompositionalLayoutWithItemManager___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained _layoutSectionForSection:a2 layoutEnvironment:v5];
  v8 = v7;
  if (!WeakRetained || v7)
  {
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    NSLog(&cfstr_NonnullReturne.isa, WeakRetained, a2);
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = WeakRetained;
    v17 = 2048;
    v18 = a2;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@ produced nil section; self=%@ sectionIndex=%lu", buf, 0x20u);
  }

  v11 = [objc_alloc(MEMORY[0x277D75290]) initWithAppearance:2];
  v8 = [MEMORY[0x277CFB868] sectionWithListConfiguration:v11 layoutEnvironment:v5];

LABEL_8:

  return v8;
}

- (void)setWantsPreferredContentSize:(BOOL)a3
{
  if (self->_wantsPreferredContentSize != a3)
  {
    self->_wantsPreferredContentSize = a3;
    if (a3)
    {
      v6 = [(HUItemCollectionViewController *)self collectionView];
      [v6 contentSize];
      [(HUItemCollectionViewController *)self preferredContentSizeForCollectionViewContentSize:?];
      [(HUItemCollectionViewController *)self setPreferredContentSize:?];
    }

    else
    {
      v4 = *MEMORY[0x277CBF3A8];
      v5 = *(MEMORY[0x277CBF3A8] + 8);

      [(HUItemCollectionViewController *)self setPreferredContentSize:v4, v5];
    }
  }
}

- (void)setUpDiffableDataItemManagerIfNeeded
{
  v16 = [(HUItemCollectionViewController *)self itemManager];
  if ([v16 diffableDataSourceDisabled])
  {
  }

  else
  {
    v4 = [(HUItemCollectionViewController *)self itemManager];
    v5 = [v4 diffableDataSource];

    if (!v5)
    {
      v6 = [(HUItemCollectionViewController *)self itemManager];
      v7 = objc_opt_class();

      v8 = objc_opt_class();
      v9 = [(HUItemCollectionViewController *)self itemManager];
      objc_initWeak(&location, v9);

      objc_initWeak(&from, self);
      v10 = objc_alloc(MEMORY[0x277D752D0]);
      v11 = [(HUItemCollectionViewController *)self collectionView];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __70__HUItemCollectionViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke;
      v23[3] = &unk_277DC0840;
      objc_copyWeak(&v24, &from);
      v25[1] = a2;
      objc_copyWeak(v25, &location);
      v25[2] = v7;
      v25[3] = v8;
      v12 = [v10 initWithCollectionView:v11 cellProvider:v23];

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __70__HUItemCollectionViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke_34;
      v21[3] = &unk_277DC0868;
      objc_copyWeak(&v22, &from);
      [v12 setSupplementaryViewProvider:v21];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __70__HUItemCollectionViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke_2;
      v19[3] = &unk_277DC0890;
      objc_copyWeak(&v20, &from);
      v13 = [v12 reorderingHandlers];
      [v13 setCanReorderItemHandler:v19];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __70__HUItemCollectionViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke_3;
      v17[3] = &unk_277DC08B8;
      objc_copyWeak(&v18, &from);
      v14 = [v12 reorderingHandlers];
      [v14 setDidReorderHandler:v17];

      v15 = [(HUItemCollectionViewController *)self itemManager];
      [v15 setDiffableDataSource:v12];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);

      objc_destroyWeak(v25);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

id __70__HUItemCollectionViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v11 = WeakRetained == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = *(a1 + 48);
    v19 = objc_loadWeakRetained((a1 + 40));
    [v17 handleFailureInMethod:v18 object:0 file:@"HUItemCollectionViewController.m" lineNumber:157 description:{@"attempting to get cell for item: %@ in itemManager: %@ type: %@ for collectionView: %@ when the collectionViewController: %@ has dealloc already type: %@", v9, v19, *(a1 + 56), v7, 0, *(a1 + 64)}];
  }

  v12 = [WeakRetained collectionView:v7 cellForItemAtIndexPath:v8];
  if (!v12)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = objc_loadWeakRetained((a1 + 40));
      v16 = *(a1 + 56);
      *buf = 138413570;
      v21 = v9;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = WeakRetained;
      _os_log_fault_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_FAULT, "Failed to get cell for item: %@ at index %@ in itemManager: %@ type: %@ for collectionView: %@ collectionViewController: %@", buf, 0x3Eu);
    }

    v12 = objc_alloc_init(MEMORY[0x277D75318]);
  }

  return v12;
}

id __70__HUItemCollectionViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke_34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained collectionView:v9 viewForSupplementaryElementOfKind:v8 atIndexPath:v7];

  return v11;
}

uint64_t __70__HUItemCollectionViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained itemManager];
  v6 = [v5 indexPathForItem:v3];

  v7 = [WeakRetained collectionView];
  v8 = [WeakRetained collectionView:v7 canMoveItemAtIndexPath:v6];

  return v8;
}

void __70__HUItemCollectionViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _sortedItemMapFrom:v3];

  [WeakRetained didReorderItemWithSortedItemsBySectionID:v4];
}

- (id)_sortedItemMapFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 sectionTransactions];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HUItemCollectionViewController__sortedItemMapFrom___block_invoke;
  v8[3] = &unk_277DC08E0;
  v6 = v4;
  v9 = v6;
  [v5 na_each:v8];

  return v6;
}

void __53__HUItemCollectionViewController__sortedItemMapFrom___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 sectionIdentifier];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v10 = v5;

  v6 = *(a1 + 32);
  v7 = [v3 finalSnapshot];

  v8 = [v7 items];
  v9 = [v10 identifier];
  [v6 setObject:v8 forKey:v9];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HUItemCollectionViewController;
  [(HUItemCollectionViewController *)&v12 viewDidLoad];
  [(HUItemCollectionViewController *)self setUpDiffableDataItemManagerIfNeeded];
  [(HUItemCollectionViewController *)self _configureLayout];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = [(HUItemCollectionViewController *)self collectionView];
  [v5 setBackgroundColor:v4];

  v6 = [(HUItemCollectionViewController *)self collectionView];
  [v6 setPrefetchDataSource:self];

  v7 = [(HUItemCollectionViewController *)self collectionView];
  [v7 setPrefetchingEnabled:1];

  if ([objc_opt_class() updateMode] == 1)
  {
    v8 = [(HUItemCollectionViewController *)self itemManager];
    v9 = [v8 reloadAndUpdateAllItemsFromSenderSelector:a2];
  }

  v10 = [(HUItemCollectionViewController *)self collectionView];
  [v10 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"HUItemCollectionViewHeader"];

  v11 = [(HUItemCollectionViewController *)self collectionView];
  [v11 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D0] withReuseIdentifier:@"HUItemCollectionViewFooter"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x277D85DE8];
  [(HUItemCollectionViewController *)self _cancelIconPreload];
  v5 = [(HUItemCollectionViewController *)self childViewControllersAtViewWillDisappearTime];
  if (![objc_opt_class() updateMode])
  {
    v6 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:MEMORY[0x277D85CD0]];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__HUItemCollectionViewController_viewWillAppear___block_invoke;
    v23[3] = &unk_277DC0908;
    v23[4] = self;
    v24 = v5;
    v7 = [v6 performCancelableBlock:v23];
    [(HUItemCollectionViewController *)self setDeferredVisibilityUpdate:v7];
  }

  [(HUItemCollectionViewController *)self setChildViewControllersAtViewWillDisappearTime:0];
  v22.receiver = self;
  v22.super_class = HUItemCollectionViewController;
  [(HUItemCollectionViewController *)&v22 viewWillAppear:v3];
  v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [(HUItemCollectionViewController *)self setChildViewControllersAtViewWillAppearTime:v8];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(HUItemCollectionViewController *)self childViewControllers];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [(HUItemCollectionViewController *)self childViewControllersAtViewWillAppearTime];
        [v15 addObject:v14];

        [v14 beginAppearanceTransition:1 animated:v3];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = [(HUItemCollectionViewController *)self collectionView];
  v17 = [v16 visibleCells];
  [v17 na_each:&__block_literal_global_183];
}

void __49__HUItemCollectionViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) visibilityUpdatesEnabled] & 1) == 0)
  {
    v2 = [*(a1 + 32) itemManager];
    [v2 endDisableExternalUpdatesWithReason:@"HUItemCollectionViewController_NotVisible"];

    [*(a1 + 32) setVisibilityUpdatesEnabled:1];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 conformsToProtocol:{&unk_28249D628, v10}])
        {
          v9 = [v8 itemManager];
          [v9 endDisableExternalUpdatesWithReason:@"HUItemCollectionViewController_ParentNotVisible"];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void __49__HUItemCollectionViewController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v2 = v5;
    if ([v2 conformsToProtocol:&unk_2824D2070])
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    [v4 reclaimIconIfPossible];
  }
}

- (void)setViewVisible:(BOOL)a3
{
  if (self->_viewVisible != a3)
  {
    v11 = v3;
    v12 = v4;
    self->_viewVisible = a3;
    v7 = [(HUItemCollectionViewController *)self viewVisibleFutures];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__HUItemCollectionViewController_setViewVisible___block_invoke;
    v9[3] = &__block_descriptor_33_e18_v16__0__NAFuture_8l;
    v10 = a3;
    [v7 na_each:v9];

    v8 = [(HUItemCollectionViewController *)self viewVisibleFutures];
    [v8 removeAllObjects];
  }
}

uint64_t __49__HUItemCollectionViewController_setViewVisible___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    return [a2 finishWithNoResult];
  }

  else
  {
    return [a2 cancel];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HUItemCollectionViewController;
  [(HUItemCollectionViewController *)&v17 viewDidAppear:a3];
  [(HUItemCollectionViewController *)self setViewVisible:1];
  if (![(HUItemCollectionViewController *)self hasFinishedInitialLoad])
  {
    [(HUItemCollectionViewController *)self setHasFinishedInitialLoad:1];
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: finished initial load", buf, 0xCu);
    }
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_textFieldDidChange_ name:*MEMORY[0x277D770B0] object:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(HUItemCollectionViewController *)self childViewControllersAtViewWillAppearTime];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) endAppearanceTransition];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v34 = *MEMORY[0x277D85DE8];
  if (![objc_opt_class() updateMode])
  {
    if ([(HUItemCollectionViewController *)self visibilityUpdatesEnabled])
    {
      v5 = [(HUItemCollectionViewController *)self itemManager];
      [v5 disableExternalUpdatesWithReason:@"HUItemCollectionViewController_NotVisible"];

      [(HUItemCollectionViewController *)self setVisibilityUpdatesEnabled:0];
    }

    v6 = [(HUItemCollectionViewController *)self deferredVisibilityUpdate];
    [v6 cancel];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = [(HUItemCollectionViewController *)self childViewControllers];
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          if ([v12 conformsToProtocol:&unk_28249D628])
          {
            v13 = [v12 itemManager];
            [v13 disableExternalUpdatesWithReason:@"HUItemCollectionViewController_ParentNotVisible"];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }
  }

  [(HUItemCollectionViewController *)self setChildViewControllersAtViewWillAppearTime:0];
  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 removeObserver:self name:*MEMORY[0x277D770B0] object:0];

  v27.receiver = self;
  v27.super_class = HUItemCollectionViewController;
  [(HUItemCollectionViewController *)&v27 viewWillDisappear:v3];
  v15 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [(HUItemCollectionViewController *)self setChildViewControllersAtViewWillDisappearTime:v15];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [(HUItemCollectionViewController *)self childViewControllers];
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * j);
        v22 = [(HUItemCollectionViewController *)self childViewControllersAtViewWillDisappearTime];
        [v22 addObject:v21];

        [v21 beginAppearanceTransition:0 animated:v3];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v18);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  [(HUItemCollectionViewController *)self setViewVisible:0];
  v16.receiver = self;
  v16.super_class = HUItemCollectionViewController;
  [(HUItemCollectionViewController *)&v16 viewDidDisappear:v3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HUItemCollectionViewController *)self childViewControllersAtViewWillDisappearTime];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) endAppearanceTransition];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [(HUItemCollectionViewController *)self collectionView];
  v11 = [v10 visibleCells];
  [v11 na_each:&__block_literal_global_117];
}

void __51__HUItemCollectionViewController_viewDidDisappear___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 renounceIcon];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HUItemCollectionViewController;
  [(HUItemCollectionViewController *)&v4 viewDidLayoutSubviews];
  if ([(HUItemCollectionViewController *)self wantsPreferredContentSize])
  {
    v3 = [(HUItemCollectionViewController *)self collectionView];
    [v3 contentSize];
    [(HUItemCollectionViewController *)self preferredContentSizeForCollectionViewContentSize:?];
    [(HUItemCollectionViewController *)self setPreferredContentSize:?];
  }

  [(HUItemCollectionViewController *)self _prioritizeIconPreloadIfNeeded];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = [(HUItemCollectionViewController *)self itemModuleControllers:a3];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HUItemCollectionViewController.m" lineNumber:395 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUItemCollectionViewController cellClassForItem:indexPath:]", objc_opt_class()}];
  }

  return 0;
}

- (id)compositionalLayoutConfigurationForTraitCollection:(id)a3
{
  objc_opt_class();
  v4 = [(HUItemCollectionViewController *)self collectionViewLayout];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 configuration];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277D752C0] defaultConfiguration];
  }

  v9 = v8;

  return v9;
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  NSLog(&cfstr_DoesnTImplemen.isa, v5, v6);

  return 0;
}

- (void)_routeUpdateForCell:(id)a3 forItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HUItemCollectionViewController *)self _performStandardUpdateForCell:v7 forItem:v6];
  v8 = [(HUItemCollectionViewController *)self moduleControllerForItem:v6];
  v9 = v8;
  if (!v8)
  {
    v8 = self;
  }

  [v8 configureCell:v7 forItem:v6];
}

- (void)_performStandardUpdateForCell:(id)a3 forItem:(id)a4
{
  v34 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = v34;
    v8 = [(HUItemCollectionViewController *)self automaticDisablingReasonsForItem:v6];
    v9 = [(HUItemCollectionViewController *)self itemManager];
    v10 = [v9 home];
    v11 = [v10 hf_currentUserIsAdministrator];

    if (v11)
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      v13 = [v6 latestResults];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13F10]];

      if (v14)
      {
        LOBYTE(v12) = [v14 BOOLValue];
      }

      else
      {
        v12 = (v8 >> 1) & 1;
      }
    }

    v15 = [v6 latestResults];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v17 = [v16 BOOLValue];

    [v7 setDisabled:(v17 | v12) & 1];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v6])
  {
    v18 = v34;
    v19 = [(HUItemCollectionViewController *)self moduleControllerForItem:v6];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = self;
    }

    v22 = v21;

    v23 = [v18 textField];
    v24 = [(HUItemCollectionViewController *)v22 defaultTextForTextField:v23 item:v6];

    v25 = [v18 textField];
    v26 = [(HUItemCollectionViewController *)v22 currentTextForTextField:v25 item:v6];

    v27 = [v18 textField];
    v28 = [(HUItemCollectionViewController *)v22 placeholderTextForTextField:v27 item:v6];

    v29 = [v18 textField];
    [v29 setPlaceholder:v28];

    if (v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v24;
    }

    v31 = [v18 textField];
    [v31 setText:v30];

    v32 = [v18 textField];

    [v32 setAutocapitalizationType:1];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v33 = v34;
    if (objc_opt_respondsToSelector())
    {
      [v33 setResizingDelegate:self];
    }
  }
}

- (void)_updateTitle
{
  v10 = [(HUItemCollectionViewController *)self itemManager];
  v3 = [v10 sourceItem];
  if (v3)
  {
    v4 = v3;
    v5 = [(HUItemCollectionViewController *)self automaticallyUpdatesViewControllerTitle];

    if (!v5)
    {
      return;
    }

    v10 = [(HUItemCollectionViewController *)self itemManager];
    v6 = [v10 sourceItem];
    v7 = [v6 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v9 = [(HUItemCollectionViewController *)self navigationItem];
    [v9 setTitle:v8];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUItemCollectionViewController *)self itemManager];
  v5 = [v4 sourceItem];
  v6 = [v3 appendObject:v5 withName:@"sourceItem"];

  v7 = [v3 build];

  return v7;
}

- (id)listContentConfigurationForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4
{
  if (*MEMORY[0x277D767D8] == a3)
  {
    [MEMORY[0x277D756E0] groupedHeaderConfiguration];
  }

  else
  {
    [MEMORY[0x277D756E0] groupedFooterConfiguration];
  }
  v4 = ;

  return v4;
}

- (void)_configureLayout
{
  objc_opt_class();
  v3 = [(HUItemCollectionViewController *)self collectionViewLayout];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  if (v8)
  {
    v5 = [(HUItemCollectionViewController *)self collectionView];
    v6 = [v5 traitCollection];
    v7 = [(HUItemCollectionViewController *)self compositionalLayoutConfigurationForTraitCollection:v6];
    [v8 setConfiguration:v7];
  }
}

- (id)_layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__HUItemCollectionViewController__layoutSectionForSection_layoutEnvironment___block_invoke;
  v15[3] = &unk_277DC0950;
  v15[4] = self;
  v15[5] = a3;
  v7 = __77__HUItemCollectionViewController__layoutSectionForSection_layoutEnvironment___block_invoke(v15);
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v8 displayedSectionIdentifierForSectionIndex:a3];

  v10 = [v7 collectionLayoutSectionForSectionWithIdentifier:v9 layoutEnvironment:v6];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(HUItemCollectionViewController *)self layoutSectionForSection:a3 layoutEnvironment:v6];
  }

  v13 = v12;

  return v13;
}

id __77__HUItemCollectionViewController__layoutSectionForSection_layoutEnvironment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemManager];
  v3 = [v2 displayedItemsInSection:*(a1 + 40)];
  v4 = [v3 firstObject];

  v5 = [*(a1 + 32) moduleControllerForItem:v4];

  return v5;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(HUItemCollectionViewController *)self itemManager];
  v4 = [v3 numberOfSections];

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 displayedItemsInSection:a4];
  v7 = [v6 count];

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(HUItemCollectionViewController *)self itemManager];
  v8 = [v7 displayedItemAtIndexPath:v6];

  v9 = [(HUItemCollectionViewController *)self moduleControllerForItem:v8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__HUItemCollectionViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v26[3] = &unk_277DC0978;
  v10 = v9;
  v27 = v10;
  v11 = v8;
  v28 = v11;
  v29 = self;
  v12 = v6;
  v30 = v12;
  v13 = __72__HUItemCollectionViewController_collectionView_cellForItemAtIndexPath___block_invoke(v26);
  if (!v13)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"HUItemCollectionViewController.m" lineNumber:589 description:{@"No cell class specified for item: %@", v11}];
  }

  v14 = [(HUItemCollectionViewController *)self registeredCellClasses];
  v15 = [v14 containsObject:v13];

  if ((v15 & 1) == 0)
  {
    v16 = [(HUItemCollectionViewController *)self collectionView];
    v17 = NSStringFromClass(v13);
    [v16 registerClass:v13 forCellWithReuseIdentifier:v17];

    v18 = [(HUItemCollectionViewController *)self registeredCellClasses];
    [v18 addObject:v13];
  }

  v19 = [(HUItemCollectionViewController *)self collectionView];
  v20 = NSStringFromClass(v13);
  v21 = [v19 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:v12];

  if ([v21 conformsToProtocol:&unk_2824AB590])
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  [v23 setItem:v11];
  [(HUItemCollectionViewController *)self _routeUpdateForCell:v21 forItem:v11];
  [v23 updateUIWithAnimation:0];

  return v21;
}

id __72__HUItemCollectionViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = [v2 collectionCellClassForItem:*(a1 + 40)]) == 0)
  {
    v3 = [*(a1 + 48) cellClassForItem:*(a1 + 40) indexPath:*(a1 + 56)];
  }

  return v3;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v19.receiver = self;
  v19.super_class = HUItemCollectionViewController;
  [(HUCollectionViewController *)&v19 collectionView:a3 willDisplayCell:v8 forItemAtIndexPath:v9];
  if ([v8 conformsToProtocol:&unk_2824C52F0])
  {
    v10 = [(HUItemCollectionViewController *)self itemManager];
    v11 = [v10 displayedItemAtIndexPath:v9];

    if (v11 && [(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v11])
    {
      v12 = v8;
      v13 = [v12 textField];
      [v13 setDelegate:self];

      v14 = [(HUItemCollectionViewController *)self textFieldToCellMap];
      v15 = [v12 textField];
      [v14 setObject:v12 forKey:v15];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = v8;
    if ([v16 conformsToProtocol:&unk_2824D2070])
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [v18 reclaimIconIfPossible];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v19.receiver = self;
  v19.super_class = HUItemCollectionViewController;
  [(HUCollectionViewController *)&v19 collectionView:a3 didEndDisplayingCell:v8 forItemAtIndexPath:v9];
  if ([v8 conformsToProtocol:&unk_2824C52F0])
  {
    v10 = [(HUItemCollectionViewController *)self itemManager];
    v11 = [v10 displayedItemAtIndexPath:v9];

    if (v11 && [(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v11])
    {
      v12 = v8;
      v13 = [v12 textField];
      [v13 setDelegate:0];

      v14 = [(HUItemCollectionViewController *)self textFieldToCellMap];
      v15 = [v12 textField];

      [v14 removeObjectForKey:v15];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = v8;
    if ([v16 conformsToProtocol:&unk_2824D2070])
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [v18 renounceIcon];
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = *MEMORY[0x277D767D8];
  if (*MEMORY[0x277D767D8] == a4)
  {
    v10 = @"HUItemCollectionViewHeader";
  }

  else
  {
    v10 = @"HUItemCollectionViewFooter";
  }

  v11 = a4;
  v12 = [a3 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v10 forIndexPath:v8];
  v13 = [(HUItemCollectionViewController *)self itemManager];
  v14 = [v8 section];
  if (v9 == a4)
  {
    v15 = [v13 titleForSection:v14];

    v16 = [(HUItemCollectionViewController *)self itemManager];
    [v16 attributedTitleForSection:{objc_msgSend(v8, "section")}];
  }

  else
  {
    v15 = [v13 footerTitleForSection:v14];

    v16 = [(HUItemCollectionViewController *)self itemManager];
    [v16 attributedFooterTitleForSection:{objc_msgSend(v8, "section")}];
  }
  v17 = ;

  objc_opt_class();
  v18 = v12;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = [(HUItemCollectionViewController *)self listContentConfigurationForSupplementaryElementOfKind:v11 atIndexPath:v8];

  if (v9 == a4 || !v17)
  {
    [v21 setText:v15];
  }

  else
  {
    [v21 setAttributedText:v17];
  }

  [v20 setContentConfiguration:v21];

  return v20;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([+[HUItemCollectionViewController superclass](HUItemCollectionViewController "superclass")])
  {
    v14.receiver = self;
    v14.super_class = HUItemCollectionViewController;
    [(HUItemCollectionViewController *)&v14 collectionView:v7 didSelectItemAtIndexPath:v8];
  }

  v9 = [(HUItemCollectionViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v8];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: User tapped item: %@", buf, 0x16u);
  }

  v12 = [(HUItemCollectionViewController *)self moduleControllerForItem:v10];
  v13 = v12;
  if (v12 && ![v12 didSelectItem:v10])
  {
    [v7 deselectItemAtIndexPath:v8 animated:1];
  }
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUItemCollectionViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  v8 = [(HUItemCollectionViewController *)self moduleControllerForItem:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 canSelectItem:v7];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = [a3 indexPathsForVisibleItems];
  v9 = [v6 setWithArray:v8];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __75__HUItemCollectionViewController_collectionView_prefetchItemsAtIndexPaths___block_invoke;
  v17 = &unk_277DC09A0;
  v10 = v9;
  v18 = v10;
  v19 = self;
  v11 = [v7 na_map:&v14];

  if ([v11 count])
  {
    v12 = [MEMORY[0x277D180B8] sharedInstance];
    v13 = [v12 prefetchIconDescriptors:v11];
  }
}

id __75__HUItemCollectionViewController_collectionView_prefetchItemsAtIndexPaths___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 40) itemManager];
    v6 = [v5 displayedItemAtIndexPath:v3];

    objc_opt_class();
    v7 = [v6 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v4 = v9;
  }

  return v4;
}

- (id)itemManager:(id)a3 futureToUpdateItems:(id)a4 itemUpdateOptions:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB18];
  v7 = a5;
  v8 = [v6 arrayWithCapacity:2];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];

  LOBYTE(v7) = [v9 BOOLValue];
  if ((v7 & 1) == 0)
  {
    v10 = [MEMORY[0x277D14670] sharedInstance];
    v11 = [v10 runningState];

    if (v11)
    {
      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Delaying full item update until the application is active", buf, 2u);
      }

      v13 = objc_alloc_init(MEMORY[0x277D2C900]);
      [v8 addObject:v13];
      v14 = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
      [v14 addObject:v13];
    }

    if (![(HUItemCollectionViewController *)self isViewVisible])
    {
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = self;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Delaying full item update for view controller %@ as we are not visible.", buf, 0xCu);
      }

      v16 = objc_alloc_init(MEMORY[0x277D2C900]);
      [v8 addObject:v16];
      v17 = MEMORY[0x277D2C900];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __84__HUItemCollectionViewController_itemManager_futureToUpdateItems_itemUpdateOptions___block_invoke;
      v23[3] = &unk_277DB7580;
      v24 = v16;
      v18 = v16;
      v19 = [v17 futureWithBlock:v23];
      v20 = [(HUItemCollectionViewController *)self viewVisibleFutures];
      [v20 addObject:v19];
    }
  }

  v21 = [MEMORY[0x277D2C900] combineAllFutures:v8];

  return v21;
}

void __84__HUItemCollectionViewController_itemManager_futureToUpdateItems_itemUpdateOptions___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D0F8F0] mainScheduler];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__HUItemCollectionViewController_itemManager_futureToUpdateItems_itemUpdateOptions___block_invoke_2;
  v4[3] = &unk_277DB8488;
  v5 = *(a1 + 32);
  v3 = [v2 performWithQualityOfService:17 block:v4];
}

- (void)itemManager:(id)a3 performUpdateRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 changes];
  v9 = [v8 allOperations];
  v10 = [v9 na_any:&__block_literal_global_183_0];

  if (([v6 isInitialUpdate] & 1) != 0 || (-[HUItemCollectionViewController isViewLoaded](self, "isViewLoaded") & 1) == 0)
  {
    [(HUItemCollectionViewController *)self performBatchCollectionViewUpdatesForUpdateRequest:v6 reloadOnly:1];
    if ([(HUItemCollectionViewController *)self isViewLoaded])
    {
      v12 = [(HUItemCollectionViewController *)self collectionView];
      [v12 reloadData];
    }

    v13 = [(HUItemCollectionViewController *)self itemManager];
    v14 = [v13 allDisplayedItems];
    [(HUItemCollectionViewController *)self _preloadIconsIfNeededWithItems:v14];
  }

  else if (([(HUItemCollectionViewController *)self isLayoutDependentOnItemState]| v10))
  {
    v11 = [(HUItemCollectionViewController *)self collectionView];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __67__HUItemCollectionViewController_itemManager_performUpdateRequest___block_invoke_2;
    v18 = &unk_277DB7558;
    v19 = self;
    v20 = v6;
    [v11 performBatchUpdates:&v15 completion:0];
  }

  else
  {
    [v6 performWithOptions:0];
  }

  [(HUItemCollectionViewController *)self itemManagerDidUpdate:v7, v15, v16, v17, v18, v19];
}

- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HUItemCollectionViewController *)self collectionView];
  v10 = [v9 cellForItemAtIndexPath:v7];

  [(HUItemCollectionViewController *)self _routeUpdateForCell:v10 forItem:v8];
  if (objc_opt_respondsToSelector())
  {
    [v10 updateUIWithAnimation:1];
  }
}

- (void)itemManager:(id)a3 didRemoveItem:(id)a4 atIndexPath:(id)a5
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(HUItemCollectionViewController *)self collectionView];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [v7 deleteItemsAtIndexPaths:v8];
}

- (void)itemManager:(id)a3 didInsertItem:(id)a4 atIndexPath:(id)a5
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(HUItemCollectionViewController *)self collectionView];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [v7 insertItemsAtIndexPaths:v8];
}

- (void)itemManager:(id)a3 didMoveItem:(id)a4 fromIndexPath:(id)a5 toIndexPath:(id)a6
{
  v12 = a5;
  v8 = a6;
  if (![(HUItemCollectionViewController *)self suppressCollectionViewUpdatesForReorderCommit])
  {
    v9 = [(HUItemCollectionViewController *)self collectionView];
    v10 = [v9 cellForItemAtIndexPath:v12];

    if (objc_opt_respondsToSelector())
    {
      [v10 updateUIWithAnimation:1];
    }

    v11 = [(HUItemCollectionViewController *)self collectionView];
    [v11 moveItemAtIndexPath:v12 toIndexPath:v8];
  }
}

- (void)itemManager:(id)a3 didRemoveSections:(id)a4
{
  v5 = a4;
  v6 = [(HUItemCollectionViewController *)self collectionView];
  [v6 deleteSections:v5];
}

- (void)itemManager:(id)a3 didInsertSections:(id)a4
{
  v5 = a4;
  v6 = [(HUItemCollectionViewController *)self collectionView];
  [v6 insertSections:v5];
}

- (void)itemManager:(id)a3 didMoveSection:(int64_t)a4 toSection:(int64_t)a5
{
  v7 = [(HUItemCollectionViewController *)self collectionView];
  [v7 moveSection:a4 toSection:a5];
}

- (void)itemManager:(id)a3 didChangeHome:(id)a4
{
  if ([(HUItemCollectionViewController *)self hasFinishedInitialLoad:a3])
  {
    v5 = [(HUItemCollectionViewController *)self collectionView];
    [v5 layoutIfNeeded];
  }
}

- (void)itemManager:(id)a3 didUpdateItemModules:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(HUItemCollectionViewController *)self itemModuleControllers];
  v7 = [v6 na_map:&__block_literal_global_187_1];

  v8 = MEMORY[0x277D14AE8];
  v34 = v5;
  v9 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v33 = v7;
  v10 = [v8 diffFromSet:v7 toSet:v9];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [v10 additions];
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v52 count:16];
  v13 = &OBJC_IVAR___HUFootnoteButtonCell__item;
  if (v12)
  {
    v14 = v12;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v18 = [(HUItemCollectionViewController *)self buildItemModuleControllerForModule:v17];
        v19 = v18;
        if (v18)
        {
          [v18 setHost:self];
          [v19 setHostType:2];
          [(NSMutableSet *)self->_internalItemModuleControllers addObject:v19];
        }

        else
        {
          NSLog(&cfstr_NoModuleContro.isa, v17, self);
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v14);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v10 deletions];
  v20 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v37 + 1) + 8 * j);
        v25 = v13[909];
        v26 = *(&self->super.super.super.super.super.isa + v25);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __67__HUItemCollectionViewController_itemManager_didUpdateItemModules___block_invoke_2;
        v36[3] = &unk_277DC09E8;
        v36[4] = v24;
        v27 = [v26 na_firstObjectPassingTest:v36];
        if (v27)
        {
          v28 = v13;
          [*(&self->super.super.super.super.super.isa + v25) removeObject:v27];
          v29 = HFLogForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v27 moduleIdentifier];
            *buf = 138412802;
            v46 = self;
            v47 = 2112;
            v48 = v27;
            v49 = 2112;
            v50 = v30;
            _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@: Starting removal of module controller %@ (%@) because module was deleted. Adding to recently removed for safety", buf, 0x20u);
          }

          [(NSMutableSet *)self->_recentlyRemovedItemModuleControllers addObject:v27];
          v13 = v28;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v21);
  }

  v31 = [v10 additions];

  if (v31)
  {
    v32 = [(HUItemCollectionViewController *)self collectionView];
    [v32 setNeedsLayout];
  }
}

BOOL __67__HUItemCollectionViewController_itemManager_didUpdateItemModules___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 module];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)itemManagerDidUpdate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HUItemCollectionViewController *)self wantsPreferredContentSize])
  {
    v4 = [(HUItemCollectionViewController *)self collectionView];
    [v4 contentSize];
    [(HUItemCollectionViewController *)self preferredContentSizeForCollectionViewContentSize:?];
    [(HUItemCollectionViewController *)self setPreferredContentSize:?];
  }

  if (![(HUItemCollectionViewController *)self hasFinishedInitialLoad])
  {
    [(HUItemCollectionViewController *)self setHasFinishedInitialLoad:1];
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: finished initial load", &v8, 0xCu);
    }
  }
}

- (void)diffableDataItemManager:(id)a3 prefetchResourcesForItems:(id)a4
{
  v5 = a4;
  if (([MEMORY[0x277D14670] isSpringBoard] & 1) == 0)
  {
    [(HUItemCollectionViewController *)self _preloadIconsIfNeededWithItems:v5];
  }
}

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v8 = a4;
  [(HUItemCollectionViewController *)self itemManagerDidUpdate:a3];
  [(HUItemCollectionViewController *)self cleanupRecentlyRemovedModuleControllers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__HUItemCollectionViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke;
  v9[3] = &unk_277DBAF68;
  v9[4] = self;
  [v8 na_each:v9];
}

void __94__HUItemCollectionViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) itemManager];
  v4 = [v3 indexPathForItem:v7];

  v5 = [*(a1 + 32) collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  if (v6)
  {
    [*(a1 + 32) _routeUpdateForCell:v6 forItem:v7];
    if (objc_opt_respondsToSelector())
    {
      [v6 updateUIWithAnimation:1];
    }
  }
}

- (BOOL)shouldPerformUpdateWithAnimationForDiffableDataItemManager:(id)a3
{
  v3 = [(HUItemCollectionViewController *)self view];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (id)hu_preloadContent
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HUItemCollectionViewController *)self hasFinishedInitialLoad])
  {
    v3 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v4 = [(HUItemCollectionViewController *)self itemManager];
    v5 = [v4 diffableDataSourceDisabled];

    if ((v5 & 1) == 0)
    {
      [(HUItemCollectionViewController *)self loadViewIfNeeded];
    }

    if (![objc_opt_class() updateMode] && !-[HUItemCollectionViewController visibilityUpdatesEnabled](self, "visibilityUpdatesEnabled"))
    {
      v6 = [(HUItemCollectionViewController *)self itemManager];
      [v6 endDisableExternalUpdatesWithReason:@"HUItemCollectionViewController_NotVisible"];

      [(HUItemCollectionViewController *)self setVisibilityUpdatesEnabled:1];
    }

    v7 = [(HUItemCollectionViewController *)self itemManager];
    v8 = [v7 diffableDataSourceDisabled];

    if (v8)
    {
      [(HUItemCollectionViewController *)self loadViewIfNeeded];
    }

    v9 = MEMORY[0x277CBEB18];
    v10 = [(HUItemCollectionViewController *)self itemManager];
    v11 = [v10 firstFastUpdateFuture];
    v12 = [v9 arrayWithObject:v11];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [(HUItemCollectionViewController *)self childViewControllersToPreload];
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v22 + 1) + 8 * i) hu_preloadContent];
          [v12 na_safeAddObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    v19 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v3 = [v19 combineAllFutures:v12 ignoringErrors:1 scheduler:v20];
  }

  return v3;
}

- (void)executionEnvironmentRunningStateDidChange:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (![a3 runningState])
  {
    v5 = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
    v6 = [v5 count];
    if (self && v6 >= 4)
    {
      if ([MEMORY[0x277D14CE8] isAMac])
      {

LABEL_11:
        v11 = HFLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
          v15 = 134218240;
          v16 = [v12 count];
          v17 = 2048;
          v18 = 3;
          _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%lu full item update(s) exceed threshold of %li. Canceling and doing full reload", &v15, 0x16u);
        }

        v13 = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
        [v13 na_each:&__block_literal_global_195_0];

        v9 = [(HUItemCollectionViewController *)self itemManager];
        v14 = [v9 reloadAndUpdateAllItemsFromSenderSelector:a2];
LABEL_14:

        return;
      }

      v10 = [MEMORY[0x277D14670] isSpringBoard];

      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
      v15 = 134217984;
      v16 = [v8 count];
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Proceeding with %lu full item update(s)", &v15, 0xCu);
    }

    v9 = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
    [v9 na_each:&__block_literal_global_198_0];
    goto LABEL_14;
  }
}

- (HFItem)hu_presentedItem
{
  v2 = [(HUItemCollectionViewController *)self itemManager];
  v3 = [v2 sourceItem];

  return v3;
}

- (void)recursivelyDisableItemUpdates:(BOOL)a3 withReason:(id)a4
{
  v4 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HUItemCollectionViewController *)self itemManager];
  v8 = v7;
  if (v4)
  {
    [v7 disableExternalUpdatesWithReason:v6];
  }

  else
  {
    [v7 endDisableExternalUpdatesWithReason:v6];
  }

  v9 = MEMORY[0x277CBEB58];
  v10 = [(HUItemCollectionViewController *)self childViewControllers];
  v11 = [v9 setWithArray:v10];

  v12 = [(HUItemCollectionViewController *)self childViewControllersToPreload];
  [v11 addObjectsFromArray:v12];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 recursivelyDisableItemUpdates:v4 withReason:{v6, v19}];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (id)moduleController:(id)a3 presentViewControllerForRequest:(id)a4
{
  v5 = a4;
  [(HUItemCollectionViewController *)self _transformViewControllerForRequest:v5];
  v6 = [(UIViewController *)self hu_performPresentationRequest:v5];

  return v6;
}

- (void)_transformViewControllerForRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 viewController];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;

  v7 = v19;
  if (v19)
  {
    v8 = [v19 preferredStyle];
    v7 = v19;
    if (!v8)
    {
      v9 = [v19 popoverPresentationController];
      v7 = v19;
      if (v9)
      {
        v10 = v9;
        v11 = [v19 popoverPresentationController];
        v12 = [v11 sourceView];

        v7 = v19;
        if (!v12)
        {
          v13 = [(HUItemCollectionViewController *)self collectionView];
          v14 = [v13 indexPathsForSelectedItems];

          if ([v14 count] == 1)
          {
            v15 = [v14 objectAtIndexedSubscript:0];
            v16 = [(HUItemCollectionViewController *)self collectionView];
            v17 = [v16 cellForItemAtIndexPath:v15];

            if (!v17)
            {
              v17 = [(HUItemCollectionViewController *)self collectionView];
            }

            v18 = [v19 popoverPresentationController];
            [v18 setSourceView:v17];
          }

          else
          {
            v15 = [(HUItemCollectionViewController *)self collectionView];
            v17 = [v19 popoverPresentationController];
            [v17 setSourceView:v15];
          }

          v7 = v19;
        }
      }
    }
  }
}

- (void)updateCellForItems:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 diffableDataSourceDisabled];

  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__HUItemCollectionViewController_updateCellForItems___block_invoke;
    v10[3] = &unk_277DC0A30;
    v10[4] = self;
    v7 = [v4 na_map:v10];

    v8 = [(HUItemCollectionViewController *)self collectionView];
    [v8 reloadItemsAtIndexPaths:v7];

    v4 = v7;
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__HUItemCollectionViewController_updateCellForItems___block_invoke_2;
    v9[3] = &unk_277DBAF68;
    v9[4] = self;
    [v4 na_each:v9];
  }
}

id __53__HUItemCollectionViewController_updateCellForItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemManager];
  v5 = [v4 indexPathForItem:v3];

  return v5;
}

void __53__HUItemCollectionViewController_updateCellForItems___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) itemManager];
  v4 = [v3 indexPathForItem:v7];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 itemManager];
    [v5 itemManager:v6 didUpdateResultsForItem:v7 atIndexPath:v4];
  }
}

- (void)reloadCellForItems:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 diffableDataSourceDisabled];

  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__HUItemCollectionViewController_reloadCellForItems___block_invoke;
    v10[3] = &unk_277DC0A30;
    v10[4] = self;
    v7 = [v4 na_map:v10];
    v8 = [(HUItemCollectionViewController *)self collectionView];
    [v8 reloadItemsAtIndexPaths:v7];
  }

  else
  {
    v9 = [(HUItemCollectionViewController *)self itemManager];
    [v9 reloadUIRepresentationForItems:v4 withAnimation:0];
  }
}

id __53__HUItemCollectionViewController_reloadCellForItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemManager];
  v5 = [v4 indexPathForItem:v3];

  return v5;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v7 = a3;
  v4 = [(HUItemCollectionViewController *)self _itemForTextField:?];
  v5 = [(HUItemCollectionViewController *)self moduleControllerForItem:v4];
  v6 = v5;
  if (v4 && v5)
  {
    [v5 textFieldDidBeginEditing:v7 item:v4];
  }

  else if (!v4)
  {
    goto LABEL_7;
  }

  if ([(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v4])
  {
    [(HUItemCollectionViewController *)self textFieldDidBeginEditing:v7 item:v4];
  }

LABEL_7:
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self _itemForTextField:v4];
  v6 = [(HUItemCollectionViewController *)self moduleControllerForItem:v5];
  v7 = v6;
  if (v5)
  {
    if ([v6 shouldManageTextFieldForItem:v5])
    {
      [v7 textDidChange:&stru_2823E0EE8 forTextField:v4 item:v5];
    }

    if ([(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v5])
    {
      [(HUItemCollectionViewController *)self textDidChange:&stru_2823E0EE8 forTextField:v4 item:v5];
    }
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self _itemForTextField:v4];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 text];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "User finished editing text field for %@, entered: %@", &v10, 0x16u);
  }

  v8 = [(HUItemCollectionViewController *)self moduleControllerForItem:v5];
  v9 = v8;
  if (v5)
  {
    if ([v8 shouldManageTextFieldForItem:v5])
    {
      [v9 textFieldDidEndEditing:v4 item:v5];
    }

    if ([(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v5])
    {
      [(HUItemCollectionViewController *)self textFieldDidEndEditing:v4 item:v5];
    }
  }
}

- (void)textFieldDidChange:(id)a3
{
  v9 = [a3 object];
  v4 = [(HUItemCollectionViewController *)self _itemForTextField:?];
  v5 = [(HUItemCollectionViewController *)self moduleControllerForItem:v4];
  v6 = v5;
  if (v4)
  {
    if ([v5 shouldManageTextFieldForItem:v4])
    {
      v7 = [v9 text];
      [v6 textDidChange:v7 forTextField:v9 item:v4];
    }

    if ([(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v4])
    {
      v8 = [v9 text];
      [(HUItemCollectionViewController *)self textDidChange:v8 forTextField:v9 item:v4];
    }
  }
}

- (BOOL)shouldManageTextFieldForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self moduleControllerForItem:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 shouldManageTextFieldForItem:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)textFieldForVisibleItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 indexPathForItem:v4];

  if (v6)
  {
    v7 = [(HUItemCollectionViewController *)self collectionView];
    v8 = [v7 cellForItemAtIndexPath:v6];

    v9 = v8;
    if ([v9 conformsToProtocol:&unk_2824C52F0])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 textField];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)currentTextForTextField:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemCollectionViewController *)self moduleControllerForItem:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 currentTextForTextField:v6 item:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)defaultTextForTextField:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemCollectionViewController *)self moduleControllerForItem:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 defaultTextForTextField:v6 item:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)placeholderTextForTextField:(id)a3 item:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUItemCollectionViewController *)self moduleControllerForItem:v6];
  v9 = v8;
  if (v8)
  {
    [v8 placeholderTextForTextField:v7 item:v6];
  }

  else
  {
    [(HUItemCollectionViewController *)self defaultTextForTextField:v7 item:v6];
  }
  v10 = ;

  return v10;
}

- (id)moduleControllerForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemModuleControllers];
  v6 = [(HUItemCollectionViewController *)self recentlyRemovedItemModuleControllers];
  v7 = [v5 setByAddingObjectsFromSet:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HUItemCollectionViewController_moduleControllerForItem___block_invoke;
  v11[3] = &unk_277DC09E8;
  v12 = v4;
  v8 = v4;
  v9 = [v7 na_firstObjectPassingTest:v11];

  return v9;
}

uint64_t __58__HUItemCollectionViewController_moduleControllerForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 module];
  if ([v4 containsItem:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) moduleIdentifier];
    v7 = [v3 moduleIdentifier];
    v5 = [v6 isEqualToString:v7];
  }

  return v5;
}

- (void)cleanupRecentlyRemovedModuleControllers
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(HUItemCollectionViewController *)self recentlyRemovedItemModuleControllers];
  v4 = [v3 copy];

  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 allDisplayedItems];
  v7 = [v6 na_map:&__block_literal_global_207];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
  v11 = v8;
  if (!v9)
  {
LABEL_15:

    goto LABEL_16;
  }

  v12 = v9;
  v13 = 0;
  v14 = *v26;
  *&v10 = 138412802;
  v24 = v10;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v26 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v25 + 1) + 8 * i);
      v17 = [v16 moduleIdentifier];
      v18 = [v7 containsObject:v17];

      if ((v18 & 1) == 0)
      {
        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v16 moduleIdentifier];
          *buf = v24;
          v30 = self;
          v31 = 2112;
          v32 = v16;
          v33 = 2112;
          v34 = v20;
          _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@: Finishing removal of module controller %@ (%@) because no items refer to it anymore", buf, 0x20u);
        }

        v21 = [(HUItemCollectionViewController *)self recentlyRemovedItemModuleControllers];
        [v21 removeObject:v16];

        v13 = 1;
      }
    }

    v12 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
  }

  while (v12);

  if (v13)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(HUItemCollectionViewController *)self recentlyRemovedItemModuleControllers];
      v23 = [v22 na_map:&__block_literal_global_211_0];
      *buf = 138412546;
      v30 = self;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: Module controllers awaiting removal remaining: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (id)_itemForTextField:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self textFieldToCellMap];
  v6 = [v5 objectForKey:v4];

  v7 = v6;
  if ([v7 conformsToProtocol:&unk_2824AB590])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 item];

  if (v10)
  {
    v11 = [v9 item];
  }

  else
  {
    v12 = [(HUItemCollectionViewController *)self collectionView];
    v13 = [v12 indexPathForCell:v7];

    if (v13)
    {
      v14 = [(HUItemCollectionViewController *)self itemManager];
      v11 = [v14 displayedItemAtIndexPath:v13];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)_prioritizeIconPreloadIfNeeded
{
  if (![(HUItemCollectionViewController *)self iconPreloadIsPrioritized])
  {
    v3 = [(HUItemCollectionViewController *)self collectionView];
    v4 = [v3 indexPathsForVisibleItems];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(HUItemCollectionViewController *)self collectionView];
      v7 = [v6 indexPathsForVisibleItems];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64__HUItemCollectionViewController__prioritizeIconPreloadIfNeeded__block_invoke;
      v12[3] = &unk_277DBBD18;
      v12[4] = self;
      v8 = [v7 na_map:v12];

      v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
      v10 = [(HUItemCollectionViewController *)self _displayedPackageIconDescriptorsForItems:v9];

      v11 = [MEMORY[0x277D180B8] sharedInstance];
      [v11 prioritizeIconDescriptors:v10];

      [(HUItemCollectionViewController *)self setIconPreloadIsPrioritized:1];
    }
  }
}

id __64__HUItemCollectionViewController__prioritizeIconPreloadIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemManager];
  v5 = [v4 displayedItemAtIndexPath:v3];

  return v5;
}

- (void)_preloadIconsIfNeededWithItems:(id)a3
{
  v4 = a3;
  [(HUItemCollectionViewController *)self _cancelIconPreload];
  v7 = [(HUItemCollectionViewController *)self _displayedPackageIconDescriptorsForItems:v4];

  if ([v7 count])
  {
    v5 = [MEMORY[0x277D180B8] sharedInstance];
    v6 = [v5 prefetchIconDescriptors:v7];
    [(HUItemCollectionViewController *)self setIconPreloadCancelable:v6];
  }

  [(HUItemCollectionViewController *)self _prioritizeIconPreloadIfNeeded];
}

- (id)_displayedPackageIconDescriptorsForItems:(id)a3
{
  v3 = [a3 allObjects];
  v4 = [v3 na_map:&__block_literal_global_214];

  return v4;
}

id __75__HUItemCollectionViewController__displayedPackageIconDescriptorsForItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    objc_opt_class();
    v7 = [v2 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;
  }

  return v6;
}

- (void)_cancelIconPreload
{
  v3 = [(HUItemCollectionViewController *)self iconPreloadCancelable];
  [v3 cancel];

  [(HUItemCollectionViewController *)self setIconPreloadCancelable:0];
}

@end
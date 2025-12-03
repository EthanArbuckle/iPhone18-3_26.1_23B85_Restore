@interface HUItemCollectionViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)shouldManageTextFieldForItem:(id)item;
- (BOOL)shouldPerformUpdateWithAnimationForDiffableDataItemManager:(id)manager;
- (BOOL)textFieldShouldClear:(id)clear;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HFItem)hu_presentedItem;
- (HUItemCollectionViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (NSString)description;
- (id)_displayedPackageIconDescriptorsForItems:(id)items;
- (id)_itemForTextField:(id)field;
- (id)_layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (id)_sortedItemMapFrom:(id)from;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)compositionalLayoutConfigurationForTraitCollection:(id)collection;
- (id)currentTextForTextField:(id)field item:(id)item;
- (id)defaultTextForTextField:(id)field item:(id)item;
- (id)hu_preloadContent;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)itemManager:(id)manager futureToUpdateItems:(id)items itemUpdateOptions:(id)options;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)moduleController:(id)controller presentViewControllerForRequest:(id)request;
- (id)moduleControllerForItem:(id)item;
- (id)placeholderTextForTextField:(id)field item:(id)item;
- (id)textFieldForVisibleItem:(id)item;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_cancelIconPreload;
- (void)_commonInitWithItemManager:(id)manager;
- (void)_configureLayout;
- (void)_performStandardUpdateForCell:(id)cell forItem:(id)item;
- (void)_preloadIconsIfNeededWithItems:(id)items;
- (void)_prioritizeIconPreloadIfNeeded;
- (void)_routeUpdateForCell:(id)cell forItem:(id)item;
- (void)_transformViewControllerForRequest:(id)request;
- (void)_updateTitle;
- (void)cleanupRecentlyRemovedModuleControllers;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)diffableDataItemManager:(id)manager prefetchResourcesForItems:(id)items;
- (void)executionEnvironmentRunningStateDidChange:(id)change;
- (void)itemManager:(id)manager didChangeHome:(id)home;
- (void)itemManager:(id)manager didInsertItem:(id)item atIndexPath:(id)path;
- (void)itemManager:(id)manager didInsertSections:(id)sections;
- (void)itemManager:(id)manager didMoveItem:(id)item fromIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)itemManager:(id)manager didMoveSection:(int64_t)section toSection:(int64_t)toSection;
- (void)itemManager:(id)manager didRemoveItem:(id)item atIndexPath:(id)path;
- (void)itemManager:(id)manager didRemoveSections:(id)sections;
- (void)itemManager:(id)manager didUpdateItemModules:(id)modules;
- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path;
- (void)itemManager:(id)manager performUpdateRequest:(id)request;
- (void)itemManagerDidUpdate:(id)update;
- (void)recursivelyDisableItemUpdates:(BOOL)updates withReason:(id)reason;
- (void)reloadCellForItems:(id)items;
- (void)setUpDiffableDataItemManagerIfNeeded;
- (void)setViewVisible:(BOOL)visible;
- (void)setWantsPreferredContentSize:(BOOL)size;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChange:(id)change;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateCellForItems:(id)items;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUItemCollectionViewController

- (void)_commonInitWithItemManager:(id)manager
{
  managerCopy = manager;
  objc_storeStrong(&self->_itemManager, manager);
  [(HFItemManager *)self->_itemManager setDelegate:self];
  array = [MEMORY[0x277CBEB18] array];
  foregroundUpdateFutures = self->_foregroundUpdateFutures;
  self->_foregroundUpdateFutures = array;

  array2 = [MEMORY[0x277CBEB18] array];
  viewVisibleFutures = self->_viewVisibleFutures;
  self->_viewVisibleFutures = array2;

  v9 = [MEMORY[0x277CBEB58] set];
  registeredCellClasses = self->_registeredCellClasses;
  self->_registeredCellClasses = v9;

  v11 = [MEMORY[0x277CBEB58] set];
  internalItemModuleControllers = self->_internalItemModuleControllers;
  self->_internalItemModuleControllers = v11;

  v13 = [MEMORY[0x277CBEB58] set];
  recentlyRemovedItemModuleControllers = self->_recentlyRemovedItemModuleControllers;
  self->_recentlyRemovedItemModuleControllers = v13;

  weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
  textFieldToCellMap = self->_textFieldToCellMap;
  self->_textFieldToCellMap = weakToWeakObjectsMapTable;

  self->_iconPreloadIsPrioritized = 0;
  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  [mEMORY[0x277D14670] addObserver:self];

  if (![objc_opt_class() updateMode])
  {
    [managerCopy disableExternalUpdatesWithReason:@"HUItemCollectionViewController_NotVisible"];
  }

  [(HUItemCollectionViewController *)self _updateTitle];
}

- (HUItemCollectionViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = HUItemCollectionViewController;
  v7 = [(HUCollectionViewController *)&v10 initWithCollectionViewLayout:layout];
  v8 = v7;
  if (v7)
  {
    [(HUItemCollectionViewController *)v7 _commonInitWithItemManager:managerCopy];
  }

  return v8;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)manager
{
  managerCopy = manager;
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
    [(HUItemCollectionViewController *)v10 _commonInitWithItemManager:managerCopy];
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

- (void)setWantsPreferredContentSize:(BOOL)size
{
  if (self->_wantsPreferredContentSize != size)
  {
    self->_wantsPreferredContentSize = size;
    if (size)
    {
      collectionView = [(HUItemCollectionViewController *)self collectionView];
      [collectionView contentSize];
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
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  if ([itemManager diffableDataSourceDisabled])
  {
  }

  else
  {
    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    diffableDataSource = [itemManager2 diffableDataSource];

    if (!diffableDataSource)
    {
      itemManager3 = [(HUItemCollectionViewController *)self itemManager];
      v7 = objc_opt_class();

      v8 = objc_opt_class();
      itemManager4 = [(HUItemCollectionViewController *)self itemManager];
      objc_initWeak(&location, itemManager4);

      objc_initWeak(&from, self);
      v10 = objc_alloc(MEMORY[0x277D752D0]);
      collectionView = [(HUItemCollectionViewController *)self collectionView];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __70__HUItemCollectionViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke;
      v23[3] = &unk_277DC0840;
      objc_copyWeak(&v24, &from);
      v25[1] = a2;
      objc_copyWeak(v25, &location);
      v25[2] = v7;
      v25[3] = v8;
      v12 = [v10 initWithCollectionView:collectionView cellProvider:v23];

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
      reorderingHandlers = [v12 reorderingHandlers];
      [reorderingHandlers setCanReorderItemHandler:v19];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __70__HUItemCollectionViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke_3;
      v17[3] = &unk_277DC08B8;
      objc_copyWeak(&v18, &from);
      reorderingHandlers2 = [v12 reorderingHandlers];
      [reorderingHandlers2 setDidReorderHandler:v17];

      itemManager5 = [(HUItemCollectionViewController *)self itemManager];
      [itemManager5 setDiffableDataSource:v12];

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

- (id)_sortedItemMapFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_new();
  sectionTransactions = [fromCopy sectionTransactions];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HUItemCollectionViewController__sortedItemMapFrom___block_invoke;
  v8[3] = &unk_277DC08E0;
  v6 = v4;
  v9 = v6;
  [sectionTransactions na_each:v8];

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
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  collectionView = [(HUItemCollectionViewController *)self collectionView];
  [collectionView setBackgroundColor:systemBackgroundColor];

  collectionView2 = [(HUItemCollectionViewController *)self collectionView];
  [collectionView2 setPrefetchDataSource:self];

  collectionView3 = [(HUItemCollectionViewController *)self collectionView];
  [collectionView3 setPrefetchingEnabled:1];

  if ([objc_opt_class() updateMode] == 1)
  {
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v9 = [itemManager reloadAndUpdateAllItemsFromSenderSelector:a2];
  }

  collectionView4 = [(HUItemCollectionViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"HUItemCollectionViewHeader"];

  collectionView5 = [(HUItemCollectionViewController *)self collectionView];
  [collectionView5 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D0] withReuseIdentifier:@"HUItemCollectionViewFooter"];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v26 = *MEMORY[0x277D85DE8];
  [(HUItemCollectionViewController *)self _cancelIconPreload];
  childViewControllersAtViewWillDisappearTime = [(HUItemCollectionViewController *)self childViewControllersAtViewWillDisappearTime];
  if (![objc_opt_class() updateMode])
  {
    v6 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:MEMORY[0x277D85CD0]];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__HUItemCollectionViewController_viewWillAppear___block_invoke;
    v23[3] = &unk_277DC0908;
    v23[4] = self;
    v24 = childViewControllersAtViewWillDisappearTime;
    v7 = [v6 performCancelableBlock:v23];
    [(HUItemCollectionViewController *)self setDeferredVisibilityUpdate:v7];
  }

  [(HUItemCollectionViewController *)self setChildViewControllersAtViewWillDisappearTime:0];
  v22.receiver = self;
  v22.super_class = HUItemCollectionViewController;
  [(HUItemCollectionViewController *)&v22 viewWillAppear:appearCopy];
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [(HUItemCollectionViewController *)self setChildViewControllersAtViewWillAppearTime:weakObjectsHashTable];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  childViewControllers = [(HUItemCollectionViewController *)self childViewControllers];
  v10 = [childViewControllers countByEnumeratingWithState:&v18 objects:v25 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        childViewControllersAtViewWillAppearTime = [(HUItemCollectionViewController *)self childViewControllersAtViewWillAppearTime];
        [childViewControllersAtViewWillAppearTime addObject:v14];

        [v14 beginAppearanceTransition:1 animated:appearCopy];
        ++v13;
      }

      while (v11 != v13);
      v11 = [childViewControllers countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v11);
  }

  collectionView = [(HUItemCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  [visibleCells na_each:&__block_literal_global_183];
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

- (void)setViewVisible:(BOOL)visible
{
  if (self->_viewVisible != visible)
  {
    v11 = v3;
    v12 = v4;
    self->_viewVisible = visible;
    viewVisibleFutures = [(HUItemCollectionViewController *)self viewVisibleFutures];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__HUItemCollectionViewController_setViewVisible___block_invoke;
    v9[3] = &__block_descriptor_33_e18_v16__0__NAFuture_8l;
    visibleCopy = visible;
    [viewVisibleFutures na_each:v9];

    viewVisibleFutures2 = [(HUItemCollectionViewController *)self viewVisibleFutures];
    [viewVisibleFutures2 removeAllObjects];
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

- (void)viewDidAppear:(BOOL)appear
{
  v21 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HUItemCollectionViewController;
  [(HUItemCollectionViewController *)&v17 viewDidAppear:appear];
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_textFieldDidChange_ name:*MEMORY[0x277D770B0] object:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  childViewControllersAtViewWillAppearTime = [(HUItemCollectionViewController *)self childViewControllersAtViewWillAppearTime];
  v9 = [childViewControllersAtViewWillAppearTime countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(childViewControllersAtViewWillAppearTime);
        }

        [*(*(&v13 + 1) + 8 * v12++) endAppearanceTransition];
      }

      while (v10 != v12);
      v10 = [childViewControllersAtViewWillAppearTime countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v34 = *MEMORY[0x277D85DE8];
  if (![objc_opt_class() updateMode])
  {
    if ([(HUItemCollectionViewController *)self visibilityUpdatesEnabled])
    {
      itemManager = [(HUItemCollectionViewController *)self itemManager];
      [itemManager disableExternalUpdatesWithReason:@"HUItemCollectionViewController_NotVisible"];

      [(HUItemCollectionViewController *)self setVisibilityUpdatesEnabled:0];
    }

    deferredVisibilityUpdate = [(HUItemCollectionViewController *)self deferredVisibilityUpdate];
    [deferredVisibilityUpdate cancel];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    childViewControllers = [(HUItemCollectionViewController *)self childViewControllers];
    v8 = [childViewControllers countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(childViewControllers);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          if ([v12 conformsToProtocol:&unk_28249D628])
          {
            itemManager2 = [v12 itemManager];
            [itemManager2 disableExternalUpdatesWithReason:@"HUItemCollectionViewController_ParentNotVisible"];
          }
        }

        v9 = [childViewControllers countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }
  }

  [(HUItemCollectionViewController *)self setChildViewControllersAtViewWillAppearTime:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770B0] object:0];

  v27.receiver = self;
  v27.super_class = HUItemCollectionViewController;
  [(HUItemCollectionViewController *)&v27 viewWillDisappear:disappearCopy];
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [(HUItemCollectionViewController *)self setChildViewControllersAtViewWillDisappearTime:weakObjectsHashTable];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  childViewControllers2 = [(HUItemCollectionViewController *)self childViewControllers];
  v17 = [childViewControllers2 countByEnumeratingWithState:&v23 objects:v32 count:16];
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
          objc_enumerationMutation(childViewControllers2);
        }

        v21 = *(*(&v23 + 1) + 8 * j);
        childViewControllersAtViewWillDisappearTime = [(HUItemCollectionViewController *)self childViewControllersAtViewWillDisappearTime];
        [childViewControllersAtViewWillDisappearTime addObject:v21];

        [v21 beginAppearanceTransition:0 animated:disappearCopy];
      }

      v18 = [childViewControllers2 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v18);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v18 = *MEMORY[0x277D85DE8];
  [(HUItemCollectionViewController *)self setViewVisible:0];
  v16.receiver = self;
  v16.super_class = HUItemCollectionViewController;
  [(HUItemCollectionViewController *)&v16 viewDidDisappear:disappearCopy];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllersAtViewWillDisappearTime = [(HUItemCollectionViewController *)self childViewControllersAtViewWillDisappearTime];
  v6 = [childViewControllersAtViewWillDisappearTime countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(childViewControllersAtViewWillDisappearTime);
        }

        [*(*(&v12 + 1) + 8 * v9++) endAppearanceTransition];
      }

      while (v7 != v9);
      v7 = [childViewControllersAtViewWillDisappearTime countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  collectionView = [(HUItemCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  [visibleCells na_each:&__block_literal_global_117];
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
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    [collectionView contentSize];
    [(HUItemCollectionViewController *)self preferredContentSizeForCollectionViewContentSize:?];
    [(HUItemCollectionViewController *)self setPreferredContentSize:?];
  }

  [(HUItemCollectionViewController *)self _prioritizeIconPreloadIfNeeded];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  v6 = [(HUItemCollectionViewController *)self itemModuleControllers:item];
  v7 = [v6 count];

  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemCollectionViewController.m" lineNumber:395 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUItemCollectionViewController cellClassForItem:indexPath:]", objc_opt_class()}];
  }

  return 0;
}

- (id)compositionalLayoutConfigurationForTraitCollection:(id)collection
{
  objc_opt_class();
  collectionViewLayout = [(HUItemCollectionViewController *)self collectionViewLayout];
  if (objc_opt_isKindOfClass())
  {
    v5 = collectionViewLayout;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  configuration = [v6 configuration];

  if (configuration)
  {
    defaultConfiguration = configuration;
  }

  else
  {
    defaultConfiguration = [MEMORY[0x277D752C0] defaultConfiguration];
  }

  v9 = defaultConfiguration;

  return v9;
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  NSLog(&cfstr_DoesnTImplemen.isa, v5, v6);

  return 0;
}

- (void)_routeUpdateForCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  [(HUItemCollectionViewController *)self _performStandardUpdateForCell:cellCopy forItem:itemCopy];
  selfCopy = [(HUItemCollectionViewController *)self moduleControllerForItem:itemCopy];
  v9 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy configureCell:cellCopy forItem:itemCopy];
}

- (void)_performStandardUpdateForCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  if (objc_opt_respondsToSelector())
  {
    v7 = cellCopy;
    v8 = [(HUItemCollectionViewController *)self automaticDisablingReasonsForItem:itemCopy];
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    home = [itemManager home];
    hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

    if (hf_currentUserIsAdministrator)
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      latestResults = [itemCopy latestResults];
      v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F10]];

      if (v14)
      {
        LOBYTE(v12) = [v14 BOOLValue];
      }

      else
      {
        v12 = (v8 >> 1) & 1;
      }
    }

    latestResults2 = [itemCopy latestResults];
    v16 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v16 BOOLValue];

    [v7 setDisabled:(bOOLValue | v12) & 1];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(HUItemCollectionViewController *)self shouldManageTextFieldForItem:itemCopy])
  {
    v18 = cellCopy;
    v19 = [(HUItemCollectionViewController *)self moduleControllerForItem:itemCopy];
    v20 = v19;
    if (v19)
    {
      selfCopy = v19;
    }

    else
    {
      selfCopy = self;
    }

    v22 = selfCopy;

    textField = [v18 textField];
    v24 = [(HUItemCollectionViewController *)v22 defaultTextForTextField:textField item:itemCopy];

    textField2 = [v18 textField];
    v26 = [(HUItemCollectionViewController *)v22 currentTextForTextField:textField2 item:itemCopy];

    textField3 = [v18 textField];
    v28 = [(HUItemCollectionViewController *)v22 placeholderTextForTextField:textField3 item:itemCopy];

    textField4 = [v18 textField];
    [textField4 setPlaceholder:v28];

    if (v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v24;
    }

    textField5 = [v18 textField];
    [textField5 setText:v30];

    textField6 = [v18 textField];

    [textField6 setAutocapitalizationType:1];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v33 = cellCopy;
    if (objc_opt_respondsToSelector())
    {
      [v33 setResizingDelegate:self];
    }
  }
}

- (void)_updateTitle
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];
  if (sourceItem)
  {
    v4 = sourceItem;
    automaticallyUpdatesViewControllerTitle = [(HUItemCollectionViewController *)self automaticallyUpdatesViewControllerTitle];

    if (!automaticallyUpdatesViewControllerTitle)
    {
      return;
    }

    itemManager = [(HUItemCollectionViewController *)self itemManager];
    sourceItem2 = [itemManager sourceItem];
    latestResults = [sourceItem2 latestResults];
    v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    navigationItem = [(HUItemCollectionViewController *)self navigationItem];
    [navigationItem setTitle:v8];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];
  v6 = [v3 appendObject:sourceItem withName:@"sourceItem"];

  build = [v3 build];

  return build;
}

- (id)listContentConfigurationForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  if (*MEMORY[0x277D767D8] == kind)
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
  collectionViewLayout = [(HUItemCollectionViewController *)self collectionViewLayout];
  if (objc_opt_isKindOfClass())
  {
    v4 = collectionViewLayout;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  if (v8)
  {
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    traitCollection = [collectionView traitCollection];
    v7 = [(HUItemCollectionViewController *)self compositionalLayoutConfigurationForTraitCollection:traitCollection];
    [v8 setConfiguration:v7];
  }
}

- (id)_layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__HUItemCollectionViewController__layoutSectionForSection_layoutEnvironment___block_invoke;
  v15[3] = &unk_277DC0950;
  v15[4] = self;
  v15[5] = section;
  v7 = __77__HUItemCollectionViewController__layoutSectionForSection_layoutEnvironment___block_invoke(v15);
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v9 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  v10 = [v7 collectionLayoutSectionForSectionWithIdentifier:v9 layoutEnvironment:environmentCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(HUItemCollectionViewController *)self layoutSectionForSection:section layoutEnvironment:environmentCopy];
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

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  numberOfSections = [itemManager numberOfSections];

  return numberOfSections;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager displayedItemsInSection:section];
  v7 = [v6 count];

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v8 = [itemManager displayedItemAtIndexPath:pathCopy];

  v9 = [(HUItemCollectionViewController *)self moduleControllerForItem:v8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__HUItemCollectionViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v26[3] = &unk_277DC0978;
  v10 = v9;
  v27 = v10;
  v11 = v8;
  v28 = v11;
  selfCopy = self;
  v12 = pathCopy;
  v30 = v12;
  v13 = __72__HUItemCollectionViewController_collectionView_cellForItemAtIndexPath___block_invoke(v26);
  if (!v13)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemCollectionViewController.m" lineNumber:589 description:{@"No cell class specified for item: %@", v11}];
  }

  registeredCellClasses = [(HUItemCollectionViewController *)self registeredCellClasses];
  v15 = [registeredCellClasses containsObject:v13];

  if ((v15 & 1) == 0)
  {
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    v17 = NSStringFromClass(v13);
    [collectionView registerClass:v13 forCellWithReuseIdentifier:v17];

    registeredCellClasses2 = [(HUItemCollectionViewController *)self registeredCellClasses];
    [registeredCellClasses2 addObject:v13];
  }

  collectionView2 = [(HUItemCollectionViewController *)self collectionView];
  v20 = NSStringFromClass(v13);
  v21 = [collectionView2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:v12];

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

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = HUItemCollectionViewController;
  [(HUCollectionViewController *)&v19 collectionView:view willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
  if ([cellCopy conformsToProtocol:&unk_2824C52F0])
  {
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v11 = [itemManager displayedItemAtIndexPath:pathCopy];

    if (v11 && [(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v11])
    {
      v12 = cellCopy;
      textField = [v12 textField];
      [textField setDelegate:self];

      textFieldToCellMap = [(HUItemCollectionViewController *)self textFieldToCellMap];
      textField2 = [v12 textField];
      [textFieldToCellMap setObject:v12 forKey:textField2];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = cellCopy;
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

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = HUItemCollectionViewController;
  [(HUCollectionViewController *)&v19 collectionView:view didEndDisplayingCell:cellCopy forItemAtIndexPath:pathCopy];
  if ([cellCopy conformsToProtocol:&unk_2824C52F0])
  {
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v11 = [itemManager displayedItemAtIndexPath:pathCopy];

    if (v11 && [(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v11])
    {
      v12 = cellCopy;
      textField = [v12 textField];
      [textField setDelegate:0];

      textFieldToCellMap = [(HUItemCollectionViewController *)self textFieldToCellMap];
      textField2 = [v12 textField];

      [textFieldToCellMap removeObjectForKey:textField2];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = cellCopy;
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  v9 = *MEMORY[0x277D767D8];
  if (*MEMORY[0x277D767D8] == kind)
  {
    v10 = @"HUItemCollectionViewHeader";
  }

  else
  {
    v10 = @"HUItemCollectionViewFooter";
  }

  kindCopy = kind;
  v12 = [view dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v10 forIndexPath:pathCopy];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  section = [pathCopy section];
  if (v9 == kind)
  {
    v15 = [itemManager titleForSection:section];

    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    [itemManager2 attributedTitleForSection:{objc_msgSend(pathCopy, "section")}];
  }

  else
  {
    v15 = [itemManager footerTitleForSection:section];

    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    [itemManager2 attributedFooterTitleForSection:{objc_msgSend(pathCopy, "section")}];
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

  v21 = [(HUItemCollectionViewController *)self listContentConfigurationForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];

  if (v9 == kind || !v17)
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  if ([+[HUItemCollectionViewController superclass](HUItemCollectionViewController "superclass")])
  {
    v14.receiver = self;
    v14.super_class = HUItemCollectionViewController;
    [(HUItemCollectionViewController *)&v14 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:pathCopy];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: User tapped item: %@", buf, 0x16u);
  }

  v12 = [(HUItemCollectionViewController *)self moduleControllerForItem:v10];
  v13 = v12;
  if (v12 && ![v12 didSelectItem:v10])
  {
    [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  }
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v7 = [itemManager displayedItemAtIndexPath:pathCopy];

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

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v6 = MEMORY[0x277CBEB98];
  pathsCopy = paths;
  indexPathsForVisibleItems = [view indexPathsForVisibleItems];
  v9 = [v6 setWithArray:indexPathsForVisibleItems];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __75__HUItemCollectionViewController_collectionView_prefetchItemsAtIndexPaths___block_invoke;
  v17 = &unk_277DC09A0;
  v10 = v9;
  v18 = v10;
  selfCopy = self;
  v11 = [pathsCopy na_map:&v14];

  if ([v11 count])
  {
    mEMORY[0x277D180B8] = [MEMORY[0x277D180B8] sharedInstance];
    v13 = [mEMORY[0x277D180B8] prefetchIconDescriptors:v11];
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

- (id)itemManager:(id)manager futureToUpdateItems:(id)items itemUpdateOptions:(id)options
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB18];
  optionsCopy = options;
  v8 = [v6 arrayWithCapacity:2];
  v9 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D13BB0]];

  LOBYTE(optionsCopy) = [v9 BOOLValue];
  if ((optionsCopy & 1) == 0)
  {
    mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
    runningState = [mEMORY[0x277D14670] runningState];

    if (runningState)
    {
      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Delaying full item update until the application is active", buf, 2u);
      }

      v13 = objc_alloc_init(MEMORY[0x277D2C900]);
      [v8 addObject:v13];
      foregroundUpdateFutures = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
      [foregroundUpdateFutures addObject:v13];
    }

    if (![(HUItemCollectionViewController *)self isViewVisible])
    {
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
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
      viewVisibleFutures = [(HUItemCollectionViewController *)self viewVisibleFutures];
      [viewVisibleFutures addObject:v19];
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

- (void)itemManager:(id)manager performUpdateRequest:(id)request
{
  requestCopy = request;
  managerCopy = manager;
  changes = [requestCopy changes];
  allOperations = [changes allOperations];
  v10 = [allOperations na_any:&__block_literal_global_183_0];

  if (([requestCopy isInitialUpdate] & 1) != 0 || (-[HUItemCollectionViewController isViewLoaded](self, "isViewLoaded") & 1) == 0)
  {
    [(HUItemCollectionViewController *)self performBatchCollectionViewUpdatesForUpdateRequest:requestCopy reloadOnly:1];
    if ([(HUItemCollectionViewController *)self isViewLoaded])
    {
      collectionView = [(HUItemCollectionViewController *)self collectionView];
      [collectionView reloadData];
    }

    itemManager = [(HUItemCollectionViewController *)self itemManager];
    allDisplayedItems = [itemManager allDisplayedItems];
    [(HUItemCollectionViewController *)self _preloadIconsIfNeededWithItems:allDisplayedItems];
  }

  else if (([(HUItemCollectionViewController *)self isLayoutDependentOnItemState]| v10))
  {
    collectionView2 = [(HUItemCollectionViewController *)self collectionView];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __67__HUItemCollectionViewController_itemManager_performUpdateRequest___block_invoke_2;
    v18 = &unk_277DB7558;
    selfCopy = self;
    v20 = requestCopy;
    [collectionView2 performBatchUpdates:&v15 completion:0];
  }

  else
  {
    [requestCopy performWithOptions:0];
  }

  [(HUItemCollectionViewController *)self itemManagerDidUpdate:managerCopy, v15, v16, v17, v18, selfCopy];
}

- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path
{
  pathCopy = path;
  itemCopy = item;
  collectionView = [(HUItemCollectionViewController *)self collectionView];
  v10 = [collectionView cellForItemAtIndexPath:pathCopy];

  [(HUItemCollectionViewController *)self _routeUpdateForCell:v10 forItem:itemCopy];
  if (objc_opt_respondsToSelector())
  {
    [v10 updateUIWithAnimation:1];
  }
}

- (void)itemManager:(id)manager didRemoveItem:(id)item atIndexPath:(id)path
{
  v9[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  collectionView = [(HUItemCollectionViewController *)self collectionView];
  v9[0] = pathCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [collectionView deleteItemsAtIndexPaths:v8];
}

- (void)itemManager:(id)manager didInsertItem:(id)item atIndexPath:(id)path
{
  v9[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  collectionView = [(HUItemCollectionViewController *)self collectionView];
  v9[0] = pathCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [collectionView insertItemsAtIndexPaths:v8];
}

- (void)itemManager:(id)manager didMoveItem:(id)item fromIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if (![(HUItemCollectionViewController *)self suppressCollectionViewUpdatesForReorderCommit])
  {
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    v10 = [collectionView cellForItemAtIndexPath:pathCopy];

    if (objc_opt_respondsToSelector())
    {
      [v10 updateUIWithAnimation:1];
    }

    collectionView2 = [(HUItemCollectionViewController *)self collectionView];
    [collectionView2 moveItemAtIndexPath:pathCopy toIndexPath:indexPathCopy];
  }
}

- (void)itemManager:(id)manager didRemoveSections:(id)sections
{
  sectionsCopy = sections;
  collectionView = [(HUItemCollectionViewController *)self collectionView];
  [collectionView deleteSections:sectionsCopy];
}

- (void)itemManager:(id)manager didInsertSections:(id)sections
{
  sectionsCopy = sections;
  collectionView = [(HUItemCollectionViewController *)self collectionView];
  [collectionView insertSections:sectionsCopy];
}

- (void)itemManager:(id)manager didMoveSection:(int64_t)section toSection:(int64_t)toSection
{
  collectionView = [(HUItemCollectionViewController *)self collectionView];
  [collectionView moveSection:section toSection:toSection];
}

- (void)itemManager:(id)manager didChangeHome:(id)home
{
  if ([(HUItemCollectionViewController *)self hasFinishedInitialLoad:manager])
  {
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    [collectionView layoutIfNeeded];
  }
}

- (void)itemManager:(id)manager didUpdateItemModules:(id)modules
{
  v53 = *MEMORY[0x277D85DE8];
  modulesCopy = modules;
  itemModuleControllers = [(HUItemCollectionViewController *)self itemModuleControllers];
  v7 = [itemModuleControllers na_map:&__block_literal_global_187_1];

  v8 = MEMORY[0x277D14AE8];
  v34 = modulesCopy;
  v9 = [MEMORY[0x277CBEB98] setWithArray:modulesCopy];
  v33 = v7;
  v10 = [v8 diffFromSet:v7 toSet:v9];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  additions = [v10 additions];
  v12 = [additions countByEnumeratingWithState:&v41 objects:v52 count:16];
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
          objc_enumerationMutation(additions);
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

      v14 = [additions countByEnumeratingWithState:&v41 objects:v52 count:16];
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
            moduleIdentifier = [v27 moduleIdentifier];
            *buf = 138412802;
            selfCopy = self;
            v47 = 2112;
            v48 = v27;
            v49 = 2112;
            v50 = moduleIdentifier;
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

  additions2 = [v10 additions];

  if (additions2)
  {
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    [collectionView setNeedsLayout];
  }
}

BOOL __67__HUItemCollectionViewController_itemManager_didUpdateItemModules___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 module];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)itemManagerDidUpdate:(id)update
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HUItemCollectionViewController *)self wantsPreferredContentSize])
  {
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    [collectionView contentSize];
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

- (void)diffableDataItemManager:(id)manager prefetchResourcesForItems:(id)items
{
  itemsCopy = items;
  if (([MEMORY[0x277D14670] isSpringBoard] & 1) == 0)
  {
    [(HUItemCollectionViewController *)self _preloadIconsIfNeededWithItems:itemsCopy];
  }
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  itemsCopy = items;
  [(HUItemCollectionViewController *)self itemManagerDidUpdate:manager];
  [(HUItemCollectionViewController *)self cleanupRecentlyRemovedModuleControllers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__HUItemCollectionViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke;
  v9[3] = &unk_277DBAF68;
  v9[4] = self;
  [itemsCopy na_each:v9];
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

- (BOOL)shouldPerformUpdateWithAnimationForDiffableDataItemManager:(id)manager
{
  view = [(HUItemCollectionViewController *)self view];
  window = [view window];
  v5 = window != 0;

  return v5;
}

- (id)hu_preloadContent
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HUItemCollectionViewController *)self hasFinishedInitialLoad])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    diffableDataSourceDisabled = [itemManager diffableDataSourceDisabled];

    if ((diffableDataSourceDisabled & 1) == 0)
    {
      [(HUItemCollectionViewController *)self loadViewIfNeeded];
    }

    if (![objc_opt_class() updateMode] && !-[HUItemCollectionViewController visibilityUpdatesEnabled](self, "visibilityUpdatesEnabled"))
    {
      itemManager2 = [(HUItemCollectionViewController *)self itemManager];
      [itemManager2 endDisableExternalUpdatesWithReason:@"HUItemCollectionViewController_NotVisible"];

      [(HUItemCollectionViewController *)self setVisibilityUpdatesEnabled:1];
    }

    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    diffableDataSourceDisabled2 = [itemManager3 diffableDataSourceDisabled];

    if (diffableDataSourceDisabled2)
    {
      [(HUItemCollectionViewController *)self loadViewIfNeeded];
    }

    v9 = MEMORY[0x277CBEB18];
    itemManager4 = [(HUItemCollectionViewController *)self itemManager];
    firstFastUpdateFuture = [itemManager4 firstFastUpdateFuture];
    v12 = [v9 arrayWithObject:firstFastUpdateFuture];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    childViewControllersToPreload = [(HUItemCollectionViewController *)self childViewControllersToPreload];
    v14 = [childViewControllersToPreload countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(childViewControllersToPreload);
          }

          hu_preloadContent = [*(*(&v22 + 1) + 8 * i) hu_preloadContent];
          [v12 na_safeAddObject:hu_preloadContent];
        }

        v15 = [childViewControllersToPreload countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    v19 = MEMORY[0x277D2C900];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    futureWithNoResult = [v19 combineAllFutures:v12 ignoringErrors:1 scheduler:mainThreadScheduler];
  }

  return futureWithNoResult;
}

- (void)executionEnvironmentRunningStateDidChange:(id)change
{
  v19 = *MEMORY[0x277D85DE8];
  if (![change runningState])
  {
    foregroundUpdateFutures = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
    v6 = [foregroundUpdateFutures count];
    if (self && v6 >= 4)
    {
      if ([MEMORY[0x277D14CE8] isAMac])
      {

LABEL_11:
        v11 = HFLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          foregroundUpdateFutures2 = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
          v15 = 134218240;
          v16 = [foregroundUpdateFutures2 count];
          v17 = 2048;
          v18 = 3;
          _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%lu full item update(s) exceed threshold of %li. Canceling and doing full reload", &v15, 0x16u);
        }

        foregroundUpdateFutures3 = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
        [foregroundUpdateFutures3 na_each:&__block_literal_global_195_0];

        itemManager = [(HUItemCollectionViewController *)self itemManager];
        v14 = [itemManager reloadAndUpdateAllItemsFromSenderSelector:a2];
LABEL_14:

        return;
      }

      isSpringBoard = [MEMORY[0x277D14670] isSpringBoard];

      if (isSpringBoard)
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
      foregroundUpdateFutures4 = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
      v15 = 134217984;
      v16 = [foregroundUpdateFutures4 count];
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Proceeding with %lu full item update(s)", &v15, 0xCu);
    }

    itemManager = [(HUItemCollectionViewController *)self foregroundUpdateFutures];
    [itemManager na_each:&__block_literal_global_198_0];
    goto LABEL_14;
  }
}

- (HFItem)hu_presentedItem
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];

  return sourceItem;
}

- (void)recursivelyDisableItemUpdates:(BOOL)updates withReason:(id)reason
{
  updatesCopy = updates;
  v24 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v8 = itemManager;
  if (updatesCopy)
  {
    [itemManager disableExternalUpdatesWithReason:reasonCopy];
  }

  else
  {
    [itemManager endDisableExternalUpdatesWithReason:reasonCopy];
  }

  v9 = MEMORY[0x277CBEB58];
  childViewControllers = [(HUItemCollectionViewController *)self childViewControllers];
  v11 = [v9 setWithArray:childViewControllers];

  childViewControllersToPreload = [(HUItemCollectionViewController *)self childViewControllersToPreload];
  [v11 addObjectsFromArray:childViewControllersToPreload];

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
          [v18 recursivelyDisableItemUpdates:updatesCopy withReason:{reasonCopy, v19}];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (id)moduleController:(id)controller presentViewControllerForRequest:(id)request
{
  requestCopy = request;
  [(HUItemCollectionViewController *)self _transformViewControllerForRequest:requestCopy];
  v6 = [(UIViewController *)self hu_performPresentationRequest:requestCopy];

  return v6;
}

- (void)_transformViewControllerForRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  viewController = [requestCopy viewController];

  if (objc_opt_isKindOfClass())
  {
    v6 = viewController;
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;

  v7 = v19;
  if (v19)
  {
    preferredStyle = [v19 preferredStyle];
    v7 = v19;
    if (!preferredStyle)
    {
      popoverPresentationController = [v19 popoverPresentationController];
      v7 = v19;
      if (popoverPresentationController)
      {
        v10 = popoverPresentationController;
        popoverPresentationController2 = [v19 popoverPresentationController];
        sourceView = [popoverPresentationController2 sourceView];

        v7 = v19;
        if (!sourceView)
        {
          collectionView = [(HUItemCollectionViewController *)self collectionView];
          indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

          if ([indexPathsForSelectedItems count] == 1)
          {
            collectionView4 = [indexPathsForSelectedItems objectAtIndexedSubscript:0];
            collectionView2 = [(HUItemCollectionViewController *)self collectionView];
            collectionView3 = [collectionView2 cellForItemAtIndexPath:collectionView4];

            if (!collectionView3)
            {
              collectionView3 = [(HUItemCollectionViewController *)self collectionView];
            }

            popoverPresentationController3 = [v19 popoverPresentationController];
            [popoverPresentationController3 setSourceView:collectionView3];
          }

          else
          {
            collectionView4 = [(HUItemCollectionViewController *)self collectionView];
            collectionView3 = [v19 popoverPresentationController];
            [collectionView3 setSourceView:collectionView4];
          }

          v7 = v19;
        }
      }
    }
  }
}

- (void)updateCellForItems:(id)items
{
  itemsCopy = items;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  diffableDataSourceDisabled = [itemManager diffableDataSourceDisabled];

  if (diffableDataSourceDisabled)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__HUItemCollectionViewController_updateCellForItems___block_invoke;
    v10[3] = &unk_277DC0A30;
    v10[4] = self;
    v7 = [itemsCopy na_map:v10];

    collectionView = [(HUItemCollectionViewController *)self collectionView];
    [collectionView reloadItemsAtIndexPaths:v7];

    itemsCopy = v7;
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__HUItemCollectionViewController_updateCellForItems___block_invoke_2;
    v9[3] = &unk_277DBAF68;
    v9[4] = self;
    [itemsCopy na_each:v9];
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

- (void)reloadCellForItems:(id)items
{
  itemsCopy = items;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  diffableDataSourceDisabled = [itemManager diffableDataSourceDisabled];

  if (diffableDataSourceDisabled)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__HUItemCollectionViewController_reloadCellForItems___block_invoke;
    v10[3] = &unk_277DC0A30;
    v10[4] = self;
    v7 = [itemsCopy na_map:v10];
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    [collectionView reloadItemsAtIndexPaths:v7];
  }

  else
  {
    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    [itemManager2 reloadUIRepresentationForItems:itemsCopy withAnimation:0];
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

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  v4 = [(HUItemCollectionViewController *)self _itemForTextField:?];
  v5 = [(HUItemCollectionViewController *)self moduleControllerForItem:v4];
  v6 = v5;
  if (v4 && v5)
  {
    [v5 textFieldDidBeginEditing:editingCopy item:v4];
  }

  else if (!v4)
  {
    goto LABEL_7;
  }

  if ([(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v4])
  {
    [(HUItemCollectionViewController *)self textFieldDidBeginEditing:editingCopy item:v4];
  }

LABEL_7:
}

- (BOOL)textFieldShouldClear:(id)clear
{
  clearCopy = clear;
  v5 = [(HUItemCollectionViewController *)self _itemForTextField:clearCopy];
  v6 = [(HUItemCollectionViewController *)self moduleControllerForItem:v5];
  v7 = v6;
  if (v5)
  {
    if ([v6 shouldManageTextFieldForItem:v5])
    {
      [v7 textDidChange:&stru_2823E0EE8 forTextField:clearCopy item:v5];
    }

    if ([(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v5])
    {
      [(HUItemCollectionViewController *)self textDidChange:&stru_2823E0EE8 forTextField:clearCopy item:v5];
    }
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  v14 = *MEMORY[0x277D85DE8];
  editingCopy = editing;
  v5 = [(HUItemCollectionViewController *)self _itemForTextField:editingCopy];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    text = [editingCopy text];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = text;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "User finished editing text field for %@, entered: %@", &v10, 0x16u);
  }

  v8 = [(HUItemCollectionViewController *)self moduleControllerForItem:v5];
  v9 = v8;
  if (v5)
  {
    if ([v8 shouldManageTextFieldForItem:v5])
    {
      [v9 textFieldDidEndEditing:editingCopy item:v5];
    }

    if ([(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v5])
    {
      [(HUItemCollectionViewController *)self textFieldDidEndEditing:editingCopy item:v5];
    }
  }
}

- (void)textFieldDidChange:(id)change
{
  object = [change object];
  v4 = [(HUItemCollectionViewController *)self _itemForTextField:?];
  v5 = [(HUItemCollectionViewController *)self moduleControllerForItem:v4];
  v6 = v5;
  if (v4)
  {
    if ([v5 shouldManageTextFieldForItem:v4])
    {
      text = [object text];
      [v6 textDidChange:text forTextField:object item:v4];
    }

    if ([(HUItemCollectionViewController *)self shouldManageTextFieldForItem:v4])
    {
      text2 = [object text];
      [(HUItemCollectionViewController *)self textDidChange:text2 forTextField:object item:v4];
    }
  }
}

- (BOOL)shouldManageTextFieldForItem:(id)item
{
  itemCopy = item;
  v5 = [(HUItemCollectionViewController *)self moduleControllerForItem:itemCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 shouldManageTextFieldForItem:itemCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)textFieldForVisibleItem:(id)item
{
  itemCopy = item;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager indexPathForItem:itemCopy];

  if (v6)
  {
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    v8 = [collectionView cellForItemAtIndexPath:v6];

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

    textField = [v11 textField];
  }

  else
  {
    textField = 0;
  }

  return textField;
}

- (id)currentTextForTextField:(id)field item:(id)item
{
  fieldCopy = field;
  itemCopy = item;
  v8 = [(HUItemCollectionViewController *)self moduleControllerForItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 currentTextForTextField:fieldCopy item:itemCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)defaultTextForTextField:(id)field item:(id)item
{
  fieldCopy = field;
  itemCopy = item;
  v8 = [(HUItemCollectionViewController *)self moduleControllerForItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 defaultTextForTextField:fieldCopy item:itemCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)placeholderTextForTextField:(id)field item:(id)item
{
  itemCopy = item;
  fieldCopy = field;
  v8 = [(HUItemCollectionViewController *)self moduleControllerForItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    [v8 placeholderTextForTextField:fieldCopy item:itemCopy];
  }

  else
  {
    [(HUItemCollectionViewController *)self defaultTextForTextField:fieldCopy item:itemCopy];
  }
  v10 = ;

  return v10;
}

- (id)moduleControllerForItem:(id)item
{
  itemCopy = item;
  itemModuleControllers = [(HUItemCollectionViewController *)self itemModuleControllers];
  recentlyRemovedItemModuleControllers = [(HUItemCollectionViewController *)self recentlyRemovedItemModuleControllers];
  v7 = [itemModuleControllers setByAddingObjectsFromSet:recentlyRemovedItemModuleControllers];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HUItemCollectionViewController_moduleControllerForItem___block_invoke;
  v11[3] = &unk_277DC09E8;
  v12 = itemCopy;
  v8 = itemCopy;
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
  recentlyRemovedItemModuleControllers = [(HUItemCollectionViewController *)self recentlyRemovedItemModuleControllers];
  v4 = [recentlyRemovedItemModuleControllers copy];

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  allDisplayedItems = [itemManager allDisplayedItems];
  v7 = [allDisplayedItems na_map:&__block_literal_global_207];

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
      moduleIdentifier = [v16 moduleIdentifier];
      v18 = [v7 containsObject:moduleIdentifier];

      if ((v18 & 1) == 0)
      {
        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          moduleIdentifier2 = [v16 moduleIdentifier];
          *buf = v24;
          selfCopy2 = self;
          v31 = 2112;
          v32 = v16;
          v33 = 2112;
          v34 = moduleIdentifier2;
          _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@: Finishing removal of module controller %@ (%@) because no items refer to it anymore", buf, 0x20u);
        }

        recentlyRemovedItemModuleControllers2 = [(HUItemCollectionViewController *)self recentlyRemovedItemModuleControllers];
        [recentlyRemovedItemModuleControllers2 removeObject:v16];

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
      recentlyRemovedItemModuleControllers3 = [(HUItemCollectionViewController *)self recentlyRemovedItemModuleControllers];
      v23 = [recentlyRemovedItemModuleControllers3 na_map:&__block_literal_global_211_0];
      *buf = 138412546;
      selfCopy2 = self;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: Module controllers awaiting removal remaining: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (id)_itemForTextField:(id)field
{
  fieldCopy = field;
  textFieldToCellMap = [(HUItemCollectionViewController *)self textFieldToCellMap];
  v6 = [textFieldToCellMap objectForKey:fieldCopy];

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

  item = [v9 item];

  if (item)
  {
    item2 = [v9 item];
  }

  else
  {
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    v13 = [collectionView indexPathForCell:v7];

    if (v13)
    {
      itemManager = [(HUItemCollectionViewController *)self itemManager];
      item2 = [itemManager displayedItemAtIndexPath:v13];
    }

    else
    {
      item2 = 0;
    }
  }

  return item2;
}

- (void)_prioritizeIconPreloadIfNeeded
{
  if (![(HUItemCollectionViewController *)self iconPreloadIsPrioritized])
  {
    collectionView = [(HUItemCollectionViewController *)self collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    v5 = [indexPathsForVisibleItems count];

    if (v5)
    {
      collectionView2 = [(HUItemCollectionViewController *)self collectionView];
      indexPathsForVisibleItems2 = [collectionView2 indexPathsForVisibleItems];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64__HUItemCollectionViewController__prioritizeIconPreloadIfNeeded__block_invoke;
      v12[3] = &unk_277DBBD18;
      v12[4] = self;
      v8 = [indexPathsForVisibleItems2 na_map:v12];

      v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
      v10 = [(HUItemCollectionViewController *)self _displayedPackageIconDescriptorsForItems:v9];

      mEMORY[0x277D180B8] = [MEMORY[0x277D180B8] sharedInstance];
      [mEMORY[0x277D180B8] prioritizeIconDescriptors:v10];

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

- (void)_preloadIconsIfNeededWithItems:(id)items
{
  itemsCopy = items;
  [(HUItemCollectionViewController *)self _cancelIconPreload];
  v7 = [(HUItemCollectionViewController *)self _displayedPackageIconDescriptorsForItems:itemsCopy];

  if ([v7 count])
  {
    mEMORY[0x277D180B8] = [MEMORY[0x277D180B8] sharedInstance];
    v6 = [mEMORY[0x277D180B8] prefetchIconDescriptors:v7];
    [(HUItemCollectionViewController *)self setIconPreloadCancelable:v6];
  }

  [(HUItemCollectionViewController *)self _prioritizeIconPreloadIfNeeded];
}

- (id)_displayedPackageIconDescriptorsForItems:(id)items
{
  allObjects = [items allObjects];
  v4 = [allObjects na_map:&__block_literal_global_214];

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
  iconPreloadCancelable = [(HUItemCollectionViewController *)self iconPreloadCancelable];
  [iconPreloadCancelable cancel];

  [(HUItemCollectionViewController *)self setIconPreloadCancelable:0];
}

@end
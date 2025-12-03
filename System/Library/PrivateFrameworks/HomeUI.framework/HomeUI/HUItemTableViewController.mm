@interface HUItemTableViewController
- (BOOL)_shouldHideFooterForSection:(int64_t)section;
- (BOOL)_shouldHideHeaderForSection:(int64_t)section;
- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path;
- (BOOL)shouldManageTextFieldForItem:(id)item;
- (BOOL)shouldPerformUpdateWithAnimationForDiffableDataItemManager:(id)manager;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)textFieldShouldClear:(id)clear;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (Class)mappableCellClassForItem:(id)item indexPath:(id)path;
- (HFItem)hu_presentedItem;
- (HUItemTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUItemTableViewController)initWithStyle:(int64_t)style;
- (NSString)description;
- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_itemForTextField:(id)field;
- (id)_visibleCellForItem:(id)item;
- (id)contentConfigurationForFooterViewAtSectionIndex:(unint64_t)index;
- (id)contentConfigurationForHeaderViewAtSectionIndex:(unint64_t)index;
- (id)currentTextForTextField:(id)field item:(id)item;
- (id)defaultTextForTextField:(id)field item:(id)item;
- (id)hu_preloadContent;
- (id)itemManager:(id)manager futureToUpdateItems:(id)items itemUpdateOptions:(id)options;
- (id)itemTableFooterView;
- (id)itemTableHeaderView;
- (id)moduleController:(id)controller presentViewControllerForRequest:(id)request;
- (id)moduleControllerForItem:(id)item;
- (id)placeholderTextForTextField:(id)field item:(id)item;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)textFieldForVisibleItem:(id)item;
- (int64_t)_rowAnimationForOperationType:(unint64_t)type item:(id)item;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_dispatchUpdateForCell:(id)cell item:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)_performCommonUpdateForCell:(id)cell item:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)_scrollToDestination:(id)destination;
- (void)_transformViewControllerForRequest:(id)request;
- (void)_updateHeadersAndFootersIfNeededAfterPerformingRequest:(id)request;
- (void)_updateLayoutMarginsForCells:(id)cells;
- (void)_updateMaterials;
- (void)_updatePreferredContentSizeIfNecessary;
- (void)_updateTableHeaderAndFooter;
- (void)_updateTitle;
- (void)cleanupRecentlyRemovedModuleControllers;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)executionEnvironmentRunningStateDidChange:(id)change;
- (void)expandableTextViewCellStateDidChange:(id)change;
- (void)highlightItemAnimated:(id)animated duration:(double)duration;
- (void)itemManager:(id)manager didChangeSourceItem:(id)item;
- (void)itemManager:(id)manager didInsertItem:(id)item atIndexPath:(id)path;
- (void)itemManager:(id)manager didInsertSections:(id)sections;
- (void)itemManager:(id)manager didMoveItem:(id)item fromIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)itemManager:(id)manager didMoveSection:(int64_t)section toSection:(int64_t)toSection;
- (void)itemManager:(id)manager didRemoveItem:(id)item atIndexPath:(id)path;
- (void)itemManager:(id)manager didRemoveSections:(id)sections;
- (void)itemManager:(id)manager didUpdateItemModules:(id)modules;
- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path;
- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item;
- (void)itemManager:(id)manager performUpdateRequest:(id)request;
- (void)itemManagerDidUpdate:(id)update;
- (void)recursivelyDisableItemUpdates:(BOOL)updates withReason:(id)reason;
- (void)reloadCellForItems:(id)items withDiffableDataSourceReload:(BOOL)reload;
- (void)scrollToItem:(id)item animated:(BOOL)animated;
- (void)setAutomaticallyUpdatesViewControllerTitle:(BOOL)title;
- (void)setGridLayoutOptions:(id)options;
- (void)setUpDiffableDataItemManagerIfNeeded;
- (void)setWantsPreferredContentSize:(BOOL)size;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUItemTableViewController

- (HUItemTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = HUItemTableViewController;
  v8 = [(HUTableViewController *)&v22 initWithStyle:style];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemManager, manager);
    [(HFItemManager *)v9->_itemManager setDelegate:v9];
    if (![objc_opt_class() updateMode])
    {
      [managerCopy disableExternalUpdatesWithReason:@"HUItemTableViewController_NotVisible"];
    }

    v10 = [MEMORY[0x277CBEB58] set];
    internalItemModuleControllers = v9->_internalItemModuleControllers;
    v9->_internalItemModuleControllers = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    recentlyRemovedItemModuleControllers = v9->_recentlyRemovedItemModuleControllers;
    v9->_recentlyRemovedItemModuleControllers = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    registeredCellClasses = v9->_registeredCellClasses;
    v9->_registeredCellClasses = v14;

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    textFieldToCellMap = v9->_textFieldToCellMap;
    v9->_textFieldToCellMap = weakToWeakObjectsMapTable;

    array = [MEMORY[0x277CBEB18] array];
    foregroundUpdateFutures = v9->_foregroundUpdateFutures;
    v9->_foregroundUpdateFutures = array;

    v9->_automaticallyUpdatesViewControllerTitle = 1;
    mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
    [mEMORY[0x277D14670] addObserver:v9];

    [(HUItemTableViewController *)v9 _updateTitle];
  }

  return v9;
}

- (HUItemTableViewController)initWithStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemManager_tableViewStyle_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemTableViewController.m" lineNumber:131 description:{@"%s is unavailable; use %@ instead", "-[HUItemTableViewController initWithStyle:]", v6}];

  return 0;
}

- (void)setUpDiffableDataItemManagerIfNeeded
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  if ([itemManager diffableDataSourceDisabled])
  {
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    diffableDataSource = [itemManager2 diffableDataSource];

    if (!diffableDataSource)
    {
      itemManager3 = [(HUItemTableViewController *)self itemManager];
      v6 = objc_opt_class();

      v7 = objc_opt_class();
      itemManager4 = [(HUItemTableViewController *)self itemManager];
      objc_initWeak(&location, itemManager4);

      objc_initWeak(&from, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __65__HUItemTableViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke;
      aBlock[3] = &unk_277DC3FE8;
      objc_copyWeak(&v16, &from);
      objc_copyWeak(v17, &location);
      v17[1] = v6;
      v17[2] = v7;
      v9 = _Block_copy(aBlock);
      v10 = [HUTableViewDiffableDataSource alloc];
      tableView = [(HUItemTableViewController *)self tableView];
      v12 = [(HUTableViewDiffableDataSource *)v10 initWithTableView:tableView cellProvider:v9 delegate:self];

      [(UITableViewDiffableDataSource *)v12 setDefaultRowAnimation:0];
      itemManager5 = [(HUItemTableViewController *)self itemManager];
      [itemManager5 setDiffableDataSource:v12];

      objc_destroyWeak(v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

id __65__HUItemTableViewController_setUpDiffableDataItemManagerIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v15 = objc_loadWeakRetained((a1 + 40));
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v20 = 138413826;
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
      v31 = 0;
      v32 = 2112;
      v33 = v17;
      _os_log_fault_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_FAULT, "Attempting to get cell for item: %@ at index %@ in itemManager: %@ type: %@ for tableView: %@ when the tableViewController: %@ has dealloc already type: %@", &v20, 0x48u);
    }
  }

  v12 = [WeakRetained tableView:v7 cellForRowAtIndexPath:v8];
  if (!v12)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v18 = objc_loadWeakRetained((a1 + 40));
      v19 = *(a1 + 48);
      v20 = 138413570;
      v21 = v9;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = WeakRetained;
      _os_log_fault_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_FAULT, "Failed to get cell for item: %@ at index %@ in itemManager: %@ type: %@ for tableView: %@ tableViewController: %@", &v20, 0x3Eu);
    }

    v12 = objc_alloc_init(MEMORY[0x277D75B48]);
  }

  return v12;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v24 viewDidLoad];
  [(HUItemTableViewController *)self setUpDiffableDataItemManagerIfNeeded];
  tableView = [(HUItemTableViewController *)self tableView];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [tableView registerClass:v5 forHeaderFooterViewReuseIdentifier:v7];

  tableView2 = [(HUItemTableViewController *)self tableView];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [tableView2 registerClass:v9 forHeaderFooterViewReuseIdentifier:v11];

  tableView3 = [(HUItemTableViewController *)self tableView];
  [tableView3 setSeparatorStyle:0];

  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  traitCollection = [(HUItemTableViewController *)self traitCollection];
  [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
  v16 = v15;
  tableView4 = [(HUItemTableViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:v16];

  v18 = *MEMORY[0x277D76F30];
  tableView5 = [(HUItemTableViewController *)self tableView];
  [tableView5 setRowHeight:v18];

  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  tableView6 = [(HUItemTableViewController *)self tableView];
  [tableView6 setTintColor:hf_keyColor];

  if ([objc_opt_class() updateMode] == 1)
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    v23 = [itemManager reloadAndUpdateAllItemsFromSenderSelector:a2];
  }

  [(HUItemTableViewController *)self _updateTableHeaderAndFooter];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(HUItemTableViewController *)self setAppearState:1];
  gridLayoutOptions = [(HUItemTableViewController *)self gridLayoutOptions];
  [gridLayoutOptions viewSize];
  v7 = v6;
  v9 = v8;
  view = [(HUItemTableViewController *)self view];
  [view frame];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    view2 = [(HUItemTableViewController *)self view];
    [view2 frame];
    v19 = [HUGridLayoutOptions defaultOptionsForViewSize:v17, v18];
    [(HUItemTableViewController *)self setGridLayoutOptions:v19];
  }

  if (![objc_opt_class() updateMode])
  {
    childViewControllersAtViewWillDisappearTime = [(HUTableViewController *)self childViewControllersAtViewWillDisappearTime];
    v21 = [childViewControllersAtViewWillDisappearTime copy];

    v22 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:MEMORY[0x277D85CD0]];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __44__HUItemTableViewController_viewWillAppear___block_invoke;
    v28[3] = &unk_277DC0908;
    v28[4] = self;
    v29 = v21;
    v23 = v21;
    v24 = [v22 performCancelableBlock:v28];
    [(HUItemTableViewController *)self setDeferredVisibilityUpdate:v24];
  }

  v27.receiver = self;
  v27.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v27 viewWillAppear:appearCopy];
  pendingScrollDestination = [(HUItemTableViewController *)self pendingScrollDestination];

  if (pendingScrollDestination)
  {
    pendingScrollDestination2 = [(HUItemTableViewController *)self pendingScrollDestination];
    [(HUItemTableViewController *)self _scrollToDestination:pendingScrollDestination2];

    [(HUItemTableViewController *)self setPendingScrollDestination:0];
  }

  [(HUItemTableViewController *)self _updateMaterials];
}

void __44__HUItemTableViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) visibilityUpdatesEnabled] & 1) == 0)
  {
    v2 = [*(a1 + 32) itemManager];
    [v2 endDisableExternalUpdatesWithReason:@"HUItemTableViewController_NotVisible"];

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
          [v9 endDisableExternalUpdatesWithReason:@"HUItemTableViewController_ParentNotVisible"];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(HUItemTableViewController *)self setAppearState:2];
  [(HUItemTableViewController *)self setViewHasAppeared:1];
  v6.receiver = self;
  v6.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v6 viewDidAppear:appearCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_textFieldDidChange_ name:*MEMORY[0x277D770B0] object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v22 = *MEMORY[0x277D85DE8];
  [(HUItemTableViewController *)self setAppearState:3];
  if (![objc_opt_class() updateMode])
  {
    if ([(HUItemTableViewController *)self visibilityUpdatesEnabled])
    {
      itemManager = [(HUItemTableViewController *)self itemManager];
      [itemManager disableExternalUpdatesWithReason:@"HUItemTableViewController_NotVisible"];

      [(HUItemTableViewController *)self setVisibilityUpdatesEnabled:0];
    }

    deferredVisibilityUpdate = [(HUItemTableViewController *)self deferredVisibilityUpdate];
    [deferredVisibilityUpdate cancel];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    childViewControllers = [(HUItemTableViewController *)self childViewControllers];
    v8 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(childViewControllers);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if ([v12 conformsToProtocol:&unk_28249D628])
          {
            itemManager2 = [v12 itemManager];
            [itemManager2 disableExternalUpdatesWithReason:@"HUItemTableViewController_ParentNotVisible"];
          }
        }

        v9 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770B0] object:0];

  view = [(HUItemTableViewController *)self view];
  [view endEditing:1];

  v16.receiver = self;
  v16.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v16 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(HUItemTableViewController *)self setAppearState:0];
  v5.receiver = self;
  v5.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = HUItemTableViewController;
  coordinatorCopy = coordinator;
  [(HUItemTableViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HUItemTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __80__HUItemTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) view];
  [v5 frame];
  v4 = [HUGridLayoutOptions defaultOptionsForViewSize:v2, v3];
  [*(a1 + 32) setGridLayoutOptions:v4];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v9 viewWillLayoutSubviews];
  tableView = [(HUItemTableViewController *)self tableView];
  tableHeaderView = [tableView tableHeaderView];
  tableView2 = [(HUItemTableViewController *)self tableView];
  [tableView2 bounds];
  [tableHeaderView hu_autoSizeByConstrainingWidth:CGRectGetWidth(v10)];

  tableView3 = [(HUItemTableViewController *)self tableView];
  tableFooterView = [tableView3 tableFooterView];
  tableView4 = [(HUItemTableViewController *)self tableView];
  [tableView4 bounds];
  [tableFooterView hu_autoSizeByConstrainingWidth:CGRectGetWidth(v11)];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v3 viewDidLayoutSubviews];
  [(HUItemTableViewController *)self _updatePreferredContentSizeIfNecessary];
}

- (void)setGridLayoutOptions:(id)options
{
  optionsCopy = options;
  if (([optionsCopy isEqual:self->_gridLayoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_gridLayoutOptions, options);
    tableView = [(HUItemTableViewController *)self tableView];
    window = [tableView window];

    if (window)
    {
      tableView2 = [(HUItemTableViewController *)self tableView];
      visibleCells = [tableView2 visibleCells];
      [(HUItemTableViewController *)self _updateLayoutMarginsForCells:visibleCells];
    }
  }
}

- (void)setWantsPreferredContentSize:(BOOL)size
{
  if (self->_wantsPreferredContentSize != size)
  {
    self->_wantsPreferredContentSize = size;
    [(HUItemTableViewController *)self _updatePreferredContentSizeIfNecessary];
  }
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  v6 = [(HUItemTableViewController *)self itemModuleControllers:item];
  v7 = [v6 count];

  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemTableViewController.m" lineNumber:363 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUItemTableViewController cellClassForItem:indexPath:]", objc_opt_class()}];
  }

  return 0;
}

- (Class)mappableCellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  if ([itemCopy conformsToProtocol:&unk_2824EAA20])
  {
    v8 = itemCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v9)
  {
    [v9 mapsToViewClass];
  }

  else
  {
    [(HUItemTableViewController *)self cellClassForItem:itemCopy indexPath:pathCopy];
  }
  v11 = ;

  return v11;
}

- (BOOL)shouldManageTextFieldForItem:(id)item
{
  itemCopy = item;
  v5 = [(HUItemTableViewController *)self moduleControllerForItem:itemCopy];
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

- (id)currentTextForTextField:(id)field item:(id)item
{
  fieldCopy = field;
  itemCopy = item;
  v8 = [(HUItemTableViewController *)self moduleControllerForItem:itemCopy];
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
  v8 = [(HUItemTableViewController *)self moduleControllerForItem:itemCopy];
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
  v8 = [(HUItemTableViewController *)self moduleControllerForItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    [v8 placeholderTextForTextField:fieldCopy item:itemCopy];
  }

  else
  {
    [(HUItemTableViewController *)self defaultTextForTextField:fieldCopy item:itemCopy];
  }
  v10 = ;

  return v10;
}

- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path
{
  cellCopy = cell;
  if ([cellCopy conformsToProtocol:&unk_2824ECD58])
  {
    v5 = cellCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    isKindOfClass = [v6 prefersSeparatorsHidden];
LABEL_9:
    v9 = isKindOfClass;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_9;
  }

  v9 = 1;
LABEL_10:

  return v9 & 1;
}

- (void)setAutomaticallyUpdatesViewControllerTitle:(BOOL)title
{
  if (self->_automaticallyUpdatesViewControllerTitle != title)
  {
    self->_automaticallyUpdatesViewControllerTitle = title;
    if (title)
    {
      [(HUItemTableViewController *)self _updateTitle];
    }
  }
}

- (id)itemTableHeaderView
{
  itemTableHeaderMessage = [(HUItemTableViewController *)self itemTableHeaderMessage];
  if (itemTableHeaderMessage)
  {
    objc_opt_class();
    tableView = [(HUItemTableViewController *)self tableView];
    tableHeaderView = [tableView tableHeaderView];
    if (objc_opt_isKindOfClass())
    {
      v6 = tableHeaderView;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      tableHeaderView = [[HUItemTableHeaderFooterView alloc] initWithReuseIdentifier:0];
    }

    [(HUItemTableHeaderFooterView *)tableHeaderView setAttributedMessage:itemTableHeaderMessage];
  }

  else
  {
    tableHeaderView = 0;
  }

  return tableHeaderView;
}

- (id)itemTableFooterView
{
  itemTableFooterMessage = [(HUItemTableViewController *)self itemTableFooterMessage];
  if (itemTableFooterMessage)
  {
    objc_opt_class();
    tableView = [(HUItemTableViewController *)self tableView];
    tableFooterView = [tableView tableFooterView];
    if (objc_opt_isKindOfClass())
    {
      v6 = tableFooterView;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      tableFooterView = [[HUItemTableHeaderFooterView alloc] initWithReuseIdentifier:0];
    }

    [(HUItemTableHeaderFooterView *)tableFooterView setAttributedMessage:itemTableFooterMessage];
  }

  else
  {
    tableFooterView = 0;
  }

  return tableFooterView;
}

- (id)contentConfigurationForHeaderViewAtSectionIndex:(unint64_t)index
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager titleForSection:index];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager2 itemSectionForSectionIndex:index];

  if (!v6 || ([v8 headerAccessoryButtonTitle], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(v8, "headerAccessoryButtonDelegate"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = 0;
    goto LABEL_14;
  }

  tableView = [(HUItemTableViewController *)self tableView];
  style = [tableView style];

  if (style == 2)
  {
    prominentInsetGroupedHeaderConfiguration = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
  }

  else if (style == 1)
  {
    prominentInsetGroupedHeaderConfiguration = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
  }

  else
  {
    if (style)
    {
      v12 = 0;
      goto LABEL_13;
    }

    prominentInsetGroupedHeaderConfiguration = [MEMORY[0x277D756E0] plainHeaderConfiguration];
  }

  v12 = prominentInsetGroupedHeaderConfiguration;
LABEL_13:
  [v12 setText:v6];
LABEL_14:

  return v12;
}

- (id)contentConfigurationForFooterViewAtSectionIndex:(unint64_t)index
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager footerTitleForSection:index];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_10;
  }

  tableView = [(HUItemTableViewController *)self tableView];
  style = [tableView style];

  if ((style - 1) >= 2)
  {
    if (style)
    {
      v10 = 0;
      goto LABEL_9;
    }

    plainFooterConfiguration = [MEMORY[0x277D756E0] plainFooterConfiguration];
  }

  else
  {
    plainFooterConfiguration = [MEMORY[0x277D756E0] groupedFooterConfiguration];
  }

  v10 = plainFooterConfiguration;
LABEL_9:
  [v10 setText:v6];
LABEL_10:

  return v10;
}

- (id)moduleControllerForItem:(id)item
{
  itemCopy = item;
  itemModuleControllers = [(HUItemTableViewController *)self itemModuleControllers];
  recentlyRemovedItemModuleControllers = [(HUItemTableViewController *)self recentlyRemovedItemModuleControllers];
  v7 = [itemModuleControllers setByAddingObjectsFromSet:recentlyRemovedItemModuleControllers];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HUItemTableViewController_moduleControllerForItem___block_invoke;
  v11[3] = &unk_277DC09E8;
  v12 = itemCopy;
  v8 = itemCopy;
  v9 = [v7 na_firstObjectPassingTest:v11];

  return v9;
}

uint64_t __53__HUItemTableViewController_moduleControllerForItem___block_invoke(uint64_t a1, void *a2)
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
  recentlyRemovedItemModuleControllers = [(HUItemTableViewController *)self recentlyRemovedItemModuleControllers];
  v4 = [recentlyRemovedItemModuleControllers copy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  allItems = [itemManager allItems];
  v7 = [allItems na_map:&__block_literal_global_275];

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

        recentlyRemovedItemModuleControllers2 = [(HUItemTableViewController *)self recentlyRemovedItemModuleControllers];
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
      recentlyRemovedItemModuleControllers3 = [(HUItemTableViewController *)self recentlyRemovedItemModuleControllers];
      v23 = [recentlyRemovedItemModuleControllers3 na_map:&__block_literal_global_133_0];
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

- (id)textFieldForVisibleItem:(id)item
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager indexPathForItem:itemCopy];

  if (v6)
  {
    tableView = [(HUItemTableViewController *)self tableView];
    v8 = [tableView cellForRowAtIndexPath:v6];

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

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  itemManager = [(HUItemTableViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];
  v6 = [v3 appendObject:sourceItem withName:@"sourceItem"];

  build = [v3 build];

  return build;
}

- (void)_updateMaterials
{
  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    traitCollection = [(HUItemTableViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      v5 = 19;
    }

    else
    {
      v5 = 14;
    }

    v20 = [MEMORY[0x277D75210] effectWithStyle:v5];
    clearColor = [MEMORY[0x277D75348] clearColor];
    parentViewController = [(HUItemTableViewController *)self parentViewController];
    NSClassFromString(&cfstr_Huquickcontrol_81.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [MEMORY[0x277D75D00] effectForBlurEffect:v20 style:6];
      v10 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v9];
      [(HUItemTableViewController *)self setBackgroundVisualEffectView:v10];

      backgroundVisualEffectView = [(HUItemTableViewController *)self backgroundVisualEffectView];
      tableView = [(HUItemTableViewController *)self tableView];
      [tableView setBackgroundView:backgroundVisualEffectView];

      tableView2 = [(HUItemTableViewController *)self tableView];
      [tableView2 setSeparatorEffect:v9];

      v14 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];

      clearColor = v14;
    }

    v15 = objc_opt_class();
    if (v15 == NSClassFromString(&cfstr_Huservicedetai_123.isa))
    {
      v16 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.1];

      clearColor = v16;
    }

    view = [(HUItemTableViewController *)self view];
    [view setBackgroundColor:clearColor];

    tableView3 = [(HUItemTableViewController *)self tableView];
    [tableView3 setBackgroundColor:clearColor];

    backgroundVisualEffectView2 = [(HUItemTableViewController *)self backgroundVisualEffectView];
    [backgroundVisualEffectView2 setEffect:v20];
  }
}

- (void)_dispatchUpdateForCell:(id)cell item:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  itemCopy = item;
  cellCopy = cell;
  [(HUItemTableViewController *)self _performCommonUpdateForCell:cellCopy item:itemCopy indexPath:pathCopy animated:animatedCopy];
  v12 = [(HUItemTableViewController *)self moduleControllerForItem:itemCopy];
  v13 = v12;
  if (v12)
  {
    [v12 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  }

  else
  {
    [(HUItemTableViewController *)self updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
  }
}

- (void)_performCommonUpdateForCell:(id)cell item:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  v47[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  v47[0] = cellCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  [(HUItemTableViewController *)self _updateLayoutMarginsForCells:v11];

  if ([cellCopy conformsToProtocol:&unk_2824BFD88])
  {
    v12 = cellCopy;
    v13 = [(HUItemTableViewController *)self automaticDisablingReasonsForItem:itemCopy];
    itemManager = [(HUItemTableViewController *)self itemManager];
    home = [itemManager home];
    hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

    if (hf_currentUserIsAdministrator)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      latestResults = [itemCopy latestResults];
      v19 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F10]];

      if (v19)
      {
        LODWORD(v17) = [v19 BOOLValue];
      }

      else
      {
        v17 = (v13 >> 1) & 1;
      }
    }

    latestResults2 = [itemCopy latestResults];
    v21 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v21 BOOLValue];

    if ((bOOLValue & 1) != 0 || v17)
    {
      [v12 setDisabled:1];
      v23 = [(HUItemTableViewController *)self moduleControllerForItem:itemCopy];
      v24 = v23;
      if (v23 && ([v23 canSelectDisabledItem:itemCopy] & 1) != 0)
      {
        v25 = 3;
      }

      else
      {
        v25 = 0;
      }

      [v12 setSelectionStyle:v25];
    }

    else
    {
      [v12 setDisabled:0];
      [v12 setSelectionStyle:3];
    }
  }

  if ([cellCopy conformsToProtocol:&unk_2824C52F0] && -[HUItemTableViewController shouldManageTextFieldForItem:](self, "shouldManageTextFieldForItem:", itemCopy))
  {
    v26 = cellCopy;
    v27 = [(HUItemTableViewController *)self moduleControllerForItem:itemCopy];
    v28 = v27;
    if (v27)
    {
      selfCopy = v27;
    }

    else
    {
      selfCopy = self;
    }

    v30 = selfCopy;

    textField = [v26 textField];
    v32 = [(HUItemTableViewController *)v30 defaultTextForTextField:textField item:itemCopy];

    textField2 = [v26 textField];
    v34 = [(HUItemTableViewController *)v30 currentTextForTextField:textField2 item:itemCopy];

    textField3 = [v26 textField];
    v36 = [(HUItemTableViewController *)v30 placeholderTextForTextField:textField3 item:itemCopy];

    textField4 = [v26 textField];
    [textField4 setPlaceholder:v36];

    if (v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v32;
    }

    textField5 = [v26 textField];
    [textField5 setText:v38];

    textField6 = [v26 textField];
    v41 = [textField6 keyboardType] != 7;

    textField7 = [v26 textField];
    [textField7 setAutocapitalizationType:v41];
  }

  if ([cellCopy conformsToProtocol:&unk_2824AB590])
  {
    v43 = cellCopy;
    if (objc_opt_respondsToSelector())
    {
      [v43 setResizingDelegate:self];
    }

    [v43 updateUIWithAnimation:animatedCopy];
  }

  if ([cellCopy conformsToProtocol:&unk_2824FC380])
  {
    v44 = cellCopy;
    latestResults3 = [itemCopy latestResults];
    v46 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13EC0]];

    [v44 setCanBeSelected:v46 == 0];
  }
}

- (id)_visibleCellForItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  tableView = [(HUItemTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v7 = [indexPathsForVisibleRows countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        itemManager = [(HUItemTableViewController *)self itemManager];
        v13 = [itemManager displayedItemAtIndexPath:v11];

        if (v13 == itemCopy)
        {
          tableView2 = [(HUItemTableViewController *)self tableView];
          v14 = [tableView2 cellForRowAtIndexPath:v11];

          goto LABEL_11;
        }
      }

      v8 = [indexPathsForVisibleRows countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_itemForTextField:(id)field
{
  fieldCopy = field;
  textFieldToCellMap = [(HUItemTableViewController *)self textFieldToCellMap];
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
    tableView = [(HUItemTableViewController *)self tableView];
    v13 = [tableView indexPathForCell:v7];

    if (v13)
    {
      itemManager = [(HUItemTableViewController *)self itemManager];
      item2 = [itemManager displayedItemAtIndexPath:v13];
    }

    else
    {
      item2 = 0;
    }
  }

  return item2;
}

- (void)_updateTitle
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];
  if (sourceItem)
  {
    v4 = sourceItem;
    automaticallyUpdatesViewControllerTitle = [(HUItemTableViewController *)self automaticallyUpdatesViewControllerTitle];

    if (!automaticallyUpdatesViewControllerTitle)
    {
      return;
    }

    itemManager = [(HUItemTableViewController *)self itemManager];
    sourceItem2 = [itemManager sourceItem];
    latestResults = [sourceItem2 latestResults];
    v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    navigationItem = [(HUItemTableViewController *)self navigationItem];
    [navigationItem setTitle:v8];
  }
}

- (void)_updateTableHeaderAndFooter
{
  tableView = [(HUItemTableViewController *)self tableView];
  tableHeaderView = [tableView tableHeaderView];

  tableView2 = [(HUItemTableViewController *)self tableView];
  tableFooterView = [tableView2 tableFooterView];

  itemTableHeaderView = [(HUItemTableViewController *)self itemTableHeaderView];
  if (itemTableHeaderView | tableHeaderView)
  {
    tableView3 = [(HUItemTableViewController *)self tableView];
    [tableView3 setTableHeaderView:itemTableHeaderView];

    tableView4 = [(HUItemTableViewController *)self tableView];
    [tableView4 bounds];
    [itemTableHeaderView hu_autoSizeByConstrainingWidth:CGRectGetWidth(v17)];

    tableView5 = [(HUItemTableViewController *)self tableView];
    [tableView5 setTableHeaderView:itemTableHeaderView];
  }

  else
  {
    tableView5 = HFLogForCategory();
    if (os_log_type_enabled(tableView5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_20CEB6000, tableView5, OS_LOG_TYPE_DEBUG, "Header View not set; skipping", buf, 2u);
    }
  }

  itemTableFooterView = [(HUItemTableViewController *)self itemTableFooterView];
  if (itemTableFooterView | tableFooterView)
  {
    tableView6 = [(HUItemTableViewController *)self tableView];
    [tableView6 setTableFooterView:itemTableFooterView];

    tableView7 = [(HUItemTableViewController *)self tableView];
    [tableView7 bounds];
    [itemTableFooterView hu_autoSizeByConstrainingWidth:CGRectGetWidth(v18)];

    tableView8 = [(HUItemTableViewController *)self tableView];
    [tableView8 setTableFooterView:itemTableFooterView];
  }

  else
  {
    tableView8 = HFLogForCategory();
    if (os_log_type_enabled(tableView8, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_debug_impl(&dword_20CEB6000, tableView8, OS_LOG_TYPE_DEBUG, "Footer View not set; skipping", v15, 2u);
    }
  }
}

- (BOOL)_shouldHideHeaderForSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager2 displayedItemsInSectionWithIdentifier:v6];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __57__HUItemTableViewController__shouldHideHeaderForSection___block_invoke;
  v17 = &unk_277DB95B0;
  selfCopy = self;
  v19 = v6;
  v9 = v6;
  if (([v8 na_any:&v14] & 1) != 0 || -[HUItemTableViewController shouldHideHeaderAboveSection:](self, "shouldHideHeaderAboveSection:", section, v14, v15, v16, v17, selfCopy, v19))
  {
    v10 = 1;
  }

  else if (section >= 1 && [(HUItemTableViewController *)self shouldHideFooterBelowSection:section - 1])
  {
    tableView = [(HUItemTableViewController *)self tableView];
    v13 = [(HUItemTableViewController *)self tableView:tableView titleForHeaderInSection:section];
    v10 = v13 == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __57__HUItemTableViewController__shouldHideHeaderForSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) moduleControllerForItem:a2];
  v4 = [v3 shouldHideHeaderAboveSectionWithIdentifier:*(a1 + 40)];

  return v4;
}

- (BOOL)_shouldHideFooterForSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager2 displayedItemsInSectionWithIdentifier:v6];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __57__HUItemTableViewController__shouldHideFooterForSection___block_invoke;
  v18 = &unk_277DB95B0;
  selfCopy = self;
  v20 = v6;
  v9 = v6;
  if (([v8 na_any:&v15] & 1) != 0 || -[HUItemTableViewController shouldHideFooterBelowSection:](self, "shouldHideFooterBelowSection:", section, v15, v16, v17, v18, selfCopy, v20))
  {
    v10 = 1;
  }

  else
  {
    tableView = [(HUItemTableViewController *)self tableView];
    if ([tableView numberOfSections] - 1 > section && -[HUItemTableViewController shouldHideHeaderAboveSection:](self, "shouldHideHeaderAboveSection:", section + 1))
    {
      tableView2 = [(HUItemTableViewController *)self tableView];
      v13 = [(HUItemTableViewController *)self tableView:tableView2 titleForFooterInSection:section];
      v10 = v13 == 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

uint64_t __57__HUItemTableViewController__shouldHideFooterForSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) moduleControllerForItem:a2];
  v4 = [v3 shouldHideFooterBelowSectionWithIdentifier:*(a1 + 40)];

  return v4;
}

- (void)_updateLayoutMarginsForCells:(id)cells
{
  v26 = *MEMORY[0x277D85DE8];
  cellsCopy = cells;
  if ([objc_opt_class() adoptsDefaultGridLayoutMargins])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = cellsCopy;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          [v10 layoutMargins];
          v12 = v11;
          v14 = v13;
          gridLayoutOptions = [(HUItemTableViewController *)self gridLayoutOptions];
          [gridLayoutOptions sectionLeadingMargin];
          v17 = v16;

          gridLayoutOptions2 = [(HUItemTableViewController *)self gridLayoutOptions];
          [gridLayoutOptions2 sectionTrailingMargin];
          v20 = v19;

          [v10 setLayoutMargins:{v12, v17, v14, v20}];
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }
}

- (void)_updatePreferredContentSizeIfNecessary
{
  [(HUItemTableViewController *)self preferredContentSize];
  v4 = v3;
  v6 = v5;
  if ([(HUItemTableViewController *)self wantsPreferredContentSize])
  {
    if ([(HUItemTableViewController *)self isViewLoaded])
    {
      tableView = [(HUItemTableViewController *)self tableView];
      [tableView _contentSize];
      [(HUItemTableViewController *)self setPreferredContentSize:?];
    }
  }

  else
  {
    [(HUItemTableViewController *)self setPreferredContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  }

  [(HUItemTableViewController *)self preferredContentSize];
  if (v4 != v9 || v6 != v8)
  {
    tableView2 = [(HUItemTableViewController *)self tableView];
    [tableView2 setNeedsUpdateConstraints];
  }
}

- (void)_updateHeadersAndFootersIfNeededAfterPerformingRequest:(id)request
{
  requestCopy = request;
  changes = [requestCopy changes];
  groupOperations = [changes groupOperations];
  v7 = [groupOperations count];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v9 = MEMORY[0x277CBEB98];
    changes2 = [requestCopy changes];
    groupOperations2 = [changes2 groupOperations];
    v12 = [groupOperations2 na_map:&__block_literal_global_185];
    v13 = [v9 setWithArray:v12];

    changes3 = [requestCopy changes];
    groupOperations3 = [changes3 groupOperations];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__HUItemTableViewController__updateHeadersAndFootersIfNeededAfterPerformingRequest___block_invoke_2;
    v19[3] = &unk_277DC4030;
    v19[4] = self;
    v20 = v13;
    v21 = v8;
    v16 = v8;
    v17 = v13;
    [groupOperations3 na_each:v19];

    tableView = [(HUItemTableViewController *)self tableView];
    [tableView _reloadSectionHeaderFooters:v16 withRowAnimation:100];
  }
}

id __84__HUItemTableViewController__updateHeadersAndFootersIfNeededAfterPerformingRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 fromIndex];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 toIndex];
  }

  return v4;
}

void __84__HUItemTableViewController__updateHeadersAndFootersIfNeededAfterPerformingRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 fromIndex];

  v4 = [v12 toIndex];
  v5 = v4;
  if (v3)
  {

    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = [v12 toIndex];
      [v6 addIndex:{objc_msgSend(v7, "integerValue")}];
    }
  }

  else
  {
    v8 = [v4 integerValue] + 1;

    v9 = [*(a1 + 32) tableView];
    if (v8 >= [v9 numberOfSections])
    {
    }

    else
    {
      v10 = *(a1 + 40);
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      LOBYTE(v10) = [v10 containsObject:v11];

      if ((v10 & 1) == 0)
      {
        [*(a1 + 48) addIndex:v8];
      }
    }
  }
}

- (void)_scrollToDestination:(id)destination
{
  destinationCopy = destination;
  itemManager = [(HUItemTableViewController *)self itemManager];
  item = [destinationCopy item];
  v6 = [itemManager indexPathForItem:item];

  if (v6)
  {
    tableView = [(HUItemTableViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:v6 atScrollPosition:1 animated:{objc_msgSend(destinationCopy, "isAnimated")}];
  }

  else
  {
    tableView = [destinationCopy item];
    NSLog(&cfstr_CouldNotFindIt.isa, tableView);
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  numberOfSections = [itemManager numberOfSections];

  return numberOfSections;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager displayedItemsInSection:section];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager displayedItemAtIndexPath:pathCopy];

  v9 = [(HUItemTableViewController *)self moduleControllerForItem:v8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__HUItemTableViewController_tableView_cellForRowAtIndexPath___block_invoke;
  v27[3] = &unk_277DC0978;
  v10 = v9;
  v28 = v10;
  v11 = v8;
  v29 = v11;
  selfCopy = self;
  v12 = pathCopy;
  v31 = v12;
  v13 = __61__HUItemTableViewController_tableView_cellForRowAtIndexPath___block_invoke(v27);
  if (!v13)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemTableViewController.m" lineNumber:987 description:{@"No cell class specified for item: %@", v11}];
  }

  registeredCellClasses = [(HUItemTableViewController *)self registeredCellClasses];
  v15 = [registeredCellClasses containsObject:v13];

  if ((v15 & 1) == 0)
  {
    tableView = [(HUItemTableViewController *)self tableView];
    v17 = NSStringFromClass(v13);
    [tableView registerClass:v13 forCellReuseIdentifier:v17];

    registeredCellClasses2 = [(HUItemTableViewController *)self registeredCellClasses];
    [registeredCellClasses2 addObject:v13];
  }

  tableView2 = [(HUItemTableViewController *)self tableView];
  v20 = NSStringFromClass(v13);
  v21 = [tableView2 dequeueReusableCellWithIdentifier:v20 forIndexPath:v12];

  if ([v21 conformsToProtocol:&unk_2824AB590])
  {
    [v21 setItem:v11];
  }

  v22 = [(HUItemTableViewController *)self shouldHideSeparatorsForCell:v21 indexPath:v12];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:!v22];
  [v21 hu_setForcedSeparatorStyle:v23];

  if ([(HUItemTableViewController *)self shouldUseAlternateCellColor])
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v21 setBackgroundColor:systemGroupedBackgroundColor];
  }

  if (v10)
  {
    [v10 setupCell:v21 forItem:v11];
  }

  else
  {
    [(HUItemTableViewController *)self setupCell:v21 forItem:v11 indexPath:v12];
  }

  [(HUItemTableViewController *)self _dispatchUpdateForCell:v21 item:v11 indexPath:v12 animated:0];

  return v21;
}

id __61__HUItemTableViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 32) cellClassForItem:*(a1 + 40)];
  }

  else
  {
    [*(a1 + 48) mappableCellClassForItem:*(a1 + 40) indexPath:*(a1 + 56)];
  }
  v1 = ;

  return v1;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager itemSectionForSectionIndex:section];

  v8 = [(HUItemTableViewController *)self contentConfigurationForHeaderViewAtSectionIndex:section];
  if (v8 && (v9 = v8, v10 = [v7 forceShowHeaderTitle], v9, !v10))
  {
    v12 = 0;
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v12 = [itemManager2 titleForSection:section];
  }

  return v12;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v6 = [(HUItemTableViewController *)self contentConfigurationForFooterViewAtSectionIndex:section];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    v7 = [itemManager footerTitleForSection:section];
  }

  return v7;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedItemAtIndexPath:pathCopy];

  v8 = [(HUItemTableViewController *)self moduleControllerForItem:v7];
  tableView = [(HUItemTableViewController *)self tableView];
  v10 = [tableView cellForRowAtIndexPath:pathCopy];

  if (v10 && [v10 conformsToProtocol:&unk_2824BFD88] && objc_msgSend(v10, "isDisabled"))
  {
    if (!v8)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v11 = [v8 canSelectDisabledItem:v7];
  }

  else
  {
    if (!v8)
    {
      v12 = 1;
      goto LABEL_10;
    }

    v11 = [v8 canSelectItem:v7];
  }

  v12 = v11;
LABEL_10:

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  if ([+[HUItemTableViewController superclass](HUItemTableViewController "superclass")])
  {
    v14.receiver = self;
    v14.super_class = HUItemTableViewController;
    [(HUItemTableViewController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  itemManager = [(HUItemTableViewController *)self itemManager];
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

  v12 = [(HUItemTableViewController *)self moduleControllerForItem:v10];
  v13 = v12;
  if (v12 && ![v12 didSelectItem:v10])
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v16 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:pathCopy];
  if ([cellCopy conformsToProtocol:&unk_2824C52F0])
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    v11 = [itemManager displayedItemAtIndexPath:pathCopy];

    if (v11 && [(HUItemTableViewController *)self shouldManageTextFieldForItem:v11])
    {
      v12 = cellCopy;
      textField = [v12 textField];
      [textField setDelegate:self];

      textFieldToCellMap = [(HUItemTableViewController *)self textFieldToCellMap];
      textField2 = [v12 textField];
      [textFieldToCellMap setObject:v12 forKey:textField2];
    }
  }
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v16 tableView:view didEndDisplayingCell:cellCopy forRowAtIndexPath:pathCopy];
  if ([cellCopy conformsToProtocol:&unk_2824C52F0])
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    v11 = [itemManager displayedItemAtIndexPath:pathCopy];

    if (v11 && [(HUItemTableViewController *)self shouldManageTextFieldForItem:v11])
    {
      v12 = cellCopy;
      textField = [v12 textField];
      [textField setDelegate:0];

      textFieldToCellMap = [(HUItemTableViewController *)self textFieldToCellMap];
      textField2 = [v12 textField];

      [textFieldToCellMap removeObjectForKey:textField2];
    }
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(HUItemTableViewController *)self _shouldHideHeaderForSection:section])
  {
    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  else
  {
    v8 = 0;
  }

  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager itemSectionForSectionIndex:section];

  v11 = [(HUItemTableViewController *)self contentConfigurationForHeaderViewAtSectionIndex:section];
  headerAccessoryButtonTitle = [v10 headerAccessoryButtonTitle];
  if (headerAccessoryButtonTitle && (v13 = headerAccessoryButtonTitle, [v10 headerAccessoryButtonDelegate], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v16];

    [v17 setItemSection:v10];
    tableView = [(HUItemTableViewController *)self tableView];
    v19 = [(HUItemTableViewController *)self tableView:tableView titleForHeaderInSection:section];
    textLabel = [v17 textLabel];
    [textLabel setText:v19];

    [v17 updateUIWithAnimation:0];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v17 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v22];

    [v17 setContentConfiguration:v11];
  }

  v8 = v17;
LABEL_10:

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager attributedFooterTitleForSection:section];

  v9 = [(HUItemTableViewController *)self contentConfigurationForFooterViewAtSectionIndex:section];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v11];

    [(HUItemTableSectionHeaderFooterView *)v12 setContentConfiguration:v9];
  }

  else if (v8)
  {
    v12 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"footerReuseIdentifier"];
    if (!v12)
    {
      v12 = [[HUItemTableSectionHeaderFooterView alloc] initWithReuseIdentifier:@"footerReuseIdentifier"];
    }

    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v14 = [itemManager2 displayedSectionIdentifierForSectionIndex:section];
    messageTextView = [(HUItemTableSectionHeaderFooterView *)v12 messageTextView];
    [messageTextView setIdentifier:v14];

    [(HUItemTableSectionHeaderFooterView *)v12 setType:1];
    [(HUItemTableSectionHeaderFooterView *)v12 setMessage:v8];
    messageTextView2 = [(HUItemTableSectionHeaderFooterView *)v12 messageTextView];
    [messageTextView2 setDelegate:self];

    messageTextView3 = [(HUItemTableSectionHeaderFooterView *)v12 messageTextView];
    textDragInteraction = [messageTextView3 textDragInteraction];
    [textDragInteraction setEnabled:0];
  }

  else
  {
    v12 = 0;
  }

  if ([(HUItemTableViewController *)self _shouldHideFooterForSection:section])
  {
    v19 = objc_alloc(MEMORY[0x277D75D18]);
    v20 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

    v12 = v20;
  }

  return v12;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = *MEMORY[0x277D76F30];
  v5 = [(HUItemTableViewController *)self _shouldHideHeaderForSection:section];
  result = 2.22507386e-308;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v4 = *MEMORY[0x277D76F30];
  v5 = [(HUItemTableViewController *)self _shouldHideFooterForSection:section];
  result = 2.22507386e-308;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section
{
  v4 = *MEMORY[0x277D76F30];
  v5 = [(HUItemTableViewController *)self _shouldHideHeaderForSection:section];
  result = 2.22507386e-308;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section
{
  v4 = *MEMORY[0x277D76F30];
  v5 = [(HUItemTableViewController *)self _shouldHideFooterForSection:section];
  result = 2.22507386e-308;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v7 = [(HUItemTableViewController *)self moduleControllerForItem:v9];
  v8 = v7;
  if (v7)
  {
    [v7 accessoryButtonTappedForItem:v9];
  }
}

- (id)tableView:(id)view leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedItemAtIndexPath:pathCopy];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User swiped for leading actions on item: %@", &v13, 0x16u);
  }

  selfCopy2 = [(HUItemTableViewController *)self moduleControllerForItem:v7];
  v10 = selfCopy2;
  if (!selfCopy2)
  {
    selfCopy2 = self;
  }

  v11 = [selfCopy2 leadingSwipeActionsForItem:v7];

  return v11;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedItemAtIndexPath:pathCopy];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User swiped for trailing actions on item: %@", &v13, 0x16u);
  }

  selfCopy2 = [(HUItemTableViewController *)self moduleControllerForItem:v7];
  v10 = selfCopy2;
  if (!selfCopy2)
  {
    selfCopy2 = self;
  }

  v11 = [selfCopy2 trailingSwipeActionsForItem:v7];

  return v11;
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  itemsCopy = items;
  addItemsCopy = addItems;
  removeItemsCopy = removeItems;
  [(HUItemTableViewController *)self itemManagerDidUpdate:manager];
  [(HUItemTableViewController *)self cleanupRecentlyRemovedModuleControllers];
  if ([itemsCopy count] || objc_msgSend(addItemsCopy, "count") || objc_msgSend(removeItemsCopy, "count"))
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __89__HUItemTableViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke;
    v21 = &unk_277DB7558;
    v22 = itemsCopy;
    selfCopy = self;
    v13 = _Block_copy(&v18);
    v14 = [(HUItemTableViewController *)self itemManager:v18];
    v15 = [(HUItemTableViewController *)self shouldPerformUpdateWithAnimationForDiffableDataItemManager:v14];

    if (v15)
    {
      tableView = [(HUItemTableViewController *)self tableView];
      [tableView beginUpdates];

      v13[2](v13);
      tableView2 = [(HUItemTableViewController *)self tableView];
      [tableView2 endUpdates];
    }

    else
    {
      v13[2](v13);
    }
  }
}

uint64_t __89__HUItemTableViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __89__HUItemTableViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke_2;
  v3[3] = &unk_277DBAF68;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __89__HUItemTableViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) itemManager];
  v4 = [v3 indexPathForItem:v7];

  v5 = [*(a1 + 32) tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  if (v6)
  {
    [*(a1 + 32) _dispatchUpdateForCell:v6 item:v7 indexPath:v4 animated:1];
  }
}

- (void)itemManagerDidUpdate:(id)update
{
  v9 = *MEMORY[0x277D85DE8];
  [(HUItemTableViewController *)self _updatePreferredContentSizeIfNecessary];
  if (![(HUItemTableViewController *)self hasFinishedInitialLoad])
  {
    [(HUItemTableViewController *)self setHasFinishedInitialLoad:1];
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: finished initial load", &v7, 0xCu);
    }
  }
}

- (BOOL)shouldPerformUpdateWithAnimationForDiffableDataItemManager:(id)manager
{
  view = [(HUItemTableViewController *)self view];
  window = [view window];
  v5 = window != 0;

  return v5;
}

- (int64_t)_rowAnimationForOperationType:(unint64_t)type item:(id)item
{
  itemCopy = item;
  v7 = [(HUItemTableViewController *)self moduleControllerForItem:itemCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 rowAnimationForOperationType:type item:itemCopy suggestedAnimation:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)itemManager:(id)manager futureToUpdateItems:(id)items itemUpdateOptions:(id)options
{
  optionsCopy = options;
  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  if (![mEMORY[0x277D14670] runningState])
  {

    goto LABEL_7;
  }

  v8 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
LABEL_7:
    v11 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    goto LABEL_8;
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Delaying full item update until the application is active", v14, 2u);
  }

  v11 = objc_alloc_init(MEMORY[0x277D2C900]);
  foregroundUpdateFutures = [(HUItemTableViewController *)self foregroundUpdateFutures];
  [foregroundUpdateFutures addObject:v11];

LABEL_8:

  return v11;
}

- (void)itemManager:(id)manager performUpdateRequest:(id)request
{
  managerCopy = manager;
  requestCopy = request;
  if (-[HUItemTableViewController viewHasAppeared](self, "viewHasAppeared") && -[HUItemTableViewController alwaysUseDeltaTableViewUpdatesAfterViewHasAppeared](self, "alwaysUseDeltaTableViewUpdatesAfterViewHasAppeared") || -[HUItemTableViewController bypassInitialItemUpdateReload](self, "bypassInitialItemUpdateReload") || ([requestCopy isInitialUpdate] & 1) == 0 && (-[HUItemTableViewController isViewLoaded](self, "isViewLoaded") & 1) != 0)
  {
    if (![(HUItemTableViewController *)self hasForcedLoadingVisibleCells])
    {
      tableView = [(HUItemTableViewController *)self tableView];
      visibleCells = [tableView visibleCells];

      [(HUItemTableViewController *)self setHasForcedLoadingVisibleCells:1];
    }

    tableView2 = [(HUItemTableViewController *)self tableView];
    [tableView2 beginUpdates];

    [requestCopy performWithOptions:0];
    tableView3 = [(HUItemTableViewController *)self tableView];
    [tableView3 endUpdates];

    [(HUItemTableViewController *)self _updateHeadersAndFootersIfNeededAfterPerformingRequest:requestCopy];
  }

  else
  {
    [requestCopy performWithOptions:1];
    if ([(HUItemTableViewController *)self isViewLoaded])
    {
      tableView4 = [(HUItemTableViewController *)self tableView];
      [tableView4 reloadData];
    }
  }

  [(HUItemTableViewController *)self itemManagerDidUpdate:managerCopy];
}

- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  tableView = [(HUItemTableViewController *)self tableView];
  v9 = [tableView cellForRowAtIndexPath:pathCopy];

  if (v9)
  {
    [(HUItemTableViewController *)self _dispatchUpdateForCell:v9 item:itemCopy indexPath:pathCopy animated:1];
  }
}

- (void)itemManager:(id)manager didRemoveItem:(id)item atIndexPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v8 = [(HUItemTableViewController *)self _rowAnimationForOperationType:2 item:item];
  tableView = [(HUItemTableViewController *)self tableView];
  v11[0] = pathCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [tableView deleteRowsAtIndexPaths:v10 withRowAnimation:v8];
}

- (void)itemManager:(id)manager didInsertItem:(id)item atIndexPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v8 = [(HUItemTableViewController *)self _rowAnimationForOperationType:1 item:item];
  tableView = [(HUItemTableViewController *)self tableView];
  v11[0] = pathCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [tableView insertRowsAtIndexPaths:v10 withRowAnimation:v8];
}

- (void)itemManager:(id)manager didMoveItem:(id)item fromIndexPath:(id)path toIndexPath:(id)indexPath
{
  itemCopy = item;
  pathCopy = path;
  indexPathCopy = indexPath;
  tableView = [(HUItemTableViewController *)self tableView];
  v12 = [tableView cellForRowAtIndexPath:pathCopy];

  if (v12)
  {
    [(HUItemTableViewController *)self _dispatchUpdateForCell:v12 item:itemCopy indexPath:pathCopy animated:1];
  }

  tableView2 = [(HUItemTableViewController *)self tableView];
  [tableView2 moveRowAtIndexPath:pathCopy toIndexPath:indexPathCopy];
}

- (void)itemManager:(id)manager didRemoveSections:(id)sections
{
  sectionsCopy = sections;
  tableView = [(HUItemTableViewController *)self tableView];
  [tableView deleteSections:sectionsCopy withRowAnimation:0];
}

- (void)itemManager:(id)manager didInsertSections:(id)sections
{
  sectionsCopy = sections;
  tableView = [(HUItemTableViewController *)self tableView];
  [tableView insertSections:sectionsCopy withRowAnimation:0];
}

- (void)itemManager:(id)manager didMoveSection:(int64_t)section toSection:(int64_t)toSection
{
  tableView = [(HUItemTableViewController *)self tableView];
  [tableView moveSection:section toSection:toSection];
}

- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item
{
  [(HUItemTableViewController *)self _updateTitle:manager];

  [(HUItemTableViewController *)self _updateTableHeaderAndFooter];
}

- (void)itemManager:(id)manager didChangeSourceItem:(id)item
{
  [(HUItemTableViewController *)self _updateTitle:manager];

  [(HUItemTableViewController *)self _updateTableHeaderAndFooter];
}

- (void)itemManager:(id)manager didUpdateItemModules:(id)modules
{
  v51 = *MEMORY[0x277D85DE8];
  modulesCopy = modules;
  itemModuleControllers = [(HUItemTableViewController *)self itemModuleControllers];
  v7 = [itemModuleControllers na_map:&__block_literal_global_212];

  v8 = MEMORY[0x277D14AE8];
  v32 = modulesCopy;
  v9 = [MEMORY[0x277CBEB98] setWithArray:modulesCopy];
  v31 = v7;
  v10 = [v8 diffFromSet:v7 toSet:v9];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  additions = [v10 additions];
  v12 = [additions countByEnumeratingWithState:&v39 objects:v50 count:16];
  v13 = &OBJC_IVAR___HUNetworkConfigurationItemListModule__networkConfigurationGroupItemProvider;
  if (v12)
  {
    v14 = v12;
    v15 = *v40;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(additions);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        v18 = [(HUItemTableViewController *)self buildItemModuleControllerForModule:v17];
        v19 = v18;
        if (v18)
        {
          [v18 setHost:self];
          [v19 setHostType:1];
          [(NSMutableSet *)self->_internalItemModuleControllers addObject:v19];
        }

        else
        {
          NSLog(&cfstr_NoModuleContro_0.isa, v17, self);
        }
      }

      v14 = [additions countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v14);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v10 deletions];
  v20 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v35 + 1) + 8 * j);
        v25 = v13[54];
        v26 = *(&self->super.super.super.super.super.isa + v25);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __62__HUItemTableViewController_itemManager_didUpdateItemModules___block_invoke_2;
        v34[3] = &unk_277DC09E8;
        v34[4] = v24;
        v27 = [v26 na_firstObjectPassingTest:v34];
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
            v45 = 2112;
            v46 = v27;
            v47 = 2112;
            v48 = moduleIdentifier;
            _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@: Starting removal of module controller %@ (%@) because module was deleted. Adding to recently removed for safety", buf, 0x20u);
          }

          [(NSMutableSet *)self->_recentlyRemovedItemModuleControllers addObject:v27];
          v13 = v28;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v21);
  }
}

BOOL __62__HUItemTableViewController_itemManager_didUpdateItemModules___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 module];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)expandableTextViewCellStateDidChange:(id)change
{
  tableView = [(HUItemTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)highlightItemAnimated:(id)animated duration:(double)duration
{
  animatedCopy = animated;
  if (_MergedGlobals_2_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2_2, &__block_literal_global_221);
  }

  v7 = qword_27C8380A8;
  itemManager = [(HUItemTableViewController *)self itemManager];
  allItems = [itemManager allItems];
  v10 = [allItems containsObject:animatedCopy];

  if (v10)
  {
    tableView = [(HUItemTableViewController *)self tableView];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v13 = [itemManager2 indexPathForItem:animatedCopy];
    v14 = [tableView cellForRowAtIndexPath:v13];

    if (v14)
    {
      objc_initWeak(&location, v14);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__HUItemTableViewController_highlightItemAnimated_duration___block_invoke_3;
      v15[3] = &unk_277DBEE28;
      objc_copyWeak(v17, &location);
      v16 = v7;
      v17[1] = *&duration;
      dispatch_async(v16, v15);

      objc_destroyWeak(v17);
      objc_destroyWeak(&location);
    }
  }
}

void __60__HUItemTableViewController_highlightItemAnimated_duration___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Home.itemTableViewController.highlightQueue", v2);
  v1 = qword_27C8380A8;
  qword_27C8380A8 = v0;
}

void __60__HUItemTableViewController_highlightItemAnimated_duration___block_invoke_3(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HUItemTableViewController_highlightItemAnimated_duration___block_invoke_4;
  block[3] = &unk_277DBEE28;
  objc_copyWeak(v4, a1 + 5);
  v3 = a1[4];
  v4[1] = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v4);
}

void __60__HUItemTableViewController_highlightItemAnimated_duration___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setHighlighted:1 animated:1];

  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HUItemTableViewController_highlightItemAnimated_duration___block_invoke_5;
  v4[3] = &unk_277DB90B8;
  v5[1] = *(a1 + 48);
  objc_copyWeak(v5, (a1 + 40));
  dispatch_async(v3, v4);
  objc_destroyWeak(v5);
}

void __60__HUItemTableViewController_highlightItemAnimated_duration___block_invoke_5(uint64_t a1)
{
  [MEMORY[0x277CCACC8] sleepForTimeInterval:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HUItemTableViewController_highlightItemAnimated_duration___block_invoke_6;
  block[3] = &unk_277DB8770;
  objc_copyWeak(&v3, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v3);
}

void __60__HUItemTableViewController_highlightItemAnimated_duration___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHighlighted:0 animated:1];
}

- (void)scrollToItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  v7 = [[HUItemTableViewScrollDestination alloc] initWithItem:itemCopy animated:animatedCopy];

  if ([(HUItemTableViewController *)self appearState]== 1 || [(HUItemTableViewController *)self appearState]== 2)
  {
    [(HUItemTableViewController *)self _scrollToDestination:v7];
  }

  else
  {
    [(HUItemTableViewController *)self setPendingScrollDestination:v7];
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  v4 = [(HUItemTableViewController *)self _itemForTextField:?];
  v5 = [(HUItemTableViewController *)self moduleControllerForItem:v4];
  v6 = v5;
  if (v4 && v5)
  {
    [v5 textFieldDidBeginEditing:editingCopy item:v4];
  }

  else if (!v4)
  {
    goto LABEL_7;
  }

  if ([(HUItemTableViewController *)self shouldManageTextFieldForItem:v4])
  {
    [(HUItemTableViewController *)self textFieldDidBeginEditing:editingCopy item:v4];
  }

LABEL_7:
}

- (BOOL)textFieldShouldClear:(id)clear
{
  clearCopy = clear;
  v5 = [(HUItemTableViewController *)self _itemForTextField:clearCopy];
  v6 = [(HUItemTableViewController *)self moduleControllerForItem:v5];
  v7 = v6;
  if (v5)
  {
    if ([v6 shouldManageTextFieldForItem:v5])
    {
      [v7 textDidChange:&stru_2823E0EE8 forTextField:clearCopy item:v5];
    }

    if ([(HUItemTableViewController *)self shouldManageTextFieldForItem:v5])
    {
      [(HUItemTableViewController *)self textDidChange:&stru_2823E0EE8 forTextField:clearCopy item:v5];
    }
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  v14 = *MEMORY[0x277D85DE8];
  editingCopy = editing;
  v5 = [(HUItemTableViewController *)self _itemForTextField:editingCopy];
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

  v8 = [(HUItemTableViewController *)self moduleControllerForItem:v5];
  v9 = v8;
  if (v5)
  {
    if ([v8 shouldManageTextFieldForItem:v5])
    {
      [v9 textFieldDidEndEditing:editingCopy item:v5];
    }

    if ([(HUItemTableViewController *)self shouldManageTextFieldForItem:v5])
    {
      [(HUItemTableViewController *)self textFieldDidEndEditing:editingCopy item:v5];
    }
  }
}

- (void)textFieldDidChange:(id)change
{
  object = [change object];
  v4 = [(HUItemTableViewController *)self _itemForTextField:?];
  v5 = [(HUItemTableViewController *)self moduleControllerForItem:v4];
  v6 = v5;
  if (v4)
  {
    if ([v5 shouldManageTextFieldForItem:v4])
    {
      text = [object text];
      [v6 textDidChange:text forTextField:object item:v4];
    }

    if ([(HUItemTableViewController *)self shouldManageTextFieldForItem:v4])
    {
      text2 = [object text];
      [(HUItemTableViewController *)self textDidChange:text2 forTextField:object item:v4];
    }
  }
}

- (id)hu_preloadContent
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HUItemTableViewController *)self hasFinishedInitialLoad])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    diffableDataSourceDisabled = [itemManager diffableDataSourceDisabled];

    if ((diffableDataSourceDisabled & 1) == 0)
    {
      [(HUItemTableViewController *)self loadViewIfNeeded];
    }

    if (![objc_opt_class() updateMode] && !-[HUItemTableViewController visibilityUpdatesEnabled](self, "visibilityUpdatesEnabled"))
    {
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      [itemManager2 endDisableExternalUpdatesWithReason:@"HUItemTableViewController_NotVisible"];

      [(HUItemTableViewController *)self setVisibilityUpdatesEnabled:1];
    }

    itemManager3 = [(HUItemTableViewController *)self itemManager];
    diffableDataSourceDisabled2 = [itemManager3 diffableDataSourceDisabled];

    if (diffableDataSourceDisabled2)
    {
      [(HUItemTableViewController *)self loadViewIfNeeded];
    }

    v9 = MEMORY[0x277CBEB18];
    itemManager4 = [(HUItemTableViewController *)self itemManager];
    firstFastUpdateFuture = [itemManager4 firstFastUpdateFuture];
    v12 = [v9 arrayWithObject:firstFastUpdateFuture];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    childViewControllersToPreload = [(HUItemTableViewController *)self childViewControllersToPreload];
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
  if (![change runningState])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Proceeding with full item update(s)", v6, 2u);
    }

    foregroundUpdateFutures = [(HUItemTableViewController *)self foregroundUpdateFutures];
    [foregroundUpdateFutures na_each:&__block_literal_global_230];
  }
}

- (HFItem)hu_presentedItem
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];

  return sourceItem;
}

- (void)recursivelyDisableItemUpdates:(BOOL)updates withReason:(id)reason
{
  updatesCopy = updates;
  v24 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  itemManager = [(HUItemTableViewController *)self itemManager];
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
  childViewControllers = [(HUItemTableViewController *)self childViewControllers];
  v11 = [v9 setWithArray:childViewControllers];

  childViewControllersToPreload = [(HUItemTableViewController *)self childViewControllersToPreload];
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
        if ([v18 conformsToProtocol:{&unk_28249D628, v19}])
        {
          [v18 recursivelyDisableItemUpdates:updatesCopy withReason:reasonCopy];
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
  [(HUItemTableViewController *)self _transformViewControllerForRequest:requestCopy];
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

  v18 = v6;

  v7 = v18;
  if (v18)
  {
    preferredStyle = [v18 preferredStyle];
    v7 = v18;
    if (!preferredStyle)
    {
      popoverPresentationController = [v18 popoverPresentationController];
      v7 = v18;
      if (popoverPresentationController)
      {
        v10 = popoverPresentationController;
        popoverPresentationController2 = [v18 popoverPresentationController];
        sourceView = [popoverPresentationController2 sourceView];

        v7 = v18;
        if (!sourceView)
        {
          tableView = [(HUItemTableViewController *)self tableView];
          indexPathForSelectedRow = [tableView indexPathForSelectedRow];

          if (indexPathForSelectedRow)
          {
            tableView2 = [(HUItemTableViewController *)self tableView];
            tableView3 = [tableView2 cellForRowAtIndexPath:indexPathForSelectedRow];

            if (!tableView3)
            {
              tableView3 = [(HUItemTableViewController *)self tableView];
            }

            popoverPresentationController3 = [v18 popoverPresentationController];
            [popoverPresentationController3 setSourceView:tableView3];
          }

          v7 = v18;
        }
      }
    }
  }
}

- (void)updateCellForItems:(id)items
{
  itemsCopy = items;
  itemManager = [(HUItemTableViewController *)self itemManager];
  diffableDataSourceDisabled = [itemManager diffableDataSourceDisabled];

  if (diffableDataSourceDisabled)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__HUItemTableViewController_updateCellForItems___block_invoke;
    v10[3] = &unk_277DC0A30;
    v10[4] = self;
    v7 = [itemsCopy na_map:v10];

    tableView = [(HUItemTableViewController *)self tableView];
    [tableView reloadRowsAtIndexPaths:v7 withRowAnimation:5];

    itemsCopy = v7;
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__HUItemTableViewController_updateCellForItems___block_invoke_2;
    v9[3] = &unk_277DBAF68;
    v9[4] = self;
    [itemsCopy na_each:v9];
  }
}

id __48__HUItemTableViewController_updateCellForItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemManager];
  v5 = [v4 indexPathForItem:v3];

  return v5;
}

void __48__HUItemTableViewController_updateCellForItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 itemManager];
  v5 = [*(a1 + 32) itemManager];
  v6 = [v5 indexPathForItem:v4];
  [v3 itemManager:v7 didUpdateResultsForItem:v4 atIndexPath:v6];
}

- (void)reloadCellForItems:(id)items withDiffableDataSourceReload:(BOOL)reload
{
  itemsCopy = items;
  itemManager = [(HUItemTableViewController *)self itemManager];
  diffableDataSourceDisabled = [itemManager diffableDataSourceDisabled];

  if (diffableDataSourceDisabled)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__HUItemTableViewController_reloadCellForItems_withDiffableDataSourceReload___block_invoke;
    v11[3] = &unk_277DC0A30;
    v11[4] = self;
    v8 = [itemsCopy na_map:v11];
    tableView = [(HUItemTableViewController *)self tableView];
    [tableView reloadRowsAtIndexPaths:v8 withRowAnimation:5];
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    [itemManager2 reloadUIRepresentationForItems:itemsCopy withAnimation:0];
  }
}

id __77__HUItemTableViewController_reloadCellForItems_withDiffableDataSourceReload___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemManager];
  v5 = [v4 indexPathForItem:v3];

  return v5;
}

@end
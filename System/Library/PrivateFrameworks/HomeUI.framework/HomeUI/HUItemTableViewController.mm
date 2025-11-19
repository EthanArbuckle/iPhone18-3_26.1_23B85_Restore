@interface HUItemTableViewController
- (BOOL)_shouldHideFooterForSection:(int64_t)a3;
- (BOOL)_shouldHideHeaderForSection:(int64_t)a3;
- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4;
- (BOOL)shouldManageTextFieldForItem:(id)a3;
- (BOOL)shouldPerformUpdateWithAnimationForDiffableDataItemManager:(id)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)textFieldShouldClear:(id)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (Class)mappableCellClassForItem:(id)a3 indexPath:(id)a4;
- (HFItem)hu_presentedItem;
- (HUItemTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUItemTableViewController)initWithStyle:(int64_t)a3;
- (NSString)description;
- (double)tableView:(id)a3 estimatedHeightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_itemForTextField:(id)a3;
- (id)_visibleCellForItem:(id)a3;
- (id)contentConfigurationForFooterViewAtSectionIndex:(unint64_t)a3;
- (id)contentConfigurationForHeaderViewAtSectionIndex:(unint64_t)a3;
- (id)currentTextForTextField:(id)a3 item:(id)a4;
- (id)defaultTextForTextField:(id)a3 item:(id)a4;
- (id)hu_preloadContent;
- (id)itemManager:(id)a3 futureToUpdateItems:(id)a4 itemUpdateOptions:(id)a5;
- (id)itemTableFooterView;
- (id)itemTableHeaderView;
- (id)moduleController:(id)a3 presentViewControllerForRequest:(id)a4;
- (id)moduleControllerForItem:(id)a3;
- (id)placeholderTextForTextField:(id)a3 item:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 leadingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)textFieldForVisibleItem:(id)a3;
- (int64_t)_rowAnimationForOperationType:(unint64_t)a3 item:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_dispatchUpdateForCell:(id)a3 item:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)_performCommonUpdateForCell:(id)a3 item:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)_scrollToDestination:(id)a3;
- (void)_transformViewControllerForRequest:(id)a3;
- (void)_updateHeadersAndFootersIfNeededAfterPerformingRequest:(id)a3;
- (void)_updateLayoutMarginsForCells:(id)a3;
- (void)_updateMaterials;
- (void)_updatePreferredContentSizeIfNecessary;
- (void)_updateTableHeaderAndFooter;
- (void)_updateTitle;
- (void)cleanupRecentlyRemovedModuleControllers;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)executionEnvironmentRunningStateDidChange:(id)a3;
- (void)expandableTextViewCellStateDidChange:(id)a3;
- (void)highlightItemAnimated:(id)a3 duration:(double)a4;
- (void)itemManager:(id)a3 didChangeSourceItem:(id)a4;
- (void)itemManager:(id)a3 didInsertItem:(id)a4 atIndexPath:(id)a5;
- (void)itemManager:(id)a3 didInsertSections:(id)a4;
- (void)itemManager:(id)a3 didMoveItem:(id)a4 fromIndexPath:(id)a5 toIndexPath:(id)a6;
- (void)itemManager:(id)a3 didMoveSection:(int64_t)a4 toSection:(int64_t)a5;
- (void)itemManager:(id)a3 didRemoveItem:(id)a4 atIndexPath:(id)a5;
- (void)itemManager:(id)a3 didRemoveSections:(id)a4;
- (void)itemManager:(id)a3 didUpdateItemModules:(id)a4;
- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5;
- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4;
- (void)itemManager:(id)a3 performUpdateRequest:(id)a4;
- (void)itemManagerDidUpdate:(id)a3;
- (void)recursivelyDisableItemUpdates:(BOOL)a3 withReason:(id)a4;
- (void)reloadCellForItems:(id)a3 withDiffableDataSourceReload:(BOOL)a4;
- (void)scrollToItem:(id)a3 animated:(BOOL)a4;
- (void)setAutomaticallyUpdatesViewControllerTitle:(BOOL)a3;
- (void)setGridLayoutOptions:(id)a3;
- (void)setUpDiffableDataItemManagerIfNeeded;
- (void)setWantsPreferredContentSize:(BOOL)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
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
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUItemTableViewController

- (HUItemTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v7 = a3;
  v22.receiver = self;
  v22.super_class = HUItemTableViewController;
  v8 = [(HUTableViewController *)&v22 initWithStyle:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemManager, a3);
    [(HFItemManager *)v9->_itemManager setDelegate:v9];
    if (![objc_opt_class() updateMode])
    {
      [v7 disableExternalUpdatesWithReason:@"HUItemTableViewController_NotVisible"];
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

    v16 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    textFieldToCellMap = v9->_textFieldToCellMap;
    v9->_textFieldToCellMap = v16;

    v18 = [MEMORY[0x277CBEB18] array];
    foregroundUpdateFutures = v9->_foregroundUpdateFutures;
    v9->_foregroundUpdateFutures = v18;

    v9->_automaticallyUpdatesViewControllerTitle = 1;
    v20 = [MEMORY[0x277D14670] sharedInstance];
    [v20 addObserver:v9];

    [(HUItemTableViewController *)v9 _updateTitle];
  }

  return v9;
}

- (HUItemTableViewController)initWithStyle:(int64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemManager_tableViewStyle_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUItemTableViewController.m" lineNumber:131 description:{@"%s is unavailable; use %@ instead", "-[HUItemTableViewController initWithStyle:]", v6}];

  return 0;
}

- (void)setUpDiffableDataItemManagerIfNeeded
{
  v14 = [(HUItemTableViewController *)self itemManager];
  if ([v14 diffableDataSourceDisabled])
  {
  }

  else
  {
    v3 = [(HUItemTableViewController *)self itemManager];
    v4 = [v3 diffableDataSource];

    if (!v4)
    {
      v5 = [(HUItemTableViewController *)self itemManager];
      v6 = objc_opt_class();

      v7 = objc_opt_class();
      v8 = [(HUItemTableViewController *)self itemManager];
      objc_initWeak(&location, v8);

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
      v11 = [(HUItemTableViewController *)self tableView];
      v12 = [(HUTableViewDiffableDataSource *)v10 initWithTableView:v11 cellProvider:v9 delegate:self];

      [(UITableViewDiffableDataSource *)v12 setDefaultRowAnimation:0];
      v13 = [(HUItemTableViewController *)self itemManager];
      [v13 setDiffableDataSource:v12];

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
  v4 = [(HUItemTableViewController *)self tableView];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 registerClass:v5 forHeaderFooterViewReuseIdentifier:v7];

  v8 = [(HUItemTableViewController *)self tableView];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v8 registerClass:v9 forHeaderFooterViewReuseIdentifier:v11];

  v12 = [(HUItemTableViewController *)self tableView];
  [v12 setSeparatorStyle:0];

  v13 = [MEMORY[0x277D756E0] cellConfiguration];
  v14 = [(HUItemTableViewController *)self traitCollection];
  [v13 _minimumHeightForTraitCollection:v14];
  v16 = v15;
  v17 = [(HUItemTableViewController *)self tableView];
  [v17 setEstimatedRowHeight:v16];

  v18 = *MEMORY[0x277D76F30];
  v19 = [(HUItemTableViewController *)self tableView];
  [v19 setRowHeight:v18];

  v20 = [MEMORY[0x277D75348] hf_keyColor];
  v21 = [(HUItemTableViewController *)self tableView];
  [v21 setTintColor:v20];

  if ([objc_opt_class() updateMode] == 1)
  {
    v22 = [(HUItemTableViewController *)self itemManager];
    v23 = [v22 reloadAndUpdateAllItemsFromSenderSelector:a2];
  }

  [(HUItemTableViewController *)self _updateTableHeaderAndFooter];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(HUItemTableViewController *)self setAppearState:1];
  v5 = [(HUItemTableViewController *)self gridLayoutOptions];
  [v5 viewSize];
  v7 = v6;
  v9 = v8;
  v10 = [(HUItemTableViewController *)self view];
  [v10 frame];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    v16 = [(HUItemTableViewController *)self view];
    [v16 frame];
    v19 = [HUGridLayoutOptions defaultOptionsForViewSize:v17, v18];
    [(HUItemTableViewController *)self setGridLayoutOptions:v19];
  }

  if (![objc_opt_class() updateMode])
  {
    v20 = [(HUTableViewController *)self childViewControllersAtViewWillDisappearTime];
    v21 = [v20 copy];

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
  [(HUTableViewController *)&v27 viewWillAppear:v3];
  v25 = [(HUItemTableViewController *)self pendingScrollDestination];

  if (v25)
  {
    v26 = [(HUItemTableViewController *)self pendingScrollDestination];
    [(HUItemTableViewController *)self _scrollToDestination:v26];

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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(HUItemTableViewController *)self setAppearState:2];
  [(HUItemTableViewController *)self setViewHasAppeared:1];
  v6.receiver = self;
  v6.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v6 viewDidAppear:v3];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_textFieldDidChange_ name:*MEMORY[0x277D770B0] object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  [(HUItemTableViewController *)self setAppearState:3];
  if (![objc_opt_class() updateMode])
  {
    if ([(HUItemTableViewController *)self visibilityUpdatesEnabled])
    {
      v5 = [(HUItemTableViewController *)self itemManager];
      [v5 disableExternalUpdatesWithReason:@"HUItemTableViewController_NotVisible"];

      [(HUItemTableViewController *)self setVisibilityUpdatesEnabled:0];
    }

    v6 = [(HUItemTableViewController *)self deferredVisibilityUpdate];
    [v6 cancel];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(HUItemTableViewController *)self childViewControllers];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if ([v12 conformsToProtocol:&unk_28249D628])
          {
            v13 = [v12 itemManager];
            [v13 disableExternalUpdatesWithReason:@"HUItemTableViewController_ParentNotVisible"];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 removeObserver:self name:*MEMORY[0x277D770B0] object:0];

  v15 = [(HUItemTableViewController *)self view];
  [v15 endEditing:1];

  v16.receiver = self;
  v16.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v16 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(HUItemTableViewController *)self setAppearState:0];
  v5.receiver = self;
  v5.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = HUItemTableViewController;
  v7 = a4;
  [(HUItemTableViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HUItemTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
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
  v3 = [(HUItemTableViewController *)self tableView];
  v4 = [v3 tableHeaderView];
  v5 = [(HUItemTableViewController *)self tableView];
  [v5 bounds];
  [v4 hu_autoSizeByConstrainingWidth:CGRectGetWidth(v10)];

  v6 = [(HUItemTableViewController *)self tableView];
  v7 = [v6 tableFooterView];
  v8 = [(HUItemTableViewController *)self tableView];
  [v8 bounds];
  [v7 hu_autoSizeByConstrainingWidth:CGRectGetWidth(v11)];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v3 viewDidLayoutSubviews];
  [(HUItemTableViewController *)self _updatePreferredContentSizeIfNecessary];
}

- (void)setGridLayoutOptions:(id)a3
{
  v9 = a3;
  if (([v9 isEqual:self->_gridLayoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_gridLayoutOptions, a3);
    v5 = [(HUItemTableViewController *)self tableView];
    v6 = [v5 window];

    if (v6)
    {
      v7 = [(HUItemTableViewController *)self tableView];
      v8 = [v7 visibleCells];
      [(HUItemTableViewController *)self _updateLayoutMarginsForCells:v8];
    }
  }
}

- (void)setWantsPreferredContentSize:(BOOL)a3
{
  if (self->_wantsPreferredContentSize != a3)
  {
    self->_wantsPreferredContentSize = a3;
    [(HUItemTableViewController *)self _updatePreferredContentSizeIfNecessary];
  }
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = [(HUItemTableViewController *)self itemModuleControllers:a3];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HUItemTableViewController.m" lineNumber:363 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUItemTableViewController cellClassForItem:indexPath:]", objc_opt_class()}];
  }

  return 0;
}

- (Class)mappableCellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 conformsToProtocol:&unk_2824EAA20])
  {
    v8 = v6;
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
    [(HUItemTableViewController *)self cellClassForItem:v6 indexPath:v7];
  }
  v11 = ;

  return v11;
}

- (BOOL)shouldManageTextFieldForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self moduleControllerForItem:v4];
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

- (id)currentTextForTextField:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemTableViewController *)self moduleControllerForItem:v7];
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
  v8 = [(HUItemTableViewController *)self moduleControllerForItem:v7];
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
  v8 = [(HUItemTableViewController *)self moduleControllerForItem:v6];
  v9 = v8;
  if (v8)
  {
    [v8 placeholderTextForTextField:v7 item:v6];
  }

  else
  {
    [(HUItemTableViewController *)self defaultTextForTextField:v7 item:v6];
  }
  v10 = ;

  return v10;
}

- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2824ECD58])
  {
    v5 = v4;
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

- (void)setAutomaticallyUpdatesViewControllerTitle:(BOOL)a3
{
  if (self->_automaticallyUpdatesViewControllerTitle != a3)
  {
    self->_automaticallyUpdatesViewControllerTitle = a3;
    if (a3)
    {
      [(HUItemTableViewController *)self _updateTitle];
    }
  }
}

- (id)itemTableHeaderView
{
  v3 = [(HUItemTableViewController *)self itemTableHeaderMessage];
  if (v3)
  {
    objc_opt_class();
    v4 = [(HUItemTableViewController *)self tableView];
    v5 = [v4 tableHeaderView];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      v5 = [[HUItemTableHeaderFooterView alloc] initWithReuseIdentifier:0];
    }

    [(HUItemTableHeaderFooterView *)v5 setAttributedMessage:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)itemTableFooterView
{
  v3 = [(HUItemTableViewController *)self itemTableFooterMessage];
  if (v3)
  {
    objc_opt_class();
    v4 = [(HUItemTableViewController *)self tableView];
    v5 = [v4 tableFooterView];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      v5 = [[HUItemTableHeaderFooterView alloc] initWithReuseIdentifier:0];
    }

    [(HUItemTableHeaderFooterView *)v5 setAttributedMessage:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contentConfigurationForHeaderViewAtSectionIndex:(unint64_t)a3
{
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 titleForSection:a3];

  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 itemSectionForSectionIndex:a3];

  if (!v6 || ([v8 headerAccessoryButtonTitle], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(v8, "headerAccessoryButtonDelegate"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = 0;
    goto LABEL_14;
  }

  v13 = [(HUItemTableViewController *)self tableView];
  v14 = [v13 style];

  if (v14 == 2)
  {
    v15 = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
  }

  else if (v14 == 1)
  {
    v15 = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
  }

  else
  {
    if (v14)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v15 = [MEMORY[0x277D756E0] plainHeaderConfiguration];
  }

  v12 = v15;
LABEL_13:
  [v12 setText:v6];
LABEL_14:

  return v12;
}

- (id)contentConfigurationForFooterViewAtSectionIndex:(unint64_t)a3
{
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 footerTitleForSection:a3];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v7 = [(HUItemTableViewController *)self tableView];
  v8 = [v7 style];

  if ((v8 - 1) >= 2)
  {
    if (v8)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v9 = [MEMORY[0x277D756E0] plainFooterConfiguration];
  }

  else
  {
    v9 = [MEMORY[0x277D756E0] groupedFooterConfiguration];
  }

  v10 = v9;
LABEL_9:
  [v10 setText:v6];
LABEL_10:

  return v10;
}

- (id)moduleControllerForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self itemModuleControllers];
  v6 = [(HUItemTableViewController *)self recentlyRemovedItemModuleControllers];
  v7 = [v5 setByAddingObjectsFromSet:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HUItemTableViewController_moduleControllerForItem___block_invoke;
  v11[3] = &unk_277DC09E8;
  v12 = v4;
  v8 = v4;
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
  v3 = [(HUItemTableViewController *)self recentlyRemovedItemModuleControllers];
  v4 = [v3 copy];

  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 allItems];
  v7 = [v6 na_map:&__block_literal_global_275];

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

        v21 = [(HUItemTableViewController *)self recentlyRemovedItemModuleControllers];
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
      v22 = [(HUItemTableViewController *)self recentlyRemovedItemModuleControllers];
      v23 = [v22 na_map:&__block_literal_global_133_0];
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

- (id)textFieldForVisibleItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 indexPathForItem:v4];

  if (v6)
  {
    v7 = [(HUItemTableViewController *)self tableView];
    v8 = [v7 cellForRowAtIndexPath:v6];

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

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 sourceItem];
  v6 = [v3 appendObject:v5 withName:@"sourceItem"];

  v7 = [v3 build];

  return v7;
}

- (void)_updateMaterials
{
  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    v3 = [(HUItemTableViewController *)self traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      v5 = 19;
    }

    else
    {
      v5 = 14;
    }

    v20 = [MEMORY[0x277D75210] effectWithStyle:v5];
    v6 = [MEMORY[0x277D75348] clearColor];
    v7 = [(HUItemTableViewController *)self parentViewController];
    NSClassFromString(&cfstr_Huquickcontrol_81.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [MEMORY[0x277D75D00] effectForBlurEffect:v20 style:6];
      v10 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v9];
      [(HUItemTableViewController *)self setBackgroundVisualEffectView:v10];

      v11 = [(HUItemTableViewController *)self backgroundVisualEffectView];
      v12 = [(HUItemTableViewController *)self tableView];
      [v12 setBackgroundView:v11];

      v13 = [(HUItemTableViewController *)self tableView];
      [v13 setSeparatorEffect:v9];

      v14 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];

      v6 = v14;
    }

    v15 = objc_opt_class();
    if (v15 == NSClassFromString(&cfstr_Huservicedetai_123.isa))
    {
      v16 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.1];

      v6 = v16;
    }

    v17 = [(HUItemTableViewController *)self view];
    [v17 setBackgroundColor:v6];

    v18 = [(HUItemTableViewController *)self tableView];
    [v18 setBackgroundColor:v6];

    v19 = [(HUItemTableViewController *)self backgroundVisualEffectView];
    [v19 setEffect:v20];
  }
}

- (void)_dispatchUpdateForCell:(id)a3 item:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v14 = a5;
  v10 = a4;
  v11 = a3;
  [(HUItemTableViewController *)self _performCommonUpdateForCell:v11 item:v10 indexPath:v14 animated:v6];
  v12 = [(HUItemTableViewController *)self moduleControllerForItem:v10];
  v13 = v12;
  if (v12)
  {
    [v12 updateCell:v11 forItem:v10 animated:v6];
  }

  else
  {
    [(HUItemTableViewController *)self updateCell:v11 forItem:v10 indexPath:v14 animated:v6];
  }
}

- (void)_performCommonUpdateForCell:(id)a3 item:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v47[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v47[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  [(HUItemTableViewController *)self _updateLayoutMarginsForCells:v11];

  if ([v9 conformsToProtocol:&unk_2824BFD88])
  {
    v12 = v9;
    v13 = [(HUItemTableViewController *)self automaticDisablingReasonsForItem:v10];
    v14 = [(HUItemTableViewController *)self itemManager];
    v15 = [v14 home];
    v16 = [v15 hf_currentUserIsAdministrator];

    if (v16)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      v18 = [v10 latestResults];
      v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277D13F10]];

      if (v19)
      {
        LODWORD(v17) = [v19 BOOLValue];
      }

      else
      {
        v17 = (v13 >> 1) & 1;
      }
    }

    v20 = [v10 latestResults];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v22 = [v21 BOOLValue];

    if ((v22 & 1) != 0 || v17)
    {
      [v12 setDisabled:1];
      v23 = [(HUItemTableViewController *)self moduleControllerForItem:v10];
      v24 = v23;
      if (v23 && ([v23 canSelectDisabledItem:v10] & 1) != 0)
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

  if ([v9 conformsToProtocol:&unk_2824C52F0] && -[HUItemTableViewController shouldManageTextFieldForItem:](self, "shouldManageTextFieldForItem:", v10))
  {
    v26 = v9;
    v27 = [(HUItemTableViewController *)self moduleControllerForItem:v10];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = self;
    }

    v30 = v29;

    v31 = [v26 textField];
    v32 = [(HUItemTableViewController *)v30 defaultTextForTextField:v31 item:v10];

    v33 = [v26 textField];
    v34 = [(HUItemTableViewController *)v30 currentTextForTextField:v33 item:v10];

    v35 = [v26 textField];
    v36 = [(HUItemTableViewController *)v30 placeholderTextForTextField:v35 item:v10];

    v37 = [v26 textField];
    [v37 setPlaceholder:v36];

    if (v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v32;
    }

    v39 = [v26 textField];
    [v39 setText:v38];

    v40 = [v26 textField];
    v41 = [v40 keyboardType] != 7;

    v42 = [v26 textField];
    [v42 setAutocapitalizationType:v41];
  }

  if ([v9 conformsToProtocol:&unk_2824AB590])
  {
    v43 = v9;
    if (objc_opt_respondsToSelector())
    {
      [v43 setResizingDelegate:self];
    }

    [v43 updateUIWithAnimation:v6];
  }

  if ([v9 conformsToProtocol:&unk_2824FC380])
  {
    v44 = v9;
    v45 = [v10 latestResults];
    v46 = [v45 objectForKeyedSubscript:*MEMORY[0x277D13EC0]];

    [v44 setCanBeSelected:v46 == 0];
  }
}

- (id)_visibleCellForItem:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(HUItemTableViewController *)self tableView];
  v6 = [v5 indexPathsForVisibleRows];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(HUItemTableViewController *)self itemManager];
        v13 = [v12 displayedItemAtIndexPath:v11];

        if (v13 == v4)
        {
          v15 = [(HUItemTableViewController *)self tableView];
          v14 = [v15 cellForRowAtIndexPath:v11];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)_itemForTextField:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self textFieldToCellMap];
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
    v12 = [(HUItemTableViewController *)self tableView];
    v13 = [v12 indexPathForCell:v7];

    if (v13)
    {
      v14 = [(HUItemTableViewController *)self itemManager];
      v11 = [v14 displayedItemAtIndexPath:v13];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)_updateTitle
{
  v10 = [(HUItemTableViewController *)self itemManager];
  v3 = [v10 sourceItem];
  if (v3)
  {
    v4 = v3;
    v5 = [(HUItemTableViewController *)self automaticallyUpdatesViewControllerTitle];

    if (!v5)
    {
      return;
    }

    v10 = [(HUItemTableViewController *)self itemManager];
    v6 = [v10 sourceItem];
    v7 = [v6 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v9 = [(HUItemTableViewController *)self navigationItem];
    [v9 setTitle:v8];
  }
}

- (void)_updateTableHeaderAndFooter
{
  v3 = [(HUItemTableViewController *)self tableView];
  v4 = [v3 tableHeaderView];

  v5 = [(HUItemTableViewController *)self tableView];
  v6 = [v5 tableFooterView];

  v7 = [(HUItemTableViewController *)self itemTableHeaderView];
  if (v7 | v4)
  {
    v9 = [(HUItemTableViewController *)self tableView];
    [v9 setTableHeaderView:v7];

    v10 = [(HUItemTableViewController *)self tableView];
    [v10 bounds];
    [v7 hu_autoSizeByConstrainingWidth:CGRectGetWidth(v17)];

    v8 = [(HUItemTableViewController *)self tableView];
    [v8 setTableHeaderView:v7];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEBUG, "Header View not set; skipping", buf, 2u);
    }
  }

  v11 = [(HUItemTableViewController *)self itemTableFooterView];
  if (v11 | v6)
  {
    v12 = [(HUItemTableViewController *)self tableView];
    [v12 setTableFooterView:v11];

    v13 = [(HUItemTableViewController *)self tableView];
    [v13 bounds];
    [v11 hu_autoSizeByConstrainingWidth:CGRectGetWidth(v18)];

    v14 = [(HUItemTableViewController *)self tableView];
    [v14 setTableFooterView:v11];
  }

  else
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_debug_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEBUG, "Footer View not set; skipping", v15, 2u);
    }
  }
}

- (BOOL)_shouldHideHeaderForSection:(int64_t)a3
{
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex:a3];

  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 displayedItemsInSectionWithIdentifier:v6];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __57__HUItemTableViewController__shouldHideHeaderForSection___block_invoke;
  v17 = &unk_277DB95B0;
  v18 = self;
  v19 = v6;
  v9 = v6;
  if (([v8 na_any:&v14] & 1) != 0 || -[HUItemTableViewController shouldHideHeaderAboveSection:](self, "shouldHideHeaderAboveSection:", a3, v14, v15, v16, v17, v18, v19))
  {
    v10 = 1;
  }

  else if (a3 >= 1 && [(HUItemTableViewController *)self shouldHideFooterBelowSection:a3 - 1])
  {
    v12 = [(HUItemTableViewController *)self tableView];
    v13 = [(HUItemTableViewController *)self tableView:v12 titleForHeaderInSection:a3];
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

- (BOOL)_shouldHideFooterForSection:(int64_t)a3
{
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex:a3];

  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 displayedItemsInSectionWithIdentifier:v6];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __57__HUItemTableViewController__shouldHideFooterForSection___block_invoke;
  v18 = &unk_277DB95B0;
  v19 = self;
  v20 = v6;
  v9 = v6;
  if (([v8 na_any:&v15] & 1) != 0 || -[HUItemTableViewController shouldHideFooterBelowSection:](self, "shouldHideFooterBelowSection:", a3, v15, v16, v17, v18, v19, v20))
  {
    v10 = 1;
  }

  else
  {
    v11 = [(HUItemTableViewController *)self tableView];
    if ([v11 numberOfSections] - 1 > a3 && -[HUItemTableViewController shouldHideHeaderAboveSection:](self, "shouldHideHeaderAboveSection:", a3 + 1))
    {
      v12 = [(HUItemTableViewController *)self tableView];
      v13 = [(HUItemTableViewController *)self tableView:v12 titleForFooterInSection:a3];
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

- (void)_updateLayoutMarginsForCells:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([objc_opt_class() adoptsDefaultGridLayoutMargins])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v4;
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
          v15 = [(HUItemTableViewController *)self gridLayoutOptions];
          [v15 sectionLeadingMargin];
          v17 = v16;

          v18 = [(HUItemTableViewController *)self gridLayoutOptions];
          [v18 sectionTrailingMargin];
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
      v7 = [(HUItemTableViewController *)self tableView];
      [v7 _contentSize];
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
    v11 = [(HUItemTableViewController *)self tableView];
    [v11 setNeedsUpdateConstraints];
  }
}

- (void)_updateHeadersAndFootersIfNeededAfterPerformingRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 changes];
  v6 = [v5 groupOperations];
  v7 = [v6 count];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v9 = MEMORY[0x277CBEB98];
    v10 = [v4 changes];
    v11 = [v10 groupOperations];
    v12 = [v11 na_map:&__block_literal_global_185];
    v13 = [v9 setWithArray:v12];

    v14 = [v4 changes];
    v15 = [v14 groupOperations];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__HUItemTableViewController__updateHeadersAndFootersIfNeededAfterPerformingRequest___block_invoke_2;
    v19[3] = &unk_277DC4030;
    v19[4] = self;
    v20 = v13;
    v21 = v8;
    v16 = v8;
    v17 = v13;
    [v15 na_each:v19];

    v18 = [(HUItemTableViewController *)self tableView];
    [v18 _reloadSectionHeaderFooters:v16 withRowAnimation:100];
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

- (void)_scrollToDestination:(id)a3
{
  v8 = a3;
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v8 item];
  v6 = [v4 indexPathForItem:v5];

  if (v6)
  {
    v7 = [(HUItemTableViewController *)self tableView];
    [v7 scrollToRowAtIndexPath:v6 atScrollPosition:1 animated:{objc_msgSend(v8, "isAnimated")}];
  }

  else
  {
    v7 = [v8 item];
    NSLog(&cfstr_CouldNotFindIt.isa, v7);
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 numberOfSections];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 displayedItemsInSection:a4];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 displayedItemAtIndexPath:v6];

  v9 = [(HUItemTableViewController *)self moduleControllerForItem:v8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__HUItemTableViewController_tableView_cellForRowAtIndexPath___block_invoke;
  v27[3] = &unk_277DC0978;
  v10 = v9;
  v28 = v10;
  v11 = v8;
  v29 = v11;
  v30 = self;
  v12 = v6;
  v31 = v12;
  v13 = __61__HUItemTableViewController_tableView_cellForRowAtIndexPath___block_invoke(v27);
  if (!v13)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"HUItemTableViewController.m" lineNumber:987 description:{@"No cell class specified for item: %@", v11}];
  }

  v14 = [(HUItemTableViewController *)self registeredCellClasses];
  v15 = [v14 containsObject:v13];

  if ((v15 & 1) == 0)
  {
    v16 = [(HUItemTableViewController *)self tableView];
    v17 = NSStringFromClass(v13);
    [v16 registerClass:v13 forCellReuseIdentifier:v17];

    v18 = [(HUItemTableViewController *)self registeredCellClasses];
    [v18 addObject:v13];
  }

  v19 = [(HUItemTableViewController *)self tableView];
  v20 = NSStringFromClass(v13);
  v21 = [v19 dequeueReusableCellWithIdentifier:v20 forIndexPath:v12];

  if ([v21 conformsToProtocol:&unk_2824AB590])
  {
    [v21 setItem:v11];
  }

  v22 = [(HUItemTableViewController *)self shouldHideSeparatorsForCell:v21 indexPath:v12];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:!v22];
  [v21 hu_setForcedSeparatorStyle:v23];

  if ([(HUItemTableViewController *)self shouldUseAlternateCellColor])
  {
    v24 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v21 setBackgroundColor:v24];
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 itemSectionForSectionIndex:a4];

  v8 = [(HUItemTableViewController *)self contentConfigurationForHeaderViewAtSectionIndex:a4];
  if (v8 && (v9 = v8, v10 = [v7 forceShowHeaderTitle], v9, !v10))
  {
    v12 = 0;
  }

  else
  {
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 titleForSection:a4];
  }

  return v12;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(HUItemTableViewController *)self contentConfigurationForFooterViewAtSectionIndex:a4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(HUItemTableViewController *)self itemManager];
    v7 = [v8 footerTitleForSection:a4];
  }

  return v7;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  v8 = [(HUItemTableViewController *)self moduleControllerForItem:v7];
  v9 = [(HUItemTableViewController *)self tableView];
  v10 = [v9 cellForRowAtIndexPath:v5];

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([+[HUItemTableViewController superclass](HUItemTableViewController "superclass")])
  {
    v14.receiver = self;
    v14.super_class = HUItemTableViewController;
    [(HUItemTableViewController *)&v14 tableView:v7 didSelectRowAtIndexPath:v8];
  }

  v9 = [(HUItemTableViewController *)self itemManager];
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

  v12 = [(HUItemTableViewController *)self moduleControllerForItem:v10];
  v13 = v12;
  if (v12 && ![v12 didSelectItem:v10])
  {
    [v7 deselectRowAtIndexPath:v8 animated:1];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v16 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:v9];
  if ([v8 conformsToProtocol:&unk_2824C52F0])
  {
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 displayedItemAtIndexPath:v9];

    if (v11 && [(HUItemTableViewController *)self shouldManageTextFieldForItem:v11])
    {
      v12 = v8;
      v13 = [v12 textField];
      [v13 setDelegate:self];

      v14 = [(HUItemTableViewController *)self textFieldToCellMap];
      v15 = [v12 textField];
      [v14 setObject:v12 forKey:v15];
    }
  }
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = HUItemTableViewController;
  [(HUTableViewController *)&v16 tableView:a3 didEndDisplayingCell:v8 forRowAtIndexPath:v9];
  if ([v8 conformsToProtocol:&unk_2824C52F0])
  {
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 displayedItemAtIndexPath:v9];

    if (v11 && [(HUItemTableViewController *)self shouldManageTextFieldForItem:v11])
    {
      v12 = v8;
      v13 = [v12 textField];
      [v13 setDelegate:0];

      v14 = [(HUItemTableViewController *)self textFieldToCellMap];
      v15 = [v12 textField];

      [v14 removeObjectForKey:v15];
    }
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(HUItemTableViewController *)self _shouldHideHeaderForSection:a4])
  {
    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 itemSectionForSectionIndex:a4];

  v11 = [(HUItemTableViewController *)self contentConfigurationForHeaderViewAtSectionIndex:a4];
  v12 = [v10 headerAccessoryButtonTitle];
  if (v12 && (v13 = v12, [v10 headerAccessoryButtonDelegate], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v16];

    [v17 setItemSection:v10];
    v18 = [(HUItemTableViewController *)self tableView];
    v19 = [(HUItemTableViewController *)self tableView:v18 titleForHeaderInSection:a4];
    v20 = [v17 textLabel];
    [v20 setText:v19];

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
    v17 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v22];

    [v17 setContentConfiguration:v11];
  }

  v8 = v17;
LABEL_10:

  return v8;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 attributedFooterTitleForSection:a4];

  v9 = [(HUItemTableViewController *)self contentConfigurationForFooterViewAtSectionIndex:a4];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v11];

    [(HUItemTableSectionHeaderFooterView *)v12 setContentConfiguration:v9];
  }

  else if (v8)
  {
    v12 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"footerReuseIdentifier"];
    if (!v12)
    {
      v12 = [[HUItemTableSectionHeaderFooterView alloc] initWithReuseIdentifier:@"footerReuseIdentifier"];
    }

    v13 = [(HUItemTableViewController *)self itemManager];
    v14 = [v13 displayedSectionIdentifierForSectionIndex:a4];
    v15 = [(HUItemTableSectionHeaderFooterView *)v12 messageTextView];
    [v15 setIdentifier:v14];

    [(HUItemTableSectionHeaderFooterView *)v12 setType:1];
    [(HUItemTableSectionHeaderFooterView *)v12 setMessage:v8];
    v16 = [(HUItemTableSectionHeaderFooterView *)v12 messageTextView];
    [v16 setDelegate:self];

    v17 = [(HUItemTableSectionHeaderFooterView *)v12 messageTextView];
    v18 = [v17 textDragInteraction];
    [v18 setEnabled:0];
  }

  else
  {
    v12 = 0;
  }

  if ([(HUItemTableViewController *)self _shouldHideFooterForSection:a4])
  {
    v19 = objc_alloc(MEMORY[0x277D75D18]);
    v20 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

    v12 = v20;
  }

  return v12;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = *MEMORY[0x277D76F30];
  v5 = [(HUItemTableViewController *)self _shouldHideHeaderForSection:a4];
  result = 2.22507386e-308;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v4 = *MEMORY[0x277D76F30];
  v5 = [(HUItemTableViewController *)self _shouldHideFooterForSection:a4];
  result = 2.22507386e-308;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4
{
  v4 = *MEMORY[0x277D76F30];
  v5 = [(HUItemTableViewController *)self _shouldHideHeaderForSection:a4];
  result = 2.22507386e-308;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (double)tableView:(id)a3 estimatedHeightForFooterInSection:(int64_t)a4
{
  v4 = *MEMORY[0x277D76F30];
  v5 = [(HUItemTableViewController *)self _shouldHideFooterForSection:a4];
  result = 2.22507386e-308;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v9 = [v6 displayedItemAtIndexPath:v5];

  v7 = [(HUItemTableViewController *)self moduleControllerForItem:v9];
  v8 = v7;
  if (v7)
  {
    [v7 accessoryButtonTappedForItem:v9];
  }
}

- (id)tableView:(id)a3 leadingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User swiped for leading actions on item: %@", &v13, 0x16u);
  }

  v9 = [(HUItemTableViewController *)self moduleControllerForItem:v7];
  v10 = v9;
  if (!v9)
  {
    v9 = self;
  }

  v11 = [v9 leadingSwipeActionsForItem:v7];

  return v11;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User swiped for trailing actions on item: %@", &v13, 0x16u);
  }

  v9 = [(HUItemTableViewController *)self moduleControllerForItem:v7];
  v10 = v9;
  if (!v9)
  {
    v9 = self;
  }

  v11 = [v9 trailingSwipeActionsForItem:v7];

  return v11;
}

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(HUItemTableViewController *)self itemManagerDidUpdate:a3];
  [(HUItemTableViewController *)self cleanupRecentlyRemovedModuleControllers];
  if ([v10 count] || objc_msgSend(v11, "count") || objc_msgSend(v12, "count"))
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __89__HUItemTableViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke;
    v21 = &unk_277DB7558;
    v22 = v10;
    v23 = self;
    v13 = _Block_copy(&v18);
    v14 = [(HUItemTableViewController *)self itemManager:v18];
    v15 = [(HUItemTableViewController *)self shouldPerformUpdateWithAnimationForDiffableDataItemManager:v14];

    if (v15)
    {
      v16 = [(HUItemTableViewController *)self tableView];
      [v16 beginUpdates];

      v13[2](v13);
      v17 = [(HUItemTableViewController *)self tableView];
      [v17 endUpdates];
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

- (void)itemManagerDidUpdate:(id)a3
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

- (BOOL)shouldPerformUpdateWithAnimationForDiffableDataItemManager:(id)a3
{
  v3 = [(HUItemTableViewController *)self view];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (int64_t)_rowAnimationForOperationType:(unint64_t)a3 item:(id)a4
{
  v6 = a4;
  v7 = [(HUItemTableViewController *)self moduleControllerForItem:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 rowAnimationForOperationType:a3 item:v6 suggestedAnimation:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)itemManager:(id)a3 futureToUpdateItems:(id)a4 itemUpdateOptions:(id)a5
{
  v6 = a5;
  v7 = [MEMORY[0x277D14670] sharedInstance];
  if (![v7 runningState])
  {

    goto LABEL_7;
  }

  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  v9 = [v8 BOOLValue];

  if (v9)
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
  v12 = [(HUItemTableViewController *)self foregroundUpdateFutures];
  [v12 addObject:v11];

LABEL_8:

  return v11;
}

- (void)itemManager:(id)a3 performUpdateRequest:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (-[HUItemTableViewController viewHasAppeared](self, "viewHasAppeared") && -[HUItemTableViewController alwaysUseDeltaTableViewUpdatesAfterViewHasAppeared](self, "alwaysUseDeltaTableViewUpdatesAfterViewHasAppeared") || -[HUItemTableViewController bypassInitialItemUpdateReload](self, "bypassInitialItemUpdateReload") || ([v6 isInitialUpdate] & 1) == 0 && (-[HUItemTableViewController isViewLoaded](self, "isViewLoaded") & 1) != 0)
  {
    if (![(HUItemTableViewController *)self hasForcedLoadingVisibleCells])
    {
      v7 = [(HUItemTableViewController *)self tableView];
      v8 = [v7 visibleCells];

      [(HUItemTableViewController *)self setHasForcedLoadingVisibleCells:1];
    }

    v9 = [(HUItemTableViewController *)self tableView];
    [v9 beginUpdates];

    [v6 performWithOptions:0];
    v10 = [(HUItemTableViewController *)self tableView];
    [v10 endUpdates];

    [(HUItemTableViewController *)self _updateHeadersAndFootersIfNeededAfterPerformingRequest:v6];
  }

  else
  {
    [v6 performWithOptions:1];
    if ([(HUItemTableViewController *)self isViewLoaded])
    {
      v11 = [(HUItemTableViewController *)self tableView];
      [v11 reloadData];
    }
  }

  [(HUItemTableViewController *)self itemManagerDidUpdate:v12];
}

- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(HUItemTableViewController *)self tableView];
  v9 = [v8 cellForRowAtIndexPath:v7];

  if (v9)
  {
    [(HUItemTableViewController *)self _dispatchUpdateForCell:v9 item:v10 indexPath:v7 animated:1];
  }
}

- (void)itemManager:(id)a3 didRemoveItem:(id)a4 atIndexPath:(id)a5
{
  v11[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [(HUItemTableViewController *)self _rowAnimationForOperationType:2 item:a4];
  v9 = [(HUItemTableViewController *)self tableView];
  v11[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [v9 deleteRowsAtIndexPaths:v10 withRowAnimation:v8];
}

- (void)itemManager:(id)a3 didInsertItem:(id)a4 atIndexPath:(id)a5
{
  v11[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [(HUItemTableViewController *)self _rowAnimationForOperationType:1 item:a4];
  v9 = [(HUItemTableViewController *)self tableView];
  v11[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [v9 insertRowsAtIndexPaths:v10 withRowAnimation:v8];
}

- (void)itemManager:(id)a3 didMoveItem:(id)a4 fromIndexPath:(id)a5 toIndexPath:(id)a6
{
  v14 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(HUItemTableViewController *)self tableView];
  v12 = [v11 cellForRowAtIndexPath:v9];

  if (v12)
  {
    [(HUItemTableViewController *)self _dispatchUpdateForCell:v12 item:v14 indexPath:v9 animated:1];
  }

  v13 = [(HUItemTableViewController *)self tableView];
  [v13 moveRowAtIndexPath:v9 toIndexPath:v10];
}

- (void)itemManager:(id)a3 didRemoveSections:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self tableView];
  [v6 deleteSections:v5 withRowAnimation:0];
}

- (void)itemManager:(id)a3 didInsertSections:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self tableView];
  [v6 insertSections:v5 withRowAnimation:0];
}

- (void)itemManager:(id)a3 didMoveSection:(int64_t)a4 toSection:(int64_t)a5
{
  v7 = [(HUItemTableViewController *)self tableView];
  [v7 moveSection:a4 toSection:a5];
}

- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4
{
  [(HUItemTableViewController *)self _updateTitle:a3];

  [(HUItemTableViewController *)self _updateTableHeaderAndFooter];
}

- (void)itemManager:(id)a3 didChangeSourceItem:(id)a4
{
  [(HUItemTableViewController *)self _updateTitle:a3];

  [(HUItemTableViewController *)self _updateTableHeaderAndFooter];
}

- (void)itemManager:(id)a3 didUpdateItemModules:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemModuleControllers];
  v7 = [v6 na_map:&__block_literal_global_212];

  v8 = MEMORY[0x277D14AE8];
  v32 = v5;
  v9 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v31 = v7;
  v10 = [v8 diffFromSet:v7 toSet:v9];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = [v10 additions];
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v50 count:16];
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
          objc_enumerationMutation(v11);
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

      v14 = [v11 countByEnumeratingWithState:&v39 objects:v50 count:16];
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
            v30 = [v27 moduleIdentifier];
            *buf = 138412802;
            v44 = self;
            v45 = 2112;
            v46 = v27;
            v47 = 2112;
            v48 = v30;
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

- (void)expandableTextViewCellStateDidChange:(id)a3
{
  v3 = [(HUItemTableViewController *)self tableView];
  [v3 reloadData];
}

- (void)highlightItemAnimated:(id)a3 duration:(double)a4
{
  v6 = a3;
  if (_MergedGlobals_2_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2_2, &__block_literal_global_221);
  }

  v7 = qword_27C8380A8;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 allItems];
  v10 = [v9 containsObject:v6];

  if (v10)
  {
    v11 = [(HUItemTableViewController *)self tableView];
    v12 = [(HUItemTableViewController *)self itemManager];
    v13 = [v12 indexPathForItem:v6];
    v14 = [v11 cellForRowAtIndexPath:v13];

    if (v14)
    {
      objc_initWeak(&location, v14);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__HUItemTableViewController_highlightItemAnimated_duration___block_invoke_3;
      v15[3] = &unk_277DBEE28;
      objc_copyWeak(v17, &location);
      v16 = v7;
      v17[1] = *&a4;
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

- (void)scrollToItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[HUItemTableViewScrollDestination alloc] initWithItem:v6 animated:v4];

  if ([(HUItemTableViewController *)self appearState]== 1 || [(HUItemTableViewController *)self appearState]== 2)
  {
    [(HUItemTableViewController *)self _scrollToDestination:v7];
  }

  else
  {
    [(HUItemTableViewController *)self setPendingScrollDestination:v7];
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v7 = a3;
  v4 = [(HUItemTableViewController *)self _itemForTextField:?];
  v5 = [(HUItemTableViewController *)self moduleControllerForItem:v4];
  v6 = v5;
  if (v4 && v5)
  {
    [v5 textFieldDidBeginEditing:v7 item:v4];
  }

  else if (!v4)
  {
    goto LABEL_7;
  }

  if ([(HUItemTableViewController *)self shouldManageTextFieldForItem:v4])
  {
    [(HUItemTableViewController *)self textFieldDidBeginEditing:v7 item:v4];
  }

LABEL_7:
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self _itemForTextField:v4];
  v6 = [(HUItemTableViewController *)self moduleControllerForItem:v5];
  v7 = v6;
  if (v5)
  {
    if ([v6 shouldManageTextFieldForItem:v5])
    {
      [v7 textDidChange:&stru_2823E0EE8 forTextField:v4 item:v5];
    }

    if ([(HUItemTableViewController *)self shouldManageTextFieldForItem:v5])
    {
      [(HUItemTableViewController *)self textDidChange:&stru_2823E0EE8 forTextField:v4 item:v5];
    }
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUItemTableViewController *)self _itemForTextField:v4];
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

  v8 = [(HUItemTableViewController *)self moduleControllerForItem:v5];
  v9 = v8;
  if (v5)
  {
    if ([v8 shouldManageTextFieldForItem:v5])
    {
      [v9 textFieldDidEndEditing:v4 item:v5];
    }

    if ([(HUItemTableViewController *)self shouldManageTextFieldForItem:v5])
    {
      [(HUItemTableViewController *)self textFieldDidEndEditing:v4 item:v5];
    }
  }
}

- (void)textFieldDidChange:(id)a3
{
  v9 = [a3 object];
  v4 = [(HUItemTableViewController *)self _itemForTextField:?];
  v5 = [(HUItemTableViewController *)self moduleControllerForItem:v4];
  v6 = v5;
  if (v4)
  {
    if ([v5 shouldManageTextFieldForItem:v4])
    {
      v7 = [v9 text];
      [v6 textDidChange:v7 forTextField:v9 item:v4];
    }

    if ([(HUItemTableViewController *)self shouldManageTextFieldForItem:v4])
    {
      v8 = [v9 text];
      [(HUItemTableViewController *)self textDidChange:v8 forTextField:v9 item:v4];
    }
  }
}

- (id)hu_preloadContent
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HUItemTableViewController *)self hasFinishedInitialLoad])
  {
    v3 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v4 = [(HUItemTableViewController *)self itemManager];
    v5 = [v4 diffableDataSourceDisabled];

    if ((v5 & 1) == 0)
    {
      [(HUItemTableViewController *)self loadViewIfNeeded];
    }

    if (![objc_opt_class() updateMode] && !-[HUItemTableViewController visibilityUpdatesEnabled](self, "visibilityUpdatesEnabled"))
    {
      v6 = [(HUItemTableViewController *)self itemManager];
      [v6 endDisableExternalUpdatesWithReason:@"HUItemTableViewController_NotVisible"];

      [(HUItemTableViewController *)self setVisibilityUpdatesEnabled:1];
    }

    v7 = [(HUItemTableViewController *)self itemManager];
    v8 = [v7 diffableDataSourceDisabled];

    if (v8)
    {
      [(HUItemTableViewController *)self loadViewIfNeeded];
    }

    v9 = MEMORY[0x277CBEB18];
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 firstFastUpdateFuture];
    v12 = [v9 arrayWithObject:v11];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [(HUItemTableViewController *)self childViewControllersToPreload];
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
  if (![a3 runningState])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Proceeding with full item update(s)", v6, 2u);
    }

    v5 = [(HUItemTableViewController *)self foregroundUpdateFutures];
    [v5 na_each:&__block_literal_global_230];
  }
}

- (HFItem)hu_presentedItem
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 sourceItem];

  return v3;
}

- (void)recursivelyDisableItemUpdates:(BOOL)a3 withReason:(id)a4
{
  v4 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HUItemTableViewController *)self itemManager];
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
  v10 = [(HUItemTableViewController *)self childViewControllers];
  v11 = [v9 setWithArray:v10];

  v12 = [(HUItemTableViewController *)self childViewControllersToPreload];
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
        if ([v18 conformsToProtocol:{&unk_28249D628, v19}])
        {
          [v18 recursivelyDisableItemUpdates:v4 withReason:v6];
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
  [(HUItemTableViewController *)self _transformViewControllerForRequest:v5];
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

  v18 = v6;

  v7 = v18;
  if (v18)
  {
    v8 = [v18 preferredStyle];
    v7 = v18;
    if (!v8)
    {
      v9 = [v18 popoverPresentationController];
      v7 = v18;
      if (v9)
      {
        v10 = v9;
        v11 = [v18 popoverPresentationController];
        v12 = [v11 sourceView];

        v7 = v18;
        if (!v12)
        {
          v13 = [(HUItemTableViewController *)self tableView];
          v14 = [v13 indexPathForSelectedRow];

          if (v14)
          {
            v15 = [(HUItemTableViewController *)self tableView];
            v16 = [v15 cellForRowAtIndexPath:v14];

            if (!v16)
            {
              v16 = [(HUItemTableViewController *)self tableView];
            }

            v17 = [v18 popoverPresentationController];
            [v17 setSourceView:v16];
          }

          v7 = v18;
        }
      }
    }
  }
}

- (void)updateCellForItems:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 diffableDataSourceDisabled];

  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__HUItemTableViewController_updateCellForItems___block_invoke;
    v10[3] = &unk_277DC0A30;
    v10[4] = self;
    v7 = [v4 na_map:v10];

    v8 = [(HUItemTableViewController *)self tableView];
    [v8 reloadRowsAtIndexPaths:v7 withRowAnimation:5];

    v4 = v7;
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__HUItemTableViewController_updateCellForItems___block_invoke_2;
    v9[3] = &unk_277DBAF68;
    v9[4] = self;
    [v4 na_each:v9];
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

- (void)reloadCellForItems:(id)a3 withDiffableDataSourceReload:(BOOL)a4
{
  v5 = a3;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 diffableDataSourceDisabled];

  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__HUItemTableViewController_reloadCellForItems_withDiffableDataSourceReload___block_invoke;
    v11[3] = &unk_277DC0A30;
    v11[4] = self;
    v8 = [v5 na_map:v11];
    v9 = [(HUItemTableViewController *)self tableView];
    [v9 reloadRowsAtIndexPaths:v8 withRowAnimation:5];
  }

  else
  {
    v10 = [(HUItemTableViewController *)self itemManager];
    [v10 reloadUIRepresentationForItems:v5 withAnimation:0];
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
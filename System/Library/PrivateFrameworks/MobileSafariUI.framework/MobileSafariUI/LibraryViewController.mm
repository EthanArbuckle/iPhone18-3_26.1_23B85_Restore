@interface LibraryViewController
- (BOOL)_allSelectedItemsSupportMultipleSelection;
- (BOOL)_hasMultipleSelection;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (CGRect)_frameForFloatingCollectionView;
- (LibraryItemController)selectedItemController;
- (LibraryViewControllerDelegate)delegate;
- (id)_diffableDataSourceForCollectionView:(id)view;
- (id)_swipeActionsConfigurationForIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)undoManager;
- (void)_applySnapshotForSection:(id)section animated:(BOOL)animated;
- (void)_collectionViewDidSelectItem:(id)item atIndexPath:(id)path;
- (void)_deselectAllItemsExcludingIndexPaths:(id)paths;
- (void)_deselectAllItemsNotSupportingMultipleSelection;
- (void)_deselectAllItemsPassingTest:(id)test;
- (void)_enumerateItemControllersWithBlock:(id)block;
- (void)_layOutFloatingViews;
- (void)_reloadFloatingSectionControllersImmediately;
- (void)_reloadSectionControllersImmediatelyAnimated:(BOOL)animated;
- (void)_updateSelectionIfNeeded;
- (void)clearMultipleSelection;
- (void)closeSelectedTabs:(id)tabs;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionViewContentSizeDidChange:(id)change;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadExpansionStateForItem:(id)item inSection:(id)section;
- (void)reloadSectionControllersIfNeeded;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setNeedsReloadForProfileSwitcher;
- (void)setNeedsReloadSectionControllersAnimated:(BOOL)animated;
- (void)setNeedsUpdateSelection;
- (void)setSectionControllers:(id)controllers;
- (void)setSelectedItemController:(id)controller;
- (void)updateSelection;
- (void)validateCommand:(id)command;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation LibraryViewController

- (void)dealloc
{
  [(UICollectionView *)self->_floatingCollectionView removeObserver:self forKeyPath:@"contentSize" context:kvoContext_1];
  v3.receiver = self;
  v3.super_class = LibraryViewController;
  [(LibraryViewController *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (kvoContext_1 == context && self->_floatingCollectionView == objectCopy && [pathCopy isEqualToString:@"contentSize"])
  {
    [(UICollectionView *)self->_floatingCollectionView contentSize];
    [(UICollectionView *)self->_floatingCollectionView frame];
    CGRectGetHeight(v15);
    if ((_SFEqualWithEpsilon() & 1) == 0)
    {
      view = [(LibraryViewController *)self view];
      [view setNeedsLayout];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = LibraryViewController;
    [(LibraryViewController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)collectionViewContentSizeDidChange:(id)change
{
  view = [(LibraryViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewDidLoad
{
  v39.receiver = self;
  v39.super_class = LibraryViewController;
  [(LibraryViewController *)&v39 viewDidLoad];
  v3 = _WBSLocalizedString();
  [(LibraryViewController *)self setTitle:v3];

  view = [(LibraryViewController *)self view];
  v5 = [objc_alloc(MEMORY[0x277D75290]) initWithAppearance:3];
  [v5 setHeaderMode:0];
  objc_initWeak(&location, self);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __36__LibraryViewController_viewDidLoad__block_invoke;
  v36[3] = &unk_2781D7E78;
  objc_copyWeak(&v37, &location);
  [v5 setTrailingSwipeActionsConfigurationProvider:v36];
  v6 = objc_alloc(MEMORY[0x277D752B8]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __36__LibraryViewController_viewDidLoad__block_invoke_2;
  v33[3] = &unk_2781D7EA0;
  v7 = v5;
  v34 = v7;
  objc_copyWeak(&v35, &location);
  v8 = [v6 initWithSectionProvider:v33];
  v9 = objc_alloc(MEMORY[0x277D752A0]);
  [view bounds];
  v10 = [v9 initWithFrame:v8 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v10;

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDragDelegate:self];
  [(UICollectionView *)self->_collectionView setDropDelegate:self];
  [(UICollectionView *)self->_collectionView setSpringLoaded:1];
  [(UICollectionView *)self->_collectionView setSelectionFollowsFocus:1];
  [(UICollectionView *)self->_collectionView setAutoresizingMask:18];
  [(UICollectionView *)self->_collectionView setAllowsFocus:1];
  [(UICollectionView *)self->_collectionView setAllowsMultipleSelectionDuringEditing:1];
  [view addSubview:self->_collectionView];
  v12 = [MEMORY[0x277D752B8] layoutWithListConfiguration:v7];
  v13 = objc_alloc(MEMORY[0x277D752A0]);
  [view bounds];
  v14 = [v13 initWithFrame:v12 collectionViewLayout:?];
  floatingCollectionView = self->_floatingCollectionView;
  self->_floatingCollectionView = v14;

  [(UICollectionView *)self->_floatingCollectionView setAlwaysBounceVertical:0];
  panGestureRecognizer = [(UICollectionView *)self->_floatingCollectionView panGestureRecognizer];
  [panGestureRecognizer _setCanPanVertically:0];

  [(UICollectionView *)self->_floatingCollectionView setDelegate:self];
  [(UICollectionView *)self->_floatingCollectionView addObserver:self forKeyPath:@"contentSize" options:0 context:kvoContext_1];
  [view addSubview:self->_floatingCollectionView];
  v17 = objc_alloc_init(MEMORY[0x277D75D18]);
  separator = self->_separator;
  self->_separator = v17;

  systemFillColor = [MEMORY[0x277D75348] systemFillColor];
  [(UIView *)self->_separator setBackgroundColor:systemFillColor];

  [view addSubview:self->_separator];
  v20 = [MEMORY[0x277D752B0] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_34];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__LibraryViewController_viewDidLoad__block_invoke_5;
  aBlock[3] = &unk_2781D8B80;
  v21 = v20;
  v32 = v21;
  v22 = _Block_copy(aBlock);
  v23 = [objc_alloc(MEMORY[0x277D752D0]) initWithCollectionView:self->_collectionView cellProvider:v22];
  dataSource = self->_dataSource;
  self->_dataSource = v23;

  v25 = [objc_alloc(MEMORY[0x277D752D0]) initWithCollectionView:self->_floatingCollectionView cellProvider:v22];
  floatingCollectionViewDataSource = self->_floatingCollectionViewDataSource;
  self->_floatingCollectionViewDataSource = v25;

  v27 = objc_alloc_init(MEMORY[0x277D752E0]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __36__LibraryViewController_viewDidLoad__block_invoke_6;
  v29[3] = &unk_2781D8BA8;
  objc_copyWeak(&v30, &location);
  v28 = _Block_copy(v29);
  [v27 setWillExpandItemHandler:v28];
  [v27 setWillCollapseItemHandler:v28];
  [(UICollectionViewDiffableDataSource *)self->_dataSource setSectionSnapshotHandlers:v27];
  [(LibraryViewController *)self _reloadFloatingSectionControllersImmediately];
  [(LibraryViewController *)self _reloadSectionControllersImmediatelyAnimated:0];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

id __36__LibraryViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _swipeActionsConfigurationForIndexPath:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __36__LibraryViewController_viewDidLoad__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CFB868] sectionWithListConfiguration:*(a1 + 32) layoutEnvironment:a3];
  [v5 contentInsets];
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[125] numberOfItemsInSection:a2])
    {
      v12 = v7 + 5.0;
      v13 = v9 + 5.0;
      v14 = 16.0;
      v15 = 8.0;
    }

    else
    {
      v14 = *MEMORY[0x277D75060];
      v12 = *(MEMORY[0x277D75060] + 8);
      v15 = *(MEMORY[0x277D75060] + 16);
      v13 = *(MEMORY[0x277D75060] + 24);
    }

    [v5 setContentInsets:{v14, v12, v15, v13}];
    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __36__LibraryViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v5 accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__LibraryViewController_viewDidLoad__block_invoke_4;
  v9[3] = &unk_2781D8B58;
  v10 = v5;
  v8 = v5;
  [v6 setConfigurationUpdateHandler:v9];
}

void __36__LibraryViewController_viewDidLoad__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 defaultContentConfiguration];
  v8 = [v7 updatedConfigurationForState:v6];

  v9 = [v8 textProperties];
  [v9 setAllowsDefaultTighteningForTruncation:0];

  v10 = [v8 textProperties];
  [v10 setAdjustsFontSizeToFitWidth:0];

  [*(a1 + 32) updateListContentConfiguration:v8];
  [v5 updateConfigurationForTabIconRegistration:v8];
  [v5 setContentConfiguration:v8];
  if ([*(a1 + 32) hasSubitems])
  {
    v11 = objc_alloc_init(MEMORY[0x277D75270]);
    [v11 setDisplayedState:0];
    [v11 setStyle:2];
    if ([v8 safari_usesWhiteText])
    {
      v12 = [v8 textProperties];
      v13 = [v12 color];
      [v11 setTintColor:v13];
    }

    else
    {
      v12 = [MEMORY[0x277D75348] tertiaryLabelColor];
      [v11 setTintColor:v12];
    }

    [v11 setReservedLayoutWidth:30.0];
    v15[0] = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v5 setAccessories:v14];
  }

  else
  {
    v11 = [*(a1 + 32) accessories];
    [v5 setAccessories:v11];
  }
}

void __36__LibraryViewController_viewDidLoad__block_invoke_6(uint64_t a1, void *a2)
{
  [a2 willToggleExpansionState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained view];
  [v3 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v26.receiver = self;
  v26.super_class = LibraryViewController;
  [(LibraryViewController *)&v26 viewDidLayoutSubviews];
  if ([MEMORY[0x277D49A08] isSafariProfilesEnabled])
  {
    configuration = [(LibraryViewController *)self configuration];
    tabGroupProvider = [configuration tabGroupProvider];
    hasMultipleProfiles = [tabGroupProvider hasMultipleProfiles];

    floatingCollectionView = self->_floatingCollectionView;
    if (hasMultipleProfiles)
    {
      [(UICollectionView *)floatingCollectionView setHidden:0];
      [(LibraryViewController *)self _frameForFloatingCollectionView];
      Height = CGRectGetHeight(v27);
      [(UICollectionView *)self->_collectionView contentInset];
      if ((_SFEqualWithEpsilon() & 1) == 0)
      {
        [(UICollectionView *)self->_collectionView setContentInset:0.0, 0.0, Height, 0.0];
      }

      if (Height == 0.0)
      {
        v24 = 1;
      }

      else
      {
        [(UICollectionView *)self->_collectionView contentSize];
        v9 = v8;
        [(UICollectionView *)self->_collectionView frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        [(UICollectionView *)self->_collectionView adjustedContentInset];
        v19 = v13 + v18;
        v22 = v15 - (v20 + v21);
        v28.size.height = v17 - (v18 + v23);
        v28.origin.x = v11 + v20;
        v28.origin.y = v19;
        v28.size.width = v22;
        v24 = v9 <= CGRectGetHeight(v28);
      }

      [(UIView *)self->_separator setHidden:v24];
      [(LibraryViewController *)self _layOutFloatingViews];
    }

    else
    {
      [(UICollectionView *)floatingCollectionView setHidden:1];
      [(UIView *)self->_separator setHidden:1];
      [(UICollectionView *)self->_collectionView contentInset];
      if (v25 != 0.0)
      {
        [(UICollectionView *)self->_collectionView setContentInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
      }
    }
  }

  else
  {
    [(UICollectionView *)self->_floatingCollectionView setHidden:1];
    [(UIView *)self->_separator setHidden:1];
  }
}

- (CGRect)_frameForFloatingCollectionView
{
  view = [(LibraryViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UICollectionView *)self->_floatingCollectionView contentSize];
  Height = v12;
  if (v12 == 0.0)
  {
    v25.origin.x = v5;
    v25.origin.y = v7;
    v25.size.width = v9;
    v25.size.height = v11;
    Height = CGRectGetHeight(v25);
  }

  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v14 = CGRectGetHeight(v26) - Height;
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  Width = CGRectGetWidth(v27);
  if ([(UIView *)self->_separator isHidden])
  {
    numberOfSections = [(UICollectionView *)self->_collectionView numberOfSections];
    v17 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:numberOfSections - 1];
    if (numberOfSections)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = [MEMORY[0x277CCAA70] indexPathForItem:v17 - 1 inSection:numberOfSections - 1];
      v20 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v19];
      [v20 bounds];
      [view convertRect:v20 fromView:?];
      v14 = fmax(v14, CGRectGetMaxY(v28));
    }
  }

  v21 = 0.0;
  v22 = v14;
  v23 = Width;
  v24 = Height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)_layOutFloatingViews
{
  [(LibraryViewController *)self _frameForFloatingCollectionView];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(UICollectionView *)self->_floatingCollectionView setFrame:?];
  _SFOnePixel();
  separator = self->_separator;

  [(UIView *)separator setFrame:v4, v6, v8, v9];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = LibraryViewController;
  [(LibraryViewController *)&v4 viewWillAppear:appear];
  [(LibraryViewController *)self _reloadSectionControllersImmediatelyAnimated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = LibraryViewController;
  [(LibraryViewController *)&v3 viewDidDisappear:disappear];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = LibraryViewController;
  [(LibraryViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(LibraryViewController *)self _reloadSectionControllersImmediatelyAnimated:0];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__LibraryViewController_setEditing_animated___block_invoke;
  aBlock[3] = &unk_2781D51B8;
  aBlock[4] = self;
  editingCopy2 = editing;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (animatedCopy)
  {
    (*(v7 + 2))(v7);
  }

  else
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  }

  v9.receiver = self;
  v9.super_class = LibraryViewController;
  [(LibraryViewController *)&v9 setEditing:editingCopy animated:animatedCopy];
}

- (void)updateSelection
{
  if (![(LibraryViewController *)self _hasMultipleSelection])
  {
    [(LibraryViewController *)self _deselectAllItems];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __40__LibraryViewController_updateSelection__block_invoke;
    v3[3] = &unk_2781D8BD0;
    v3[4] = self;
    [(LibraryViewController *)self _enumerateItemControllersWithBlock:v3];
  }
}

void __40__LibraryViewController_updateSelection__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([a2 isSelected])
  {
    [*(*(a1 + 32) + 1000) selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
    *a4 = 1;
  }
}

- (void)_updateSelectionIfNeeded
{
  if (self->_reloadFlags.needsUpdateSelection)
  {
    self->_reloadFlags.needsUpdateSelection = 0;
    [(LibraryViewController *)self updateSelection];
  }
}

- (BOOL)_allSelectedItemsSupportMultipleSelection
{
  selfCopy = self;
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__LibraryViewController__allSelectedItemsSupportMultipleSelection__block_invoke;
  v5[3] = &unk_2781D8608;
  v5[4] = selfCopy;
  LOBYTE(selfCopy) = [indexPathsForSelectedItems safari_allObjectsPassTest:v5];

  return selfCopy;
}

uint64_t __66__LibraryViewController__allSelectedItemsSupportMultipleSelection__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 992) itemIdentifierForIndexPath:a2];
  v3 = [v2 supportsMultipleSelection];

  return v3;
}

- (void)clearMultipleSelection
{
  [(LibraryViewController *)self _deselectAllItems];

  [(LibraryViewController *)self updateSelection];
}

- (void)_deselectAllItemsExcludingIndexPaths:(id)paths
{
  pathsCopy = paths;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__LibraryViewController__deselectAllItemsExcludingIndexPaths___block_invoke;
  v6[3] = &unk_2781D8608;
  v7 = pathsCopy;
  v5 = pathsCopy;
  [(LibraryViewController *)self _deselectAllItemsPassingTest:v6];
}

- (void)_deselectAllItemsNotSupportingMultipleSelection
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __72__LibraryViewController__deselectAllItemsNotSupportingMultipleSelection__block_invoke;
  v2[3] = &unk_2781D8608;
  v2[4] = self;
  [(LibraryViewController *)self _deselectAllItemsPassingTest:v2];
}

uint64_t __72__LibraryViewController__deselectAllItemsNotSupportingMultipleSelection__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 992) itemIdentifierForIndexPath:a2];
  v3 = [v2 supportsMultipleSelection];

  return v3 ^ 1u;
}

- (void)_deselectAllItemsPassingTest:(id)test
{
  v16 = *MEMORY[0x277D85DE8];
  testCopy = test;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (!testCopy || testCopy[2](testCopy, *(*(&v11 + 1) + 8 * v9)))
        {
          [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:v10 animated:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)_hasMultipleSelection
{
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v4 = [indexPathsForSelectedItems count] >= 2 && -[LibraryViewController _allSelectedItemsSupportMultipleSelection](self, "_allSelectedItemsSupportMultipleSelection");

  return v4;
}

- (void)reloadExpansionStateForItem:(id)item inSection:(id)section
{
  v12[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dataSource = self->_dataSource;
  sectionCopy = section;
  v9 = [(UICollectionViewDiffableDataSource *)dataSource snapshotForSection:sectionCopy];
  if ([itemCopy isExpanded])
  {
    v12[0] = itemCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v9 expandItems:v10];
  }

  else
  {
    v11 = itemCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [v9 collapseItems:v10];
  }

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v9 toSection:sectionCopy animatingDifferences:1];
}

- (void)setNeedsReloadSectionControllersAnimated:(BOOL)animated
{
  self->_reloadFlags.needsReload = 1;
  self->_reloadFlags.animated |= animated;
  view = [(LibraryViewController *)self view];
  [view setNeedsLayout];
}

- (void)setNeedsReloadForProfileSwitcher
{
  self->_reloadFlags.needsReloadForProfileSwitcher = 1;
  view = [(LibraryViewController *)self view];
  [view setNeedsLayout];
}

- (void)_reloadFloatingSectionControllersImmediately
{
  v22[1] = *MEMORY[0x277D85DE8];
  if ([(LibraryViewController *)self isViewLoaded]&& [(NSArray *)self->_sectionControllers count])
  {
    lastObject = [(NSArray *)self->_sectionControllers lastObject];
    v22[0] = lastObject;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];

    v5 = objc_alloc_init(MEMORY[0x277CFB890]);
    [v5 appendSectionsWithIdentifiers:v4];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          itemControllers = [v11 itemControllers];
          [v5 appendItemsWithIdentifiers:itemControllers intoSectionWithIdentifier:v11];
          [v5 reconfigureItemsWithIdentifiers:itemControllers];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [(UICollectionViewDiffableDataSource *)self->_floatingCollectionViewDataSource applySnapshot:v5 animatingDifferences:0];
    configuration = [(LibraryViewController *)self configuration];
    tabGroupProvider = [configuration tabGroupProvider];
    profiles = [tabGroupProvider profiles];
    profilesInSwitcherMenu = self->_profilesInSwitcherMenu;
    self->_profilesInSwitcherMenu = profiles;

    self->_reloadFlags.needsReloadForProfileSwitcher = 0;
  }
}

- (void)setNeedsUpdateSelection
{
  self->_reloadFlags.needsUpdateSelection = 1;
  view = [(LibraryViewController *)self view];
  [view setNeedsLayout];
}

- (void)reloadSectionControllersIfNeeded
{
  p_reloadFlags = &self->_reloadFlags;
  if (!self->_reloadFlags.needsReload)
  {
    if (!self->_reloadFlags.needsReloadForProfileSwitcher)
    {
      return;
    }

LABEL_5:
    self->_reloadFlags.needsReloadForProfileSwitcher = 0;
    [(LibraryViewController *)self _reloadFloatingSectionControllersImmediately];
    if (!p_reloadFlags->needsReload)
    {
      return;
    }

    goto LABEL_6;
  }

  if (self->_reloadFlags.needsReloadForProfileSwitcher)
  {
    goto LABEL_5;
  }

LABEL_6:
  animated = p_reloadFlags->animated;
  p_reloadFlags->needsReload = 0;
  p_reloadFlags->animated = 0;

  [(LibraryViewController *)self _reloadSectionControllersImmediatelyAnimated:animated];
}

- (void)_reloadSectionControllersImmediatelyAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x277D85DE8];
  if ([(LibraryViewController *)self isViewLoaded]&& [(NSArray *)self->_sectionControllers count])
  {
    v5 = [(NSArray *)self->_sectionControllers subarrayWithRange:0, [(NSArray *)self->_sectionControllers count]- 1];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

          [(LibraryViewController *)self _applySnapshotForSection:*(*(&v12 + 1) + 8 * v9++) animated:animatedCopy];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    itemIdentifiers = [snapshot itemIdentifiers];
    [snapshot reconfigureItemsWithIdentifiers:itemIdentifiers];

    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:0];
    [(LibraryViewController *)self updateSelection];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = LibraryViewController;
  [(LibraryViewController *)&v3 viewWillLayoutSubviews];
  [(LibraryViewController *)self reloadSectionControllersIfNeeded];
  [(LibraryViewController *)self _updateSelectionIfNeeded];
}

- (id)_diffableDataSourceForCollectionView:(id)view
{
  dataSource = [view dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataSource;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_enumerateItemControllersWithBlock:(id)block
{
  blockCopy = block;
  numberOfSections = [(UICollectionView *)self->_collectionView numberOfSections];
  if (numberOfSections >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:v5];
      if (v6 >= 1)
      {
        break;
      }

LABEL_7:
      if (++v5 == numberOfSections)
      {
        goto LABEL_8;
      }
    }

    v7 = v6;
    v8 = 0;
    while (1)
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForItem:v8 inSection:v5];
      v10 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v9];
      v13 = 0;
      blockCopy[2](blockCopy, v10, v9, &v13);
      v11 = v13;

      if (v11)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
}

- (id)_swipeActionsConfigurationForIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  v6 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:collectionView];
  v7 = [v6 itemIdentifierForIndexPath:pathCopy];

  swipeActionsConfiguration = [v7 swipeActionsConfiguration];

  return swipeActionsConfiguration;
}

- (void)setSectionControllers:(id)controllers
{
  controllersCopy = controllers;
  if (![(NSArray *)self->_sectionControllers isEqualToArray:?])
  {
    v4 = [controllersCopy copy];
    sectionControllers = self->_sectionControllers;
    self->_sectionControllers = v4;

    [(LibraryViewController *)self _reloadSectionControllersImmediatelyAnimated:0];
  }
}

- (LibraryItemController)selectedItemController
{
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSelectedItemController:(id)controller
{
  controllerCopy = controller;
  v14 = controllerCopy;
  if (controllerCopy)
  {
    v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource indexPathForItemIdentifier:controllerCopy];
    if (v5)
    {
      indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
      v7 = [indexPathsForSelectedItems containsObject:v5];

      if ((v7 & 1) == 0)
      {
        [(UICollectionView *)self->_collectionView selectItemAtIndexPath:v5 animated:0 scrollPosition:2];
        [(LibraryViewController *)self _collectionViewDidSelectItem:v14 atIndexPath:v5];
      }
    }
  }

  else
  {
    presentedItemController = self->_presentedItemController;
    self->_presentedItemController = 0;

    indexPathsForSelectedItems2 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
    v10 = [indexPathsForSelectedItems2 count];

    if (v10)
    {
      collectionView = self->_collectionView;
      indexPathsForSelectedItems3 = [(UICollectionView *)collectionView indexPathsForSelectedItems];
      firstObject = [indexPathsForSelectedItems3 firstObject];
      [(UICollectionView *)collectionView deselectItemAtIndexPath:firstObject animated:0];

      [(LibraryViewController *)self updateSelection];
    }
  }
}

- (id)undoManager
{
  undoManager = [(LibraryConfiguration *)self->_configuration undoManager];
  v4 = undoManager;
  if (undoManager)
  {
    undoManager2 = undoManager;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = LibraryViewController;
    undoManager2 = [(LibraryViewController *)&v8 undoManager];
  }

  v6 = undoManager2;

  return v6;
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (self->_collectionView == scroll && [(UIView *)self->_separator isHidden])
  {

    [(LibraryViewController *)self _layOutFloatingViews];
  }
}

- (void)_collectionViewDidSelectItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained libraryViewController:self didSelectItem:itemCopy];
  }

  if ([itemCopy shouldPersistSelection])
  {
    presentedItemController = self->_presentedItemController;
    self->_presentedItemController = 0;
  }

  else
  {
    [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:pathCopy animated:1];
    v9 = itemCopy;
    presentedItemController = self->_presentedItemController;
    self->_presentedItemController = v9;
  }

  [(LibraryViewController *)self updateSelection];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  dataSource = self->_dataSource;
  cellCopy = cell;
  v8 = [(UICollectionViewDiffableDataSource *)dataSource itemIdentifierForIndexPath:path];
  [v8 willDisplayCell:cellCopy];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setTabIconRegistration:0];
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(UICollectionView *)self->_collectionView isEditing])
  {
    v6 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:self->_collectionView];
    v7 = [v6 itemIdentifierForIndexPath:pathCopy];

    supportsMultipleSelection = [v7 supportsMultipleSelection];
  }

  else
  {
    supportsMultipleSelection = 1;
  }

  return supportsMultipleSelection;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  if (self->_floatingCollectionView != viewCopy)
  {
    v8 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
    supportsMultipleSelection = [v8 supportsMultipleSelection];

    if (supportsMultipleSelection)
    {
      [(LibraryViewController *)self _deselectAllItemsNotSupportingMultipleSelection];
    }

    else
    {
      v11[0] = pathCopy;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(LibraryViewController *)self _deselectAllItemsExcludingIndexPaths:v10];
    }
  }
}

- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  v7 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:collectionView];
  v8 = [v7 itemIdentifierForIndexPath:pathCopy];

  LOBYTE(v7) = [v8 supportsMultipleSelection];
  return v7;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  viewCopy = view;
  pathsCopy = paths;
  if (![pathsCopy count] || self->_floatingCollectionView == viewCopy)
  {
    v13 = 0;
  }

  else
  {
    v9 = [pathsCopy sortedArrayUsingSelector:sel_compare_];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __91__LibraryViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke;
    v15[3] = &unk_2781D86C8;
    v15[4] = self;
    v10 = [v9 safari_mapObjectsUsingBlock:v15];
    configuration = [(LibraryViewController *)self configuration];
    tabGroupProvider = [configuration tabGroupProvider];
    v13 = [LibraryMenuProvider contextMenuConfigurationForLibraryItems:v10 dataSource:tabGroupProvider];

    pathsCopy = v9;
  }

  return v13;
}

id __91__LibraryViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = v2[125];
  v4 = a2;
  v5 = [v2 _diffableDataSourceForCollectionView:v3];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  return v6;
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  pathCopy = path;
  v8 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:view];
  v9 = [v8 itemIdentifierForIndexPath:pathCopy];

  LOBYTE(v8) = [v9 isSpringLoaded];
  return v8;
}

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:view];
  v8 = [v7 itemIdentifierForIndexPath:pathCopy];

  LOBYTE(v7) = [v8 selectionFollowsFocus];
  return v7;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  v7 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:collectionView];
  v8 = [v7 itemIdentifierForIndexPath:pathCopy];

  [(LibraryViewController *)self _collectionViewDidSelectItem:v8 atIndexPath:pathCopy];
}

- (void)copy:(id)copy
{
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems sortedArrayUsingSelector:sel_compare_];

  if ([v5 count])
  {
    v6 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:self->_collectionView];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__LibraryViewController_copy___block_invoke;
    v9[3] = &unk_2781D86C8;
    v10 = v6;
    v7 = v6;
    v8 = [v5 safari_mapObjectsUsingBlock:v9];
    [LibraryMenuProvider copyLibraryItems:v8];
  }
}

- (void)closeSelectedTabs:(id)tabs
{
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems sortedArrayUsingSelector:sel_compare_];

  if ([v5 count])
  {
    v6 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:self->_collectionView];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__LibraryViewController_closeSelectedTabs___block_invoke;
    v11[3] = &unk_2781D86C8;
    v12 = v6;
    v7 = v6;
    v8 = [v5 safari_mapObjectsUsingBlock:v11];
    configuration = [(LibraryViewController *)self configuration];
    tabGroupProvider = [configuration tabGroupProvider];
    [LibraryMenuProvider closeLibraryItems:v8 dataSource:tabGroupProvider];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__LibraryViewController_canPerformAction_withSender___block_invoke;
  aBlock[3] = &unk_2781D8C20;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (sel_copy_ == action)
  {
    v9 = (*(v7 + 2))(v7, &__block_literal_global_56_0);
  }

  else if (sel_closeSelectedTabs_ == action)
  {
    v9 = (*(v7 + 2))(v7, &__block_literal_global_60_0);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = LibraryViewController;
    v9 = [(LibraryViewController *)&v12 canPerformAction:action withSender:senderCopy];
  }

  v10 = v9;

  return v10;
}

uint64_t __53__LibraryViewController_canPerformAction_withSender___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _diffableDataSourceForCollectionView:*(*(a1 + 32) + 1000)];
  v5 = [*(*(a1 + 32) + 1000) indexPathsForSelectedItems];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__LibraryViewController_canPerformAction_withSender___block_invoke_2;
  v10[3] = &unk_2781D8BF8;
  v11 = v4;
  v12 = v3;
  v6 = v3;
  v7 = v4;
  v8 = [v5 safari_allObjectsPassTest:v10];

  return v8;
}

uint64_t __53__LibraryViewController_canPerformAction_withSender___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemIdentifierForIndexPath:a2];
  v4 = (*(*(a1 + 40) + 16))();

  return v4;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  action = [commandCopy action];
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v6 = [indexPathsForSelectedItems count];

  if (action == sel_copy_)
  {
    v7 = [LibraryMenuProvider copyCommandTitleForSelectedItemCount:v6];
  }

  else
  {
    if (action != sel_closeSelectedTabs_)
    {
      goto LABEL_6;
    }

    v7 = [LibraryMenuProvider closeCommandTitleForSelectedItemCount:v6];
  }

  v8 = v7;
  [commandCopy setTitle:v7];

LABEL_6:
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v14[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v8 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:view];
  v9 = [v8 itemIdentifierForIndexPath:pathCopy];

  dragItem = [v9 dragItem];
  v11 = dragItem;
  if (dragItem)
  {
    v14[0] = dragItem;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v15[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v9 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:view];
  v10 = [v9 itemIdentifierForIndexPath:pathCopy];

  dragItem = [v10 dragItem];
  if (dragItem)
  {
    dragItem2 = [v10 dragItem];
    v15[0] = dragItem2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didStartDragWithDragContentType:4];
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  pathCopy = path;
  updateCopy = update;
  v10 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:view];
  v11 = [v10 itemIdentifierForIndexPath:pathCopy];

  v12 = [v11 dropOperationForSession:updateCopy];
  v13 = [v11 dropIntentForSession:updateCopy];

  v14 = [objc_alloc(MEMORY[0x277D752E8]) initWithDropOperation:v12 intent:v13];

  return v14;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  viewCopy = view;
  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  v8 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:viewCopy];
  v9 = [v8 sectionIdentifierForIndex:{objc_msgSend(destinationIndexPath, "section")}];

  v10 = [(LibraryViewController *)self _diffableDataSourceForCollectionView:viewCopy];

  v11 = [v10 itemIdentifierForIndexPath:destinationIndexPath];

  session = [coordinatorCopy session];
  v13 = [v9 itemControllerToHandleDropItemsFromSession:session withProposedDestinationItemController:v11 atIndex:{objc_msgSend(destinationIndexPath, "row")}];

  proposal = [coordinatorCopy proposal];
  session2 = [coordinatorCopy session];

  [v13 performDropWithProposal:proposal session:session2 inViewController:self];
}

- (void)_applySnapshotForSection:(id)section animated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  v36 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v5 = objc_alloc_init(MEMORY[0x277D75070]);
  itemControllers = [sectionCopy itemControllers];
  [v5 appendItems:itemControllers];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = itemControllers;
  v23 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        subitems = [v8 subitems];
        if ([subitems count])
        {
          [v5 appendItems:subitems intoParentItem:v8];
          if ([v8 isExpanded])
          {
            v34 = v8;
            v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
            [v5 expandItems:v10];
          }

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = subitems;
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v24 + 1) + 8 * j);
                subitems2 = [v16 subitems];
                if ([subitems2 count])
                {
                  [v5 appendItems:subitems2 intoParentItem:v16];
                  if ([v16 isExpanded])
                  {
                    v32 = v16;
                    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
                    [v5 expandItems:v18];
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
            }

            while (v13);
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v23);
  }

  [(UICollectionViewDiffableDataSource *)selfCopy->_dataSource applySnapshot:v5 toSection:sectionCopy animatingDifferences:animatedCopy];
}

- (LibraryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
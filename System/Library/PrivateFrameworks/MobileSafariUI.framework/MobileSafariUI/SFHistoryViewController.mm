@interface SFHistoryViewController
- (BOOL)_shouldSessionBeExpanded:(id)expanded;
- (BookmarksPanelViewControllerDelegate)delegate;
- (LinkPreviewProvider)linkPreviewProvider;
- (SFHistoryViewController)initWithHistory:(id)history;
- (TabGroupProvider)tabGroupProvider;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (id)_clearHistoryBarButtonItem;
- (id)_clearHistoryText;
- (id)_createCollectionViewLayout;
- (id)_deleteSelectedBarButtonItem;
- (id)_doneBarButtonItem;
- (id)_editBarButtonItem;
- (id)_makeClearHistoryAction;
- (id)_makeHeaderRegistration;
- (id)_makeHistoryCellRegistration;
- (id)_makeSearchBarContainerRegistration;
- (id)_moreMenu;
- (id)_moreMenuBarButtonItem;
- (id)_previewMenuForHistoryItems:(id)items;
- (id)_savedStateDictionary;
- (id)_toolbarItems;
- (id)_trailingSwipeActionConfigurationForIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (void)_addIndexPathsOfItemsNeedingReconfiguration:(id)reconfiguration;
- (void)_adjustContentOffsetHidingSearchBar;
- (void)_clearExplanationView;
- (void)_configureClearHistoryButton;
- (void)_deleteCurrentlySelectedItems;
- (void)_deselectHistoryItemsInSession:(id)session;
- (void)_reconfigureItemsIfNeeded;
- (void)_reloadItemsInSession:(id)session animated:(BOOL)animated;
- (void)_reloadWithSessions:(id)sessions animated:(BOOL)animated;
- (void)_restoreScrollPositionIfNeeded;
- (void)_saveViewState;
- (void)_showClearHistoryMenu:(id)menu;
- (void)_showExplanationView;
- (void)_toggleEditMode;
- (void)_updateBarButtonItems;
- (void)_updateContentOffsetIfNeeded;
- (void)_updateDeleteSelectedItemsButtonEnabled;
- (void)_updateMoreMenu;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToParentViewController:(id)controller;
- (void)historyViewDataSource:(id)source didComputeSessions:(id)sessions;
- (void)resetSearchText;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setTabGroupProvider:(id)provider;
- (void)updateClearHistoryButtonEnabled;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation SFHistoryViewController

- (SFHistoryViewController)initWithHistory:(id)history
{
  historyCopy = history;
  _createCollectionViewLayout = [(SFHistoryViewController *)self _createCollectionViewLayout];
  v26.receiver = self;
  v26.super_class = SFHistoryViewController;
  v6 = [(SFHistoryViewController *)&v26 initWithCollectionViewLayout:_createCollectionViewLayout];

  if (v6)
  {
    v7 = WebBookmarksHistoryFolderTitle();
    [(SFHistoryViewController *)v6 setTitle:v7];

    [(SFHistoryViewController *)v6 setClearsSelectionOnViewWillAppear:0];
    v8 = [[SFHistoryViewDataSource alloc] initWithHistory:historyCopy];
    historyDataSource = v6->_historyDataSource;
    v6->_historyDataSource = v8;

    [(SFHistoryViewDataSource *)v6->_historyDataSource setDelegate:v6];
    _savedStateDictionary = [(SFHistoryViewController *)v6 _savedStateDictionary];
    v11 = MEMORY[0x277CBEB58];
    v12 = [_savedStateDictionary objectForKeyedSubscript:@"savedExpandedSections"];
    v13 = v12;
    v14 = MEMORY[0x277CBEBF8];
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    v16 = [v11 setWithArray:v15];
    expandedSessionIdentifiers = v6->_expandedSessionIdentifiers;
    v6->_expandedSessionIdentifiers = v16;

    v18 = MEMORY[0x277CBEB58];
    v19 = [_savedStateDictionary objectForKeyedSubscript:@"savedCollapsedSections"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    v22 = [v18 setWithArray:v21];
    collapsedSessionIdentifiers = v6->_collapsedSessionIdentifiers;
    v6->_collapsedSessionIdentifiers = v22;

    v24 = v6;
  }

  return v6;
}

- (void)setTabGroupProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_tabGroupProvider, providerCopy);
  [(SFHistoryViewDataSource *)self->_historyDataSource setTabGroupProvider:providerCopy];
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SFHistoryViewController;
  [(SFHistoryViewController *)&v5 didMoveToParentViewController:?];
  if (!controller)
  {
    [(SFHistoryViewController *)self resetSearchText];
  }
}

- (void)viewDidLoad
{
  v42.receiver = self;
  v42.super_class = SFHistoryViewController;
  [(SFHistoryViewController *)&v42 viewDidLoad];
  self->_needsContentOffsetUpdate = 1;
  collectionView = [(SFHistoryViewController *)self collectionView];
  [collectionView setAllowsMultipleSelectionDuringEditing:1];
  [collectionView setDragDelegate:self];
  [collectionView setKeyboardDismissMode:1];
  [collectionView setAccessibilityIdentifier:@"HistoryCollectionView"];
  [collectionView _pocketInsets];
  [collectionView _setPocketInsets:v4 + 1.0];
  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [collectionView setBackgroundColor:systemGroupedBackgroundColor];
  }

  _makeHeaderRegistration = [(SFHistoryViewController *)self _makeHeaderRegistration];
  _makeHistoryCellRegistration = [(SFHistoryViewController *)self _makeHistoryCellRegistration];
  _makeSearchBarContainerRegistration = [(SFHistoryViewController *)self _makeSearchBarContainerRegistration];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v32 = WeakRetained;
  if (![MEMORY[0x277D49A08] isSolariumEnabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [WeakRetained panelViewControllerShouldUseSearchControllerInNavigationItem:self];
      self->_shouldUseSearchControllerInNavigationItem = v16;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    else if (self->_shouldUseSearchControllerInNavigationItem)
    {
      goto LABEL_5;
    }

    v17 = objc_alloc_init(MEMORY[0x277D759E8]);
    searchBar = self->_searchBar;
    self->_searchBar = v17;

    view = [(SFHistoryViewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v43);
    [(UISearchBar *)self->_searchBar sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    [(UISearchBar *)self->_searchBar setFrame:0.0, 0.0, Width, v21];

    [(UISearchBar *)self->_searchBar setSearchBarStyle:2];
    goto LABEL_11;
  }

  self->_shouldUseSearchControllerInNavigationItem = 1;
LABEL_5:
  navigationItem = [(SFHistoryViewController *)self navigationItem];
  v11 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [(UISearchController *)v11 setObscuresBackgroundDuringPresentation:0];
  [navigationItem setPreferredSearchBarPlacement:2];
  [navigationItem setSearchController:v11];
  searchController = self->_searchController;
  self->_searchController = v11;
  v13 = v11;

  searchBar = [(UISearchController *)v13 searchBar];
  v15 = self->_searchBar;
  self->_searchBar = searchBar;

LABEL_11:
  [(UISearchBar *)self->_searchBar setDelegate:self];
  v22 = _WBSLocalizedString();
  [(UISearchBar *)self->_searchBar setPlaceholder:v22];

  [(UISearchBar *)self->_searchBar setAccessibilityIdentifier:@"HistoryCollectionViewSearchBar"];
  v23 = objc_alloc(MEMORY[0x277D752D0]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __38__SFHistoryViewController_viewDidLoad__block_invoke;
  v38[3] = &unk_2781D7F18;
  v38[4] = self;
  v24 = _makeSearchBarContainerRegistration;
  v39 = v24;
  v25 = _makeHeaderRegistration;
  v40 = v25;
  v26 = _makeHistoryCellRegistration;
  v41 = v26;
  v27 = [v23 initWithCollectionView:collectionView cellProvider:v38];
  collectionDataSource = self->_collectionDataSource;
  self->_collectionDataSource = v27;

  objc_initWeak(&location, self);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __38__SFHistoryViewController_viewDidLoad__block_invoke_2;
  v35[3] = &unk_2781DB8B8;
  objc_copyWeak(&v36, &location);
  sectionSnapshotHandlers = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource sectionSnapshotHandlers];
  [sectionSnapshotHandlers setWillCollapseItemHandler:v35];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __38__SFHistoryViewController_viewDidLoad__block_invoke_3;
  v33[3] = &unk_2781DB8B8;
  objc_copyWeak(&v34, &location);
  sectionSnapshotHandlers2 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource sectionSnapshotHandlers];
  [sectionSnapshotHandlers2 setWillExpandItemHandler:v33];

  _toolbarItems = [(SFHistoryViewController *)self _toolbarItems];
  [(SFHistoryViewController *)self setToolbarItems:_toolbarItems animated:0];

  [(SFHistoryViewController *)self _updateBarButtonItems];
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

id __38__SFHistoryViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 section] || objc_msgSend(v8, "row") || *(*(a1 + 32) + 1136) == 1)
  {
    v10 = [v8 row];
    v11 = 56;
    if (!v10)
    {
      v11 = 48;
    }
  }

  else
  {
    v11 = 40;
  }

  v12 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + v11) forIndexPath:v8 item:v9];

  return v12;
}

void __38__SFHistoryViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[143];
    v6 = v10;
    v7 = [v6 identifier];
    [v5 removeObject:v7];

    v8 = v4[144];
    v9 = [v6 identifier];
    [v8 addObject:v9];

    [v4 _deselectHistoryItemsInSession:v6];
  }
}

void __38__SFHistoryViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[143];
    v6 = v10;
    v7 = [v6 identifier];
    [v5 addObject:v7];

    v8 = v4[144];
    v9 = [v6 identifier];

    [v8 removeObject:v9];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SFHistoryViewController;
  [(SFHistoryViewController *)&v6 viewWillAppear:appear];
  if ([(NSOrderedSet *)self->_sessionsToApplyOnAppear count])
  {
    [(SFHistoryViewController *)self _reloadWithSessions:self->_sessionsToApplyOnAppear animated:0];
    sessionsToApplyOnAppear = self->_sessionsToApplyOnAppear;
    self->_sessionsToApplyOnAppear = 0;
  }

  [(SFHistoryViewController *)self updateClearHistoryButtonEnabled];
  navigationController = [(SFHistoryViewController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = SFHistoryViewController;
  [(SFHistoryViewController *)&v6 viewWillDisappear:disappear];
  [(SFHistoryViewController *)self _saveViewState];
  collectionView = [(SFHistoryViewController *)self collectionView];
  contextMenuInteraction = [collectionView contextMenuInteraction];
  [contextMenuInteraction dismissMenu];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SFHistoryViewController;
  [(SFHistoryViewController *)&v4 viewDidDisappear:disappear];
  [(SFHistoryViewController *)self setEditing:0];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFHistoryViewController;
  [(SFHistoryViewController *)&v3 viewWillLayoutSubviews];
  [(SFHistoryViewController *)self _reconfigureItemsIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SFHistoryViewController;
  [(SFHistoryViewController *)&v5 viewDidLayoutSubviews];
  [(SFHistoryViewController *)self _updateContentOffsetIfNeeded];
  if (!self->_shouldUseSearchControllerInNavigationItem)
  {
    searchBar = self->_searchBar;
    view = [(SFHistoryViewController *)self view];
    [view layoutMargins];
    [(UISearchBar *)searchBar _setOverrideContentInsets:10 forRectEdges:?];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SFHistoryViewController;
  [(SFHistoryViewController *)&v5 willMoveToParentViewController:controller];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setPinnedPaletteForPanelViewController:self];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v14.receiver = self;
  v14.super_class = SFHistoryViewController;
  [SFHistoryViewController setEditing:sel_setEditing_animated_ animated:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained panelViewController:self updateToolbarItemsAnimated:animatedCopy];
  }

  else
  {
    _toolbarItems = [(SFHistoryViewController *)self _toolbarItems];
    [(SFHistoryViewController *)self setToolbarItems:_toolbarItems animated:animatedCopy];
  }

  [(SFHistoryViewController *)self _updateBarButtonItems];
  v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (editingCopy)
  {
    if (v10)
    {
      *v13 = 0;
      _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Begin editing history items", v13, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained panelViewControllerDidBeginEditing:self];
    }
  }

  else
  {
    if (v10)
    {
      *v13 = 0;
      _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "End editing history items", v13, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained panelViewControllerDidEndEditing:self];
    }
  }

  collectionView = [(SFHistoryViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  [(SFHistoryViewController *)self _addIndexPathsOfItemsNeedingReconfiguration:indexPathsForVisibleItems];
}

- (id)_makeHeaderRegistration
{
  v2 = MEMORY[0x277D752B0];
  v3 = objc_opt_class();

  return [v2 registrationWithCellClass:v3 configurationHandler:&__block_literal_global_62];
}

void __50__SFHistoryViewController__makeHeaderRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D756E0];
  v6 = a4;
  v7 = a2;
  v8 = [v5 prominentInsetGroupedHeaderConfiguration];
  v9 = [v6 title];

  [v8 setText:v9];
  [v7 setContentConfiguration:v8];
  [v7 setAccessibilityIdentifier:@"BrowsingSessionHeaderCell"];
  v10 = objc_alloc_init(MEMORY[0x277D75270]);
  [v10 setDisplayedState:0];
  v12[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v7 setAccessories:v11];
}

- (id)_makeHistoryCellRegistration
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __55__SFHistoryViewController__makeHistoryCellRegistration__block_invoke;
  v8 = &unk_2781DB900;
  objc_copyWeak(&v9, &location);
  v2 = _Block_copy(&v5);
  v3 = [MEMORY[0x277D752B0] registrationWithCellClass:objc_opt_class() configurationHandler:{v2, v5, v6, v7, v8}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __55__SFHistoryViewController__makeHistoryCellRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  [v6 setAutomaticallyUpdatesContentConfiguration:1];
  v8 = [v7 url];
  v9 = [History titleForHistoryItem:v7];
  [v6 setURL:v8 withTitle:v9];

  v10 = objc_alloc_init(MEMORY[0x277D75268]);
  [v10 setDisplayedState:1];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v6 setAccessories:v11];

  [v6 setAccessibilityIdentifier:@"HistoryCollectionViewCell"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained(WeakRetained + 151);
    v15 = [v14 activeProfileIdentifier];
    [v6 safari_annotateWithHistoryItem:v7 inProfile:v15];

    [v6 safari_updateVisualStateIsSelected:objc_msgSend(v6 isEditing:{"isSelected"), objc_msgSend(v13, "isEditing")}];
  }
}

- (id)_makeSearchBarContainerRegistration
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __62__SFHistoryViewController__makeSearchBarContainerRegistration__block_invoke;
  v8 = &unk_2781DB928;
  objc_copyWeak(&v9, &location);
  v2 = _Block_copy(&v5);
  v3 = [MEMORY[0x277D752B0] registrationWithCellClass:objc_opt_class() configurationHandler:{v2, v5, v6, v7, v8}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __62__SFHistoryViewController__makeSearchBarContainerRegistration__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [v5 setSearchBar:*(WeakRetained + 141)];
  }
}

- (id)_createCollectionViewLayout
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D752B8]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SFHistoryViewController__createCollectionViewLayout__block_invoke;
  v5[3] = &unk_2781DB950;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __54__SFHistoryViewController__createCollectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      v7 = [WeakRetained traitCollection];
      v8 = [v7 listEnvironment];

      if (v8 == 5)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 2;
    }

    v11 = WeakRetained[1136];
    v12 = [objc_alloc(MEMORY[0x277D75290]) initWithAppearance:v9];
    v13 = [MEMORY[0x277D75348] clearColor];
    [v12 setBackgroundColor:v13];

    if (a2 || (v11 & 1) != 0)
    {
      [v12 setHeaderMode:2];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__SFHistoryViewController__createCollectionViewLayout__block_invoke_2;
      v15[3] = &unk_2781D7E78;
      objc_copyWeak(&v16, (a1 + 32));
      [v12 setTrailingSwipeActionsConfigurationProvider:v15];
      v10 = [MEMORY[0x277CFB868] sectionWithListConfiguration:v12 layoutEnvironment:v5];
      objc_destroyWeak(&v16);
    }

    else
    {
      [v12 setShowsSeparators:0];
      v10 = [MEMORY[0x277CFB868] sectionWithListConfiguration:v12 layoutEnvironment:v5];
      [v10 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __54__SFHistoryViewController__createCollectionViewLayout__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _trailingSwipeActionConfigurationForIndexPath:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_reloadWithSessions:(id)sessions animated:(BOOL)animated
{
  animatedCopy = animated;
  v67[1] = *MEMORY[0x277D85DE8];
  sessionsCopy = sessions;
  if (!sessionsCopy)
  {
    sessionsCopy = [MEMORY[0x277CBEB70] orderedSet];
  }

  v50 = self->_sessions;
  objc_storeStrong(&self->_sessions, sessionsCopy);
  v6 = objc_alloc_init(MEMORY[0x277CFB890]);
  if (!self->_shouldUseSearchControllerInNavigationItem)
  {
    if ([(NSOrderedSet *)self->_sessions count]|| ([(UISearchBar *)self->_searchBar isFirstResponder]& 1) != 0 || ([(UISearchBar *)self->_searchBar text], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = +[SFSearchBarContainerCell dataSourceSectionIdentifier];
      v67[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
      [v6 appendSectionsWithIdentifiers:v9];

      v10 = +[SFSearchBarContainerCell dataSourceItemIdentifier];
      v66 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
      [v6 appendItemsWithIdentifiers:v11];
    }
  }

  array = [sessionsCopy array];
  [v6 appendSectionsWithIdentifiers:array];

  snapshot = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
  selfCopy = self;
  v47 = v6;
  if ([snapshot numberOfSections] >= 2 && !self->_shouldUseSearchControllerInNavigationItem || objc_msgSend(snapshot, "numberOfItems") && self->_shouldUseSearchControllerInNavigationItem)
  {
    obj = sessionsCopy;
    sectionIdentifiers = [v6 sectionIdentifiers];
    v14 = snapshot;
    sectionIdentifiers2 = [snapshot sectionIdentifiers];
    v16 = [sectionIdentifiers differenceFromArray:sectionIdentifiers2 withOptions:4];

    sectionIdentifiers3 = [snapshot sectionIdentifiers];
    safari_removalIndexes = [v16 safari_removalIndexes];
    v19 = [sectionIdentifiers3 objectsAtIndexes:safari_removalIndexes];
    [snapshot deleteSectionsWithIdentifiers:v19];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v46 = v16;
    insertions = [v16 insertions];
    v21 = [insertions countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v59;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v59 != v23)
          {
            objc_enumerationMutation(insertions);
          }

          v25 = *(*(&v58 + 1) + 8 * i);
          index = [v25 index];
          v27 = v14;
          numberOfSections = [v14 numberOfSections];
          object = [v25 object];
          v30 = object;
          if (index == numberOfSections)
          {
            v64 = object;
            v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
            [v27 appendSectionsWithIdentifiers:v31];
          }

          else
          {
            v63 = object;
            v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
            sectionIdentifiers4 = [v27 sectionIdentifiers];
            v33 = [sectionIdentifiers4 objectAtIndexedSubscript:index];
            [v27 insertSectionsWithIdentifiers:v31 beforeSectionWithIdentifier:v33];
          }

          v14 = v27;
        }

        v22 = [insertions countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v22);
    }

    self = selfCopy;
    [(UICollectionViewDiffableDataSource *)selfCopy->_collectionDataSource applySnapshot:v14 animatingDifferences:animatedCopy];

    sessionsCopy = obj;
  }

  else
  {
    [(UICollectionViewDiffableDataSource *)self->_collectionDataSource applySnapshot:v6 animatingDifferences:animatedCopy];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obja = sessionsCopy;
  v34 = [obja countByEnumeratingWithState:&v54 objects:v62 count:16];
  v35 = v50;
  if (v34)
  {
    v36 = v34;
    v37 = *v55;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(obja);
        }

        v39 = *(*(&v54 + 1) + 8 * j);
        v40 = [(NSOrderedSet *)v35 indexOfObject:v39];
        if (v40 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(SFHistoryViewController *)self _reloadItemsInSession:v39 animated:animatedCopy];
          continue;
        }

        v41 = [(NSOrderedSet *)v35 objectAtIndexedSubscript:v40];
        text = [(UISearchBar *)self->_searchBar text];
        if ([text length])
        {

LABEL_34:
          [(SFHistoryViewController *)self _reloadItemsInSession:v39 animated:animatedCopy];
          goto LABEL_35;
        }

        historyItems = [v41 historyItems];
        historyItems2 = [v39 historyItems];
        v45 = [historyItems isEqualToOrderedSet:historyItems2];

        v35 = v50;
        self = selfCopy;

        if ((v45 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_35:
      }

      v36 = [obja countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v36);
  }

  if ([(NSOrderedSet *)self->_sessions count])
  {
    [(SFHistoryViewController *)self _clearExplanationView];
  }

  else
  {
    [(SFHistoryViewController *)self _showExplanationView];
  }
}

- (void)_showExplanationView
{
  if (self->_explanationView)
  {
    [(SFHistoryViewController *)self _clearExplanationView];
  }

  text = [(UISearchBar *)self->_searchBar text];
  v4 = [text length];

  if (v4)
  {
    [MEMORY[0x277D75390] searchConfiguration];
  }

  else
  {
    [MEMORY[0x277D75390] emptyConfiguration];
  }
  v13 = ;
  v5 = [objc_alloc(MEMORY[0x277D753A8]) initWithConfiguration:v13];
  [(UIView *)v5 setAutoresizingMask:18];
  collectionView = [(SFHistoryViewController *)self collectionView];
  [collectionView bounds];
  [(UIView *)v5 setFrame:?];

  [(UIView *)v5 setUserInteractionEnabled:0];
  explanationView = self->_explanationView;
  self->_explanationView = v5;
  v8 = v5;

  collectionView2 = [(SFHistoryViewController *)self collectionView];
  [collectionView2 addSubview:self->_explanationView];

  navigationItem = [(SFHistoryViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  v12 = searchController;
  if (!v4)
  {
    [searchController setActive:0];
  }

  if (([v12 isActive] & 1) == 0)
  {
    [navigationItem setSearchController:0];
  }
}

- (void)_clearExplanationView
{
  [(UIView *)self->_explanationView removeFromSuperview];
  explanationView = self->_explanationView;
  self->_explanationView = 0;

  navigationItem = [(SFHistoryViewController *)self navigationItem];
  searchController = [navigationItem searchController];

  if (!searchController)
  {
    searchController = self->_searchController;
    navigationItem2 = [(SFHistoryViewController *)self navigationItem];
    [navigationItem2 setSearchController:searchController];
  }
}

- (void)_reloadItemsInSession:(id)session animated:(BOOL)animated
{
  animatedCopy = animated;
  v14[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = objc_alloc_init(MEMORY[0x277D75070]);
  v14[0] = sessionCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v7 appendItems:v8];

  historyItems = [sessionCopy historyItems];
  array = [historyItems array];
  [v7 appendItems:array intoParentItem:sessionCopy];

  if ([(SFHistoryViewController *)self _shouldSessionBeExpanded:sessionCopy])
  {
    v13 = sessionCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [v7 expandItems:v11];
  }

  else
  {
    v12 = sessionCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    [v7 collapseItems:v11];
  }

  [(UICollectionViewDiffableDataSource *)self->_collectionDataSource applySnapshot:v7 toSection:sessionCopy animatingDifferences:animatedCopy];
}

- (BOOL)_shouldSessionBeExpanded:(id)expanded
{
  expandedCopy = expanded;
  text = [(UISearchBar *)self->_searchBar text];
  v6 = [text length];

  if (!v6)
  {
    collapsedSessionIdentifiers = self->_collapsedSessionIdentifiers;
    identifier = [expandedCopy identifier];
    LOBYTE(collapsedSessionIdentifiers) = [(NSMutableSet *)collapsedSessionIdentifiers containsObject:identifier];

    if (collapsedSessionIdentifiers)
    {
      safari_isInToday = 0;
      goto LABEL_7;
    }

    expandedSessionIdentifiers = self->_expandedSessionIdentifiers;
    identifier2 = [expandedCopy identifier];
    LOBYTE(expandedSessionIdentifiers) = [(NSMutableSet *)expandedSessionIdentifiers containsObject:identifier2];

    if ((expandedSessionIdentifiers & 1) == 0)
    {
      lastVisitedDate = [expandedCopy lastVisitedDate];
      safari_isInToday = [lastVisitedDate safari_isInToday];

      goto LABEL_7;
    }
  }

  safari_isInToday = 1;
LABEL_7:

  return safari_isInToday;
}

- (void)_addIndexPathsOfItemsNeedingReconfiguration:(id)reconfiguration
{
  indexPathsOfItemsNeedingReconfiguration = self->_indexPathsOfItemsNeedingReconfiguration;
  if (indexPathsOfItemsNeedingReconfiguration)
  {
    [(NSMutableSet *)indexPathsOfItemsNeedingReconfiguration addObjectsFromArray:reconfiguration];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB58] setWithArray:reconfiguration];
    v6 = self->_indexPathsOfItemsNeedingReconfiguration;
    self->_indexPathsOfItemsNeedingReconfiguration = v5;
  }

  view = [(SFHistoryViewController *)self view];
  [view setNeedsLayout];
}

- (void)_reconfigureItemsIfNeeded
{
  if ([(NSMutableSet *)self->_indexPathsOfItemsNeedingReconfiguration count])
  {
    snapshot = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
    allObjects = [(NSMutableSet *)self->_indexPathsOfItemsNeedingReconfiguration allObjects];
    indexPathsOfItemsNeedingReconfiguration = self->_indexPathsOfItemsNeedingReconfiguration;
    self->_indexPathsOfItemsNeedingReconfiguration = 0;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__SFHistoryViewController__reconfigureItemsIfNeeded__block_invoke;
    v7[3] = &unk_2781DB978;
    v7[4] = self;
    v6 = [allObjects safari_mapObjectsUsingBlock:v7];
    [snapshot reconfigureItemsWithIdentifiers:v6];

    [(UICollectionViewDiffableDataSource *)self->_collectionDataSource applySnapshot:snapshot animatingDifferences:0];
  }
}

- (id)_toolbarItems
{
  v10[3] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D49A08] isSaveForLaterEnabled])
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if ([(SFHistoryViewController *)self isEditing])
    {
      _doneBarButtonItem = [(SFHistoryViewController *)self _doneBarButtonItem];
      v10[0] = _doneBarButtonItem;
      flexibleSpaceItem = [MEMORY[0x277D751E0] flexibleSpaceItem];
      v10[1] = flexibleSpaceItem;
      _deleteSelectedBarButtonItem = [(SFHistoryViewController *)self _deleteSelectedBarButtonItem];
      v10[2] = _deleteSelectedBarButtonItem;
      v7 = v10;
    }

    else
    {
      _doneBarButtonItem = [(SFHistoryViewController *)self _editBarButtonItem];
      v9[0] = _doneBarButtonItem;
      flexibleSpaceItem = [MEMORY[0x277D751E0] flexibleSpaceItem];
      v9[1] = flexibleSpaceItem;
      _deleteSelectedBarButtonItem = [(SFHistoryViewController *)self _clearHistoryBarButtonItem];
      v9[2] = _deleteSelectedBarButtonItem;
      v7 = v9;
    }

    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  }

  return v3;
}

- (id)_editBarButtonItem
{
  editButton = self->_editButton;
  if (!editButton)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    v5 = _WBSLocalizedString();
    v6 = [v4 initWithTitle:v5 style:0 target:self action:sel__toggleEditMode];
    v7 = self->_editButton;
    self->_editButton = v6;

    editButton = self->_editButton;
  }

  [(UIBarButtonItem *)editButton setAccessibilityIdentifier:@"HistoryEditButton"];
  v8 = self->_editButton;

  return v8;
}

- (id)_doneBarButtonItem
{
  if (!self->_doneEditingButton)
  {
    if ([MEMORY[0x277D49A08] isSaveForLaterEnabled])
    {
      objc_initWeak(&location, self);
      v3 = objc_alloc(MEMORY[0x277D751E0]);
      v4 = MEMORY[0x277D750C8];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __45__SFHistoryViewController__doneBarButtonItem__block_invoke;
      v17 = &unk_2781D5B80;
      objc_copyWeak(&v18, &location);
      v5 = [v4 actionWithHandler:&v14];
      v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v14, v15, v16, v17}];
      doneEditingButton = self->_doneEditingButton;
      self->_doneEditingButton = v6;

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277D751E0]);
      v9 = _WBSLocalizedString();
      v10 = [v8 initWithTitle:v9 style:0 target:self action:sel__toggleEditMode];
      v11 = self->_doneEditingButton;
      self->_doneEditingButton = v10;
    }
  }

  v12 = self->_doneEditingButton;

  return v12;
}

void __45__SFHistoryViewController__doneBarButtonItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleEditMode];
}

- (id)_clearHistoryBarButtonItem
{
  if (!self->_clearHistoryButton)
  {
    v3 = objc_alloc(MEMORY[0x277D751E0]);
    v4 = _WBSLocalizedString();
    v5 = [v3 initWithTitle:v4 style:0 target:0 action:0];
    clearHistoryButton = self->_clearHistoryButton;
    self->_clearHistoryButton = v5;

    [(UIBarButtonItem *)self->_clearHistoryButton setAccessibilityIdentifier:@"ShowClearHistoryOptionsButton"];
    [(SFHistoryViewController *)self _configureClearHistoryButton];
  }

  [(SFHistoryViewController *)self updateClearHistoryButtonEnabled];
  v7 = self->_clearHistoryButton;

  return v7;
}

- (id)_deleteSelectedBarButtonItem
{
  if (!self->_deleteItemsButton)
  {
    isSaveForLaterEnabled = [MEMORY[0x277D49A08] isSaveForLaterEnabled];
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    if (isSaveForLaterEnabled)
    {
      v5 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
      v6 = [v4 initWithImage:v5 style:0 target:self action:sel__deleteCurrentlySelectedItems];
    }

    else
    {
      v5 = _WBSLocalizedString();
      v6 = [v4 initWithTitle:v5 style:0 target:self action:sel__deleteCurrentlySelectedItems];
    }

    deleteItemsButton = self->_deleteItemsButton;
    self->_deleteItemsButton = v6;

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(UIBarButtonItem *)self->_deleteItemsButton setTintColor:systemRedColor];
  }

  [(SFHistoryViewController *)self _updateDeleteSelectedItemsButtonEnabled];
  [(UIBarButtonItem *)self->_deleteItemsButton setAccessibilityIdentifier:@"HistoryDeleteButton"];
  v9 = self->_deleteItemsButton;

  return v9;
}

- (id)_moreMenuBarButtonItem
{
  moreMenuButton = self->_moreMenuButton;
  if (!moreMenuButton)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis"];
    _moreMenu = [(SFHistoryViewController *)self _moreMenu];
    v7 = [v4 initWithImage:v5 menu:_moreMenu];
    v8 = self->_moreMenuButton;
    self->_moreMenuButton = v7;

    moreMenuButton = self->_moreMenuButton;
  }

  [(UIBarButtonItem *)moreMenuButton setAccessibilityIdentifier:@"HistoryMoreMenuButton"];
  v9 = self->_moreMenuButton;

  return v9;
}

- (void)_updateMoreMenu
{
  if ([MEMORY[0x277D49A08] isSaveForLaterEnabled])
  {
    _moreMenu = [(SFHistoryViewController *)self _moreMenu];
    _moreMenuBarButtonItem = [(SFHistoryViewController *)self _moreMenuBarButtonItem];
    [_moreMenuBarButtonItem setMenu:_moreMenu];
  }
}

- (id)_moreMenu
{
  v14[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D750C8];
  v4 = _WBSLocalizedString();
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__SFHistoryViewController__moreMenu__block_invoke;
  v11[3] = &unk_2781D5B80;
  objc_copyWeak(&v12, &location);
  v6 = [v3 actionWithTitle:v4 image:v5 identifier:0 handler:v11];

  [v6 setAccessibilityIdentifier:@"SelectWebsitesButton"];
  v14[0] = v6;
  _makeClearHistoryAction = [(SFHistoryViewController *)self _makeClearHistoryAction];
  v14[1] = _makeClearHistoryAction;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v9 = [MEMORY[0x277D75710] menuWithChildren:v8];
  [v9 setAccessibilityIdentifier:@"HistoryMoreMenu"];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

void __36__SFHistoryViewController__moreMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setEditing:1];
    WeakRetained = v2;
  }
}

- (id)_makeClearHistoryAction
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D750C8];
  v4 = _WBSLocalizedString();
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"clock.badge.xmark"];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __50__SFHistoryViewController__makeClearHistoryAction__block_invoke;
  v12 = &unk_2781D5B80;
  objc_copyWeak(&v13, &location);
  v6 = [v3 actionWithTitle:v4 image:v5 identifier:0 handler:&v9];

  [v6 setAccessibilityIdentifier:{@"ShowClearHistoryOptionsButton", v9, v10, v11, v12}];
  [v6 setAttributes:2];
  sessions = self->_sessions;
  if (sessions && ![(NSOrderedSet *)sessions count])
  {
    [v6 setAttributes:{objc_msgSend(v6, "attributes") | 1}];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v6;
}

void __50__SFHistoryViewController__makeClearHistoryAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showClearHistoryMenu:0];
}

- (void)_configureClearHistoryButton
{
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [(UIBarButtonItem *)self->_clearHistoryButton setTintColor:systemRedColor];

  [(UIBarButtonItem *)self->_clearHistoryButton setTarget:self];
  clearHistoryButton = self->_clearHistoryButton;

  [(UIBarButtonItem *)clearHistoryButton setAction:sel__showClearHistoryMenu_];
}

- (void)_showClearHistoryMenu:(id)menu
{
  menuCopy = menu;
  v9 = menuCopy;
  if (self->_isHistoryClearingRestricted)
  {
    v5 = [objc_alloc(MEMORY[0x277D4A740]) initWithPresenter:self];
    [v5 displayHistoryClearingDenialAlert];

LABEL_7:
    menuCopy = v9;
    goto LABEL_8;
  }

  if (!self->_clearBrowsingDataController)
  {
    v6 = objc_alloc_init(SafariClearBrowsingDataController);
    clearBrowsingDataController = self->_clearBrowsingDataController;
    self->_clearBrowsingDataController = v6;

    WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
    [(SafariClearBrowsingDataController *)self->_clearBrowsingDataController setTabGroupProvider:WeakRetained];

    menuCopy = v9;
  }

  if (self->_allowClearingHistory)
  {
    [(SafariClearBrowsingDataController *)self->_clearBrowsingDataController showClearHistoryMenuFromViewController:self];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateClearHistoryButtonEnabled
{
  v3 = dispatch_group_create();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  dispatch_group_enter(v3);
  v4 = +[FeatureManager sharedFeatureManager];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__SFHistoryViewController_updateClearHistoryButtonEnabled__block_invoke;
  v19[3] = &unk_2781DB9A0;
  v21 = v26;
  v5 = v3;
  v20 = v5;
  [v4 determineIfHistoryClearingIsAvailableWithCompletionHandler:v19];

  dispatch_group_enter(v5);
  v6 = +[FeatureManager sharedFeatureManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__SFHistoryViewController_updateClearHistoryButtonEnabled__block_invoke_2;
  v16[3] = &unk_2781DB9A0;
  v18 = v24;
  v7 = v5;
  v17 = v7;
  [v6 determineIfScreenTimeIsManagedByParentWithCompletionHandler:v16];

  dispatch_group_enter(v7);
  v8 = +[FeatureManager sharedFeatureManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__SFHistoryViewController_updateClearHistoryButtonEnabled__block_invoke_3;
  v13[3] = &unk_2781DB9A0;
  v15 = v22;
  v9 = v7;
  v14 = v9;
  [v8 determineIfScreenTimePasscodeIsSetWithCompletionHandler:v13];

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SFHistoryViewController_updateClearHistoryButtonEnabled__block_invoke_4;
  block[3] = &unk_2781DB9C8;
  objc_copyWeak(&v11, &location);
  block[4] = v26;
  block[5] = v24;
  block[6] = v22;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

void __58__SFHistoryViewController_updateClearHistoryButtonEnabled__block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1160) = *(*(*(a1 + 32) + 8) + 24) ^ 1;
    if ([WeakRetained[131] count])
    {
      v4 = *(*(*(a1 + 32) + 8) + 24);
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 1065) = v4 & 1;
    [v3[136] setEnabled:{objc_msgSend(v3[131], "count") != 0}];
    [v3 _updateMoreMenu];
    v5 = WBS_LOG_CHANNEL_PREFIXHistoryViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 1065))
      {
        v6 = @"enabled";
      }

      else
      {
        v6 = @"disabled";
      }

      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "History clearing is %@", &v10, 0xCu);
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v7 = 1;
    }

    else
    {
      v7 = *(*(*(a1 + 48) + 8) + 24);
    }

    *(v3 + 1161) = v7 & 1;
    v8 = WBS_LOG_CHANNEL_PREFIXHistoryViewController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 1161))
      {
        v9 = @"on";
      }

      else
      {
        v9 = @"off";
      }

      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Parental Controls are %@", &v10, 0xCu);
    }
  }
}

- (void)_updateDeleteSelectedItemsButtonEnabled
{
  collectionView = [(SFHistoryViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  if ([indexPathsForSelectedItems count])
  {
    allowClearingHistory = self->_allowClearingHistory;
  }

  else
  {
    allowClearingHistory = 0;
  }

  [(UIBarButtonItem *)self->_deleteItemsButton setEnabled:allowClearingHistory];
}

- (void)_updateBarButtonItems
{
  if ([MEMORY[0x277D49A08] isSaveForLaterEnabled])
  {
    if ([(SFHistoryViewController *)self isEditing])
    {
      [(SFHistoryViewController *)self _doneBarButtonItem];
    }

    else
    {
      [(SFHistoryViewController *)self _moreMenuBarButtonItem];
    }
    v3 = ;
    navigationItem = [(SFHistoryViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v3];

    isEditing = [(SFHistoryViewController *)self isEditing];
    if (isEditing)
    {
      _deleteSelectedBarButtonItem = [(SFHistoryViewController *)self _deleteSelectedBarButtonItem];
    }

    else
    {
      _deleteSelectedBarButtonItem = 0;
    }

    navigationItem2 = [(SFHistoryViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:_deleteSelectedBarButtonItem];

    if (isEditing)
    {
    }
  }
}

- (void)resetSearchText
{
  [(UISearchBar *)self->_searchBar setText:0];
  historyDataSource = self->_historyDataSource;

  [(SFHistoryViewDataSource *)historyDataSource searchWithText:0];
}

- (id)_clearHistoryText
{
  v2 = +[Application sharedApplication];
  [v2 isCloudHistoryEnabled];

  v3 = _WBSLocalizedString();

  return v3;
}

- (void)_toggleEditMode
{
  v3 = [(SFHistoryViewController *)self isEditing]^ 1;

  [(SFHistoryViewController *)self setEditing:v3 animated:1];
}

- (void)_deleteCurrentlySelectedItems
{
  collectionView = [(SFHistoryViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SFHistoryViewController__deleteCurrentlySelectedItems__block_invoke;
  v10[3] = &unk_2781DB978;
  v10[4] = self;
  v5 = [indexPathsForSelectedItems safari_mapObjectsUsingBlock:v10];

  objc_initWeak(&location, self);
  historyDataSource = self->_historyDataSource;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SFHistoryViewController__deleteCurrentlySelectedItems__block_invoke_2;
  v7[3] = &unk_2781D5598;
  objc_copyWeak(&v8, &location);
  [(SFHistoryViewDataSource *)historyDataSource deleteHistoryItems:v5 completionHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __56__SFHistoryViewController__deleteCurrentlySelectedItems__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDeleteSelectedItemsButtonEnabled];
}

- (id)_trailingSwipeActionConfigurationForIndexPath:(id)path
{
  v18[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (self->_allowClearingHistory)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__SFHistoryViewController__trailingSwipeActionConfigurationForIndexPath___block_invoke;
    aBlock[3] = &unk_2781DB9F0;
    objc_copyWeak(&v16, &location);
    v15 = pathCopy;
    v5 = _Block_copy(aBlock);
    v6 = MEMORY[0x277D753C0];
    v7 = _WBSLocalizedString();
    v8 = [v6 contextualActionWithStyle:1 title:v7 handler:v5];

    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
    [v8 setImage:v9];

    v10 = MEMORY[0x277D75AD8];
    v18[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v12 = [v10 configurationWithActions:v11];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __73__SFHistoryViewController__trailingSwipeActionConfigurationForIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [*(WeakRetained + 129) itemIdentifierForIndexPath:*(a1 + 32)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 historyItems];
      v10 = [v9 array];
    }

    else
    {
      v14[0] = v8;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    }

    v11 = v7[130];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__SFHistoryViewController__trailingSwipeActionConfigurationForIndexPath___block_invoke_2;
    v12[3] = &unk_2781D4D90;
    v13 = v5;
    [v11 deleteHistoryItems:v10 completionHandler:v12];
  }
}

- (id)_previewMenuForHistoryItems:(id)items
{
  v46[3] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v7 = [itemsCopy safari_mapObjectsUsingBlock:&__block_literal_global_210];
  v8 = MEMORY[0x277D750C8];
  v9 = _WBSLocalizedString();
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __55__SFHistoryViewController__previewMenuForHistoryItems___block_invoke_2;
  v44[3] = &unk_2781D93D0;
  v11 = v7;
  v45 = v11;
  v12 = [v8 actionWithTitle:v9 image:v10 identifier:0 handler:v44];
  [array addObject:v12];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__SFHistoryViewController__previewMenuForHistoryItems___block_invoke_3;
  aBlock[3] = &unk_2781D93F8;
  objc_copyWeak(&v42, &location);
  v13 = v11;
  v41 = v13;
  v14 = _Block_copy(aBlock);
  v15 = MEMORY[0x277D750C8];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __55__SFHistoryViewController__previewMenuForHistoryItems___block_invoke_5;
  v38[3] = &unk_2781D4D90;
  v16 = v14;
  v39 = v16;
  v17 = [v15 _sf_openInNewTabActionWithHandler:v38];
  [array2 addObject:v17];

  if ([v13 count] == 1)
  {
    tabGroupProvider = [(SFHistoryViewController *)self tabGroupProvider];
    firstObject = [v13 firstObject];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __55__SFHistoryViewController__previewMenuForHistoryItems___block_invoke_6;
    v36[3] = &unk_2781D87B0;
    v37 = v16;
    v20 = [tabGroupProvider openInTabGroupMenuWithNewTabGroupName:0 URL:firstObject descendantCount:0 handler:v36];
    [array2 addObject:v20];
  }

  if (self->_allowClearingHistory)
  {
    v21 = MEMORY[0x277D750C8];
    v22 = _WBSLocalizedString();
    v23 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __55__SFHistoryViewController__previewMenuForHistoryItems___block_invoke_7;
    v33[3] = &unk_2781DA008;
    objc_copyWeak(&v35, &location);
    v34 = itemsCopy;
    v24 = [v21 actionWithTitle:v22 image:v23 identifier:0 handler:v33];

    [v24 setAttributes:2];
    [v24 setAccessibilityIdentifier:@"DeleteHistoryItemButton"];
    [array3 addObject:v24];

    objc_destroyWeak(&v35);
  }

  v25 = MEMORY[0x277D75710];
  v26 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array];
  v46[0] = v26;
  v27 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array2];
  v46[1] = v27;
  v28 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array3];
  v46[2] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  v30 = [v25 menuWithTitle:&stru_2827BF158 children:v29];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);

  return v30;
}

void __55__SFHistoryViewController__previewMenuForHistoryItems___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  [v2 setURLs:v1];
}

void __55__SFHistoryViewController__previewMenuForHistoryItems___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277D28F40] builder];
    [v5 setPreferredTabOrder:a2];
    [v5 setPrefersOpenInNewTab:1];
    v6 = [*(a1 + 32) count];
    v7 = *(a1 + 32);
    if (v6 < 2)
    {
      v11 = [v7 firstObject];
      v10 = [v5 navigationIntentWithURL:v11];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__SFHistoryViewController__previewMenuForHistoryItems___block_invoke_4;
      v14[3] = &unk_2781D8308;
      v8 = v5;
      v15 = v8;
      v9 = [v7 safari_mapObjectsUsingBlock:v14];
      v10 = [v8 navigationIntentWithMultipleIntents:v9];
    }

    v12 = objc_loadWeakRetained(WeakRetained + 149);
    [v12 dispatchNavigationIntent:v10];

    if ([v10 shouldOrderToForeground])
    {
      v13 = objc_loadWeakRetained(WeakRetained + 151);
      [v13 removeSingleBlankTabFromActiveTabGroup];
    }
  }
}

void __55__SFHistoryViewController__previewMenuForHistoryItems___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[130] deleteHistoryItems:*(a1 + 32) completionHandler:0];
    WeakRetained = v3;
  }
}

- (void)_deselectHistoryItemsInSession:(id)session
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if ([(SFHistoryViewController *)self isEditing])
  {
    collectionView = [(SFHistoryViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__SFHistoryViewController__deselectHistoryItemsInSession___block_invoke;
    v17[3] = &unk_2781DBA18;
    v17[4] = self;
    v18 = sessionCopy;
    v7 = [indexPathsForSelectedItems safari_filterObjectsUsingBlock:v17];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
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

          [collectionView deselectItemAtIndexPath:*(*(&v13 + 1) + 8 * v12++) animated:{0, v13}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v10);
    }

    [(SFHistoryViewController *)self _updateDeleteSelectedItemsButtonEnabled];
  }
}

uint64_t __58__SFHistoryViewController__deselectHistoryItemsInSession___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 1032) itemIdentifierForIndexPath:a2];
  v4 = [*(a1 + 40) historyItems];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v18[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource itemIdentifierForIndexPath:pathCopy];
  isEditing = [(SFHistoryViewController *)self isEditing];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isEditing)
  {
    if ((isKindOfClass & 1) == 0)
    {
      [viewCopy deselectItemAtIndexPath:pathCopy animated:0];
    }

    [(SFHistoryViewController *)self _updateDeleteSelectedItemsButtonEnabled];
    v18[0] = pathCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [(SFHistoryViewController *)self _addIndexPathsOfItemsNeedingReconfiguration:v11];
  }

  else
  {
    if (isKindOfClass)
    {
      v12 = MEMORY[0x277D28F40];
      v13 = v8;
      builder = [v12 builder];
      v15 = [v13 url];

      v16 = [builder navigationIntentWithHistoryURL:v15];

      [v16 setShouldDismissSidebarOnLoad:1];
      WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
      [WeakRetained dispatchNavigationIntent:v16];
    }

    [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v7[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([(SFHistoryViewController *)self isEditing])
  {
    [(SFHistoryViewController *)self _updateDeleteSelectedItemsButtonEnabled];
    v7[0] = pathCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [(SFHistoryViewController *)self _addIndexPathsOfItemsNeedingReconfiguration:v6];
  }
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  v28[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathsCopy = paths;
  if ([pathsCopy count])
  {
    if ([pathsCopy count] == 1)
    {
      collectionDataSource = self->_collectionDataSource;
      firstObject = [pathsCopy firstObject];
      v11 = [(UICollectionViewDiffableDataSource *)collectionDataSource itemIdentifierForIndexPath:firstObject];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        historyItems = [v11 historyItems];
        array = [historyItems array];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28[0] = v11;
          array = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
        }

        else
        {
          array = 0;
        }
      }
    }

    else
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __93__SFHistoryViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke;
      v27[3] = &unk_2781DB978;
      v27[4] = self;
      array = [pathsCopy safari_mapObjectsUsingBlock:v27];
      isKindOfClass = 0;
    }

    if ([array count])
    {
      objc_initWeak(&location, self);
      v16 = MEMORY[0x277D753B0];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __93__SFHistoryViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke_2;
      v22[3] = &unk_2781DBA40;
      objc_copyWeak(&v24, &location);
      v25 = isKindOfClass & 1;
      v17 = array;
      v23 = v17;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __93__SFHistoryViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke_3;
      v19[3] = &unk_2781D84C0;
      objc_copyWeak(&v21, &location);
      v20 = v17;
      v15 = [v16 configurationWithIdentifier:0 previewProvider:v22 actionProvider:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __93__SFHistoryViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 1032) itemIdentifierForIndexPath:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __93__SFHistoryViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && (*(a1 + 48) & 1) == 0)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 150);
    v6 = [*(a1 + 32) firstObject];
    v7 = [v6 url];
    v4 = [v5 linkPreviewViewControllerForURL:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __93__SFHistoryViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _previewMenuForHistoryItems:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  animatorCopy = animator;
  objc_initWeak(&location, self);
  previewViewController = [animatorCopy previewViewController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__SFHistoryViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
  v13[3] = &unk_2781D4F30;
  objc_copyWeak(&v15, &location);
  v12 = previewViewController;
  v14 = v12;
  [animatorCopy addAnimations:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __100__SFHistoryViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 150);
    [v3 commitLinkPreviewViewController:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path
{
  configuration = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource itemIdentifierForIndexPath:path, configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionView = [(SFHistoryViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v9 = [indexPathsForSelectedItems count];

    if (v9 <= 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);
      [WeakRetained linkPreviewProviderWillDismissPreview];
    }
  }

  return 0;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v21[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v9 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource itemIdentifierForIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = objc_alloc(MEMORY[0x277CCAA88]);
    v12 = [v10 url];
    v13 = [v11 initWithObject:v12];

    v14 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v13];
    v15 = [viewCopy cellForItemAtIndexPath:pathCopy];
    v16 = v15;
    if (v15)
    {
      contentView = [v15 contentView];
      v18 = [v14 safari_itemWithCustomBackgroundForPreviewView:contentView];

      v14 = v18;
    }

    v21[0] = v14;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  return v19;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didStartDragWithDragContentType:11];
}

- (void)historyViewDataSource:(id)source didComputeSessions:(id)sessions
{
  sessionsCopy = sessions;
  viewIfLoaded = [(SFHistoryViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    [(SFHistoryViewController *)self _reloadWithSessions:sessionsCopy animated:self->_hasLoadedHistory];
  }

  else
  {
    objc_storeStrong(&self->_sessionsToApplyOnAppear, sessions);
  }

  [(SFHistoryViewController *)self updateClearHistoryButtonEnabled];
  self->_hasLoadedHistory = 1;
}

- (void)_updateContentOffsetIfNeeded
{
  if (self->_needsContentOffsetUpdate && self->_hasLoadedHistory)
  {
    self->_needsContentOffsetUpdate = 0;
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v4 = [safari_browserDefaults objectForKey:@"SavedCollectionViewScrollState-HistoryView"];

    if (v4)
    {

      [(SFHistoryViewController *)self _restoreScrollPositionIfNeeded];
    }

    else
    {

      [(SFHistoryViewController *)self _adjustContentOffsetHidingSearchBar];
    }
  }
}

- (void)_saveViewState
{
  v50[6] = *MEMORY[0x277D85DE8];
  snapshot = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
  numberOfItems = [snapshot numberOfItems];

  if (numberOfItems)
  {
    collectionView = [(SFHistoryViewController *)self collectionView];
    snapshot2 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
    itemIdentifiers = [snapshot2 itemIdentifiers];
    lastObject = [itemIdentifiers lastObject];

    v9 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource indexPathForItemIdentifier:lastObject];
    v10 = [collectionView layoutAttributesForItemAtIndexPath:v9];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v51.origin.x = v12;
    v51.origin.y = v14;
    v51.size.width = v16;
    v51.size.height = v18;
    MaxY = CGRectGetMaxY(v51);
    [collectionView frame];
    if (MaxY >= CGRectGetMaxY(v52))
    {
      [collectionView contentOffset];
      v25 = v24;
      v27 = v26;
      indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
      v29 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];
      firstObject = [v29 firstObject];

      v30 = [collectionView layoutAttributesForItemAtIndexPath:firstObject];
      [v30 frame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v53.origin.x = v32;
      v53.origin.y = v34;
      v53.size.width = v36;
      v53.size.height = v38;
      v54 = CGRectOffset(v53, -v25, -v27);
      MinY = CGRectGetMinY(v54);
      [collectionView adjustedContentInset];
      v41 = MinY - v40;
      v49[0] = @"TopVisibleCellSection";
      allObjects3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject, "section")}];
      v50[0] = allObjects3;
      v49[1] = @"TopVisibleCellRow";
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject, "row")}];
      v50[1] = v22;
      v49[2] = @"TopVisibleCellOffset";
      v42 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
      v50[2] = v42;
      v49[3] = @"savedExpandedSections";
      allObjects = [(NSMutableSet *)self->_expandedSessionIdentifiers allObjects];
      v50[3] = allObjects;
      v49[4] = @"savedCollapsedSections";
      allObjects2 = [(NSMutableSet *)self->_collapsedSessionIdentifiers allObjects];
      v50[4] = allObjects2;
      v49[5] = @"Timestamp";
      v45 = [MEMORY[0x277CBEAA8] now];
      v50[5] = v45;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:6];
    }

    else
    {
      firstObject = [(NSMutableSet *)self->_expandedSessionIdentifiers allObjects];
      v48[0] = firstObject;
      v47[1] = @"savedCollapsedSections";
      allObjects3 = [(NSMutableSet *)self->_collapsedSessionIdentifiers allObjects];
      v48[1] = allObjects3;
      v47[2] = @"Timestamp";
      v22 = [MEMORY[0x277CBEAA8] now];
      v48[2] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
    }

    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [safari_browserDefaults setObject:v23 forKey:@"SavedCollectionViewScrollState-HistoryView"];
  }
}

- (id)_savedStateDictionary
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [safari_browserDefaults objectForKey:@"SavedCollectionViewScrollState-HistoryView"];

  if (v3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v5 = [v3 objectForKeyedSubscript:@"Timestamp"];
    [date timeIntervalSinceDate:v5];
    v7 = v6;

    safari_browserDefaults2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v9 = safari_browserDefaults2;
    if (v7 <= 480.0)
    {
      v10 = [safari_browserDefaults2 objectForKey:@"SavedCollectionViewScrollState-HistoryView"];
    }

    else
    {
      [safari_browserDefaults2 removeObjectForKey:@"SavedCollectionViewScrollState-HistoryView"];
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_restoreScrollPositionIfNeeded
{
  _savedStateDictionary = [(SFHistoryViewController *)self _savedStateDictionary];
  v24 = _savedStateDictionary;
  if (_savedStateDictionary)
  {
    v4 = [_savedStateDictionary objectForKeyedSubscript:@"TopVisibleCellRow"];
    integerValue = [v4 integerValue];

    v6 = [v24 objectForKeyedSubscript:@"TopVisibleCellSection"];
    integerValue2 = [v6 integerValue];

    v8 = [MEMORY[0x277CCAA70] indexPathForRow:integerValue inSection:integerValue2];
    snapshot = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
    section = [v8 section];
    if (section >= [snapshot numberOfSections] || (v11 = objc_msgSend(v8, "row"), objc_msgSend(snapshot, "sectionIdentifiers"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectAtIndexedSubscript:", objc_msgSend(v8, "section")), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(snapshot, "numberOfItemsInSection:", v13), v13, v12, v11 >= v14))
    {
      [(SFHistoryViewController *)self _adjustContentOffsetHidingSearchBar];
    }

    else
    {
      collectionView = [(SFHistoryViewController *)self collectionView];
      [collectionView scrollToItemAtIndexPath:v8 atScrollPosition:1 animated:0];
      [collectionView contentOffset];
      v17 = v16;
      v19 = v18;
      v20 = [v24 objectForKey:@"TopVisibleCellOffset"];
      [v20 doubleValue];
      v22 = v19 - v21;

      [collectionView setContentOffset:0 animated:{v17, v22}];
      safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      [safari_browserDefaults removeObjectForKey:@"SavedCollectionViewScrollState-HistoryView"];
    }
  }

  else
  {
    [(SFHistoryViewController *)self _adjustContentOffsetHidingSearchBar];
  }
}

- (void)_adjustContentOffsetHidingSearchBar
{
  if (!self->_shouldUseSearchControllerInNavigationItem)
  {
    snapshot = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
    if ([snapshot numberOfItems])
    {
      itemIdentifiers = [snapshot itemIdentifiers];
      v5 = [itemIdentifiers safari_firstObjectPassingTest:&__block_literal_global_250];

      collectionView = [(SFHistoryViewController *)self collectionView];
      v7 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource indexPathForItemIdentifier:v5];
      [collectionView scrollToItemAtIndexPath:v7 atScrollPosition:1 animated:0];
    }
  }
}

uint64_t __62__SFHistoryViewController__adjustContentOffsetHidingSearchBar__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = +[SFSearchBarContainerCell dataSourceSectionIdentifier];
    if ([v3 isEqualToString:v4])
    {
      v5 = 0;
    }

    else
    {
      v6 = +[SFSearchBarContainerCell dataSourceItemIdentifier];
      v5 = [v3 isEqualToString:v6] ^ 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (!self->_shouldUseSearchControllerInNavigationItem)
  {
    y = offset->y;
    v8 = [(SFHistoryViewController *)self collectionView:dragging];
    [v8 adjustedContentInset];
    v10 = v9;

    [(UISearchBar *)self->_searchBar bounds];
    Height = CGRectGetHeight(v14);
    v12 = Height * 0.5 - v10;
    v13 = fmax(y, Height - v10);
    if (y < v12)
    {
      v13 = -v10;
    }

    offset->y = v13;
  }
}

- (BookmarksPanelViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_SFNavigationIntentHandling)navigationIntentHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);

  return WeakRetained;
}

- (LinkPreviewProvider)linkPreviewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);

  return WeakRetained;
}

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);

  return WeakRetained;
}

@end
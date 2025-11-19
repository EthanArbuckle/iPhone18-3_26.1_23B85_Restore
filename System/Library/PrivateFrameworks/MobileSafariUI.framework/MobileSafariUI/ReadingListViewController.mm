@interface ReadingListViewController
- (BOOL)_shouldUseTranslucentAppearance;
- (BOOL)tableView:(id)a3 canHandleDropSession:(id)a4;
- (LinkPreviewProvider)linkPreviewProvider;
- (NSArray)bookmarksPanelToolbarItems;
- (ReadingListViewController)init;
- (ReadingListViewControllerDelegate)delegate;
- (TabGroupProvider)tabGroupProvider;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_URLForRowAtIndexPath:(id)a3;
- (id)_bookmarkAtIndexPath:(id)a3;
- (id)_createAction:(int64_t)a3 forRowAtIndexPath:(id)a4 allowingNewlineInTitle:(BOOL)a5 withBlock:(id)a6;
- (id)_createActions:(id)a3 forRowAtIndexPath:(id)a4 allowingNewlineInTitles:(BOOL)a5 withBlock:(id)a6;
- (id)_currentReadingListBookmark;
- (id)_deleteBarButtonItem;
- (id)_editButtonIdentifier;
- (id)_iconForUUID:(id)a3 iconData:(id)a4;
- (id)_saveOfflineBarButtonItem;
- (id)_unreadFilterBarButtonItem;
- (id)_unreadFilterButtonIdentifier;
- (id)_unreadFilterButtonTitle;
- (id)previewTableViewController:(id)a3 menuForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_adjustContentOffsetIfNeeded;
- (void)_clearExplanationView;
- (void)_connectSafariFetcherServerProxy;
- (void)_deleteBookmarks:(id)a3;
- (void)_didChangeUnreadFilter;
- (void)_disconnectSafariFetcherServerProxy;
- (void)_fetchMetadataIfNeededForBookmark:(id)a3;
- (void)_networkReachabilityChanged:(id)a3;
- (void)_postChangeNotification;
- (void)_readingListBookmarkMetadataDidUpdate:(id)a3;
- (void)_readingListItemAtIndexPath:(id)a3 lockAndPerformUpdates:(id)a4 performBlockIfLockFailed:(id)a5;
- (void)_readingListItemAtIndexPath:(id)a3 setUnread:(BOOL)a4;
- (void)_readingListItemAtIndexPathDelete:(id)a3;
- (void)_readingListItemsAtIndexPaths:(id)a3 lockAndPerformUpdate:(id)a4 performBlockIfLockFailed:(id)a5;
- (void)_reloadReadingList;
- (void)_reloadReadingListAndTable;
- (void)_restoreCellSeparator;
- (void)_saveForOffline:(id)a3;
- (void)_scheduleDelayedChangeNotification;
- (void)_setIconForBookmark:(id)a3 cell:(id)a4 synchronously:(BOOL)a5;
- (void)_showExplanationView;
- (void)_updateEditingButtonsEnabled;
- (void)_updateSearchBar;
- (void)_updateTableViewByComputingDifference;
- (void)_updateTableViewByRemovingReadingListItemAtIndexPath:(id)a3;
- (void)_updateToolbarItemsAnimated:(BOOL)a3;
- (void)_webBookmarksDidReload:(id)a3;
- (void)bookmarksServerProxy:(id)a3 didStartFetchingReadingListItem:(id)a4;
- (void)bookmarksServerProxy:(id)a3 didStopFetchingReadingListItem:(id)a4;
- (void)bookmarksServerProxyConnectionInvalidated:(id)a3;
- (void)bookmarksServerProxyDidFinishFetching:(id)a3;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)loadView;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)tableView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateAndScrollToCurrentSelectedItemIfNeeded:(BOOL)a3;
- (void)updateColorSchemeForExplanationView;
- (void)updateUserActivityState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation ReadingListViewController

- (ReadingListViewController)init
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = ReadingListViewController;
  v2 = [(ReadingListViewController *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    v2->_networkIsReachable = [v3 isNetworkReachable];
    [v3 addNetworkReachableObserver:v2 selector:sel__networkReachabilityChanged_];
    v4 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    collection = v2->_collection;
    v2->_collection = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__readingListBookmarkDidUpdate_ name:@"ReadingListBookmarkDidUpdateNotification" object:0];
    [v6 addObserver:v2 selector:sel__webBookmarksDidReload_ name:*MEMORY[0x277D7B608] object:0];
    [v6 addObserver:v2 selector:sel__didAddNewReadingListBookmark name:@"ReadingListBookmarkAddedNotification" object:0];
    [v6 addObserver:v2 selector:sel__webBookmarksDidReload_ name:@"bookmarkCollectionHasBecomeAvailableNotification" object:0];
    [v6 addObserver:v2 selector:sel__readingListBookmarkMetadataDidUpdate_ name:@"ReadingListBookmarkMetadataDidUpdateNotification" object:0];
    [(ReadingListViewController *)v2 _connectSafariFetcherServerProxy];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, didReceiveWebBookmarksReadingListFetchingNotification, *MEMORY[0x277D7B630], 0, 1024);
    v2->_loadIconsSynchronously = 1;
    v8 = WebBookmarksReadingListFolderTitle();
    [(ReadingListViewController *)v2 setTitle:v8];

    v9 = +[Application sharedApplication];
    v10 = [v9 readingListLeadImageCache];
    imageCache = v2->_imageCache;
    v2->_imageCache = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    visibleBookmarkIDs = v2->_visibleBookmarkIDs;
    v2->_visibleBookmarkIDs = v12;

    v2->_needsContentOffsetAdjustment = 1;
    v21[0] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v15 = [(ReadingListViewController *)v2 registerForTraitChanges:v14 withTarget:v2 action:sel_contentSizeCategoryDidChange];

    v16 = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v17 = [(ReadingListViewController *)v2 registerForTraitChanges:v16 withTarget:v2 action:sel_updateColorSchemeForExplanationView];

    v18 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v4 removeNetworkReachableObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D7B630], 0);
  [(ReadingListViewController *)self _disconnectSafariFetcherServerProxy];
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  [(ReadingListViewController *)self _clearExplanationView];
  v6.receiver = self;
  v6.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v6 dealloc];
}

- (BOOL)_shouldUseTranslucentAppearance
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained panelViewControllerShouldTranslucentAppearance:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_showExplanationView
{
  if (!self->_explanationView)
  {
    v13 = _WBSLocalizedString();
    v3 = _WBSLocalizedString();
    v4 = [MEMORY[0x277D75390] emptyConfiguration];
    [v4 setTextToSecondaryTextPadding:8.0];
    [v4 setText:v13];
    [v4 setSecondaryText:v3];
    v5 = [(UIContentUnavailableView *)[ReadingListContentUnavailableView alloc] initWithConfiguration:v4];
    [(ReadingListContentUnavailableView *)v5 setAutoresizingMask:18];
    v6 = [(ReadingListViewController *)self view];
    [v6 bounds];
    [(ReadingListContentUnavailableView *)v5 setFrame:?];

    if ([(ReadingListViewController *)self _shouldUseTranslucentAppearance])
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBackgroundColor];
    }
    v7 = ;
    [(ReadingListContentUnavailableView *)v5 setBackgroundColor:v7];
    explanationView = self->_explanationView;
    self->_explanationView = &v5->super.super;
    v9 = v5;

    v10 = [(ReadingListViewController *)self view];
    [v10 addSubview:self->_explanationView];

    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UITableView *)self->_tableView setTableFooterView:v11];

    v12 = [(UITableView *)self->_tableView tableHeaderView];

    [v12 setHidden:1];
  }
}

- (void)_clearExplanationView
{
  [(UIView *)self->_explanationView removeFromSuperview];
  explanationView = self->_explanationView;
  self->_explanationView = 0;

  [(UITableView *)self->_tableView setTableFooterView:0];
  v4 = [(UITableView *)self->_tableView tableHeaderView];
  [v4 setHidden:0];
}

- (void)loadView
{
  v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v19 objectForKey:@"showingAllReadingListBookmarks"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  self->_showingAllBookmarks = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readingListViewController:self updateUnreadFilterShowingAllBookmarks:self->_showingAllBookmarks];
  }

  [(ReadingListViewController *)self _reloadReadingList];
  v7 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(ReadingListViewController *)self setView:v7];

  v8 = [(ReadingListViewController *)self view];
  [v8 setAutoresizingMask:18];

  v9 = [(ReadingListViewController *)self _unreadFilterButtonTitle];
  v10 = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
  [v10 setTitle:v9];

  v11 = [(ReadingListViewController *)self _unreadFilterButtonIdentifier];
  v12 = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
  [v12 setAccessibilityIdentifier:v11];

  v13 = [[PreviewTableViewController alloc] initWithStyle:2];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v13;

  [(PreviewTableViewController *)self->_tableViewController setPreviewDelegate:self];
  v15 = [(ReadingListViewController *)self linkPreviewProvider];
  [(PreviewTableViewController *)self->_tableViewController setLinkPreviewProvider:v15];

  [(PreviewTableViewController *)self->_tableViewController setViewRespectsSystemMinimumLayoutMargins:0];
  v16 = [(PreviewTableViewController *)self->_tableViewController tableView];
  tableView = self->_tableView;
  self->_tableView = v16;

  [(UITableView *)self->_tableView setAccessibilityIdentifier:@"ReadingListTable"];
  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDragDelegate:self];
  [(UITableView *)self->_tableView setDropDelegate:self];
  [(UITableView *)self->_tableView setKeyboardDismissMode:1];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ReadingListTableViewCellWithImage"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ReadingListTableViewCellWithoutImage"];
  [(UITableView *)self->_tableView setAllowsMultipleSelectionDuringEditing:1];
  +[ReadingListTableViewCell minimumCellHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:?];
  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x277D76F30]];
  [(UITableView *)self->_tableView setSeparatorInsetReference:1];
  [(ReadingListViewController *)self addChildViewController:self->_tableViewController];
  v18 = [(ReadingListViewController *)self view];
  [v18 addSubview:self->_tableView];

  [(ReadingListViewController *)self _updateSearchBar];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v4 viewDidLoad];
  v3 = [(ReadingListViewController *)self view];
  [v3 bounds];
  [(UITableView *)self->_tableView setFrame:?];

  if (self->_deferEnteringEditMode)
  {
    self->_deferEnteringEditMode = 0;
    [(ReadingListViewController *)self setEditing:1 animated:0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v4 viewDidDisappear:a3];
  [(ReadingListLeadImageCache *)self->_imageCache clearCache];
  [(ReadingListViewController *)self setEditing:0];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(ReadingListViewController *)self view];
  [v3 bounds];
  [(UITableView *)self->_tableView setFrame:?];

  v4.receiver = self;
  v4.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v4 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v5 viewDidLayoutSubviews];
  searchBar = self->_searchBar;
  v4 = [(ReadingListViewController *)self tableView];
  [v4 layoutMargins];
  [(UISearchBar *)searchBar _setOverrideContentInsets:10 forRectEdges:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(WebBookmarkCollection *)self->_collection readingListWithUnreadOnly:0];
  v6 = [v5 bookmarkCount];

  if (!v6)
  {
    [(ReadingListViewController *)self _showExplanationView];
  }

  v11.receiver = self;
  v11.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v11 viewWillAppear:v3];
  v7 = [(ReadingListViewController *)self navigationController];
  [v7 setToolbarHidden:0 animated:v3];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0)
  {
    v10 = [(ReadingListViewController *)self bookmarksPanelToolbarItems];
    [(ReadingListViewController *)self setToolbarItems:v10 animated:v3];
  }
}

- (void)contentSizeCategoryDidChange
{
  if (!self->_shouldUseSearchControllerInNavigationBar)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ReadingListViewController_contentSizeCategoryDidChange__block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __57__ReadingListViewController_contentSizeCategoryDidChange__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1104) sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  _SFRoundFloatToPixels();
  [*(*(a1 + 32) + 1104) setFrame:{0.0, 0.0, 0.0, v2}];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1104);
  v5 = *(v3 + 1168);

  return [v5 setTableHeaderView:v4];
}

- (void)updateColorSchemeForExplanationView
{
  if (self->_explanationView)
  {
    [(ReadingListViewController *)self _clearExplanationView];

    [(ReadingListViewController *)self _showExplanationView];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v9 viewDidAppear:a3];
  v4 = [(ReadingListViewController *)self userActivity];
  v5 = [v4 activityType];
  v6 = *MEMORY[0x277CDB9F8];
  v7 = [v5 isEqualToString:*MEMORY[0x277CDB9F8]];

  if ((v7 & 1) == 0)
  {
    [v4 invalidate];
    v8 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:v6];

    [(ReadingListViewController *)self setUserActivity:v8];
    v4 = v8;
  }

  [v4 setNeedsSave:1];
}

- (void)_adjustContentOffsetIfNeeded
{
  if (!self->_shouldUseSearchControllerInNavigationBar && self->_needsContentOffsetAdjustment)
  {
    self->_needsContentOffsetAdjustment = 0;
    if (![(UIViewController *)self safari_hasSavedTableViewScrollPosition]|| ![(UIViewController *)self safari_restoreTableViewScrollPosition])
    {
      tableView = self->_tableView;

      [(UITableView *)tableView safari_adjustContentOffsetToTopHidingTableHeaderView];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(NSTimer *)self->_deletionNotificationTimer isValid])
  {
    [(ReadingListViewController *)self _postChangeNotification];
  }

  [(UIViewController *)self safari_saveTableViewScrollPosition];
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_showingAllBookmarks];
  [v5 setObject:v6 forKey:@"showingAllReadingListBookmarks"];

  v7 = [(ReadingListViewController *)self tableView];
  [(UITableView *)v7 safari_dismissContextMenu];

  v8.receiver = self;
  v8.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v8 viewWillDisappear:v3];
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v5 willMoveToParentViewController:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setPinnedPaletteForPanelViewController:self];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(UITableView *)self->_tableView window];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v5;
  }

  if (!v8)
  {
    self->_deferEnteringEditMode = 1;
  }

  [(ReadingListViewController *)self _restoreCellSeparator];
  v16.receiver = self;
  v16.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v16 setEditing:v5 animated:v4];
  v9 = !v5;
  [(UISearchBar *)self->_searchBar setUserInteractionEnabled:v5 ^ 1];
  v10 = 1.0;
  if (v5)
  {
    v10 = 0.5;
  }

  [(UISearchBar *)self->_searchBar setAlpha:v10];
  [MEMORY[0x277CD9FF0] begin];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__ReadingListViewController_setEditing_animated___block_invoke;
  v15[3] = &unk_2781D4D40;
  v15[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v15];
  [(PreviewTableViewController *)self->_tableViewController setEditing:v5 animated:v4];
  [(ReadingListViewController *)self _updateToolbarItemsAnimated:v4];
  [(ReadingListViewController *)self _updateEditingButtonsEnabled];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      *v14 = 0;
      _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_DEFAULT, "End editing reading list items", v14, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained panelViewControllerDidEndEditing:self];
    }
  }

  else
  {
    if (v13)
    {
      *v14 = 0;
      _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_DEFAULT, "Begin editing reading list items", v14, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained panelViewControllerDidBeginEditing:self];
    }
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)_updateToolbarItemsAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained panelViewController:self updateToolbarItemsAnimated:1];
  }

  else
  {
    v5 = [(ReadingListViewController *)self bookmarksPanelToolbarItems];
    [(ReadingListViewController *)self setToolbarItems:v5 animated:v3];
  }
}

- (id)_bookmarkAtIndexPath:(id)a3
{
  readingList = self->_readingList;
  v4 = [a3 row];

  return [(WebBookmarkList *)readingList bookmarkAtIndex:v4];
}

- (void)_networkReachabilityChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CEC510]];
  self->_networkIsReachable = [v5 BOOLValue];

  [(ReadingListViewController *)self _reloadReadingListAndTable];
}

- (void)_reloadReadingList
{
  v3 = [(WebBookmarkCollection *)self->_collection readingListWithUnreadOnly:!self->_showingAllBookmarks filteredUsingString:self->_userTypedFilter];
  readingList = self->_readingList;
  self->_readingList = v3;
}

- (void)_updateSearchBar
{
  v3 = [(WebBookmarkList *)self->_readingList bookmarkCount];
  searchBar = self->_searchBar;
  if (v3)
  {
    if (searchBar)
    {
      return;
    }

    p_tableView = &self->_tableView;
    if (!self->_tableView)
    {
      return;
    }

    goto LABEL_8;
  }

  v6 = [(UISearchBar *)searchBar text];
  v7 = [v6 length];

  v8 = self->_searchBar;
  if ((v7 != 0) != (v8 == 0))
  {
    return;
  }

  p_tableView = &self->_tableView;
  if (!self->_tableView)
  {
    return;
  }

  if (v7)
  {
LABEL_8:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      self->_shouldUseSearchControllerInNavigationBar = 1;
LABEL_10:
      v9 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
      [(UISearchBar *)v9 setObscuresBackgroundDuringPresentation:0];
      v10 = [(UISearchBar *)v9 searchBar];
      v11 = self->_searchBar;
      self->_searchBar = v10;

      v12 = [(ReadingListViewController *)self navigationItem];
      [v12 setPreferredSearchBarPlacement:2];

      v13 = [(ReadingListViewController *)self navigationItem];
      [v13 setSearchController:v9];

LABEL_17:
      [(UISearchBar *)self->_searchBar setDelegate:self];
      v16 = MEMORY[0x277CCACA8];
      v17 = _WBSLocalizedString();
      v18 = WebBookmarksReadingListFolderTitle();
      v19 = [v16 localizedStringWithFormat:v17, v18];
      [(UISearchBar *)self->_searchBar setPlaceholder:v19];

      return;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [WeakRetained panelViewControllerShouldUseSearchControllerInNavigationItem:self];
      self->_shouldUseSearchControllerInNavigationBar = v14;
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else if (self->_shouldUseSearchControllerInNavigationBar)
    {
      goto LABEL_10;
    }

    v15 = [MEMORY[0x277D759E8] sf_installSearchBarInTableView:*p_tableView includeSeparator:0];
    v9 = self->_searchBar;
    self->_searchBar = v15;
    goto LABEL_17;
  }

  self->_searchBar = 0;

  [(UITableView *)*p_tableView setTableHeaderView:0];
  v20 = *p_tableView;

  [(UITableView *)v20 _setAllowedNavigationOverlapAmount:0.0];
}

- (void)_reloadReadingListAndTable
{
  if (([(ReadingListViewController *)self isEditing]& 1) == 0)
  {
    [(NSMutableSet *)self->_visibleBookmarkIDs removeAllObjects];
    [(ReadingListViewController *)self _reloadReadingList];
    [(ReadingListViewController *)self _updateSearchBar];
    if ([(WebBookmarkList *)self->_readingList bookmarkCount])
    {
      [(ReadingListViewController *)self _clearExplanationView];
    }

    tableView = self->_tableView;

    [(UITableView *)tableView reloadData];
  }
}

- (void)_didChangeUnreadFilter
{
  v12 = *MEMORY[0x277D85DE8];
  self->_showingAllBookmarks ^= 1u;
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_showingAllBookmarks)
    {
      v4 = @"all";
    }

    else
    {
      v4 = @"unread";
    }

    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Toggle show unread reading list items: (showing %{public}@)", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readingListViewController:self updateUnreadFilterShowingAllBookmarks:self->_showingAllBookmarks];
  }

  v6 = [(ReadingListViewController *)self _unreadFilterButtonTitle];
  v7 = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
  [v7 setTitle:v6];

  v8 = [(ReadingListViewController *)self _unreadFilterButtonIdentifier];
  v9 = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
  [v9 setAccessibilityIdentifier:v8];

  [(ReadingListViewController *)self _reloadReadingListAndTable];
  [(ReadingListViewController *)self _updateToolbarItemsAnimated:1];
}

- (id)_unreadFilterBarButtonItem
{
  if (!self->_cachedUnreadFilterBarButtonButton)
  {
    v3 = objc_alloc(MEMORY[0x277D751E0]);
    v4 = [(ReadingListViewController *)self _unreadFilterButtonTitle];
    v5 = [v3 initWithTitle:v4 style:0 target:self action:sel__didChangeUnreadFilter];
    cachedUnreadFilterBarButtonButton = self->_cachedUnreadFilterBarButtonButton;
    self->_cachedUnreadFilterBarButtonButton = v5;
  }

  v7 = [(ReadingListViewController *)self _unreadFilterButtonIdentifier];
  [(UIBarButtonItem *)self->_cachedUnreadFilterBarButtonButton setAccessibilityIdentifier:v7];

  v8 = self->_cachedUnreadFilterBarButtonButton;

  return v8;
}

- (NSArray)bookmarksPanelToolbarItems
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  if ([(WebBookmarkList *)self->_readingList bookmarkCount])
  {
    if (!self->_isUsingSwipeAction)
    {
      v8 = [(ReadingListViewController *)self _editButtonIdentifier];
      v9 = [(ReadingListViewController *)self editButtonItem];
      [v9 setAccessibilityIdentifier:v8];

      v10 = [(ReadingListViewController *)self isEditing];
      if (v10)
      {
        v4 = [(ReadingListViewController *)self _deleteBarButtonItem];
        [v4 setAccessibilityIdentifier:@"ReadingListBarDeleteButton"];
      }

      else
      {
        v4 = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
      }

      v11 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      if (([v11 safari_shouldAutomaticallyDownloadReadingListItems] & 1) != 0 || v10 != 1)
      {
        v12 = v3;
      }

      else
      {
        v12 = [(ReadingListViewController *)self _saveOfflineBarButtonItem];
      }

      v13 = v12;

      v14 = [(ReadingListViewController *)self editButtonItem:v4];
      v16[4] = v14;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];

      goto LABEL_14;
    }

    v17[0] = v3;
    v4 = [(ReadingListViewController *)self editButtonItem];
    v17[1] = v4;
    v5 = MEMORY[0x277CBEA60];
    v6 = v17;
  }

  else
  {
    v4 = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
    v18[0] = v4;
    v18[1] = v3;
    v5 = MEMORY[0x277CBEA60];
    v6 = v18;
  }

  v7 = [v5 arrayWithObjects:v6 count:2];
LABEL_14:

  return v7;
}

- (id)_deleteBarButtonItem
{
  cachedDeleteBarButtonItem = self->_cachedDeleteBarButtonItem;
  if (!cachedDeleteBarButtonItem)
  {
    v4 = _WBSLocalizedString();
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v4 style:0 target:self action:sel__deleteBookmarks_];
    v6 = self->_cachedDeleteBarButtonItem;
    self->_cachedDeleteBarButtonItem = v5;

    cachedDeleteBarButtonItem = self->_cachedDeleteBarButtonItem;
  }

  return cachedDeleteBarButtonItem;
}

- (void)_deleteBookmarks:(id)a3
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Tap delete selected reading list items", buf, 2u);
  }

  v5 = [(UITableView *)self->_tableView indexPathsForSelectedRows];
  v6 = +[FeatureManager sharedFeatureManager];
  v7 = [v6 isInMemoryBookmarkChangeTrackingAvailable];

  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__ReadingListViewController__deleteBookmarks___block_invoke;
    aBlock[3] = &unk_2781D85C0;
    aBlock[4] = self;
    v17 = v5;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __46__ReadingListViewController__deleteBookmarks___block_invoke_2;
  v13 = &unk_2781D85C0;
  v14 = self;
  v15 = v5;
  v9 = v5;
  [(ReadingListViewController *)self _readingListItemsAtIndexPaths:v9 lockAndPerformUpdate:&v10 performBlockIfLockFailed:v8];
  [(ReadingListViewController *)self setEditing:0, v10, v11, v12, v13, v14];
}

uint64_t __46__ReadingListViewController__deleteBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 1016);
  v5 = *(v3 + 1032);
  v6 = a2;
  [v4 deleteBookmarksInMemory:v6 inFolder:{objc_msgSend(v5, "folderID")}];

  v7 = [MEMORY[0x277D499B8] sharedLogger];
  [v7 didDeleteNumberOfBookmarksInMemory:{objc_msgSend(*(a1 + 40), "count")}];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v8 _updateTableViewByRemovingReadingListItemsAtIndexPaths:v9];
}

uint64_t __46__ReadingListViewController__deleteBookmarks___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 32) + 1016) deleteBookmarks:a2 postChangeNotification:0];
  if (result)
  {
    [*(a1 + 32) _scheduleDelayedChangeNotification];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _updateTableViewByRemovingReadingListItemsAtIndexPaths:v5];
  }

  return result;
}

- (id)_saveOfflineBarButtonItem
{
  cachedSaveOfflineBarButtonItem = self->_cachedSaveOfflineBarButtonItem;
  if (!cachedSaveOfflineBarButtonItem)
  {
    v4 = _WBSLocalizedString();
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v4 style:0 target:self action:sel__saveForOffline_];
    v6 = self->_cachedSaveOfflineBarButtonItem;
    self->_cachedSaveOfflineBarButtonItem = v5;

    cachedSaveOfflineBarButtonItem = self->_cachedSaveOfflineBarButtonItem;
  }

  return cachedSaveOfflineBarButtonItem;
}

- (void)_saveForOffline:(id)a3
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Tap save archives for selected reading list items", buf, 2u);
  }

  v5 = [(UITableView *)self->_tableView indexPathsForSelectedRows];
  v6[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ReadingListViewController__saveForOffline___block_invoke;
  v7[3] = &unk_2781D4FA0;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ReadingListViewController__saveForOffline___block_invoke_3;
  v6[3] = &unk_2781D4FA0;
  [(ReadingListViewController *)self _readingListItemsAtIndexPaths:v5 lockAndPerformUpdate:v7 performBlockIfLockFailed:v6];
  [(ReadingListViewController *)self setEditing:0];
}

void __45__ReadingListViewController__saveForOffline___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_filterObjectsUsingBlock:&__block_literal_global_29];
  [*(*(a1 + 32) + 1016) saveArchivesForReadingListBookmarks:v3];
}

void __45__ReadingListViewController__saveForOffline___block_invoke_3(uint64_t a1)
{
  [MEMORY[0x277D28BE0] showLockedDatabaseAlertForAction:0 fromViewController:*(a1 + 32)];
  v1 = [MEMORY[0x277D499B8] sharedLogger];
  [v1 didPreventBookmarkActionWithBookmarkType:2 actionType:2];
}

- (void)_updateEditingButtonsEnabled
{
  v3 = [(ReadingListViewController *)self _deleteBarButtonItem];
  v4 = [(ReadingListViewController *)self _saveOfflineBarButtonItem];
  if (([(ReadingListViewController *)self isEditing]& 1) != 0)
  {
    v5 = [(UITableView *)self->_tableView indexPathsForSelectedRows];
    [v3 setEnabled:{objc_msgSend(v5, "count") != 0}];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__ReadingListViewController__updateEditingButtonsEnabled__block_invoke;
    v7[3] = &unk_2781D8608;
    v7[4] = self;
    v6 = [v5 safari_firstObjectPassingTest:v7];
    [v4 setEnabled:v6 != 0];
  }

  else
  {
    [v3 setEnabled:0];
    [v4 setEnabled:0];
  }
}

uint64_t __57__ReadingListViewController__updateEditingButtonsEnabled__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _bookmarkAtIndexPath:a2];
  v3 = [v2 shouldArchive];

  return v3 ^ 1u;
}

- (id)_unreadFilterButtonTitle
{
  v3 = _WBSLocalizedString();

  return v3;
}

- (id)_unreadFilterButtonIdentifier
{
  if (self->_showingAllBookmarks)
  {
    return @"ReadingListShowUnreadButton";
  }

  else
  {
    return @"ReadingListShowAllButton";
  }
}

- (id)_editButtonIdentifier
{
  if ([(ReadingListViewController *)self isEditing])
  {
    v2 = @"ReadingListDoneButton";
  }

  else
  {
    v2 = @"ReadingListEditButton";
  }

  return v2;
}

- (void)_scheduleDelayedChangeNotification
{
  if ([(NSTimer *)self->_deletionNotificationTimer isValid])
  {
    [(NSTimer *)self->_deletionNotificationTimer invalidate];
  }

  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__postChangeNotification selector:0 userInfo:0 repeats:10.0];
  deletionNotificationTimer = self->_deletionNotificationTimer;
  self->_deletionNotificationTimer = v3;
}

- (void)_postChangeNotification
{
  [(NSTimer *)self->_deletionNotificationTimer invalidate];
  deletionNotificationTimer = self->_deletionNotificationTimer;
  self->_deletionNotificationTimer = 0;

  collection = self->_collection;

  [(WebBookmarkCollection *)collection _postBookmarksChangedSyncNotification];
}

- (void)_connectSafariFetcherServerProxy
{
  v3 = +[FeatureManager sharedFeatureManager];
  v4 = [v3 isOfflineReadingListAvailable];

  if (v4 && !self->_safariFetcherServerProxy)
  {
    v5 = objc_alloc_init(MEMORY[0x277D7B518]);
    safariFetcherServerProxy = self->_safariFetcherServerProxy;
    self->_safariFetcherServerProxy = v5;

    v7 = self->_safariFetcherServerProxy;

    [(SafariFetcherServerProxy *)v7 setDelegate:self];
  }
}

- (void)_disconnectSafariFetcherServerProxy
{
  safariFetcherServerProxy = self->_safariFetcherServerProxy;
  if (safariFetcherServerProxy)
  {
    [(SafariFetcherServerProxy *)safariFetcherServerProxy setDelegate:0];
    v4 = self->_safariFetcherServerProxy;
    self->_safariFetcherServerProxy = 0;
  }
}

- (void)_webBookmarksDidReload:(id)a3
{
  v4 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  collection = self->_collection;
  self->_collection = v4;

  [(ReadingListViewController *)self _reloadReadingListAndTable];
}

- (void)_readingListBookmarkMetadataDidUpdate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ReadingListViewController *)self _updateTableViewByComputingDifference];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"BookmarkWithUpdatedMetadataKey"];

  if (v6)
  {
    visibleBookmarkIDs = self->_visibleBookmarkIDs;
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "identifier")}];
    LODWORD(visibleBookmarkIDs) = [(NSMutableSet *)visibleBookmarkIDs containsObject:v8];

    if (visibleBookmarkIDs)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [(UITableView *)self->_tableView visibleCells];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            v15 = [v14 bookmarkID];
            if (v15 == [v6 identifier])
            {
              [v14 setBookmark:v6];
              [(ReadingListViewController *)self _setIconForBookmark:v6 cell:v14 synchronously:self->_loadIconsSynchronously];

              goto LABEL_13;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }
}

- (id)_currentReadingListBookmark
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained readingListViewControllerCurrentReadingListItem:self];
  v5 = [v4 readingListBookmark];

  return v5;
}

- (void)updateAndScrollToCurrentSelectedItemIfNeeded:(BOOL)a3
{
  v3 = a3;
  v20 = [(UITableView *)self->_tableView indexPathForSelectedRow];
  if (([(ReadingListViewController *)self isEditing]& 1) == 0)
  {
    [(ReadingListViewController *)self _restoreCellSeparator];
    v5 = [(UITableView *)self->_tableView indexPathsForVisibleRows];
    v6 = [(ReadingListViewController *)self _currentReadingListBookmark];
    if (v6)
    {
      v7 = [(WebBookmarkList *)self->_readingList bookmarkArray];
      v8 = [v7 indexOfObject:v6];

      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:0];
        v10 = [v5 firstObject];
        v11 = [v5 lastObject];
        v12 = [v9 row];
        if (v12 <= [v10 row])
        {
          tableView = self->_tableView;
          v16 = v3;
          v15 = v9;
        }

        else
        {
          v13 = [v9 row];
          if (v13 >= [v11 row])
          {
            v17 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v9 inSection:{"row") - 1, 0}];
            v18 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v17];
            [v18 setSeparatorStyle:0];

            if (v3)
            {
              v19 = 3;
            }

            else
            {
              v19 = 0;
            }

            [(UITableView *)self->_tableView selectRowAtIndexPath:v9 animated:1 scrollPosition:v19];

            goto LABEL_14;
          }

          tableView = self->_tableView;
          v15 = v9;
          v16 = 0;
        }

        [(UITableView *)tableView selectRowAtIndexPath:v15 animated:1 scrollPosition:v16];
LABEL_14:
      }
    }

    else
    {
      [(UITableView *)self->_tableView deselectRowAtIndexPath:v20 animated:0];
    }
  }
}

- (void)_restoreCellSeparator
{
  v6 = [(UITableView *)self->_tableView indexPathForSelectedRow];
  if ([v6 row])
  {
    v3 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v6 inSection:{"row") - 1, 0}];
    v4 = [(UITableView *)self->_tableView separatorStyle];
    v5 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v3];
    [v5 setSeparatorStyle:v4];
  }
}

- (id)_URLForRowAtIndexPath:(id)a3
{
  v3 = [(ReadingListViewController *)self _bookmarkAtIndexPath:a3];
  v4 = [MEMORY[0x277D28F40] builder];
  v5 = [v4 navigationIntentWithBookmark:v3];
  v6 = [v5 URL];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ReadingListViewController *)self _bookmarkAtIndexPath:v6];
  v9 = [v7 dequeueReusableCellWithIdentifier:@"ReadingListTableViewCellWithImage" forIndexPath:v6];

  [v9 setBookmark:v8];
  v10 = [v8 UUID];
  [v9 setBookmark:v8 isArchiving:{objc_msgSend(v10, "isEqualToString:", self->_archivingBookmarkUUID)}];

  [v9 safari_annotateWithReadingListItem:v8];
  if ([(ReadingListViewController *)self _shouldUseTranslucentAppearance])
  {
    [v9 setUsesVibrantEffect:1];
  }

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (self->_shouldUseSearchControllerInNavigationBar)
  {
    v6 = 0;
  }

  else
  {
    v6 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:{@"ReadingListSpacingHeaderReuseIdentifier", a4, v4}];
    if (!v6)
    {
      v6 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"ReadingListSpacingHeaderReuseIdentifier"];
    }
  }

  return v6;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = 12.0;
  if (self->_shouldUseSearchControllerInNavigationBar)
  {
    return 0.0;
  }

  return result;
}

- (id)_iconForUUID:(id)a3 iconData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(ReadingListLeadImageCache *)self->_imageCache loadImageSynchronouslyForIconUUID:v6];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v8 = [MEMORY[0x277D755B8] imageWithData:v7];
  }

LABEL_7:

  return v8;
}

- (void)_setIconForBookmark:(id)a3 cell:(id)a4 synchronously:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 bookmarkID];
  if (v10 == [v8 identifier])
  {
    v11 = [v9 imageView];
    v12 = [v11 image];

    if (!v12)
    {
      v13 = [v8 readingListIconUUID];
      v14 = [v8 iconData];
      v15 = [v8 identifier];
      if (a5)
      {
        v16 = [(ReadingListViewController *)self _iconForUUID:v13 iconData:v14];
        if (v16)
        {
          [v9 setReadingListIcon:v16];
        }
      }

      else
      {
        v17 = v15;
        v18 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __68__ReadingListViewController__setIconForBookmark_cell_synchronously___block_invoke;
        block[3] = &unk_2781D8658;
        block[4] = self;
        v20 = v13;
        v21 = v14;
        v22 = v9;
        v23 = v17;
        dispatch_async(v18, block);
      }
    }
  }
}

void __68__ReadingListViewController__setIconForBookmark_cell_synchronously___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _iconForUUID:*(a1 + 40) iconData:*(a1 + 48)];
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__ReadingListViewController__setIconForBookmark_cell_synchronously___block_invoke_2;
    block[3] = &unk_2781D8630;
    v4 = *(a1 + 56);
    v6 = *(a1 + 64);
    v5 = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __68__ReadingListViewController__setIconForBookmark_cell_synchronously___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) bookmarkID];
  if (result == *(a1 + 48))
  {
    [*(a1 + 32) setReadingListIcon:*(a1 + 40)];
    v3 = *(a1 + 32);

    return [v3 setNeedsDisplay];
  }

  return result;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ReadingListViewController *)self _bookmarkAtIndexPath:v9];
  visibleBookmarkIDs = self->_visibleBookmarkIDs;
  v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "identifier")}];
  [(NSMutableSet *)visibleBookmarkIDs addObject:v12];

  [(ReadingListViewController *)self _fetchMetadataIfNeededForBookmark:v10];
  [(ReadingListViewController *)self _setIconForBookmark:v10 cell:v8 synchronously:self->_loadIconsSynchronously];
  v13 = [(ReadingListViewController *)self _currentReadingListBookmark];
  if ([v13 isEqualToBookmark:v10])
  {
    if (([v8 isSelected] & 1) == 0 && (-[ReadingListViewController isEditing](self, "isEditing") & 1) == 0)
    {
      [v17 selectRowAtIndexPath:v9 animated:1 scrollPosition:0];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v9 inSection:{"row") + 1, 0}];
    v15 = [v14 row];
    if (v15 < [(WebBookmarkList *)self->_readingList bookmarkCount])
    {
      v16 = [(ReadingListViewController *)self _bookmarkAtIndexPath:v14];
      if ([v13 isEqualToBookmark:v16])
      {
        [v8 setSeparatorStyle:0];
      }
    }
  }
}

- (void)_fetchMetadataIfNeededForBookmark:(id)a3
{
  v6 = a3;
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = [v3 safari_shouldAutomaticallyDownloadReadingListItems];

  if ((v4 & 1) == 0)
  {
    if ([ReadingListMetadataFetcher shouldFetchMetadataForBookmark:v6])
    {
      v5 = +[ReadingListMetadataFetcher sharedMetadataFetcher];
      [v5 fetchMetadataForReadingListBookmark:v6 withProvider:0];
    }

    else
    {
      if (![ReadingListMetadataFetcher shouldFetchThumbnailForBookmark:v6])
      {
        goto LABEL_7;
      }

      v5 = +[ReadingListMetadataFetcher sharedMetadataFetcher];
      [v5 fetchThumbnailForReadingListBookmark:v6 withProvider:0];
    }
  }

LABEL_7:
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  visibleBookmarkIDs = self->_visibleBookmarkIDs;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a4, "bookmarkID", a3)}];
  [(NSMutableSet *)visibleBookmarkIDs removeObject:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ReadingListViewController *)self isEditing];
  v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = v9;
      v17 = 134218240;
      v18 = [v7 row];
      v19 = 2048;
      v20 = [v6 numberOfRowsInSection:{objc_msgSend(v7, "section")}];
      _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_DEFAULT, "Tap to select reading list item at row %ld, number of rows: %ld", &v17, 0x16u);
    }

    [(ReadingListViewController *)self _updateEditingButtonsEnabled];
  }

  else
  {
    if (v10)
    {
      v12 = v9;
      v17 = 134218240;
      v18 = [v7 row];
      v19 = 2048;
      v20 = [v6 numberOfRowsInSection:{objc_msgSend(v7, "section")}];
      _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_DEFAULT, "Tap reading list item at row %ld, number of rows: %ld", &v17, 0x16u);
    }

    v13 = [(ReadingListViewController *)self _bookmarkAtIndexPath:v7];
    v14 = [MEMORY[0x277D28F40] builder];
    v15 = [v14 navigationIntentWithBookmark:v13];

    [v15 setShouldDismissSidebarOnLoad:1];
    WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
    [WeakRetained dispatchNavigationIntent:v15];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(ReadingListViewController *)self isEditing])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = 134218240;
      v11 = [v7 row];
      v12 = 2048;
      v13 = [v6 numberOfRowsInSection:{objc_msgSend(v7, "section")}];
      _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Tap to deselect editing reading list item at row %ld, number of rows: %ld", &v10, 0x16u);
    }

    [(ReadingListViewController *)self _updateEditingButtonsEnabled];
  }
}

id __77__ReadingListViewController_tableView_trailingSwipeActionsForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6)
{
  v8 = a6;
  v9 = MEMORY[0x277D75AD0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__ReadingListViewController_tableView_trailingSwipeActionsForRowAtIndexPath___block_invoke_2;
  v13[3] = &unk_2781D86A0;
  v14 = v8;
  v10 = v8;
  v11 = [v9 swipeActionWithStyle:a5 title:a2 handler:v13];

  return v11;
}

id __76__ReadingListViewController_tableView_leadingSwipeActionsForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6)
{
  v8 = a6;
  v9 = MEMORY[0x277D75AD0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__ReadingListViewController_tableView_leadingSwipeActionsForRowAtIndexPath___block_invoke_2;
  v14[3] = &unk_2781D86A0;
  v15 = v8;
  v10 = v8;
  v11 = [v9 swipeActionWithStyle:a5 title:a2 handler:v14];
  v12 = [MEMORY[0x277D75348] sf_safariAccentColor];
  [v11 setColor:v12];

  return v11;
}

- (void)_readingListItemAtIndexPath:(id)a3 lockAndPerformUpdates:(id)a4 performBlockIfLockFailed:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = [(ReadingListViewController *)self _bookmarkAtIndexPath:a3];
  if ([MEMORY[0x277D7B5A8] isLockedSync])
  {
    v10 = v11[2];
LABEL_7:
    v10();
    goto LABEL_8;
  }

  if ([MEMORY[0x277D7B5A8] lockSync])
  {
    (v11[2])(v11, v9);
    [MEMORY[0x277D7B5A8] unlockSync];
    goto LABEL_8;
  }

  if (v8)
  {
    v10 = v8[2];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_readingListItemsAtIndexPaths:(id)a3 lockAndPerformUpdate:(id)a4 performBlockIfLockFailed:(id)a5
{
  v8 = a4;
  v9 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__ReadingListViewController__readingListItemsAtIndexPaths_lockAndPerformUpdate_performBlockIfLockFailed___block_invoke;
  v11[3] = &unk_2781D86C8;
  v11[4] = self;
  v10 = [a3 safari_mapObjectsUsingBlock:v11];
  if ([MEMORY[0x277D7B5A8] isLockedSync])
  {
    v8[2](v8, v10);
  }

  else if ([MEMORY[0x277D7B5A8] lockSync])
  {
    v8[2](v8, v10);
    [MEMORY[0x277D7B5A8] unlockSync];
  }

  else if (v9)
  {
    v9[2](v9, v10);
  }
}

- (void)_updateTableViewByComputingDifference
{
  v3 = self->_readingList;
  [(ReadingListViewController *)self _reloadReadingList];
  [(ReadingListViewController *)self _updateSearchBar];
  v4 = [(WebBookmarkList *)self->_readingList differenceFromList:v3 withOptions:3];
  if ([v4 hasChanges])
  {
    v5 = [(ReadingListViewController *)self tableView];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__ReadingListViewController__updateTableViewByComputingDifference__block_invoke_2;
    v8[3] = &unk_2781D7E28;
    v10 = self;
    v11 = &__block_literal_global_177;
    v9 = v4;
    [v5 performBatchUpdates:v8 completion:0];

    [(UIViewController *)self safari_saveTableViewScrollPosition];
    LODWORD(v5) = [(WebBookmarkList *)v3 bookmarkCount]== 0;
    if (((v5 ^ ([(WebBookmarkList *)self->_readingList bookmarkCount]!= 0)) & 1) == 0)
    {
      [(ReadingListViewController *)self _updateToolbarItemsAnimated:1];
    }

    v6 = [(WebBookmarkCollection *)self->_collection readingListWithUnreadOnly:0];
    v7 = [v6 bookmarkCount];

    if (v7)
    {
      [(ReadingListViewController *)self _clearExplanationView];
    }

    else
    {
      [(ReadingListViewController *)self _showExplanationView];
    }
  }
}

id __66__ReadingListViewController__updateTableViewByComputingDifference__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v2 inSection:{"index"), 0}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __66__ReadingListViewController__updateTableViewByComputingDifference__block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) insertions];
  v3 = [v2 safari_mapAndFilterObjectsUsingBlock:*(v1 + 48)];

  if ([v3 count])
  {
    v4 = [*(v1 + 40) tableView];
    v5 = v4;
    if (*(*(v1 + 40) + 1088))
    {
      v6 = 5;
    }

    else
    {
      v6 = 1;
    }

    [v4 insertRowsAtIndexPaths:v3 withRowAnimation:v6];

    v7 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    if ([*(*(v1 + 40) + 1168) numberOfSections] && objc_msgSend(*(*(v1 + 40) + 1168), "numberOfRowsInSection:", 0) && objc_msgSend(v3, "containsObject:", v7))
    {
      [*(*(v1 + 40) + 1168) scrollToRowAtIndexPath:v7 atScrollPosition:1 animated:1];
    }
  }

  v23 = v3;
  v8 = [*(v1 + 32) removals];
  v9 = [v8 safari_mapAndFilterObjectsUsingBlock:*(v1 + 48)];

  if ([v9 count])
  {
    [*(*(v1 + 40) + 1168) deleteRowsAtIndexPaths:v9 withRowAnimation:2];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [*(v1 + 32) insertions];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v15 associatedIndex];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v1;
          v18 = *(*(v1 + 40) + 1168);
          v19 = [MEMORY[0x277CCAA70] indexPathForRow:v16 inSection:0];
          v20 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v15 inSection:{"index"), 0}];
          v21 = v18;
          v1 = v17;
          [v21 moveRowAtIndexPath:v19 toIndexPath:v20];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }
}

- (void)_updateTableViewByRemovingReadingListItemAtIndexPath:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(ReadingListViewController *)self _updateTableViewByRemovingReadingListItemsAtIndexPaths:v6, v7, v8];
}

- (void)_readingListItemAtIndexPathDelete:(id)a3
{
  v4 = a3;
  v5 = +[FeatureManager sharedFeatureManager];
  v6 = [v5 isInMemoryBookmarkChangeTrackingAvailable];

  if (v6)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__ReadingListViewController__readingListItemAtIndexPathDelete___block_invoke;
    aBlock[3] = &unk_2781D8710;
    aBlock[4] = self;
    v12 = v4;
    v7 = _Block_copy(aBlock);
  }

  else
  {
    v7 = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__ReadingListViewController__readingListItemAtIndexPathDelete___block_invoke_2;
  v9[3] = &unk_2781D8710;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(ReadingListViewController *)self _readingListItemAtIndexPath:v8 lockAndPerformUpdates:v9 performBlockIfLockFailed:v7];
}

uint64_t __63__ReadingListViewController__readingListItemAtIndexPathDelete___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 1016) deleteBookmarkInMemory:a2];
  v3 = [MEMORY[0x277D499B8] sharedLogger];
  [v3 didDeleteBookmarkInMemory];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _updateTableViewByRemovingReadingListItemAtIndexPath:v5];
}

void __63__ReadingListViewController__readingListItemAtIndexPathDelete___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 1016) deleteBookmark:v3 postChangeNotification:0])
  {
    [*(a1 + 32) _scheduleDelayedChangeNotification];
    [*(a1 + 32) _updateTableViewByRemovingReadingListItemAtIndexPath:*(a1 + 40)];
    if (([v3 isMarkedAsRead] & 1) == 0)
    {
      v4 = +[Application sharedApplication];
      [v4 setReadingListWidgetNeedsReload];

      v5 = WBS_LOG_CHANNEL_PREFIXWidgets();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Requested widget update because of item deletion", v6, 2u);
      }
    }
  }
}

- (id)_createActions:(id)a3 forRowAtIndexPath:(id)a4 allowingNewlineInTitles:(BOOL)a5 withBlock:(id)a6
{
  v10 = a4;
  v11 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__ReadingListViewController__createActions_forRowAtIndexPath_allowingNewlineInTitles_withBlock___block_invoke;
  v16[3] = &unk_2781D8738;
  v16[4] = self;
  v17 = v10;
  v19 = a5;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  v14 = [a3 safari_mapAndFilterObjectsUsingBlock:v16];

  return v14;
}

uint64_t __96__ReadingListViewController__createActions_forRowAtIndexPath_allowingNewlineInTitles_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 integerValue];
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return [v3 _createAction:v4 forRowAtIndexPath:v6 allowingNewlineInTitle:v5 withBlock:v7];
}

- (id)_createAction:(int64_t)a3 forRowAtIndexPath:(id)a4 allowingNewlineInTitle:(BOOL)a5 withBlock:(id)a6
{
  v67[2] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a6;
  objc_initWeak(&location, self);
  if (a3 == 1)
  {
    v11 = _WBSLocalizedString();
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke;
    v63[3] = &unk_2781D4F30;
    objc_copyWeak(&v65, &location);
    v64 = v9;
    v13 = v10[2](v10, v11, @"DeleteReadingListItem", v12, 1, v63);

    objc_destroyWeak(&v65);
    goto LABEL_20;
  }

  v14 = [(ReadingListViewController *)self _bookmarkAtIndexPath:v9];
  v11 = v14;
  if (a3 == 4)
  {
    v29 = [v14 dateLastViewed];

    v30 = _WBSLocalizedString();
    if (v29)
    {
      v31 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle"];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_3_229;
      v54[3] = &unk_2781D4F30;
      objc_copyWeak(&v56, &location);
      v55 = v9;
      v13 = v10[2](v10, v30, @"MarkUnreadReadingListItem", v31, 0, v54);

      objc_destroyWeak(&v56);
    }

    else
    {
      v34 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle"];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_248;
      v51[3] = &unk_2781D4F30;
      objc_copyWeak(&v53, &location);
      v52 = v9;
      v13 = v10[2](v10, v30, @"MarkReadReadingListItem", v34, 0, v51);

      objc_destroyWeak(&v53);
    }
  }

  else
  {
    if (a3 != 2 || ([MEMORY[0x277CBEBD0] safari_browserDefaults], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "safari_shouldAutomaticallyDownloadReadingListItems"), v15, (v16 & 1) != 0))
    {
LABEL_6:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_249;
      aBlock[3] = &unk_2781D8788;
      objc_copyWeak(&v50, &location);
      v48 = v9;
      v11 = v11;
      v49 = v11;
      v17 = _Block_copy(aBlock);
      if (a3 == 16)
      {
        v18 = _WBSLocalizedString();
        v28 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_4;
        v41[3] = &unk_2781D4D40;
        v42 = v11;
        v13 = v10[2](v10, v18, @"CopyReadingListItem", v28, 0, v41);
      }

      else
      {
        if (a3 != 8)
        {
          v13 = 0;
          goto LABEL_14;
        }

        v18 = [MEMORY[0x277D750C8] _sf_openInNewTabActionWithHandler:&__block_literal_global_254];
        v19 = [v18 title];
        v20 = [v18 image];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_2_258;
        v45[3] = &unk_2781D4D90;
        v21 = v17;
        v46 = v21;
        v40 = v10[2](v10, v19, @"OpenInNewTabReadingListItem", v20, 0, v45);

        v22 = [v11 address];
        v23 = [MEMORY[0x277CBEBC0] URLWithString:v22];
        WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_3_260;
        v43[3] = &unk_2781D87B0;
        v44 = v21;
        v25 = [WeakRetained openInTabGroupMenuWithNewTabGroupName:0 URL:v23 descendantCount:0 handler:v43];

        v26 = MEMORY[0x277D75710];
        v67[0] = v40;
        v67[1] = v25;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
        v13 = [v26 menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v27];

        v28 = v46;
      }

LABEL_14:
      objc_destroyWeak(&v50);
      goto LABEL_20;
    }

    if ([v11 shouldArchive])
    {
      v35 = _WBSLocalizedString();
      v36 = [MEMORY[0x277D755B8] systemImageNamed:@"icloud.slash"];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_198;
      v60[3] = &unk_2781D4F30;
      objc_copyWeak(&v62, &location);
      v61 = v9;
      v13 = v10[2](v10, v35, @"DontSaveReadingListItem", v36, 0, v60);

      objc_destroyWeak(&v62);
    }

    else
    {
      v32 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
      v33 = [v32 isNetworkReachable];

      if (!v33)
      {
        goto LABEL_6;
      }

      v37 = _WBSLocalizedString();
      v38 = [MEMORY[0x277D755B8] systemImageNamed:@"icloud.and.arrow.down"];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_3;
      v57[3] = &unk_2781D4F30;
      objc_copyWeak(&v59, &location);
      v58 = v9;
      v13 = v10[2](v10, v37, @"SaveOfflineReadingListItem", v38, 0, v57);

      objc_destroyWeak(&v59);
    }
  }

LABEL_20:

  objc_destroyWeak(&location);

  return v13;
}

void __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 row];
      v7 = [WeakRetained tableView];
      v8 = [v7 numberOfRowsInSection:{objc_msgSend(*(a1 + 32), "section")}];
      v9 = 134218240;
      v10 = v6;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Tap delete reading list item at row %ld, number of rows: %ld", &v9, 0x16u);
    }

    [WeakRetained _readingListItemAtIndexPathDelete:*(a1 + 32)];
  }
}

void __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_198(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 row];
      v7 = [WeakRetained tableView];
      v8 = [v7 numberOfRowsInSection:{objc_msgSend(*(a1 + 32), "section")}];
      *buf = 134218240;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Tap delete archive of reading list item at row %ld, number of rows: %ld", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10[4] = WeakRetained;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_199;
    v11[3] = &unk_2781D8760;
    v11[4] = WeakRetained;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_2;
    v10[3] = &unk_2781D8760;
    [WeakRetained _readingListItemAtIndexPath:v9 lockAndPerformUpdates:v11 performBlockIfLockFailed:v10];
  }
}

uint64_t __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_199(uint64_t a1, void *a2)
{
  [*(*(a1 + 32) + 1016) deleteArchiveForReadingListBookmarkWithID:{objc_msgSend(a2, "identifier")}];
  v3 = *(a1 + 32);

  return [v3 _reloadReadingListAndTable];
}

void __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x277D28BE0] showLockedDatabaseAlertForAction:0 fromViewController:*(a1 + 32)];
  v1 = [MEMORY[0x277D499B8] sharedLogger];
  [v1 didPreventBookmarkActionWithBookmarkType:2 actionType:2];
}

void __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 row];
      v7 = [WeakRetained tableView];
      v8 = [v7 numberOfRowsInSection:{objc_msgSend(*(a1 + 32), "section")}];
      *buf = 134218240;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Tap save archive of reading list item at row %ld, number of rows: %ld", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10[4] = WeakRetained;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_209;
    v11[3] = &unk_2781D8760;
    v11[4] = WeakRetained;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_2_210;
    v10[3] = &unk_2781D8760;
    [WeakRetained _readingListItemAtIndexPath:v9 lockAndPerformUpdates:v11 performBlockIfLockFailed:v10];
  }
}

uint64_t __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_209(uint64_t a1, void *a2)
{
  [*(*(a1 + 32) + 1016) saveArchiveForReadingListBookmarkWithID:{objc_msgSend(a2, "identifier")}];
  v3 = *(a1 + 32);

  return [v3 _reloadReadingListAndTable];
}

void __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_2_210(uint64_t a1)
{
  [MEMORY[0x277D28BE0] showLockedDatabaseAlertForAction:0 fromViewController:*(a1 + 32)];
  v1 = [MEMORY[0x277D499B8] sharedLogger];
  [v1 didPreventBookmarkActionWithBookmarkType:2 actionType:2];
}

void __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_3_229(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 row];
      v7 = [WeakRetained tableView];
      v8 = [v7 numberOfRowsInSection:{objc_msgSend(*(a1 + 32), "section")}];
      v10 = 134218240;
      v11 = v6;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Tap mark unread on reading list item at row %ld, number of rows: %ld", &v10, 0x16u);
    }

    [WeakRetained _readingListItemAtIndexPath:*(a1 + 32) setUnread:1];
    v9 = [MEMORY[0x277D499B8] sharedLogger];
    [v9 didManuallyMarkReadingListItemAsRead:0];
  }
}

void __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_248(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 row];
      v7 = [WeakRetained tableView];
      v8 = [v7 numberOfRowsInSection:{objc_msgSend(*(a1 + 32), "section")}];
      v10 = 134218240;
      v11 = v6;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Tap mark read on reading list item at row %ld, number of rows: %ld", &v10, 0x16u);
    }

    [WeakRetained _readingListItemAtIndexPath:*(a1 + 32) setUnread:0];
    v9 = [MEMORY[0x277D499B8] sharedLogger];
    [v9 didManuallyMarkReadingListItemAsRead:1];
  }
}

void __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_249(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 row];
      v9 = [WeakRetained tableView];
      v10 = [v9 numberOfRowsInSection:{objc_msgSend(*(a1 + 32), "section")}];
      v15 = 134218240;
      v16 = v8;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_DEFAULT, "Tap open in new tab on reading list item at row %ld, number of rows: %ld", &v15, 0x16u);
    }

    v11 = [MEMORY[0x277D28F40] builder];
    [v11 setPrefersOpenInNewTab:1];
    [v11 setPreferredTabOrder:a2];
    v12 = [v11 navigationIntentWithBookmark:*(a1 + 40)];
    v13 = objc_loadWeakRetained(WeakRetained + 144);
    [v13 dispatchNavigationIntent:v12];

    if ([v12 shouldOrderToForeground])
    {
      v14 = objc_loadWeakRetained(WeakRetained + 145);
      [v14 removeSingleBlankTabFromActiveTabGroup];
    }
  }
}

void __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_4(uint64_t a1)
{
  v4 = [*(a1 + 32) address];
  v1 = [MEMORY[0x277CBEBC0] URLWithString:?];
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  v3 = v2;
  if (v1)
  {
    [v2 setURL:v1];
  }

  else
  {
    [v2 setString:v4];
  }
}

- (void)_readingListItemAtIndexPath:(id)a3 setUnread:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(ReadingListViewController *)self _bookmarkAtIndexPath:?];
  v7 = [v6 dateLastViewed];

  if ((v7 != 0) != v4)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained readingListViewController:self setBookmark:v6 asRead:0];

LABEL_5:
    [(UITableView *)self->_tableView setEditing:0 animated:1];
    goto LABEL_6;
  }

  showingAllBookmarks = self->_showingAllBookmarks;
  v10 = objc_loadWeakRetained(&self->_delegate);
  [v10 readingListViewController:self setBookmark:v6 asRead:1];

  if (showingAllBookmarks)
  {
    goto LABEL_5;
  }

  [(ReadingListViewController *)self _updateTableViewByRemovingReadingListItemAtIndexPath:v11];
LABEL_6:
}

- (void)bookmarksServerProxyDidFinishFetching:(id)a3
{
  if (self->_archivingBookmarkUUID)
  {
    [(ReadingListViewController *)self bookmarksServerProxy:self->_safariFetcherServerProxy didStopFetchingReadingListItem:?];
  }

  [(ReadingListViewController *)self _disconnectSafariFetcherServerProxy];
}

- (void)bookmarksServerProxyConnectionInvalidated:(id)a3
{
  if (self->_safariFetcherServerProxy == a3)
  {
    [(ReadingListViewController *)self _disconnectSafariFetcherServerProxy];

    [(ReadingListViewController *)self _connectSafariFetcherServerProxy];
  }
}

- (void)bookmarksServerProxy:(id)a3 didStartFetchingReadingListItem:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7 && self->_safariFetcherServerProxy == v6 && ![(NSString *)self->_archivingBookmarkUUID isEqualToString:v7])
  {
    if (self->_archivingBookmarkUUID)
    {
      [(ReadingListViewController *)self bookmarksServerProxy:self->_safariFetcherServerProxy didStopFetchingReadingListItem:?];
    }

    v8 = [(WebBookmarkCollection *)self->_collection bookmarkWithUUID:v7];
    if (v8)
    {
      v20 = v6;
      objc_storeStrong(&self->_archivingBookmarkUUID, a4);
      [(UITableView *)self->_tableView indexPathsForVisibleRows];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v24 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        v19 = v8;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            v15 = [(ReadingListViewController *)self _bookmarkAtIndexPath:v14];
            v16 = [v15 UUID];
            v17 = [v16 isEqualToString:v7];

            if (v17)
            {
              v18 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v14];
              v8 = v19;
              [v18 setBookmark:v19 isArchiving:1];

              goto LABEL_17;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
          v8 = v19;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      v6 = v20;
    }
  }
}

- (void)bookmarksServerProxy:(id)a3 didStopFetchingReadingListItem:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_safariFetcherServerProxy == v6 && self->_archivingBookmarkUUID)
  {
    v8 = [(WebBookmarkCollection *)self->_collection bookmarkWithUUID:?];
    if (v8)
    {
      v20 = v7;
      [(UITableView *)self->_tableView indexPathsForVisibleRows];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = v25 = 0u;
      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v23;
        v19 = v8;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v22 + 1) + 8 * i);
            v14 = [(ReadingListViewController *)self _bookmarkAtIndexPath:v13];
            v15 = [v14 UUID];
            v16 = [v15 isEqualToString:self->_archivingBookmarkUUID];

            if (v16)
            {
              v17 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v13];
              v8 = v19;
              [v17 setBookmark:v19 isArchiving:0];

              goto LABEL_14;
            }
          }

          v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
          v8 = v19;
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      archivingBookmarkUUID = self->_archivingBookmarkUUID;
      self->_archivingBookmarkUUID = 0;

      [(ReadingListViewController *)self _reloadReadingListAndTable];
      v7 = v20;
    }
  }
}

- (id)previewTableViewController:(id)a3 menuForRowAtIndexPath:(id)a4
{
  v4 = [(ReadingListViewController *)self _createActions:&unk_2827FC5F8 forRowAtIndexPath:a4 allowingNewlineInTitles:0 withBlock:&__block_literal_global_287];
  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v4];

  return v5;
}

id __78__ReadingListViewController_previewTableViewController_menuForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v10 = a6;
  v11 = MEMORY[0x277D750C8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__ReadingListViewController_previewTableViewController_menuForRowAtIndexPath___block_invoke_2;
  v16[3] = &unk_2781D87D8;
  v17 = v10;
  v12 = v10;
  v13 = a3;
  v14 = [v11 actionWithTitle:a2 image:a4 identifier:0 handler:v16];
  [v14 setAccessibilityIdentifier:v13];

  if (a5)
  {
    [v14 setAttributes:2];
  }

  return v14;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v10 = a3;
  v6 = a4;
  userTypedFilter = self->_userTypedFilter;
  if (userTypedFilter != v6 && ![(NSString *)userTypedFilter isEqualToString:v6])
  {
    v8 = [(NSString *)v6 copy];
    v9 = self->_userTypedFilter;
    self->_userTypedFilter = v8;

    [(ReadingListViewController *)self _reloadReadingListAndTable];
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  userTypedFilter = self->_userTypedFilter;
  self->_userTypedFilter = 0;

  [(ReadingListViewController *)self _reloadReadingListAndTable];
}

- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D75470];
  v7 = a5;
  v8 = [v6 alloc];
  v9 = [(ReadingListViewController *)self _bookmarkAtIndexPath:v7];

  v10 = [v8 _sf_initWithBookmark:v9];
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  return v11;
}

- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4
{
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didStartDragWithDragContentType:9];
}

- (BOOL)tableView:(id)a3 canHandleDropSession:(id)a4
{
  v5 = a4;
  if (([(ReadingListViewController *)self isEditing]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEBC0] _sf_canCreateURLsFromDropSession:v5];
  }

  return v6;
}

- (id)tableView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v5 = [objc_alloc(MEMORY[0x277D75B68]) initWithDropOperation:-[WebBookmarkCollection dropOperationForReadingListDropSession:](self->_collection dropLocation:{a4), 2}];

  return v5;
}

- (void)tableView:(id)a3 performDropWithCoordinator:(id)a4
{
  collection = self->_collection;
  v7 = [a4 session];
  v6 = [v7 items];
  [(WebBookmarkCollection *)collection dropDragItemsInReadingList:v6 updatingController:self];
}

- (void)updateUserActivityState:(id)a3
{
  v4 = a3;
  v3 = WebBookmarksReadingListFolderTitle();
  [v4 setTitle:v3];

  [v4 setEligibleForSearch:1];
  [v4 setEligibleForPrediction:1];
}

- (ReadingListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (LinkPreviewProvider)linkPreviewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);

  return WeakRetained;
}

- (_SFNavigationIntentHandling)navigationIntentHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);

  return WeakRetained;
}

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);

  return WeakRetained;
}

@end
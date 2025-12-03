@interface ReadingListViewController
- (BOOL)_shouldUseTranslucentAppearance;
- (BOOL)tableView:(id)view canHandleDropSession:(id)session;
- (LinkPreviewProvider)linkPreviewProvider;
- (NSArray)bookmarksPanelToolbarItems;
- (ReadingListViewController)init;
- (ReadingListViewControllerDelegate)delegate;
- (TabGroupProvider)tabGroupProvider;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_URLForRowAtIndexPath:(id)path;
- (id)_bookmarkAtIndexPath:(id)path;
- (id)_createAction:(int64_t)action forRowAtIndexPath:(id)path allowingNewlineInTitle:(BOOL)title withBlock:(id)block;
- (id)_createActions:(id)actions forRowAtIndexPath:(id)path allowingNewlineInTitles:(BOOL)titles withBlock:(id)block;
- (id)_currentReadingListBookmark;
- (id)_deleteBarButtonItem;
- (id)_editButtonIdentifier;
- (id)_iconForUUID:(id)d iconData:(id)data;
- (id)_saveOfflineBarButtonItem;
- (id)_unreadFilterBarButtonItem;
- (id)_unreadFilterButtonIdentifier;
- (id)_unreadFilterButtonTitle;
- (id)previewTableViewController:(id)controller menuForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_adjustContentOffsetIfNeeded;
- (void)_clearExplanationView;
- (void)_connectSafariFetcherServerProxy;
- (void)_deleteBookmarks:(id)bookmarks;
- (void)_didChangeUnreadFilter;
- (void)_disconnectSafariFetcherServerProxy;
- (void)_fetchMetadataIfNeededForBookmark:(id)bookmark;
- (void)_networkReachabilityChanged:(id)changed;
- (void)_postChangeNotification;
- (void)_readingListBookmarkMetadataDidUpdate:(id)update;
- (void)_readingListItemAtIndexPath:(id)path lockAndPerformUpdates:(id)updates performBlockIfLockFailed:(id)failed;
- (void)_readingListItemAtIndexPath:(id)path setUnread:(BOOL)unread;
- (void)_readingListItemAtIndexPathDelete:(id)delete;
- (void)_readingListItemsAtIndexPaths:(id)paths lockAndPerformUpdate:(id)update performBlockIfLockFailed:(id)failed;
- (void)_reloadReadingList;
- (void)_reloadReadingListAndTable;
- (void)_restoreCellSeparator;
- (void)_saveForOffline:(id)offline;
- (void)_scheduleDelayedChangeNotification;
- (void)_setIconForBookmark:(id)bookmark cell:(id)cell synchronously:(BOOL)synchronously;
- (void)_showExplanationView;
- (void)_updateEditingButtonsEnabled;
- (void)_updateSearchBar;
- (void)_updateTableViewByComputingDifference;
- (void)_updateTableViewByRemovingReadingListItemAtIndexPath:(id)path;
- (void)_updateToolbarItemsAnimated:(BOOL)animated;
- (void)_webBookmarksDidReload:(id)reload;
- (void)bookmarksServerProxy:(id)proxy didStartFetchingReadingListItem:(id)item;
- (void)bookmarksServerProxy:(id)proxy didStopFetchingReadingListItem:(id)item;
- (void)bookmarksServerProxyConnectionInvalidated:(id)invalidated;
- (void)bookmarksServerProxyDidFinishFetching:(id)fetching;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)loadView;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view dragSessionWillBegin:(id)begin;
- (void)tableView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateAndScrollToCurrentSelectedItemIfNeeded:(BOOL)needed;
- (void)updateColorSchemeForExplanationView;
- (void)updateUserActivityState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
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
    mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    v2->_networkIsReachable = [mEMORY[0x277CEC5B8] isNetworkReachable];
    [mEMORY[0x277CEC5B8] addNetworkReachableObserver:v2 selector:sel__networkReachabilityChanged_];
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    collection = v2->_collection;
    v2->_collection = mainBookmarkCollection;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__readingListBookmarkDidUpdate_ name:@"ReadingListBookmarkDidUpdateNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__webBookmarksDidReload_ name:*MEMORY[0x277D7B608] object:0];
    [defaultCenter addObserver:v2 selector:sel__didAddNewReadingListBookmark name:@"ReadingListBookmarkAddedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__webBookmarksDidReload_ name:@"bookmarkCollectionHasBecomeAvailableNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__readingListBookmarkMetadataDidUpdate_ name:@"ReadingListBookmarkMetadataDidUpdateNotification" object:0];
    [(ReadingListViewController *)v2 _connectSafariFetcherServerProxy];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, didReceiveWebBookmarksReadingListFetchingNotification, *MEMORY[0x277D7B630], 0, 1024);
    v2->_loadIconsSynchronously = 1;
    v8 = WebBookmarksReadingListFolderTitle();
    [(ReadingListViewController *)v2 setTitle:v8];

    v9 = +[Application sharedApplication];
    readingListLeadImageCache = [v9 readingListLeadImageCache];
    imageCache = v2->_imageCache;
    v2->_imageCache = readingListLeadImageCache;

    v12 = [MEMORY[0x277CBEB58] set];
    visibleBookmarkIDs = v2->_visibleBookmarkIDs;
    v2->_visibleBookmarkIDs = v12;

    v2->_needsContentOffsetAdjustment = 1;
    v21[0] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v15 = [(ReadingListViewController *)v2 registerForTraitChanges:v14 withTarget:v2 action:sel_contentSizeCategoryDidChange];

    systemTraitsAffectingColorAppearance = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v17 = [(ReadingListViewController *)v2 registerForTraitChanges:systemTraitsAffectingColorAppearance withTarget:v2 action:sel_updateColorSchemeForExplanationView];

    v18 = v2;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] removeNetworkReachableObserver:self];

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
    emptyConfiguration = [MEMORY[0x277D75390] emptyConfiguration];
    [emptyConfiguration setTextToSecondaryTextPadding:8.0];
    [emptyConfiguration setText:v13];
    [emptyConfiguration setSecondaryText:v3];
    v5 = [(UIContentUnavailableView *)[ReadingListContentUnavailableView alloc] initWithConfiguration:emptyConfiguration];
    [(ReadingListContentUnavailableView *)v5 setAutoresizingMask:18];
    view = [(ReadingListViewController *)self view];
    [view bounds];
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

    view2 = [(ReadingListViewController *)self view];
    [view2 addSubview:self->_explanationView];

    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UITableView *)self->_tableView setTableFooterView:v11];

    tableHeaderView = [(UITableView *)self->_tableView tableHeaderView];

    [tableHeaderView setHidden:1];
  }
}

- (void)_clearExplanationView
{
  [(UIView *)self->_explanationView removeFromSuperview];
  explanationView = self->_explanationView;
  self->_explanationView = 0;

  [(UITableView *)self->_tableView setTableFooterView:0];
  tableHeaderView = [(UITableView *)self->_tableView tableHeaderView];
  [tableHeaderView setHidden:0];
}

- (void)loadView
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"showingAllReadingListBookmarks"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  self->_showingAllBookmarks = bOOLValue;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readingListViewController:self updateUnreadFilterShowingAllBookmarks:self->_showingAllBookmarks];
  }

  [(ReadingListViewController *)self _reloadReadingList];
  v7 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(ReadingListViewController *)self setView:v7];

  view = [(ReadingListViewController *)self view];
  [view setAutoresizingMask:18];

  _unreadFilterButtonTitle = [(ReadingListViewController *)self _unreadFilterButtonTitle];
  _unreadFilterBarButtonItem = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
  [_unreadFilterBarButtonItem setTitle:_unreadFilterButtonTitle];

  _unreadFilterButtonIdentifier = [(ReadingListViewController *)self _unreadFilterButtonIdentifier];
  _unreadFilterBarButtonItem2 = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
  [_unreadFilterBarButtonItem2 setAccessibilityIdentifier:_unreadFilterButtonIdentifier];

  v13 = [[PreviewTableViewController alloc] initWithStyle:2];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v13;

  [(PreviewTableViewController *)self->_tableViewController setPreviewDelegate:self];
  linkPreviewProvider = [(ReadingListViewController *)self linkPreviewProvider];
  [(PreviewTableViewController *)self->_tableViewController setLinkPreviewProvider:linkPreviewProvider];

  [(PreviewTableViewController *)self->_tableViewController setViewRespectsSystemMinimumLayoutMargins:0];
  tableView = [(PreviewTableViewController *)self->_tableViewController tableView];
  tableView = self->_tableView;
  self->_tableView = tableView;

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
  view2 = [(ReadingListViewController *)self view];
  [view2 addSubview:self->_tableView];

  [(ReadingListViewController *)self _updateSearchBar];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v4 viewDidLoad];
  view = [(ReadingListViewController *)self view];
  [view bounds];
  [(UITableView *)self->_tableView setFrame:?];

  if (self->_deferEnteringEditMode)
  {
    self->_deferEnteringEditMode = 0;
    [(ReadingListViewController *)self setEditing:1 animated:0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v4 viewDidDisappear:disappear];
  [(ReadingListLeadImageCache *)self->_imageCache clearCache];
  [(ReadingListViewController *)self setEditing:0];
}

- (void)viewWillLayoutSubviews
{
  view = [(ReadingListViewController *)self view];
  [view bounds];
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
  tableView = [(ReadingListViewController *)self tableView];
  [tableView layoutMargins];
  [(UISearchBar *)searchBar _setOverrideContentInsets:10 forRectEdges:?];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = [(WebBookmarkCollection *)self->_collection readingListWithUnreadOnly:0];
  bookmarkCount = [v5 bookmarkCount];

  if (!bookmarkCount)
  {
    [(ReadingListViewController *)self _showExplanationView];
  }

  v11.receiver = self;
  v11.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v11 viewWillAppear:appearCopy];
  navigationController = [(ReadingListViewController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:appearCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0)
  {
    bookmarksPanelToolbarItems = [(ReadingListViewController *)self bookmarksPanelToolbarItems];
    [(ReadingListViewController *)self setToolbarItems:bookmarksPanelToolbarItems animated:appearCopy];
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

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v9 viewDidAppear:appear];
  userActivity = [(ReadingListViewController *)self userActivity];
  activityType = [userActivity activityType];
  v6 = *MEMORY[0x277CDB9F8];
  v7 = [activityType isEqualToString:*MEMORY[0x277CDB9F8]];

  if ((v7 & 1) == 0)
  {
    [userActivity invalidate];
    v8 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:v6];

    [(ReadingListViewController *)self setUserActivity:v8];
    userActivity = v8;
  }

  [userActivity setNeedsSave:1];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(NSTimer *)self->_deletionNotificationTimer isValid])
  {
    [(ReadingListViewController *)self _postChangeNotification];
  }

  [(UIViewController *)self safari_saveTableViewScrollPosition];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_showingAllBookmarks];
  [standardUserDefaults setObject:v6 forKey:@"showingAllReadingListBookmarks"];

  tableView = [(ReadingListViewController *)self tableView];
  [(UITableView *)tableView safari_dismissContextMenu];

  v8.receiver = self;
  v8.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v8 viewWillDisappear:disappearCopy];
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v5 willMoveToParentViewController:controller];
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
  window = [(UITableView *)self->_tableView window];

  if (window)
  {
    v8 = 1;
  }

  else
  {
    v8 = !editingCopy;
  }

  if (!v8)
  {
    self->_deferEnteringEditMode = 1;
  }

  [(ReadingListViewController *)self _restoreCellSeparator];
  v16.receiver = self;
  v16.super_class = ReadingListViewController;
  [(ReadingListViewController *)&v16 setEditing:editingCopy animated:animatedCopy];
  v9 = !editingCopy;
  [(UISearchBar *)self->_searchBar setUserInteractionEnabled:editingCopy ^ 1];
  v10 = 1.0;
  if (editingCopy)
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
  [(PreviewTableViewController *)self->_tableViewController setEditing:editingCopy animated:animatedCopy];
  [(ReadingListViewController *)self _updateToolbarItemsAnimated:animatedCopy];
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

- (void)_updateToolbarItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained panelViewController:self updateToolbarItemsAnimated:1];
  }

  else
  {
    bookmarksPanelToolbarItems = [(ReadingListViewController *)self bookmarksPanelToolbarItems];
    [(ReadingListViewController *)self setToolbarItems:bookmarksPanelToolbarItems animated:animatedCopy];
  }
}

- (id)_bookmarkAtIndexPath:(id)path
{
  readingList = self->_readingList;
  v4 = [path row];

  return [(WebBookmarkList *)readingList bookmarkAtIndex:v4];
}

- (void)_networkReachabilityChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CEC510]];
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
  bookmarkCount = [(WebBookmarkList *)self->_readingList bookmarkCount];
  searchBar = self->_searchBar;
  if (bookmarkCount)
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

  text = [(UISearchBar *)searchBar text];
  v7 = [text length];

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
      searchBar = [(UISearchBar *)v9 searchBar];
      v11 = self->_searchBar;
      self->_searchBar = searchBar;

      navigationItem = [(ReadingListViewController *)self navigationItem];
      [navigationItem setPreferredSearchBarPlacement:2];

      navigationItem2 = [(ReadingListViewController *)self navigationItem];
      [navigationItem2 setSearchController:v9];

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

  _unreadFilterButtonTitle = [(ReadingListViewController *)self _unreadFilterButtonTitle];
  _unreadFilterBarButtonItem = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
  [_unreadFilterBarButtonItem setTitle:_unreadFilterButtonTitle];

  _unreadFilterButtonIdentifier = [(ReadingListViewController *)self _unreadFilterButtonIdentifier];
  _unreadFilterBarButtonItem2 = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
  [_unreadFilterBarButtonItem2 setAccessibilityIdentifier:_unreadFilterButtonIdentifier];

  [(ReadingListViewController *)self _reloadReadingListAndTable];
  [(ReadingListViewController *)self _updateToolbarItemsAnimated:1];
}

- (id)_unreadFilterBarButtonItem
{
  if (!self->_cachedUnreadFilterBarButtonButton)
  {
    v3 = objc_alloc(MEMORY[0x277D751E0]);
    _unreadFilterButtonTitle = [(ReadingListViewController *)self _unreadFilterButtonTitle];
    v5 = [v3 initWithTitle:_unreadFilterButtonTitle style:0 target:self action:sel__didChangeUnreadFilter];
    cachedUnreadFilterBarButtonButton = self->_cachedUnreadFilterBarButtonButton;
    self->_cachedUnreadFilterBarButtonButton = v5;
  }

  _unreadFilterButtonIdentifier = [(ReadingListViewController *)self _unreadFilterButtonIdentifier];
  [(UIBarButtonItem *)self->_cachedUnreadFilterBarButtonButton setAccessibilityIdentifier:_unreadFilterButtonIdentifier];

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
      _editButtonIdentifier = [(ReadingListViewController *)self _editButtonIdentifier];
      editButtonItem = [(ReadingListViewController *)self editButtonItem];
      [editButtonItem setAccessibilityIdentifier:_editButtonIdentifier];

      isEditing = [(ReadingListViewController *)self isEditing];
      if (isEditing)
      {
        _deleteBarButtonItem = [(ReadingListViewController *)self _deleteBarButtonItem];
        [_deleteBarButtonItem setAccessibilityIdentifier:@"ReadingListBarDeleteButton"];
      }

      else
      {
        _deleteBarButtonItem = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
      }

      safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      if (([safari_browserDefaults safari_shouldAutomaticallyDownloadReadingListItems] & 1) != 0 || isEditing != 1)
      {
        _saveOfflineBarButtonItem = v3;
      }

      else
      {
        _saveOfflineBarButtonItem = [(ReadingListViewController *)self _saveOfflineBarButtonItem];
      }

      v13 = _saveOfflineBarButtonItem;

      v14 = [(ReadingListViewController *)self editButtonItem:_deleteBarButtonItem];
      v16[4] = v14;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];

      goto LABEL_14;
    }

    v17[0] = v3;
    _deleteBarButtonItem = [(ReadingListViewController *)self editButtonItem];
    v17[1] = _deleteBarButtonItem;
    v5 = MEMORY[0x277CBEA60];
    v6 = v17;
  }

  else
  {
    _deleteBarButtonItem = [(ReadingListViewController *)self _unreadFilterBarButtonItem];
    v18[0] = _deleteBarButtonItem;
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

- (void)_deleteBookmarks:(id)bookmarks
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Tap delete selected reading list items", buf, 2u);
  }

  indexPathsForSelectedRows = [(UITableView *)self->_tableView indexPathsForSelectedRows];
  v6 = +[FeatureManager sharedFeatureManager];
  isInMemoryBookmarkChangeTrackingAvailable = [v6 isInMemoryBookmarkChangeTrackingAvailable];

  if (isInMemoryBookmarkChangeTrackingAvailable)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__ReadingListViewController__deleteBookmarks___block_invoke;
    aBlock[3] = &unk_2781D85C0;
    aBlock[4] = self;
    v17 = indexPathsForSelectedRows;
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
  selfCopy = self;
  v15 = indexPathsForSelectedRows;
  v9 = indexPathsForSelectedRows;
  [(ReadingListViewController *)self _readingListItemsAtIndexPaths:v9 lockAndPerformUpdate:&v10 performBlockIfLockFailed:v8];
  [(ReadingListViewController *)self setEditing:0, v10, v11, v12, v13, selfCopy];
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

- (void)_saveForOffline:(id)offline
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Tap save archives for selected reading list items", buf, 2u);
  }

  indexPathsForSelectedRows = [(UITableView *)self->_tableView indexPathsForSelectedRows];
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
  [(ReadingListViewController *)self _readingListItemsAtIndexPaths:indexPathsForSelectedRows lockAndPerformUpdate:v7 performBlockIfLockFailed:v6];
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
  _deleteBarButtonItem = [(ReadingListViewController *)self _deleteBarButtonItem];
  _saveOfflineBarButtonItem = [(ReadingListViewController *)self _saveOfflineBarButtonItem];
  if (([(ReadingListViewController *)self isEditing]& 1) != 0)
  {
    indexPathsForSelectedRows = [(UITableView *)self->_tableView indexPathsForSelectedRows];
    [_deleteBarButtonItem setEnabled:{objc_msgSend(indexPathsForSelectedRows, "count") != 0}];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__ReadingListViewController__updateEditingButtonsEnabled__block_invoke;
    v7[3] = &unk_2781D8608;
    v7[4] = self;
    v6 = [indexPathsForSelectedRows safari_firstObjectPassingTest:v7];
    [_saveOfflineBarButtonItem setEnabled:v6 != 0];
  }

  else
  {
    [_deleteBarButtonItem setEnabled:0];
    [_saveOfflineBarButtonItem setEnabled:0];
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
  isOfflineReadingListAvailable = [v3 isOfflineReadingListAvailable];

  if (isOfflineReadingListAvailable && !self->_safariFetcherServerProxy)
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

- (void)_webBookmarksDidReload:(id)reload
{
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  collection = self->_collection;
  self->_collection = mainBookmarkCollection;

  [(ReadingListViewController *)self _reloadReadingListAndTable];
}

- (void)_readingListBookmarkMetadataDidUpdate:(id)update
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  [(ReadingListViewController *)self _updateTableViewByComputingDifference];
  userInfo = [updateCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"BookmarkWithUpdatedMetadataKey"];

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
      visibleCells = [(UITableView *)self->_tableView visibleCells];
      v10 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(visibleCells);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            bookmarkID = [v14 bookmarkID];
            if (bookmarkID == [v6 identifier])
            {
              [v14 setBookmark:v6];
              [(ReadingListViewController *)self _setIconForBookmark:v6 cell:v14 synchronously:self->_loadIconsSynchronously];

              goto LABEL_13;
            }
          }

          v11 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  readingListBookmark = [v4 readingListBookmark];

  return readingListBookmark;
}

- (void)updateAndScrollToCurrentSelectedItemIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  indexPathForSelectedRow = [(UITableView *)self->_tableView indexPathForSelectedRow];
  if (([(ReadingListViewController *)self isEditing]& 1) == 0)
  {
    [(ReadingListViewController *)self _restoreCellSeparator];
    indexPathsForVisibleRows = [(UITableView *)self->_tableView indexPathsForVisibleRows];
    _currentReadingListBookmark = [(ReadingListViewController *)self _currentReadingListBookmark];
    if (_currentReadingListBookmark)
    {
      bookmarkArray = [(WebBookmarkList *)self->_readingList bookmarkArray];
      v8 = [bookmarkArray indexOfObject:_currentReadingListBookmark];

      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:0];
        firstObject = [indexPathsForVisibleRows firstObject];
        lastObject = [indexPathsForVisibleRows lastObject];
        v12 = [v9 row];
        if (v12 <= [firstObject row])
        {
          tableView = self->_tableView;
          v16 = neededCopy;
          v15 = v9;
        }

        else
        {
          v13 = [v9 row];
          if (v13 >= [lastObject row])
          {
            v17 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v9 inSection:{"row") - 1, 0}];
            v18 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v17];
            [v18 setSeparatorStyle:0];

            if (neededCopy)
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
      [(UITableView *)self->_tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
    }
  }
}

- (void)_restoreCellSeparator
{
  indexPathForSelectedRow = [(UITableView *)self->_tableView indexPathForSelectedRow];
  if ([indexPathForSelectedRow row])
  {
    v3 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(indexPathForSelectedRow inSection:{"row") - 1, 0}];
    separatorStyle = [(UITableView *)self->_tableView separatorStyle];
    v5 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v3];
    [v5 setSeparatorStyle:separatorStyle];
  }
}

- (id)_URLForRowAtIndexPath:(id)path
{
  v3 = [(ReadingListViewController *)self _bookmarkAtIndexPath:path];
  builder = [MEMORY[0x277D28F40] builder];
  v5 = [builder navigationIntentWithBookmark:v3];
  v6 = [v5 URL];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(ReadingListViewController *)self _bookmarkAtIndexPath:pathCopy];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:@"ReadingListTableViewCellWithImage" forIndexPath:pathCopy];

  [v9 setBookmark:v8];
  uUID = [v8 UUID];
  [v9 setBookmark:v8 isArchiving:{objc_msgSend(uUID, "isEqualToString:", self->_archivingBookmarkUUID)}];

  [v9 safari_annotateWithReadingListItem:v8];
  if ([(ReadingListViewController *)self _shouldUseTranslucentAppearance])
  {
    [v9 setUsesVibrantEffect:1];
  }

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (self->_shouldUseSearchControllerInNavigationBar)
  {
    v6 = 0;
  }

  else
  {
    v6 = [view dequeueReusableHeaderFooterViewWithIdentifier:{@"ReadingListSpacingHeaderReuseIdentifier", section, v4}];
    if (!v6)
    {
      v6 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"ReadingListSpacingHeaderReuseIdentifier"];
    }
  }

  return v6;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = 12.0;
  if (self->_shouldUseSearchControllerInNavigationBar)
  {
    return 0.0;
  }

  return result;
}

- (id)_iconForUUID:(id)d iconData:(id)data
{
  dCopy = d;
  dataCopy = data;
  if ([dCopy length])
  {
    v8 = [(ReadingListLeadImageCache *)self->_imageCache loadImageSynchronouslyForIconUUID:dCopy];
    if (!dataCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!dataCopy)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v8 = [MEMORY[0x277D755B8] imageWithData:dataCopy];
  }

LABEL_7:

  return v8;
}

- (void)_setIconForBookmark:(id)bookmark cell:(id)cell synchronously:(BOOL)synchronously
{
  bookmarkCopy = bookmark;
  cellCopy = cell;
  bookmarkID = [cellCopy bookmarkID];
  if (bookmarkID == [bookmarkCopy identifier])
  {
    imageView = [cellCopy imageView];
    image = [imageView image];

    if (!image)
    {
      readingListIconUUID = [bookmarkCopy readingListIconUUID];
      iconData = [bookmarkCopy iconData];
      identifier = [bookmarkCopy identifier];
      if (synchronously)
      {
        v16 = [(ReadingListViewController *)self _iconForUUID:readingListIconUUID iconData:iconData];
        if (v16)
        {
          [cellCopy setReadingListIcon:v16];
        }
      }

      else
      {
        v17 = identifier;
        v18 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __68__ReadingListViewController__setIconForBookmark_cell_synchronously___block_invoke;
        block[3] = &unk_2781D8658;
        block[4] = self;
        v20 = readingListIconUUID;
        v21 = iconData;
        v22 = cellCopy;
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v10 = [(ReadingListViewController *)self _bookmarkAtIndexPath:pathCopy];
  visibleBookmarkIDs = self->_visibleBookmarkIDs;
  v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "identifier")}];
  [(NSMutableSet *)visibleBookmarkIDs addObject:v12];

  [(ReadingListViewController *)self _fetchMetadataIfNeededForBookmark:v10];
  [(ReadingListViewController *)self _setIconForBookmark:v10 cell:cellCopy synchronously:self->_loadIconsSynchronously];
  _currentReadingListBookmark = [(ReadingListViewController *)self _currentReadingListBookmark];
  if ([_currentReadingListBookmark isEqualToBookmark:v10])
  {
    if (([cellCopy isSelected] & 1) == 0 && (-[ReadingListViewController isEditing](self, "isEditing") & 1) == 0)
    {
      [viewCopy selectRowAtIndexPath:pathCopy animated:1 scrollPosition:0];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(pathCopy inSection:{"row") + 1, 0}];
    v15 = [v14 row];
    if (v15 < [(WebBookmarkList *)self->_readingList bookmarkCount])
    {
      v16 = [(ReadingListViewController *)self _bookmarkAtIndexPath:v14];
      if ([_currentReadingListBookmark isEqualToBookmark:v16])
      {
        [cellCopy setSeparatorStyle:0];
      }
    }
  }
}

- (void)_fetchMetadataIfNeededForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  safari_shouldAutomaticallyDownloadReadingListItems = [safari_browserDefaults safari_shouldAutomaticallyDownloadReadingListItems];

  if ((safari_shouldAutomaticallyDownloadReadingListItems & 1) == 0)
  {
    if ([ReadingListMetadataFetcher shouldFetchMetadataForBookmark:bookmarkCopy])
    {
      v5 = +[ReadingListMetadataFetcher sharedMetadataFetcher];
      [v5 fetchMetadataForReadingListBookmark:bookmarkCopy withProvider:0];
    }

    else
    {
      if (![ReadingListMetadataFetcher shouldFetchThumbnailForBookmark:bookmarkCopy])
      {
        goto LABEL_7;
      }

      v5 = +[ReadingListMetadataFetcher sharedMetadataFetcher];
      [v5 fetchThumbnailForReadingListBookmark:bookmarkCopy withProvider:0];
    }
  }

LABEL_7:
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  visibleBookmarkIDs = self->_visibleBookmarkIDs;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(cell, "bookmarkID", view)}];
  [(NSMutableSet *)visibleBookmarkIDs removeObject:v6];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  isEditing = [(ReadingListViewController *)self isEditing];
  v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (isEditing)
  {
    if (v10)
    {
      v11 = v9;
      v17 = 134218240;
      v18 = [pathCopy row];
      v19 = 2048;
      v20 = [viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];
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
      v18 = [pathCopy row];
      v19 = 2048;
      v20 = [viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];
      _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_DEFAULT, "Tap reading list item at row %ld, number of rows: %ld", &v17, 0x16u);
    }

    v13 = [(ReadingListViewController *)self _bookmarkAtIndexPath:pathCopy];
    builder = [MEMORY[0x277D28F40] builder];
    v15 = [builder navigationIntentWithBookmark:v13];

    [v15 setShouldDismissSidebarOnLoad:1];
    WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
    [WeakRetained dispatchNavigationIntent:v15];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  if ([(ReadingListViewController *)self isEditing])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = 134218240;
      v11 = [pathCopy row];
      v12 = 2048;
      v13 = [viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];
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

- (void)_readingListItemAtIndexPath:(id)path lockAndPerformUpdates:(id)updates performBlockIfLockFailed:(id)failed
{
  updatesCopy = updates;
  failedCopy = failed;
  v9 = [(ReadingListViewController *)self _bookmarkAtIndexPath:path];
  if ([MEMORY[0x277D7B5A8] isLockedSync])
  {
    v10 = updatesCopy[2];
LABEL_7:
    v10();
    goto LABEL_8;
  }

  if ([MEMORY[0x277D7B5A8] lockSync])
  {
    (updatesCopy[2])(updatesCopy, v9);
    [MEMORY[0x277D7B5A8] unlockSync];
    goto LABEL_8;
  }

  if (failedCopy)
  {
    v10 = failedCopy[2];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_readingListItemsAtIndexPaths:(id)paths lockAndPerformUpdate:(id)update performBlockIfLockFailed:(id)failed
{
  updateCopy = update;
  failedCopy = failed;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__ReadingListViewController__readingListItemsAtIndexPaths_lockAndPerformUpdate_performBlockIfLockFailed___block_invoke;
  v11[3] = &unk_2781D86C8;
  v11[4] = self;
  v10 = [paths safari_mapObjectsUsingBlock:v11];
  if ([MEMORY[0x277D7B5A8] isLockedSync])
  {
    updateCopy[2](updateCopy, v10);
  }

  else if ([MEMORY[0x277D7B5A8] lockSync])
  {
    updateCopy[2](updateCopy, v10);
    [MEMORY[0x277D7B5A8] unlockSync];
  }

  else if (failedCopy)
  {
    failedCopy[2](failedCopy, v10);
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
    tableView = [(ReadingListViewController *)self tableView];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__ReadingListViewController__updateTableViewByComputingDifference__block_invoke_2;
    v8[3] = &unk_2781D7E28;
    selfCopy = self;
    v11 = &__block_literal_global_177;
    v9 = v4;
    [tableView performBatchUpdates:v8 completion:0];

    [(UIViewController *)self safari_saveTableViewScrollPosition];
    LODWORD(tableView) = [(WebBookmarkList *)v3 bookmarkCount]== 0;
    if (((tableView ^ ([(WebBookmarkList *)self->_readingList bookmarkCount]!= 0)) & 1) == 0)
    {
      [(ReadingListViewController *)self _updateToolbarItemsAnimated:1];
    }

    v6 = [(WebBookmarkCollection *)self->_collection readingListWithUnreadOnly:0];
    bookmarkCount = [v6 bookmarkCount];

    if (bookmarkCount)
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

- (void)_updateTableViewByRemovingReadingListItemAtIndexPath:(id)path
{
  v8 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = MEMORY[0x277CBEA60];
  pathCopy2 = path;
  v6 = [v4 arrayWithObjects:&pathCopy count:1];

  [(ReadingListViewController *)self _updateTableViewByRemovingReadingListItemsAtIndexPaths:v6, pathCopy, v8];
}

- (void)_readingListItemAtIndexPathDelete:(id)delete
{
  deleteCopy = delete;
  v5 = +[FeatureManager sharedFeatureManager];
  isInMemoryBookmarkChangeTrackingAvailable = [v5 isInMemoryBookmarkChangeTrackingAvailable];

  if (isInMemoryBookmarkChangeTrackingAvailable)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__ReadingListViewController__readingListItemAtIndexPathDelete___block_invoke;
    aBlock[3] = &unk_2781D8710;
    aBlock[4] = self;
    v12 = deleteCopy;
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
  v10 = deleteCopy;
  v8 = deleteCopy;
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

- (id)_createActions:(id)actions forRowAtIndexPath:(id)path allowingNewlineInTitles:(BOOL)titles withBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__ReadingListViewController__createActions_forRowAtIndexPath_allowingNewlineInTitles_withBlock___block_invoke;
  v16[3] = &unk_2781D8738;
  v16[4] = self;
  v17 = pathCopy;
  titlesCopy = titles;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = pathCopy;
  v14 = [actions safari_mapAndFilterObjectsUsingBlock:v16];

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

- (id)_createAction:(int64_t)action forRowAtIndexPath:(id)path allowingNewlineInTitle:(BOOL)title withBlock:(id)block
{
  v67[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  blockCopy = block;
  objc_initWeak(&location, self);
  if (action == 1)
  {
    v11 = _WBSLocalizedString();
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke;
    v63[3] = &unk_2781D4F30;
    objc_copyWeak(&v65, &location);
    v64 = pathCopy;
    v13 = blockCopy[2](blockCopy, v11, @"DeleteReadingListItem", v12, 1, v63);

    objc_destroyWeak(&v65);
    goto LABEL_20;
  }

  v14 = [(ReadingListViewController *)self _bookmarkAtIndexPath:pathCopy];
  v11 = v14;
  if (action == 4)
  {
    dateLastViewed = [v14 dateLastViewed];

    v30 = _WBSLocalizedString();
    if (dateLastViewed)
    {
      v31 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle"];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_3_229;
      v54[3] = &unk_2781D4F30;
      objc_copyWeak(&v56, &location);
      v55 = pathCopy;
      v13 = blockCopy[2](blockCopy, v30, @"MarkUnreadReadingListItem", v31, 0, v54);

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
      v52 = pathCopy;
      v13 = blockCopy[2](blockCopy, v30, @"MarkReadReadingListItem", v34, 0, v51);

      objc_destroyWeak(&v53);
    }
  }

  else
  {
    if (action != 2 || ([MEMORY[0x277CBEBD0] safari_browserDefaults], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "safari_shouldAutomaticallyDownloadReadingListItems"), v15, (v16 & 1) != 0))
    {
LABEL_6:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_249;
      aBlock[3] = &unk_2781D8788;
      objc_copyWeak(&v50, &location);
      v48 = pathCopy;
      v11 = v11;
      v49 = v11;
      v17 = _Block_copy(aBlock);
      if (action == 16)
      {
        v18 = _WBSLocalizedString();
        v28 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_4;
        v41[3] = &unk_2781D4D40;
        v42 = v11;
        v13 = blockCopy[2](blockCopy, v18, @"CopyReadingListItem", v28, 0, v41);
      }

      else
      {
        if (action != 8)
        {
          v13 = 0;
          goto LABEL_14;
        }

        v18 = [MEMORY[0x277D750C8] _sf_openInNewTabActionWithHandler:&__block_literal_global_254];
        title = [v18 title];
        image = [v18 image];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __94__ReadingListViewController__createAction_forRowAtIndexPath_allowingNewlineInTitle_withBlock___block_invoke_2_258;
        v45[3] = &unk_2781D4D90;
        v21 = v17;
        v46 = v21;
        v40 = blockCopy[2](blockCopy, title, @"OpenInNewTabReadingListItem", image, 0, v45);

        address = [v11 address];
        v23 = [MEMORY[0x277CBEBC0] URLWithString:address];
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
      v61 = pathCopy;
      v13 = blockCopy[2](blockCopy, v35, @"DontSaveReadingListItem", v36, 0, v60);

      objc_destroyWeak(&v62);
    }

    else
    {
      mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
      isNetworkReachable = [mEMORY[0x277CEC5B8] isNetworkReachable];

      if (!isNetworkReachable)
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
      v58 = pathCopy;
      v13 = blockCopy[2](blockCopy, v37, @"SaveOfflineReadingListItem", v38, 0, v57);

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

- (void)_readingListItemAtIndexPath:(id)path setUnread:(BOOL)unread
{
  unreadCopy = unread;
  pathCopy = path;
  v6 = [(ReadingListViewController *)self _bookmarkAtIndexPath:?];
  dateLastViewed = [v6 dateLastViewed];

  if ((dateLastViewed != 0) != unreadCopy)
  {
    goto LABEL_5;
  }

  if (unreadCopy)
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

  [(ReadingListViewController *)self _updateTableViewByRemovingReadingListItemAtIndexPath:pathCopy];
LABEL_6:
}

- (void)bookmarksServerProxyDidFinishFetching:(id)fetching
{
  if (self->_archivingBookmarkUUID)
  {
    [(ReadingListViewController *)self bookmarksServerProxy:self->_safariFetcherServerProxy didStopFetchingReadingListItem:?];
  }

  [(ReadingListViewController *)self _disconnectSafariFetcherServerProxy];
}

- (void)bookmarksServerProxyConnectionInvalidated:(id)invalidated
{
  if (self->_safariFetcherServerProxy == invalidated)
  {
    [(ReadingListViewController *)self _disconnectSafariFetcherServerProxy];

    [(ReadingListViewController *)self _connectSafariFetcherServerProxy];
  }
}

- (void)bookmarksServerProxy:(id)proxy didStartFetchingReadingListItem:(id)item
{
  v26 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  itemCopy = item;
  if (itemCopy && self->_safariFetcherServerProxy == proxyCopy && ![(NSString *)self->_archivingBookmarkUUID isEqualToString:itemCopy])
  {
    if (self->_archivingBookmarkUUID)
    {
      [(ReadingListViewController *)self bookmarksServerProxy:self->_safariFetcherServerProxy didStopFetchingReadingListItem:?];
    }

    v8 = [(WebBookmarkCollection *)self->_collection bookmarkWithUUID:itemCopy];
    if (v8)
    {
      v20 = proxyCopy;
      objc_storeStrong(&self->_archivingBookmarkUUID, item);
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
            uUID = [v15 UUID];
            v17 = [uUID isEqualToString:itemCopy];

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

      proxyCopy = v20;
    }
  }
}

- (void)bookmarksServerProxy:(id)proxy didStopFetchingReadingListItem:(id)item
{
  v27 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  itemCopy = item;
  if (self->_safariFetcherServerProxy == proxyCopy && self->_archivingBookmarkUUID)
  {
    v8 = [(WebBookmarkCollection *)self->_collection bookmarkWithUUID:?];
    if (v8)
    {
      v20 = itemCopy;
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
            uUID = [v14 UUID];
            v16 = [uUID isEqualToString:self->_archivingBookmarkUUID];

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
      itemCopy = v20;
    }
  }
}

- (id)previewTableViewController:(id)controller menuForRowAtIndexPath:(id)path
{
  v4 = [(ReadingListViewController *)self _createActions:&unk_2827FC5F8 forRowAtIndexPath:path allowingNewlineInTitles:0 withBlock:&__block_literal_global_287];
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

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  changeCopy = change;
  userTypedFilter = self->_userTypedFilter;
  if (userTypedFilter != changeCopy && ![(NSString *)userTypedFilter isEqualToString:changeCopy])
  {
    v8 = [(NSString *)changeCopy copy];
    v9 = self->_userTypedFilter;
    self->_userTypedFilter = v8;

    [(ReadingListViewController *)self _reloadReadingListAndTable];
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  userTypedFilter = self->_userTypedFilter;
  self->_userTypedFilter = 0;

  [(ReadingListViewController *)self _reloadReadingListAndTable];
}

- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D75470];
  pathCopy = path;
  v8 = [v6 alloc];
  v9 = [(ReadingListViewController *)self _bookmarkAtIndexPath:pathCopy];

  v10 = [v8 _sf_initWithBookmark:v9];
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  return v11;
}

- (void)tableView:(id)view dragSessionWillBegin:(id)begin
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didStartDragWithDragContentType:9];
}

- (BOOL)tableView:(id)view canHandleDropSession:(id)session
{
  sessionCopy = session;
  if (([(ReadingListViewController *)self isEditing]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEBC0] _sf_canCreateURLsFromDropSession:sessionCopy];
  }

  return v6;
}

- (id)tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v5 = [objc_alloc(MEMORY[0x277D75B68]) initWithDropOperation:-[WebBookmarkCollection dropOperationForReadingListDropSession:](self->_collection dropLocation:{update), 2}];

  return v5;
}

- (void)tableView:(id)view performDropWithCoordinator:(id)coordinator
{
  collection = self->_collection;
  session = [coordinator session];
  items = [session items];
  [(WebBookmarkCollection *)collection dropDragItemsInReadingList:items updatingController:self];
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  v3 = WebBookmarksReadingListFolderTitle();
  [stateCopy setTitle:v3];

  [stateCopy setEligibleForSearch:1];
  [stateCopy setEligibleForPrediction:1];
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
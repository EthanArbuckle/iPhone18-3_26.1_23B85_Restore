@interface BookmarksTableViewController
- (BOOL)_bookmarkAtIndexPathIsFolder:(id)folder;
- (BOOL)hasTranslucentAppearance;
- (BOOL)restoreStateWithDictionary:(id)dictionary;
- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canHandleDropSession:(id)session;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldSpringLoadRowAtIndexPath:(id)path withContext:(id)context;
- (BookmarksTableViewController)initWithFolder:(id)folder inCollection:(id)collection activeSyntheticFolder:(id)syntheticFolder showAllSyntheticFolders:(BOOL)folders skipOffset:(unsigned int)offset;
- (BookmarksTableViewController)initWithManagedFolder:(id)folder;
- (BookmarksTableViewControllerDelegate)delegate;
- (LinkPreviewProvider)linkPreviewProvider;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_bookmarkAtIndexPath:(id)path;
- (id)_dragItemsAtIndexPath:(id)path includingFolders:(BOOL)folders;
- (id)_fontForCurrentTraitCollection;
- (id)_managedBookmarkAtIndexPath:(id)path;
- (id)_newViewControllerForFolder:(id)folder syntheticFolder:(id)syntheticFolder showAllSyntheticFolders:(BOOL)folders;
- (id)_newViewControllerForManagedFolder:(id)folder;
- (id)_syntheticFolderAtIndexPath:(id)path;
- (id)_tableViewCellForBookmark:(id)bookmark syntheticFolder:(id)folder managedBookmark:(id)managedBookmark;
- (id)backgroundColorUsingTranslucentAppearance:(BOOL)appearance;
- (id)bookmarksTableViewCellWithReuseIdentifier:(id)identifier;
- (id)currentStateDictionary;
- (id)selectedBookmarks;
- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)tableView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int)folderID;
- (int64_t)_bookmarksRootFolderIndexOffset;
- (int64_t)minimumNumberOfRows;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_commonInit;
- (void)_deleteBookmark:(id)bookmark atIndexPath:(id)path;
- (void)_handleBookmarkItemDeleted:(BOOL)deleted atIndexPath:(id)path bookmarkCountBeforeDeletion:(unint64_t)deletion lockedDatabase:(BOOL)database;
- (void)_moveBookmarks:(id)bookmarks toFolderID:(int)d toIndex:(unsigned int)index shouldReorder:(BOOL)reorder isAddingBookmark:(BOOL)bookmark;
- (void)_pushInfoViewControllerForBookmark:(id)bookmark;
- (void)_recreateBookmarkLists;
- (void)_updateContentOffsetIfNeeded;
- (void)_updateTableViewCellsTextStyleForEditing:(BOOL)editing;
- (void)_updateTitle;
- (void)bookmark:(id)bookmark didProduceNavigationIntent:(id)intent userInfo:(id)info;
- (void)contentSizeCategoryDidChange;
- (void)loadView;
- (void)managedBookmarksDidChange;
- (void)reloadAllSyntheticFolders;
- (void)reloadBookmarks;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)setCollection:(id)collection;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFolder:(id)folder;
- (void)setPreviewing:(BOOL)previewing;
- (void)setScrollViewScrollsToTop:(BOOL)top;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view dragSessionWillBegin:(id)begin;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)updateSeparatorInset;
- (void)updateSeparatorInsetForTraitChange;
- (void)updateUserActivityState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation BookmarksTableViewController

- (BookmarksTableViewController)initWithManagedFolder:(id)folder
{
  folderCopy = folder;
  v10.receiver = self;
  v10.super_class = BookmarksTableViewController;
  v6 = [(BookmarksTableViewController *)&v10 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_managedBookmarkFolder, folder);
    [(BookmarksTableViewController *)v7 _commonInit];
    v8 = v7;
  }

  return v7;
}

- (BookmarksTableViewController)initWithFolder:(id)folder inCollection:(id)collection activeSyntheticFolder:(id)syntheticFolder showAllSyntheticFolders:(BOOL)folders skipOffset:(unsigned int)offset
{
  foldersCopy = folders;
  folderCopy = folder;
  collectionCopy = collection;
  syntheticFolderCopy = syntheticFolder;
  v23.receiver = self;
  v23.super_class = BookmarksTableViewController;
  v16 = [(BookmarksTableViewController *)&v23 initWithStyle:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_folder, folder);
    objc_storeStrong(&v17->_collection, collection);
    v17->_skipOffset = offset;
    if (syntheticFolderCopy && !foldersCopy)
    {
      bookmarkList = [syntheticFolderCopy bookmarkList];
      bookmarkList = v17->_bookmarkList;
      v17->_bookmarkList = bookmarkList;

      objc_storeStrong(&v17->_activeSyntheticTabGroupFavoritesFolder, syntheticFolder);
    }

    if (foldersCopy)
    {
      allSyntheticTabGroupFavoritesFolders = v17->_allSyntheticTabGroupFavoritesFolders;
      v17->_allSyntheticTabGroupFavoritesFolders = MEMORY[0x277CBEBF8];
    }

    [(BookmarksTableViewController *)v17 _commonInit];
    v21 = v17;
  }

  return v17;
}

- (void)_commonInit
{
  v12[1] = *MEMORY[0x277D85DE8];
  traitCollection = [(BookmarksTableViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = +[BookmarksTableViewCellLayoutManager sharedManager];
  [v5 setCurrentContentSizeCategory:preferredContentSizeCategory];

  [(BookmarksTableViewController *)self _updateTitle];
  [(BookmarksTableViewController *)self _recreateBookmarkLists];
  v12[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [(BookmarksTableViewController *)self registerForTraitChanges:v6 withTarget:self action:sel_contentSizeCategoryDidChange];

  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9 = [(BookmarksTableViewController *)self registerForTraitChanges:v8 withTarget:self action:sel_updateSeparatorInsetForTraitChange, v11[0]];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_managedBookmarksDidChange name:*MEMORY[0x277D29058] object:0];
}

- (void)setCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_collection != collectionCopy)
  {
    v6 = collectionCopy;
    objc_storeStrong(&self->_collection, collection);
    [(BookmarksTableViewController *)self reloadBookmarks];
    collectionCopy = v6;
  }
}

- (void)_updateTitle
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__BookmarksTableViewController__updateTitle__block_invoke;
  aBlock[3] = &unk_2781D4D18;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  managedBookmarkFolder = self->_managedBookmarkFolder;
  if (managedBookmarkFolder || (managedBookmarkFolder = self->_activeSyntheticTabGroupFavoritesFolder) != 0)
  {
    title = [(SFManagedBookmarkFolder *)managedBookmarkFolder title];
  }

  else
  {
    if (self->_allSyntheticTabGroupFavoritesFolders)
    {
      _WBSLocalizedString();
    }

    else
    {
      [(WebBookmark *)self->_folder localizedTitle];
    }
    title = ;
  }

  v6 = title;
  v3[2](v3, title);
}

void __44__BookmarksTableViewController__updateTitle__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v6 = a2;
  v4 = _WBSLocalizedString();
  v5 = [v3 localizedStringWithFormat:v4, v6];
  [*(*(a1 + 32) + 1136) setPlaceholder:v5];

  [*(a1 + 32) setTitle:v6];
}

- (void)_recreateBookmarkLists
{
  managedBookmarksMatchingQuery = self->_managedBookmarksMatchingQuery;
  self->_managedBookmarksMatchingQuery = 0;

  if ([(NSString *)self->_userTypedFilter length])
  {
    managedBookmarkFolder = self->_managedBookmarkFolder;
    if (managedBookmarkFolder)
    {
      v5 = [(SFManagedBookmarkFolder *)managedBookmarkFolder bookmarksMatchingQueryString:self->_userTypedFilter];
      mEMORY[0x277D28CD8] = self->_managedBookmarksMatchingQuery;
      self->_managedBookmarksMatchingQuery = v5;
    }

    else
    {
      if (![(BookmarksTableViewController *)self _inRootFolder])
      {
        goto LABEL_7;
      }

      mEMORY[0x277D28CD8] = [MEMORY[0x277D28CD8] sharedController];
      topLevelManagedBookmarkFolder = [mEMORY[0x277D28CD8] topLevelManagedBookmarkFolder];
      v8 = [topLevelManagedBookmarkFolder bookmarksMatchingQueryString:self->_userTypedFilter];
      v9 = self->_managedBookmarksMatchingQuery;
      self->_managedBookmarksMatchingQuery = v8;
    }
  }

LABEL_7:
  if (self->_managedBookmarkFolder)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  tabGroupProvider = [WeakRetained tabGroupProvider];

  if (self->_activeSyntheticTabGroupFavoritesFolder)
  {
    v11 = [tabGroupProvider perTabGroupBookmarkListForFolderID:-[WebBookmarkList folderID](self->_bookmarkList filteredUsingString:{"folderID"), self->_userTypedFilter}];
    bookmarkList = v11;
    if (!v11)
    {
      bookmarkList = self->_bookmarkList;
    }

    objc_storeStrong(&self->_bookmarkList, bookmarkList);

    [(SFSyntheticBookmarkFolder *)self->_activeSyntheticTabGroupFavoritesFolder setBookmarkList:self->_bookmarkList];
    goto LABEL_25;
  }

  if (self->_allSyntheticTabGroupFavoritesFolders)
  {
    allSyntheticBookmarkFolders = [tabGroupProvider allSyntheticBookmarkFolders];
    allSyntheticTabGroupFavoritesFolders = allSyntheticBookmarkFolders;
    if (!allSyntheticBookmarkFolders)
    {
      allSyntheticTabGroupFavoritesFolders = self->_allSyntheticTabGroupFavoritesFolders;
    }

    objc_storeStrong(&self->_allSyntheticTabGroupFavoritesFolders, allSyntheticTabGroupFavoritesFolders);

    favoritesFolder = [tabGroupProvider perTabGroupBookmarkListForFolderID:0 filteredUsingString:self->_userTypedFilter];
    goto LABEL_16;
  }

  mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
  usesAllowedSitesOnly = [mEMORY[0x277D7B590] usesAllowedSitesOnly];

  if (!usesAllowedSitesOnly)
  {
    v22 = [(WebBookmarkCollection *)self->_collection listWithID:[(WebBookmark *)self->_folder identifier] skipOffset:LODWORD(self->_skipOffset) includeHidden:0 includeDescendantsAsChildren:[(NSString *)self->_userTypedFilter length]!= 0 filteredUsingString:self->_userTypedFilter];
    v23 = self->_bookmarkList;
    self->_bookmarkList = v22;

    if ([(BookmarksTableViewController *)self _inRootFolder])
    {
      v24 = [tabGroupProvider perTabGroupBookmarkListForFolderID:0 filteredUsingString:self->_userTypedFilter];
      [(WebBookmarkList *)self->_bookmarkList setShadowBookmarkList:v24];
    }

    favoritesFolder = [(WebBookmarkCollection *)self->_collection favoritesFolder];
    v16 = 1096;
    goto LABEL_23;
  }

  webFilterAllowedSitesFolder = [(WebBookmarkCollection *)self->_collection webFilterAllowedSitesFolder];
  favoritesFolder = self->_favoritesFolder;
  self->_favoritesFolder = webFilterAllowedSitesFolder;

  if (![(BookmarksTableViewController *)self _inRootFolder])
  {
    favoritesFolder = [(WebBookmarkCollection *)self->_collection listWithID:[(WebBookmark *)self->_folder identifier] skipOffset:LODWORD(self->_skipOffset) includeHidden:0 includeDescendantsAsChildren:[(NSString *)self->_userTypedFilter length]!= 0 filteredUsingString:self->_userTypedFilter];
LABEL_16:
    v16 = 1088;
LABEL_23:
    v21 = *(&self->super.super.super.super.super.isa + v16);
    *(&self->super.super.super.super.super.isa + v16) = favoritesFolder;
    goto LABEL_24;
  }

  v21 = self->_bookmarkList;
  self->_bookmarkList = 0;
LABEL_24:

LABEL_25:
}

- (void)reloadBookmarks
{
  if (!self->_shouldDeferReload)
  {
    [(BookmarksTableViewController *)self _recreateBookmarkLists];
    tableView = [(BookmarksTableViewController *)self tableView];
    [tableView reloadData];

    [(BookmarksTableViewController *)self _updateTitle];
  }
}

- (void)managedBookmarksDidChange
{
  if (self->_managedBookmarkFolder && (-[BookmarksTableViewController viewIfLoaded](self, "viewIfLoaded"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    navigationController = [(BookmarksTableViewController *)self navigationController];
    v5 = [navigationController popViewControllerAnimated:1];
  }

  else
  {

    [(BookmarksTableViewController *)self reloadBookmarks];
  }
}

- (void)reloadAllSyntheticFolders
{
  if (self->_allSyntheticTabGroupFavoritesFolders)
  {
    [(BookmarksTableViewController *)self reloadBookmarks];
  }
}

- (int)folderID
{
  if (self->_activeSyntheticTabGroupFavoritesFolder)
  {
    return [(WebBookmarkList *)self->_bookmarkList folderID];
  }

  else
  {
    return [(WebBookmark *)self->_folder identifier];
  }
}

- (void)setFolder:(id)folder
{
  objc_storeStrong(&self->_folder, folder);

  [(BookmarksTableViewController *)self reloadBookmarks];
}

- (void)setPreviewing:(BOOL)previewing
{
  if (self->_previewing != previewing)
  {
    previewingCopy = previewing;
    self->_previewing = previewing;
    tableView = [(BookmarksTableViewController *)self tableView];
    v8 = tableView;
    if (!self->_shouldUseSearchControllerInNavigationBar)
    {
      if (previewingCopy)
      {
        searchBar = 0;
      }

      else
      {
        searchBar = self->_searchBar;
      }

      [tableView setTableHeaderView:searchBar];
      tableView = v8;
    }

    [tableView setShowsVerticalScrollIndicator:!previewingCopy];
  }
}

- (int64_t)minimumNumberOfRows
{
  if (self->_previewing)
  {
    return 3;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = BookmarksTableViewController;
  return [(SFPopoverSizingTableViewController *)&v5 minimumNumberOfRows];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setAllowsSelectionDuringEditing:1];
  [v4 setCellLayoutMarginsFollowReadableWidth:0];
  [v4 setDragDelegate:self];
  [v4 setDropDelegate:self];
  [v4 setKeyboardDismissMode:1];
  [v4 setSpringLoaded:1];
  [(BookmarksTableViewController *)self setTableView:v4];
}

- (void)contentSizeCategoryDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BookmarksTableViewController_contentSizeCategoryDidChange__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__BookmarksTableViewController_contentSizeCategoryDidChange__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1136) sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  _SFRoundFloatToPixels();
  [*(*(a1 + 32) + 1136) setFrame:{0.0, 0.0, 0.0, v2}];
  v3 = *(a1 + 32);
  if ((*(v3 + 1171) & 1) == 0)
  {
    v4 = *(v3 + 1136);
    v5 = [v3 tableView];
    [v5 setTableHeaderView:v4];
  }
}

- (void)updateSeparatorInsetForTraitChange
{
  traitCollection = [(BookmarksTableViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = +[BookmarksTableViewCellLayoutManager sharedManager];
  [v5 setCurrentContentSizeCategory:preferredContentSizeCategory];

  [(BookmarksTableViewController *)self updateSeparatorInset];
  tableView = [(BookmarksTableViewController *)self tableView];
  [tableView setNeedsLayout];
}

- (void)updateSeparatorInset
{
  traitCollection = [(BookmarksTableViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained separatorInsetForBookmarksTableViewController:self];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = 50.0;
  if (IsAccessibilityCategory)
  {
    v15 = 0.0;
  }

  v16 = v15 + v10;
  tableView = [(BookmarksTableViewController *)self tableView];
  [tableView setSeparatorInsetReference:IsAccessibilityCategory];

  tableView2 = [(BookmarksTableViewController *)self tableView];
  [tableView2 setSeparatorInset:{v8, v16, v12, v14}];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = BookmarksTableViewController;
  [(SFPopoverSizingTableViewController *)&v14 viewDidLoad];
  self->_needsContentOffsetUpdate = 1;
  [(BookmarksTableViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  tableView = [(BookmarksTableViewController *)self tableView];
  [tableView setAutoresizingMask:18];
  [tableView setEstimatedRowHeight:44.0];
  [tableView setRowHeight:*MEMORY[0x277D76F30]];
  [tableView setAccessibilityIdentifier:@"BookmarksTable"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (self->_skipOffset)
  {
    [WeakRetained contentInsetForBookmarksTableViewController:self];
    [tableView setContentInset:?];
    goto LABEL_12;
  }

  if (![MEMORY[0x277D49A08] isSolariumEnabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v5 panelViewControllerShouldUseSearchControllerInNavigationItem:self];
      self->_shouldUseSearchControllerInNavigationBar = v11;
      if (v11)
      {
        goto LABEL_5;
      }
    }

    else if (self->_shouldUseSearchControllerInNavigationBar)
    {
      goto LABEL_5;
    }

    v12 = [MEMORY[0x277D759E8] sf_installSearchBarInTableView:tableView includeSeparator:0];
    searchBar = self->_searchBar;
    self->_searchBar = v12;

    self->_needsInitialContentOffsetUpdateForTableHeaderView = 1;
    goto LABEL_11;
  }

  self->_shouldUseSearchControllerInNavigationBar = 1;
LABEL_5:
  v6 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [v6 setObscuresBackgroundDuringPresentation:0];
  navigationItem = [(BookmarksTableViewController *)self navigationItem];
  [navigationItem setPreferredSearchBarPlacement:2];

  navigationItem2 = [(BookmarksTableViewController *)self navigationItem];
  [navigationItem2 setSearchController:v6];

  searchBar = [v6 searchBar];
  v10 = self->_searchBar;
  self->_searchBar = searchBar;

LABEL_11:
  [(UISearchBar *)self->_searchBar setDelegate:self];
LABEL_12:
  [(BookmarksTableViewController *)self updateSeparatorInset];
  if (self->_previewing)
  {
    [tableView setTableHeaderView:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = BookmarksTableViewController;
  [(SFPopoverSizingTableViewController *)&v10 viewWillAppear:appear];
  if (self->_managedBookmarkFolder && ([MEMORY[0x277D28CD8] sharedController], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "topLevelManagedBookmarkFolder"), v5 = objc_claimAutoreleasedReturnValue(), -[SFManagedBookmarkFolder uuid](self->_managedBookmarkFolder, "uuid"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "findChildBookmarkWithUUID:", v6), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v4, !v7))
  {
    navigationController = [(BookmarksTableViewController *)self navigationController];
    v9 = [navigationController popViewControllerAnimated:1];
  }

  else
  {
    [(BookmarksTableViewController *)self reloadBookmarks];
    [(BookmarksTableViewController *)self _updateContentOffsetIfNeeded];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = BookmarksTableViewController;
  [(SFPopoverSizingTableViewController *)&v9 viewDidAppear:appear];
  self->_needsContentOffsetUpdate = 0;
  userActivity = [(BookmarksTableViewController *)self userActivity];
  activityType = [userActivity activityType];
  v6 = *MEMORY[0x277CDB978];
  v7 = [activityType isEqualToString:*MEMORY[0x277CDB978]];

  if ((v7 & 1) == 0)
  {
    [userActivity invalidate];
    v8 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:v6];

    [(BookmarksTableViewController *)self setUserActivity:v8];
    userActivity = v8;
  }

  [userActivity setNeedsSave:1];
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = BookmarksTableViewController;
  [(SFPopoverSizingTableViewController *)&v5 willMoveToParentViewController:controller];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setPinnedPaletteForPanelViewController:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = BookmarksTableViewController;
  [(BookmarksTableViewController *)&v6 viewWillDisappear:disappear];
  [(UIViewController *)self safari_saveTableViewScrollPosition];
  tableView = [(BookmarksTableViewController *)self tableView];
  [(UITableView *)tableView safari_dismissContextMenu];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksTableViewControllerWillDisappear:self];
  }
}

- (void)_updateContentOffsetIfNeeded
{
  if (!self->_previewing && self->_needsContentOffsetUpdate)
  {
    if ([(UIViewController *)self safari_hasSavedTableViewScrollPosition]&& [(UIViewController *)self safari_restoreTableViewScrollPosition])
    {
      self->_needsInitialContentOffsetUpdateForTableHeaderView = 0;
    }

    if (self->_needsInitialContentOffsetUpdateForTableHeaderView)
    {
      tableView = [(BookmarksTableViewController *)self tableView];
      [(UITableView *)tableView safari_adjustContentOffsetToTopHidingTableHeaderView];

      self->_needsInitialContentOffsetUpdateForTableHeaderView = 0;
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = BookmarksTableViewController;
  [(SFPopoverSizingTableViewController *)&v5 viewDidLayoutSubviews];
  searchBar = self->_searchBar;
  view = [(BookmarksTableViewController *)self view];
  [view layoutMargins];
  [(UISearchBar *)searchBar _setOverrideContentInsets:10 forRectEdges:?];
}

- (int64_t)_bookmarksRootFolderIndexOffset
{
  mEMORY[0x277D28CD8] = [MEMORY[0x277D28CD8] sharedController];
  managedBookmarksController = [mEMORY[0x277D28CD8] managedBookmarksController];
  managedBookmarks = [managedBookmarksController managedBookmarks];

  if (managedBookmarks)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  managedBookmarkFolder = self->_managedBookmarkFolder;
  if (managedBookmarkFolder)
  {
    if (!self->_managedBookmarksMatchingQuery)
    {
      children = [(SFManagedBookmarkFolder *)managedBookmarkFolder children];
      v8 = [children count];

      goto LABEL_15;
    }

    managedBookmarksMatchingQuery = self->_managedBookmarksMatchingQuery;
    goto LABEL_6;
  }

  if ([(BookmarksTableViewController *)self _isShowingAllSyntheticFolders])
  {
    managedBookmarksMatchingQuery = self->_allSyntheticTabGroupFavoritesFolders;
LABEL_6:
    v8 = [(NSArray *)managedBookmarksMatchingQuery count];
    goto LABEL_15;
  }

  bookmarkCount = [(WebBookmarkList *)self->_bookmarkList bookmarkCount];
  if ([(BookmarksTableViewController *)self _inRootFolder]&& ![(NSString *)self->_userTypedFilter length])
  {
    bookmarkCount += [(BookmarksTableViewController *)self _bookmarksRootFolderIndexOffset];
  }

  if ([(BookmarksTableViewController *)self _inRootFolder]&& [(NSString *)self->_userTypedFilter length])
  {
    bookmarkCount += [(NSArray *)self->_managedBookmarksMatchingQuery count];
  }

  v8 = bookmarkCount;
LABEL_15:

  return v8;
}

- (id)_bookmarkAtIndexPath:(id)path
{
  v4 = [path row];
  managedBookmarkFolder = self->_managedBookmarkFolder;
  if (managedBookmarkFolder)
  {
    if (!self->_managedBookmarksMatchingQuery)
    {
      children = [(SFManagedBookmarkFolder *)managedBookmarkFolder children];
      v7 = [children objectAtIndexedSubscript:v4];

      if ([v7 isFolder])
      {
        v10 = 0;
LABEL_21:

        goto LABEL_26;
      }

LABEL_20:
      v11 = objc_alloc(MEMORY[0x277D7B5A0]);
      title = [v7 title];
      urlString = [v7 urlString];
      uuid = [v7 uuid];
      v10 = [v11 initManagedBookmarkWithTitle:title address:urlString uuid:uuid];

      goto LABEL_21;
    }

    v6 = [(NSArray *)self->_managedBookmarksMatchingQuery objectAtIndexedSubscript:v4];
LABEL_4:
    v7 = v6;
    goto LABEL_20;
  }

  if ([(BookmarksTableViewController *)self _isShowingAllSyntheticFolders])
  {
    goto LABEL_25;
  }

  if (![(BookmarksTableViewController *)self _inRootFolder])
  {
    goto LABEL_22;
  }

  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (!v4)
  {
    if (![(NSString *)self->_userTypedFilter length])
    {
      v15 = self->_favoritesFolder;
      goto LABEL_24;
    }

LABEL_10:
    if (![(NSString *)self->_userTypedFilter length])
    {
      goto LABEL_25;
    }
  }

  if (![(NSString *)self->_userTypedFilter length])
  {
    v4 -= [(BookmarksTableViewController *)self _bookmarksRootFolderIndexOffset];
  }

  if ([(NSString *)self->_userTypedFilter length]&& [(WebBookmarkList *)self->_bookmarkList bookmarkCount]<= v4)
  {
    v8 = v4 - [(WebBookmarkList *)self->_bookmarkList bookmarkCount];
    if ([(NSArray *)self->_managedBookmarksMatchingQuery count]> v8)
    {
      v6 = [(NSArray *)self->_managedBookmarksMatchingQuery objectAtIndexedSubscript:v8];
      if (v6)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_25;
  }

LABEL_22:
  if ([(WebBookmarkList *)self->_bookmarkList bookmarkCount]> v4)
  {
    v15 = [(WebBookmarkList *)self->_bookmarkList bookmarkAtIndex:v4];
LABEL_24:
    v10 = v15;
    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
LABEL_26:

  return v10;
}

- (BOOL)_bookmarkAtIndexPathIsFolder:(id)folder
{
  folderCopy = folder;
  v5 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:folderCopy];
  if ([v5 isFolder])
  {
    isFolder = 1;
  }

  else
  {
    v7 = [(BookmarksTableViewController *)self _syntheticFolderAtIndexPath:folderCopy];
    if (v7)
    {
      isFolder = 1;
    }

    else
    {
      v8 = [(BookmarksTableViewController *)self _managedBookmarkAtIndexPath:folderCopy];
      isFolder = [v8 isFolder];
    }
  }

  return isFolder;
}

- (id)_managedBookmarkAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[BookmarksTableViewController _inRootFolder](self, "_inRootFolder") && [pathCopy row] == 2)
  {
    mEMORY[0x277D28CD8] = [MEMORY[0x277D28CD8] sharedController];
    managedBookmarksController = [mEMORY[0x277D28CD8] managedBookmarksController];
    managedBookmarks = [managedBookmarksController managedBookmarks];
    if (managedBookmarks)
    {
      v8 = managedBookmarks;
      v9 = [(NSString *)self->_userTypedFilter length];

      if (!v9)
      {
        mEMORY[0x277D28CD8]2 = [MEMORY[0x277D28CD8] sharedController];
        topLevelManagedBookmarkFolder = [mEMORY[0x277D28CD8]2 topLevelManagedBookmarkFolder];
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  managedBookmarkFolder = self->_managedBookmarkFolder;
  if (!managedBookmarkFolder)
  {
    v14 = 0;
    goto LABEL_13;
  }

  managedBookmarksMatchingQuery = self->_managedBookmarksMatchingQuery;
  if (managedBookmarksMatchingQuery)
  {
    v14 = -[NSArray objectAtIndexedSubscript:](managedBookmarksMatchingQuery, "objectAtIndexedSubscript:", [pathCopy row]);
    goto LABEL_13;
  }

  mEMORY[0x277D28CD8]2 = [(SFManagedBookmarkFolder *)managedBookmarkFolder children];
  topLevelManagedBookmarkFolder = [mEMORY[0x277D28CD8]2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
LABEL_12:
  v14 = topLevelManagedBookmarkFolder;

LABEL_13:

  return v14;
}

- (id)_syntheticFolderAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[BookmarksTableViewController _inRootFolder](self, "_inRootFolder") && [pathCopy row] == 1 && !-[NSString length](self->_userTypedFilter, "length"))
  {
    v10 = objc_alloc(MEMORY[0x277D28D68]);
    v11 = _WBSLocalizedString();
    v9 = [v10 initWithBookmarkList:0 title:v11];
  }

  else
  {
    v5 = [(NSArray *)self->_allSyntheticTabGroupFavoritesFolders count];
    v6 = [pathCopy row];
    if (!v5 || ((v7 = v6, ![(NSString *)self->_userTypedFilter length]) ? (v8 = v7 >= v5) : (v8 = 1), v8))
    {
      v9 = 0;
    }

    else
    {
      v9 = [(NSArray *)self->_allSyntheticTabGroupFavoritesFolders objectAtIndexedSubscript:v7];
    }
  }

  return v9;
}

- (id)bookmarksTableViewCellWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tableView = [(BookmarksTableViewController *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:identifierCopy];

  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:identifierCopy];
    v7 = +[BookmarksTableViewCellLayoutManager sharedManager];
    [v6 setLayoutManager:v7];

    v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
    imageView = [v6 imageView];
    [imageView setPreferredSymbolConfiguration:v8];
  }

  hasTranslucentAppearance = [(BookmarksTableViewController *)self hasTranslucentAppearance];
  if (hasTranslucentAppearance)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [v6 backgroundColor];
  }
  v11 = ;
  [v6 setBackgroundColor:v11];

  [v6 sf_setUsesVibrantSelection:hasTranslucentAppearance];

  return v6;
}

- (id)backgroundColorUsingTranslucentAppearance:(BOOL)appearance
{
  if (appearance)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }
  v3 = ;

  return v3;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = 0;
  if (!section && !self->_shouldUseSearchControllerInNavigationBar)
  {
    v6 = [view dequeueReusableHeaderFooterViewWithIdentifier:@"BookmarkSpacingHeaderReuseIdentifier"];
    if (!v6)
    {
      v6 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"BookmarkSpacingHeaderReuseIdentifier"];
    }

    v4 = vars8;
  }

  return v6;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (!self->_shouldUseSearchControllerInNavigationBar)
  {
    if (!section)
    {
      return 12.0;
    }

    return 0.0;
  }

  if (section)
  {
    return 0.0;
  }

  result = 12.0;
  if (!self->_previewing)
  {
    return 0.0;
  }

  return result;
}

- (id)_fontForCurrentTraitCollection
{
  traitCollection = [(BookmarksTableViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  v4 = *MEMORY[0x277D76918];
  if (verticalSizeClass == 1)
  {
    [MEMORY[0x277D74300] _preferredFontForTextStyle:v4 maximumContentSizeCategory:*MEMORY[0x277D76800]];
  }

  else
  {
    [MEMORY[0x277D74300] preferredFontForTextStyle:v4];
  }
  v5 = ;

  return v5;
}

- (id)_tableViewCellForBookmark:(id)bookmark syntheticFolder:(id)folder managedBookmark:(id)managedBookmark
{
  bookmarkCopy = bookmark;
  folderCopy = folder;
  managedBookmarkCopy = managedBookmark;
  if (folderCopy || -[BookmarksTableViewController _isShowingAllSyntheticFolders](self, "_isShowingAllSyntheticFolders") || ([bookmarkCopy isFolder] & 1) != 0)
  {
    isFolder = 1;
  }

  else
  {
    isFolder = [managedBookmarkCopy isFolder];
  }

  traitCollection = [(BookmarksTableViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (isFolder)
  {
    v15 = @"FolderTableCell";
  }

  else
  {
    v15 = @"BookmarkTableCell";
  }

  v16 = [(BookmarksTableViewController *)self bookmarksTableViewCellWithReuseIdentifier:v15];
  textLabel = [v16 textLabel];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [textLabel setTextColor:labelColor];

  _fontForCurrentTraitCollection = [(BookmarksTableViewController *)self _fontForCurrentTraitCollection];
  [textLabel setFont:_fontForCurrentTraitCollection];

  imageView = [v16 imageView];
  [imageView setTintColor:0];
  if (isFolder)
  {
    if (managedBookmarkCopy)
    {
      v21 = managedBookmarkCopy;
    }

    else
    {
      if (!folderCopy)
      {
        localizedTitle = [bookmarkCopy localizedTitle];
        goto LABEL_19;
      }

      v21 = folderCopy;
    }

    localizedTitle = [v21 title];
LABEL_19:
    v29 = localizedTitle;
    [textLabel setText:localizedTitle];

    [v16 setAccessoryType:1];
    [v16 setEditingAccessoryType:0];
    _isShowingAllSyntheticFolders = [(BookmarksTableViewController *)self _isShowingAllSyntheticFolders];
    if (bookmarkCopy)
    {
      if (!_isShowingAllSyntheticFolders)
      {
        identifier = [bookmarkCopy identifier];
        if (identifier == [(WebBookmark *)self->_favoritesFolder identifier])
        {
          mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
          usesAllowedSitesOnly = [mEMORY[0x277D7B590] usesAllowedSitesOnly];

          if (!usesAllowedSitesOnly)
          {
            if (IsAccessibilityCategory)
            {
              [imageView setImage:0];
            }

            else
            {
              v38 = [MEMORY[0x277D755B8] systemImageNamed:@"star"];
              [imageView setImage:v38];
            }

            if (![(BookmarksTableViewController *)self isEditing])
            {
              goto LABEL_38;
            }

            secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
            [textLabel setTextColor:secondaryLabelColor];

            secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
            [imageView setTintColor:secondaryLabelColor2];
            goto LABEL_37;
          }

          goto LABEL_32;
        }
      }
    }

    if (folderCopy)
    {
      if (!IsAccessibilityCategory)
      {
        v34 = MEMORY[0x277D755B8];
        v35 = @"star.square.on.square";
        goto LABEL_36;
      }
    }

    else
    {
      if (!managedBookmarkCopy || ![(BookmarksTableViewController *)self _inRootFolder])
      {
LABEL_32:
        if (IsAccessibilityCategory)
        {
          goto LABEL_33;
        }

        v34 = MEMORY[0x277D755B8];
        v35 = @"folder";
LABEL_36:
        secondaryLabelColor2 = [v34 systemImageNamed:v35];
        [imageView setImage:secondaryLabelColor2];
LABEL_37:

        goto LABEL_38;
      }

      if (!IsAccessibilityCategory)
      {
        v34 = MEMORY[0x277D755B8];
        v35 = @"folder.badge.gearshape";
        goto LABEL_36;
      }
    }

LABEL_33:
    [imageView setImage:0];
LABEL_38:
    [v16 setAccessibilityIdentifier:@"BookmarksSidebarTableFolderCellView"];
    goto LABEL_39;
  }

  [v16 safari_annotateWithBookmark:bookmarkCopy];
  [v16 setAccessoryType:0];
  [v16 setEditingAccessoryType:{objc_msgSend(bookmarkCopy, "isEditable")}];
  title = [bookmarkCopy title];
  v23 = MEMORY[0x277CBEBC0];
  address = [bookmarkCopy address];
  v25 = [v23 URLWithString:address];
  [(UITableViewCell *)v16 safari_setLinkedPageTitle:title URL:v25];

  if (IsAccessibilityCategory)
  {
    [imageView setImage:0];
  }

  else
  {
    v26 = [MEMORY[0x277D755B8] systemImageNamed:@"book"];
    [imageView setImage:v26];
  }

  [v16 setAccessibilityIdentifier:@"BookmarksSidebarTableCellView"];
  if (managedBookmarkCopy)
  {
    title2 = [managedBookmarkCopy title];
    [textLabel setText:title2];
  }

LABEL_39:

  return v16;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(BookmarksTableViewController *)self _managedBookmarkAtIndexPath:pathCopy];
  v7 = [(BookmarksTableViewController *)self _syntheticFolderAtIndexPath:pathCopy];
  v8 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];

  v9 = [(BookmarksTableViewController *)self _tableViewCellForBookmark:v8 syntheticFolder:v7 managedBookmark:v6];

  return v9;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(BookmarksTableViewController *)self isEditing])
  {
    v6 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];
    if ([v6 isEditable])
    {
      v7 = pathCopy;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = pathCopy;
  }

  return v8;
}

- (void)_pushInfoViewControllerForBookmark:(id)bookmark
{
  v4 = MEMORY[0x277CDB760];
  bookmarkCopy = bookmark;
  v8 = [[v4 alloc] initWithBookmark:bookmarkCopy inCollection:self->_collection addingBookmark:{objc_msgSend(bookmarkCopy, "isInserted") ^ 1}];

  [v8 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setPinnedPaletteForPanelViewController:self];
  }

  navigationController = [(BookmarksTableViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (id)_newViewControllerForFolder:(id)folder syntheticFolder:(id)syntheticFolder showAllSyntheticFolders:(BOOL)folders
{
  foldersCopy = folders;
  syntheticFolderCopy = syntheticFolder;
  folderCopy = folder;
  v10 = [[BookmarksTableViewController alloc] initWithFolder:folderCopy inCollection:self->_collection activeSyntheticFolder:syntheticFolderCopy showAllSyntheticFolders:foldersCopy skipOffset:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(BookmarksTableViewController *)v10 setDelegate:WeakRetained];

  v12 = objc_loadWeakRetained(&self->_linkPreviewProvider);
  [(BookmarksTableViewController *)v10 setLinkPreviewProvider:v12];

  v13 = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [(BookmarksTableViewController *)v10 setNavigationIntentHandler:v13];

  return v10;
}

- (id)_newViewControllerForManagedFolder:(id)folder
{
  folderCopy = folder;
  v5 = [[BookmarksTableViewController alloc] initWithManagedFolder:folderCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(BookmarksTableViewController *)v5 setDelegate:WeakRetained];

  v7 = objc_loadWeakRetained(&self->_linkPreviewProvider);
  [(BookmarksTableViewController *)v5 setLinkPreviewProvider:v7];

  v8 = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [(BookmarksTableViewController *)v5 setNavigationIntentHandler:v8];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v46 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  if (!-[BookmarksTableViewController isEditing](self, "isEditing") || (-[BookmarksTableViewController tableView](self, "tableView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 hasActiveDrag], v8, (v9 & 1) != 0))
  {
    v10 = [(BookmarksTableViewController *)self _managedBookmarkAtIndexPath:pathCopy];
    if ([v10 isFolder])
    {
      v11 = [(BookmarksTableViewController *)self _newViewControllerForManagedFolder:v10];
      navigationController = [(BookmarksTableViewController *)self navigationController];
      [navigationController pushViewController:v11 animated:1];

LABEL_23:
      goto LABEL_24;
    }

    v13 = [(BookmarksTableViewController *)self _syntheticFolderAtIndexPath:pathCopy];
    v11 = v13;
    if (v13)
    {
      bookmarkList = [v13 bookmarkList];
      v15 = [(BookmarksTableViewController *)self _newViewControllerForFolder:0 syntheticFolder:v11 showAllSyntheticFolders:bookmarkList == 0];

      navigationController2 = [(BookmarksTableViewController *)self navigationController];
      [navigationController2 pushViewController:v15 animated:1];

      goto LABEL_23;
    }

    v19 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__BookmarksTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    aBlock[3] = &unk_2781D58E8;
    aBlock[4] = self;
    v20 = v19;
    v38 = v20;
    v21 = pathCopy;
    v39 = v21;
    v22 = _Block_copy(aBlock);
    isFolder = [v20 isFolder];
    v24 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (isFolder)
    {
      if (v25)
      {
        log = v24;
        v26 = [v21 row];
        section = [v21 section];
        v28 = [viewCopy numberOfRowsInSection:{objc_msgSend(v21, "section")}];
        *buf = 134218496;
        v41 = v26;
        v42 = 2048;
        section3 = section;
        v44 = 2048;
        v45 = v28;
        _os_log_impl(&dword_215819000, log, OS_LOG_TYPE_DEFAULT, "Tap bookmark folder at row: %ld, section: %ld, rows in section: %ld", buf, 0x20u);
      }

      if (![MEMORY[0x277D28F40] shouldOpenBookmarkFolderAsTabs])
      {
        v29 = [(BookmarksTableViewController *)self _newViewControllerForFolder:v20 syntheticFolder:0 showAllSyntheticFolders:0];
        navigationController3 = [(BookmarksTableViewController *)self navigationController];
        [navigationController3 pushViewController:v29 animated:1];

        if ([(BookmarksTableViewController *)self isEditing])
        {
          [v29 setEditing:1 animated:0];
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (v25)
      {
        v31 = v24;
        v32 = [v21 row];
        section2 = [v21 section];
        v34 = [viewCopy numberOfRowsInSection:{objc_msgSend(v21, "section")}];
        *buf = 134218496;
        v41 = v32;
        v42 = 2048;
        section3 = section2;
        v44 = 2048;
        v45 = v34;
        _os_log_impl(&dword_215819000, v31, OS_LOG_TYPE_DEFAULT, "Tap bookmark at row: %ld, section: %ld, rows in section: %ld", buf, 0x20u);
      }

      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] didVisitBookmarksWithOpenLocation:0 numberOfBookmarksVisited:1];
    }

    v22[2](v22);
LABEL_22:

    goto LABEL_23;
  }

  v17 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    *buf = 134218496;
    v41 = [pathCopy row];
    v42 = 2048;
    section3 = [pathCopy section];
    v44 = 2048;
    v45 = [viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];
    _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_DEFAULT, "Tap to edit bookmark at row: %ld, section: %ld, rows in section: %ld", buf, 0x20u);
  }

  v10 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];
  if (v10)
  {
    [(BookmarksTableViewController *)self _pushInfoViewControllerForBookmark:v10];
  }

LABEL_24:
}

void __66__BookmarksTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1184));
  v3 = [WeakRetained bookmarksTableViewShouldDispatchNavigationIntent:*(a1 + 32) forSelectedBookmark:*(a1 + 40)];

  if (v3)
  {
    v4 = [MEMORY[0x277D28F40] builder];
    v5 = [v4 navigationIntentWithBookmark:*(a1 + 40)];

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 1200));
      [v6 dispatchNavigationIntent:v5];
    }
  }

  v7 = [*(a1 + 32) tableView];
  [v7 deselectRowAtIndexPath:*(a1 + 48) animated:1];
}

- (BOOL)tableView:(id)view shouldSpringLoadRowAtIndexPath:(id)path withContext:(id)context
{
  v5 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:path];
  isFolder = [v5 isFolder];

  return isFolder;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained bookmarksTableViewIsReadOnly:self];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];
    v11 = [(BookmarksTableViewController *)self _syntheticFolderAtIndexPath:pathCopy];
    v12 = [(BookmarksTableViewController *)self _managedBookmarkAtIndexPath:pathCopy];
    v13 = MEMORY[0x277D753B0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __90__BookmarksTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
    v22[3] = &unk_2781D5E88;
    v23 = v11;
    v24 = v10;
    selfCopy = self;
    v26 = v12;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__BookmarksTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
    v18[3] = &unk_2781D5EB0;
    v19 = v24;
    selfCopy2 = self;
    v21 = pathCopy;
    v14 = v24;
    v15 = v12;
    v16 = v11;
    v9 = [v13 configurationWithIdentifier:v21 previewProvider:v22 actionProvider:v18];
  }

  return v9;
}

id __90__BookmarksTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    goto LABEL_3;
  }

  if ([*(a1 + 40) isFolder])
  {
    v2 = *(a1 + 32);
    v9 = a1 + 40;
    v3 = *(a1 + 40);
    v4 = *(v9 + 8);
    if (!v2)
    {
      v6 = [v4 _newViewControllerForFolder:v3 syntheticFolder:0 showAllSyntheticFolders:0];
      goto LABEL_4;
    }

LABEL_3:
    v5 = [v2 bookmarkList];
    v6 = [v4 _newViewControllerForFolder:v3 syntheticFolder:v2 showAllSyntheticFolders:v5 == 0];

LABEL_4:
    v7 = v6;
LABEL_5:
    [v7 setPreviewing:1];
    goto LABEL_6;
  }

  v10 = *(a1 + 56);
  if (v10 && [v10 isFolder])
  {
    v7 = [*(a1 + 48) _newViewControllerForManagedFolder:*(a1 + 56)];
    v6 = v7;
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277D28F40] builder];
  v12 = [v11 navigationIntentWithBookmark:*(a1 + 40)];

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 1192));
  v14 = [v12 URL];
  v6 = [WeakRetained linkPreviewViewControllerForURL:v14];

LABEL_6:

  return v6;
}

id __90__BookmarksTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v2 + 1080);
  WeakRetained = objc_loadWeakRetained((v2 + 1184));
  v6 = [WeakRetained tabGroupProvider];
  v7 = [v3 _sf_contextMenuUsingCollection:v4 tabGroupActionProvider:v6 analyticsPayload:0 withUserInfo:a1[6] handler:a1[5]];

  return v7;
}

- (id)tableView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  v7 = [viewCopy cellForRowAtIndexPath:identifier];

  v8 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v7];

  return v8;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  animatorCopy = animator;
  previewViewController = [animatorCopy previewViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__BookmarksTableViewController_tableView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
  v15[3] = &unk_2781D5A50;
  v16 = previewViewController;
  selfCopy = self;
  v18 = viewCopy;
  v19 = configurationCopy;
  v12 = configurationCopy;
  v13 = viewCopy;
  v14 = previewViewController;
  [animatorCopy addAnimations:v15];
}

void __100__BookmarksTableViewController_tableView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v4 = v3;
    [v4 setPreviewing:0];
    WeakRetained = [*(a1 + 40) navigationController];
    [WeakRetained pushViewController:*(a1 + 32) animated:1];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(v5 + 149);
      [WeakRetained commitLinkPreviewViewController:*(a1 + 32)];
    }

    else
    {
      v6 = *(a1 + 48);
      WeakRetained = [*(a1 + 56) identifier];
      [v5 tableView:v6 didSelectRowAtIndexPath:?];
    }
  }
}

- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  identifier = [configuration identifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(BookmarksTableViewController *)self _bookmarkAtIndexPathIsFolder:identifier])
  {
    WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);
    [WeakRetained linkPreviewProviderWillDismissPreview];
  }

  return 0;
}

- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path
{
  v4 = [(BookmarksTableViewController *)self tableView:view willSelectRowAtIndexPath:path];
  v5 = v4 != 0;

  return v5;
}

- (void)_updateTableViewCellsTextStyleForEditing:(BOOL)editing
{
  editingCopy = editing;
  if ([(BookmarksTableViewController *)self _inRootFolder])
  {
    v11 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    tableView = [(BookmarksTableViewController *)self tableView];
    v6 = [tableView cellForRowAtIndexPath:v11];

    if (v6)
    {
      if (editingCopy)
      {
        [MEMORY[0x277D75348] secondaryLabelColor];
      }

      else
      {
        [MEMORY[0x277D75348] labelColor];
      }
      v7 = ;
      textLabel = [v6 textLabel];
      [textLabel setTextColor:v7];

      if (editingCopy)
      {
        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      }

      else
      {
        secondaryLabelColor = 0;
      }

      imageView = [v6 imageView];
      [imageView setTintColor:secondaryLabelColor];

      if (editingCopy)
      {
      }
    }
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v11.receiver = self;
  v11.super_class = BookmarksTableViewController;
  [BookmarksTableViewController setEditing:sel_setEditing_animated_ animated:?];
  [(BookmarksTableViewController *)self _updateTableViewCellsTextStyleForEditing:editingCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained panelViewController:self updateToolbarItemsAnimated:animatedCopy];
  }

  v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (editingCopy)
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Begin editing bookmarks table view", v10, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained panelViewControllerDidBeginEditing:self];
    }
  }

  else
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "End editing bookmarks table view", v10, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained panelViewControllerDidEndEditing:self];
    }
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (!self->_skipOffset)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained bookmarksTableViewIsReadOnly:self];

    if ((v7 & 1) == 0)
    {
      v8 = +[FeatureManager sharedFeatureManager];
      isBookmarksAvailable = [v8 isBookmarksAvailable];

      if (isBookmarksAvailable)
      {
        v10 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];
        if ([v10 isDeletable])
        {
          bookmarksNavigationController = [(BookmarksTableViewController *)self bookmarksNavigationController];
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {

LABEL_12:
            v14 = 1;
            goto LABEL_10;
          }

          bookmarksNavigationController2 = [(BookmarksTableViewController *)self bookmarksNavigationController];
          allowsEditing = [bookmarksNavigationController2 allowsEditing];

          if (allowsEditing)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained bookmarksTableViewIsReadOnly:self];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];
    if ([v9 isEditable])
    {
      v8 = self->_skipOffset == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    pathCopy = path;
    v8 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];
    [(BookmarksTableViewController *)self _deleteBookmark:v8 atIndexPath:pathCopy];
  }
}

- (void)_deleteBookmark:(id)bookmark atIndexPath:(id)path
{
  v36 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  pathCopy = path;
  tableView = [(BookmarksTableViewController *)self tableView];
  v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 134218496;
    v31 = [pathCopy row];
    v32 = 2048;
    section = [pathCopy section];
    v34 = 2048;
    v35 = [tableView numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];
    _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_DEFAULT, "Delete bookmark at row: %ld, section: %ld, rows in section: %ld", buf, 0x20u);
  }

  if ([bookmarkCopy isDeletable])
  {
    mEMORY[0x277D28BE0] = [MEMORY[0x277D28BE0] sharedCoordinator];
    if ([mEMORY[0x277D28BE0] hasBookmarksLock])
    {
      v12 = 0;
      v13 = 0;
    }

    else if ([mEMORY[0x277D28BE0] lockBookmarks])
    {
      v13 = 0;
      v12 = 1;
    }

    else
    {
      v14 = +[FeatureManager sharedFeatureManager];
      isInMemoryBookmarkChangeTrackingAvailable = [v14 isInMemoryBookmarkChangeTrackingAvailable];

      if ((isInMemoryBookmarkChangeTrackingAvailable & 1) == 0)
      {
        [MEMORY[0x277D28BE0] showLockedDatabaseAlertForAction:0 fromViewController:self];
        mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
        [mEMORY[0x277D499B8] didPreventBookmarkActionWithBookmarkType:0 actionType:1];

        tableView2 = [(BookmarksTableViewController *)self tableView];
        v25 = [tableView2 cellForRowAtIndexPath:pathCopy];
        [v25 setEditing:0 animated:1];

LABEL_17:
        goto LABEL_18;
      }

      v12 = 0;
      v13 = 1;
    }

    bookmarkCount = [(WebBookmarkList *)self->_bookmarkList bookmarkCount];
    self->_shouldDeferReload = 1;
    if ([bookmarkCopy subtype] == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      tabGroupProvider = [WeakRetained tabGroupProvider];
      uUID = [bookmarkCopy UUID];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __60__BookmarksTableViewController__deleteBookmark_atIndexPath___block_invoke;
      v26[3] = &unk_2781D5ED8;
      v26[4] = self;
      v27 = pathCopy;
      v28 = bookmarkCount;
      v29 = v12;
      [tabGroupProvider deleteScopedBookmarkWithUUID:uUID completionHandler:v26];
    }

    else
    {
      collection = self->_collection;
      if (v13)
      {
        [(WebBookmarkCollection *)collection deleteBookmarkInMemory:bookmarkCopy];
        mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
        [mEMORY[0x277D499B8]2 didDeleteBookmarkInMemory];

        v22 = 1;
      }

      else
      {
        v22 = [(WebBookmarkCollection *)collection deleteBookmark:bookmarkCopy];
      }

      [(BookmarksTableViewController *)self _handleBookmarkItemDeleted:v22 atIndexPath:pathCopy bookmarkCountBeforeDeletion:bookmarkCount lockedDatabase:v12];
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_handleBookmarkItemDeleted:(BOOL)deleted atIndexPath:(id)path bookmarkCountBeforeDeletion:(unint64_t)deletion lockedDatabase:(BOOL)database
{
  databaseCopy = database;
  deletedCopy = deleted;
  v16[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  tableView = [(BookmarksTableViewController *)self tableView];
  [(BookmarksTableViewController *)self _recreateBookmarkLists];
  bookmarkCount = [(WebBookmarkList *)self->_bookmarkList bookmarkCount];
  if (deletedCopy)
  {
    v13 = bookmarkCount;
    if (![pathCopy row] && -[BookmarksTableViewController _inRootFolder](self, "_inRootFolder"))
    {
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
      [tableView reloadSections:v14 withRowAnimation:0];
LABEL_7:

      goto LABEL_9;
    }

    if (deletion - 1 == v13)
    {
      v16[0] = pathCopy;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [tableView deleteRowsAtIndexPaths:v14 withRowAnimation:2];
      goto LABEL_7;
    }
  }

  [tableView reloadData];
LABEL_9:
  self->_shouldDeferReload = 0;
  if (databaseCopy)
  {
    mEMORY[0x277D28BE0] = [MEMORY[0x277D28BE0] sharedCoordinator];
    [mEMORY[0x277D28BE0] unlockBookmarksSoon];
  }
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  viewCopy = view;
  indexPathCopy = indexPath;
  section = [path section];
  section2 = [indexPathCopy section];
  v12 = [viewCopy numberOfRowsInSection:section];
  if (section2 >= section)
  {
    if (section2 <= section)
    {
      goto LABEL_6;
    }

    v13 = MEMORY[0x277CCAA70];
    v14 = v12 - 1;
  }

  else
  {
    v13 = MEMORY[0x277CCAA70];
    v14 = 0;
  }

  v15 = [v13 indexPathForRow:v14 inSection:section];

  indexPathCopy = v15;
LABEL_6:
  v16 = [indexPathCopy row];
  v17 = v16;
  v18 = v16;
  if (v16 < v12)
  {
    v18 = v16;
    while (1)
    {
      v19 = [MEMORY[0x277CCAA70] indexPathForRow:v18 inSection:section];
      v20 = [(BookmarksTableViewController *)self tableView:viewCopy canMoveRowAtIndexPath:v19];

      if (v20)
      {
        break;
      }

      if (v12 == ++v18)
      {
        goto LABEL_12;
      }
    }
  }

  if (v18 == v12)
  {
LABEL_12:
    if ((v17 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v21 = [MEMORY[0x277CCAA70] indexPathForRow:v17 inSection:section];
        v22 = [(BookmarksTableViewController *)self tableView:viewCopy canMoveRowAtIndexPath:v21];

        if (v22)
        {
          break;
        }

        if (v17-- <= 0)
        {
          v18 = -1;
          goto LABEL_18;
        }
      }
    }

    v18 = v17;
  }

LABEL_18:
  v24 = [MEMORY[0x277CCAA70] indexPathForRow:v18 inSection:section];

  return v24;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  indexPathCopy = indexPath;
  section = [pathCopy section];
  section2 = [indexPathCopy section];
  v11 = [pathCopy row];
  v12 = [indexPathCopy row];

  if ([(BookmarksTableViewController *)self _inRootFolder])
  {
    v11 -= [(BookmarksTableViewController *)self _bookmarksRootFolderIndexOffset];
    v12 -= [(BookmarksTableViewController *)self _bookmarksRootFolderIndexOffset];
  }

  v13 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218752;
    v22 = v11;
    v23 = 2048;
    v24 = section;
    v25 = 2048;
    v26 = v12;
    v27 = 2048;
    v28 = section2;
    _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Move bookmark from row: %ld, section: %ld, to row: %ld, section: %ld", &v21, 0x2Au);
  }

  if (self->_activeSyntheticTabGroupFavoritesFolder)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    tabGroupProvider = [WeakRetained tabGroupProvider];

    v16 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];
    if (v12)
    {
      v17 = [MEMORY[0x277CCAA70] indexPathForRow:v12 inSection:section2];
      v18 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v17];
    }

    else
    {
      v18 = 0;
    }

    uUID = [v16 UUID];
    uUID2 = [v18 UUID];
    [tabGroupProvider reorderScopedBookmarkWithUUID:uUID afterBookmarkWithUUID:uUID2 notify:1];
  }

  else
  {
    [(WebBookmarkCollection *)self->_collection reorderList:self->_bookmarkList moveBookmarkAtIndex:v11 toIndex:v12];
  }
}

- (void)setScrollViewScrollsToTop:(BOOL)top
{
  topCopy = top;
  tableView = [(BookmarksTableViewController *)self tableView];
  [tableView setScrollsToTop:topCopy];
}

- (id)currentStateDictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  bookmarksNavigationController = [(BookmarksTableViewController *)self bookmarksNavigationController];
  topmostBookmarksTableViewController = [bookmarksNavigationController topmostBookmarksTableViewController];

  if (topmostBookmarksTableViewController)
  {
    folder = [topmostBookmarksTableViewController folder];
    uUID = [folder UUID];

    if (uUID)
    {
      v9 = @"CurrentFolderUUID";
      v10[0] = uUID;
      dictionary = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
    }

    dictionary2 = dictionary;
  }

  else
  {
    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return dictionary2;
}

- (BOOL)restoreStateWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"CurrentFolderUUID"];
  if (v4)
  {
    v5 = [(WebBookmarkCollection *)self->_collection bookmarkWithUUID:v4];
    v6 = v5;
    if (v5 && [v5 isFolder])
    {
      rootBookmark = [(WebBookmarkCollection *)self->_collection rootBookmark];
      identifier = [rootBookmark identifier];

      array = [MEMORY[0x277CBEB18] array];
      do
      {
        if ([v6 identifier] == identifier)
        {
          break;
        }

        [array addObject:v6];
        v10 = -[WebBookmarkCollection bookmarkWithID:](self->_collection, "bookmarkWithID:", [v6 parentID]);

        v6 = v10;
      }

      while (v10);
      v11 = [v6 identifier] == identifier;
      if (v11)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __59__BookmarksTableViewController_restoreStateWithDictionary___block_invoke;
        v13[3] = &unk_2781D5F00;
        v13[4] = self;
        [array enumerateObjectsWithOptions:2 usingBlock:v13];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __59__BookmarksTableViewController_restoreStateWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 navigationController];
  v5 = [*(a1 + 32) _newViewControllerForFolder:v4 syntheticFolder:0 showAllSyntheticFolders:0];

  [v6 pushViewController:v5 animated:0];
}

- (id)selectedBookmarks
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  tableView = [(BookmarksTableViewController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v6 = [indexPathsForSelectedRows countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v10 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:*(*(&v12 + 1) + 8 * i)];
        if (v10)
        {
          [array addObject:v10];
        }
      }

      v7 = [indexPathsForSelectedRows countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (BOOL)hasTranslucentAppearance
{
  v6.receiver = self;
  v6.super_class = BookmarksTableViewController;
  if ([(SFPopoverSizingTableViewController *)&v6 hasTranslucentAppearance])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained panelViewControllerShouldTranslucentAppearance:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  tabGroupProvider = [WeakRetained tabGroupProvider];

  return tabGroupProvider;
}

- (void)bookmark:(id)bookmark didProduceNavigationIntent:(id)intent userInfo:(id)info
{
  intentCopy = intent;
  navigationIntents = [intentCopy navigationIntents];
  v12 = navigationIntents;
  if (navigationIntents)
  {
    v8 = [navigationIntents count];
  }

  else
  {
    v8 = 1;
  }

  if ([intentCopy policy] == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didVisitBookmarksWithOpenLocation:v9 numberOfBookmarksVisited:v8];

  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained dispatchNavigationIntent:intentCopy];
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

    [(BookmarksTableViewController *)self reloadBookmarks];
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  userTypedFilter = self->_userTypedFilter;
  self->_userTypedFilter = &stru_2827BF158;

  [(BookmarksTableViewController *)self reloadBookmarks];
}

- (id)_dragItemsAtIndexPath:(id)path includingFolders:(BOOL)folders
{
  foldersCopy = folders;
  v15[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained bookmarksTableViewIsReadOnly:self];

  if ((v8 & 1) != 0 || (v10 = [pathCopy row], v10 < -[BookmarksTableViewController _bookmarksRootFolderIndexOffset](self, "_bookmarksRootFolderIndexOffset")) && -[BookmarksTableViewController _inRootFolder](self, "_inRootFolder"))
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];
    v12 = v11;
    if (v11 && (![v11 isFolder] || foldersCopy))
    {
      v13 = [objc_alloc(MEMORY[0x277D75470]) _sf_initWithBookmark:v12];
      v15[0] = v13;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }
  }

  return v9;
}

- (void)tableView:(id)view dragSessionWillBegin:(id)begin
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didStartDragWithDragContentType:8];
}

- (BOOL)tableView:(id)view canHandleDropSession:(id)session
{
  sessionCopy = session;
  if (self->_skipOffset || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v7 = [WeakRetained bookmarksTableViewIsReadOnly:self], WeakRetained, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else if ([(BookmarksTableViewController *)self isEditing])
  {
    v8 = [MEMORY[0x277D7B5A0] _sf_operationForDropSession:sessionCopy destinationSubtype:self->_activeSyntheticTabGroupFavoritesFolder != 0] == 3;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = [MEMORY[0x277D7B5A0] _sf_operationForDropSession:update destinationSubtype:self->_activeSyntheticTabGroupFavoritesFolder != 0];
  if (v10 > 1)
  {
    v12 = v10;
    if (pathCopy && (v13 = [pathCopy row], v13 <= objc_msgSend(viewCopy, "numberOfRowsInSection:", objc_msgSend(pathCopy, "section"))))
    {
      v15 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:pathCopy];
      isFolder = [v15 isFolder];

      if (isFolder)
      {
        v14 = 3;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }

    v11 = [objc_alloc(MEMORY[0x277D75B68]) initWithDropOperation:v12 intent:v14];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D75B68]) initWithDropOperation:1];
  }

  v17 = v11;

  return v17;
}

- (void)_moveBookmarks:(id)bookmarks toFolderID:(int)d toIndex:(unsigned int)index shouldReorder:(BOOL)reorder isAddingBookmark:(BOOL)bookmark
{
  bookmarkCopy = bookmark;
  v9 = *&d;
  v28 = *MEMORY[0x277D85DE8];
  bookmarksCopy = bookmarks;
  [(WebBookmarkCollection *)self->_collection dropBookmarks:bookmarksCopy inFolderWithID:v9 presentingViewController:self isAddingBookmark:bookmarkCopy];
  if (reorder)
  {
    [(BookmarksTableViewController *)self _recreateBookmarkLists];
    if (self->_bookmarkList)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v20 = bookmarksCopy;
      obj = [bookmarksCopy reverseObjectEnumerator];
      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            collection = self->_collection;
            bookmarkList = self->_bookmarkList;
            bookmarkArray = [(WebBookmarkList *)bookmarkList bookmarkArray];
            -[WebBookmarkCollection reorderList:moveBookmarkAtIndex:toIndex:](collection, "reorderList:moveBookmarkAtIndex:toIndex:", bookmarkList, [bookmarkArray indexOfObject:v16], index);
          }

          v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      bookmarksCopy = v20;
    }
  }

  else
  {
    [(BookmarksTableViewController *)self reloadBookmarks];
  }
}

- (void)tableView:(id)view performDropWithCoordinator:(id)coordinator
{
  v30[1] = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  session = [coordinatorCopy session];
  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  v7 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:destinationIndexPath];
  if (-[WebBookmark isFolder](v7, "isFolder") && ([coordinatorCopy proposal], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "intent"), v8, v9 == 2))
  {
    v10 = 1;
    folder = v7;
  }

  else
  {
    v10 = 0;
    folder = self->_folder;
  }

  identifier = [(WebBookmark *)folder identifier];
  items = [coordinatorCopy items];
  v14 = [items objectAtIndexedSubscript:0];
  dragItem = [v14 dragItem];
  _sf_localBookmark = [dragItem _sf_localBookmark];

  v17 = [destinationIndexPath row];
  v18 = 0;
  if (destinationIndexPath && (v10 & 1) == 0)
  {
    v18 = [(WebBookmarkList *)self->_bookmarkList bookmarkCount]> v17;
  }

  proposal = [coordinatorCopy proposal];
  operation = [proposal operation];

  if (operation == 2)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __69__BookmarksTableViewController_tableView_performDropWithCoordinator___block_invoke;
    v26[3] = &unk_2781D5F28;
    v26[4] = self;
    v27 = identifier;
    v28 = v17;
    v29 = v18;
    [MEMORY[0x277D7B5A0] _sf_webBookmarksFromDropSession:session completionHandler:v26];
  }

  else if (operation == 3)
  {
    if ([_sf_localBookmark parentID] == identifier)
    {
      tableView = [(BookmarksTableViewController *)self tableView];
      if ([tableView hasActiveDrag])
      {
      }

      else
      {
        bookmarkArray = [(WebBookmarkList *)self->_bookmarkList bookmarkArray];
        v24 = [bookmarkArray indexOfObject:_sf_localBookmark] < v17;

        v17 = (v17 - v24);
      }
    }

    v30[0] = _sf_localBookmark;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [(BookmarksTableViewController *)self _moveBookmarks:v23 toFolderID:identifier toIndex:v17 shouldReorder:v18 isAddingBookmark:0];
  }
}

void __69__BookmarksTableViewController_tableView_performDropWithCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) _moveBookmarks:v3 toFolderID:*(a1 + 40) toIndex:*(a1 + 44) shouldReorder:*(a1 + 48) isAddingBookmark:1];
  }
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  [inset adjustedContentInset];
  if (v4 > 0.0)
  {

    [(BookmarksTableViewController *)self _updateContentOffsetIfNeeded];
  }
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  v3 = WebBookmarksRootBookmarkTitle();
  [stateCopy setTitle:v3];

  [stateCopy setEligibleForSearch:1];
  [stateCopy setEligibleForPrediction:1];
}

- (BookmarksTableViewControllerDelegate)delegate
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

@end
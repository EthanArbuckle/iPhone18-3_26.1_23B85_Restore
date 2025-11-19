@interface BookmarksTableViewController
- (BOOL)_bookmarkAtIndexPathIsFolder:(id)a3;
- (BOOL)hasTranslucentAppearance;
- (BOOL)restoreStateWithDictionary:(id)a3;
- (BOOL)tableView:(id)a3 canFocusRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldSpringLoadRowAtIndexPath:(id)a4 withContext:(id)a5;
- (BookmarksTableViewController)initWithFolder:(id)a3 inCollection:(id)a4 activeSyntheticFolder:(id)a5 showAllSyntheticFolders:(BOOL)a6 skipOffset:(unsigned int)a7;
- (BookmarksTableViewController)initWithManagedFolder:(id)a3;
- (BookmarksTableViewControllerDelegate)delegate;
- (LinkPreviewProvider)linkPreviewProvider;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_bookmarkAtIndexPath:(id)a3;
- (id)_dragItemsAtIndexPath:(id)a3 includingFolders:(BOOL)a4;
- (id)_fontForCurrentTraitCollection;
- (id)_managedBookmarkAtIndexPath:(id)a3;
- (id)_newViewControllerForFolder:(id)a3 syntheticFolder:(id)a4 showAllSyntheticFolders:(BOOL)a5;
- (id)_newViewControllerForManagedFolder:(id)a3;
- (id)_syntheticFolderAtIndexPath:(id)a3;
- (id)_tableViewCellForBookmark:(id)a3 syntheticFolder:(id)a4 managedBookmark:(id)a5;
- (id)backgroundColorUsingTranslucentAppearance:(BOOL)a3;
- (id)bookmarksTableViewCellWithReuseIdentifier:(id)a3;
- (id)currentStateDictionary;
- (id)selectedBookmarks;
- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)tableView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)tableView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int)folderID;
- (int64_t)_bookmarksRootFolderIndexOffset;
- (int64_t)minimumNumberOfRows;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_commonInit;
- (void)_deleteBookmark:(id)a3 atIndexPath:(id)a4;
- (void)_handleBookmarkItemDeleted:(BOOL)a3 atIndexPath:(id)a4 bookmarkCountBeforeDeletion:(unint64_t)a5 lockedDatabase:(BOOL)a6;
- (void)_moveBookmarks:(id)a3 toFolderID:(int)a4 toIndex:(unsigned int)a5 shouldReorder:(BOOL)a6 isAddingBookmark:(BOOL)a7;
- (void)_pushInfoViewControllerForBookmark:(id)a3;
- (void)_recreateBookmarkLists;
- (void)_updateContentOffsetIfNeeded;
- (void)_updateTableViewCellsTextStyleForEditing:(BOOL)a3;
- (void)_updateTitle;
- (void)bookmark:(id)a3 didProduceNavigationIntent:(id)a4 userInfo:(id)a5;
- (void)contentSizeCategoryDidChange;
- (void)loadView;
- (void)managedBookmarksDidChange;
- (void)reloadAllSyntheticFolders;
- (void)reloadBookmarks;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)setCollection:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFolder:(id)a3;
- (void)setPreviewing:(BOOL)a3;
- (void)setScrollViewScrollsToTop:(BOOL)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)updateSeparatorInset;
- (void)updateSeparatorInsetForTraitChange;
- (void)updateUserActivityState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation BookmarksTableViewController

- (BookmarksTableViewController)initWithManagedFolder:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BookmarksTableViewController;
  v6 = [(BookmarksTableViewController *)&v10 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_managedBookmarkFolder, a3);
    [(BookmarksTableViewController *)v7 _commonInit];
    v8 = v7;
  }

  return v7;
}

- (BookmarksTableViewController)initWithFolder:(id)a3 inCollection:(id)a4 activeSyntheticFolder:(id)a5 showAllSyntheticFolders:(BOOL)a6 skipOffset:(unsigned int)a7
{
  v8 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v23.receiver = self;
  v23.super_class = BookmarksTableViewController;
  v16 = [(BookmarksTableViewController *)&v23 initWithStyle:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_folder, a3);
    objc_storeStrong(&v17->_collection, a4);
    v17->_skipOffset = a7;
    if (v15 && !v8)
    {
      v18 = [v15 bookmarkList];
      bookmarkList = v17->_bookmarkList;
      v17->_bookmarkList = v18;

      objc_storeStrong(&v17->_activeSyntheticTabGroupFavoritesFolder, a5);
    }

    if (v8)
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
  v3 = [(BookmarksTableViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = +[BookmarksTableViewCellLayoutManager sharedManager];
  [v5 setCurrentContentSizeCategory:v4];

  [(BookmarksTableViewController *)self _updateTitle];
  [(BookmarksTableViewController *)self _recreateBookmarkLists];
  v12[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [(BookmarksTableViewController *)self registerForTraitChanges:v6 withTarget:self action:sel_contentSizeCategoryDidChange];

  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9 = [(BookmarksTableViewController *)self registerForTraitChanges:v8 withTarget:self action:sel_updateSeparatorInsetForTraitChange, v11[0]];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_managedBookmarksDidChange name:*MEMORY[0x277D29058] object:0];
}

- (void)setCollection:(id)a3
{
  v5 = a3;
  if (self->_collection != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_collection, a3);
    [(BookmarksTableViewController *)self reloadBookmarks];
    v5 = v6;
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
    v5 = [(SFManagedBookmarkFolder *)managedBookmarkFolder title];
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
    v5 = ;
  }

  v6 = v5;
  v3[2](v3, v5);
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
      v6 = self->_managedBookmarksMatchingQuery;
      self->_managedBookmarksMatchingQuery = v5;
    }

    else
    {
      if (![(BookmarksTableViewController *)self _inRootFolder])
      {
        goto LABEL_7;
      }

      v6 = [MEMORY[0x277D28CD8] sharedController];
      v7 = [v6 topLevelManagedBookmarkFolder];
      v8 = [v7 bookmarksMatchingQueryString:self->_userTypedFilter];
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
  v25 = [WeakRetained tabGroupProvider];

  if (self->_activeSyntheticTabGroupFavoritesFolder)
  {
    v11 = [v25 perTabGroupBookmarkListForFolderID:-[WebBookmarkList folderID](self->_bookmarkList filteredUsingString:{"folderID"), self->_userTypedFilter}];
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
    v13 = [v25 allSyntheticBookmarkFolders];
    allSyntheticTabGroupFavoritesFolders = v13;
    if (!v13)
    {
      allSyntheticTabGroupFavoritesFolders = self->_allSyntheticTabGroupFavoritesFolders;
    }

    objc_storeStrong(&self->_allSyntheticTabGroupFavoritesFolders, allSyntheticTabGroupFavoritesFolders);

    v15 = [v25 perTabGroupBookmarkListForFolderID:0 filteredUsingString:self->_userTypedFilter];
    goto LABEL_16;
  }

  v17 = [MEMORY[0x277D7B590] sharedWebFilterSettings];
  v18 = [v17 usesAllowedSitesOnly];

  if (!v18)
  {
    v22 = [(WebBookmarkCollection *)self->_collection listWithID:[(WebBookmark *)self->_folder identifier] skipOffset:LODWORD(self->_skipOffset) includeHidden:0 includeDescendantsAsChildren:[(NSString *)self->_userTypedFilter length]!= 0 filteredUsingString:self->_userTypedFilter];
    v23 = self->_bookmarkList;
    self->_bookmarkList = v22;

    if ([(BookmarksTableViewController *)self _inRootFolder])
    {
      v24 = [v25 perTabGroupBookmarkListForFolderID:0 filteredUsingString:self->_userTypedFilter];
      [(WebBookmarkList *)self->_bookmarkList setShadowBookmarkList:v24];
    }

    v15 = [(WebBookmarkCollection *)self->_collection favoritesFolder];
    v16 = 1096;
    goto LABEL_23;
  }

  v19 = [(WebBookmarkCollection *)self->_collection webFilterAllowedSitesFolder];
  favoritesFolder = self->_favoritesFolder;
  self->_favoritesFolder = v19;

  if (![(BookmarksTableViewController *)self _inRootFolder])
  {
    v15 = [(WebBookmarkCollection *)self->_collection listWithID:[(WebBookmark *)self->_folder identifier] skipOffset:LODWORD(self->_skipOffset) includeHidden:0 includeDescendantsAsChildren:[(NSString *)self->_userTypedFilter length]!= 0 filteredUsingString:self->_userTypedFilter];
LABEL_16:
    v16 = 1088;
LABEL_23:
    v21 = *(&self->super.super.super.super.super.isa + v16);
    *(&self->super.super.super.super.super.isa + v16) = v15;
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
    v4 = [(BookmarksTableViewController *)self tableView];
    [v4 reloadData];

    [(BookmarksTableViewController *)self _updateTitle];
  }
}

- (void)managedBookmarksDidChange
{
  if (self->_managedBookmarkFolder && (-[BookmarksTableViewController viewIfLoaded](self, "viewIfLoaded"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v6 = [(BookmarksTableViewController *)self navigationController];
    v5 = [v6 popViewControllerAnimated:1];
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

- (void)setFolder:(id)a3
{
  objc_storeStrong(&self->_folder, a3);

  [(BookmarksTableViewController *)self reloadBookmarks];
}

- (void)setPreviewing:(BOOL)a3
{
  if (self->_previewing != a3)
  {
    v4 = a3;
    self->_previewing = a3;
    v6 = [(BookmarksTableViewController *)self tableView];
    v8 = v6;
    if (!self->_shouldUseSearchControllerInNavigationBar)
    {
      if (v4)
      {
        searchBar = 0;
      }

      else
      {
        searchBar = self->_searchBar;
      }

      [v6 setTableHeaderView:searchBar];
      v6 = v8;
    }

    [v6 setShowsVerticalScrollIndicator:!v4];
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
  v3 = [(BookmarksTableViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = +[BookmarksTableViewCellLayoutManager sharedManager];
  [v5 setCurrentContentSizeCategory:v4];

  [(BookmarksTableViewController *)self updateSeparatorInset];
  v6 = [(BookmarksTableViewController *)self tableView];
  [v6 setNeedsLayout];
}

- (void)updateSeparatorInset
{
  v3 = [(BookmarksTableViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

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
  v17 = [(BookmarksTableViewController *)self tableView];
  [v17 setSeparatorInsetReference:IsAccessibilityCategory];

  v18 = [(BookmarksTableViewController *)self tableView];
  [v18 setSeparatorInset:{v8, v16, v12, v14}];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = BookmarksTableViewController;
  [(SFPopoverSizingTableViewController *)&v14 viewDidLoad];
  self->_needsContentOffsetUpdate = 1;
  [(BookmarksTableViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  v3 = [(BookmarksTableViewController *)self tableView];
  [v3 setAutoresizingMask:18];
  [v3 setEstimatedRowHeight:44.0];
  [v3 setRowHeight:*MEMORY[0x277D76F30]];
  [v3 setAccessibilityIdentifier:@"BookmarksTable"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (self->_skipOffset)
  {
    [WeakRetained contentInsetForBookmarksTableViewController:self];
    [v3 setContentInset:?];
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

    v12 = [MEMORY[0x277D759E8] sf_installSearchBarInTableView:v3 includeSeparator:0];
    searchBar = self->_searchBar;
    self->_searchBar = v12;

    self->_needsInitialContentOffsetUpdateForTableHeaderView = 1;
    goto LABEL_11;
  }

  self->_shouldUseSearchControllerInNavigationBar = 1;
LABEL_5:
  v6 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [v6 setObscuresBackgroundDuringPresentation:0];
  v7 = [(BookmarksTableViewController *)self navigationItem];
  [v7 setPreferredSearchBarPlacement:2];

  v8 = [(BookmarksTableViewController *)self navigationItem];
  [v8 setSearchController:v6];

  v9 = [v6 searchBar];
  v10 = self->_searchBar;
  self->_searchBar = v9;

LABEL_11:
  [(UISearchBar *)self->_searchBar setDelegate:self];
LABEL_12:
  [(BookmarksTableViewController *)self updateSeparatorInset];
  if (self->_previewing)
  {
    [v3 setTableHeaderView:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = BookmarksTableViewController;
  [(SFPopoverSizingTableViewController *)&v10 viewWillAppear:a3];
  if (self->_managedBookmarkFolder && ([MEMORY[0x277D28CD8] sharedController], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "topLevelManagedBookmarkFolder"), v5 = objc_claimAutoreleasedReturnValue(), -[SFManagedBookmarkFolder uuid](self->_managedBookmarkFolder, "uuid"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "findChildBookmarkWithUUID:", v6), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v4, !v7))
  {
    v8 = [(BookmarksTableViewController *)self navigationController];
    v9 = [v8 popViewControllerAnimated:1];
  }

  else
  {
    [(BookmarksTableViewController *)self reloadBookmarks];
    [(BookmarksTableViewController *)self _updateContentOffsetIfNeeded];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = BookmarksTableViewController;
  [(SFPopoverSizingTableViewController *)&v9 viewDidAppear:a3];
  self->_needsContentOffsetUpdate = 0;
  v4 = [(BookmarksTableViewController *)self userActivity];
  v5 = [v4 activityType];
  v6 = *MEMORY[0x277CDB978];
  v7 = [v5 isEqualToString:*MEMORY[0x277CDB978]];

  if ((v7 & 1) == 0)
  {
    [v4 invalidate];
    v8 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:v6];

    [(BookmarksTableViewController *)self setUserActivity:v8];
    v4 = v8;
  }

  [v4 setNeedsSave:1];
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = BookmarksTableViewController;
  [(SFPopoverSizingTableViewController *)&v5 willMoveToParentViewController:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setPinnedPaletteForPanelViewController:self];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BookmarksTableViewController;
  [(BookmarksTableViewController *)&v6 viewWillDisappear:a3];
  [(UIViewController *)self safari_saveTableViewScrollPosition];
  v4 = [(BookmarksTableViewController *)self tableView];
  [(UITableView *)v4 safari_dismissContextMenu];

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
      v3 = [(BookmarksTableViewController *)self tableView];
      [(UITableView *)v3 safari_adjustContentOffsetToTopHidingTableHeaderView];

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
  v4 = [(BookmarksTableViewController *)self view];
  [v4 layoutMargins];
  [(UISearchBar *)searchBar _setOverrideContentInsets:10 forRectEdges:?];
}

- (int64_t)_bookmarksRootFolderIndexOffset
{
  v2 = [MEMORY[0x277D28CD8] sharedController];
  v3 = [v2 managedBookmarksController];
  v4 = [v3 managedBookmarks];

  if (v4)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = a3;
  managedBookmarkFolder = self->_managedBookmarkFolder;
  if (managedBookmarkFolder)
  {
    if (!self->_managedBookmarksMatchingQuery)
    {
      v9 = [(SFManagedBookmarkFolder *)managedBookmarkFolder children];
      v8 = [v9 count];

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

  v10 = [(WebBookmarkList *)self->_bookmarkList bookmarkCount];
  if ([(BookmarksTableViewController *)self _inRootFolder]&& ![(NSString *)self->_userTypedFilter length])
  {
    v10 += [(BookmarksTableViewController *)self _bookmarksRootFolderIndexOffset];
  }

  if ([(BookmarksTableViewController *)self _inRootFolder]&& [(NSString *)self->_userTypedFilter length])
  {
    v10 += [(NSArray *)self->_managedBookmarksMatchingQuery count];
  }

  v8 = v10;
LABEL_15:

  return v8;
}

- (id)_bookmarkAtIndexPath:(id)a3
{
  v4 = [a3 row];
  managedBookmarkFolder = self->_managedBookmarkFolder;
  if (managedBookmarkFolder)
  {
    if (!self->_managedBookmarksMatchingQuery)
    {
      v9 = [(SFManagedBookmarkFolder *)managedBookmarkFolder children];
      v7 = [v9 objectAtIndexedSubscript:v4];

      if ([v7 isFolder])
      {
        v10 = 0;
LABEL_21:

        goto LABEL_26;
      }

LABEL_20:
      v11 = objc_alloc(MEMORY[0x277D7B5A0]);
      v12 = [v7 title];
      v13 = [v7 urlString];
      v14 = [v7 uuid];
      v10 = [v11 initManagedBookmarkWithTitle:v12 address:v13 uuid:v14];

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

- (BOOL)_bookmarkAtIndexPathIsFolder:(id)a3
{
  v4 = a3;
  v5 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v4];
  if ([v5 isFolder])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(BookmarksTableViewController *)self _syntheticFolderAtIndexPath:v4];
    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v8 = [(BookmarksTableViewController *)self _managedBookmarkAtIndexPath:v4];
      v6 = [v8 isFolder];
    }
  }

  return v6;
}

- (id)_managedBookmarkAtIndexPath:(id)a3
{
  v4 = a3;
  if (-[BookmarksTableViewController _inRootFolder](self, "_inRootFolder") && [v4 row] == 2)
  {
    v5 = [MEMORY[0x277D28CD8] sharedController];
    v6 = [v5 managedBookmarksController];
    v7 = [v6 managedBookmarks];
    if (v7)
    {
      v8 = v7;
      v9 = [(NSString *)self->_userTypedFilter length];

      if (!v9)
      {
        v10 = [MEMORY[0x277D28CD8] sharedController];
        v11 = [v10 topLevelManagedBookmarkFolder];
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
    v14 = -[NSArray objectAtIndexedSubscript:](managedBookmarksMatchingQuery, "objectAtIndexedSubscript:", [v4 row]);
    goto LABEL_13;
  }

  v10 = [(SFManagedBookmarkFolder *)managedBookmarkFolder children];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
LABEL_12:
  v14 = v11;

LABEL_13:

  return v14;
}

- (id)_syntheticFolderAtIndexPath:(id)a3
{
  v4 = a3;
  if (-[BookmarksTableViewController _inRootFolder](self, "_inRootFolder") && [v4 row] == 1 && !-[NSString length](self->_userTypedFilter, "length"))
  {
    v10 = objc_alloc(MEMORY[0x277D28D68]);
    v11 = _WBSLocalizedString();
    v9 = [v10 initWithBookmarkList:0 title:v11];
  }

  else
  {
    v5 = [(NSArray *)self->_allSyntheticTabGroupFavoritesFolders count];
    v6 = [v4 row];
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

- (id)bookmarksTableViewCellWithReuseIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BookmarksTableViewController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:v4];

  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v4];
    v7 = +[BookmarksTableViewCellLayoutManager sharedManager];
    [v6 setLayoutManager:v7];

    v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
    v9 = [v6 imageView];
    [v9 setPreferredSymbolConfiguration:v8];
  }

  v10 = [(BookmarksTableViewController *)self hasTranslucentAppearance];
  if (v10)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [v6 backgroundColor];
  }
  v11 = ;
  [v6 setBackgroundColor:v11];

  [v6 sf_setUsesVibrantSelection:v10];

  return v6;
}

- (id)backgroundColorUsingTranslucentAppearance:(BOOL)a3
{
  if (a3)
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = 0;
  if (!a4 && !self->_shouldUseSearchControllerInNavigationBar)
  {
    v6 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:@"BookmarkSpacingHeaderReuseIdentifier"];
    if (!v6)
    {
      v6 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"BookmarkSpacingHeaderReuseIdentifier"];
    }

    v4 = vars8;
  }

  return v6;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (!self->_shouldUseSearchControllerInNavigationBar)
  {
    if (!a4)
    {
      return 12.0;
    }

    return 0.0;
  }

  if (a4)
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
  v2 = [(BookmarksTableViewController *)self traitCollection];
  v3 = [v2 verticalSizeClass];
  v4 = *MEMORY[0x277D76918];
  if (v3 == 1)
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

- (id)_tableViewCellForBookmark:(id)a3 syntheticFolder:(id)a4 managedBookmark:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 || -[BookmarksTableViewController _isShowingAllSyntheticFolders](self, "_isShowingAllSyntheticFolders") || ([v8 isFolder] & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = [v10 isFolder];
  }

  v12 = [(BookmarksTableViewController *)self traitCollection];
  v13 = [v12 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v13);

  if (v11)
  {
    v15 = @"FolderTableCell";
  }

  else
  {
    v15 = @"BookmarkTableCell";
  }

  v16 = [(BookmarksTableViewController *)self bookmarksTableViewCellWithReuseIdentifier:v15];
  v17 = [v16 textLabel];
  v18 = [MEMORY[0x277D75348] labelColor];
  [v17 setTextColor:v18];

  v19 = [(BookmarksTableViewController *)self _fontForCurrentTraitCollection];
  [v17 setFont:v19];

  v20 = [v16 imageView];
  [v20 setTintColor:0];
  if (v11)
  {
    if (v10)
    {
      v21 = v10;
    }

    else
    {
      if (!v9)
      {
        v28 = [v8 localizedTitle];
        goto LABEL_19;
      }

      v21 = v9;
    }

    v28 = [v21 title];
LABEL_19:
    v29 = v28;
    [v17 setText:v28];

    [v16 setAccessoryType:1];
    [v16 setEditingAccessoryType:0];
    v30 = [(BookmarksTableViewController *)self _isShowingAllSyntheticFolders];
    if (v8)
    {
      if (!v30)
      {
        v31 = [v8 identifier];
        if (v31 == [(WebBookmark *)self->_favoritesFolder identifier])
        {
          v32 = [MEMORY[0x277D7B590] sharedWebFilterSettings];
          v33 = [v32 usesAllowedSitesOnly];

          if (!v33)
          {
            if (IsAccessibilityCategory)
            {
              [v20 setImage:0];
            }

            else
            {
              v38 = [MEMORY[0x277D755B8] systemImageNamed:@"star"];
              [v20 setImage:v38];
            }

            if (![(BookmarksTableViewController *)self isEditing])
            {
              goto LABEL_38;
            }

            v39 = [MEMORY[0x277D75348] secondaryLabelColor];
            [v17 setTextColor:v39];

            v36 = [MEMORY[0x277D75348] secondaryLabelColor];
            [v20 setTintColor:v36];
            goto LABEL_37;
          }

          goto LABEL_32;
        }
      }
    }

    if (v9)
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
      if (!v10 || ![(BookmarksTableViewController *)self _inRootFolder])
      {
LABEL_32:
        if (IsAccessibilityCategory)
        {
          goto LABEL_33;
        }

        v34 = MEMORY[0x277D755B8];
        v35 = @"folder";
LABEL_36:
        v36 = [v34 systemImageNamed:v35];
        [v20 setImage:v36];
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
    [v20 setImage:0];
LABEL_38:
    [v16 setAccessibilityIdentifier:@"BookmarksSidebarTableFolderCellView"];
    goto LABEL_39;
  }

  [v16 safari_annotateWithBookmark:v8];
  [v16 setAccessoryType:0];
  [v16 setEditingAccessoryType:{objc_msgSend(v8, "isEditable")}];
  v22 = [v8 title];
  v23 = MEMORY[0x277CBEBC0];
  v24 = [v8 address];
  v25 = [v23 URLWithString:v24];
  [(UITableViewCell *)v16 safari_setLinkedPageTitle:v22 URL:v25];

  if (IsAccessibilityCategory)
  {
    [v20 setImage:0];
  }

  else
  {
    v26 = [MEMORY[0x277D755B8] systemImageNamed:@"book"];
    [v20 setImage:v26];
  }

  [v16 setAccessibilityIdentifier:@"BookmarksSidebarTableCellView"];
  if (v10)
  {
    v27 = [v10 title];
    [v17 setText:v27];
  }

LABEL_39:

  return v16;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(BookmarksTableViewController *)self _managedBookmarkAtIndexPath:v5];
  v7 = [(BookmarksTableViewController *)self _syntheticFolderAtIndexPath:v5];
  v8 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v5];

  v9 = [(BookmarksTableViewController *)self _tableViewCellForBookmark:v8 syntheticFolder:v7 managedBookmark:v6];

  return v9;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(BookmarksTableViewController *)self isEditing])
  {
    v6 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v5];
    if ([v6 isEditable])
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)_pushInfoViewControllerForBookmark:(id)a3
{
  v4 = MEMORY[0x277CDB760];
  v5 = a3;
  v8 = [[v4 alloc] initWithBookmark:v5 inCollection:self->_collection addingBookmark:{objc_msgSend(v5, "isInserted") ^ 1}];

  [v8 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setPinnedPaletteForPanelViewController:self];
  }

  v7 = [(BookmarksTableViewController *)self navigationController];
  [v7 pushViewController:v8 animated:1];
}

- (id)_newViewControllerForFolder:(id)a3 syntheticFolder:(id)a4 showAllSyntheticFolders:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[BookmarksTableViewController alloc] initWithFolder:v9 inCollection:self->_collection activeSyntheticFolder:v8 showAllSyntheticFolders:v5 skipOffset:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(BookmarksTableViewController *)v10 setDelegate:WeakRetained];

  v12 = objc_loadWeakRetained(&self->_linkPreviewProvider);
  [(BookmarksTableViewController *)v10 setLinkPreviewProvider:v12];

  v13 = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [(BookmarksTableViewController *)v10 setNavigationIntentHandler:v13];

  return v10;
}

- (id)_newViewControllerForManagedFolder:(id)a3
{
  v4 = a3;
  v5 = [[BookmarksTableViewController alloc] initWithManagedFolder:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(BookmarksTableViewController *)v5 setDelegate:WeakRetained];

  v7 = objc_loadWeakRetained(&self->_linkPreviewProvider);
  [(BookmarksTableViewController *)v5 setLinkPreviewProvider:v7];

  v8 = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [(BookmarksTableViewController *)v5 setNavigationIntentHandler:v8];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!-[BookmarksTableViewController isEditing](self, "isEditing") || (-[BookmarksTableViewController tableView](self, "tableView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 hasActiveDrag], v8, (v9 & 1) != 0))
  {
    v10 = [(BookmarksTableViewController *)self _managedBookmarkAtIndexPath:v7];
    if ([v10 isFolder])
    {
      v11 = [(BookmarksTableViewController *)self _newViewControllerForManagedFolder:v10];
      v12 = [(BookmarksTableViewController *)self navigationController];
      [v12 pushViewController:v11 animated:1];

LABEL_23:
      goto LABEL_24;
    }

    v13 = [(BookmarksTableViewController *)self _syntheticFolderAtIndexPath:v7];
    v11 = v13;
    if (v13)
    {
      v14 = [v13 bookmarkList];
      v15 = [(BookmarksTableViewController *)self _newViewControllerForFolder:0 syntheticFolder:v11 showAllSyntheticFolders:v14 == 0];

      v16 = [(BookmarksTableViewController *)self navigationController];
      [v16 pushViewController:v15 animated:1];

      goto LABEL_23;
    }

    v19 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v7];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__BookmarksTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    aBlock[3] = &unk_2781D58E8;
    aBlock[4] = self;
    v20 = v19;
    v38 = v20;
    v21 = v7;
    v39 = v21;
    v22 = _Block_copy(aBlock);
    v23 = [v20 isFolder];
    v24 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        log = v24;
        v26 = [v21 row];
        v27 = [v21 section];
        v28 = [v6 numberOfRowsInSection:{objc_msgSend(v21, "section")}];
        *buf = 134218496;
        v41 = v26;
        v42 = 2048;
        v43 = v27;
        v44 = 2048;
        v45 = v28;
        _os_log_impl(&dword_215819000, log, OS_LOG_TYPE_DEFAULT, "Tap bookmark folder at row: %ld, section: %ld, rows in section: %ld", buf, 0x20u);
      }

      if (![MEMORY[0x277D28F40] shouldOpenBookmarkFolderAsTabs])
      {
        v29 = [(BookmarksTableViewController *)self _newViewControllerForFolder:v20 syntheticFolder:0 showAllSyntheticFolders:0];
        v30 = [(BookmarksTableViewController *)self navigationController];
        [v30 pushViewController:v29 animated:1];

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
        v33 = [v21 section];
        v34 = [v6 numberOfRowsInSection:{objc_msgSend(v21, "section")}];
        *buf = 134218496;
        v41 = v32;
        v42 = 2048;
        v43 = v33;
        v44 = 2048;
        v45 = v34;
        _os_log_impl(&dword_215819000, v31, OS_LOG_TYPE_DEFAULT, "Tap bookmark at row: %ld, section: %ld, rows in section: %ld", buf, 0x20u);
      }

      v35 = [MEMORY[0x277D499B8] sharedLogger];
      [v35 didVisitBookmarksWithOpenLocation:0 numberOfBookmarksVisited:1];
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
    v41 = [v7 row];
    v42 = 2048;
    v43 = [v7 section];
    v44 = 2048;
    v45 = [v6 numberOfRowsInSection:{objc_msgSend(v7, "section")}];
    _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_DEFAULT, "Tap to edit bookmark at row: %ld, section: %ld, rows in section: %ld", buf, 0x20u);
  }

  v10 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v7];
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

- (BOOL)tableView:(id)a3 shouldSpringLoadRowAtIndexPath:(id)a4 withContext:(id)a5
{
  v5 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:a4];
  v6 = [v5 isFolder];

  return v6;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained bookmarksTableViewIsReadOnly:self];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v6];
    v11 = [(BookmarksTableViewController *)self _syntheticFolderAtIndexPath:v6];
    v12 = [(BookmarksTableViewController *)self _managedBookmarkAtIndexPath:v6];
    v13 = MEMORY[0x277D753B0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __90__BookmarksTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
    v22[3] = &unk_2781D5E88;
    v23 = v11;
    v24 = v10;
    v25 = self;
    v26 = v12;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__BookmarksTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
    v18[3] = &unk_2781D5EB0;
    v19 = v24;
    v20 = self;
    v21 = v6;
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

- (id)tableView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [a4 identifier];
  v7 = [v5 cellForRowAtIndexPath:v6];

  v8 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v7];

  return v8;
}

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 previewViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__BookmarksTableViewController_tableView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
  v15[3] = &unk_2781D5A50;
  v16 = v11;
  v17 = self;
  v18 = v8;
  v19 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v11;
  [v10 addAnimations:v15];
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

- (id)tableView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v5 = [a4 identifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(BookmarksTableViewController *)self _bookmarkAtIndexPathIsFolder:v5])
  {
    WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);
    [WeakRetained linkPreviewProviderWillDismissPreview];
  }

  return 0;
}

- (BOOL)tableView:(id)a3 canFocusRowAtIndexPath:(id)a4
{
  v4 = [(BookmarksTableViewController *)self tableView:a3 willSelectRowAtIndexPath:a4];
  v5 = v4 != 0;

  return v5;
}

- (void)_updateTableViewCellsTextStyleForEditing:(BOOL)a3
{
  v3 = a3;
  if ([(BookmarksTableViewController *)self _inRootFolder])
  {
    v11 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    v5 = [(BookmarksTableViewController *)self tableView];
    v6 = [v5 cellForRowAtIndexPath:v11];

    if (v6)
    {
      if (v3)
      {
        [MEMORY[0x277D75348] secondaryLabelColor];
      }

      else
      {
        [MEMORY[0x277D75348] labelColor];
      }
      v7 = ;
      v8 = [v6 textLabel];
      [v8 setTextColor:v7];

      if (v3)
      {
        v9 = [MEMORY[0x277D75348] secondaryLabelColor];
      }

      else
      {
        v9 = 0;
      }

      v10 = [v6 imageView];
      [v10 setTintColor:v9];

      if (v3)
      {
      }
    }
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BookmarksTableViewController;
  [BookmarksTableViewController setEditing:sel_setEditing_animated_ animated:?];
  [(BookmarksTableViewController *)self _updateTableViewCellsTextStyleForEditing:v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained panelViewController:self updateToolbarItemsAnimated:v4];
  }

  v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
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

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (!self->_skipOffset)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained bookmarksTableViewIsReadOnly:self];

    if ((v7 & 1) == 0)
    {
      v8 = +[FeatureManager sharedFeatureManager];
      v9 = [v8 isBookmarksAvailable];

      if (v9)
      {
        v10 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v5];
        if ([v10 isDeletable])
        {
          v11 = [(BookmarksTableViewController *)self bookmarksNavigationController];
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {

LABEL_12:
            v14 = 1;
            goto LABEL_10;
          }

          v12 = [(BookmarksTableViewController *)self bookmarksNavigationController];
          v13 = [v12 allowsEditing];

          if (v13)
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

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained bookmarksTableViewIsReadOnly:self];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v5];
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

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v7 = a5;
    v8 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v7];
    [(BookmarksTableViewController *)self _deleteBookmark:v8 atIndexPath:v7];
  }
}

- (void)_deleteBookmark:(id)a3 atIndexPath:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BookmarksTableViewController *)self tableView];
  v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 134218496;
    v31 = [v7 row];
    v32 = 2048;
    v33 = [v7 section];
    v34 = 2048;
    v35 = [v8 numberOfRowsInSection:{objc_msgSend(v7, "section")}];
    _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_DEFAULT, "Delete bookmark at row: %ld, section: %ld, rows in section: %ld", buf, 0x20u);
  }

  if ([v6 isDeletable])
  {
    v11 = [MEMORY[0x277D28BE0] sharedCoordinator];
    if ([v11 hasBookmarksLock])
    {
      v12 = 0;
      v13 = 0;
    }

    else if ([v11 lockBookmarks])
    {
      v13 = 0;
      v12 = 1;
    }

    else
    {
      v14 = +[FeatureManager sharedFeatureManager];
      v15 = [v14 isInMemoryBookmarkChangeTrackingAvailable];

      if ((v15 & 1) == 0)
      {
        [MEMORY[0x277D28BE0] showLockedDatabaseAlertForAction:0 fromViewController:self];
        v23 = [MEMORY[0x277D499B8] sharedLogger];
        [v23 didPreventBookmarkActionWithBookmarkType:0 actionType:1];

        v24 = [(BookmarksTableViewController *)self tableView];
        v25 = [v24 cellForRowAtIndexPath:v7];
        [v25 setEditing:0 animated:1];

LABEL_17:
        goto LABEL_18;
      }

      v12 = 0;
      v13 = 1;
    }

    v16 = [(WebBookmarkList *)self->_bookmarkList bookmarkCount];
    self->_shouldDeferReload = 1;
    if ([v6 subtype] == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v18 = [WeakRetained tabGroupProvider];
      v19 = [v6 UUID];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __60__BookmarksTableViewController__deleteBookmark_atIndexPath___block_invoke;
      v26[3] = &unk_2781D5ED8;
      v26[4] = self;
      v27 = v7;
      v28 = v16;
      v29 = v12;
      [v18 deleteScopedBookmarkWithUUID:v19 completionHandler:v26];
    }

    else
    {
      collection = self->_collection;
      if (v13)
      {
        [(WebBookmarkCollection *)collection deleteBookmarkInMemory:v6];
        v21 = [MEMORY[0x277D499B8] sharedLogger];
        [v21 didDeleteBookmarkInMemory];

        v22 = 1;
      }

      else
      {
        v22 = [(WebBookmarkCollection *)collection deleteBookmark:v6];
      }

      [(BookmarksTableViewController *)self _handleBookmarkItemDeleted:v22 atIndexPath:v7 bookmarkCountBeforeDeletion:v16 lockedDatabase:v12];
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_handleBookmarkItemDeleted:(BOOL)a3 atIndexPath:(id)a4 bookmarkCountBeforeDeletion:(unint64_t)a5 lockedDatabase:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v16[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = [(BookmarksTableViewController *)self tableView];
  [(BookmarksTableViewController *)self _recreateBookmarkLists];
  v12 = [(WebBookmarkList *)self->_bookmarkList bookmarkCount];
  if (v8)
  {
    v13 = v12;
    if (![v10 row] && -[BookmarksTableViewController _inRootFolder](self, "_inRootFolder"))
    {
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
      [v11 reloadSections:v14 withRowAnimation:0];
LABEL_7:

      goto LABEL_9;
    }

    if (a5 - 1 == v13)
    {
      v16[0] = v10;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [v11 deleteRowsAtIndexPaths:v14 withRowAnimation:2];
      goto LABEL_7;
    }
  }

  [v11 reloadData];
LABEL_9:
  self->_shouldDeferReload = 0;
  if (v6)
  {
    v15 = [MEMORY[0x277D28BE0] sharedCoordinator];
    [v15 unlockBookmarksSoon];
  }
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 section];
  v11 = [v9 section];
  v12 = [v8 numberOfRowsInSection:v10];
  if (v11 >= v10)
  {
    if (v11 <= v10)
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

  v15 = [v13 indexPathForRow:v14 inSection:v10];

  v9 = v15;
LABEL_6:
  v16 = [v9 row];
  v17 = v16;
  v18 = v16;
  if (v16 < v12)
  {
    v18 = v16;
    while (1)
    {
      v19 = [MEMORY[0x277CCAA70] indexPathForRow:v18 inSection:v10];
      v20 = [(BookmarksTableViewController *)self tableView:v8 canMoveRowAtIndexPath:v19];

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
        v21 = [MEMORY[0x277CCAA70] indexPathForRow:v17 inSection:v10];
        v22 = [(BookmarksTableViewController *)self tableView:v8 canMoveRowAtIndexPath:v21];

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
  v24 = [MEMORY[0x277CCAA70] indexPathForRow:v18 inSection:v10];

  return v24;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 section];
  v10 = [v8 section];
  v11 = [v7 row];
  v12 = [v8 row];

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
    v24 = v9;
    v25 = 2048;
    v26 = v12;
    v27 = 2048;
    v28 = v10;
    _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Move bookmark from row: %ld, section: %ld, to row: %ld, section: %ld", &v21, 0x2Au);
  }

  if (self->_activeSyntheticTabGroupFavoritesFolder)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = [WeakRetained tabGroupProvider];

    v16 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v7];
    if (v12)
    {
      v17 = [MEMORY[0x277CCAA70] indexPathForRow:v12 inSection:v10];
      v18 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v17];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v16 UUID];
    v20 = [v18 UUID];
    [v15 reorderScopedBookmarkWithUUID:v19 afterBookmarkWithUUID:v20 notify:1];
  }

  else
  {
    [(WebBookmarkCollection *)self->_collection reorderList:self->_bookmarkList moveBookmarkAtIndex:v11 toIndex:v12];
  }
}

- (void)setScrollViewScrollsToTop:(BOOL)a3
{
  v3 = a3;
  v4 = [(BookmarksTableViewController *)self tableView];
  [v4 setScrollsToTop:v3];
}

- (id)currentStateDictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [(BookmarksTableViewController *)self bookmarksNavigationController];
  v3 = [v2 topmostBookmarksTableViewController];

  if (v3)
  {
    v4 = [v3 folder];
    v5 = [v4 UUID];

    if (v5)
    {
      v9 = @"CurrentFolderUUID";
      v10[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v6 = [MEMORY[0x277CBEAC0] dictionary];
    }

    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return v7;
}

- (BOOL)restoreStateWithDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"CurrentFolderUUID"];
  if (v4)
  {
    v5 = [(WebBookmarkCollection *)self->_collection bookmarkWithUUID:v4];
    v6 = v5;
    if (v5 && [v5 isFolder])
    {
      v7 = [(WebBookmarkCollection *)self->_collection rootBookmark];
      v8 = [v7 identifier];

      v9 = [MEMORY[0x277CBEB18] array];
      do
      {
        if ([v6 identifier] == v8)
        {
          break;
        }

        [v9 addObject:v6];
        v10 = -[WebBookmarkCollection bookmarkWithID:](self->_collection, "bookmarkWithID:", [v6 parentID]);

        v6 = v10;
      }

      while (v10);
      v11 = [v6 identifier] == v8;
      if (v11)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __59__BookmarksTableViewController_restoreStateWithDictionary___block_invoke;
        v13[3] = &unk_2781D5F00;
        v13[4] = self;
        [v9 enumerateObjectsWithOptions:2 usingBlock:v13];
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
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BookmarksTableViewController *)self tableView];
  v5 = [v4 indexPathsForSelectedRows];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:*(*(&v12 + 1) + 8 * i)];
        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
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

- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained tabGroupProvider];

  return v4;
}

- (void)bookmark:(id)a3 didProduceNavigationIntent:(id)a4 userInfo:(id)a5
{
  v6 = a4;
  v7 = [v6 navigationIntents];
  v12 = v7;
  if (v7)
  {
    v8 = [v7 count];
  }

  else
  {
    v8 = 1;
  }

  if ([v6 policy] == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x277D499B8] sharedLogger];
  [v10 didVisitBookmarksWithOpenLocation:v9 numberOfBookmarksVisited:v8];

  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained dispatchNavigationIntent:v6];
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

    [(BookmarksTableViewController *)self reloadBookmarks];
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  userTypedFilter = self->_userTypedFilter;
  self->_userTypedFilter = &stru_2827BF158;

  [(BookmarksTableViewController *)self reloadBookmarks];
}

- (id)_dragItemsAtIndexPath:(id)a3 includingFolders:(BOOL)a4
{
  v4 = a4;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained bookmarksTableViewIsReadOnly:self];

  if ((v8 & 1) != 0 || (v10 = [v6 row], v10 < -[BookmarksTableViewController _bookmarksRootFolderIndexOffset](self, "_bookmarksRootFolderIndexOffset")) && -[BookmarksTableViewController _inRootFolder](self, "_inRootFolder"))
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v6];
    v12 = v11;
    if (v11 && (![v11 isFolder] || v4))
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

- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4
{
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didStartDragWithDragContentType:8];
}

- (BOOL)tableView:(id)a3 canHandleDropSession:(id)a4
{
  v5 = a4;
  if (self->_skipOffset || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v7 = [WeakRetained bookmarksTableViewIsReadOnly:self], WeakRetained, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else if ([(BookmarksTableViewController *)self isEditing])
  {
    v8 = [MEMORY[0x277D7B5A0] _sf_operationForDropSession:v5 destinationSubtype:self->_activeSyntheticTabGroupFavoritesFolder != 0] == 3;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)tableView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277D7B5A0] _sf_operationForDropSession:a4 destinationSubtype:self->_activeSyntheticTabGroupFavoritesFolder != 0];
  if (v10 > 1)
  {
    v12 = v10;
    if (v9 && (v13 = [v9 row], v13 <= objc_msgSend(v8, "numberOfRowsInSection:", objc_msgSend(v9, "section"))))
    {
      v15 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v9];
      v16 = [v15 isFolder];

      if (v16)
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

- (void)_moveBookmarks:(id)a3 toFolderID:(int)a4 toIndex:(unsigned int)a5 shouldReorder:(BOOL)a6 isAddingBookmark:(BOOL)a7
{
  v7 = a7;
  v9 = *&a4;
  v28 = *MEMORY[0x277D85DE8];
  v11 = a3;
  [(WebBookmarkCollection *)self->_collection dropBookmarks:v11 inFolderWithID:v9 presentingViewController:self isAddingBookmark:v7];
  if (a6)
  {
    [(BookmarksTableViewController *)self _recreateBookmarkLists];
    if (self->_bookmarkList)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v20 = v11;
      obj = [v11 reverseObjectEnumerator];
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
            v19 = [(WebBookmarkList *)bookmarkList bookmarkArray];
            -[WebBookmarkCollection reorderList:moveBookmarkAtIndex:toIndex:](collection, "reorderList:moveBookmarkAtIndex:toIndex:", bookmarkList, [v19 indexOfObject:v16], a5);
          }

          v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      v11 = v20;
    }
  }

  else
  {
    [(BookmarksTableViewController *)self reloadBookmarks];
  }
}

- (void)tableView:(id)a3 performDropWithCoordinator:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v25 = [v5 session];
  v6 = [v5 destinationIndexPath];
  v7 = [(BookmarksTableViewController *)self _bookmarkAtIndexPath:v6];
  if (-[WebBookmark isFolder](v7, "isFolder") && ([v5 proposal], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "intent"), v8, v9 == 2))
  {
    v10 = 1;
    folder = v7;
  }

  else
  {
    v10 = 0;
    folder = self->_folder;
  }

  v12 = [(WebBookmark *)folder identifier];
  v13 = [v5 items];
  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = [v14 dragItem];
  v16 = [v15 _sf_localBookmark];

  v17 = [v6 row];
  v18 = 0;
  if (v6 && (v10 & 1) == 0)
  {
    v18 = [(WebBookmarkList *)self->_bookmarkList bookmarkCount]> v17;
  }

  v19 = [v5 proposal];
  v20 = [v19 operation];

  if (v20 == 2)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __69__BookmarksTableViewController_tableView_performDropWithCoordinator___block_invoke;
    v26[3] = &unk_2781D5F28;
    v26[4] = self;
    v27 = v12;
    v28 = v17;
    v29 = v18;
    [MEMORY[0x277D7B5A0] _sf_webBookmarksFromDropSession:v25 completionHandler:v26];
  }

  else if (v20 == 3)
  {
    if ([v16 parentID] == v12)
    {
      v21 = [(BookmarksTableViewController *)self tableView];
      if ([v21 hasActiveDrag])
      {
      }

      else
      {
        v22 = [(WebBookmarkList *)self->_bookmarkList bookmarkArray];
        v24 = [v22 indexOfObject:v16] < v17;

        v17 = (v17 - v24);
      }
    }

    v30[0] = v16;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [(BookmarksTableViewController *)self _moveBookmarks:v23 toFolderID:v12 toIndex:v17 shouldReorder:v18 isAddingBookmark:0];
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

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  [a3 adjustedContentInset];
  if (v4 > 0.0)
  {

    [(BookmarksTableViewController *)self _updateContentOffsetIfNeeded];
  }
}

- (void)updateUserActivityState:(id)a3
{
  v4 = a3;
  v3 = WebBookmarksRootBookmarkTitle();
  [v4 setTitle:v3];

  [v4 setEligibleForSearch:1];
  [v4 setEligibleForPrediction:1];
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
@interface BookmarksNavigationController
- (BOOL)_createSavedPanelStateForTesting;
- (BOOL)_isVisibleFolderID:(int)d;
- (BOOL)_shouldShowPaletteForViewController:(id)controller;
- (BOOL)bookmarksTableViewIsReadOnly:(id)only;
- (BOOL)bookmarksTableViewShouldDispatchNavigationIntent:(id)intent forSelectedBookmark:(id)bookmark;
- (BOOL)rebaseOnAncestorBookmark:(id)bookmark skipOffset:(unsigned int)offset;
- (BOOL)rebaseOnDescendentBookmark:(id)bookmark;
- (BookmarksNavigationControllerDelegate)bookmarksNavigationControllerDelegate;
- (LinkPreviewProvider)linkPreviewProvider;
- (TabGroupProvider)tabGroupProvider;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)contentInsetForBookmarksTableViewController:(id)controller;
- (UIEdgeInsets)separatorInsetForBookmarksTableViewController:(id)controller;
- (UIEdgeInsets)tableSeparatorInset;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (id)_favoritesFolderBasedOnContentRestriction;
- (id)_initWithBookmarksDelegate:(id)delegate linkPreviewProvider:(id)provider topBookmark:(id)bookmark skipOffset:(unsigned int)offset activeCollection:(id)collection showsOnlyActiveCollection:(BOOL)activeCollection;
- (id)_lastExistingBookmarkWithUUIDs:(id)ds;
- (id)_pathForBookmark:(id)bookmark startingFromAncestor:(id)ancestor;
- (id)_segmentedControlItemForCollection:(id)collection;
- (id)_toolbarItemsForViewController:(id)controller;
- (id)makeHistoryViewController;
- (id)newBookmarksTableViewControllerWithFolder:(id)folder skipOffset:(unsigned int)offset;
- (id)newRootViewControllerForCollection:(id)collection;
- (id)readingListViewControllerCurrentReadingListItem:(id)item;
- (id)rootBookmark;
- (id)topBookmarksTableViewController;
- (id)topHistoryViewController;
- (id)topReadingListViewController;
- (id)topmostBookmarksTableViewController;
- (void)_applicationSuspended:(id)suspended;
- (void)_bookmarkSyncTimerDidFire:(id)fire;
- (void)_clearBookmarkSyncTimer;
- (void)_createToolbarItemsIfNecessary;
- (void)_didPressNewFolderButton;
- (void)_doneButtonPressed;
- (void)_folderContentsDidChange:(id)change;
- (void)_keyboardWillShow:(id)show;
- (void)_loadSavedPanelState;
- (void)_reloadFailed;
- (void)_reloadFolderContentsForFolderIDIfNeeded:(int)needed;
- (void)_reloadSucceeded;
- (void)_restoreCurrentCollectionState;
- (void)_restorePanelState;
- (void)_savePanelState;
- (void)_selectedCollectionChanged:(id)changed;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)_setContentsDirty;
- (void)_setEditingFromToolbarButton:(BOOL)button;
- (void)_setupCollectionSegmentedControlIfNeeded;
- (void)_setupCollections;
- (void)_updateBookmarkCollection;
- (void)_updateClearHistoryButton;
- (void)_updateDoneButtonItemForViewController:(id)controller;
- (void)_updateToolbarItemsForViewController:(id)controller animated:(BOOL)animated;
- (void)_updateToolbarVisibility;
- (void)anySizeClassDidChange;
- (void)bookmarkSourceContentsChanged:(id)changed;
- (void)dealloc;
- (void)dispatchNavigationIntent:(id)intent;
- (void)handleNavigationIntent:(id)intent completion:(id)completion;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)panelViewController:(id)controller updateToolbarItemsAnimated:(BOOL)animated;
- (void)panelViewControllerDidBeginEditing:(id)editing;
- (void)readingListViewController:(id)controller setBookmark:(id)bookmark asRead:(BOOL)read;
- (void)readingListViewController:(id)controller updateUnreadFilterShowingAllBookmarks:(BOOL)bookmarks;
- (void)reloadViewControllers;
- (void)setAllowsEditing:(BOOL)editing;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setCurrentCollection:(id)collection;
- (void)setDoneButtonHidden:(BOOL)hidden;
- (void)setPinnedPaletteForPanelViewController:(id)controller;
- (void)setRootBookmark:(id)bookmark skipOffset:(unsigned int)offset;
- (void)setRootBookmarkUUIDString:(id)string;
- (void)setTableSeparatorInset:(UIEdgeInsets)inset;
- (void)tabGroupManager:(id)manager didRemoveTabGroupWithUUID:(id)d;
- (void)tabGroupManager:(id)manager didUpdateScopedBookmarkList:(id)list;
- (void)tabGroupManager:(id)manager didUpdateTabGroupWithUUID:(id)d;
- (void)tabGroupManagerDidUpdateTabGroups:(id)groups;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BookmarksNavigationController

- (id)_initWithBookmarksDelegate:(id)delegate linkPreviewProvider:(id)provider topBookmark:(id)bookmark skipOffset:(unsigned int)offset activeCollection:(id)collection showsOnlyActiveCollection:(BOOL)activeCollection
{
  activeCollectionCopy = activeCollection;
  v39[2] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  providerCopy = provider;
  bookmarkCopy = bookmark;
  collectionCopy = collection;
  v38.receiver = self;
  v38.super_class = BookmarksNavigationController;
  v18 = [(BookmarksNavigationController *)&v38 initWithNavigationBarClass:0 toolbarClass:0];
  v19 = v18;
  if (v18)
  {
    offsetCopy = offset;
    [(BookmarksNavigationController *)v18 setDelegate:v18];
    [(BookmarksNavigationController *)v19 _setClipUnderlapWhileTransitioning:1];
    v19->_prefersHalfHeightSheetPresentationWithLoweredBar = 1;
    objc_storeWeak(&v19->_bookmarksNavigationControllerDelegate, delegateCopy);
    objc_storeWeak(&v19->_linkPreviewProvider, providerCopy);
    initReadonlySafariBookmarkCollection = [objc_alloc(MEMORY[0x277D7B5B0]) initReadonlySafariBookmarkCollection];
    readonlyCollection = v19->_readonlyCollection;
    v19->_readonlyCollection = initReadonlySafariBookmarkCollection;

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mobilesafari.%@.%p", objc_opt_class(), v19];
    v23 = dispatch_queue_create([v22 UTF8String], 0);
    readonlyCollectionQueue = v19->_readonlyCollectionQueue;
    v19->_readonlyCollectionQueue = v23;

    if (collectionCopy)
    {
      v25 = activeCollectionCopy;
    }

    else
    {
      v25 = 0;
    }

    if (!bookmarkCopy && !v25)
    {
      v19->_showCollections = 1;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__bookmarkCollectionHasBecomeAvailable_ name:@"bookmarkCollectionHasBecomeAvailableNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76BA8] object:0];
    [(BookmarksNavigationController *)v19 _updateBookmarkCollection];
    mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
    usesAllowedSitesOnly = [mEMORY[0x277D7B590] usesAllowedSitesOnly];

    [(BookmarksNavigationController *)v19 setAllowsEditing:usesAllowedSitesOnly ^ 1u];
    v29 = [[BookmarkImporter alloc] initWithBookmarkCollection:v19->_bookmarkCollection];
    [(BookmarkImporter *)v29 migrateYouTubeBookmarks];
    v19->_contentDirtyFlag = 1;
    [(BookmarksNavigationController *)v19 _setupCollections];
    if (v25)
    {
      [(BookmarksNavigationController *)v19 setCurrentCollection:collectionCopy];
    }

    else if (v19->_showCollections)
    {
      [(BookmarksNavigationController *)v19 _loadSavedPanelState];
      [(BookmarksNavigationController *)v19 _restorePanelState];
    }

    else
    {
      v30 = [(BookmarksNavigationController *)v19 newBookmarksTableViewControllerWithFolder:bookmarkCopy skipOffset:offsetCopy];
      [(BookmarksNavigationController *)v19 pushViewController:v30 animated:0];
    }

    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v32 = [(BookmarksNavigationController *)v19 registerForTraitChanges:v31 withTarget:v19 action:sel_anySizeClassDidChange];

    systemTraitsAffectingColorAppearance = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v34 = [(BookmarksNavigationController *)v19 registerForTraitChanges:systemTraitsAffectingColorAppearance withTarget:v19 action:sel__setContentsDirty];

    v35 = v19;
  }

  return v19;
}

- (void)_keyboardWillShow:(id)show
{
  v4 = *MEMORY[0x277D76EC8];
  sheetPresentationController = [(BookmarksNavigationController *)self sheetPresentationController];
  [sheetPresentationController setSelectedDetentIdentifier:v4];

  view = [(BookmarksNavigationController *)self view];
  window = [view window];
  [window layoutIfNeeded];
}

- (void)_updateBookmarkCollection
{
  v23 = *MEMORY[0x277D85DE8];
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v4 = self->_bookmarkCollection;
  v5 = v4;
  if (v4)
  {
    v6 = v4 == mainBookmarkCollection;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    objc_storeStrong(&self->_bookmarkCollection, mainBookmarkCollection);
    if (self->_showCollections)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = *MEMORY[0x277D7B608];
      [defaultCenter removeObserver:self name:*MEMORY[0x277D7B608] object:v5];
      [defaultCenter addObserver:self selector:sel__webBookmarksDidReload_ name:v8 object:mainBookmarkCollection];
      v9 = *MEMORY[0x277D7B618];
      [defaultCenter removeObserver:self name:*MEMORY[0x277D7B618] object:v5];
      [defaultCenter addObserver:self selector:sel__folderContentsDidChange_ name:v9 object:mainBookmarkCollection];
    }

    v10 = +[Application sharedApplication];
    tabGroupManager = [v10 tabGroupManager];
    [tabGroupManager addTabGroupObserver:self];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    viewControllers = [(BookmarksNavigationController *)self viewControllers];
    v13 = [viewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(viewControllers);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 setCollection:mainBookmarkCollection];
          }
        }

        v14 = [viewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    [(BookmarksNavigationController *)self reloadViewControllers];
  }
}

- (void)_applicationSuspended:(id)suspended
{
  mEMORY[0x277D28BE0] = [MEMORY[0x277D28BE0] sharedCoordinator];
  [mEMORY[0x277D28BE0] unlockBookmarksIfNeeded];
}

- (void)_folderContentsDidChange:(id)change
{
  userInfo = [change userInfo];
  v6 = [userInfo safari_numberForKey:*MEMORY[0x277D7B5E8]];

  v5 = v6;
  if (v6)
  {
    -[BookmarksNavigationController _reloadFolderContentsForFolderIDIfNeeded:](self, "_reloadFolderContentsForFolderIDIfNeeded:", [v6 intValue]);
    v5 = v6;
  }
}

- (void)_reloadFolderContentsForFolderIDIfNeeded:(int)needed
{
  v3 = *&needed;
  v19 = *MEMORY[0x277D85DE8];
  topmostBookmarksTableViewController = [(BookmarksNavigationController *)self topmostBookmarksTableViewController];
  folderID = [topmostBookmarksTableViewController folderID];

  if ([(BookmarksNavigationController *)self _isVisibleFolderID:v3])
  {
    [(BookmarksNavigationController *)self _setContentsDirty];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  viewControllers = [(BookmarksNavigationController *)self viewControllers];
  v8 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(viewControllers);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          if ([v13 folderID] == v3)
          {
            if (folderID == v3)
            {
              [v13 reloadBookmarks];
            }

            else
            {
              [(BookmarksNavigationController *)self reloadViewControllers];
            }

            goto LABEL_18;
          }
        }
      }

      v9 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (BOOL)_isVisibleFolderID:(int)d
{
  topViewController = [(BookmarksNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    folder = [topViewController folder];
    v6 = [folder identifier] == d;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)anySizeClassDidChange
{
  topViewController = [(BookmarksNavigationController *)self topViewController];
  [(BookmarksNavigationController *)self _updateToolbarItemsForViewController:topViewController animated:0];

  [(BookmarksNavigationController *)self _setupCollectionSegmentedControlIfNeeded];
  if ([(UISegmentedControl *)self->_collectionSegmentedControl selectedSegmentIndex]== -1)
  {
    collectionSegmentedControl = self->_collectionSegmentedControl;
    v5 = [(NSArray *)self->_topLevelCollections indexOfObject:self->_currentCollection];

    [(UISegmentedControl *)collectionSegmentedControl setSelectedSegmentIndex:v5];
  }
}

- (id)topHistoryViewController
{
  topViewController = [(BookmarksNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = topViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)topBookmarksTableViewController
{
  topViewController = [(BookmarksNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = topViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)topmostBookmarksTableViewController
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewControllers = [(BookmarksNavigationController *)self viewControllers];
  reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];

  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)topReadingListViewController
{
  topViewController = [(BookmarksNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = topViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)rootBookmark
{
  viewControllers = [(BookmarksNavigationController *)self viewControllers];
  v3 = [viewControllers objectAtIndex:0];

  folder = [v3 folder];

  return folder;
}

- (void)setRootBookmark:(id)bookmark skipOffset:(unsigned int)offset
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = [(BookmarksNavigationController *)self newBookmarksTableViewControllerWithFolder:bookmark skipOffset:*&offset];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(BookmarksNavigationController *)self setViewControllers:v6];
}

- (void)setRootBookmarkUUIDString:(id)string
{
  v8[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:*MEMORY[0x277D4A4B0]])
    {
      _favoritesFolderBasedOnContentRestriction = [(BookmarksNavigationController *)self _favoritesFolderBasedOnContentRestriction];
      if (!_favoritesFolderBasedOnContentRestriction)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8[0] = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
      _favoritesFolderBasedOnContentRestriction = [(BookmarksNavigationController *)self _lastExistingBookmarkWithUUIDs:v7];

      if (!_favoritesFolderBasedOnContentRestriction)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    [(BookmarksNavigationController *)self setRootBookmark:_favoritesFolderBasedOnContentRestriction skipOffset:0];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v4 viewDidLoad];
  if (self->_showCollections)
  {
    view = [(BookmarksNavigationController *)self view];
    [view setAccessibilityIdentifier:@"Sidebar"];
  }
}

- (void)viewDidLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v20 viewDidLayoutSubviews];
  if (self->_showCollections)
  {
    presentingViewController = [(BookmarksNavigationController *)self presentingViewController];
    view = [presentingViewController view];
    [view layoutMargins];
    v6 = v5;
    v8 = v7;

    navigationBar = [(BookmarksNavigationController *)self navigationBar];
    [navigationBar bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [(UISegmentedControl *)self->_collectionSegmentedControl frame];
    v19 = v18;
    v21.origin.x = v11;
    v21.origin.y = v13;
    v21.size.width = v15;
    v21.size.height = v17;
    [(UISegmentedControl *)self->_collectionSegmentedControl setFrame:v6, 0.0, CGRectGetWidth(v21) - v6 - v8, v19];
  }
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets
{
  if (!self->_contentBorrowed)
  {
    v3.receiver = self;
    v3.super_class = BookmarksNavigationController;
    [(BookmarksNavigationController *)&v3 _setContentOverlayInsets:insets.top, insets.left, insets.bottom, insets.right];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v6 viewWillAppear:appear];
  if (!self->_hasScheduledBookmarkSyncTimer)
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__bookmarkSyncTimerDidFire_ selector:0 userInfo:0 repeats:5.0];
    bookmarkSyncTimer = self->_bookmarkSyncTimer;
    self->_bookmarkSyncTimer = v4;

    self->_hasScheduledBookmarkSyncTimer = 1;
  }

  if (self->_showCollections)
  {
    if (self->_needsReloadSavedState)
    {
      [(BookmarksNavigationController *)self _loadSavedPanelState];
      [(BookmarksNavigationController *)self _restorePanelState];
    }

    [(BookmarksNavigationController *)self _setupCollectionSegmentedControlIfNeeded];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v5 viewDidAppear:appear];
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationControllerViewDidAppear:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v4 viewWillDisappear:disappear];
  if (self->_showCollections)
  {
    [(BookmarksNavigationController *)self _savePanelState];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v6 viewDidDisappear:disappear];
  if (self->_showCollections)
  {
    self->_needsReloadSavedState = 1;
  }

  [(BookmarksNavigationController *)self _clearBookmarkSyncTimer];
  if (self->_isEditing)
  {
    [(BookmarksNavigationController *)self _setEditingFromToolbarButton:0];
  }

  else
  {
    mEMORY[0x277D28BE0] = [MEMORY[0x277D28BE0] sharedCoordinator];
    [mEMORY[0x277D28BE0] unlockBookmarksIfNeeded];
  }

  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationControllerViewDidDisappear:self];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(BookmarksNavigationController *)self _setContentsDirty];
}

- (void)reloadViewControllers
{
  selfCopy = self;
  v83 = *MEMORY[0x277D85DE8];
  currentCollection = self->_currentCollection;
  if (!currentCollection || [(NSString *)currentCollection isEqualToString:@"BookmarksCollection"])
  {
    viewControllers = [(BookmarksNavigationController *)selfCopy viewControllers];
    if ([viewControllers count])
    {
      firstObject = [viewControllers firstObject];
      topHistoryViewController = [(BookmarksNavigationController *)selfCopy topHistoryViewController];
      if (topHistoryViewController || [viewControllers count] == 1)
      {
        [firstObject reloadBookmarks];
        [(BookmarksNavigationController *)selfCopy _reloadSucceeded];
      }

      else
      {
        v65 = firstObject;
        lastObject = [viewControllers lastObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = lastObject;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;

        v66 = v9;
        if (v9)
        {
          v10 = [viewControllers subarrayWithRange:{0, objc_msgSend(viewControllers, "count") - 1}];

          viewControllers = v10;
        }

        array = [MEMORY[0x277CBEB18] array];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        viewControllers = viewControllers;
        v12 = [viewControllers countByEnumeratingWithState:&v76 objects:v82 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v77;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v77 != v14)
              {
                objc_enumerationMutation(viewControllers);
              }

              v16 = *(*(&v76 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                folder = [v16 folder];
                uUID = [folder UUID];
                [array addObject:uUID];
              }
            }

            v13 = [viewControllers countByEnumeratingWithState:&v76 objects:v82 count:16];
          }

          while (v13);
        }

        v19 = [(BookmarksNavigationController *)selfCopy _lastExistingBookmarkWithUUIDs:array];
        if (v19)
        {
          WeakRetained = objc_loadWeakRetained(&selfCopy->_bookmarksNavigationControllerDelegate);
          if (objc_opt_respondsToSelector())
          {
            v21 = [WeakRetained containingBookmarkForNavigationController:selfCopy];
          }

          else
          {
            v21 = 0;
          }

          v23 = [(BookmarksNavigationController *)selfCopy _pathForBookmark:v19 startingFromAncestor:v21];
          v64 = v23;
          if (v23)
          {
            v24 = v23;
            v61 = v21;
            v62 = WeakRetained;
            v63 = v19;
            v25 = [v23 valueForKey:@"UUID"];
            v26 = [array count];
            v27 = [v25 count];
            v60 = v25;
            if (v27 <= v26 && (v28 = v27, [array subarrayWithRange:{0, v27}], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v25, "isEqualToArray:", v29), v29, v30))
            {
              if (v28 < v26)
              {

                v31 = [viewControllers objectAtIndex:v28 - 1];
                v32 = [(BookmarksNavigationController *)selfCopy popToViewController:v31 animated:1];

                v33 = [viewControllers subarrayWithRange:{0, v28}];

                v66 = 0;
                viewControllers = v33;
              }

              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              viewControllers = viewControllers;
              v34 = [viewControllers countByEnumeratingWithState:&v72 objects:v81 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v73;
                v37 = 0x28119E000uLL;
                do
                {
                  v38 = 0;
                  v67 = v35;
                  do
                  {
                    if (*v73 != v36)
                    {
                      objc_enumerationMutation(viewControllers);
                    }

                    v39 = *(*(&v72 + 1) + 8 * v38);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      bookmarkCollection = selfCopy->_bookmarkCollection;
                      v41 = v39;
                      folder2 = [v41 folder];
                      [folder2 UUID];
                      v43 = viewControllers;
                      v44 = array;
                      v45 = v36;
                      v46 = selfCopy;
                      v48 = v47 = v37;
                      v49 = [(WebBookmarkCollection *)bookmarkCollection bookmarkWithUUID:v48];
                      [v41 setFolder:v49];

                      v35 = v67;
                      v37 = v47;
                      selfCopy = v46;
                      v36 = v45;
                      array = v44;
                      viewControllers = v43;
                    }

                    ++v38;
                  }

                  while (v35 != v38);
                  v35 = [viewControllers countByEnumeratingWithState:&v72 objects:v81 count:16];
                }

                while (v35);
              }

              v22 = v66;
              [v66 reloadData];
              [(BookmarksNavigationController *)selfCopy _reloadSucceeded];
            }

            else
            {
              array2 = [MEMORY[0x277CBEB18] array];
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              v51 = v24;
              v52 = [v51 countByEnumeratingWithState:&v68 objects:v80 count:16];
              if (v52)
              {
                v53 = v52;
                v54 = *v69;
                do
                {
                  for (j = 0; j != v53; ++j)
                  {
                    if (*v69 != v54)
                    {
                      objc_enumerationMutation(v51);
                    }

                    v56 = [(BookmarksNavigationController *)selfCopy newBookmarksTableViewControllerWithFolder:*(*(&v68 + 1) + 8 * j) skipOffset:0];
                    [array2 addObject:v56];
                  }

                  v53 = [v51 countByEnumeratingWithState:&v68 objects:v80 count:16];
                }

                while (v53);
              }

              uUID2 = [v63 UUID];
              lastObject2 = [array lastObject];
              v59 = [uUID2 isEqualToString:lastObject2];

              [(BookmarksNavigationController *)selfCopy setViewControllers:array2 animated:v59 ^ 1u];
              [(BookmarksNavigationController *)selfCopy _reloadSucceeded];

              v22 = v66;
            }

            topHistoryViewController = 0;
            firstObject = v65;
            WeakRetained = v62;
            v19 = v63;
            v21 = v61;
          }

          else
          {
            [(BookmarksNavigationController *)selfCopy _reloadFailed];
            firstObject = v65;
            v22 = v66;
          }
        }

        else
        {
          [(BookmarksNavigationController *)selfCopy _reloadFailed];
          firstObject = v65;
          v22 = v66;
        }
      }
    }
  }
}

- (id)_favoritesFolderBasedOnContentRestriction
{
  mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
  usesAllowedSitesOnly = [mEMORY[0x277D7B590] usesAllowedSitesOnly];

  bookmarkCollection = self->_bookmarkCollection;
  if (usesAllowedSitesOnly)
  {
    [(WebBookmarkCollection *)bookmarkCollection webFilterAllowedSitesFolder];
  }

  else
  {
    [(WebBookmarkCollection *)bookmarkCollection favoritesFolder];
  }
  v6 = ;

  return v6;
}

- (void)_reloadFailed
{
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationControllerReloadDidFail:self];
  }
}

- (void)_reloadSucceeded
{
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationControllerDidReload:self];
  }
}

- (id)_lastExistingBookmarkWithUUIDs:(id)ds
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reverseObjectEnumerator = [ds reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = [(WebBookmarkCollection *)self->_bookmarkCollection bookmarkWithUUID:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_pathForBookmark:(id)bookmark startingFromAncestor:(id)ancestor
{
  bookmarkCopy = bookmark;
  uUID = [ancestor UUID];
  v8 = [MEMORY[0x277CBEB18] arrayWithObject:bookmarkCopy];
  while ([bookmarkCopy identifier])
  {
    v9 = bookmarkCopy;
    bookmarkCopy = -[WebBookmarkCollection bookmarkWithID:](self->_bookmarkCollection, "bookmarkWithID:", [bookmarkCopy parentID]);

    uUID2 = [bookmarkCopy UUID];
    v11 = [uUID2 isEqualToString:uUID];

    if (v11)
    {
      break;
    }

    [v8 insertObject:bookmarkCopy atIndex:0];
  }

  if (uUID && ([bookmarkCopy UUID], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(uUID, "isEqualToString:", v12), v12, !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  return v14;
}

- (void)_updateClearHistoryButton
{
  topHistoryViewController = [(BookmarksNavigationController *)self topHistoryViewController];
  [topHistoryViewController updateClearHistoryButtonEnabled];
}

- (void)bookmarkSourceContentsChanged:(id)changed
{
  object = [changed object];
  v5 = +[History sharedHistory];

  if (object == v5)
  {

    [(BookmarksNavigationController *)self _updateClearHistoryButton];
  }
}

- (BOOL)_shouldShowPaletteForViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_showCollections && [(NSArray *)self->_topLevelCollections count]>= 2)
  {
    traitCollection = [(BookmarksNavigationController *)self traitCollection];
    sf_usesSidebarPresentation = [traitCollection sf_usesSidebarPresentation];

    if (sf_usesSidebarPresentation & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_createToolbarItemsIfNecessary
{
  if (!self->_createFolderButtonItem)
  {
    v3 = objc_alloc(MEMORY[0x277D751E0]);
    v4 = _WBSLocalizedString();
    v5 = [v3 initWithTitle:v4 style:0 target:self action:sel__didPressNewFolderButton];
    createFolderButtonItem = self->_createFolderButtonItem;
    self->_createFolderButtonItem = v5;

    [(UIBarButtonItem *)self->_createFolderButtonItem setAccessibilityIdentifier:@"BookmarksNewFolderButton"];
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:self action:sel__didPressEditButton];
    editButtonItem = self->_editButtonItem;
    self->_editButtonItem = v7;

    [(UIBarButtonItem *)self->_editButtonItem setAccessibilityIdentifier:@"BookmarksEditButton"];
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__didPressEditingDoneButton];
    editingDoneButtonItem = self->_editingDoneButtonItem;
    self->_editingDoneButtonItem = v9;

    [(UIBarButtonItem *)self->_editingDoneButtonItem setAccessibilityIdentifier:@"BookmarksDoneButton"];
    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    flexibleSpaceItem = self->_flexibleSpaceItem;
    self->_flexibleSpaceItem = v11;
  }
}

- (id)_toolbarItemsForViewController:(id)controller
{
  v23 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  [(BookmarksNavigationController *)self _createToolbarItemsIfNecessary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[FeatureManager sharedFeatureManager];
    isBookmarksAvailable = [v5 isBookmarksAvailable];

    if (isBookmarksAvailable)
    {
      if (self->_isEditing && [controllerCopy canCreateNewFolder])
      {
        flexibleSpaceItem = self->_flexibleSpaceItem;
        createFolderButtonItem = self->_createFolderButtonItem;
        v21 = flexibleSpaceItem;
        editingDoneButtonItem = self->_editingDoneButtonItem;
        v8 = MEMORY[0x277CBEA60];
        p_createFolderButtonItem = &createFolderButtonItem;
        v10 = 3;
      }

      else
      {
        if ([controllerCopy isEditing])
        {
          v13 = self->_editingDoneButtonItem;
          v18 = self->_flexibleSpaceItem;
          v19 = v13;
          v8 = MEMORY[0x277CBEA60];
          p_createFolderButtonItem = &v18;
        }

        else
        {
          editButtonItem = self->_editButtonItem;
          v16 = self->_flexibleSpaceItem;
          v17 = editButtonItem;
          v8 = MEMORY[0x277CBEA60];
          p_createFolderButtonItem = &v16;
        }

        v10 = 2;
      }

      bookmarksPanelToolbarItems = [v8 arrayWithObjects:p_createFolderButtonItem count:{v10, v16, v17, v18, v19, createFolderButtonItem, v21, editingDoneButtonItem, v23}];
      goto LABEL_14;
    }

LABEL_8:
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_15;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_8;
  }

  bookmarksPanelToolbarItems = [controllerCopy bookmarksPanelToolbarItems];
LABEL_14:
  v12 = bookmarksPanelToolbarItems;
LABEL_15:

  return v12;
}

- (void)_updateToolbarItemsForViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (self->_allowsEditing && !self->_importHandler)
  {
    v8 = controllerCopy;
    v7 = [(BookmarksNavigationController *)self _toolbarItemsForViewController:controllerCopy];
    [v8 setToolbarItems:v7 animated:animatedCopy];

    controllerCopy = v8;
  }
}

- (void)_setEditingFromToolbarButton:(BOOL)button
{
  buttonCopy = button;
  topReadingListViewController = [(BookmarksNavigationController *)self topReadingListViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topReadingListViewController setEditing:objc_msgSend(topReadingListViewController animated:{"isEditing") ^ 1, 0}];
    goto LABEL_11;
  }

  mEMORY[0x277D28BE0] = [MEMORY[0x277D28BE0] sharedCoordinator];
  v6 = mEMORY[0x277D28BE0];
  if (!buttonCopy)
  {
    [mEMORY[0x277D28BE0] unlockBookmarksSoon];
    navigationBar = [(BookmarksNavigationController *)self navigationBar];
    [navigationBar setNeedsLayout];

    goto LABEL_7;
  }

  if ([mEMORY[0x277D28BE0] lockBookmarks])
  {
LABEL_7:
    topBookmarksTableViewController = [(BookmarksNavigationController *)self topBookmarksTableViewController];
    self->_isEditing = buttonCopy;
    [topBookmarksTableViewController setEditing:buttonCopy animated:1];
    [(UISegmentedControl *)self->_collectionSegmentedControl setEnabled:buttonCopy ^ 1];
    [(BookmarksNavigationController *)self setDoneButtonHidden:buttonCopy];
    if (self->_isEditing || (-[BookmarksNavigationController viewControllers](self, "viewControllers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10 >= 2))
    {
      navigationItem = [topBookmarksTableViewController navigationItem];
      [navigationItem setHidesBackButton:buttonCopy];
    }

    goto LABEL_10;
  }

  [MEMORY[0x277D28BE0] showLockedDatabaseAlertForAction:0 fromViewController:self];
  topBookmarksTableViewController = [MEMORY[0x277D499B8] sharedLogger];
  [topBookmarksTableViewController didPreventBookmarkActionWithBookmarkType:0 actionType:2];
LABEL_10:

LABEL_11:
}

- (void)_didPressNewFolderButton
{
  topBookmarksTableViewController = [(BookmarksNavigationController *)self topBookmarksTableViewController];
  v3 = objc_alloc(MEMORY[0x277D7B5A0]);
  folderID = [topBookmarksTableViewController folderID];
  configuration = [(WebBookmarkCollection *)self->_bookmarkCollection configuration];
  v6 = [v3 initFolderWithParentID:folderID collectionType:{objc_msgSend(configuration, "collectionType")}];

  v7 = [objc_alloc(MEMORY[0x277CDB760]) initWithBookmark:v6 inCollection:self->_bookmarkCollection addingBookmark:0];
  [v7 setDelegate:self];
  [(BookmarksNavigationController *)self setPinnedPaletteForPanelViewController:v7];
  [(BookmarksNavigationController *)self pushViewController:v7 animated:1];
}

- (BOOL)rebaseOnDescendentBookmark:(id)bookmark
{
  v22 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  viewControllers = [(BookmarksNavigationController *)self viewControllers];
  v7 = [viewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {

    goto LABEL_16;
  }

  v8 = v7;
  selfCopy = self;
  LOBYTE(v9) = 0;
  v10 = *v18;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(viewControllers);
      }

      v12 = *(*(&v17 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        folderID = [v12 folderID];
        if (!(v9 & 1 | (folderID == [bookmarkCopy identifier])))
        {
          goto LABEL_8;
        }
      }

      else if ((v9 & 1) == 0)
      {
LABEL_8:
        v9 = 0;
        continue;
      }

      [v5 addObject:v12];
      v9 = 1;
    }

    v8 = [viewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v8);

  if (!v9)
  {
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  [(BookmarksNavigationController *)selfCopy setViewControllers:v5];
  v14 = 1;
LABEL_17:

  return v14;
}

- (BOOL)rebaseOnAncestorBookmark:(id)bookmark skipOffset:(unsigned int)offset
{
  v4 = *&offset;
  bookmarkCopy = bookmark;
  viewControllers = [(BookmarksNavigationController *)self viewControllers];
  v8 = [viewControllers objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    viewControllers2 = [(BookmarksNavigationController *)self viewControllers];
    v11 = [viewControllers2 mutableCopy];

    bookmarkCollection = self->_bookmarkCollection;
    viewControllers3 = [(BookmarksNavigationController *)self viewControllers];
    v14 = [viewControllers3 objectAtIndex:0];
    v15 = -[WebBookmarkCollection bookmarkWithID:](bookmarkCollection, "bookmarkWithID:", [v14 folderID]);

    LODWORD(viewControllers3) = [v15 identifier];
    if (viewControllers3 == [bookmarkCopy identifier])
    {
      v16 = [(BookmarksNavigationController *)self newBookmarksTableViewControllerWithFolder:bookmarkCopy skipOffset:v4];
      [v11 replaceObjectAtIndex:0 withObject:v16];
LABEL_4:
      [(BookmarksNavigationController *)self setViewControllers:v11];

      v17 = 1;
    }

    else
    {
      while (1)
      {
        identifier = [v15 identifier];
        rootBookmark = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
        identifier2 = [rootBookmark identifier];

        if (identifier == identifier2)
        {
          break;
        }

        v21 = v15;
        v15 = -[WebBookmarkCollection bookmarkWithID:](self->_bookmarkCollection, "bookmarkWithID:", [v15 parentID]);

        LODWORD(v21) = [v15 identifier];
        if (v21 == [bookmarkCopy identifier])
        {
          v22 = v4;
        }

        else
        {
          v22 = 0;
        }

        v16 = [(BookmarksNavigationController *)self newBookmarksTableViewControllerWithFolder:v15 skipOffset:v22];
        [v11 insertObject:v16 atIndex:0];
        identifier3 = [v15 identifier];
        if (identifier3 == [bookmarkCopy identifier])
        {
          goto LABEL_4;
        }
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_setupCollections
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObject:@"BookmarksCollection"];
  v4 = +[FeatureManager sharedFeatureManager];
  isReadingListAvailable = [v4 isReadingListAvailable];

  if (isReadingListAvailable)
  {
    [v3 addObject:@"ReadingListCollection"];
  }

  [v3 addObject:@"HistoryCollection"];
  v6 = [v3 copy];

  topLevelCollections = self->_topLevelCollections;
  self->_topLevelCollections = v6;
}

- (void)_setupCollectionSegmentedControlIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_collectionSegmentedControl)
  {
    array = [MEMORY[0x277CBEB18] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_topLevelCollections;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(BookmarksNavigationController *)self _segmentedControlItemForCollection:*(*(&v12 + 1) + 8 * v8), v12];
          [array addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [objc_alloc(MEMORY[0x277D75A08]) initWithItems:array];
    collectionSegmentedControl = self->_collectionSegmentedControl;
    self->_collectionSegmentedControl = v10;

    [(UISegmentedControl *)self->_collectionSegmentedControl setAccessibilityIdentifier:@"BookmarksSegmentedControl"];
    [(UISegmentedControl *)self->_collectionSegmentedControl setSpringLoaded:1];
    [(UISegmentedControl *)self->_collectionSegmentedControl addTarget:self action:sel__selectedCollectionChanged_ forControlEvents:4096];
  }
}

- (void)_doneButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationControllerDidPressDoneButton:self];
  }
}

- (id)_segmentedControlItemForCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy isEqualToString:@"BookmarksCollection"])
  {
    v4 = @"book";
  }

  else if ([collectionCopy isEqualToString:@"ReadingListCollection"])
  {
    v4 = @"eyeglasses";
  }

  else if ([collectionCopy isEqualToString:@"HistoryCollection"])
  {
    v4 = @"clock";
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277D750C8];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:v4];
  v7 = [v5 actionWithTitle:&stru_2827BF158 image:v6 identifier:collectionCopy handler:&__block_literal_global_5];

  return v7;
}

- (void)_selectedCollectionChanged:(id)changed
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = -[NSArray objectAtIndex:](self->_topLevelCollections, "objectAtIndex:", [changed selectedSegmentIndex]);
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Tap %{public}@", &v6, 0xCu);
  }

  [(BookmarksNavigationController *)self setCurrentCollection:v4];
}

- (id)newBookmarksTableViewControllerWithFolder:(id)folder skipOffset:(unsigned int)offset
{
  v4 = *&offset;
  folderCopy = folder;
  v7 = [[BookmarksTableViewController alloc] initWithFolder:folderCopy inCollection:self->_bookmarkCollection skipOffset:v4];

  [(BookmarksTableViewController *)v7 setDelegate:self];
  linkPreviewProvider = [(BookmarksNavigationController *)self linkPreviewProvider];
  [(BookmarksTableViewController *)v7 setLinkPreviewProvider:linkPreviewProvider];

  [(BookmarksTableViewController *)v7 setNavigationIntentHandler:self];
  return v7;
}

- (id)newRootViewControllerForCollection:(id)collection
{
  collectionCopy = collection;
  linkPreviewProvider = [(BookmarksNavigationController *)self linkPreviewProvider];
  if ([collectionCopy isEqualToString:@"BookmarksCollection"])
  {
    rootBookmark = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
    makeHistoryViewController = [(BookmarksNavigationController *)self newBookmarksTableViewControllerWithFolder:rootBookmark skipOffset:0];
  }

  else if ([collectionCopy isEqualToString:@"HistoryCollection"])
  {
    makeHistoryViewController = [(BookmarksNavigationController *)self makeHistoryViewController];
  }

  else if ([collectionCopy isEqualToString:@"ReadingListCollection"])
  {
    makeHistoryViewController = objc_alloc_init(ReadingListViewController);
    [(ReadingListViewController *)makeHistoryViewController setDelegate:self];
    [(ReadingListViewController *)makeHistoryViewController setLinkPreviewProvider:linkPreviewProvider];
    [(ReadingListViewController *)makeHistoryViewController setNavigationIntentHandler:self];
    tabGroupProvider = [(BookmarksNavigationController *)self tabGroupProvider];
    [(ReadingListViewController *)makeHistoryViewController setTabGroupProvider:tabGroupProvider];
  }

  else
  {
    makeHistoryViewController = 0;
  }

  return makeHistoryViewController;
}

- (id)makeHistoryViewController
{
  linkPreviewProvider = [(BookmarksNavigationController *)self linkPreviewProvider];
  tabGroupProvider = [(BookmarksNavigationController *)self tabGroupProvider];
  activeProfile = [tabGroupProvider activeProfile];
  hasMultipleProfiles = [tabGroupProvider hasMultipleProfiles];
  v7 = +[Application sharedApplication];
  historyController = [v7 historyController];
  identifier = [activeProfile identifier];
  v10 = [historyController historyForProfileIdentifier:identifier loadIfNeeded:1];

  v11 = [[SFHistoryViewController alloc] initWithHistory:v10];
  [(SFHistoryViewController *)v11 setDelegate:self];
  [(SFHistoryViewController *)v11 setLinkPreviewProvider:linkPreviewProvider];
  [(SFHistoryViewController *)v11 setNavigationIntentHandler:self];
  tabGroupProvider2 = [(BookmarksNavigationController *)self tabGroupProvider];
  [(SFHistoryViewController *)v11 setTabGroupProvider:tabGroupProvider2];

  if (hasMultipleProfiles)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = _WBSLocalizedString();
    title = [activeProfile title];
    v16 = [v13 stringWithFormat:v14, title];
    [(SFHistoryViewController *)v11 setTitle:v16];
  }

  return v11;
}

- (void)setCurrentCollection:(id)collection
{
  v8[1] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  if (([collectionCopy isEqualToString:self->_currentCollection] & 1) == 0)
  {
    if (self->_currentCollection)
    {
      [(BookmarksNavigationController *)self _savePanelState];
    }

    v6 = [(BookmarksNavigationController *)self newRootViewControllerForCollection:collectionCopy];
    objc_storeStrong(&self->_currentCollection, collection);
    v8[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(BookmarksNavigationController *)self setViewControllers:v7];

    [(BookmarksNavigationController *)self _restoreCurrentCollectionState];
    [(UISegmentedControl *)self->_collectionSegmentedControl setSelectedSegmentIndex:[(NSArray *)self->_topLevelCollections indexOfObject:self->_currentCollection]];
    [(BookmarksNavigationController *)self _updateToolbarVisibility];
  }
}

- (void)_updateToolbarVisibility
{
  if (self->_importHandler)
  {
    if (([(BookmarksNavigationController *)self isToolbarHidden]& 1) != 0)
    {
      return;
    }

    v3 = 1;
  }

  else
  {
    v3 = !self->_allowsEditing;
    if ([(BookmarksNavigationController *)self isToolbarHidden]== v3)
    {
      return;
    }
  }

  [(BookmarksNavigationController *)self setToolbarHidden:v3];
}

- (void)_loadSavedPanelState
{
  if (![(BookmarksNavigationController *)self _createSavedPanelStateForTesting])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [standardUserDefaults dictionaryForKey:@"BookmarksPanelSavedState"];
    v4 = [v3 mutableCopy];
    savedCollectionState = self->_savedCollectionState;
    self->_savedCollectionState = v4;

    if (!self->_savedCollectionState)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = self->_savedCollectionState;
      self->_savedCollectionState = v6;
    }
  }
}

- (void)_savePanelState
{
  [(NSMutableDictionary *)self->_savedCollectionState setObject:self->_currentCollection forKey:@"CurrentCollection"];
  v3 = self->_currentCollection;
  viewControllers = [(BookmarksNavigationController *)self viewControllers];
  v8 = [viewControllers objectAtIndex:0];

  currentStateDictionary = [v8 currentStateDictionary];
  v6 = [currentStateDictionary mutableCopy];

  [(NSMutableDictionary *)self->_savedCollectionState setObject:v6 forKey:v3];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:self->_savedCollectionState forKey:@"BookmarksPanelSavedState"];
}

- (void)_restorePanelState
{
  if ([(NSMutableDictionary *)self->_savedCollectionState count])
  {
    v3 = [(NSMutableDictionary *)self->_savedCollectionState objectForKey:@"CurrentCollection"];
    topLevelCollections = self->_topLevelCollections;
    v8 = v3;
    if (!v3)
    {
LABEL_5:
      v5 = [(NSArray *)topLevelCollections objectAtIndex:0];
      [(BookmarksNavigationController *)self setCurrentCollection:v5];

      goto LABEL_9;
    }

    if ([(NSArray *)topLevelCollections indexOfObject:v3]== 0x7FFFFFFFFFFFFFFFLL)
    {
      topLevelCollections = self->_topLevelCollections;
      goto LABEL_5;
    }

    selfCopy2 = self;
    v6 = v8;
  }

  else
  {
    v6 = [(NSArray *)self->_topLevelCollections objectAtIndex:0];
    selfCopy2 = self;
    v8 = v6;
  }

  [(BookmarksNavigationController *)selfCopy2 setCurrentCollection:v6];
LABEL_9:
}

- (void)_restoreCurrentCollectionState
{
  viewControllers = [(BookmarksNavigationController *)self viewControllers];
  v5 = [viewControllers objectAtIndex:0];

  v4 = [(NSMutableDictionary *)self->_savedCollectionState objectForKey:self->_currentCollection];
  if (v4)
  {
    [v5 restoreStateWithDictionary:v4];
  }
}

- (BOOL)_createSavedPanelStateForTesting
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  if (_test_savedStateCollection)
  {
    [dictionary setObject:_test_savedStateCollection forKey:@"CurrentCollection"];
  }

  v5 = [v4 count];
  if (v5)
  {
    objc_storeStrong(&self->_savedCollectionState, v4);
  }

  return v5 != 0;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  viewControllers = [(BookmarksNavigationController *)self viewControllers];
  v8 = [viewControllers count];

  if (v8 == 1)
  {
    v9 = _WBSLocalizedString();
    navigationItem = [viewControllerCopy navigationItem];
    [navigationItem setBackButtonTitle:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BookmarksNavigationController *)self _updateClearHistoryButton];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewControllerCopy updateSeparatorInset];
  }

  [(BookmarksNavigationController *)self _updateDoneButtonItemForViewController:viewControllerCopy];
  [(BookmarksNavigationController *)self _updateToolbarItemsForViewController:viewControllerCopy animated:animatedCopy];
  [(BookmarksNavigationController *)self _updateToolbarVisibility];
  traitCollection = [(BookmarksNavigationController *)self traitCollection];
  sf_usesSidebarPresentation = [traitCollection sf_usesSidebarPresentation];

  if (sf_usesSidebarPresentation)
  {
    [viewControllerCopy setEdgesForExtendedLayout:0];
  }
}

- (void)_updateDoneButtonItemForViewController:(id)controller
{
  controllerCopy = controller;
  navigationItem = [controllerCopy navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  v6 = rightBarButtonItem;
  if (!rightBarButtonItem || rightBarButtonItem == self->_doneButtonItem)
  {
    if (self->_doneButtonHidden)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      traitCollection = [(BookmarksNavigationController *)self traitCollection];
      if (([traitCollection sf_usesSidebarPresentation] & 1) != 0 || !objc_msgSend(controllerCopy, "safari_wantsDoneButtonInModalBookmarksPanel"))
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
        v7 = objc_opt_respondsToSelector() ^ 1;
      }
    }

    if (!self->_doneButtonItem)
    {
      v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:self->_importHandler != 0 target:self action:sel__doneButtonPressed];
      doneButtonItem = self->_doneButtonItem;
      self->_doneButtonItem = v10;

      [(UIBarButtonItem *)self->_doneButtonItem setAccessibilityIdentifier:@"Done"];
    }

    if ((v6 != 0) | v7 & 1)
    {
      if (v6 == 0 || (v7 & 1) == 0)
      {
        goto LABEL_17;
      }

      v12 = 0;
    }

    else
    {
      v12 = self->_doneButtonItem;
    }

    [navigationItem setRightBarButtonItem:v12 animated:1];
  }

LABEL_17:
}

- (void)setDoneButtonHidden:(BOOL)hidden
{
  if (self->_doneButtonHidden != hidden)
  {
    self->_doneButtonHidden = hidden;
    topViewController = [(BookmarksNavigationController *)self topViewController];
    [(BookmarksNavigationController *)self _updateDoneButtonItemForViewController:topViewController];
  }
}

- (void)_bookmarkSyncTimerDidFire:(id)fire
{
  [(WebBookmarkCollection *)self->_bookmarkCollection _postBookmarksChangedSyncNotification];

  [(BookmarksNavigationController *)self _clearBookmarkSyncTimer];
}

- (void)_clearBookmarkSyncTimer
{
  [(NSTimer *)self->_bookmarkSyncTimer invalidate];
  bookmarkSyncTimer = self->_bookmarkSyncTimer;
  self->_bookmarkSyncTimer = 0;
}

- (void)setAllowsEditing:(BOOL)editing
{
  if (self->_allowsEditing != editing)
  {
    self->_allowsEditing = editing;
    topViewController = [(BookmarksNavigationController *)self topViewController];
    [(BookmarksNavigationController *)self _updateToolbarItemsForViewController:topViewController animated:0];
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = inset;
    topViewController = [(BookmarksNavigationController *)self topViewController];
    view = [topViewController view];
    [view setNeedsLayout];
  }
}

- (void)setTableSeparatorInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tableSeparatorInset.top), vceqq_f64(v4, *&self->_tableSeparatorInset.bottom)))) & 1) == 0)
  {
    self->_tableSeparatorInset = inset;
    topViewController = [(BookmarksNavigationController *)self topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [topViewController updateSeparatorInset];
    }

    view = [topViewController view];
    [view setNeedsLayout];
  }
}

- (void)_setContentsDirty
{
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationControllerContentDidBecomeDirty:self];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = +[Application sharedApplication];
  tabGroupManager = [v4 tabGroupManager];
  [tabGroupManager removeTabGroupObserver:self];

  v6.receiver = self;
  v6.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v6 dealloc];
}

- (void)handleNavigationIntent:(id)intent completion:(id)completion
{
  completionCopy = completion;
  intentCopy = intent;
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained handleNavigationIntent:intentCopy completion:completionCopy];
}

- (void)dispatchNavigationIntent:(id)intent
{
  intentCopy = intent;
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained dispatchNavigationIntent:intentCopy];
}

- (void)panelViewController:(id)controller updateToolbarItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  topViewController = [(BookmarksNavigationController *)self topViewController];

  v7 = controllerCopy;
  if (topViewController == controllerCopy)
  {
    [(BookmarksNavigationController *)self _updateToolbarItemsForViewController:controllerCopy animated:animatedCopy];
    v7 = controllerCopy;
  }
}

- (void)setPinnedPaletteForPanelViewController:(id)controller
{
  controllerCopy = controller;
  if ([(BookmarksNavigationController *)self _shouldShowPaletteForViewController:?])
  {
    [(BookmarksNavigationController *)self _setupCollectionSegmentedControlIfNeeded];
    palette = self->_palette;
    if (!palette)
    {
      view = [(BookmarksNavigationController *)self view];
      [view bounds];
      Width = CGRectGetWidth(v14);
      [(UISegmentedControl *)self->_collectionSegmentedControl bounds];
      v7 = CGRectGetHeight(v15) + 12.0;

      v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, v7}];
      [v8 addSubview:self->_collectionSegmentedControl];
      v9 = [objc_alloc(MEMORY[0x277D76118]) initWithContentView:v8];
      v10 = self->_palette;
      self->_palette = v9;

      palette = self->_palette;
    }

    navigationItem = [controllerCopy navigationItem];
    [navigationItem _setBottomPalette:palette];
  }
}

- (void)panelViewControllerDidBeginEditing:(id)editing
{
  editingCopy = editing;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tableView = [editingCopy tableView];
    _swipeActionController = [tableView _swipeActionController];
    swipedIndexPaths = [_swipeActionController swipedIndexPaths];
    v7 = [swipedIndexPaths count] == 0;
  }

  else
  {
    v7 = 1;
  }

  [(BookmarksNavigationController *)self setDoneButtonHidden:v7];
}

- (UIEdgeInsets)separatorInsetForBookmarksTableViewController:(id)controller
{
  top = self->_tableSeparatorInset.top;
  left = self->_tableSeparatorInset.left;
  bottom = self->_tableSeparatorInset.bottom;
  right = self->_tableSeparatorInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentInsetForBookmarksTableViewController:(id)controller
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)bookmarksTableViewShouldDispatchNavigationIntent:(id)intent forSelectedBookmark:(id)bookmark
{
  importHandler = self->_importHandler;
  if (importHandler)
  {
    importHandler[2](self->_importHandler, bookmark, intent);
  }

  return importHandler == 0;
}

- (BOOL)bookmarksTableViewIsReadOnly:(id)only
{
  managedBookmarkFolder = [only managedBookmarkFolder];

  return managedBookmarkFolder || self->_importHandler != 0;
}

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    tabGroupProvider = [WeakRetained tabGroupProvider];
  }

  else
  {
    tabGroupProvider = 0;
  }

  return tabGroupProvider;
}

- (id)readingListViewControllerCurrentReadingListItem:(id)item
{
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained bookmarksNavigationControllerCurrentContinuousReadingItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)readingListViewController:(id)controller updateUnreadFilterShowingAllBookmarks:(BOOL)bookmarks
{
  bookmarksCopy = bookmarks;
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationController:self updateReadingListUnreadFilterShowingAllBookmarks:bookmarksCopy];
  }
}

- (void)readingListViewController:(id)controller setBookmark:(id)bookmark asRead:(BOOL)read
{
  readCopy = read;
  bookmarkCopy = bookmark;
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationController:self setBookmark:bookmarkCopy asRead:readCopy];
  }
}

- (void)tabGroupManagerDidUpdateTabGroups:(id)groups
{
  topmostBookmarksTableViewController = [(BookmarksNavigationController *)self topmostBookmarksTableViewController];
  [topmostBookmarksTableViewController reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)manager didRemoveTabGroupWithUUID:(id)d
{
  v4 = [(BookmarksNavigationController *)self topmostBookmarksTableViewController:manager];
  [v4 reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)manager didUpdateTabGroupWithUUID:(id)d
{
  v4 = [(BookmarksNavigationController *)self topmostBookmarksTableViewController:manager];
  [v4 reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)manager didUpdateScopedBookmarkList:(id)list
{
  folderID = [list folderID];

  [(BookmarksNavigationController *)self _reloadFolderContentsForFolderIDIfNeeded:folderID];
}

- (BookmarksNavigationControllerDelegate)bookmarksNavigationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);

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

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)tableSeparatorInset
{
  top = self->_tableSeparatorInset.top;
  left = self->_tableSeparatorInset.left;
  bottom = self->_tableSeparatorInset.bottom;
  right = self->_tableSeparatorInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
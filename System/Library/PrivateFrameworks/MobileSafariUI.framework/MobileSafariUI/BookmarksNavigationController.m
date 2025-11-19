@interface BookmarksNavigationController
- (BOOL)_createSavedPanelStateForTesting;
- (BOOL)_isVisibleFolderID:(int)a3;
- (BOOL)_shouldShowPaletteForViewController:(id)a3;
- (BOOL)bookmarksTableViewIsReadOnly:(id)a3;
- (BOOL)bookmarksTableViewShouldDispatchNavigationIntent:(id)a3 forSelectedBookmark:(id)a4;
- (BOOL)rebaseOnAncestorBookmark:(id)a3 skipOffset:(unsigned int)a4;
- (BOOL)rebaseOnDescendentBookmark:(id)a3;
- (BookmarksNavigationControllerDelegate)bookmarksNavigationControllerDelegate;
- (LinkPreviewProvider)linkPreviewProvider;
- (TabGroupProvider)tabGroupProvider;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)contentInsetForBookmarksTableViewController:(id)a3;
- (UIEdgeInsets)separatorInsetForBookmarksTableViewController:(id)a3;
- (UIEdgeInsets)tableSeparatorInset;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (id)_favoritesFolderBasedOnContentRestriction;
- (id)_initWithBookmarksDelegate:(id)a3 linkPreviewProvider:(id)a4 topBookmark:(id)a5 skipOffset:(unsigned int)a6 activeCollection:(id)a7 showsOnlyActiveCollection:(BOOL)a8;
- (id)_lastExistingBookmarkWithUUIDs:(id)a3;
- (id)_pathForBookmark:(id)a3 startingFromAncestor:(id)a4;
- (id)_segmentedControlItemForCollection:(id)a3;
- (id)_toolbarItemsForViewController:(id)a3;
- (id)makeHistoryViewController;
- (id)newBookmarksTableViewControllerWithFolder:(id)a3 skipOffset:(unsigned int)a4;
- (id)newRootViewControllerForCollection:(id)a3;
- (id)readingListViewControllerCurrentReadingListItem:(id)a3;
- (id)rootBookmark;
- (id)topBookmarksTableViewController;
- (id)topHistoryViewController;
- (id)topReadingListViewController;
- (id)topmostBookmarksTableViewController;
- (void)_applicationSuspended:(id)a3;
- (void)_bookmarkSyncTimerDidFire:(id)a3;
- (void)_clearBookmarkSyncTimer;
- (void)_createToolbarItemsIfNecessary;
- (void)_didPressNewFolderButton;
- (void)_doneButtonPressed;
- (void)_folderContentsDidChange:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_loadSavedPanelState;
- (void)_reloadFailed;
- (void)_reloadFolderContentsForFolderIDIfNeeded:(int)a3;
- (void)_reloadSucceeded;
- (void)_restoreCurrentCollectionState;
- (void)_restorePanelState;
- (void)_savePanelState;
- (void)_selectedCollectionChanged:(id)a3;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)_setContentsDirty;
- (void)_setEditingFromToolbarButton:(BOOL)a3;
- (void)_setupCollectionSegmentedControlIfNeeded;
- (void)_setupCollections;
- (void)_updateBookmarkCollection;
- (void)_updateClearHistoryButton;
- (void)_updateDoneButtonItemForViewController:(id)a3;
- (void)_updateToolbarItemsForViewController:(id)a3 animated:(BOOL)a4;
- (void)_updateToolbarVisibility;
- (void)anySizeClassDidChange;
- (void)bookmarkSourceContentsChanged:(id)a3;
- (void)dealloc;
- (void)dispatchNavigationIntent:(id)a3;
- (void)handleNavigationIntent:(id)a3 completion:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)panelViewController:(id)a3 updateToolbarItemsAnimated:(BOOL)a4;
- (void)panelViewControllerDidBeginEditing:(id)a3;
- (void)readingListViewController:(id)a3 setBookmark:(id)a4 asRead:(BOOL)a5;
- (void)readingListViewController:(id)a3 updateUnreadFilterShowingAllBookmarks:(BOOL)a4;
- (void)reloadViewControllers;
- (void)setAllowsEditing:(BOOL)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setCurrentCollection:(id)a3;
- (void)setDoneButtonHidden:(BOOL)a3;
- (void)setPinnedPaletteForPanelViewController:(id)a3;
- (void)setRootBookmark:(id)a3 skipOffset:(unsigned int)a4;
- (void)setRootBookmarkUUIDString:(id)a3;
- (void)setTableSeparatorInset:(UIEdgeInsets)a3;
- (void)tabGroupManager:(id)a3 didRemoveTabGroupWithUUID:(id)a4;
- (void)tabGroupManager:(id)a3 didUpdateScopedBookmarkList:(id)a4;
- (void)tabGroupManager:(id)a3 didUpdateTabGroupWithUUID:(id)a4;
- (void)tabGroupManagerDidUpdateTabGroups:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BookmarksNavigationController

- (id)_initWithBookmarksDelegate:(id)a3 linkPreviewProvider:(id)a4 topBookmark:(id)a5 skipOffset:(unsigned int)a6 activeCollection:(id)a7 showsOnlyActiveCollection:(BOOL)a8
{
  v8 = a8;
  v39[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v38.receiver = self;
  v38.super_class = BookmarksNavigationController;
  v18 = [(BookmarksNavigationController *)&v38 initWithNavigationBarClass:0 toolbarClass:0];
  v19 = v18;
  if (v18)
  {
    v37 = a6;
    [(BookmarksNavigationController *)v18 setDelegate:v18];
    [(BookmarksNavigationController *)v19 _setClipUnderlapWhileTransitioning:1];
    v19->_prefersHalfHeightSheetPresentationWithLoweredBar = 1;
    objc_storeWeak(&v19->_bookmarksNavigationControllerDelegate, v14);
    objc_storeWeak(&v19->_linkPreviewProvider, v15);
    v20 = [objc_alloc(MEMORY[0x277D7B5B0]) initReadonlySafariBookmarkCollection];
    readonlyCollection = v19->_readonlyCollection;
    v19->_readonlyCollection = v20;

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mobilesafari.%@.%p", objc_opt_class(), v19];
    v23 = dispatch_queue_create([v22 UTF8String], 0);
    readonlyCollectionQueue = v19->_readonlyCollectionQueue;
    v19->_readonlyCollectionQueue = v23;

    if (v17)
    {
      v25 = v8;
    }

    else
    {
      v25 = 0;
    }

    if (!v16 && !v25)
    {
      v19->_showCollections = 1;
    }

    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v19 selector:sel__bookmarkCollectionHasBecomeAvailable_ name:@"bookmarkCollectionHasBecomeAvailableNotification" object:0];
    [v26 addObserver:v19 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76BA8] object:0];
    [(BookmarksNavigationController *)v19 _updateBookmarkCollection];
    v27 = [MEMORY[0x277D7B590] sharedWebFilterSettings];
    v28 = [v27 usesAllowedSitesOnly];

    [(BookmarksNavigationController *)v19 setAllowsEditing:v28 ^ 1u];
    v29 = [[BookmarkImporter alloc] initWithBookmarkCollection:v19->_bookmarkCollection];
    [(BookmarkImporter *)v29 migrateYouTubeBookmarks];
    v19->_contentDirtyFlag = 1;
    [(BookmarksNavigationController *)v19 _setupCollections];
    if (v25)
    {
      [(BookmarksNavigationController *)v19 setCurrentCollection:v17];
    }

    else if (v19->_showCollections)
    {
      [(BookmarksNavigationController *)v19 _loadSavedPanelState];
      [(BookmarksNavigationController *)v19 _restorePanelState];
    }

    else
    {
      v30 = [(BookmarksNavigationController *)v19 newBookmarksTableViewControllerWithFolder:v16 skipOffset:v37];
      [(BookmarksNavigationController *)v19 pushViewController:v30 animated:0];
    }

    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v32 = [(BookmarksNavigationController *)v19 registerForTraitChanges:v31 withTarget:v19 action:sel_anySizeClassDidChange];

    v33 = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v34 = [(BookmarksNavigationController *)v19 registerForTraitChanges:v33 withTarget:v19 action:sel__setContentsDirty];

    v35 = v19;
  }

  return v19;
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = *MEMORY[0x277D76EC8];
  v5 = [(BookmarksNavigationController *)self sheetPresentationController];
  [v5 setSelectedDetentIdentifier:v4];

  v7 = [(BookmarksNavigationController *)self view];
  v6 = [v7 window];
  [v6 layoutIfNeeded];
}

- (void)_updateBookmarkCollection
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v4 = self->_bookmarkCollection;
  v5 = v4;
  if (v4)
  {
    v6 = v4 == v3;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    objc_storeStrong(&self->_bookmarkCollection, v3);
    if (self->_showCollections)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = *MEMORY[0x277D7B608];
      [v7 removeObserver:self name:*MEMORY[0x277D7B608] object:v5];
      [v7 addObserver:self selector:sel__webBookmarksDidReload_ name:v8 object:v3];
      v9 = *MEMORY[0x277D7B618];
      [v7 removeObserver:self name:*MEMORY[0x277D7B618] object:v5];
      [v7 addObserver:self selector:sel__folderContentsDidChange_ name:v9 object:v3];
    }

    v10 = +[Application sharedApplication];
    v11 = [v10 tabGroupManager];
    [v11 addTabGroupObserver:self];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [(BookmarksNavigationController *)self viewControllers];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 setCollection:v3];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    [(BookmarksNavigationController *)self reloadViewControllers];
  }
}

- (void)_applicationSuspended:(id)a3
{
  v3 = [MEMORY[0x277D28BE0] sharedCoordinator];
  [v3 unlockBookmarksIfNeeded];
}

- (void)_folderContentsDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 safari_numberForKey:*MEMORY[0x277D7B5E8]];

  v5 = v6;
  if (v6)
  {
    -[BookmarksNavigationController _reloadFolderContentsForFolderIDIfNeeded:](self, "_reloadFolderContentsForFolderIDIfNeeded:", [v6 intValue]);
    v5 = v6;
  }
}

- (void)_reloadFolderContentsForFolderIDIfNeeded:(int)a3
{
  v3 = *&a3;
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(BookmarksNavigationController *)self topmostBookmarksTableViewController];
  v6 = [v5 folderID];

  if ([(BookmarksNavigationController *)self _isVisibleFolderID:v3])
  {
    [(BookmarksNavigationController *)self _setContentsDirty];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(BookmarksNavigationController *)self viewControllers];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          if ([v13 folderID] == v3)
          {
            if (v6 == v3)
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

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (BOOL)_isVisibleFolderID:(int)a3
{
  v4 = [(BookmarksNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 folder];
    v6 = [v5 identifier] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)anySizeClassDidChange
{
  v3 = [(BookmarksNavigationController *)self topViewController];
  [(BookmarksNavigationController *)self _updateToolbarItemsForViewController:v3 animated:0];

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
  v2 = [(BookmarksNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)topBookmarksTableViewController
{
  v2 = [(BookmarksNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v2 = [(BookmarksNavigationController *)self viewControllers];
  v3 = [v2 reverseObjectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(BookmarksNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)rootBookmark
{
  v2 = [(BookmarksNavigationController *)self viewControllers];
  v3 = [v2 objectAtIndex:0];

  v4 = [v3 folder];

  return v4;
}

- (void)setRootBookmark:(id)a3 skipOffset:(unsigned int)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = [(BookmarksNavigationController *)self newBookmarksTableViewControllerWithFolder:a3 skipOffset:*&a4];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(BookmarksNavigationController *)self setViewControllers:v6];
}

- (void)setRootBookmarkUUIDString:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isEqualToString:*MEMORY[0x277D4A4B0]])
    {
      v6 = [(BookmarksNavigationController *)self _favoritesFolderBasedOnContentRestriction];
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8[0] = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
      v6 = [(BookmarksNavigationController *)self _lastExistingBookmarkWithUUIDs:v7];

      if (!v6)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    [(BookmarksNavigationController *)self setRootBookmark:v6 skipOffset:0];
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
    v3 = [(BookmarksNavigationController *)self view];
    [v3 setAccessibilityIdentifier:@"Sidebar"];
  }
}

- (void)viewDidLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v20 viewDidLayoutSubviews];
  if (self->_showCollections)
  {
    v3 = [(BookmarksNavigationController *)self presentingViewController];
    v4 = [v3 view];
    [v4 layoutMargins];
    v6 = v5;
    v8 = v7;

    v9 = [(BookmarksNavigationController *)self navigationBar];
    [v9 bounds];
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

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  if (!self->_contentBorrowed)
  {
    v3.receiver = self;
    v3.super_class = BookmarksNavigationController;
    [(BookmarksNavigationController *)&v3 _setContentOverlayInsets:a3.top, a3.left, a3.bottom, a3.right];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v6 viewWillAppear:a3];
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

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v5 viewDidAppear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationControllerViewDidAppear:self];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v4 viewWillDisappear:a3];
  if (self->_showCollections)
  {
    [(BookmarksNavigationController *)self _savePanelState];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v6 viewDidDisappear:a3];
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
    v4 = [MEMORY[0x277D28BE0] sharedCoordinator];
    [v4 unlockBookmarksIfNeeded];
  }

  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationControllerViewDidDisappear:self];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(BookmarksNavigationController *)self _setContentsDirty];
}

- (void)reloadViewControllers
{
  v2 = self;
  v83 = *MEMORY[0x277D85DE8];
  currentCollection = self->_currentCollection;
  if (!currentCollection || [(NSString *)currentCollection isEqualToString:@"BookmarksCollection"])
  {
    v4 = [(BookmarksNavigationController *)v2 viewControllers];
    if ([v4 count])
    {
      v5 = [v4 firstObject];
      v6 = [(BookmarksNavigationController *)v2 topHistoryViewController];
      if (v6 || [v4 count] == 1)
      {
        [v5 reloadBookmarks];
        [(BookmarksNavigationController *)v2 _reloadSucceeded];
      }

      else
      {
        v65 = v5;
        v7 = [v4 lastObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;

        v66 = v9;
        if (v9)
        {
          v10 = [v4 subarrayWithRange:{0, objc_msgSend(v4, "count") - 1}];

          v4 = v10;
        }

        v11 = [MEMORY[0x277CBEB18] array];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v4 = v4;
        v12 = [v4 countByEnumeratingWithState:&v76 objects:v82 count:16];
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
                objc_enumerationMutation(v4);
              }

              v16 = *(*(&v76 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = [v16 folder];
                v18 = [v17 UUID];
                [v11 addObject:v18];
              }
            }

            v13 = [v4 countByEnumeratingWithState:&v76 objects:v82 count:16];
          }

          while (v13);
        }

        v19 = [(BookmarksNavigationController *)v2 _lastExistingBookmarkWithUUIDs:v11];
        if (v19)
        {
          WeakRetained = objc_loadWeakRetained(&v2->_bookmarksNavigationControllerDelegate);
          if (objc_opt_respondsToSelector())
          {
            v21 = [WeakRetained containingBookmarkForNavigationController:v2];
          }

          else
          {
            v21 = 0;
          }

          v23 = [(BookmarksNavigationController *)v2 _pathForBookmark:v19 startingFromAncestor:v21];
          v64 = v23;
          if (v23)
          {
            v24 = v23;
            v61 = v21;
            v62 = WeakRetained;
            v63 = v19;
            v25 = [v23 valueForKey:@"UUID"];
            v26 = [v11 count];
            v27 = [v25 count];
            v60 = v25;
            if (v27 <= v26 && (v28 = v27, [v11 subarrayWithRange:{0, v27}], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v25, "isEqualToArray:", v29), v29, v30))
            {
              if (v28 < v26)
              {

                v31 = [v4 objectAtIndex:v28 - 1];
                v32 = [(BookmarksNavigationController *)v2 popToViewController:v31 animated:1];

                v33 = [v4 subarrayWithRange:{0, v28}];

                v66 = 0;
                v4 = v33;
              }

              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v4 = v4;
              v34 = [v4 countByEnumeratingWithState:&v72 objects:v81 count:16];
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
                      objc_enumerationMutation(v4);
                    }

                    v39 = *(*(&v72 + 1) + 8 * v38);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      bookmarkCollection = v2->_bookmarkCollection;
                      v41 = v39;
                      v42 = [v41 folder];
                      [v42 UUID];
                      v43 = v4;
                      v44 = v11;
                      v45 = v36;
                      v46 = v2;
                      v48 = v47 = v37;
                      v49 = [(WebBookmarkCollection *)bookmarkCollection bookmarkWithUUID:v48];
                      [v41 setFolder:v49];

                      v35 = v67;
                      v37 = v47;
                      v2 = v46;
                      v36 = v45;
                      v11 = v44;
                      v4 = v43;
                    }

                    ++v38;
                  }

                  while (v35 != v38);
                  v35 = [v4 countByEnumeratingWithState:&v72 objects:v81 count:16];
                }

                while (v35);
              }

              v22 = v66;
              [v66 reloadData];
              [(BookmarksNavigationController *)v2 _reloadSucceeded];
            }

            else
            {
              v50 = [MEMORY[0x277CBEB18] array];
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

                    v56 = [(BookmarksNavigationController *)v2 newBookmarksTableViewControllerWithFolder:*(*(&v68 + 1) + 8 * j) skipOffset:0];
                    [v50 addObject:v56];
                  }

                  v53 = [v51 countByEnumeratingWithState:&v68 objects:v80 count:16];
                }

                while (v53);
              }

              v57 = [v63 UUID];
              v58 = [v11 lastObject];
              v59 = [v57 isEqualToString:v58];

              [(BookmarksNavigationController *)v2 setViewControllers:v50 animated:v59 ^ 1u];
              [(BookmarksNavigationController *)v2 _reloadSucceeded];

              v22 = v66;
            }

            v6 = 0;
            v5 = v65;
            WeakRetained = v62;
            v19 = v63;
            v21 = v61;
          }

          else
          {
            [(BookmarksNavigationController *)v2 _reloadFailed];
            v5 = v65;
            v22 = v66;
          }
        }

        else
        {
          [(BookmarksNavigationController *)v2 _reloadFailed];
          v5 = v65;
          v22 = v66;
        }
      }
    }
  }
}

- (id)_favoritesFolderBasedOnContentRestriction
{
  v3 = [MEMORY[0x277D7B590] sharedWebFilterSettings];
  v4 = [v3 usesAllowedSitesOnly];

  bookmarkCollection = self->_bookmarkCollection;
  if (v4)
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

- (id)_lastExistingBookmarkWithUUIDs:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [(WebBookmarkCollection *)self->_bookmarkCollection bookmarkWithUUID:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)_pathForBookmark:(id)a3 startingFromAncestor:(id)a4
{
  v6 = a3;
  v7 = [a4 UUID];
  v8 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
  while ([v6 identifier])
  {
    v9 = v6;
    v6 = -[WebBookmarkCollection bookmarkWithID:](self->_bookmarkCollection, "bookmarkWithID:", [v6 parentID]);

    v10 = [v6 UUID];
    v11 = [v10 isEqualToString:v7];

    if (v11)
    {
      break;
    }

    [v8 insertObject:v6 atIndex:0];
  }

  if (v7 && ([v6 UUID], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v7, "isEqualToString:", v12), v12, !v13))
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
  v2 = [(BookmarksNavigationController *)self topHistoryViewController];
  [v2 updateClearHistoryButtonEnabled];
}

- (void)bookmarkSourceContentsChanged:(id)a3
{
  v4 = [a3 object];
  v5 = +[History sharedHistory];

  if (v4 == v5)
  {

    [(BookmarksNavigationController *)self _updateClearHistoryButton];
  }
}

- (BOOL)_shouldShowPaletteForViewController:(id)a3
{
  v4 = a3;
  if (self->_showCollections && [(NSArray *)self->_topLevelCollections count]>= 2)
  {
    v6 = [(BookmarksNavigationController *)self traitCollection];
    v7 = [v6 sf_usesSidebarPresentation];

    if (v7 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
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

- (id)_toolbarItemsForViewController:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(BookmarksNavigationController *)self _createToolbarItemsIfNecessary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[FeatureManager sharedFeatureManager];
    v6 = [v5 isBookmarksAvailable];

    if (v6)
    {
      if (self->_isEditing && [v4 canCreateNewFolder])
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
        if ([v4 isEditing])
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

      v11 = [v8 arrayWithObjects:p_createFolderButtonItem count:{v10, v16, v17, v18, v19, createFolderButtonItem, v21, editingDoneButtonItem, v23}];
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

  v11 = [v4 bookmarksPanelToolbarItems];
LABEL_14:
  v12 = v11;
LABEL_15:

  return v12;
}

- (void)_updateToolbarItemsForViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_allowsEditing && !self->_importHandler)
  {
    v8 = v6;
    v7 = [(BookmarksNavigationController *)self _toolbarItemsForViewController:v6];
    [v8 setToolbarItems:v7 animated:v4];

    v6 = v8;
  }
}

- (void)_setEditingFromToolbarButton:(BOOL)a3
{
  v3 = a3;
  v12 = [(BookmarksNavigationController *)self topReadingListViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setEditing:objc_msgSend(v12 animated:{"isEditing") ^ 1, 0}];
    goto LABEL_11;
  }

  v5 = [MEMORY[0x277D28BE0] sharedCoordinator];
  v6 = v5;
  if (!v3)
  {
    [v5 unlockBookmarksSoon];
    v8 = [(BookmarksNavigationController *)self navigationBar];
    [v8 setNeedsLayout];

    goto LABEL_7;
  }

  if ([v5 lockBookmarks])
  {
LABEL_7:
    v7 = [(BookmarksNavigationController *)self topBookmarksTableViewController];
    self->_isEditing = v3;
    [v7 setEditing:v3 animated:1];
    [(UISegmentedControl *)self->_collectionSegmentedControl setEnabled:v3 ^ 1];
    [(BookmarksNavigationController *)self setDoneButtonHidden:v3];
    if (self->_isEditing || (-[BookmarksNavigationController viewControllers](self, "viewControllers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10 >= 2))
    {
      v11 = [v7 navigationItem];
      [v11 setHidesBackButton:v3];
    }

    goto LABEL_10;
  }

  [MEMORY[0x277D28BE0] showLockedDatabaseAlertForAction:0 fromViewController:self];
  v7 = [MEMORY[0x277D499B8] sharedLogger];
  [v7 didPreventBookmarkActionWithBookmarkType:0 actionType:2];
LABEL_10:

LABEL_11:
}

- (void)_didPressNewFolderButton
{
  v8 = [(BookmarksNavigationController *)self topBookmarksTableViewController];
  v3 = objc_alloc(MEMORY[0x277D7B5A0]);
  v4 = [v8 folderID];
  v5 = [(WebBookmarkCollection *)self->_bookmarkCollection configuration];
  v6 = [v3 initFolderWithParentID:v4 collectionType:{objc_msgSend(v5, "collectionType")}];

  v7 = [objc_alloc(MEMORY[0x277CDB760]) initWithBookmark:v6 inCollection:self->_bookmarkCollection addingBookmark:0];
  [v7 setDelegate:self];
  [(BookmarksNavigationController *)self setPinnedPaletteForPanelViewController:v7];
  [(BookmarksNavigationController *)self pushViewController:v7 animated:1];
}

- (BOOL)rebaseOnDescendentBookmark:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(BookmarksNavigationController *)self viewControllers];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {

    goto LABEL_16;
  }

  v8 = v7;
  v16 = self;
  LOBYTE(v9) = 0;
  v10 = *v18;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v17 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 folderID];
        if (!(v9 & 1 | (v13 == [v4 identifier])))
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

    v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v8);

  if (!v9)
  {
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  [(BookmarksNavigationController *)v16 setViewControllers:v5];
  v14 = 1;
LABEL_17:

  return v14;
}

- (BOOL)rebaseOnAncestorBookmark:(id)a3 skipOffset:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(BookmarksNavigationController *)self viewControllers];
  v8 = [v7 objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(BookmarksNavigationController *)self viewControllers];
    v11 = [v10 mutableCopy];

    bookmarkCollection = self->_bookmarkCollection;
    v13 = [(BookmarksNavigationController *)self viewControllers];
    v14 = [v13 objectAtIndex:0];
    v15 = -[WebBookmarkCollection bookmarkWithID:](bookmarkCollection, "bookmarkWithID:", [v14 folderID]);

    LODWORD(v13) = [v15 identifier];
    if (v13 == [v6 identifier])
    {
      v16 = [(BookmarksNavigationController *)self newBookmarksTableViewControllerWithFolder:v6 skipOffset:v4];
      [v11 replaceObjectAtIndex:0 withObject:v16];
LABEL_4:
      [(BookmarksNavigationController *)self setViewControllers:v11];

      v17 = 1;
    }

    else
    {
      while (1)
      {
        v18 = [v15 identifier];
        v19 = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
        v20 = [v19 identifier];

        if (v18 == v20)
        {
          break;
        }

        v21 = v15;
        v15 = -[WebBookmarkCollection bookmarkWithID:](self->_bookmarkCollection, "bookmarkWithID:", [v15 parentID]);

        LODWORD(v21) = [v15 identifier];
        if (v21 == [v6 identifier])
        {
          v22 = v4;
        }

        else
        {
          v22 = 0;
        }

        v16 = [(BookmarksNavigationController *)self newBookmarksTableViewControllerWithFolder:v15 skipOffset:v22];
        [v11 insertObject:v16 atIndex:0];
        v23 = [v15 identifier];
        if (v23 == [v6 identifier])
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
  v5 = [v4 isReadingListAvailable];

  if (v5)
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
    v3 = [MEMORY[0x277CBEB18] array];
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
          [v3 addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [objc_alloc(MEMORY[0x277D75A08]) initWithItems:v3];
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

- (id)_segmentedControlItemForCollection:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BookmarksCollection"])
  {
    v4 = @"book";
  }

  else if ([v3 isEqualToString:@"ReadingListCollection"])
  {
    v4 = @"eyeglasses";
  }

  else if ([v3 isEqualToString:@"HistoryCollection"])
  {
    v4 = @"clock";
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277D750C8];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:v4];
  v7 = [v5 actionWithTitle:&stru_2827BF158 image:v6 identifier:v3 handler:&__block_literal_global_5];

  return v7;
}

- (void)_selectedCollectionChanged:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = -[NSArray objectAtIndex:](self->_topLevelCollections, "objectAtIndex:", [a3 selectedSegmentIndex]);
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Tap %{public}@", &v6, 0xCu);
  }

  [(BookmarksNavigationController *)self setCurrentCollection:v4];
}

- (id)newBookmarksTableViewControllerWithFolder:(id)a3 skipOffset:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [[BookmarksTableViewController alloc] initWithFolder:v6 inCollection:self->_bookmarkCollection skipOffset:v4];

  [(BookmarksTableViewController *)v7 setDelegate:self];
  v8 = [(BookmarksNavigationController *)self linkPreviewProvider];
  [(BookmarksTableViewController *)v7 setLinkPreviewProvider:v8];

  [(BookmarksTableViewController *)v7 setNavigationIntentHandler:self];
  return v7;
}

- (id)newRootViewControllerForCollection:(id)a3
{
  v4 = a3;
  v5 = [(BookmarksNavigationController *)self linkPreviewProvider];
  if ([v4 isEqualToString:@"BookmarksCollection"])
  {
    v6 = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
    v7 = [(BookmarksNavigationController *)self newBookmarksTableViewControllerWithFolder:v6 skipOffset:0];
  }

  else if ([v4 isEqualToString:@"HistoryCollection"])
  {
    v7 = [(BookmarksNavigationController *)self makeHistoryViewController];
  }

  else if ([v4 isEqualToString:@"ReadingListCollection"])
  {
    v7 = objc_alloc_init(ReadingListViewController);
    [(ReadingListViewController *)v7 setDelegate:self];
    [(ReadingListViewController *)v7 setLinkPreviewProvider:v5];
    [(ReadingListViewController *)v7 setNavigationIntentHandler:self];
    v8 = [(BookmarksNavigationController *)self tabGroupProvider];
    [(ReadingListViewController *)v7 setTabGroupProvider:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)makeHistoryViewController
{
  v3 = [(BookmarksNavigationController *)self linkPreviewProvider];
  v4 = [(BookmarksNavigationController *)self tabGroupProvider];
  v5 = [v4 activeProfile];
  v6 = [v4 hasMultipleProfiles];
  v7 = +[Application sharedApplication];
  v8 = [v7 historyController];
  v9 = [v5 identifier];
  v10 = [v8 historyForProfileIdentifier:v9 loadIfNeeded:1];

  v11 = [[SFHistoryViewController alloc] initWithHistory:v10];
  [(SFHistoryViewController *)v11 setDelegate:self];
  [(SFHistoryViewController *)v11 setLinkPreviewProvider:v3];
  [(SFHistoryViewController *)v11 setNavigationIntentHandler:self];
  v12 = [(BookmarksNavigationController *)self tabGroupProvider];
  [(SFHistoryViewController *)v11 setTabGroupProvider:v12];

  if (v6)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = _WBSLocalizedString();
    v15 = [v5 title];
    v16 = [v13 stringWithFormat:v14, v15];
    [(SFHistoryViewController *)v11 setTitle:v16];
  }

  return v11;
}

- (void)setCurrentCollection:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([v5 isEqualToString:self->_currentCollection] & 1) == 0)
  {
    if (self->_currentCollection)
    {
      [(BookmarksNavigationController *)self _savePanelState];
    }

    v6 = [(BookmarksNavigationController *)self newRootViewControllerForCollection:v5];
    objc_storeStrong(&self->_currentCollection, a3);
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
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v8 dictionaryForKey:@"BookmarksPanelSavedState"];
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
  v4 = [(BookmarksNavigationController *)self viewControllers];
  v8 = [v4 objectAtIndex:0];

  v5 = [v8 currentStateDictionary];
  v6 = [v5 mutableCopy];

  [(NSMutableDictionary *)self->_savedCollectionState setObject:v6 forKey:v3];
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v7 setObject:self->_savedCollectionState forKey:@"BookmarksPanelSavedState"];
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

    v7 = self;
    v6 = v8;
  }

  else
  {
    v6 = [(NSArray *)self->_topLevelCollections objectAtIndex:0];
    v7 = self;
    v8 = v6;
  }

  [(BookmarksNavigationController *)v7 setCurrentCollection:v6];
LABEL_9:
}

- (void)_restoreCurrentCollectionState
{
  v3 = [(BookmarksNavigationController *)self viewControllers];
  v5 = [v3 objectAtIndex:0];

  v4 = [(NSMutableDictionary *)self->_savedCollectionState objectForKey:self->_currentCollection];
  if (v4)
  {
    [v5 restoreStateWithDictionary:v4];
  }
}

- (BOOL)_createSavedPanelStateForTesting
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  if (_test_savedStateCollection)
  {
    [v3 setObject:_test_savedStateCollection forKey:@"CurrentCollection"];
  }

  v5 = [v4 count];
  if (v5)
  {
    objc_storeStrong(&self->_savedCollectionState, v4);
  }

  return v5 != 0;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v13 = a4;
  v7 = [(BookmarksNavigationController *)self viewControllers];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = _WBSLocalizedString();
    v10 = [v13 navigationItem];
    [v10 setBackButtonTitle:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BookmarksNavigationController *)self _updateClearHistoryButton];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 updateSeparatorInset];
  }

  [(BookmarksNavigationController *)self _updateDoneButtonItemForViewController:v13];
  [(BookmarksNavigationController *)self _updateToolbarItemsForViewController:v13 animated:v5];
  [(BookmarksNavigationController *)self _updateToolbarVisibility];
  v11 = [(BookmarksNavigationController *)self traitCollection];
  v12 = [v11 sf_usesSidebarPresentation];

  if (v12)
  {
    [v13 setEdgesForExtendedLayout:0];
  }
}

- (void)_updateDoneButtonItemForViewController:(id)a3
{
  v13 = a3;
  v4 = [v13 navigationItem];
  v5 = [v4 rightBarButtonItem];
  v6 = v5;
  if (!v5 || v5 == self->_doneButtonItem)
  {
    if (self->_doneButtonHidden)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v8 = [(BookmarksNavigationController *)self traitCollection];
      if (([v8 sf_usesSidebarPresentation] & 1) != 0 || !objc_msgSend(v13, "safari_wantsDoneButtonInModalBookmarksPanel"))
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

    [v4 setRightBarButtonItem:v12 animated:1];
  }

LABEL_17:
}

- (void)setDoneButtonHidden:(BOOL)a3
{
  if (self->_doneButtonHidden != a3)
  {
    self->_doneButtonHidden = a3;
    v5 = [(BookmarksNavigationController *)self topViewController];
    [(BookmarksNavigationController *)self _updateDoneButtonItemForViewController:v5];
  }
}

- (void)_bookmarkSyncTimerDidFire:(id)a3
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

- (void)setAllowsEditing:(BOOL)a3
{
  if (self->_allowsEditing != a3)
  {
    self->_allowsEditing = a3;
    v5 = [(BookmarksNavigationController *)self topViewController];
    [(BookmarksNavigationController *)self _updateToolbarItemsForViewController:v5 animated:0];
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = a3;
    v6 = [(BookmarksNavigationController *)self topViewController];
    v5 = [v6 view];
    [v5 setNeedsLayout];
  }
}

- (void)setTableSeparatorInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tableSeparatorInset.top), vceqq_f64(v4, *&self->_tableSeparatorInset.bottom)))) & 1) == 0)
  {
    self->_tableSeparatorInset = a3;
    v6 = [(BookmarksNavigationController *)self topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 updateSeparatorInset];
    }

    v5 = [v6 view];
    [v5 setNeedsLayout];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = +[Application sharedApplication];
  v5 = [v4 tabGroupManager];
  [v5 removeTabGroupObserver:self];

  v6.receiver = self;
  v6.super_class = BookmarksNavigationController;
  [(BookmarksNavigationController *)&v6 dealloc];
}

- (void)handleNavigationIntent:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained handleNavigationIntent:v7 completion:v6];
}

- (void)dispatchNavigationIntent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained dispatchNavigationIntent:v4];
}

- (void)panelViewController:(id)a3 updateToolbarItemsAnimated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(BookmarksNavigationController *)self topViewController];

  v7 = v8;
  if (v6 == v8)
  {
    [(BookmarksNavigationController *)self _updateToolbarItemsForViewController:v8 animated:v4];
    v7 = v8;
  }
}

- (void)setPinnedPaletteForPanelViewController:(id)a3
{
  v12 = a3;
  if ([(BookmarksNavigationController *)self _shouldShowPaletteForViewController:?])
  {
    [(BookmarksNavigationController *)self _setupCollectionSegmentedControlIfNeeded];
    palette = self->_palette;
    if (!palette)
    {
      v5 = [(BookmarksNavigationController *)self view];
      [v5 bounds];
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

    v11 = [v12 navigationItem];
    [v11 _setBottomPalette:palette];
  }
}

- (void)panelViewControllerDidBeginEditing:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v8 tableView];
    v5 = [v4 _swipeActionController];
    v6 = [v5 swipedIndexPaths];
    v7 = [v6 count] == 0;
  }

  else
  {
    v7 = 1;
  }

  [(BookmarksNavigationController *)self setDoneButtonHidden:v7];
}

- (UIEdgeInsets)separatorInsetForBookmarksTableViewController:(id)a3
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

- (UIEdgeInsets)contentInsetForBookmarksTableViewController:(id)a3
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

- (BOOL)bookmarksTableViewShouldDispatchNavigationIntent:(id)a3 forSelectedBookmark:(id)a4
{
  importHandler = self->_importHandler;
  if (importHandler)
  {
    importHandler[2](self->_importHandler, a4, a3);
  }

  return importHandler == 0;
}

- (BOOL)bookmarksTableViewIsReadOnly:(id)a3
{
  v4 = [a3 managedBookmarkFolder];

  return v4 || self->_importHandler != 0;
}

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained tabGroupProvider];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)readingListViewControllerCurrentReadingListItem:(id)a3
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

- (void)readingListViewController:(id)a3 updateUnreadFilterShowingAllBookmarks:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationController:self updateReadingListUnreadFilterShowingAllBookmarks:v4];
  }
}

- (void)readingListViewController:(id)a3 setBookmark:(id)a4 asRead:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_bookmarksNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksNavigationController:self setBookmark:v8 asRead:v5];
  }
}

- (void)tabGroupManagerDidUpdateTabGroups:(id)a3
{
  v3 = [(BookmarksNavigationController *)self topmostBookmarksTableViewController];
  [v3 reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)a3 didRemoveTabGroupWithUUID:(id)a4
{
  v4 = [(BookmarksNavigationController *)self topmostBookmarksTableViewController:a3];
  [v4 reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)a3 didUpdateTabGroupWithUUID:(id)a4
{
  v4 = [(BookmarksNavigationController *)self topmostBookmarksTableViewController:a3];
  [v4 reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)a3 didUpdateScopedBookmarkList:(id)a4
{
  v5 = [a4 folderID];

  [(BookmarksNavigationController *)self _reloadFolderContentsForFolderIDIfNeeded:v5];
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
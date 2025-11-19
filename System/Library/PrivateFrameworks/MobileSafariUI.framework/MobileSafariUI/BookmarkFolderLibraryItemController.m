@interface BookmarkFolderLibraryItemController
- (BOOL)isEqual:(id)a3;
- (BookmarkFolderLibraryItemController)initWithConfiguration:(id)a3 folder:(id)a4;
- (LinkPreviewProvider)linkPreviewProvider;
- (TabGroupProvider)tabGroupProvider;
- (UIEdgeInsets)contentInsetForBookmarksTableViewController:(id)a3;
- (UIEdgeInsets)separatorInsetForBookmarksTableViewController:(id)a3;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (id)_toolbarItemsForViewController:(id)a3;
- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)a3;
- (id)topViewController;
- (id)viewController;
- (void)_createToolbarItemsIfNecessary;
- (void)_didPressNewFolderButton;
- (void)_folderContentsDidChange:(id)a3;
- (void)_reloadFolderContentsForFolderIDIfNeeded:(int)a3;
- (void)_setEditingFromToolbarButton:(BOOL)a3;
- (void)_updateToolbarItemsForViewController:(id)a3 animated:(BOOL)a4;
- (void)bookmarksTableViewControllerWillDisappear:(id)a3;
- (void)dealloc;
- (void)dispatchNavigationIntent:(id)a3;
- (void)handleNavigationIntent:(id)a3 completion:(id)a4;
- (void)panelViewControllerDidBeginEditing:(id)a3;
- (void)panelViewControllerDidEndEditing:(id)a3;
- (void)performDropWithProposal:(id)a3 session:(id)a4 inViewController:(id)a5;
- (void)tabGroupManager:(id)a3 didRemoveTabGroupWithUUID:(id)a4;
- (void)tabGroupManager:(id)a3 didUpdateScopedBookmarkList:(id)a4;
- (void)tabGroupManager:(id)a3 didUpdateTabGroupWithUUID:(id)a4;
- (void)tabGroupManagerDidUpdateTabGroups:(id)a3;
- (void)updateListContentConfiguration:(id)a3;
- (void)updateToolbarIfNeeded;
@end

@implementation BookmarkFolderLibraryItemController

- (BookmarkFolderLibraryItemController)initWithConfiguration:(id)a3 folder:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BookmarkFolderLibraryItemController;
  v8 = [(LibraryItemController *)&v12 initWithConfiguration:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_folder, a4);
    v9->_allowsEditing = 1;
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    folder = self->_folder;
    v6 = [v4 folder];
    v7 = [(WebBookmark *)folder isEqualToBookmark:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = +[Application sharedApplication];
  v5 = [v4 tabGroupManager];
  [v5 removeTabGroupObserver:self];

  v6.receiver = self;
  v6.super_class = BookmarkFolderLibraryItemController;
  [(BookmarkFolderLibraryItemController *)&v6 dealloc];
}

- (void)updateListContentConfiguration:(id)a3
{
  v12 = a3;
  v4 = [(WebBookmark *)self->_folder localizedTitle];
  [v12 setText:v4];

  v5 = [(WebBookmark *)self->_folder specialID];
  if (v5 == *MEMORY[0x277D7B510])
  {
    v6 = MEMORY[0x277D755B8];
    v7 = @"bookmark";
  }

  else
  {
    v8 = [(WebBookmark *)self->_folder identifier];
    v9 = [(WebBookmarkCollection *)self->_collection favoritesFolder];
    v10 = [v9 identifier];

    v6 = MEMORY[0x277D755B8];
    if (v8 == v10)
    {
      v7 = @"star";
    }

    else
    {
      v7 = @"folder";
    }
  }

  v11 = [v6 systemImageNamed:v7];
  [v12 setImage:v11];
}

- (id)viewController
{
  viewController = self->_viewController;
  if (!viewController)
  {
    v4 = [[BookmarksTableViewController alloc] initWithFolder:self->_folder inCollection:self->_collection];
    v5 = self->_viewController;
    self->_viewController = v4;

    [(BookmarksTableViewController *)self->_viewController setDelegate:self];
    v6 = [(BookmarkFolderLibraryItemController *)self linkPreviewProvider];
    [(BookmarksTableViewController *)self->_viewController setLinkPreviewProvider:v6];

    [(BookmarksTableViewController *)self->_viewController setNavigationIntentHandler:self];
    v7 = [(BookmarksTableViewController *)self->_viewController navigationItem];
    [v7 setLargeTitleDisplayMode:2];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel__folderContentsDidChange_ name:*MEMORY[0x277D7B618] object:0];

    v9 = +[Application sharedApplication];
    v10 = [v9 tabGroupManager];
    [v10 addTabGroupObserver:self];

    viewController = self->_viewController;
  }

  return viewController;
}

- (void)updateToolbarIfNeeded
{
  v3 = [(BookmarkFolderLibraryItemController *)self topViewController];
  v4 = [(BookmarkFolderLibraryItemController *)self topViewController];
  v5 = [(BookmarkFolderLibraryItemController *)self _toolbarItemsForViewController:v4];
  [v3 setToolbarItems:v5 animated:0];

  [(BookmarkFolderLibraryItemController *)self _createToolbarItemsIfNecessary];
}

- (id)topViewController
{
  v3 = [(BookmarksTableViewController *)self->_viewController navigationController];
  v4 = [v3 topViewController];

  objc_opt_class();
  viewController = v4;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    viewController = self->_viewController;
  }

  v6 = viewController;

  return viewController;
}

- (void)_folderContentsDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 valueForKey:*MEMORY[0x277D7B5E8]];

  v5 = v6;
  if (v6)
  {
    -[BookmarkFolderLibraryItemController _reloadFolderContentsForFolderIDIfNeeded:](self, "_reloadFolderContentsForFolderIDIfNeeded:", [v6 intValue]);
    v5 = v6;
  }
}

- (void)_reloadFolderContentsForFolderIDIfNeeded:(int)a3
{
  v4 = [(BookmarkFolderLibraryItemController *)self topViewController];
  if ([v4 folderID] == a3)
  {
    [v4 reloadBookmarks];
  }
}

- (void)_didPressNewFolderButton
{
  v10 = [(BookmarkFolderLibraryItemController *)self topViewController];
  v3 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v4 = objc_alloc(MEMORY[0x277D7B5A0]);
  v5 = [v10 folderID];
  v6 = [v3 configuration];
  v7 = [v4 initFolderWithParentID:v5 collectionType:{objc_msgSend(v6, "collectionType")}];

  v8 = [objc_alloc(MEMORY[0x277CDB760]) initWithBookmark:v7 inCollection:v3 addingBookmark:0];
  [v8 setDelegate:self];
  v9 = [v10 navigationController];
  [v9 pushViewController:v8 animated:1];
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
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(BookmarkFolderLibraryItemController *)self _createToolbarItemsIfNecessary];
  v5 = +[FeatureManager sharedFeatureManager];
  v6 = [v5 isBookmarksAvailable];

  if (v6)
  {
    if (self->_isEditing && [v4 canCreateNewFolder])
    {
      flexibleSpaceItem = self->_flexibleSpaceItem;
      createFolderButtonItem = self->_createFolderButtonItem;
      v20 = flexibleSpaceItem;
      editingDoneButtonItem = self->_editingDoneButtonItem;
      v8 = MEMORY[0x277CBEA60];
      p_createFolderButtonItem = &createFolderButtonItem;
      v10 = 3;
    }

    else
    {
      if ([v4 isEditing])
      {
        v12 = self->_editingDoneButtonItem;
        v17 = self->_flexibleSpaceItem;
        v18 = v12;
        v8 = MEMORY[0x277CBEA60];
        p_createFolderButtonItem = &v17;
      }

      else
      {
        editButtonItem = self->_editButtonItem;
        v15 = self->_flexibleSpaceItem;
        v16 = editButtonItem;
        v8 = MEMORY[0x277CBEA60];
        p_createFolderButtonItem = &v15;
      }

      v10 = 2;
    }

    v11 = [v8 arrayWithObjects:p_createFolderButtonItem count:{v10, v15, v16, v17, v18, createFolderButtonItem, v20, editingDoneButtonItem, v22}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (void)_updateToolbarItemsForViewController:(id)a3 animated:(BOOL)a4
{
  if (self->_allowsEditing)
  {
    v5 = a4;
    v7 = a3;
    v8 = [(BookmarkFolderLibraryItemController *)self _toolbarItemsForViewController:v7];
    [v7 setToolbarItems:v8 animated:v5];
  }
}

- (void)_setEditingFromToolbarButton:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D28BE0] sharedCoordinator];
  v12 = v5;
  if (v3)
  {
    if (([v5 lockBookmarks] & 1) == 0)
    {
      v6 = MEMORY[0x277D28BE0];
      v7 = [(BookmarkFolderLibraryItemController *)self topViewController];
      [v6 showLockedDatabaseAlertForAction:0 fromViewController:v7];

      v8 = [MEMORY[0x277D499B8] sharedLogger];
      [v8 didPreventBookmarkActionWithBookmarkType:0 actionType:2];
      goto LABEL_6;
    }
  }

  else
  {
    [v5 unlockBookmarksSoon];
    v9 = [(BookmarkFolderLibraryItemController *)self topViewController];
    v10 = [v9 navigationController];
    v11 = [v10 navigationBar];
    [v11 setNeedsLayout];
  }

  v8 = [(BookmarkFolderLibraryItemController *)self topViewController];
  self->_isEditing = v3;
  [v8 setEditing:v3 animated:1];
LABEL_6:
}

- (void)panelViewControllerDidBeginEditing:(id)a3
{
  v4 = [(BookmarkFolderLibraryItemController *)self topViewController];
  [(BookmarkFolderLibraryItemController *)self _updateToolbarItemsForViewController:v4 animated:1];
}

- (void)panelViewControllerDidEndEditing:(id)a3
{
  v4 = [(BookmarkFolderLibraryItemController *)self topViewController];
  [(BookmarkFolderLibraryItemController *)self _updateToolbarItemsForViewController:v4 animated:1];
}

- (UIEdgeInsets)separatorInsetForBookmarksTableViewController:(id)a3
{
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)contentInsetForBookmarksTableViewController:(id)a3
{
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)bookmarksTableViewControllerWillDisappear:(id)a3
{
  if (self->_isEditing)
  {
    v5 = a3;
    [(BookmarkFolderLibraryItemController *)self _setEditingFromToolbarButton:0];
    [v5 setEditing:0];
  }
}

- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);

  return WeakRetained;
}

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);

  return WeakRetained;
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
  [v4 setShouldDismissSidebarOnLoad:1];
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained dispatchNavigationIntent:v4];
}

- (void)performDropWithProposal:(id)a3 session:(id)a4 inViewController:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [a3 operation];
  if (v10 == 2)
  {
    v16 = MEMORY[0x277D7B5A0];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __88__BookmarkFolderLibraryItemController_performDropWithProposal_session_inViewController___block_invoke;
    v21 = &unk_2781D85C0;
    v22 = self;
    v23 = v9;
    [v16 _sf_webBookmarksFromDropSession:v8 completionHandler:&v18];

    goto LABEL_6;
  }

  if (v10 != 3)
  {
LABEL_6:
    v17 = [MEMORY[0x277D499B8] sharedLogger];
    [v17 didUseSidebarAction:20];

    goto LABEL_7;
  }

  v11 = [v8 items];
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [v12 _sf_localBookmark];

  if (v13)
  {
    collection = self->_collection;
    v24[0] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [(WebBookmarkCollection *)collection dropBookmarks:v15 inFolderWithID:[(WebBookmark *)self->_folder identifier] presentingViewController:v9 isAddingBookmark:0];

    goto LABEL_6;
  }

LABEL_7:
}

void __88__BookmarkFolderLibraryItemController_performDropWithProposal_session_inViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  v5 = *(v3 + 120);
  v6 = a2;
  -[WebBookmarkCollection dropBookmarks:inFolderWithID:presentingViewController:isAddingBookmark:](v4, v6, [v5 identifier], *(a1 + 40), 1);
}

- (void)tabGroupManagerDidUpdateTabGroups:(id)a3
{
  v3 = [(BookmarkFolderLibraryItemController *)self topViewController];
  [v3 reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)a3 didRemoveTabGroupWithUUID:(id)a4
{
  v4 = [(BookmarkFolderLibraryItemController *)self topViewController:a3];
  [v4 reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)a3 didUpdateTabGroupWithUUID:(id)a4
{
  v4 = [(BookmarkFolderLibraryItemController *)self topViewController:a3];
  [v4 reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)a3 didUpdateScopedBookmarkList:(id)a4
{
  v5 = [a4 folderID];

  [(BookmarkFolderLibraryItemController *)self _reloadFolderContentsForFolderIDIfNeeded:v5];
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

@end
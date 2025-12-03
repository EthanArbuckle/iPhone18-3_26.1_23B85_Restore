@interface BookmarkFolderLibraryItemController
- (BOOL)isEqual:(id)equal;
- (BookmarkFolderLibraryItemController)initWithConfiguration:(id)configuration folder:(id)folder;
- (LinkPreviewProvider)linkPreviewProvider;
- (TabGroupProvider)tabGroupProvider;
- (UIEdgeInsets)contentInsetForBookmarksTableViewController:(id)controller;
- (UIEdgeInsets)separatorInsetForBookmarksTableViewController:(id)controller;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (id)_toolbarItemsForViewController:(id)controller;
- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)controller;
- (id)topViewController;
- (id)viewController;
- (void)_createToolbarItemsIfNecessary;
- (void)_didPressNewFolderButton;
- (void)_folderContentsDidChange:(id)change;
- (void)_reloadFolderContentsForFolderIDIfNeeded:(int)needed;
- (void)_setEditingFromToolbarButton:(BOOL)button;
- (void)_updateToolbarItemsForViewController:(id)controller animated:(BOOL)animated;
- (void)bookmarksTableViewControllerWillDisappear:(id)disappear;
- (void)dealloc;
- (void)dispatchNavigationIntent:(id)intent;
- (void)handleNavigationIntent:(id)intent completion:(id)completion;
- (void)panelViewControllerDidBeginEditing:(id)editing;
- (void)panelViewControllerDidEndEditing:(id)editing;
- (void)performDropWithProposal:(id)proposal session:(id)session inViewController:(id)controller;
- (void)tabGroupManager:(id)manager didRemoveTabGroupWithUUID:(id)d;
- (void)tabGroupManager:(id)manager didUpdateScopedBookmarkList:(id)list;
- (void)tabGroupManager:(id)manager didUpdateTabGroupWithUUID:(id)d;
- (void)tabGroupManagerDidUpdateTabGroups:(id)groups;
- (void)updateListContentConfiguration:(id)configuration;
- (void)updateToolbarIfNeeded;
@end

@implementation BookmarkFolderLibraryItemController

- (BookmarkFolderLibraryItemController)initWithConfiguration:(id)configuration folder:(id)folder
{
  folderCopy = folder;
  v12.receiver = self;
  v12.super_class = BookmarkFolderLibraryItemController;
  v8 = [(LibraryItemController *)&v12 initWithConfiguration:configuration];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_folder, folder);
    v9->_allowsEditing = 1;
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    folder = self->_folder;
    folder = [equalCopy folder];
    v7 = [(WebBookmark *)folder isEqualToBookmark:folder];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = +[Application sharedApplication];
  tabGroupManager = [v4 tabGroupManager];
  [tabGroupManager removeTabGroupObserver:self];

  v6.receiver = self;
  v6.super_class = BookmarkFolderLibraryItemController;
  [(BookmarkFolderLibraryItemController *)&v6 dealloc];
}

- (void)updateListContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  localizedTitle = [(WebBookmark *)self->_folder localizedTitle];
  [configurationCopy setText:localizedTitle];

  specialID = [(WebBookmark *)self->_folder specialID];
  if (specialID == *MEMORY[0x277D7B510])
  {
    v6 = MEMORY[0x277D755B8];
    v7 = @"bookmark";
  }

  else
  {
    identifier = [(WebBookmark *)self->_folder identifier];
    favoritesFolder = [(WebBookmarkCollection *)self->_collection favoritesFolder];
    identifier2 = [favoritesFolder identifier];

    v6 = MEMORY[0x277D755B8];
    if (identifier == identifier2)
    {
      v7 = @"star";
    }

    else
    {
      v7 = @"folder";
    }
  }

  v11 = [v6 systemImageNamed:v7];
  [configurationCopy setImage:v11];
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
    linkPreviewProvider = [(BookmarkFolderLibraryItemController *)self linkPreviewProvider];
    [(BookmarksTableViewController *)self->_viewController setLinkPreviewProvider:linkPreviewProvider];

    [(BookmarksTableViewController *)self->_viewController setNavigationIntentHandler:self];
    navigationItem = [(BookmarksTableViewController *)self->_viewController navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__folderContentsDidChange_ name:*MEMORY[0x277D7B618] object:0];

    v9 = +[Application sharedApplication];
    tabGroupManager = [v9 tabGroupManager];
    [tabGroupManager addTabGroupObserver:self];

    viewController = self->_viewController;
  }

  return viewController;
}

- (void)updateToolbarIfNeeded
{
  topViewController = [(BookmarkFolderLibraryItemController *)self topViewController];
  topViewController2 = [(BookmarkFolderLibraryItemController *)self topViewController];
  v5 = [(BookmarkFolderLibraryItemController *)self _toolbarItemsForViewController:topViewController2];
  [topViewController setToolbarItems:v5 animated:0];

  [(BookmarkFolderLibraryItemController *)self _createToolbarItemsIfNecessary];
}

- (id)topViewController
{
  navigationController = [(BookmarksTableViewController *)self->_viewController navigationController];
  topViewController = [navigationController topViewController];

  objc_opt_class();
  viewController = topViewController;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    viewController = self->_viewController;
  }

  v6 = viewController;

  return viewController;
}

- (void)_folderContentsDidChange:(id)change
{
  userInfo = [change userInfo];
  v6 = [userInfo valueForKey:*MEMORY[0x277D7B5E8]];

  v5 = v6;
  if (v6)
  {
    -[BookmarkFolderLibraryItemController _reloadFolderContentsForFolderIDIfNeeded:](self, "_reloadFolderContentsForFolderIDIfNeeded:", [v6 intValue]);
    v5 = v6;
  }
}

- (void)_reloadFolderContentsForFolderIDIfNeeded:(int)needed
{
  topViewController = [(BookmarkFolderLibraryItemController *)self topViewController];
  if ([topViewController folderID] == needed)
  {
    [topViewController reloadBookmarks];
  }
}

- (void)_didPressNewFolderButton
{
  topViewController = [(BookmarkFolderLibraryItemController *)self topViewController];
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v4 = objc_alloc(MEMORY[0x277D7B5A0]);
  folderID = [topViewController folderID];
  configuration = [mainBookmarkCollection configuration];
  v7 = [v4 initFolderWithParentID:folderID collectionType:{objc_msgSend(configuration, "collectionType")}];

  v8 = [objc_alloc(MEMORY[0x277CDB760]) initWithBookmark:v7 inCollection:mainBookmarkCollection addingBookmark:0];
  [v8 setDelegate:self];
  navigationController = [topViewController navigationController];
  [navigationController pushViewController:v8 animated:1];
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
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  [(BookmarkFolderLibraryItemController *)self _createToolbarItemsIfNecessary];
  v5 = +[FeatureManager sharedFeatureManager];
  isBookmarksAvailable = [v5 isBookmarksAvailable];

  if (isBookmarksAvailable)
  {
    if (self->_isEditing && [controllerCopy canCreateNewFolder])
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
      if ([controllerCopy isEditing])
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

- (void)_updateToolbarItemsForViewController:(id)controller animated:(BOOL)animated
{
  if (self->_allowsEditing)
  {
    animatedCopy = animated;
    controllerCopy = controller;
    v8 = [(BookmarkFolderLibraryItemController *)self _toolbarItemsForViewController:controllerCopy];
    [controllerCopy setToolbarItems:v8 animated:animatedCopy];
  }
}

- (void)_setEditingFromToolbarButton:(BOOL)button
{
  buttonCopy = button;
  mEMORY[0x277D28BE0] = [MEMORY[0x277D28BE0] sharedCoordinator];
  v12 = mEMORY[0x277D28BE0];
  if (buttonCopy)
  {
    if (([mEMORY[0x277D28BE0] lockBookmarks] & 1) == 0)
    {
      v6 = MEMORY[0x277D28BE0];
      topViewController = [(BookmarkFolderLibraryItemController *)self topViewController];
      [v6 showLockedDatabaseAlertForAction:0 fromViewController:topViewController];

      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] didPreventBookmarkActionWithBookmarkType:0 actionType:2];
      goto LABEL_6;
    }
  }

  else
  {
    [mEMORY[0x277D28BE0] unlockBookmarksSoon];
    topViewController2 = [(BookmarkFolderLibraryItemController *)self topViewController];
    navigationController = [topViewController2 navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setNeedsLayout];
  }

  mEMORY[0x277D499B8] = [(BookmarkFolderLibraryItemController *)self topViewController];
  self->_isEditing = buttonCopy;
  [mEMORY[0x277D499B8] setEditing:buttonCopy animated:1];
LABEL_6:
}

- (void)panelViewControllerDidBeginEditing:(id)editing
{
  topViewController = [(BookmarkFolderLibraryItemController *)self topViewController];
  [(BookmarkFolderLibraryItemController *)self _updateToolbarItemsForViewController:topViewController animated:1];
}

- (void)panelViewControllerDidEndEditing:(id)editing
{
  topViewController = [(BookmarkFolderLibraryItemController *)self topViewController];
  [(BookmarkFolderLibraryItemController *)self _updateToolbarItemsForViewController:topViewController animated:1];
}

- (UIEdgeInsets)separatorInsetForBookmarksTableViewController:(id)controller
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

- (UIEdgeInsets)contentInsetForBookmarksTableViewController:(id)controller
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

- (void)bookmarksTableViewControllerWillDisappear:(id)disappear
{
  if (self->_isEditing)
  {
    disappearCopy = disappear;
    [(BookmarkFolderLibraryItemController *)self _setEditingFromToolbarButton:0];
    [disappearCopy setEditing:0];
  }
}

- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);

  return WeakRetained;
}

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);

  return WeakRetained;
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
  [intentCopy setShouldDismissSidebarOnLoad:1];
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained dispatchNavigationIntent:intentCopy];
}

- (void)performDropWithProposal:(id)proposal session:(id)session inViewController:(id)controller
{
  v24[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  controllerCopy = controller;
  operation = [proposal operation];
  if (operation == 2)
  {
    v16 = MEMORY[0x277D7B5A0];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __88__BookmarkFolderLibraryItemController_performDropWithProposal_session_inViewController___block_invoke;
    v21 = &unk_2781D85C0;
    selfCopy = self;
    v23 = controllerCopy;
    [v16 _sf_webBookmarksFromDropSession:sessionCopy completionHandler:&v18];

    goto LABEL_6;
  }

  if (operation != 3)
  {
LABEL_6:
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didUseSidebarAction:20];

    goto LABEL_7;
  }

  items = [sessionCopy items];
  v12 = [items objectAtIndexedSubscript:0];
  _sf_localBookmark = [v12 _sf_localBookmark];

  if (_sf_localBookmark)
  {
    collection = self->_collection;
    v24[0] = _sf_localBookmark;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [(WebBookmarkCollection *)collection dropBookmarks:v15 inFolderWithID:[(WebBookmark *)self->_folder identifier] presentingViewController:controllerCopy isAddingBookmark:0];

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

- (void)tabGroupManagerDidUpdateTabGroups:(id)groups
{
  topViewController = [(BookmarkFolderLibraryItemController *)self topViewController];
  [topViewController reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)manager didRemoveTabGroupWithUUID:(id)d
{
  v4 = [(BookmarkFolderLibraryItemController *)self topViewController:manager];
  [v4 reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)manager didUpdateTabGroupWithUUID:(id)d
{
  v4 = [(BookmarkFolderLibraryItemController *)self topViewController:manager];
  [v4 reloadAllSyntheticFolders];
}

- (void)tabGroupManager:(id)manager didUpdateScopedBookmarkList:(id)list
{
  folderID = [list folderID];

  [(BookmarkFolderLibraryItemController *)self _reloadFolderContentsForFolderIDIfNeeded:folderID];
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
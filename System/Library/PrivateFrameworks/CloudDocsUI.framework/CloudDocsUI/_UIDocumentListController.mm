@interface _UIDocumentListController
+ (id)_listControllerHierarchyForURL:(id)a3 withConstructorBlock:(id)a4;
+ (id)listControllerHierarchyForURL:(id)a3;
+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
- (BOOL)shouldHighlightItem:(id)a3;
- (BOOL)shouldSelectItem:(id)a3;
- (NSArray)containedItems;
- (NSArray)selectedItems;
- (NSString)description;
- (NSURL)presentedURL;
- (_UIDocumentListController)initWithModel:(id)a3;
- (_UIDocumentListController)initWithURL:(id)a3;
- (_UIDocumentListController)rootListController;
- (_UIDocumentListControllerDelegate)delegate;
- (id)previewViewControllerForItem:(id)a3;
- (int)sortOrder;
- (int64_t)availableActions;
- (int64_t)displayMode;
- (void)_commonInitWithModel:(id)a3;
- (void)_performScrollTest:(id)a3 iterations:(int)a4 delta:(int)a5 listMode:(int64_t)a6;
- (void)_setContainerViewController:(id)a3;
- (void)_updateScrollPositionForStateRestoration;
- (void)createSearchControllerWithModel:(id)a3;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)didHighlightItem:(id)a3;
- (void)didSelectItem:(id)a3;
- (void)didUnhighlightItem:(id)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)itemsOrSelectionDidChange:(BOOL)a3;
- (void)performAction:(int64_t)a3 item:(id)a4 view:(id)a5 completion:(id)a6;
- (void)setAvailableActions:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setDisplayMode:(int64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHideSearchField:(BOOL)a3;
- (void)setSelectedItems:(id)a3;
- (void)setSortOrder:(int)a3;
- (void)updateTitle;
@end

@implementation _UIDocumentListController

- (void)_commonInitWithModel:(id)a3
{
  v5 = a3;
  v4 = [[_UIDocumentPickerContainerViewController alloc] initWithModel:v5];
  [(_UIDocumentListController *)self _setContainerViewController:v4];
  [(_UIDocumentListController *)self setRestorationClass:objc_opt_class()];
  [(_UIDocumentListController *)self setRestorationIdentifier:@"DocumentList"];
  [(_UIDocumentListController *)self setAvailableActions:7];
  [(_UIDocumentListController *)self setEdgesForExtendedLayout:0];
  [(_UIDocumentListController *)self updateTitle];
  if (![(_UIDocumentListController *)self hideSearchField])
  {
    [(_UIDocumentListController *)self createSearchControllerWithModel:v5];
  }
}

- (_UIDocumentListController)initWithURL:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _UIDocumentListController;
  v5 = [(_UIDocumentListController *)&v16 initWithNibName:0 bundle:0];
  if (!v5)
  {
    goto LABEL_9;
  }

  if (!v4)
  {
    v13 = [_UIDocumentPickerRootContainerModel alloc];
    v17 = *MEMORY[0x277CC20C0];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v11 = [(_UIDocumentPickerRootContainerModel *)v13 initWithPickableTypes:v8 mode:1];
    goto LABEL_8;
  }

  v15 = 0;
  v6 = [v4 getPromisedItemResourceValue:&v15 forKey:*MEMORY[0x277CBE868] error:0];
  v7 = v15;
  v8 = v7;
  if (v6 && [v7 BOOLValue])
  {
    v9 = [_UIDocumentPickerURLContainerModel alloc];
    v18[0] = *MEMORY[0x277CC20C0];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v11 = [(_UIDocumentPickerURLContainerModel *)v9 initWithURL:v4 pickableTypes:v10 mode:1];

LABEL_8:
    [(_UIDocumentListController *)v5 _commonInitWithModel:v11];

LABEL_9:
    v12 = v5;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (_UIDocumentListController)initWithModel:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIDocumentListController;
  v5 = [(_UIDocumentListController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(_UIDocumentListController *)v5 _commonInitWithModel:v4];
  }

  return v6;
}

- (void)createSearchControllerWithModel:(id)a3
{
  v4 = a3;
  v5 = [_UIDocumentPickerSearchContainerModel alloc];
  v6 = [v4 pickableTypes];
  v7 = [v4 pickerMode];

  v10 = [(_UIDocumentPickerSearchContainerModel *)v5 initWithPickableTypes:v6 mode:v7];
  v8 = [[_UIDocumentSearchListController alloc] initWithModel:v10];
  searchController = self->_searchController;
  self->_searchController = v8;

  [(_UIDocumentListController *)self->_searchController setRootListController:self];
  [(_UIDocumentPickerContainerViewController *)self->_containerViewController setResultsController:self->_searchController];
}

- (void)setHideSearchField:(BOOL)a3
{
  if (self->_hideSearchField != a3)
  {
    self->_hideSearchField = a3;
    if (a3)
    {
      searchController = self->_searchController;
      self->_searchController = 0;

      containerViewController = self->_containerViewController;

      [(_UIDocumentPickerContainerViewController *)containerViewController setResultsController:0];
    }

    else
    {
      v6 = [(_UIDocumentPickerContainerViewController *)self->_containerViewController model];
      [(_UIDocumentListController *)self createSearchControllerWithModel:v6];
    }
  }
}

- (void)_setContainerViewController:(id)a3
{
  objc_storeStrong(&self->_containerViewController, a3);
  v10 = a3;
  [(_UIDocumentPickerContainerViewController *)self->_containerViewController beginAppearanceTransition:1 animated:0];
  v5 = [(_UIDocumentPickerContainerViewController *)self->_containerViewController view];
  v6 = [(_UIDocumentListController *)self view];
  [v6 bounds];
  [v5 setFrame:?];

  [(_UIDocumentListController *)self addChildViewController:self->_containerViewController];
  v7 = [(_UIDocumentPickerContainerViewController *)self->_containerViewController view];
  [v7 setAutoresizingMask:18];

  [(_UIDocumentPickerContainerViewController *)self->_containerViewController setServiceViewController:self];
  v8 = [(_UIDocumentListController *)self view];
  v9 = [(_UIDocumentPickerContainerViewController *)self->_containerViewController view];
  [v8 addSubview:v9];

  [(_UIDocumentPickerContainerViewController *)self->_containerViewController didMoveToParentViewController:self];
  [(_UIDocumentPickerContainerViewController *)self->_containerViewController endAppearanceTransition];
}

- (void)updateTitle
{
  v4 = [(_UIDocumentPickerContainerViewController *)self->_containerViewController model];
  v3 = [v4 displayTitle];
  [(_UIDocumentListController *)self setTitle:v3];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  v4 = [(_UIDocumentListController *)self rootListController];

  if (v4)
  {
    v5 = [(_UIDocumentListController *)self rootListController];
    [v5 setDelegate:obj];
  }

  else
  {
    objc_storeWeak(&self->_delegateIfNotDeferred, obj);
  }
}

- (_UIDocumentListControllerDelegate)delegate
{
  v3 = [(_UIDocumentListController *)self rootListController];
  if (v3)
  {
    v4 = [(_UIDocumentListController *)self rootListController];
    WeakRetained = [v4 delegate];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegateIfNotDeferred);
  }

  return WeakRetained;
}

- (void)setSortOrder:(int)a3
{
  v3 = *&a3;
  v5 = [(_UIDocumentListController *)self rootListController];

  if (v5)
  {
    v6 = [(_UIDocumentListController *)self rootListController];
    [v6 setSortOrder:v3];
  }

  else
  {
    self->_sortOrderIfNotDeferred = v3;
  }
}

- (int)sortOrder
{
  v3 = [(_UIDocumentListController *)self rootListController];
  if (v3)
  {
    v4 = [(_UIDocumentListController *)self rootListController];
    sortOrderIfNotDeferred = [v4 sortOrder];
  }

  else
  {
    sortOrderIfNotDeferred = self->_sortOrderIfNotDeferred;
  }

  return sortOrderIfNotDeferred;
}

- (void)setDisplayMode:(int64_t)a3
{
  v5 = [(_UIDocumentListController *)self rootListController];

  if (v5)
  {
    v6 = [(_UIDocumentListController *)self rootListController];
    [v6 setDisplayMode:a3];
  }

  else
  {
    self->_displayModeIfNotDeferred = a3;
  }
}

- (int64_t)displayMode
{
  v3 = [(_UIDocumentListController *)self rootListController];
  if (v3)
  {
    v4 = [(_UIDocumentListController *)self rootListController];
    displayModeIfNotDeferred = [v4 displayMode];
  }

  else
  {
    displayModeIfNotDeferred = self->_displayModeIfNotDeferred;
  }

  return displayModeIfNotDeferred;
}

- (void)setAvailableActions:(int64_t)a3
{
  v5 = [(_UIDocumentListController *)self rootListController];

  if (v5)
  {
    v6 = [(_UIDocumentListController *)self rootListController];
    [v6 setAvailableActions:a3];
  }

  else
  {
    self->_availableActionsIfNotDeferred = a3;
  }
}

- (int64_t)availableActions
{
  v3 = [(_UIDocumentListController *)self rootListController];
  if (v3)
  {
    v4 = [(_UIDocumentListController *)self rootListController];
    availableActionsIfNotDeferred = [v4 availableActions];
  }

  else
  {
    availableActionsIfNotDeferred = self->_availableActionsIfNotDeferred;
  }

  return availableActionsIfNotDeferred;
}

- (BOOL)shouldHighlightItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIDocumentListController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_UIDocumentListController *)self delegate];
    v8 = [v4 urlInLocalContainer];
    v9 = [v7 documentListController:self shouldHighlightItemAtURL:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)didHighlightItem:(id)a3
{
  v8 = a3;
  v4 = [(_UIDocumentListController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_UIDocumentListController *)self delegate];
    v7 = [v8 urlInLocalContainer];
    [v6 documentListController:self didHighlightItemAtURL:v7];
  }
}

- (void)didUnhighlightItem:(id)a3
{
  v8 = a3;
  v4 = [(_UIDocumentListController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_UIDocumentListController *)self delegate];
    v7 = [v8 urlInLocalContainer];
    [v6 documentListController:self didUnhighlightItemAtURL:v7];
  }
}

- (BOOL)shouldSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIDocumentListController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_UIDocumentListController *)self delegate];
    v8 = [v4 urlInLocalContainer];
    v9 = [v7 documentListController:self shouldSelectItemAtURL:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)didSelectItem:(id)a3
{
  v13 = a3;
  if ([v13 type] == 1 || objc_msgSend(v13, "type") == 2)
  {
    [v13 incrementModelDisplayCount];
    v4 = objc_alloc([(_UIDocumentListController *)self _classForChildren]);
    v5 = [v13 model];
    v6 = [v4 initWithModel:v5];

    [v13 decrementModelDisplayCount];
    v7 = [(_UIDocumentListController *)self delegate];
    [v6 setDelegate:v7];

    v8 = [(_UIDocumentListController *)self rootListController];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = self;
    }

    [v6 setRootListController:v10];

    v11 = [(_UIDocumentListController *)self delegate];

    if (v11)
    {
      v12 = [(_UIDocumentListController *)self delegate];
      [v12 documentListController:self didSelectContainerWithViewController:v6];
    }

    else
    {
      v12 = [(_UIDocumentListController *)self navigationController];
      [v12 pushViewController:v6 animated:1];
    }
  }

  else
  {
    v6 = [(_UIDocumentListController *)self delegate];
    v12 = [v13 urlInLocalContainer];
    [v6 documentListController:self didSelectItemAtURL:v12];
  }
}

- (void)performAction:(int64_t)a3 item:(id)a4 view:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = [(_UIDocumentListController *)self delegate];
  v13 = [v12 urlInLocalContainer];

  [v14 documentListController:self performAction:a3 URL:v13 originatingView:v11 completion:v10];
}

- (void)itemsOrSelectionDidChange:(BOOL)a3
{
  if (a3)
  {
    v4 = [(_UIDocumentListController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = cdui_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [_UIDocumentListController itemsOrSelectionDidChange:v6];
      }

      v7 = [(_UIDocumentListController *)self delegate];
      [v7 documentListControllerItemsChanged:self];
    }
  }

  [(_UIDocumentListController *)self updateTitle];
  v8 = [(_UIDocumentListController *)self model];
  v9 = [v8 url];
  if (v9)
  {

LABEL_12:
    goto LABEL_13;
  }

  v10 = [(_UIDocumentListController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = cdui_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_UIDocumentListController itemsOrSelectionDidChange:v12];
    }

    v8 = [(_UIDocumentListController *)self delegate];
    [v8 documentListControllerURLWasRemoved:self];
    goto LABEL_12;
  }

LABEL_13:
  [(_UIDocumentListController *)self _updateScrollPositionForStateRestoration];
}

- (id)previewViewControllerForItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIDocumentListController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_UIDocumentListController *)self delegate];
    v8 = [v4 url];
    v9 = [v7 documentListController:self viewControllerForPreviewingItemAtURL:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSURL)presentedURL
{
  v2 = [(_UIDocumentListController *)self model];
  v3 = [v2 url];

  return v3;
}

- (NSArray)containedItems
{
  v2 = [(_UIDocumentListController *)self model];
  v3 = [v2 modelObjects];
  v4 = [v3 valueForKey:@"urlInLocalContainer"];

  return v4;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [_UIDocumentPickerContainerViewController setEditing:"setEditing:animated:" animated:?];
  v7.receiver = self;
  v7.super_class = _UIDocumentListController;
  [(_UIDocumentListController *)&v7 setEditing:v5 animated:v4];
}

- (NSArray)selectedItems
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(_UIDocumentListController *)self model];
  v4 = [v3 modelObjects];

  v5 = [MEMORY[0x277CCAB58] indexSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(_UIDocumentPickerContainerViewController *)self->_containerViewController indexPathsForSelectedItems];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "row")}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [v4 objectsAtIndexes:v5];
  v12 = [v11 valueForKey:@"urlInLocalContainer"];

  return v12;
}

- (void)setSelectedItems:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(_UIDocumentListController *)self containedItems];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 indexOfObject:{*(*(&v14 + 1) + 8 * v11), v14}];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [MEMORY[0x277CCAA70] indexPathForRow:v12 inSection:0];
          [v5 addObject:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(_UIDocumentPickerContainerViewController *)self->_containerViewController setIndexPathsForSelectedItems:v5];
}

- (void)_performScrollTest:(id)a3 iterations:(int)a4 delta:(int)a5 listMode:(int64_t)a6
{
  v7 = *&a5;
  v8 = *&a4;
  containerViewController = self->_containerViewController;
  v11 = a3;
  v12 = [(_UIDocumentPickerContainerViewController *)containerViewController childViewControllers];
  v14 = [v12 firstObject];

  [(_UIDocumentPickerContainerViewController *)self->_containerViewController setExplicitDisplayMode:a6];
  [(_UIDocumentPickerContainerViewController *)self->_containerViewController displayModeChanged];
  v13 = [v14 scrollView];
  [v13 _performScrollTest:v11 iterations:v8 delta:v7];
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIDocumentListController;
  v4 = a3;
  [(_UIDocumentListController *)&v9 encodeRestorableStateWithCoder:v4];
  v5 = [(_UIDocumentListController *)self model:v9.receiver];
  v6 = [v5 url];
  [v4 encodeObject:v6 forKey:@"url"];

  [v4 encodeInteger:-[_UIDocumentListController availableActions](self forKey:{"availableActions"), @"AvailableActions"}];
  [(_UIDocumentPickerContainerViewController *)self->_containerViewController contentOffset];
  [v4 encodeCGPoint:@"ContentOffset" forKey:?];
  WeakRetained = objc_loadWeakRetained(&self->_rootListController);
  [v4 encodeObject:WeakRetained forKey:@"Root"];

  v8 = [(_UIDocumentListController *)self delegate];
  [v4 encodeObject:v8 forKey:@"Delegate"];
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIDocumentListController;
  v4 = a3;
  [(_UIDocumentListController *)&v9 decodeRestorableStateWithCoder:v4];
  v5 = [v4 decodeObjectForKey:{@"Root", v9.receiver, v9.super_class}];
  objc_storeWeak(&self->_rootListController, v5);

  [v4 decodeCGPointForKey:@"ContentOffset"];
  self->_stateRestoredContentOffset.x = v6;
  self->_stateRestoredContentOffset.y = v7;
  -[_UIDocumentListController setAvailableActions:](self, "setAvailableActions:", [v4 decodeIntegerForKey:@"AvailableActions"]);
  v8 = [v4 decodeObjectForKey:@"Delegate"];

  [(_UIDocumentListController *)self setDelegate:v8];
}

- (void)_updateScrollPositionForStateRestoration
{
  v3 = [(_UIDocumentListController *)self model];
  v4 = [v3 modelObjects];

  if (v4)
  {
    v5 = MEMORY[0x277CBF348];
    if (self->_stateRestoredContentOffset.x != *MEMORY[0x277CBF348] || self->_stateRestoredContentOffset.y != *(MEMORY[0x277CBF348] + 8))
    {
      [(_UIDocumentPickerContainerViewController *)self->_containerViewController setContentOffset:?];
      self->_stateRestoredContentOffset = *v5;
    }
  }
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v5 = [a4 decodeObjectForKey:@"url"];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = [[a1 alloc] initWithURL:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_listControllerHierarchyForURL:(id)a3 withConstructorBlock:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v32 = 0;
  v7 = *MEMORY[0x277CBE868];
  v31 = 0;
  [v5 getPromisedItemResourceValue:&v32 forKey:v7 error:&v31];
  v8 = v32;
  v9 = v31;
  v10 = 0;
  if ([v8 BOOLValue])
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = v5;
    v26 = v9;
    if ([v12 br_isDocumentsContainer])
    {
      v13 = v12;
    }

    else
    {
      do
      {
        v14 = v6[2](v6, v12);
        [v11 insertObject:v14 atIndex:0];

        v13 = [v12 URLByDeletingLastPathComponent];

        v12 = v13;
      }

      while (![v13 br_isDocumentsContainer]);
    }

    v25 = [v13 br_pathRelativeToMobileDocuments];
    if (([v25 isEqualToString:*MEMORY[0x277CFAD70]] & 1) == 0)
    {
      v15 = v6[2](v6, v13);
      [v11 insertObject:v15 atIndex:0];
    }

    v16 = [MEMORY[0x277CBEBC0] ui_cloudDocsContainerURL];
    if (v16)
    {
      v17 = v6[2](v6, v16);
      [v11 insertObject:v17 atIndex:0];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v11;
    v18 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v28;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v10);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          if (v20)
          {
            [v23 setRootListController:v20];
          }

          else
          {
            v20 = v23;
          }
        }

        v19 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    v9 = v26;
  }

  return v10;
}

+ (id)listControllerHierarchyForURL:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59___UIDocumentListController_listControllerHierarchyForURL___block_invoke;
  v5[3] = &__block_descriptor_40_e42____UIDocumentListController_16__0__NSURL_8l;
  v5[4] = a1;
  v3 = [a1 _listControllerHierarchyForURL:a3 withConstructorBlock:v5];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(_UIDocumentListController *)self model];
  v6 = [v5 url];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v4, self, v6];

  return v7;
}

- (_UIDocumentListController)rootListController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootListController);

  return WeakRetained;
}

@end
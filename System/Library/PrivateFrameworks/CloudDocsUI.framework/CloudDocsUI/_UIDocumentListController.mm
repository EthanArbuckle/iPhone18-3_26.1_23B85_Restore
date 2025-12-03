@interface _UIDocumentListController
+ (id)_listControllerHierarchyForURL:(id)l withConstructorBlock:(id)block;
+ (id)listControllerHierarchyForURL:(id)l;
+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
- (BOOL)shouldHighlightItem:(id)item;
- (BOOL)shouldSelectItem:(id)item;
- (NSArray)containedItems;
- (NSArray)selectedItems;
- (NSString)description;
- (NSURL)presentedURL;
- (_UIDocumentListController)initWithModel:(id)model;
- (_UIDocumentListController)initWithURL:(id)l;
- (_UIDocumentListController)rootListController;
- (_UIDocumentListControllerDelegate)delegate;
- (id)previewViewControllerForItem:(id)item;
- (int)sortOrder;
- (int64_t)availableActions;
- (int64_t)displayMode;
- (void)_commonInitWithModel:(id)model;
- (void)_performScrollTest:(id)test iterations:(int)iterations delta:(int)delta listMode:(int64_t)mode;
- (void)_setContainerViewController:(id)controller;
- (void)_updateScrollPositionForStateRestoration;
- (void)createSearchControllerWithModel:(id)model;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)didHighlightItem:(id)item;
- (void)didSelectItem:(id)item;
- (void)didUnhighlightItem:(id)item;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)itemsOrSelectionDidChange:(BOOL)change;
- (void)performAction:(int64_t)action item:(id)item view:(id)view completion:(id)completion;
- (void)setAvailableActions:(int64_t)actions;
- (void)setDelegate:(id)delegate;
- (void)setDisplayMode:(int64_t)mode;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHideSearchField:(BOOL)field;
- (void)setSelectedItems:(id)items;
- (void)setSortOrder:(int)order;
- (void)updateTitle;
@end

@implementation _UIDocumentListController

- (void)_commonInitWithModel:(id)model
{
  modelCopy = model;
  v4 = [[_UIDocumentPickerContainerViewController alloc] initWithModel:modelCopy];
  [(_UIDocumentListController *)self _setContainerViewController:v4];
  [(_UIDocumentListController *)self setRestorationClass:objc_opt_class()];
  [(_UIDocumentListController *)self setRestorationIdentifier:@"DocumentList"];
  [(_UIDocumentListController *)self setAvailableActions:7];
  [(_UIDocumentListController *)self setEdgesForExtendedLayout:0];
  [(_UIDocumentListController *)self updateTitle];
  if (![(_UIDocumentListController *)self hideSearchField])
  {
    [(_UIDocumentListController *)self createSearchControllerWithModel:modelCopy];
  }
}

- (_UIDocumentListController)initWithURL:(id)l
{
  v18[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v16.receiver = self;
  v16.super_class = _UIDocumentListController;
  v5 = [(_UIDocumentListController *)&v16 initWithNibName:0 bundle:0];
  if (!v5)
  {
    goto LABEL_9;
  }

  if (!lCopy)
  {
    v13 = [_UIDocumentPickerRootContainerModel alloc];
    v17 = *MEMORY[0x277CC20C0];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v11 = [(_UIDocumentPickerRootContainerModel *)v13 initWithPickableTypes:v8 mode:1];
    goto LABEL_8;
  }

  v15 = 0;
  v6 = [lCopy getPromisedItemResourceValue:&v15 forKey:*MEMORY[0x277CBE868] error:0];
  v7 = v15;
  v8 = v7;
  if (v6 && [v7 BOOLValue])
  {
    v9 = [_UIDocumentPickerURLContainerModel alloc];
    v18[0] = *MEMORY[0x277CC20C0];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v11 = [(_UIDocumentPickerURLContainerModel *)v9 initWithURL:lCopy pickableTypes:v10 mode:1];

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

- (_UIDocumentListController)initWithModel:(id)model
{
  modelCopy = model;
  v8.receiver = self;
  v8.super_class = _UIDocumentListController;
  v5 = [(_UIDocumentListController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(_UIDocumentListController *)v5 _commonInitWithModel:modelCopy];
  }

  return v6;
}

- (void)createSearchControllerWithModel:(id)model
{
  modelCopy = model;
  v5 = [_UIDocumentPickerSearchContainerModel alloc];
  pickableTypes = [modelCopy pickableTypes];
  pickerMode = [modelCopy pickerMode];

  v10 = [(_UIDocumentPickerSearchContainerModel *)v5 initWithPickableTypes:pickableTypes mode:pickerMode];
  v8 = [[_UIDocumentSearchListController alloc] initWithModel:v10];
  searchController = self->_searchController;
  self->_searchController = v8;

  [(_UIDocumentListController *)self->_searchController setRootListController:self];
  [(_UIDocumentPickerContainerViewController *)self->_containerViewController setResultsController:self->_searchController];
}

- (void)setHideSearchField:(BOOL)field
{
  if (self->_hideSearchField != field)
  {
    self->_hideSearchField = field;
    if (field)
    {
      searchController = self->_searchController;
      self->_searchController = 0;

      containerViewController = self->_containerViewController;

      [(_UIDocumentPickerContainerViewController *)containerViewController setResultsController:0];
    }

    else
    {
      model = [(_UIDocumentPickerContainerViewController *)self->_containerViewController model];
      [(_UIDocumentListController *)self createSearchControllerWithModel:model];
    }
  }
}

- (void)_setContainerViewController:(id)controller
{
  objc_storeStrong(&self->_containerViewController, controller);
  controllerCopy = controller;
  [(_UIDocumentPickerContainerViewController *)self->_containerViewController beginAppearanceTransition:1 animated:0];
  view = [(_UIDocumentPickerContainerViewController *)self->_containerViewController view];
  view2 = [(_UIDocumentListController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [(_UIDocumentListController *)self addChildViewController:self->_containerViewController];
  view3 = [(_UIDocumentPickerContainerViewController *)self->_containerViewController view];
  [view3 setAutoresizingMask:18];

  [(_UIDocumentPickerContainerViewController *)self->_containerViewController setServiceViewController:self];
  view4 = [(_UIDocumentListController *)self view];
  view5 = [(_UIDocumentPickerContainerViewController *)self->_containerViewController view];
  [view4 addSubview:view5];

  [(_UIDocumentPickerContainerViewController *)self->_containerViewController didMoveToParentViewController:self];
  [(_UIDocumentPickerContainerViewController *)self->_containerViewController endAppearanceTransition];
}

- (void)updateTitle
{
  model = [(_UIDocumentPickerContainerViewController *)self->_containerViewController model];
  displayTitle = [model displayTitle];
  [(_UIDocumentListController *)self setTitle:displayTitle];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  rootListController = [(_UIDocumentListController *)self rootListController];

  if (rootListController)
  {
    rootListController2 = [(_UIDocumentListController *)self rootListController];
    [rootListController2 setDelegate:obj];
  }

  else
  {
    objc_storeWeak(&self->_delegateIfNotDeferred, obj);
  }
}

- (_UIDocumentListControllerDelegate)delegate
{
  rootListController = [(_UIDocumentListController *)self rootListController];
  if (rootListController)
  {
    rootListController2 = [(_UIDocumentListController *)self rootListController];
    WeakRetained = [rootListController2 delegate];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegateIfNotDeferred);
  }

  return WeakRetained;
}

- (void)setSortOrder:(int)order
{
  v3 = *&order;
  rootListController = [(_UIDocumentListController *)self rootListController];

  if (rootListController)
  {
    rootListController2 = [(_UIDocumentListController *)self rootListController];
    [rootListController2 setSortOrder:v3];
  }

  else
  {
    self->_sortOrderIfNotDeferred = v3;
  }
}

- (int)sortOrder
{
  rootListController = [(_UIDocumentListController *)self rootListController];
  if (rootListController)
  {
    rootListController2 = [(_UIDocumentListController *)self rootListController];
    sortOrderIfNotDeferred = [rootListController2 sortOrder];
  }

  else
  {
    sortOrderIfNotDeferred = self->_sortOrderIfNotDeferred;
  }

  return sortOrderIfNotDeferred;
}

- (void)setDisplayMode:(int64_t)mode
{
  rootListController = [(_UIDocumentListController *)self rootListController];

  if (rootListController)
  {
    rootListController2 = [(_UIDocumentListController *)self rootListController];
    [rootListController2 setDisplayMode:mode];
  }

  else
  {
    self->_displayModeIfNotDeferred = mode;
  }
}

- (int64_t)displayMode
{
  rootListController = [(_UIDocumentListController *)self rootListController];
  if (rootListController)
  {
    rootListController2 = [(_UIDocumentListController *)self rootListController];
    displayModeIfNotDeferred = [rootListController2 displayMode];
  }

  else
  {
    displayModeIfNotDeferred = self->_displayModeIfNotDeferred;
  }

  return displayModeIfNotDeferred;
}

- (void)setAvailableActions:(int64_t)actions
{
  rootListController = [(_UIDocumentListController *)self rootListController];

  if (rootListController)
  {
    rootListController2 = [(_UIDocumentListController *)self rootListController];
    [rootListController2 setAvailableActions:actions];
  }

  else
  {
    self->_availableActionsIfNotDeferred = actions;
  }
}

- (int64_t)availableActions
{
  rootListController = [(_UIDocumentListController *)self rootListController];
  if (rootListController)
  {
    rootListController2 = [(_UIDocumentListController *)self rootListController];
    availableActionsIfNotDeferred = [rootListController2 availableActions];
  }

  else
  {
    availableActionsIfNotDeferred = self->_availableActionsIfNotDeferred;
  }

  return availableActionsIfNotDeferred;
}

- (BOOL)shouldHighlightItem:(id)item
{
  itemCopy = item;
  delegate = [(_UIDocumentListController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(_UIDocumentListController *)self delegate];
    urlInLocalContainer = [itemCopy urlInLocalContainer];
    v9 = [delegate2 documentListController:self shouldHighlightItemAtURL:urlInLocalContainer];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)didHighlightItem:(id)item
{
  itemCopy = item;
  delegate = [(_UIDocumentListController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_UIDocumentListController *)self delegate];
    urlInLocalContainer = [itemCopy urlInLocalContainer];
    [delegate2 documentListController:self didHighlightItemAtURL:urlInLocalContainer];
  }
}

- (void)didUnhighlightItem:(id)item
{
  itemCopy = item;
  delegate = [(_UIDocumentListController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_UIDocumentListController *)self delegate];
    urlInLocalContainer = [itemCopy urlInLocalContainer];
    [delegate2 documentListController:self didUnhighlightItemAtURL:urlInLocalContainer];
  }
}

- (BOOL)shouldSelectItem:(id)item
{
  itemCopy = item;
  delegate = [(_UIDocumentListController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(_UIDocumentListController *)self delegate];
    urlInLocalContainer = [itemCopy urlInLocalContainer];
    v9 = [delegate2 documentListController:self shouldSelectItemAtURL:urlInLocalContainer];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  if ([itemCopy type] == 1 || objc_msgSend(itemCopy, "type") == 2)
  {
    [itemCopy incrementModelDisplayCount];
    v4 = objc_alloc([(_UIDocumentListController *)self _classForChildren]);
    model = [itemCopy model];
    delegate4 = [v4 initWithModel:model];

    [itemCopy decrementModelDisplayCount];
    delegate = [(_UIDocumentListController *)self delegate];
    [delegate4 setDelegate:delegate];

    rootListController = [(_UIDocumentListController *)self rootListController];
    v9 = rootListController;
    if (rootListController)
    {
      selfCopy = rootListController;
    }

    else
    {
      selfCopy = self;
    }

    [delegate4 setRootListController:selfCopy];

    delegate2 = [(_UIDocumentListController *)self delegate];

    if (delegate2)
    {
      delegate3 = [(_UIDocumentListController *)self delegate];
      [delegate3 documentListController:self didSelectContainerWithViewController:delegate4];
    }

    else
    {
      delegate3 = [(_UIDocumentListController *)self navigationController];
      [delegate3 pushViewController:delegate4 animated:1];
    }
  }

  else
  {
    delegate4 = [(_UIDocumentListController *)self delegate];
    delegate3 = [itemCopy urlInLocalContainer];
    [delegate4 documentListController:self didSelectItemAtURL:delegate3];
  }
}

- (void)performAction:(int64_t)action item:(id)item view:(id)view completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  itemCopy = item;
  delegate = [(_UIDocumentListController *)self delegate];
  urlInLocalContainer = [itemCopy urlInLocalContainer];

  [delegate documentListController:self performAction:action URL:urlInLocalContainer originatingView:viewCopy completion:completionCopy];
}

- (void)itemsOrSelectionDidChange:(BOOL)change
{
  if (change)
  {
    delegate = [(_UIDocumentListController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = cdui_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [_UIDocumentListController itemsOrSelectionDidChange:v6];
      }

      delegate2 = [(_UIDocumentListController *)self delegate];
      [delegate2 documentListControllerItemsChanged:self];
    }
  }

  [(_UIDocumentListController *)self updateTitle];
  model = [(_UIDocumentListController *)self model];
  v9 = [model url];
  if (v9)
  {

LABEL_12:
    goto LABEL_13;
  }

  delegate3 = [(_UIDocumentListController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = cdui_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_UIDocumentListController itemsOrSelectionDidChange:v12];
    }

    model = [(_UIDocumentListController *)self delegate];
    [model documentListControllerURLWasRemoved:self];
    goto LABEL_12;
  }

LABEL_13:
  [(_UIDocumentListController *)self _updateScrollPositionForStateRestoration];
}

- (id)previewViewControllerForItem:(id)item
{
  itemCopy = item;
  delegate = [(_UIDocumentListController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(_UIDocumentListController *)self delegate];
    v8 = [itemCopy url];
    v9 = [delegate2 documentListController:self viewControllerForPreviewingItemAtURL:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSURL)presentedURL
{
  model = [(_UIDocumentListController *)self model];
  v3 = [model url];

  return v3;
}

- (NSArray)containedItems
{
  model = [(_UIDocumentListController *)self model];
  modelObjects = [model modelObjects];
  v4 = [modelObjects valueForKey:@"urlInLocalContainer"];

  return v4;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  [_UIDocumentPickerContainerViewController setEditing:"setEditing:animated:" animated:?];
  v7.receiver = self;
  v7.super_class = _UIDocumentListController;
  [(_UIDocumentListController *)&v7 setEditing:editingCopy animated:animatedCopy];
}

- (NSArray)selectedItems
{
  v19 = *MEMORY[0x277D85DE8];
  model = [(_UIDocumentListController *)self model];
  modelObjects = [model modelObjects];

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  indexPathsForSelectedItems = [(_UIDocumentPickerContainerViewController *)self->_containerViewController indexPathsForSelectedItems];
  v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [indexSet addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "row")}];
      }

      v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [modelObjects objectsAtIndexes:indexSet];
  v12 = [v11 valueForKey:@"urlInLocalContainer"];

  return v12;
}

- (void)setSelectedItems:(id)items
{
  v19 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  containedItems = [(_UIDocumentListController *)self containedItems];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = itemsCopy;
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

        v12 = [containedItems indexOfObject:{*(*(&v14 + 1) + 8 * v11), v14}];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [MEMORY[0x277CCAA70] indexPathForRow:v12 inSection:0];
          [array addObject:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(_UIDocumentPickerContainerViewController *)self->_containerViewController setIndexPathsForSelectedItems:array];
}

- (void)_performScrollTest:(id)test iterations:(int)iterations delta:(int)delta listMode:(int64_t)mode
{
  v7 = *&delta;
  v8 = *&iterations;
  containerViewController = self->_containerViewController;
  testCopy = test;
  childViewControllers = [(_UIDocumentPickerContainerViewController *)containerViewController childViewControllers];
  firstObject = [childViewControllers firstObject];

  [(_UIDocumentPickerContainerViewController *)self->_containerViewController setExplicitDisplayMode:mode];
  [(_UIDocumentPickerContainerViewController *)self->_containerViewController displayModeChanged];
  scrollView = [firstObject scrollView];
  [scrollView _performScrollTest:testCopy iterations:v8 delta:v7];
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = _UIDocumentListController;
  coderCopy = coder;
  [(_UIDocumentListController *)&v9 encodeRestorableStateWithCoder:coderCopy];
  v5 = [(_UIDocumentListController *)self model:v9.receiver];
  v6 = [v5 url];
  [coderCopy encodeObject:v6 forKey:@"url"];

  [coderCopy encodeInteger:-[_UIDocumentListController availableActions](self forKey:{"availableActions"), @"AvailableActions"}];
  [(_UIDocumentPickerContainerViewController *)self->_containerViewController contentOffset];
  [coderCopy encodeCGPoint:@"ContentOffset" forKey:?];
  WeakRetained = objc_loadWeakRetained(&self->_rootListController);
  [coderCopy encodeObject:WeakRetained forKey:@"Root"];

  delegate = [(_UIDocumentListController *)self delegate];
  [coderCopy encodeObject:delegate forKey:@"Delegate"];
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = _UIDocumentListController;
  coderCopy = coder;
  [(_UIDocumentListController *)&v9 decodeRestorableStateWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectForKey:{@"Root", v9.receiver, v9.super_class}];
  objc_storeWeak(&self->_rootListController, v5);

  [coderCopy decodeCGPointForKey:@"ContentOffset"];
  self->_stateRestoredContentOffset.x = v6;
  self->_stateRestoredContentOffset.y = v7;
  -[_UIDocumentListController setAvailableActions:](self, "setAvailableActions:", [coderCopy decodeIntegerForKey:@"AvailableActions"]);
  v8 = [coderCopy decodeObjectForKey:@"Delegate"];

  [(_UIDocumentListController *)self setDelegate:v8];
}

- (void)_updateScrollPositionForStateRestoration
{
  model = [(_UIDocumentListController *)self model];
  modelObjects = [model modelObjects];

  if (modelObjects)
  {
    v5 = MEMORY[0x277CBF348];
    if (self->_stateRestoredContentOffset.x != *MEMORY[0x277CBF348] || self->_stateRestoredContentOffset.y != *(MEMORY[0x277CBF348] + 8))
    {
      [(_UIDocumentPickerContainerViewController *)self->_containerViewController setContentOffset:?];
      self->_stateRestoredContentOffset = *v5;
    }
  }
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  v5 = [coder decodeObjectForKey:@"url"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v5 path];
  v8 = [defaultManager fileExistsAtPath:path];

  if (v8)
  {
    v9 = [[self alloc] initWithURL:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_listControllerHierarchyForURL:(id)l withConstructorBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  blockCopy = block;
  v32 = 0;
  v7 = *MEMORY[0x277CBE868];
  v31 = 0;
  [lCopy getPromisedItemResourceValue:&v32 forKey:v7 error:&v31];
  v8 = v32;
  v9 = v31;
  v10 = 0;
  if ([v8 BOOLValue])
  {
    array = [MEMORY[0x277CBEB18] array];
    v12 = lCopy;
    v26 = v9;
    if ([v12 br_isDocumentsContainer])
    {
      uRLByDeletingLastPathComponent = v12;
    }

    else
    {
      do
      {
        v14 = blockCopy[2](blockCopy, v12);
        [array insertObject:v14 atIndex:0];

        uRLByDeletingLastPathComponent = [v12 URLByDeletingLastPathComponent];

        v12 = uRLByDeletingLastPathComponent;
      }

      while (![uRLByDeletingLastPathComponent br_isDocumentsContainer]);
    }

    br_pathRelativeToMobileDocuments = [uRLByDeletingLastPathComponent br_pathRelativeToMobileDocuments];
    if (([br_pathRelativeToMobileDocuments isEqualToString:*MEMORY[0x277CFAD70]] & 1) == 0)
    {
      v15 = blockCopy[2](blockCopy, uRLByDeletingLastPathComponent);
      [array insertObject:v15 atIndex:0];
    }

    ui_cloudDocsContainerURL = [MEMORY[0x277CBEBC0] ui_cloudDocsContainerURL];
    if (ui_cloudDocsContainerURL)
    {
      v17 = blockCopy[2](blockCopy, ui_cloudDocsContainerURL);
      [array insertObject:v17 atIndex:0];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = array;
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

+ (id)listControllerHierarchyForURL:(id)l
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59___UIDocumentListController_listControllerHierarchyForURL___block_invoke;
  v5[3] = &__block_descriptor_40_e42____UIDocumentListController_16__0__NSURL_8l;
  v5[4] = self;
  v3 = [self _listControllerHierarchyForURL:l withConstructorBlock:v5];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  model = [(_UIDocumentListController *)self model];
  v6 = [model url];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v4, self, v6];

  return v7;
}

- (_UIDocumentListController)rootListController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootListController);

  return WeakRetained;
}

@end
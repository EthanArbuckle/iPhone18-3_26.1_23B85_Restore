@interface SUUIMenuPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIMenuPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)sectionContentInset;
- (id)_contentChildView;
- (id)_newMenuViewController;
- (id)_pillsControl;
- (id)_popupHeaderView;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (void)_cancelMenuAction:(id)action;
- (void)_dismissMenuViewController;
- (void)_loadSortDataIfNecessaryForMenuIndex:(int64_t)index reason:(int64_t)reason;
- (void)_pillAction:(id)action;
- (void)_restorePreviousSelection;
- (void)_setSelectedIndex:(int64_t)index;
- (void)_showMenuViewController;
- (void)_showMoreList;
- (void)_showPopoverController;
- (void)dealloc;
- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)sortDataRequest:(id)request didFinishWithLockups:(id)lockups;
- (void)willAppearInContext:(id)context;
@end

@implementation SUUIMenuPageSection

- (SUUIMenuPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  v7.receiver = self;
  v7.super_class = SUUIMenuPageSection;
  v5 = [(SUUIStorePageSection *)&v7 initWithPageComponent:componentCopy];
  if (v5)
  {
    v5->_selectedIndex = [componentCopy defaultSelectedIndex];
  }

  return v5;
}

- (void)dealloc
{
  [(SUUIMenuViewController *)self->_moreListMenuViewController setDelegate:0];
  [(UIPopoverController *)self->_moreListPopoverController setDelegate:0];
  [(SUUIPopupMenuHeaderView *)self->_popupHeaderView setDelegate:0];
  [(UIBarButtonItem *)self->_cancelMenuItem setTarget:0];
  [(SUUIPillsControl *)self->_pillsControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIMenuPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  style = [viewElement style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    v10 = color;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIMenuPageSection;
    v10 = [(SUUIStorePageSection *)&v13 backgroundColorForIndexPath:pathCopy];
  }

  v11 = v10;

  return v11;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SUUIMenuPageSectionReuseIdentifier" forIndexPath:pathCopy];

  [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  _contentChildView = [(SUUIMenuPageSection *)self _contentChildView];
  [v7 setContentChildView:_contentChildView];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  _contentChildView = [(SUUIMenuPageSection *)self _contentChildView];
  [_contentChildView bounds];
  v6 = v5;

  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v9 = v8;

  v10 = v9;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)sectionContentInset
{
  isTopSection = [(SUUIStorePageSection *)self isTopSection];
  v3 = 15.0;
  if (isTopSection)
  {
    v3 = 7.0;
  }

  v4 = 0.0;
  v5 = 8.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIMenuPageSectionReuseIdentifier"];
  v6.receiver = self;
  v6.super_class = SUUIMenuPageSection;
  [(SUUIStorePageSection *)&v6 willAppearInContext:contextCopy];
}

- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index
{
  [controller setIndexOfCheckedTitle:index];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v8 = 2;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = 4;
  }

  [(SUUIMenuPageSection *)self _setSelectedIndex:v8 + index];

  [(SUUIMenuPageSection *)self _dismissMenuViewController];
}

- (void)sortDataRequest:(id)request didFinishWithLockups:(id)lockups
{
  v18[1] = *MEMORY[0x277D85DE8];
  lockupsCopy = lockups;
  sortURL = [request sortURL];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  numberOfItems = [pageComponent numberOfItems];
  if (numberOfItems >= 1)
  {
    v10 = numberOfItems;
    v11 = 0;
    while (1)
    {
      v12 = [pageComponent sortURLForIndex:v11];
      v13 = [sortURL isEqual:v12];

      if (v13)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_8;
      }
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [[SUUIGridComponent alloc] initWithLockups:lockupsCopy];
      v18[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      [pageComponent _setChildComponents:v15 forIndex:v11];

      [(NSMutableIndexSet *)self->_sortRequestIndexSet removeIndex:v11];
      context = [(SUUIStorePageSection *)self context];
      parentViewController = [context parentViewController];
      [parentViewController _updateSectionsForIndex:v11 menuSection:self];
    }
  }

LABEL_8:
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  [(SUUIMenuPageSection *)self _restorePreviousSelection];
  [(SUUIMenuViewController *)self->_moreListMenuViewController setDelegate:0];
  moreListMenuViewController = self->_moreListMenuViewController;
  self->_moreListMenuViewController = 0;

  [(UIPopoverController *)self->_moreListPopoverController setDelegate:0];
  moreListPopoverController = self->_moreListPopoverController;
  self->_moreListPopoverController = 0;
}

- (void)_cancelMenuAction:(id)action
{
  [(SUUIMenuPageSection *)self _restorePreviousSelection];

  [(SUUIMenuPageSection *)self _dismissMenuViewController];
}

- (void)_pillAction:(id)action
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  numberOfItems = [pageComponent numberOfItems];

  selectedIndex = [(SUUIPillsControl *)self->_pillsControl selectedIndex];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v9 = 3;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = 5;
  }

  if (numberOfItems <= v9)
  {
    goto LABEL_10;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v12 = 2;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = 4;
  }

  if (selectedIndex == v12)
  {

    [(SUUIMenuPageSection *)self _showMoreList];
  }

  else
  {
LABEL_10:

    [(SUUIMenuPageSection *)self _setSelectedIndex:selectedIndex];
  }
}

- (id)_contentChildView
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  menuStyle = [pageComponent menuStyle];

  if (menuStyle && ([MEMORY[0x277D75418] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6))
  {
    _popupHeaderView = [(SUUIMenuPageSection *)self _popupHeaderView];
  }

  else
  {
    _popupHeaderView = [(SUUIMenuPageSection *)self _pillsControl];
  }

  return _popupHeaderView;
}

- (void)_dismissMenuViewController
{
  v10 = self->_moreListMenuViewController;
  cancelMenuItem = self->_cancelMenuItem;
  v4 = self->_moreListPopoverController;
  [(UIBarButtonItem *)cancelMenuItem setTarget:0];
  v5 = self->_cancelMenuItem;
  self->_cancelMenuItem = 0;

  [(SUUIMenuViewController *)self->_moreListMenuViewController setDelegate:0];
  moreListMenuViewController = self->_moreListMenuViewController;
  self->_moreListMenuViewController = 0;

  [(UIPopoverController *)self->_moreListPopoverController setDelegate:0];
  moreListPopoverController = self->_moreListPopoverController;
  self->_moreListPopoverController = 0;

  if (v4)
  {
    [(UIPopoverController *)v4 dismissPopoverAnimated:1];
  }

  else
  {
    [(SUUIMenuViewController *)v10 dismissViewControllerAnimated:1 completion:0];
  }

  context = [(SUUIStorePageSection *)self context];
  parentViewController = [context parentViewController];
  [parentViewController _endIgnoringSectionChanges];
}

- (void)_loadSortDataIfNecessaryForMenuIndex:(int64_t)index reason:(int64_t)reason
{
  if (([(NSMutableIndexSet *)self->_sortRequestIndexSet containsIndex:?]& 1) == 0)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    v7 = [pageComponent childComponentsForIndex:index];

    v8 = pageComponent;
    if (!v7)
    {
      v9 = [pageComponent sortURLForIndex:index];
      if (v9)
      {
        v10 = [[SUUISortDataRequest alloc] initWithSortURL:v9];
        [(SUUISortDataRequest *)v10 setDelegate:self];
        sortRequestIndexSet = self->_sortRequestIndexSet;
        if (!sortRequestIndexSet)
        {
          v12 = objc_alloc_init(MEMORY[0x277CCAB58]);
          v13 = self->_sortRequestIndexSet;
          self->_sortRequestIndexSet = v12;

          sortRequestIndexSet = self->_sortRequestIndexSet;
        }

        [(NSMutableIndexSet *)sortRequestIndexSet addIndex:index];
        context = [(SUUIStorePageSection *)self context];
        resourceLoader = [context resourceLoader];
        [resourceLoader loadResourceWithRequest:v10 reason:reason];
      }

      v8 = pageComponent;
    }
  }
}

- (id)_newMenuViewController
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  titles = [(SUUIPillsControl *)self->_pillsControl titles];
  v7 = [titles subarrayWithRange:{v5, objc_msgSend(titles, "count") - v5}];

  v8 = [[SUUIMenuViewController alloc] initWithMenuTitles:v7];
  [(SUUIMenuViewController *)v8 setDelegate:self];
  selectedIndex = self->_selectedIndex;
  if (selectedIndex >= v5)
  {
    [(SUUIMenuViewController *)v8 setIndexOfCheckedTitle:selectedIndex - v5];
  }

  return v8;
}

- (id)_pillsControl
{
  pillsControl = self->_pillsControl;
  if (!pillsControl)
  {
    v4 = objc_alloc_init(SUUIPillsControl);
    v5 = self->_pillsControl;
    self->_pillsControl = v4;

    [(SUUIPillsControl *)self->_pillsControl addTarget:self action:sel__pillAction_ forControlEvents:4096];
    v6 = self->_pillsControl;
    context = [(SUUIStorePageSection *)self context];
    colorScheme = [context colorScheme];
    [(SUUIPillsControl *)v6 setColorScheme:colorScheme];

    v9 = self->_pillsControl;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v12 = 5;
    }

    else
    {
      v12 = 3;
    }

    [(SUUIPillsControl *)v9 setMaximumNumberOfVisiblePills:v12];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    v14 = self->_pillsControl;
    allTitles = [pageComponent allTitles];
    [(SUUIPillsControl *)v14 setTitles:allTitles];

    viewElement = [pageComponent viewElement];
    style = [viewElement style];
    v18 = SUUIViewElementPlainColorWithStyle(style, 0);

    [(SUUIPillsControl *)self->_pillsControl setTintColor:v18];
    context2 = [(SUUIStorePageSection *)self context];
    parentViewController = [context2 parentViewController];
    clientContext = [parentViewController clientContext];

    titleForMoreItem = [pageComponent titleForMoreItem];
    v23 = self->_pillsControl;
    if (titleForMoreItem)
    {
      [(SUUIPillsControl *)self->_pillsControl setMoreListTitle:titleForMoreItem];
    }

    else
    {
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"TABS_MORE_LIST_TITLE"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"TABS_MORE_LIST_TITLE" inBundles:0];
      }
      v24 = ;
      [(SUUIPillsControl *)v23 setMoreListTitle:v24];
    }

    [(SUUIPillsControl *)self->_pillsControl setContentInset:0.0, 15.0, 0.0, 15.0];
    [(SUUIPillsControl *)self->_pillsControl reloadPills];
    v25 = self->_pillsControl;
    selectedIndex = self->_selectedIndex;
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v29 = 2;
    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v29 = 4;
    }

    if (selectedIndex >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = selectedIndex;
    }

    [(SUUIPillsControl *)v25 setSelectedIndex:v30];
    [(SUUIPillsControl *)self->_pillsControl sizeToFit];

    pillsControl = self->_pillsControl;
  }

  return pillsControl;
}

- (id)_popupHeaderView
{
  popupHeaderView = self->_popupHeaderView;
  if (!popupHeaderView)
  {
    v4 = objc_alloc_init(SUUIPopupMenuHeaderView);
    v5 = self->_popupHeaderView;
    self->_popupHeaderView = v4;

    [(SUUIPopupMenuHeaderView *)self->_popupHeaderView setDelegate:self];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    menuTitle = [pageComponent menuTitle];
    if (menuTitle)
    {
      [(SUUIPopupMenuHeaderView *)self->_popupHeaderView setTitle:menuTitle];
    }

    context = [(SUUIStorePageSection *)self context];
    parentViewController = [context parentViewController];
    clientContext = [parentViewController clientContext];

    v11 = self->_popupHeaderView;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"POPUP_SORT_BY"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"POPUP_SORT_BY" inBundles:0];
    }
    v12 = ;
    [(SUUIPopupMenuHeaderView *)v11 setMenuLabelTitle:v12];

    v13 = self->_popupHeaderView;
    allTitles = [pageComponent allTitles];
    [(SUUIPopupMenuHeaderView *)v13 setMenuItemTitles:allTitles];

    v15 = self->_popupHeaderView;
    context2 = [(SUUIStorePageSection *)self context];
    colorScheme = [context2 colorScheme];
    [(SUUIPopupMenuHeaderView *)v15 setColoringWithColorScheme:colorScheme];

    [(SUUIPopupMenuHeaderView *)self->_popupHeaderView setSelectedMenuItemIndex:self->_selectedIndex];
    [(SUUIPopupMenuHeaderView *)self->_popupHeaderView sizeToFit];

    popupHeaderView = self->_popupHeaderView;
  }

  return popupHeaderView;
}

- (void)_restorePreviousSelection
{
  selectedIndex = self->_selectedIndex;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v6 = 2;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = 4;
  }

  if (selectedIndex >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = selectedIndex;
  }

  [(SUUIPillsControl *)self->_pillsControl reloadPills];
  pillsControl = self->_pillsControl;

  [(SUUIPillsControl *)pillsControl setSelectedIndex:v7];
}

- (void)_setSelectedIndex:(int64_t)index
{
  if (self->_selectedIndex != index)
  {
    self->_selectedIndex = index;
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];

    selectedIndex = self->_selectedIndex;
    if (viewElement)
    {
      [viewElement dispatchEventOfType:2 forItemAtIndex:selectedIndex];
    }

    else
    {
      [(SUUIMenuPageSection *)self _loadSortDataIfNecessaryForMenuIndex:selectedIndex reason:1];
      context = [(SUUIStorePageSection *)self context];
      parentViewController = [context parentViewController];
      [parentViewController _setSelectedIndex:self->_selectedIndex forMenuSection:self];
    }
  }
}

- (void)_showMenuViewController
{
  if (!self->_moreListMenuViewController)
  {
    context = [(SUUIStorePageSection *)self context];
    parentViewController = [context parentViewController];
    _newMenuViewController = [(SUUIMenuPageSection *)self _newMenuViewController];
    moreListMenuViewController = self->_moreListMenuViewController;
    self->_moreListMenuViewController = _newMenuViewController;

    v6 = self->_moreListMenuViewController;
    moreListTitle = [(SUUIPillsControl *)self->_pillsControl moreListTitle];
    [(SUUIMenuViewController *)v6 setTitle:moreListTitle];

    v8 = objc_alloc_init(MEMORY[0x277D751E0]);
    cancelMenuItem = self->_cancelMenuItem;
    self->_cancelMenuItem = v8;

    [(UIBarButtonItem *)self->_cancelMenuItem setAction:sel__cancelMenuAction_];
    [(UIBarButtonItem *)self->_cancelMenuItem setStyle:2];
    [(UIBarButtonItem *)self->_cancelMenuItem setTarget:self];
    v10 = self->_cancelMenuItem;
    clientContext = [context clientContext];
    v12 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"CANCEL"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"CANCEL" inBundles:0];
    }
    v13 = ;
    [(UIBarButtonItem *)v10 setTitle:v13];

    navigationItem = [(SUUIMenuViewController *)self->_moreListMenuViewController navigationItem];
    [navigationItem setLeftBarButtonItem:self->_cancelMenuItem];

    v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_moreListMenuViewController];
    [parentViewController presentViewController:v15 animated:1 completion:0];
    [parentViewController _beginIgnoringSectionChanges];
  }
}

- (void)_showMoreList
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {

    [(SUUIMenuPageSection *)self _showPopoverController];
  }

  else
  {

    [(SUUIMenuPageSection *)self _showMenuViewController];
  }
}

- (void)_showPopoverController
{
  if (!self->_moreListPopoverController)
  {
    _newMenuViewController = [(SUUIMenuPageSection *)self _newMenuViewController];
    moreListMenuViewController = self->_moreListMenuViewController;
    self->_moreListMenuViewController = _newMenuViewController;

    [(SUUIMenuViewController *)self->_moreListMenuViewController setDelegate:self];
    menuTitles = [(SUUIMenuViewController *)self->_moreListMenuViewController menuTitles];
    v6 = ([menuTitles count] * 45.0);

    [(SUUIMenuViewController *)self->_moreListMenuViewController setPreferredContentSize:320.0, v6];
    v7 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self->_moreListMenuViewController];
    moreListPopoverController = self->_moreListPopoverController;
    self->_moreListPopoverController = v7;

    [(UIPopoverController *)self->_moreListPopoverController setDelegate:self];
    [(UIPopoverController *)self->_moreListPopoverController setPopoverContentSize:320.0, v6];
    v9 = self->_moreListPopoverController;
    [(SUUIPillsControl *)self->_pillsControl selectedPillFrame];
    [(UIPopoverController *)v9 presentPopoverFromRect:self->_pillsControl inView:1 permittedArrowDirections:1 animated:?];
    context = [(SUUIStorePageSection *)self context];
    parentViewController = [context parentViewController];
    [parentViewController _beginIgnoringSectionChanges];
  }
}

@end
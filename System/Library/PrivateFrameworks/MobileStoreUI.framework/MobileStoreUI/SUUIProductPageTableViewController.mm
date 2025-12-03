@interface SUUIProductPageTableViewController
- (SUUIProductPageChildViewController)delegateSender;
- (SUUIProductPageChildViewControllerDelegate)delegate;
- (SUUIProductPageTableViewController)initWithInAppPurchases:(id)purchases clientContext:(id)context;
- (SUUIProductPageTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SUUIProductPageTableViewController)initWithReleaseNotes:(id)notes clientContext:(id)context;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_tableView;
- (id)_textLayoutRequestWithText:(id)text;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addHeaderView;
- (void)dealloc;
- (void)loadView;
- (void)scrollToView:(id)view animated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setColorScheme:(id)scheme;
- (void)setDelegate:(id)delegate;
- (void)setHeaderViewController:(id)controller;
- (void)setSections:(id)sections;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUUIProductPageTableViewController

- (SUUIProductPageTableViewController)initWithInAppPurchases:(id)purchases clientContext:(id)context
{
  v16[1] = *MEMORY[0x277D85DE8];
  purchasesCopy = purchases;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SUUIProductPageTableViewController;
  v8 = [(SUUIProductPageTableViewController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, context);
    clientContext = v9->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v11 = ;
    [(SUUIProductPageTableViewController *)v9 setTitle:v11];

    v12 = [[SUUIProductPageTableInAppPurchasesSection alloc] initWithInAppPurchases:purchasesCopy clientContext:contextCopy];
    [(SUUIProductPageTableInAppPurchasesSection *)v12 setExpanded:1];
    [(SUUITableViewSection *)v12 setHidesHeaderView:1];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(SUUIProductPageTableViewController *)v9 setSections:v13];
  }

  return v9;
}

- (SUUIProductPageTableViewController)initWithReleaseNotes:(id)notes clientContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  notesCopy = notes;
  contextCopy = context;
  v32.receiver = self;
  v32.super_class = SUUIProductPageTableViewController;
  v8 = [(SUUIProductPageTableViewController *)&v32 init];
  if (v8)
  {
    if ([notesCopy count])
    {
      objc_storeStrong(&v8->_clientContext, context);
      clientContext = v8->_clientContext;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_UPDATE_HISTORY_TITLE" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_UPDATE_HISTORY_TITLE" inBundles:0 inTable:@"ProductPage"];
      }
      v11 = ;
      [(SUUIProductPageTableViewController *)v8 setTitle:v11, contextCopy];

      v10 = [[SUUIProductPageTableUpdateHistorySection alloc] initWithClientContext:v8->_clientContext];
      [(SUUIProductPageTableUpdateHistorySection *)v10 setExpanded:1];
      [(SUUITableViewSection *)v10 setHidesHeaderView:1];
      [(SUUIProductPageTableUpdateHistorySection *)v10 setReleaseNotes:notesCopy];
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v27 = notesCopy;
      v13 = notesCopy;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            changeNotes = [*(*(&v28 + 1) + 8 * i) changeNotes];
            v19 = changeNotes;
            if (changeNotes)
            {
              v20 = changeNotes;
            }

            else
            {
              v20 = &stru_286AECDE0;
            }

            v21 = [(SUUIProductPageTableViewController *)v8 _textLayoutRequestWithText:v20];
            [v12 addObject:v21];
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v15);
      }

      v22 = objc_alloc_init(SUUILayoutCache);
      textLayoutCache = v8->_textLayoutCache;
      v8->_textLayoutCache = v22;

      [(SUUILayoutCache *)v8->_textLayoutCache populateCacheWithLayoutRequests:v12];
      [(SUUIProductPageTableUpdateHistorySection *)v10 setTextLayoutCache:v8->_textLayoutCache];
      [(SUUIProductPageTableViewController *)v8 setTextLayoutCache:v8->_textLayoutCache];
      v33 = v10;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      [(SUUIProductPageTableViewController *)v8 setSections:v24];

      contextCopy = v26;
      notesCopy = v27;
    }

    else
    {
      v10 = v8;
      v8 = 0;
    }
  }

  return v8;
}

- (SUUIProductPageTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SUUIProductPageTableViewController;
  v4 = [(SUUIProductPageTableViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    color = v4->_color;
    v4->_color = v5;
  }

  return v4;
}

- (void)dealloc
{
  [(SUUIProductPageTableView *)self->_tableView setDataSource:0];
  [(SUUIProductPageTableView *)self->_tableView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIProductPageTableViewController;
  [(SUUIProductPageTableViewController *)&v3 dealloc];
}

- (void)scrollToView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 topContentOffset];
    v9 = v8;
    v11 = v10;

    [viewCopy bounds];
    [viewCopy convertPoint:self->_tableView toView:?];
    [(SUUIProductPageTableView *)self->_tableView setContentOffset:animatedCopy animated:v9, v11 + v12];
  }
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v11 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    backgroundColor = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
    v7 = backgroundColor;
    if (!backgroundColor)
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    }

    objc_storeStrong(&self->_color, v7);
    if (!backgroundColor)
    {
    }

    tableView = self->_tableView;
    backgroundColor2 = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
    if (backgroundColor2)
    {
      [(SUUIProductPageTableView *)tableView setBackgroundColor:backgroundColor2];
    }

    else
    {
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(SUUIProductPageTableView *)tableView setBackgroundColor:v10];
    }

    schemeCopy = v11;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (self->_tableView)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_loadWeakRetained(&self->_delegateSender);
      [v6 productPageChildViewControllerDidLoadScrollView:v7];

      v5 = obj;
    }
  }
}

- (void)setHeaderViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_headerViewController != controllerCopy)
  {
    [(SUUIProductPageTableView *)self->_tableView setProductPageHeaderView:0];
    view = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
    [view removeFromSuperview];

    [(SUUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, controller);
    if (self->_headerViewController)
    {
      [(SUUIProductPageTableViewController *)self addChildViewController:?];
      if (self->_tableView)
      {
        [(SUUIProductPageTableViewController *)self _addHeaderView];
      }
    }
  }
}

- (void)setSections:(id)sections
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_sections != sections)
  {
    v4 = [sections copy];
    sections = self->_sections;
    self->_sections = v4;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_sections;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setClientContext:{self->_clientContext, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)loadView
{
  _tableView = [(SUUIProductPageTableViewController *)self _tableView];
  [(SUUIProductPageTableViewController *)self setView:_tableView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  indexPathForSelectedRow = [(SUUIProductPageTableView *)self->_tableView indexPathForSelectedRow];
  if (indexPathForSelectedRow)
  {
    [(SUUIProductPageTableView *)self->_tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:appearCopy];
  }

  v6.receiver = self;
  v6.super_class = SUUIProductPageTableViewController;
  [(SUUIProductPageTableViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_loadWeakRetained(&self->_delegateSender);
  [WeakRetained productPageChildViewControllerDidScroll:v4];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  v9 = [v8 tableViewCellForTableView:viewCopy indexPath:pathCopy];

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  numberOfRowsInSection = [v4 numberOfRowsInSection];

  return numberOfRowsInSection;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v24[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndex:](self->_sections, "objectAtIndex:", [pathCopy section]);
  v9 = [v8 selectionActionForTableView:viewCopy indexPath:pathCopy];
  v10 = v9;
  if (v9)
  {
    actionType = [v9 actionType];
    if (actionType > 2)
    {
      if (actionType == 3)
      {
        navigationController = [(SUUIProductPageTableViewController *)self navigationController];
        if (navigationController)
        {
          viewController = [v10 viewController];
          [navigationController pushViewController:viewController animated:1];
LABEL_19:

          goto LABEL_20;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v23 = objc_opt_respondsToSelector();

        if ((v23 & 1) == 0)
        {
LABEL_20:
          [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

          goto LABEL_21;
        }

        viewController = objc_loadWeakRetained(&self->_delegate);
        viewControllerBlock = [v10 viewControllerBlock];
        v17 = viewController;
        v18 = 0;
LABEL_18:
        [v17 productPageChildOpenURL:v18 viewControllerBlock:viewControllerBlock];

        goto LABEL_19;
      }

      if (actionType == 4)
      {
        navigationController = [v10 item];
        if (!navigationController)
        {
          goto LABEL_20;
        }

        v19 = objc_loadWeakRetained(&self->_delegate);
        v20 = objc_opt_respondsToSelector();

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

        viewController = objc_loadWeakRetained(&self->_delegate);
        [viewController productPageChildOpenItem:navigationController];
        goto LABEL_19;
      }
    }

    else
    {
      if ((actionType - 1) < 2)
      {
        navigationController = [v10 URL];
        if (!navigationController)
        {
          goto LABEL_20;
        }

        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_respondsToSelector();

        if ((v14 & 1) == 0)
        {
          goto LABEL_20;
        }

        viewController = objc_loadWeakRetained(&self->_delegate);
        viewControllerBlock = [v10 viewControllerBlock];
        v17 = viewController;
        v18 = navigationController;
        goto LABEL_18;
      }

      if (!actionType)
      {
        v24[0] = pathCopy;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
        [viewCopy reloadRowsAtIndexPaths:v21 withRowAnimation:100];
      }
    }
  }

LABEL_21:
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v7 = [(NSArray *)sections objectAtIndex:section];
  v8 = [v7 footerViewForTableView:viewCopy];

  if (v8)
  {
    [v8 frame];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v7 = [(NSArray *)sections objectAtIndex:section];
  v8 = [v7 headerViewForTableView:viewCopy];

  if (v8)
  {
    [v8 frame];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  [v8 heightForCellInTableView:viewCopy indexPath:pathCopy];
  v10 = v9;

  return v10;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v8 = [(NSArray *)sections objectAtIndex:section];
  v9 = [v8 footerViewForTableView:viewCopy];

  if (v9)
  {
    [v9 setBackgroundColor:self->_color];
  }

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v8 = [(NSArray *)sections objectAtIndex:section];
  v9 = [v8 headerViewForTableView:viewCopy];

  if (v9)
  {
    [v9 setBackgroundColor:self->_color];
  }

  return v9;
}

- (void)_addHeaderView
{
  view = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [view setAutoresizingMask:2];
  [view frame];
  v4 = v3;
  [(SUUIProductPageTableView *)self->_tableView bounds];
  [view setFrame:{0.0, v4}];
  [(SUUIProductPageTableView *)self->_tableView _addContentSubview:view atBack:0];
  floatingView = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [floatingView setAutoresizingMask:2];
  [floatingView frame];
  v7 = v6;
  [(SUUIProductPageTableView *)self->_tableView bounds];
  [floatingView setFrame:{0.0, v7}];
  [(SUUIProductPageTableView *)self->_tableView setProductPageHeaderView:floatingView];
}

- (id)_tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = objc_alloc_init(SUUIProductPageTableView);
    v5 = self->_tableView;
    self->_tableView = v4;

    v6 = self->_tableView;
    backgroundColor = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
    if (backgroundColor)
    {
      [(SUUIProductPageTableView *)v6 setBackgroundColor:backgroundColor];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(SUUIProductPageTableView *)v6 setBackgroundColor:v8];
    }

    [(SUUIProductPageTableView *)self->_tableView setDataSource:self];
    [(SUUIProductPageTableView *)self->_tableView setDelegate:self];
    [(SUUIProductPageTableView *)self->_tableView _setHeaderAndFooterViewsFloat:0];
    [(SUUIProductPageTableView *)self->_tableView setSeparatorStyle:0];
    if (self->_headerViewController)
    {
      [(SUUIProductPageTableViewController *)self _addHeaderView];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_loadWeakRetained(&self->_delegateSender);
    [WeakRetained productPageChildViewControllerDidLoadScrollView:v10];

    tableView = self->_tableView;
  }

  return tableView;
}

- (id)_textLayoutRequestWithText:(id)text
{
  textCopy = text;
  v5 = objc_alloc_init(SUUITextLayoutRequest);
  [(SUUITextLayoutRequest *)v5 setNumberOfLines:5];
  [(SUUITextLayoutRequest *)v5 setText:textCopy];

  [SUUIProductPageDetailsViewController defaultPageWidthForUserInterfaceIdiom:SUUIUserInterfaceIdiom(self->_clientContext)];
  [(SUUITextLayoutRequest *)v5 setWidth:v6 + -30.0];

  return v5;
}

- (SUUIProductPageChildViewController)delegateSender
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateSender);

  return WeakRetained;
}

- (SUUIProductPageChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface SUUIProductPageTableViewController
- (SUUIProductPageChildViewController)delegateSender;
- (SUUIProductPageChildViewControllerDelegate)delegate;
- (SUUIProductPageTableViewController)initWithInAppPurchases:(id)a3 clientContext:(id)a4;
- (SUUIProductPageTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SUUIProductPageTableViewController)initWithReleaseNotes:(id)a3 clientContext:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_tableView;
- (id)_textLayoutRequestWithText:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addHeaderView;
- (void)dealloc;
- (void)loadView;
- (void)scrollToView:(id)a3 animated:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHeaderViewController:(id)a3;
- (void)setSections:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUUIProductPageTableViewController

- (SUUIProductPageTableViewController)initWithInAppPurchases:(id)a3 clientContext:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SUUIProductPageTableViewController;
  v8 = [(SUUIProductPageTableViewController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, a4);
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

    v12 = [[SUUIProductPageTableInAppPurchasesSection alloc] initWithInAppPurchases:v6 clientContext:v7];
    [(SUUIProductPageTableInAppPurchasesSection *)v12 setExpanded:1];
    [(SUUITableViewSection *)v12 setHidesHeaderView:1];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(SUUIProductPageTableViewController *)v9 setSections:v13];
  }

  return v9;
}

- (SUUIProductPageTableViewController)initWithReleaseNotes:(id)a3 clientContext:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = SUUIProductPageTableViewController;
  v8 = [(SUUIProductPageTableViewController *)&v32 init];
  if (v8)
  {
    if ([v6 count])
    {
      objc_storeStrong(&v8->_clientContext, a4);
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
      [(SUUIProductPageTableViewController *)v8 setTitle:v11, v7];

      v10 = [[SUUIProductPageTableUpdateHistorySection alloc] initWithClientContext:v8->_clientContext];
      [(SUUIProductPageTableUpdateHistorySection *)v10 setExpanded:1];
      [(SUUITableViewSection *)v10 setHidesHeaderView:1];
      [(SUUIProductPageTableUpdateHistorySection *)v10 setReleaseNotes:v6];
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v27 = v6;
      v13 = v6;
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

            v18 = [*(*(&v28 + 1) + 8 * i) changeNotes];
            v19 = v18;
            if (v18)
            {
              v20 = v18;
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

      v7 = v26;
      v6 = v27;
    }

    else
    {
      v10 = v8;
      v8 = 0;
    }
  }

  return v8;
}

- (SUUIProductPageTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUUIProductPageTableViewController;
  v4 = [(SUUIProductPageTableViewController *)&v8 initWithNibName:a3 bundle:a4];
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

- (void)scrollToView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 topContentOffset];
    v9 = v8;
    v11 = v10;

    [v13 bounds];
    [v13 convertPoint:self->_tableView toView:?];
    [(SUUIProductPageTableView *)self->_tableView setContentOffset:v4 animated:v9, v11 + v12];
  }
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    v6 = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
    v7 = v6;
    if (!v6)
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    }

    objc_storeStrong(&self->_color, v7);
    if (!v6)
    {
    }

    tableView = self->_tableView;
    v9 = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
    if (v9)
    {
      [(SUUIProductPageTableView *)tableView setBackgroundColor:v9];
    }

    else
    {
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(SUUIProductPageTableView *)tableView setBackgroundColor:v10];
    }

    v5 = v11;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)setHeaderViewController:(id)a3
{
  v6 = a3;
  if (self->_headerViewController != v6)
  {
    [(SUUIProductPageTableView *)self->_tableView setProductPageHeaderView:0];
    v5 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
    [v5 removeFromSuperview];

    [(SUUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, a3);
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

- (void)setSections:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_sections != a3)
  {
    v4 = [a3 copy];
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
  v3 = [(SUUIProductPageTableViewController *)self _tableView];
  [(SUUIProductPageTableViewController *)self setView:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIProductPageTableView *)self->_tableView indexPathForSelectedRow];
  if (v5)
  {
    [(SUUIProductPageTableView *)self->_tableView deselectRowAtIndexPath:v5 animated:v3];
  }

  v6.receiver = self;
  v6.super_class = SUUIProductPageTableViewController;
  [(SUUIProductPageTableViewController *)&v6 viewWillAppear:v3];
}

- (void)scrollViewDidScroll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_loadWeakRetained(&self->_delegateSender);
  [WeakRetained productPageChildViewControllerDidScroll:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v6 = a4;
  v7 = a3;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  v9 = [v8 tableViewCellForTableView:v7 indexPath:v6];

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 numberOfRowsInSection];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = -[NSArray objectAtIndex:](self->_sections, "objectAtIndex:", [v7 section]);
  v9 = [v8 selectionActionForTableView:v6 indexPath:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 actionType];
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v12 = [(SUUIProductPageTableViewController *)self navigationController];
        if (v12)
        {
          v15 = [v10 viewController];
          [v12 pushViewController:v15 animated:1];
LABEL_19:

          goto LABEL_20;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v23 = objc_opt_respondsToSelector();

        if ((v23 & 1) == 0)
        {
LABEL_20:
          [v6 deselectRowAtIndexPath:v7 animated:1];

          goto LABEL_21;
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        v16 = [v10 viewControllerBlock];
        v17 = v15;
        v18 = 0;
LABEL_18:
        [v17 productPageChildOpenURL:v18 viewControllerBlock:v16];

        goto LABEL_19;
      }

      if (v11 == 4)
      {
        v12 = [v10 item];
        if (!v12)
        {
          goto LABEL_20;
        }

        v19 = objc_loadWeakRetained(&self->_delegate);
        v20 = objc_opt_respondsToSelector();

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        [v15 productPageChildOpenItem:v12];
        goto LABEL_19;
      }
    }

    else
    {
      if ((v11 - 1) < 2)
      {
        v12 = [v10 URL];
        if (!v12)
        {
          goto LABEL_20;
        }

        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_respondsToSelector();

        if ((v14 & 1) == 0)
        {
          goto LABEL_20;
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        v16 = [v10 viewControllerBlock];
        v17 = v15;
        v18 = v12;
        goto LABEL_18;
      }

      if (!v11)
      {
        v24[0] = v7;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
        [v6 reloadRowsAtIndexPaths:v21 withRowAnimation:100];
      }
    }
  }

LABEL_21:
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  sections = self->_sections;
  v6 = a3;
  v7 = [(NSArray *)sections objectAtIndex:a4];
  v8 = [v7 footerViewForTableView:v6];

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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  sections = self->_sections;
  v6 = a3;
  v7 = [(NSArray *)sections objectAtIndex:a4];
  v8 = [v7 headerViewForTableView:v6];

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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v6 = a4;
  v7 = a3;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  [v8 heightForCellInTableView:v7 indexPath:v6];
  v10 = v9;

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  sections = self->_sections;
  v7 = a3;
  v8 = [(NSArray *)sections objectAtIndex:a4];
  v9 = [v8 footerViewForTableView:v7];

  if (v9)
  {
    [v9 setBackgroundColor:self->_color];
  }

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  sections = self->_sections;
  v7 = a3;
  v8 = [(NSArray *)sections objectAtIndex:a4];
  v9 = [v8 headerViewForTableView:v7];

  if (v9)
  {
    [v9 setBackgroundColor:self->_color];
  }

  return v9;
}

- (void)_addHeaderView
{
  v8 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [v8 setAutoresizingMask:2];
  [v8 frame];
  v4 = v3;
  [(SUUIProductPageTableView *)self->_tableView bounds];
  [v8 setFrame:{0.0, v4}];
  [(SUUIProductPageTableView *)self->_tableView _addContentSubview:v8 atBack:0];
  v5 = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [v5 setAutoresizingMask:2];
  [v5 frame];
  v7 = v6;
  [(SUUIProductPageTableView *)self->_tableView bounds];
  [v5 setFrame:{0.0, v7}];
  [(SUUIProductPageTableView *)self->_tableView setProductPageHeaderView:v5];
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
    v7 = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
    if (v7)
    {
      [(SUUIProductPageTableView *)v6 setBackgroundColor:v7];
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

- (id)_textLayoutRequestWithText:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SUUITextLayoutRequest);
  [(SUUITextLayoutRequest *)v5 setNumberOfLines:5];
  [(SUUITextLayoutRequest *)v5 setText:v4];

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
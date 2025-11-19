@interface SUUIProductPageTableInAppPurchasesSection
- (SUUIProductPageTableInAppPurchasesSection)initWithInAppPurchases:(id)a3 clientContext:(id)a4;
- (id)headerViewForTableView:(id)a3;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
- (int64_t)numberOfRowsInSection;
- (void)_reloadHeaderView;
- (void)setColorScheme:(id)a3;
- (void)setExpanded:(BOOL)a3;
@end

@implementation SUUIProductPageTableInAppPurchasesSection

- (SUUIProductPageTableInAppPurchasesSection)initWithInAppPurchases:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SUUIProductPageTableInAppPurchasesSection;
  v8 = [(SUUIProductPageTableInAppPurchasesSection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, a4);
    v10 = [v6 copy];
    inAppPurchases = v9->_inAppPurchases;
    v9->_inAppPurchases = v10;
  }

  return v9;
}

- (id)headerViewForTableView:(id)a3
{
  if (!self->_headerView && ![(SUUITableViewSection *)self hidesHeaderView])
  {
    v4 = objc_alloc_init(SUUIProductPageTableExpandableHeaderView);
    headerView = self->_headerView;
    self->_headerView = v4;

    [(SUUIProductPageTableExpandableHeaderView *)self->_headerView setColorScheme:self->_colorScheme];
    v6 = self->_headerView;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v8 = ;
    [(SUUIProductPageTableExpandableHeaderView *)v6 setTitle:v8];

    [(SUUIProductPageTableExpandableHeaderView *)self->_headerView sizeToFit];
    [(SUUIProductPageTableInAppPurchasesSection *)self _reloadHeaderView];
  }

  v9 = self->_headerView;

  return v9;
}

- (int64_t)numberOfRowsInSection
{
  if (![(SUUIProductPageTableSection *)self isExpanded])
  {
    return 0;
  }

  inAppPurchases = self->_inAppPurchases;

  return [(NSArray *)inAppPurchases count];
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    [(SUUIProductPageTableExpandableHeaderView *)self->_headerView setColorScheme:v6];
    v5 = v6;
  }
}

- (void)setExpanded:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIProductPageTableInAppPurchasesSection;
  [(SUUIProductPageTableSection *)&v4 setExpanded:a3];
  [(SUUIProductPageTableInAppPurchasesSection *)self _reloadHeaderView];
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"IA"];
  if (!v7)
  {
    v7 = [(SUUITableViewCell *)[SUUIProductPageInAppPurchaseTableCell alloc] initWithStyle:0 reuseIdentifier:@"IA"];
    v8 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v8)
    {
      [(SUUITableViewCell *)v7 setBottomBorderColor:v8];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(SUUITableViewCell *)v7 setBottomBorderColor:v9];
    }
  }

  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    [(SUUITableViewCell *)v7 setBorderPaddingLeft:30.0];
    [(SUUIProductPageInAppPurchaseTableCell *)v7 setContentInsets:0.0, 15.0, 0.0, 0.0];
  }

  v10 = [v6 row];
  v11 = [(NSArray *)self->_inAppPurchases objectAtIndex:v10];
  [(SUUIProductPageInAppPurchaseTableCell *)v7 setColorScheme:self->_colorScheme];
  v12 = [v11 formattedPrice];
  [(SUUIProductPageInAppPurchaseTableCell *)v7 setPriceString:v12];

  v13 = [v11 name];
  [(SUUIProductPageInAppPurchaseTableCell *)v7 setProductName:v13];

  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v16 = self->_numberFormatter;
    self->_numberFormatter = v15;

    [(NSNumberFormatter *)self->_numberFormatter setNumberStyle:1];
    [(NSNumberFormatter *)self->_numberFormatter setUsesGroupingSeparator:0];
    numberFormatter = self->_numberFormatter;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v10 + 1];
  v18 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v17];
  [(SUUIProductPageInAppPurchaseTableCell *)v7 setIndexString:v18];

  return v7;
}

- (void)_reloadHeaderView
{
  v3 = [(SUUIProductPageTableSection *)self isExpanded];
  headerView = self->_headerView;
  if (v3)
  {
    [(SUUIProductPageTableExpandableHeaderView *)self->_headerView setActionString:0];
  }

  else
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_SHOW_IN_APPS_BUTTON" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_SHOW_IN_APPS_BUTTON" inBundles:0 inTable:@"ProductPage"];
    }
    v6 = ;
    [(SUUIProductPageTableExpandableHeaderView *)headerView setActionString:v6];
  }

  v7 = self->_headerView;
  v8 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
  v10 = v8;
  if (v8)
  {
    [(SUUIProductPageTableExpandableHeaderView *)v7 setBottomBorderColor:v8];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(SUUIProductPageTableExpandableHeaderView *)v7 setBottomBorderColor:v9];
  }
}

@end
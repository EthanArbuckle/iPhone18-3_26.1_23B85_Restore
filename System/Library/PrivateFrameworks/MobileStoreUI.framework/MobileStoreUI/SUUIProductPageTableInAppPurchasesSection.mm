@interface SUUIProductPageTableInAppPurchasesSection
- (SUUIProductPageTableInAppPurchasesSection)initWithInAppPurchases:(id)purchases clientContext:(id)context;
- (id)headerViewForTableView:(id)view;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (int64_t)numberOfRowsInSection;
- (void)_reloadHeaderView;
- (void)setColorScheme:(id)scheme;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation SUUIProductPageTableInAppPurchasesSection

- (SUUIProductPageTableInAppPurchasesSection)initWithInAppPurchases:(id)purchases clientContext:(id)context
{
  purchasesCopy = purchases;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = SUUIProductPageTableInAppPurchasesSection;
  v8 = [(SUUIProductPageTableInAppPurchasesSection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, context);
    v10 = [purchasesCopy copy];
    inAppPurchases = v9->_inAppPurchases;
    v9->_inAppPurchases = v10;
  }

  return v9;
}

- (id)headerViewForTableView:(id)view
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

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v6 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    [(SUUIProductPageTableExpandableHeaderView *)self->_headerView setColorScheme:v6];
    schemeCopy = v6;
  }
}

- (void)setExpanded:(BOOL)expanded
{
  v4.receiver = self;
  v4.super_class = SUUIProductPageTableInAppPurchasesSection;
  [(SUUIProductPageTableSection *)&v4 setExpanded:expanded];
  [(SUUIProductPageTableInAppPurchasesSection *)self _reloadHeaderView];
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"IA"];
  if (!v7)
  {
    v7 = [(SUUITableViewCell *)[SUUIProductPageInAppPurchaseTableCell alloc] initWithStyle:0 reuseIdentifier:@"IA"];
    primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(SUUITableViewCell *)v7 setBottomBorderColor:primaryTextColor];
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

  v10 = [pathCopy row];
  v11 = [(NSArray *)self->_inAppPurchases objectAtIndex:v10];
  [(SUUIProductPageInAppPurchaseTableCell *)v7 setColorScheme:self->_colorScheme];
  formattedPrice = [v11 formattedPrice];
  [(SUUIProductPageInAppPurchaseTableCell *)v7 setPriceString:formattedPrice];

  name = [v11 name];
  [(SUUIProductPageInAppPurchaseTableCell *)v7 setProductName:name];

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
  isExpanded = [(SUUIProductPageTableSection *)self isExpanded];
  headerView = self->_headerView;
  if (isExpanded)
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
  primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
  v10 = primaryTextColor;
  if (primaryTextColor)
  {
    [(SUUIProductPageTableExpandableHeaderView *)v7 setBottomBorderColor:primaryTextColor];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(SUUIProductPageTableExpandableHeaderView *)v7 setBottomBorderColor:v9];
  }
}

@end
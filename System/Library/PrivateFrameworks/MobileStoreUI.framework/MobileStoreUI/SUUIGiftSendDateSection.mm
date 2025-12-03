@interface SUUIGiftSendDateSection
- (SUUIGiftSendDateSectionDelegate)delegate;
- (UIEdgeInsets)headerInsets;
- (id)_headerView;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (void)giftDateTableViewCell:(id)cell didChangeDate:(id)date;
- (void)setHeaderInsets:(UIEdgeInsets)insets;
- (void)setSendDate:(id)date;
@end

@implementation SUUIGiftSendDateSection

- (UIEdgeInsets)headerInsets
{
  _headerView = [(SUUIGiftSendDateSection *)self _headerView];
  [_headerView contentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setHeaderInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  _headerView = [(SUUIGiftSendDateSection *)self _headerView];
  [_headerView setContentInsets:{top, left, bottom, right}];
  [_headerView sizeToFit];
}

- (void)setSendDate:(id)date
{
  dateCopy = date;
  if (self->_sendDate != dateCopy)
  {
    v7 = dateCopy;
    if (dateCopy)
    {
      date = [(NSDate *)dateCopy copy];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    sendDate = self->_sendDate;
    self->_sendDate = date;

    dateCopy = v7;
  }
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"GDT", path}];
  if (!v5)
  {
    v5 = [[SUUIGiftDateTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"GDT"];
    giftConfiguration = [(SUUIGiftTableViewSection *)self giftConfiguration];
    [(SUUIGiftDateTableViewCell *)v5 setGiftConfiguration:giftConfiguration];
  }

  [(SUUIGiftDateTableViewCell *)v5 setChecked:1];
  [(SUUIGiftDateTableViewCell *)v5 setDate:self->_sendDate];
  [(SUUIGiftDateTableViewCell *)v5 setDelegate:self];
  [(SUUIGiftDateTableViewCell *)v5 setPlaceholder:0];

  return v5;
}

- (id)_headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    giftConfiguration = [(SUUIGiftTableViewSection *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];

    v6 = objc_alloc_init(SUUIGiftTableSectionHeaderView);
    v7 = self->_headerView;
    self->_headerView = v6;

    v8 = self->_headerView;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_DATE_SECTION_HEADER" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_DATE_SECTION_HEADER" inBundles:0 inTable:@"Gifting"];
    }
    v9 = ;
    [(SUUIGiftTableSectionHeaderView *)v8 setLabel:v9];

    [(SUUIGiftTableSectionHeaderView *)self->_headerView sizeToFit];
    headerView = self->_headerView;
  }

  return headerView;
}

- (void)giftDateTableViewCell:(id)cell didChangeDate:(id)date
{
  objc_storeStrong(&self->_sendDate, date);
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained giftSendDateSection:self didChangeDate:dateCopy];
}

- (SUUIGiftSendDateSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
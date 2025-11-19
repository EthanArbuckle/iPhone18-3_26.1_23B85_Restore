@interface SUUIGiftSendDateSection
- (SUUIGiftSendDateSectionDelegate)delegate;
- (UIEdgeInsets)headerInsets;
- (id)_headerView;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
- (void)giftDateTableViewCell:(id)a3 didChangeDate:(id)a4;
- (void)setHeaderInsets:(UIEdgeInsets)a3;
- (void)setSendDate:(id)a3;
@end

@implementation SUUIGiftSendDateSection

- (UIEdgeInsets)headerInsets
{
  v2 = [(SUUIGiftSendDateSection *)self _headerView];
  [v2 contentInsets];
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

- (void)setHeaderInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(SUUIGiftSendDateSection *)self _headerView];
  [v7 setContentInsets:{top, left, bottom, right}];
  [v7 sizeToFit];
}

- (void)setSendDate:(id)a3
{
  v4 = a3;
  if (self->_sendDate != v4)
  {
    v7 = v4;
    if (v4)
    {
      v5 = [(NSDate *)v4 copy];
    }

    else
    {
      v5 = [MEMORY[0x277CBEAA8] date];
    }

    sendDate = self->_sendDate;
    self->_sendDate = v5;

    v4 = v7;
  }
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"GDT", a4}];
  if (!v5)
  {
    v5 = [[SUUIGiftDateTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"GDT"];
    v6 = [(SUUIGiftTableViewSection *)self giftConfiguration];
    [(SUUIGiftDateTableViewCell *)v5 setGiftConfiguration:v6];
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
    v4 = [(SUUIGiftTableViewSection *)self giftConfiguration];
    v5 = [v4 clientContext];

    v6 = objc_alloc_init(SUUIGiftTableSectionHeaderView);
    v7 = self->_headerView;
    self->_headerView = v6;

    v8 = self->_headerView;
    if (v5)
    {
      [v5 localizedStringForKey:@"GIFTING_DATE_SECTION_HEADER" inTable:@"Gifting"];
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

- (void)giftDateTableViewCell:(id)a3 didChangeDate:(id)a4
{
  objc_storeStrong(&self->_sendDate, a4);
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained giftSendDateSection:self didChangeDate:v6];
}

- (SUUIGiftSendDateSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
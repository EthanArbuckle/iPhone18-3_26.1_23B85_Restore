@interface SUUIRedeemResultLinksTableViewSection
- (SUUIRedeemResultLinksTableViewSection)initWithLinks:(id)a3;
- (UIEdgeInsets)contentInsets;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forIndexPath:(id)a5;
@end

@implementation SUUIRedeemResultLinksTableViewSection

- (SUUIRedeemResultLinksTableViewSection)initWithLinks:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUUIRedeemResultLinksTableViewSection;
  v5 = [(SUUIRedeemResultLinksTableViewSection *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    links = v5->_links;
    v5->_links = v6;
  }

  return v5;
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"SUUIRRLTVC"];
  if (!v7)
  {
    v7 = [[SUUITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SUUIRRLTVC"];
    [(SUUITableViewCell *)v7 setAccessoryType:1];
    v8 = [(SUUITableViewCell *)v7 textLabel];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [v8 setFont:v9];
  }

  v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [(SUUITableViewCell *)v7 setTopBorderColor:v10];
  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SUUITableViewCell *)v7 setBorderPaddingLeft:30.0];
    [(SUUITableViewCell *)v7 setTextLabelInsets:0.0, 15.0, 0.0, -15.0];
  }

  v13 = [(NSArray *)self->_links count];
  if ([v6 row] == v13 - 1)
  {
    [(SUUITableViewCell *)v7 setBottomBorderColor:v10];
  }

  v14 = -[NSArray objectAtIndex:](self->_links, "objectAtIndex:", [v6 row]);
  v15 = [(SUUITableViewCell *)v7 textLabel];
  v16 = [v14 title];
  [v15 setText:v16];

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forIndexPath:(id)a5
{
  v6 = a4;
  v7 = [a3 backgroundColor];
  [v6 setBackgroundColor:v7];
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
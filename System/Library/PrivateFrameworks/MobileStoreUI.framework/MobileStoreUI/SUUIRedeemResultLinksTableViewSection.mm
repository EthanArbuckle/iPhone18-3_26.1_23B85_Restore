@interface SUUIRedeemResultLinksTableViewSection
- (SUUIRedeemResultLinksTableViewSection)initWithLinks:(id)links;
- (UIEdgeInsets)contentInsets;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path;
@end

@implementation SUUIRedeemResultLinksTableViewSection

- (SUUIRedeemResultLinksTableViewSection)initWithLinks:(id)links
{
  linksCopy = links;
  v9.receiver = self;
  v9.super_class = SUUIRedeemResultLinksTableViewSection;
  v5 = [(SUUIRedeemResultLinksTableViewSection *)&v9 init];
  if (v5)
  {
    v6 = [linksCopy copy];
    links = v5->_links;
    v5->_links = v6;
  }

  return v5;
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"SUUIRRLTVC"];
  if (!v7)
  {
    v7 = [[SUUITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SUUIRRLTVC"];
    [(SUUITableViewCell *)v7 setAccessoryType:1];
    textLabel = [(SUUITableViewCell *)v7 textLabel];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [textLabel setFont:v9];
  }

  v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [(SUUITableViewCell *)v7 setTopBorderColor:v10];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SUUITableViewCell *)v7 setBorderPaddingLeft:30.0];
    [(SUUITableViewCell *)v7 setTextLabelInsets:0.0, 15.0, 0.0, -15.0];
  }

  v13 = [(NSArray *)self->_links count];
  if ([pathCopy row] == v13 - 1)
  {
    [(SUUITableViewCell *)v7 setBottomBorderColor:v10];
  }

  v14 = -[NSArray objectAtIndex:](self->_links, "objectAtIndex:", [pathCopy row]);
  textLabel2 = [(SUUITableViewCell *)v7 textLabel];
  title = [v14 title];
  [textLabel2 setText:title];

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  backgroundColor = [view backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];
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
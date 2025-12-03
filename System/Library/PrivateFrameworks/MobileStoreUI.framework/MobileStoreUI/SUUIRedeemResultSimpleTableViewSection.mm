@interface SUUIRedeemResultSimpleTableViewSection
- (SUUIRedeemResultSimpleTableViewSection)initWithView:(id)view;
- (UIEdgeInsets)contentInsets;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path;
@end

@implementation SUUIRedeemResultSimpleTableViewSection

- (SUUIRedeemResultSimpleTableViewSection)initWithView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SUUIRedeemResultSimpleTableViewSection;
  v6 = [(SUUIRedeemResultSimpleTableViewSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, view);
  }

  return v7;
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"SUUIRRSTVC", path}];
  if (!v5)
  {
    v5 = [[SUUIRedeemResultSimpleTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SUUIRRSTVC"];
    [(SUUIRedeemResultSimpleTableViewCell *)v5 setSelectionStyle:0];
  }

  [(SUUIRedeemResultSimpleTableViewCell *)v5 setChildContentInsets:self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right];
  [(SUUIRedeemResultSimpleTableViewCell *)v5 setChildContentView:self->_view];

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  backgroundColor = [view backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];

  [(UIView *)self->_view setBackgroundColor:backgroundColor];
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
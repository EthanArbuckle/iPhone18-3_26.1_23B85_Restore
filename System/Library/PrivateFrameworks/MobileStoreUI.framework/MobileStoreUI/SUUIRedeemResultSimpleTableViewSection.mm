@interface SUUIRedeemResultSimpleTableViewSection
- (SUUIRedeemResultSimpleTableViewSection)initWithView:(id)a3;
- (UIEdgeInsets)contentInsets;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forIndexPath:(id)a5;
@end

@implementation SUUIRedeemResultSimpleTableViewSection

- (SUUIRedeemResultSimpleTableViewSection)initWithView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIRedeemResultSimpleTableViewSection;
  v6 = [(SUUIRedeemResultSimpleTableViewSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, a3);
  }

  return v7;
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"SUUIRRSTVC", a4}];
  if (!v5)
  {
    v5 = [[SUUIRedeemResultSimpleTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SUUIRRSTVC"];
    [(SUUIRedeemResultSimpleTableViewCell *)v5 setSelectionStyle:0];
  }

  [(SUUIRedeemResultSimpleTableViewCell *)v5 setChildContentInsets:self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right];
  [(SUUIRedeemResultSimpleTableViewCell *)v5 setChildContentView:self->_view];

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forIndexPath:(id)a5
{
  v7 = a4;
  v8 = [a3 backgroundColor];
  [v7 setBackgroundColor:v8];

  [(UIView *)self->_view setBackgroundColor:v8];
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
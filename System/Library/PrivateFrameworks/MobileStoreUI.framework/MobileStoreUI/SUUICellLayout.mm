@interface SUUICellLayout
- (SUUICellLayout)initWithCollectionViewCell:(id)a3;
- (SUUICellLayout)initWithParentView:(id)a3;
- (SUUICellLayout)initWithTableViewCell:(id)a3;
- (UIView)contentView;
- (UIView)parentCellView;
- (void)setNeedsLayout;
@end

@implementation SUUICellLayout

- (SUUICellLayout)initWithCollectionViewCell:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUICellLayout;
  v5 = [(SUUICellLayout *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cell, v4);
    v7 = [v4 contentView];
    objc_storeWeak(&v6->_contentView, v7);

    WeakRetained = objc_loadWeakRetained(&v6->_cell);
    v6->_parentWantsCellNeedsLayout = objc_opt_respondsToSelector() & 1;
  }

  return v6;
}

- (SUUICellLayout)initWithParentView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUUICellLayout;
  v5 = [(SUUICellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cell, v4);
    objc_storeWeak(&v6->_contentView, v4);
    WeakRetained = objc_loadWeakRetained(&v6->_cell);
    v6->_parentWantsCellNeedsLayout = objc_opt_respondsToSelector() & 1;
  }

  return v6;
}

- (SUUICellLayout)initWithTableViewCell:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUICellLayout;
  v5 = [(SUUICellLayout *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cell, v4);
    v7 = [v4 contentView];
    objc_storeWeak(&v6->_contentView, v7);

    WeakRetained = objc_loadWeakRetained(&v6->_cell);
    v6->_parentWantsCellNeedsLayout = objc_opt_respondsToSelector() & 1;
  }

  return v6;
}

- (void)setNeedsLayout
{
  parentWantsCellNeedsLayout = self->_parentWantsCellNeedsLayout;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v4 = WeakRetained;
  if (parentWantsCellNeedsLayout)
  {
    [WeakRetained setCellLayoutNeedsLayout];
  }

  else
  {
    [WeakRetained setNeedsLayout];
  }
}

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (UIView)parentCellView
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end
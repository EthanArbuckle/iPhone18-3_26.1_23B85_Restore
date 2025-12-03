@interface SUUICellLayout
- (SUUICellLayout)initWithCollectionViewCell:(id)cell;
- (SUUICellLayout)initWithParentView:(id)view;
- (SUUICellLayout)initWithTableViewCell:(id)cell;
- (UIView)contentView;
- (UIView)parentCellView;
- (void)setNeedsLayout;
@end

@implementation SUUICellLayout

- (SUUICellLayout)initWithCollectionViewCell:(id)cell
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = SUUICellLayout;
  v5 = [(SUUICellLayout *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cell, cellCopy);
    contentView = [cellCopy contentView];
    objc_storeWeak(&v6->_contentView, contentView);

    WeakRetained = objc_loadWeakRetained(&v6->_cell);
    v6->_parentWantsCellNeedsLayout = objc_opt_respondsToSelector() & 1;
  }

  return v6;
}

- (SUUICellLayout)initWithParentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SUUICellLayout;
  v5 = [(SUUICellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cell, viewCopy);
    objc_storeWeak(&v6->_contentView, viewCopy);
    WeakRetained = objc_loadWeakRetained(&v6->_cell);
    v6->_parentWantsCellNeedsLayout = objc_opt_respondsToSelector() & 1;
  }

  return v6;
}

- (SUUICellLayout)initWithTableViewCell:(id)cell
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = SUUICellLayout;
  v5 = [(SUUICellLayout *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cell, cellCopy);
    contentView = [cellCopy contentView];
    objc_storeWeak(&v6->_contentView, contentView);

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
@interface SUUIProductPageTableView
- (void)_addContentSubview:(id)subview atBack:(BOOL)back;
- (void)setProductPageHeaderView:(id)view;
@end

@implementation SUUIProductPageTableView

- (void)setProductPageHeaderView:(id)view
{
  viewCopy = view;
  productPageHeaderView = self->_productPageHeaderView;
  v7 = viewCopy;
  if (productPageHeaderView != viewCopy)
  {
    if ([(UIView *)productPageHeaderView isDescendantOfView:self])
    {
      [(UIView *)self->_productPageHeaderView removeFromSuperview];
    }

    objc_storeStrong(&self->_productPageHeaderView, view);
    if (self->_productPageHeaderView)
    {
      [(SUUIProductPageTableView *)self addSubview:?];
    }
  }
}

- (void)_addContentSubview:(id)subview atBack:(BOOL)back
{
  backCopy = back;
  v10.receiver = self;
  v10.super_class = SUUIProductPageTableView;
  subviewCopy = subview;
  [(SUUIProductPageTableView *)&v10 _addContentSubview:subviewCopy atBack:backCopy];
  productPageHeaderView = self->_productPageHeaderView;

  if (productPageHeaderView)
  {
    v8 = productPageHeaderView == subviewCopy;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9.receiver = self;
    v9.super_class = SUUIProductPageTableView;
    [(SUUIProductPageTableView *)&v9 _addContentSubview:productPageHeaderView atBack:0];
  }
}

@end
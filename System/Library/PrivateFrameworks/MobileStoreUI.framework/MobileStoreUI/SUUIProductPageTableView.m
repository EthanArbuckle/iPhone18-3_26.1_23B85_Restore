@interface SUUIProductPageTableView
- (void)_addContentSubview:(id)a3 atBack:(BOOL)a4;
- (void)setProductPageHeaderView:(id)a3;
@end

@implementation SUUIProductPageTableView

- (void)setProductPageHeaderView:(id)a3
{
  v5 = a3;
  productPageHeaderView = self->_productPageHeaderView;
  v7 = v5;
  if (productPageHeaderView != v5)
  {
    if ([(UIView *)productPageHeaderView isDescendantOfView:self])
    {
      [(UIView *)self->_productPageHeaderView removeFromSuperview];
    }

    objc_storeStrong(&self->_productPageHeaderView, a3);
    if (self->_productPageHeaderView)
    {
      [(SUUIProductPageTableView *)self addSubview:?];
    }
  }
}

- (void)_addContentSubview:(id)a3 atBack:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = SUUIProductPageTableView;
  v6 = a3;
  [(SUUIProductPageTableView *)&v10 _addContentSubview:v6 atBack:v4];
  productPageHeaderView = self->_productPageHeaderView;

  if (productPageHeaderView)
  {
    v8 = productPageHeaderView == v6;
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
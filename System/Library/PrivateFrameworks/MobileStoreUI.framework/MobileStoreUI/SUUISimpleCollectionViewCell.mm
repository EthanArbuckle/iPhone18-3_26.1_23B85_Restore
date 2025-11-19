@interface SUUISimpleCollectionViewCell
- (UIEdgeInsets)contentInsets;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setContentChildView:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
@end

@implementation SUUISimpleCollectionViewCell

- (void)setContentChildView:(id)a3
{
  v5 = a3;
  contentChildView = self->_contentChildView;
  v10 = v5;
  if (contentChildView != v5)
  {
    if ([(UIView *)contentChildView isDescendantOfView:self])
    {
      [(UIView *)self->_contentChildView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentChildView, a3);
    [(SUUISimpleCollectionViewCell *)self setNeedsLayout];
    contentChildView = self->_contentChildView;
  }

  if (contentChildView && ![(UIView *)contentChildView isDescendantOfView:self])
  {
    v7 = [(SUUISimpleCollectionViewCell *)self contentView];
    v8 = self->_contentChildView;
    v9 = [(SUUISimpleCollectionViewCell *)self backgroundColor];
    [(UIView *)v8 setBackgroundColor:v9];

    [v7 addSubview:self->_contentChildView];
    [(SUUISimpleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(SUUISimpleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 backgroundColor];
  [(SUUISimpleCollectionViewCell *)self setBackgroundColor:v5];

  v6.receiver = self;
  v6.super_class = SUUISimpleCollectionViewCell;
  [(SUUISimpleCollectionViewCell *)&v6 applyLayoutAttributes:v4];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SUUISimpleCollectionViewCell;
  [(SUUISimpleCollectionViewCell *)&v12 layoutSubviews];
  v3 = [(SUUISimpleCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_contentChildView setFrame:v5 + self->_contentInsets.left, v7 + self->_contentInsets.top, v9 - (self->_contentInsets.left + self->_contentInsets.right), v11 - (self->_contentInsets.top + self->_contentInsets.bottom)];
}

- (void)setBackgroundColor:(id)a3
{
  contentChildView = self->_contentChildView;
  v5 = a3;
  [(UIView *)contentChildView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUISimpleCollectionViewCell;
  [(SUUISimpleCollectionViewCell *)&v6 setBackgroundColor:v5];
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
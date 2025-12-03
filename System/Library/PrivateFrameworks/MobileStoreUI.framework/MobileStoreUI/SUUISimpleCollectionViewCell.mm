@interface SUUISimpleCollectionViewCell
- (UIEdgeInsets)contentInsets;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setContentChildView:(id)view;
- (void)setContentInsets:(UIEdgeInsets)insets;
@end

@implementation SUUISimpleCollectionViewCell

- (void)setContentChildView:(id)view
{
  viewCopy = view;
  contentChildView = self->_contentChildView;
  v10 = viewCopy;
  if (contentChildView != viewCopy)
  {
    if ([(UIView *)contentChildView isDescendantOfView:self])
    {
      [(UIView *)self->_contentChildView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentChildView, view);
    [(SUUISimpleCollectionViewCell *)self setNeedsLayout];
    contentChildView = self->_contentChildView;
  }

  if (contentChildView && ![(UIView *)contentChildView isDescendantOfView:self])
  {
    contentView = [(SUUISimpleCollectionViewCell *)self contentView];
    v8 = self->_contentChildView;
    backgroundColor = [(SUUISimpleCollectionViewCell *)self backgroundColor];
    [(UIView *)v8 setBackgroundColor:backgroundColor];

    [contentView addSubview:self->_contentChildView];
    [(SUUISimpleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(SUUISimpleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUISimpleCollectionViewCell *)self setBackgroundColor:backgroundColor];

  v6.receiver = self;
  v6.super_class = SUUISimpleCollectionViewCell;
  [(SUUISimpleCollectionViewCell *)&v6 applyLayoutAttributes:attributesCopy];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SUUISimpleCollectionViewCell;
  [(SUUISimpleCollectionViewCell *)&v12 layoutSubviews];
  contentView = [(SUUISimpleCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_contentChildView setFrame:v5 + self->_contentInsets.left, v7 + self->_contentInsets.top, v9 - (self->_contentInsets.left + self->_contentInsets.right), v11 - (self->_contentInsets.top + self->_contentInsets.bottom)];
}

- (void)setBackgroundColor:(id)color
{
  contentChildView = self->_contentChildView;
  colorCopy = color;
  [(UIView *)contentChildView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUISimpleCollectionViewCell;
  [(SUUISimpleCollectionViewCell *)&v6 setBackgroundColor:colorCopy];
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
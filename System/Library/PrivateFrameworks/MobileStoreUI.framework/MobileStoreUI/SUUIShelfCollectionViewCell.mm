@interface SUUIShelfCollectionViewCell
- (UIEdgeInsets)contentInset;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setCollectionView:(id)view;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setRendersWithParallax:(BOOL)parallax;
- (void)setRendersWithPerspective:(BOOL)perspective;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)updateForChangedDistanceFromVanishingPoint;
@end

@implementation SUUIShelfCollectionViewCell

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  collectionView = self->_collectionView;
  v10 = viewCopy;
  if (collectionView != viewCopy)
  {
    if ([(UICollectionView *)collectionView isDescendantOfView:self])
    {
      [(UICollectionView *)self->_collectionView removeFromSuperview];
    }

    objc_storeStrong(&self->_collectionView, view);
    [(UICollectionView *)self->_collectionView setSemanticContentAttribute:[(SUUIShelfCollectionViewCell *)self semanticContentAttribute]];
    [(SUUIShelfCollectionViewCell *)self setNeedsLayout];
    collectionView = self->_collectionView;
  }

  if (collectionView && ([(UICollectionView *)collectionView isDescendantOfView:self]& 1) == 0)
  {
    contentView = [(SUUIShelfCollectionViewCell *)self contentView];
    v8 = self->_collectionView;
    backgroundColor = [(SUUIShelfCollectionViewCell *)self backgroundColor];
    [(UICollectionView *)v8 setBackgroundColor:backgroundColor];

    [contentView addSubview:self->_collectionView];
    [(SUUIShelfCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = SUUIShelfCollectionViewCell;
  [(SUUIShelfCollectionViewCell *)&v5 setSemanticContentAttribute:?];
  [(UICollectionView *)self->_collectionView setSemanticContentAttribute:attribute];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUIShelfCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setRendersWithPerspective:(BOOL)perspective
{
  if (self->_rendersWithPerspective != perspective)
  {
    self->_rendersWithPerspective = perspective;
    [(SUUIShelfCollectionViewCell *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (void)setRendersWithParallax:(BOOL)parallax
{
  if (self->_rendersWithParallax != parallax)
  {
    self->_rendersWithParallax = parallax;
    [(SUUIShelfCollectionViewCell *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUIShelfCollectionViewCell *)self setBackgroundColor:backgroundColor];

  v6.receiver = self;
  v6.super_class = SUUIShelfCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 applyLayoutAttributes:attributesCopy];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = SUUIShelfCollectionViewCell;
  [(SUUICollectionViewCell *)&v23 layoutSubviews];
  contentView = [(SUUIShelfCollectionViewCell *)self contentView];
  [contentView bounds];
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v7 = v6 + left;
  v9 = v8 + top;
  v11 = v10 - (left + self->_contentInset.right);
  v13 = v12 - (top + self->_contentInset.bottom);

  [(UICollectionView *)self->_collectionView frame];
  v25.origin.x = v14;
  v25.origin.y = v15;
  v17 = v16;
  v25.size.height = v18;
  v24.origin.x = v7;
  v24.origin.y = v9;
  v24.size.width = v11;
  v24.size.height = v13;
  v25.size.width = v17;
  if (!CGRectEqualToRect(v24, v25))
  {
    [(UICollectionView *)self->_collectionView contentOffset];
    v20 = v19;
    v22 = v21;
    [(UICollectionView *)self->_collectionView setFrame:v7, v9, v11, v13];
    if (v11 == v17)
    {
      [(UICollectionView *)self->_collectionView setContentOffset:v20, v22];
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  collectionView = self->_collectionView;
  colorCopy = color;
  [(UICollectionView *)collectionView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIShelfCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (void)updateForChangedDistanceFromVanishingPoint
{
  if (self->_rendersWithParallax)
  {
    SUUICollectionViewUpdatePerspectiveCells(self->_collectionView, 0);
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
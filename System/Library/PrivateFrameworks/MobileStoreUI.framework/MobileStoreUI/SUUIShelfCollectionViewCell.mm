@interface SUUIShelfCollectionViewCell
- (UIEdgeInsets)contentInset;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setCollectionView:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setRendersWithParallax:(BOOL)a3;
- (void)setRendersWithPerspective:(BOOL)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)updateForChangedDistanceFromVanishingPoint;
@end

@implementation SUUIShelfCollectionViewCell

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  collectionView = self->_collectionView;
  v10 = v5;
  if (collectionView != v5)
  {
    if ([(UICollectionView *)collectionView isDescendantOfView:self])
    {
      [(UICollectionView *)self->_collectionView removeFromSuperview];
    }

    objc_storeStrong(&self->_collectionView, a3);
    [(UICollectionView *)self->_collectionView setSemanticContentAttribute:[(SUUIShelfCollectionViewCell *)self semanticContentAttribute]];
    [(SUUIShelfCollectionViewCell *)self setNeedsLayout];
    collectionView = self->_collectionView;
  }

  if (collectionView && ([(UICollectionView *)collectionView isDescendantOfView:self]& 1) == 0)
  {
    v7 = [(SUUIShelfCollectionViewCell *)self contentView];
    v8 = self->_collectionView;
    v9 = [(SUUIShelfCollectionViewCell *)self backgroundColor];
    [(UICollectionView *)v8 setBackgroundColor:v9];

    [v7 addSubview:self->_collectionView];
    [(SUUIShelfCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SUUIShelfCollectionViewCell;
  [(SUUIShelfCollectionViewCell *)&v5 setSemanticContentAttribute:?];
  [(UICollectionView *)self->_collectionView setSemanticContentAttribute:a3];
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SUUIShelfCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setRendersWithPerspective:(BOOL)a3
{
  if (self->_rendersWithPerspective != a3)
  {
    self->_rendersWithPerspective = a3;
    [(SUUIShelfCollectionViewCell *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (void)setRendersWithParallax:(BOOL)a3
{
  if (self->_rendersWithParallax != a3)
  {
    self->_rendersWithParallax = a3;
    [(SUUIShelfCollectionViewCell *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 backgroundColor];
  [(SUUIShelfCollectionViewCell *)self setBackgroundColor:v5];

  v6.receiver = self;
  v6.super_class = SUUIShelfCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 applyLayoutAttributes:v4];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = SUUIShelfCollectionViewCell;
  [(SUUICollectionViewCell *)&v23 layoutSubviews];
  v3 = [(SUUIShelfCollectionViewCell *)self contentView];
  [v3 bounds];
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

- (void)setBackgroundColor:(id)a3
{
  collectionView = self->_collectionView;
  v5 = a3;
  [(UICollectionView *)collectionView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIShelfCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:v5];
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
@interface JTCollectionViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (id)invalidationContextForBoundsChange:(CGRect)change;
@end

@implementation JTCollectionViewFlowLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  if ([(UICollectionViewFlowLayout *)self sectionHeadersPinToVisibleBounds]|| [(UICollectionViewFlowLayout *)self sectionFootersPinToVisibleBounds])
  {
    v13.receiver = self;
    v13.super_class = JTCollectionViewFlowLayout;
    if ([(UICollectionViewFlowLayout *)&v13 shouldInvalidateLayoutForBoundsChange:x, y, width, height])
    {
      return 1;
    }
  }

  collectionView = [(JTCollectionViewFlowLayout *)self collectionView];
  [collectionView bounds];
  v8 = height != v11 || width != v10;

  return v8;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  v5.receiver = self;
  v5.super_class = JTCollectionViewFlowLayout;
  v3 = [(UICollectionViewFlowLayout *)&v5 invalidationContextForBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setInvalidateFlowLayoutDelegateMetrics:1];
  }

  return v3;
}

@end
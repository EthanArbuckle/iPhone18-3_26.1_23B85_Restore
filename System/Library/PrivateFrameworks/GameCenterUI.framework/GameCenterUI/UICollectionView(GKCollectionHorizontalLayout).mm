@interface UICollectionView(GKCollectionHorizontalLayout)
- (id)_gkHorizontalLayout;
@end

@implementation UICollectionView(GKCollectionHorizontalLayout)

- (id)_gkHorizontalLayout
{
  v1 = [a1 collectionViewLayout];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v1 = 0;
  }

  return v1;
}

@end
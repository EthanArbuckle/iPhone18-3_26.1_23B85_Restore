@interface UICollectionView(GKCollectionHorizontalLayout)
- (id)_gkHorizontalLayout;
@end

@implementation UICollectionView(GKCollectionHorizontalLayout)

- (id)_gkHorizontalLayout
{
  collectionViewLayout = [self collectionViewLayout];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    collectionViewLayout = 0;
  }

  return collectionViewLayout;
}

@end
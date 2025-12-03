@interface UICollectionView(GKCollectionFocusingLayout)
- (id)_gkFocusingLayout;
@end

@implementation UICollectionView(GKCollectionFocusingLayout)

- (id)_gkFocusingLayout
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
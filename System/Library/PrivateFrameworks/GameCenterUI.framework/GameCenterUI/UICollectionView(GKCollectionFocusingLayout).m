@interface UICollectionView(GKCollectionFocusingLayout)
- (id)_gkFocusingLayout;
@end

@implementation UICollectionView(GKCollectionFocusingLayout)

- (id)_gkFocusingLayout
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
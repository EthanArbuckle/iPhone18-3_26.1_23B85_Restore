@interface EditFavoritesCollectionViewCell
- (BOOL)axItemIsFavorited;
@end

@implementation EditFavoritesCollectionViewCell

- (BOOL)axItemIsFavorited
{
  v2 = self;
  v3 = sub_1B9FE9F60();

  return v3 & 1;
}

@end
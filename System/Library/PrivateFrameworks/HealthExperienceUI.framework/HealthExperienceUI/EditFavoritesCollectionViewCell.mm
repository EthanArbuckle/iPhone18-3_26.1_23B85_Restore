@interface EditFavoritesCollectionViewCell
- (BOOL)axItemIsFavorited;
@end

@implementation EditFavoritesCollectionViewCell

- (BOOL)axItemIsFavorited
{
  selfCopy = self;
  v3 = sub_1B9FE9F60();

  return v3 & 1;
}

@end
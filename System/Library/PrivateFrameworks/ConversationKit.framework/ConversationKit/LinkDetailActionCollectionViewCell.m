@interface LinkDetailActionCollectionViewCell
- (void)prepareForReuse;
@end

@implementation LinkDetailActionCollectionViewCell

- (void)prepareForReuse
{
  v2 = self;
  LinkDetailActionCollectionViewCell.prepareForReuse()();
}

@end
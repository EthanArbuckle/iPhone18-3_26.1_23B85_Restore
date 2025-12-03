@interface LinkDetailActionCollectionViewCell
- (void)prepareForReuse;
@end

@implementation LinkDetailActionCollectionViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  LinkDetailActionCollectionViewCell.prepareForReuse()();
}

@end
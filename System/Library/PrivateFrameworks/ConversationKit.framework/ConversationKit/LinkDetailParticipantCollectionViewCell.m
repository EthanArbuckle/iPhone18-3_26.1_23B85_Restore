@interface LinkDetailParticipantCollectionViewCell
- (void)prepareForReuse;
@end

@implementation LinkDetailParticipantCollectionViewCell

- (void)prepareForReuse
{
  v2 = self;
  LinkDetailParticipantCollectionViewCell.prepareForReuse()();
}

@end
@interface LinkDetailParticipantCollectionViewCell
- (void)prepareForReuse;
@end

@implementation LinkDetailParticipantCollectionViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  LinkDetailParticipantCollectionViewCell.prepareForReuse()();
}

@end
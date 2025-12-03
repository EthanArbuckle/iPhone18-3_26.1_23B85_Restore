@interface ParticipantGridView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ParticipantGridView

- (void)layoutSubviews
{
  selfCopy = self;
  ParticipantGridView.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  ParticipantGridView.traitCollectionDidChange(_:)(v9);
}

@end
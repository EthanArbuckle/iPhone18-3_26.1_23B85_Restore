@interface InCallControlsOpenMessagesCell
- (void)traitCollectionDidChange:(id)change;
@end

@implementation InCallControlsOpenMessagesCell

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  InCallControlsOpenMessagesCell.traitCollectionDidChange(_:)(v9);
}

@end
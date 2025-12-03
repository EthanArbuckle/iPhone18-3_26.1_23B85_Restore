@interface InCallControlsShareLinkCell
- (void)traitCollectionDidChange:(id)change;
@end

@implementation InCallControlsShareLinkCell

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  InCallControlsShareLinkCell.traitCollectionDidChange(_:)(v9);
}

@end
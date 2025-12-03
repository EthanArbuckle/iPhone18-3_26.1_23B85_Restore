@interface FeatureStatusPlatformFeedItemView
- (void)didSelectCell:(id)cell in:(id)in;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FeatureStatusPlatformFeedItemView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA0BFD14(change);
}

- (void)didSelectCell:(id)cell in:(id)in
{
  cellCopy = cell;
  inCopy = in;
  selfCopy = self;
  sub_1BA0C1E78();
}

@end
@interface EmptyStatePlatterView
- (void)traitCollectionDidChange:(id)change;
@end

@implementation EmptyStatePlatterView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E00A260(change);
}

@end
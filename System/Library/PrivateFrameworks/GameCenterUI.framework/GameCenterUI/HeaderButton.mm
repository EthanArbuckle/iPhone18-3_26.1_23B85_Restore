@interface HeaderButton
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HeaderButton

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E327EB4(change);
}

@end
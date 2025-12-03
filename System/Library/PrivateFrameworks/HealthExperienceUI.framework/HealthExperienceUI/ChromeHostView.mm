@interface ChromeHostView
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ChromeHostView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1B9F676E0(change);
}

@end
@interface GDAutonamingViewInner
- (id)objCPersonFor:(id)for;
- (void)_reset;
- (void)didUpdateUserFeedback;
@end

@implementation GDAutonamingViewInner

- (id)objCPersonFor:(id)for
{
  sub_1ABF23C04();
  selfCopy = self;
  v5 = sub_1ABB141A0();

  return v5;
}

- (void)didUpdateUserFeedback
{
  selfCopy = self;
  sub_1ABB144D8();
}

- (void)_reset
{
  selfCopy = self;
  AutonamingView._reset()();
}

@end
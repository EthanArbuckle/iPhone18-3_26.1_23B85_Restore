@interface GDAutonamingViewInner
- (id)objCPersonFor:(id)a3;
- (void)_reset;
- (void)didUpdateUserFeedback;
@end

@implementation GDAutonamingViewInner

- (id)objCPersonFor:(id)a3
{
  sub_1ABF23C04();
  v4 = self;
  v5 = sub_1ABB141A0();

  return v5;
}

- (void)didUpdateUserFeedback
{
  v2 = self;
  sub_1ABB144D8();
}

- (void)_reset
{
  v2 = self;
  AutonamingView._reset()();
}

@end
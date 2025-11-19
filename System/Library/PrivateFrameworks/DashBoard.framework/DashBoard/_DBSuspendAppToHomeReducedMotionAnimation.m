@interface _DBSuspendAppToHomeReducedMotionAnimation
- (void)startAnimationWithCompletion:(id)a3;
@end

@implementation _DBSuspendAppToHomeReducedMotionAnimation

- (void)startAnimationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_248260D2C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_248260850(v7, v6);
  sub_248167864(v7);
}

@end
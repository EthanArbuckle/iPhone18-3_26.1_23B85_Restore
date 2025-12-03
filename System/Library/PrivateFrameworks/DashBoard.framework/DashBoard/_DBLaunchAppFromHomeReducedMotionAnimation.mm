@interface _DBLaunchAppFromHomeReducedMotionAnimation
- (void)startAnimationWithCompletion:(id)completion;
@end

@implementation _DBLaunchAppFromHomeReducedMotionAnimation

- (void)startAnimationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  sub_248313AEC(v7, v6);
  sub_248167864(v7);
}

@end
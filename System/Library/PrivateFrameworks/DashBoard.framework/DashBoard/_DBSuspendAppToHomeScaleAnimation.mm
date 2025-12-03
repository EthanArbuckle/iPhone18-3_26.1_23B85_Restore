@interface _DBSuspendAppToHomeScaleAnimation
- (void)startAnimationWithCompletion:(id)completion;
@end

@implementation _DBSuspendAppToHomeScaleAnimation

- (void)startAnimationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_248261494;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_2482601C4(v7, v6);
  sub_248167864(v7);
}

@end
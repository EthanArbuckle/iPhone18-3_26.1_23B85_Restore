@interface _DBAppSwitchDosidoAnimation
- (void)startAnimationWithCompletion:(id)completion;
@end

@implementation _DBAppSwitchDosidoAnimation

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
  sub_24833FA2C(v7, v6);
  sub_248167864(v7);
}

@end
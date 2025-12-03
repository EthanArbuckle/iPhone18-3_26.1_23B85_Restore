@interface SFTransitionCoordinatorBasicAnimation
- (void)initWithAnimations:(void *)animations;
@end

@implementation SFTransitionCoordinatorBasicAnimation

- (void)initWithAnimations:(void *)animations
{
  if (!animations)
  {
    return 0;
  }

  v7.receiver = animations;
  v7.super_class = SFTransitionCoordinatorBasicAnimation;
  v2 = a2;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = _Block_copy(v2);

  v5 = v3[1];
  v3[1] = v4;

  return v3;
}

@end
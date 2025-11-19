@interface SFTransitionCoordinatorRetargetableAnimation
- (void)invokeInContext:(id)a3;
@end

@implementation SFTransitionCoordinatorRetargetableAnimation

- (void)invokeInContext:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69DD250] _isInRetargetableAnimationBlock])
  {
    v6.receiver = self;
    v6.super_class = SFTransitionCoordinatorRetargetableAnimation;
    [(SFTransitionCoordinatorBasicAnimation *)&v6 invokeInContext:v4];
  }

  else
  {
    v5 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__SFTransitionCoordinatorRetargetableAnimation_invokeInContext___block_invoke;
    v7[3] = &unk_1E721B400;
    v8 = v4;
    v9 = self;
    [v5 _performWithoutRetargetingAnimations:v7];
  }
}

id __64__SFTransitionCoordinatorRetargetableAnimation_invokeInContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = SFTransitionCoordinatorRetargetableAnimation;
  return objc_msgSendSuper2(&v3, sel_invokeInContext_, v1);
}

@end
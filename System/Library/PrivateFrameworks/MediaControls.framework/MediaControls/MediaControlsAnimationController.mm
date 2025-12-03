@interface MediaControlsAnimationController
- (id)initForPresenting:(BOOL)presenting;
- (void)animateTransition:(id)transition;
@end

@implementation MediaControlsAnimationController

- (id)initForPresenting:(BOOL)presenting
{
  v5.receiver = self;
  v5.super_class = MediaControlsAnimationController;
  result = [(MediaControlsAnimationController *)&v5 init];
  if (result)
  {
    *(result + 8) = presenting;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = transitionCopy;
  v6 = *MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 32);
  v23 = *(MEMORY[0x1E695EFD0] + 16);
  v24 = v7;
  *&v21.a = v6;
  *&v21.c = v23;
  *&v21.tx = v7;
  v22 = v6;
  if (self->_presenting)
  {
    v8 = [transitionCopy viewForKey:*MEMORY[0x1E69DE780]];
    containerView = [v5 containerView];
    [containerView addSubview:v8];

    v10 = 1.0;
    v11 = 0.0;
    v12 = &v22;
  }

  else
  {
    v8 = [transitionCopy viewForKey:*MEMORY[0x1E69DE770]];
    v10 = 0.0;
    v11 = 1.0;
    v12 = &v21;
  }

  CGAffineTransformMakeScale(v12, 1.92, 1.92);
  if ([v5 isAnimated])
  {
    [v8 setAlpha:v11];
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    [v8 setTransform:v20];
    standardSpringAnimator = [MEMORY[0x1E6970500] standardSpringAnimator];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__MediaControlsAnimationController_animateTransition___block_invoke;
    v16[3] = &unk_1E76643C8;
    v17 = v8;
    v18 = v10;
    v19 = v21;
    [standardSpringAnimator addAnimations:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__MediaControlsAnimationController_animateTransition___block_invoke_2;
    v14[3] = &unk_1E76643F0;
    v15 = v5;
    [standardSpringAnimator addCompletion:v14];
    [standardSpringAnimator startAnimation];
  }

  else
  {
    [v5 completeTransition:1];
  }
}

uint64_t __54__MediaControlsAnimationController_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 64);
  v4[0] = *(a1 + 48);
  v4[1] = v2;
  v4[2] = *(a1 + 80);
  return [*(a1 + 32) setTransform:v4];
}

uint64_t __54__MediaControlsAnimationController_animateTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 transitionWasCancelled] ^ 1;
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return [v3 completeTransition:v5];
}

@end
@interface CKBrowserFullscreenRevealAnimationController
- (CKBrowserFullscreenRevealAnimationController)initWithDirection:(BOOL)direction;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation CKBrowserFullscreenRevealAnimationController

- (CKBrowserFullscreenRevealAnimationController)initWithDirection:(BOOL)direction
{
  directionCopy = direction;
  v13.receiver = self;
  v13.super_class = CKBrowserFullscreenRevealAnimationController;
  v4 = [(CKBrowserFullscreenRevealAnimationController *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_presenting = directionCopy;
    v6 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
    v7 = [CKBrowserFullscreenCubicSpringTimingParameters alloc];
    if (directionCopy)
    {
      v8 = 100.0;
    }

    else
    {
      v8 = 39.0;
    }

    v9 = [(CKBrowserFullscreenCubicSpringTimingParameters *)v7 initWithMass:2.0 stiffness:300.0 damping:v8 initialVelocity:0.0, 0.0];
    [(CKBrowserFullscreenCubicSpringTimingParameters *)v9 setSpringCubicTimingParameters:v6];
    v10 = [(UIViewPropertyAnimator *)[CKBrowserFullscreenCubicSpringPropertyAnimator alloc] initWithDuration:v9 timingParameters:0.0];
    ascentDescentAnimator = v5->_ascentDescentAnimator;
    v5->_ascentDescentAnimator = &v10->super;

    [(UIViewPropertyAnimator *)v5->_ascentDescentAnimator setInterruptible:0];
  }

  return v5;
}

- (double)transitionDuration:(id)duration
{
  ascentDescentAnimator = [(CKBrowserFullscreenRevealAnimationController *)self ascentDescentAnimator];
  [ascentDescentAnimator duration];
  v5 = v4;

  return v5;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  isPresenting = [(CKBrowserFullscreenRevealAnimationController *)self isPresenting];
  v6 = MEMORY[0x1E69DE778];
  if (!isPresenting)
  {
    v6 = MEMORY[0x1E69DE768];
  }

  v7 = [transitionCopy viewControllerForKey:*v6];
  isPresenting2 = [(CKBrowserFullscreenRevealAnimationController *)self isPresenting];
  v9 = MEMORY[0x1E69DE780];
  if (!isPresenting2)
  {
    v9 = MEMORY[0x1E69DE770];
  }

  v10 = [transitionCopy viewForKey:*v9];
  containerView = [transitionCopy containerView];
  [transitionCopy finalFrameForViewController:v7];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([(CKBrowserFullscreenRevealAnimationController *)self isPresenting])
  {
    [containerView addSubview:v10];
    [v10 setFrame:{v13, v15, v17, v19}];
    [v10 layoutIfNeeded];
    [containerView bounds];
    Height = CGRectGetHeight(v48);
    v49.origin.x = v13;
    v49.origin.y = v15;
    v49.size.width = v17;
    v49.size.height = v19;
    MinY = CGRectGetMinY(v49);
    CGAffineTransformMakeTranslation(&v47, 0.0, Height - MinY);
    v46 = v47;
    [v10 setTransform:&v46];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__CKBrowserFullscreenRevealAnimationController_animateTransition___block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  v22 = v7;
  v45 = v22;
  v23 = _Block_copy(aBlock);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __66__CKBrowserFullscreenRevealAnimationController_animateTransition___block_invoke_2;
  v37[3] = &unk_1E72F3A20;
  v38 = v22;
  v39 = containerView;
  v40 = v13;
  v41 = v15;
  v42 = v17;
  v43 = v19;
  v24 = containerView;
  v25 = v22;
  v26 = _Block_copy(v37);
  ascentDescentAnimator = [(CKBrowserFullscreenRevealAnimationController *)self ascentDescentAnimator];
  if ([(CKBrowserFullscreenRevealAnimationController *)self isPresenting])
  {
    v28 = v23;
  }

  else
  {
    v28 = v26;
  }

  [ascentDescentAnimator addAnimations:v28];

  ascentDescentAnimator2 = [(CKBrowserFullscreenRevealAnimationController *)self ascentDescentAnimator];
  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __66__CKBrowserFullscreenRevealAnimationController_animateTransition___block_invoke_3;
  v35 = &unk_1E72ED838;
  v36 = transitionCopy;
  v30 = transitionCopy;
  [ascentDescentAnimator2 addCompletion:&v32];

  v31 = [(CKBrowserFullscreenRevealAnimationController *)self ascentDescentAnimator:v32];
  [v31 startAnimation];
}

void __66__CKBrowserFullscreenRevealAnimationController_animateTransition___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

void __66__CKBrowserFullscreenRevealAnimationController_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 40) bounds];
  Height = CGRectGetHeight(v7);
  MinY = CGRectGetMinY(*(a1 + 48));
  CGAffineTransformMakeTranslation(&v6, 0.0, Height - MinY);
  v4 = [*(a1 + 32) view];
  v5 = v6;
  [v4 setTransform:&v5];
}

uint64_t __66__CKBrowserFullscreenRevealAnimationController_animateTransition___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) transitionWasCancelled] ^ 1;
  }

  v4 = *(a1 + 32);

  return [v4 completeTransition:v3];
}

@end
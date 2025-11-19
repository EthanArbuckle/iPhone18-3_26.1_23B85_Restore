@interface CCUIContentModuleDetailAnimationController
- (UIViewPropertyAnimator)propertyAnimator;
- (id)_contentModuleContainingViewController;
- (id)_newPropertyAnimator;
- (id)initForPresenting:(BOOL)a3 anchoringViewController:(id)a4;
- (void)animateTransition:(id)a3;
- (void)performTransition:(id)a3;
@end

@implementation CCUIContentModuleDetailAnimationController

- (id)initForPresenting:(BOOL)a3 anchoringViewController:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CCUIContentModuleDetailAnimationController;
  v8 = [(CCUIContentModuleDetailAnimationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_presenting = a3;
    objc_storeStrong(&v8->_anchoringViewController, a4);
  }

  return v9;
}

- (UIViewPropertyAnimator)propertyAnimator
{
  propertyAnimator = self->_propertyAnimator;
  if (!propertyAnimator)
  {
    v4 = [(CCUIContentModuleDetailAnimationController *)self _newPropertyAnimator];
    v5 = self->_propertyAnimator;
    self->_propertyAnimator = v4;

    propertyAnimator = self->_propertyAnimator;
  }

  return propertyAnimator;
}

- (void)performTransition:(id)a3
{
  v4 = a3;
  v5 = [(CCUIContentModuleDetailAnimationController *)self _contentModuleContainingViewController];
  v6 = MEMORY[0x1E69DE778];
  if (!self->_presenting)
  {
    v6 = MEMORY[0x1E69DE768];
  }

  v7 = [v4 viewControllerForKey:*v6];
  v8 = v7;
  if (self->_presenting)
  {
    [v5 contentContainerView];
  }

  else
  {
    [v7 view];
  }
  v9 = ;
  if (self->_presenting)
  {
    [v8 view];
  }

  else
  {
    [v5 contentContainerView];
  }
  v10 = ;
  v11 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__CCUIContentModuleDetailAnimationController_performTransition___block_invoke;
  v20[3] = &unk_1E83EA450;
  v12 = v10;
  v21 = v12;
  v13 = v9;
  v22 = v13;
  [v11 performWithoutAnimation:v20];
  if (([v5 isExpanded] & 1) == 0)
  {
    if (self->_presenting)
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 willPresentViewController:v8];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v5 willDismissViewController:v8];
    }
  }

  [v12 setAlpha:1.0];
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  *&v19.a = *MEMORY[0x1E695EFD0];
  *&v19.c = v14;
  *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v12 setTransform:&v19];
  [v13 setAlpha:0.0];
  CGAffineTransformMakeScale(&v19, 0.8, 0.8);
  [v13 setTransform:&v19];
  if (self->_presenting)
  {
    v15 = [(CCUIContentModuleDetailAnimationController *)self propertyAnimator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64__CCUIContentModuleDetailAnimationController_performTransition___block_invoke_2;
    v17[3] = &unk_1E83EA5F8;
    v18 = v13;
    [v15 addCompletion:v17];

    v16 = v18;
  }

  else
  {
    v16 = [v4 viewForKey:*MEMORY[0x1E69DE780]];
    [v16 removeFromSuperview];
  }
}

uint64_t __64__CCUIContentModuleDetailAnimationController_performTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v6, 0.8, 0.8);
  [v2 setTransform:&v6];
  [*(a1 + 40) setAlpha:1.0];
  v3 = *(a1 + 40);
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&v6.a = *MEMORY[0x1E695EFD0];
  *&v6.c = v4;
  *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  return [v3 setTransform:&v6];
}

uint64_t __64__CCUIContentModuleDetailAnimationController_performTransition___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  if ([v4 isAnimated])
  {
    v5 = [(CCUIContentModuleDetailAnimationController *)self propertyAnimator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__CCUIContentModuleDetailAnimationController_animateTransition___block_invoke;
    v9[3] = &unk_1E83EA450;
    v9[4] = self;
    v6 = v4;
    v10 = v6;
    [v5 addAnimations:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__CCUIContentModuleDetailAnimationController_animateTransition___block_invoke_2;
    v7[3] = &unk_1E83EA5F8;
    v8 = v6;
    [v5 addCompletion:v7];
    [v5 startAnimation];
  }

  else
  {
    [v4 completeTransition:1];
  }
}

- (id)_newPropertyAnimator
{
  v2 = objc_alloc(MEMORY[0x1E69DD278]);

  return [v2 initWithDuration:0 dampingRatio:0.5 animations:0.65];
}

- (id)_contentModuleContainingViewController
{
  v2 = self->_anchoringViewController;
  if (v2)
  {
    do
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIViewController *)v2 definesContentModuleContainer]& 1) != 0)
      {
        break;
      }

      v3 = [(UIViewController *)v2 parentViewController];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

@end
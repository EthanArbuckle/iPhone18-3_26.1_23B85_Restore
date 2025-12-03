@interface _CRKCardViewControllerTransitionAnimator
+ (id)sectionShuffleTransitionAnimator;
- (_CRKCardViewControllerTransitionAnimatorDelegate)delegate;
- (void)_prepareAnimationFromCardViewController:(id)controller toCardViewController:(id)viewController withAnimationCoordinator:(id)coordinator;
- (void)transitionFromCardViewController:(id)controller toCardViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
@end

@implementation _CRKCardViewControllerTransitionAnimator

- (void)transitionFromCardViewController:(id)controller toCardViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  completionCopy = completion;
  parentViewController = [controllerCopy parentViewController];
  v14 = parentViewController;
  if (parentViewController)
  {
    view = [parentViewController view];
    view2 = [controllerCopy view];
    view3 = [viewControllerCopy view];
    v18 = objc_alloc_init(_CRKCardViewControllerTransitionCoordinator);
    v30 = animatedCopy;
    [(_CRKCardViewControllerTransitionCoordinator *)v18 setAnimated:animatedCopy];
    [(_CRKCardViewControllerTransitionCoordinator *)v18 setContainerView:view];
    [(_CRKCardViewControllerTransitionAnimator *)self _prepareAnimationFromCardViewController:controllerCopy toCardViewController:viewControllerCopy withAnimationCoordinator:v18];
    initialSetup = [(_CRKCardViewControllerTransitionCoordinator *)v18 initialSetup];
    v20 = initialSetup;
    if (initialSetup)
    {
      (*(initialSetup + 16))(initialSetup);
    }

    [(_CRKCardViewControllerTransitionCoordinator *)v18 setInitialSetup:0];
    [v14 addChildViewController:viewControllerCopy];
    v31 = view3;
    v32 = view;
    [view addSubview:view3];
    [viewControllerCopy didMoveToParentViewController:v14];
    finalSetup = [(_CRKCardViewControllerTransitionCoordinator *)v18 finalSetup];
    v22 = finalSetup;
    if (finalSetup)
    {
      (*(finalSetup + 16))(finalSetup);
    }

    [(_CRKCardViewControllerTransitionCoordinator *)v18 setFinalSetup:0];
    delegate = [(_CRKCardViewControllerTransitionAnimator *)self delegate];
    [delegate transitionAnimator:self willTransitionFromCardViewController:controllerCopy toCardViewController:viewControllerCopy withAnimationCoordinator:v18];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __118___CRKCardViewControllerTransitionAnimator_transitionFromCardViewController_toCardViewController_animated_completion___block_invoke;
    v34[3] = &unk_278DA3140;
    v24 = v18;
    v35 = v24;
    v25 = controllerCopy;
    v36 = v25;
    v37 = view2;
    v33 = completionCopy;
    v38 = completionCopy;
    v26 = view2;
    v27 = MEMORY[0x245D2D520](v34);
    animations = [(_CRKCardViewControllerTransitionCoordinator *)v24 animations];
    v29 = animations;
    if (v30)
    {
      [v14 transitionFromViewController:v25 toViewController:viewControllerCopy duration:129 options:animations animations:v27 completion:0.2];
    }

    else
    {
      if (animations)
      {
        (*(animations + 16))(animations);
      }

      v27[2](v27, 1);
    }

    completionCopy = v33;
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_prepareAnimationFromCardViewController:(id)controller toCardViewController:(id)viewController withAnimationCoordinator:(id)coordinator
{
  viewControllerCopy = viewController;
  coordinatorCopy = coordinator;
  view = [controller view];
  view2 = [viewControllerCopy view];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke;
  v27[3] = &unk_278DA3168;
  v11 = view2;
  v28 = v11;
  [coordinatorCopy setInitialSetup:v27];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke_2;
  v23[3] = &unk_278DA3190;
  v12 = view;
  v24 = v12;
  v13 = v11;
  v25 = v13;
  v26 = viewControllerCopy;
  v14 = viewControllerCopy;
  [coordinatorCopy setFinalSetup:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke_3;
  v20[3] = &unk_278DA31B8;
  v15 = v13;
  v21 = v15;
  v22 = v12;
  v16 = v12;
  [coordinatorCopy setAnimations:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke_4;
  v18[3] = &unk_278DA31E0;
  v19 = v15;
  v17 = v15;
  [coordinatorCopy setCompletion:v18];
}

- (_CRKCardViewControllerTransitionAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)sectionShuffleTransitionAnimator
{
  v2 = objc_alloc_init(_CRKSectionShuffleTransitionAnimator);

  return v2;
}

@end
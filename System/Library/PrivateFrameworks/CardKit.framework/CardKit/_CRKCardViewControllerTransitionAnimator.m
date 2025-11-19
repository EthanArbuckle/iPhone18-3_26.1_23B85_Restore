@interface _CRKCardViewControllerTransitionAnimator
+ (id)sectionShuffleTransitionAnimator;
- (_CRKCardViewControllerTransitionAnimatorDelegate)delegate;
- (void)_prepareAnimationFromCardViewController:(id)a3 toCardViewController:(id)a4 withAnimationCoordinator:(id)a5;
- (void)transitionFromCardViewController:(id)a3 toCardViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
@end

@implementation _CRKCardViewControllerTransitionAnimator

- (void)transitionFromCardViewController:(id)a3 toCardViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 parentViewController];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 view];
    v16 = [v10 view];
    v17 = [v11 view];
    v18 = objc_alloc_init(_CRKCardViewControllerTransitionCoordinator);
    v30 = v7;
    [(_CRKCardViewControllerTransitionCoordinator *)v18 setAnimated:v7];
    [(_CRKCardViewControllerTransitionCoordinator *)v18 setContainerView:v15];
    [(_CRKCardViewControllerTransitionAnimator *)self _prepareAnimationFromCardViewController:v10 toCardViewController:v11 withAnimationCoordinator:v18];
    v19 = [(_CRKCardViewControllerTransitionCoordinator *)v18 initialSetup];
    v20 = v19;
    if (v19)
    {
      (*(v19 + 16))(v19);
    }

    [(_CRKCardViewControllerTransitionCoordinator *)v18 setInitialSetup:0];
    [v14 addChildViewController:v11];
    v31 = v17;
    v32 = v15;
    [v15 addSubview:v17];
    [v11 didMoveToParentViewController:v14];
    v21 = [(_CRKCardViewControllerTransitionCoordinator *)v18 finalSetup];
    v22 = v21;
    if (v21)
    {
      (*(v21 + 16))(v21);
    }

    [(_CRKCardViewControllerTransitionCoordinator *)v18 setFinalSetup:0];
    v23 = [(_CRKCardViewControllerTransitionAnimator *)self delegate];
    [v23 transitionAnimator:self willTransitionFromCardViewController:v10 toCardViewController:v11 withAnimationCoordinator:v18];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __118___CRKCardViewControllerTransitionAnimator_transitionFromCardViewController_toCardViewController_animated_completion___block_invoke;
    v34[3] = &unk_278DA3140;
    v24 = v18;
    v35 = v24;
    v25 = v10;
    v36 = v25;
    v37 = v16;
    v33 = v12;
    v38 = v12;
    v26 = v16;
    v27 = MEMORY[0x245D2D520](v34);
    v28 = [(_CRKCardViewControllerTransitionCoordinator *)v24 animations];
    v29 = v28;
    if (v30)
    {
      [v14 transitionFromViewController:v25 toViewController:v11 duration:129 options:v28 animations:v27 completion:0.2];
    }

    else
    {
      if (v28)
      {
        (*(v28 + 16))(v28);
      }

      v27[2](v27, 1);
    }

    v12 = v33;
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0);
  }
}

- (void)_prepareAnimationFromCardViewController:(id)a3 toCardViewController:(id)a4 withAnimationCoordinator:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 view];
  v10 = [v7 view];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke;
  v27[3] = &unk_278DA3168;
  v11 = v10;
  v28 = v11;
  [v8 setInitialSetup:v27];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke_2;
  v23[3] = &unk_278DA3190;
  v12 = v9;
  v24 = v12;
  v13 = v11;
  v25 = v13;
  v26 = v7;
  v14 = v7;
  [v8 setFinalSetup:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke_3;
  v20[3] = &unk_278DA31B8;
  v15 = v13;
  v21 = v15;
  v22 = v12;
  v16 = v12;
  [v8 setAnimations:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke_4;
  v18[3] = &unk_278DA31E0;
  v19 = v15;
  v17 = v15;
  [v8 setCompletion:v18];
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
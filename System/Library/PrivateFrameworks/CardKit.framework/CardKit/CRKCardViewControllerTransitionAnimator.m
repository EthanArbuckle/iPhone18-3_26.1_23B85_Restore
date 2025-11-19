@interface CRKCardViewControllerTransitionAnimator
@end

@implementation CRKCardViewControllerTransitionAnimator

void __118___CRKCardViewControllerTransitionAnimator_transitionFromCardViewController_toCardViewController_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAnimations:0];
  [*(a1 + 40) removeFromParentViewController];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 40) didMoveToParentViewController:0];
  v4 = [*(a1 + 32) completion];
  v6 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  [*(a1 + 32) setCompletion:0];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }
}

void __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setOpacity:0.0];
}

uint64_t __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) frame];
  x = v9.origin.x;
  y = v9.origin.y;
  Width = CGRectGetWidth(v9);
  v5 = *(a1 + 40);
  [*(a1 + 48) contentHeightForWidth:?];

  return [v5 setFrame:{x, y, Width, v6}];
}

void __130___CRKCardViewControllerTransitionAnimator__prepareAnimationFromCardViewController_toCardViewController_withAnimationCoordinator___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  LODWORD(v3) = 1.0;
  [v2 setOpacity:v3];

  v4 = [*(a1 + 40) layer];
  [v4 setOpacity:0.0];
}

@end
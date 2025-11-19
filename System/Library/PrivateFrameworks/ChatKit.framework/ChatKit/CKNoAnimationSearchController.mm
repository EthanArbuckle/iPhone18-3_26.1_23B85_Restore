@interface CKNoAnimationSearchController
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
@end

@implementation CKNoAnimationSearchController

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = [[CKNoAnimationSearchFieldAnimator alloc] initWithAppearing:1];

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [[CKNoAnimationSearchFieldAnimator alloc] initWithAppearing:0];

  return v3;
}

@end
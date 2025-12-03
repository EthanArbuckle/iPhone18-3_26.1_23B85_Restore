@interface CKNoAnimationSearchController
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
@end

@implementation CKNoAnimationSearchController

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = [[CKNoAnimationSearchFieldAnimator alloc] initWithAppearing:1];

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = [[CKNoAnimationSearchFieldAnimator alloc] initWithAppearing:0];

  return v3;
}

@end
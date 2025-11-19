@interface CCUIContentModuleDetailTransitioningDelegate
- (CCUIContentModuleDetailTransitioningDelegate)initWithAnchoringViewController:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation CCUIContentModuleDetailTransitioningDelegate

- (CCUIContentModuleDetailTransitioningDelegate)initWithAnchoringViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CCUIContentModuleDetailTransitioningDelegate;
  v6 = [(CCUIContentModuleDetailTransitioningDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_anchoringViewController, a3);
  }

  return v7;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[CCUIContentModuleDetailPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v7 anchoringViewController:self->_anchoringViewController];

  return v9;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = [[CCUIContentModuleDetailAnimationController alloc] initForPresenting:1 anchoringViewController:self->_anchoringViewController];

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [[CCUIContentModuleDetailAnimationController alloc] initForPresenting:0 anchoringViewController:self->_anchoringViewController];

  return v3;
}

@end
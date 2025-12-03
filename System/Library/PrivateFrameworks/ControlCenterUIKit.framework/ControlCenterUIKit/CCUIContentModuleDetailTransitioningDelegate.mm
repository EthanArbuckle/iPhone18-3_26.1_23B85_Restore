@interface CCUIContentModuleDetailTransitioningDelegate
- (CCUIContentModuleDetailTransitioningDelegate)initWithAnchoringViewController:(id)controller;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation CCUIContentModuleDetailTransitioningDelegate

- (CCUIContentModuleDetailTransitioningDelegate)initWithAnchoringViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CCUIContentModuleDetailTransitioningDelegate;
  v6 = [(CCUIContentModuleDetailTransitioningDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_anchoringViewController, controller);
  }

  return v7;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [[CCUIContentModuleDetailPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy anchoringViewController:self->_anchoringViewController];

  return v9;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = [[CCUIContentModuleDetailAnimationController alloc] initForPresenting:1 anchoringViewController:self->_anchoringViewController];

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = [[CCUIContentModuleDetailAnimationController alloc] initForPresenting:0 anchoringViewController:self->_anchoringViewController];

  return v3;
}

@end
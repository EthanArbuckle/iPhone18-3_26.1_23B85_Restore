@interface MediaControlsTransitioningDelegate
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation MediaControlsTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [(UIPreviewPresentationController *)[MediaControlsPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = [[MediaControlsAnimationController alloc] initForPresenting:1];

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = [[MediaControlsAnimationController alloc] initForPresenting:0];

  return v3;
}

@end
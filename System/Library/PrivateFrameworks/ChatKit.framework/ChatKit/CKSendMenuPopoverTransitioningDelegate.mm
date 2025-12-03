@interface CKSendMenuPopoverTransitioningDelegate
- (CKSendMenuPopoverTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation CKSendMenuPopoverTransitioningDelegate

- (CKSendMenuPopoverTransitioningDelegate)init
{
  v8.receiver = self;
  v8.super_class = CKSendMenuPopoverTransitioningDelegate;
  v2 = [(CKSendMenuPopoverTransitioningDelegate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    presentationController = v2->_presentationController;
    v2->_presentationController = 0;

    v5 = objc_opt_new();
    configuration = v3->_configuration;
    v3->_configuration = v5;
  }

  return v3;
}

- (id)animationControllerForDismissedController:(id)controller
{
  if (!self->_presentationController)
  {
    [(CKSendMenuPopoverTransitioningDelegate *)a2 animationControllerForDismissedController:?];
  }

  v4 = [[CKSendMenuPopoverAnimationController alloc] initWithConfiguration:self->_configuration presenting:0];

  return v4;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  if (!self->_presentationController)
  {
    [CKSendMenuPopoverTransitioningDelegate animationControllerForPresentedController:a2 presentingController:self sourceController:?];
  }

  v6 = [[CKSendMenuPopoverAnimationController alloc] initWithConfiguration:self->_configuration presenting:1];

  return v6;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  presentationController = self->_presentationController;
  if (!presentationController)
  {
    viewControllerCopy = viewController;
    controllerCopy = controller;
    v10 = [[CKSendMenuPopoverPresentationController alloc] initWithConfiguration:self->_configuration popoverViewController:controllerCopy presentingViewController:viewControllerCopy];

    v11 = self->_presentationController;
    self->_presentationController = v10;

    presentationController = self->_presentationController;
  }

  return presentationController;
}

- (void)animationControllerForDismissedController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKSendMenuPopoverTransitioningDelegate.m" lineNumber:46 description:@"presentationController required – programmer error."];
}

- (void)animationControllerForPresentedController:(uint64_t)a1 presentingController:(uint64_t)a2 sourceController:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKSendMenuPopoverTransitioningDelegate.m" lineNumber:60 description:@"presentationController required – programmer error."];
}

@end
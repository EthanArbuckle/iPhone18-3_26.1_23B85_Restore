@interface RoutePickerTransitioningDelegate
- (_TtC13MediaControls32RoutePickerTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation RoutePickerTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  selfCopy = self;
  v12 = sub_1A225D1D4(controllerCopy, viewController);

  return v12;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  type metadata accessor for RoutePickerPresentationAnimationController();
  v6 = sub_1A22C45DC(0, controller);

  return v6;
}

- (id)animationControllerForDismissedController:(id)controller
{
  type metadata accessor for RoutePickerPresentationAnimationController();
  v4 = sub_1A22C45DC(1, controller);

  return v4;
}

- (_TtC13MediaControls32RoutePickerTransitioningDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
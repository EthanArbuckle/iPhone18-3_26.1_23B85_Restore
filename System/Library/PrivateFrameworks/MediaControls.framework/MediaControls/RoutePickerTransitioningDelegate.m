@interface RoutePickerTransitioningDelegate
- (_TtC13MediaControls32RoutePickerTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation RoutePickerTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1A225D1D4(v8, a4);

  return v12;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  type metadata accessor for RoutePickerPresentationAnimationController();
  v6 = sub_1A22C45DC(0, a3);

  return v6;
}

- (id)animationControllerForDismissedController:(id)a3
{
  type metadata accessor for RoutePickerPresentationAnimationController();
  v4 = sub_1A22C45DC(1, a3);

  return v4;
}

- (_TtC13MediaControls32RoutePickerTransitioningDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
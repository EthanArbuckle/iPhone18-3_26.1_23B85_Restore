@interface RoutePickerPadPresentationController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC13MediaControls36RoutePickerPadPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)backgroundTapHandler;
- (void)containerViewWillLayoutSubviews;
- (void)presentationTransitionWillBegin;
@end

@implementation RoutePickerPadPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
  v3 = sub_1A2258868();
  v5 = v4;
  v7 = v6;

  v8 = 0.0;
  v9 = v3;
  v10 = v5;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (void)containerViewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RoutePickerPadPresentationController();
  v2 = v5.receiver;
  [(RoutePickerPadPresentationController *)&v5 containerViewWillLayoutSubviews];
  v3 = [v2 presentedView];
  if (v3)
  {
    v4 = v3;
    [v2 frameOfPresentedViewInContainerView];
    [v4 setFrame_];
  }
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_1A2258CE4();
}

- (void)backgroundTapHandler
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x68);
  v5 = self;
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    v3();

    sub_1A210F5C0(v4);
  }

  else
  {
  }
}

- (_TtC13MediaControls36RoutePickerPadPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v7 = (&self->super.super.isa + OBJC_IVAR____TtC13MediaControls36RoutePickerPadPresentationController_dismissHandler);
  v8 = type metadata accessor for RoutePickerPadPresentationController();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(RoutePickerPadPresentationController *)&v10 initWithPresentedViewController:a3 presentingViewController:a4];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(RoutePickerPadPresentationController *)v5 containerView];
  if (v6)
  {
    v7 = v6;
    [v4 locationInView_];
    v9 = v8;
    v11 = v10;
    [(RoutePickerPadPresentationController *)v5 frameOfPresentedViewInContainerView];
    v14.x = v9;
    v14.y = v11;
    v12 = CGRectContainsPoint(v15, v14);

    return !v12;
  }

  else
  {

    return 0;
  }
}

@end
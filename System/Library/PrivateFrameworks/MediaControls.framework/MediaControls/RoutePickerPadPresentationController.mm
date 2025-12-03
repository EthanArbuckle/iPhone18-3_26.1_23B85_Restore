@interface RoutePickerPadPresentationController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC13MediaControls36RoutePickerPadPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)backgroundTapHandler;
- (void)containerViewWillLayoutSubviews;
- (void)presentationTransitionWillBegin;
@end

@implementation RoutePickerPadPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
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
  presentedView = [v2 presentedView];
  if (presentedView)
  {
    v4 = presentedView;
    [v2 frameOfPresentedViewInContainerView];
    [v4 setFrame_];
  }
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_1A2258CE4();
}

- (void)backgroundTapHandler
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x68);
  selfCopy = self;
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

- (_TtC13MediaControls36RoutePickerPadPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v7 = (&self->super.super.isa + OBJC_IVAR____TtC13MediaControls36RoutePickerPadPresentationController_dismissHandler);
  v8 = type metadata accessor for RoutePickerPadPresentationController();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(RoutePickerPadPresentationController *)&v10 initWithPresentedViewController:controller presentingViewController:viewController];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  containerView = [(RoutePickerPadPresentationController *)selfCopy containerView];
  if (containerView)
  {
    v7 = containerView;
    [beginCopy locationInView_];
    v9 = v8;
    v11 = v10;
    [(RoutePickerPadPresentationController *)selfCopy frameOfPresentedViewInContainerView];
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
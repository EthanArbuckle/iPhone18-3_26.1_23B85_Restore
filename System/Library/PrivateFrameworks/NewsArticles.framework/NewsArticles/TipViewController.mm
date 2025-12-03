@interface TipViewController
- (_TtC12NewsArticles17TipViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles17TipViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC12NewsArticles17TipViewController)initWithRequest:(id)request;
- (_TtC12NewsArticles17TipViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didLoadDialogRequest:(id)request;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size;
- (void)messageViewControllerDidDismiss:(id)dismiss;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TipViewController

- (_TtC12NewsArticles17TipViewController)initWithCoder:(id)coder
{
  sub_1D7D2832C();
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(AMSUIBaseMessageViewController *)&v6 viewDidLoad];
  sub_1D7A2F244(0, &qword_1EE0BE900, sub_1D79F3CAC, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D3B4D0;
  v4 = sub_1D7D2CA0C();
  v5 = MEMORY[0x1E69DC2B0];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_1D7D30DCC();
  swift_unknownObjectRelease();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TipViewController *)&v5 viewIsAppearing:appearingCopy];
  sub_1D7A2CFF0();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  TipViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  TipViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  sub_1D7992EFC(0, &qword_1EC9E2780);
  sub_1D7A2F2D4();
  v6 = sub_1D7D309AC();
  eventCopy = event;
  selfCopy = self;
  TipViewController.pressesBegan(_:with:)(v6, event);
}

- (_TtC12NewsArticles17TipViewController)initWithRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles17TipViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles17TipViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  TipViewController.messageViewController(_:didSelectActionWith:)(controllerCopy, resultCopy);
}

- (void)messageViewController:(id)controller didLoadDialogRequest:(id)request
{
  controllerCopy = controller;
  requestCopy = request;
  selfCopy = self;
  _s12NewsArticles17TipViewControllerC07messagedE0_7didLoadySo012AMSUIMessagedE0_So06UIViewE0CXc_So16AMSDialogRequestCtF_0(controllerCopy, requestCopy);
}

- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size
{
  controllerCopy = controller;
  selfCopy = self;
  _s12NewsArticles17TipViewControllerC07messagedE0_9didUpdateySo012AMSUIMessagedE0_So06UIViewE0CXc_So6CGSizeVtF_0();
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  _s12NewsArticles17TipViewControllerC07messagedE0_16didFailWithErrorySo012AMSUIMessagedE0_So06UIViewE0CXc_s0J0_pSgtF_0(controllerCopy, error);
}

- (void)messageViewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  _s12NewsArticles17TipViewControllerC07messagedE10DidDismissyySo012AMSUIMessagedE0_So06UIViewE0CXcF_0();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v4 = type metadata accessor for TipViewImpression(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(&self->super.super.super._view + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler);
  v10 = *(&self->super.super.super._tabBarItem + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler);
  __swift_project_boxed_opaque_existential_1((&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler), v9);
  v11 = OBJC_IVAR____TtC12NewsArticles17TipViewController_startDate;
  swift_beginAccess();
  v12 = sub_1D7D2833C();
  (*(*(v12 - 8) + 16))(v8, self + v11, v12);
  selfCopy = self;
  sub_1D7D2832C();
  v8[*(v5 + 32)] = 2;
  (*(v10 + 32))(v8, v9, v10);

  sub_1D7A2F33C(v8, type metadata accessor for TipViewImpression);
}

@end
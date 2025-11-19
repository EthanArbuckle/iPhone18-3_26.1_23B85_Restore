@interface TipViewController
- (_TtC12NewsArticles17TipViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles17TipViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC12NewsArticles17TipViewController)initWithRequest:(id)a3;
- (_TtC12NewsArticles17TipViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didLoadDialogRequest:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
- (void)messageViewControllerDidDismiss:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TipViewController

- (_TtC12NewsArticles17TipViewController)initWithCoder:(id)a3
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

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TipViewController *)&v5 viewIsAppearing:v3];
  sub_1D7A2CFF0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  TipViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  TipViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  sub_1D7992EFC(0, &qword_1EC9E2780);
  sub_1D7A2F2D4();
  v6 = sub_1D7D309AC();
  v7 = a4;
  v8 = self;
  TipViewController.pressesBegan(_:with:)(v6, a4);
}

- (_TtC12NewsArticles17TipViewController)initWithRequest:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles17TipViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles17TipViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  TipViewController.messageViewController(_:didSelectActionWith:)(v6, v7);
}

- (void)messageViewController:(id)a3 didLoadDialogRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s12NewsArticles17TipViewControllerC07messagedE0_7didLoadySo012AMSUIMessagedE0_So06UIViewE0CXc_So16AMSDialogRequestCtF_0(v6, v7);
}

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  _s12NewsArticles17TipViewControllerC07messagedE0_9didUpdateySo012AMSUIMessagedE0_So06UIViewE0CXc_So6CGSizeVtF_0();
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  _s12NewsArticles17TipViewControllerC07messagedE0_16didFailWithErrorySo012AMSUIMessagedE0_So06UIViewE0CXc_s0J0_pSgtF_0(v6, a4);
}

- (void)messageViewControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  _s12NewsArticles17TipViewControllerC07messagedE10DidDismissyySo012AMSUIMessagedE0_So06UIViewE0CXcF_0();
}

- (void)presentationControllerDidDismiss:(id)a3
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
  v13 = self;
  sub_1D7D2832C();
  v8[*(v5 + 32)] = 2;
  (*(v10 + 32))(v8, v9, v10);

  sub_1D7A2F33C(v8, type metadata accessor for TipViewImpression);
}

@end
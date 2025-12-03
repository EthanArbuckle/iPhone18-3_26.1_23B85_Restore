@interface MUWebBasedPlacecardViewController
- (WKWebView)webView;
- (_TtC6MapsUI33MUWebBasedPlacecardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)closeButtonTapped;
- (void)loadDidFinish;
- (void)loadDidStart;
- (void)removeInitialView;
- (void)resetOverlayViews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setWebView:(id)view;
- (void)updateHeight;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MUWebBasedPlacecardViewController

- (WKWebView)webView
{
  v3 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setWebView:(id)view
{
  v5 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_webView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = view;
  viewCopy = view;
}

- (void)viewDidLoad
{
  selfCopy = self;
  MUWebBasedPlacecardViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(MUWebBasedPlacecardViewController *)&v5 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController];
  if (v3)
  {
    v4 = v3;
    [v4 updateLayoutForBoundsChange];
  }
}

- (void)resetOverlayViews
{
  selfCopy = self;
  sub_1C5718C3C();
}

- (void)updateHeight
{
  selfCopy = self;
  sub_1C5717E48();
}

- (void)loadDidStart
{
  selfCopy = self;
  sub_1C5718EA0();
}

- (void)loadDidFinish
{
  selfCopy = self;
  sub_1C5719014();
}

- (void)removeInitialView
{
  v3 = OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_loadingOverlayController);
  selfCopy = self;
  if (v4)
  {
    [v4 removeLoadingOverlayAnimated:1 completion:0];
    v6 = *(&self->super.super.super.isa + v3);
  }

  else
  {
    v6 = 0;
  }

  *(&self->super.super.super.isa + v3) = 0;
}

- (void)closeButtonTapped
{
  v3 = self + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (_TtC6MapsUI33MUWebBasedPlacecardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v5 = self + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 40);
    scrollCopy = scroll;
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

@end
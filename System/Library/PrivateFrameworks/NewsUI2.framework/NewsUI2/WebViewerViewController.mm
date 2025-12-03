@interface WebViewerViewController
- (_TtC7NewsUI223WebViewerViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI223WebViewerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation WebViewerViewController

- (_TtC7NewsUI223WebViewerViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7NewsUI223WebViewerViewController_coverViewManager;
  sub_219BE6C14();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_219BE6C04();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223WebViewerViewController_webView) = 0;
  v5 = OBJC_IVAR____TtC7NewsUI223WebViewerViewController_url;
  v6 = sub_219BDB954();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223WebViewerViewController_config) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI223WebViewerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_219B72B7C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(WebViewerViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_219B72D18();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(WebViewerViewController *)&v3 viewDidLayoutSubviews];
  sub_219BE6B94();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(WebViewerViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_219B740A4();
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_219B74200();
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_219B742EC();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v4 = 1;
  selfCopy = self;
  sub_218ED5C68(&v4);
}

@end
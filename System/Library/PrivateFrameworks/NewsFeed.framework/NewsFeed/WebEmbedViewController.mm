@interface WebEmbedViewController
- (NSArray)accessibilityElements;
- (_TtC8NewsFeed22WebEmbedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleTapWithRecognizer:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation WebEmbedViewController

- (void)viewDidLoad
{
  v2 = self;
  WebEmbedViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  WebEmbedViewController.viewDidLayoutSubviews()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  WebEmbedViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  WebEmbedViewController.viewDidDisappear(_:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(WebEmbedViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  if (v7[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_isResizable] == 1)
  {
    [*&v7[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_presentationManager] reset];

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

- (NSArray)accessibilityElements
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController);
  v3 = self;
  v4 = [v2 accessibilityElements];
  if (v4)
  {
    v5 = v4;
    sub_1D726267C();

    v6 = sub_1D726265C();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)handleTapWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6136158();
}

- (_TtC8NewsFeed22WebEmbedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
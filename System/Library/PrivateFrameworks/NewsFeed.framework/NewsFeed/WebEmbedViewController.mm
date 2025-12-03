@interface WebEmbedViewController
- (NSArray)accessibilityElements;
- (_TtC8NewsFeed22WebEmbedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleTapWithRecognizer:(id)recognizer;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation WebEmbedViewController

- (void)viewDidLoad
{
  selfCopy = self;
  WebEmbedViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  WebEmbedViewController.viewDidLayoutSubviews()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  WebEmbedViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  WebEmbedViewController.viewDidDisappear(_:)(disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(WebEmbedViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
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
  selfCopy = self;
  accessibilityElements = [v2 accessibilityElements];
  if (accessibilityElements)
  {
    v5 = accessibilityElements;
    sub_1D726267C();

    v6 = sub_1D726265C();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)handleTapWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1D6136158();
}

- (_TtC8NewsFeed22WebEmbedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
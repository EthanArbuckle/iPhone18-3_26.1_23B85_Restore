@interface DebugFormatConsoleViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC8NewsFeed32DebugFormatConsoleViewController)initWithCoder:(id)a3;
- (_TtC8NewsFeed32DebugFormatConsoleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doPanGestureWithGesture:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatConsoleViewController

- (_TtC8NewsFeed32DebugFormatConsoleViewController)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight;
  *v3 = 0;
  v3[8] = 1;
  v4 = self + OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consolePanSession;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v4[24] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController____lazy_storage___panGestureRecognizer) = 0;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6123AEC();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D6123ED4();
}

- (void)doPanGestureWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D612436C(v4);
}

- (_TtC8NewsFeed32DebugFormatConsoleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1D6124A5C();

  return self & 1;
}

@end
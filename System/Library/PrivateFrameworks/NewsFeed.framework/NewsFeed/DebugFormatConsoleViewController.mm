@interface DebugFormatConsoleViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC8NewsFeed32DebugFormatConsoleViewController)initWithCoder:(id)coder;
- (_TtC8NewsFeed32DebugFormatConsoleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doPanGestureWithGesture:(id)gesture;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatConsoleViewController

- (_TtC8NewsFeed32DebugFormatConsoleViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1D6123AEC();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D6123ED4();
}

- (void)doPanGestureWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_1D612436C(gestureCopy);
}

- (_TtC8NewsFeed32DebugFormatConsoleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1D6124A5C();

  return self & 1;
}

@end
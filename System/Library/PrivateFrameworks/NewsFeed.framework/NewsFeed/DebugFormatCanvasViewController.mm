@interface DebugFormatCanvasViewController
- (_TtC8NewsFeed31DebugFormatCanvasViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatCanvasViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_viewportMonitor);
  selfCopy = self;
  v6 = v4;
  sub_1D725E79C();

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(DebugFormatCanvasViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6C87FA0();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D6C88430();
}

- (_TtC8NewsFeed31DebugFormatCanvasViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1D725E7BC();
}

@end
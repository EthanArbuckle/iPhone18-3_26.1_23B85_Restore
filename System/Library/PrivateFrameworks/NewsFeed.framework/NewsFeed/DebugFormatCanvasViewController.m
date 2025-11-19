@interface DebugFormatCanvasViewController
- (_TtC8NewsFeed31DebugFormatCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatCanvasViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_viewportMonitor);
  v5 = self;
  v6 = v4;
  sub_1D725E79C();

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(DebugFormatCanvasViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6C87FA0();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D6C88430();
}

- (_TtC8NewsFeed31DebugFormatCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1D725E7BC();
}

@end
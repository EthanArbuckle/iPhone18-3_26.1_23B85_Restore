@interface DebugFormatInspectorViewController
- (_TtC8NewsFeed34DebugFormatInspectorViewController)initWithCoder:(id)a3;
- (_TtC8NewsFeed34DebugFormatInspectorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatInspectorViewController

- (_TtC8NewsFeed34DebugFormatInspectorViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_1D725D79C();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController) = 0;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6F1E794();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D6F1F0D4();
}

- (_TtC8NewsFeed34DebugFormatInspectorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6F1F2C4(v4);
}

@end
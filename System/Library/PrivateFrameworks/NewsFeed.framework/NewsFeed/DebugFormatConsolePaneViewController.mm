@interface DebugFormatConsolePaneViewController
- (_TtC8NewsFeed36DebugFormatConsolePaneViewController)initWithCoder:(id)a3;
- (_TtC8NewsFeed36DebugFormatConsolePaneViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatConsolePaneViewController

- (_TtC8NewsFeed36DebugFormatConsolePaneViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v5 = swift_allocObject();
  *(v5 + 2) = 0;
  *(&self->super.super.super.isa + v4) = v5;
  v6 = OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_separatorView;
  *(&self->super.super.super.isa + v6) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6EE36F8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(DebugFormatConsolePaneViewController *)&v7 viewWillAppear:v3];
  v5 = [*&v4[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController] toolbar];
  sub_1D71CD8F4(v5);

  v6 = [*&v4[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_debuggerPaneViewController] toolbar];
  sub_1D71CD8F4(v6);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D6EE3BF0();
}

- (_TtC8NewsFeed36DebugFormatConsolePaneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
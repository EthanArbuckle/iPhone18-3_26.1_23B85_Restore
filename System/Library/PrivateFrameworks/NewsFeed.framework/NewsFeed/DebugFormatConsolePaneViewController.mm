@interface DebugFormatConsolePaneViewController
- (_TtC8NewsFeed36DebugFormatConsolePaneViewController)initWithCoder:(id)coder;
- (_TtC8NewsFeed36DebugFormatConsolePaneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatConsolePaneViewController

- (_TtC8NewsFeed36DebugFormatConsolePaneViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1D6EE36F8();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(DebugFormatConsolePaneViewController *)&v7 viewWillAppear:appearCopy];
  toolbar = [*&v4[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_logViewController] toolbar];
  sub_1D71CD8F4(toolbar);

  toolbar2 = [*&v4[OBJC_IVAR____TtC8NewsFeed36DebugFormatConsolePaneViewController_debuggerPaneViewController] toolbar];
  sub_1D71CD8F4(toolbar2);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D6EE3BF0();
}

- (_TtC8NewsFeed36DebugFormatConsolePaneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
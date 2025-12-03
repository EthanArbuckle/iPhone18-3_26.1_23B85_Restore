@interface DebugFormatVersioningModeViewController
- (_TtC8NewsFeed39DebugFormatVersioningModeViewController)initWithCoder:(id)coder;
- (_TtC8NewsFeed39DebugFormatVersioningModeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatVersioningModeViewController

- (_TtC8NewsFeed39DebugFormatVersioningModeViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_tableView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController__currentMode;
  if (qword_1EC87D510 != -1)
  {
    swift_once();
  }

  sub_1D62EAEB0();
  swift_allocObject();

  *(&self->super.super.super.isa + v5) = sub_1D725977C();
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D62E9930();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatVersioningModeViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_tableView];
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8NewsFeed39DebugFormatVersioningModeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections);
    if (*(v4 + 16) > section)
    {
      return *(*(v4 + 40 * section + 64) + 16);
    }
  }

  __break(1u);
  return self;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(self + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections);
  if (*(v5 + 16) <= section)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  if (*(v5 + 40 * section + 40))
  {

    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(self + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections);
  if (*(v5 + 16) <= section)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  if (*(v5 + 40 * section + 56))
  {

    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1D62E9F98();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  sub_1D62EA944(viewCopy);

  (*(v7 + 8))(v10, v6);
}

@end
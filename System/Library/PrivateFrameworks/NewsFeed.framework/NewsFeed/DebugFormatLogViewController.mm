@interface DebugFormatLogViewController
- (_TtC8NewsFeed28DebugFormatLogViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)doClearLog;
- (void)doNow;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatLogViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6E30DD4();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatLogViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_tableView];
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

- (void)doNow
{
  selfCopy = self;
  sub_1D6E31AC8();
}

- (void)doClearLog
{
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D725BFFC();
}

- (_TtC8NewsFeed28DebugFormatLogViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_entries;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  if (v6 >> 62)
  {
    return sub_1D7263BFC();
  }

  else
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
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
  v13 = sub_1D6E31DC8();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  sub_1D6E321BC(viewCopy);
  v14 = v13;

  (*(v7 + 8))(v10, v6);
  return v14;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_1D6E323D4();
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_1D6E324D4(draggingCopy, decelerate);
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
  sub_1D6E32644(viewCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v6 = sub_1D726207C();
  v8 = v7;
  barCopy = bar;
  selfCopy = self;
  sub_1D6E33864(v6, v8);
}

@end
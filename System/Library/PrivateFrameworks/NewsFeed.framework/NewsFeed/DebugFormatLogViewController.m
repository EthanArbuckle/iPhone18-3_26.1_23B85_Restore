@interface DebugFormatLogViewController
- (_TtC8NewsFeed28DebugFormatLogViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)doClearLog;
- (void)doNow;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatLogViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6E30DD4();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatLogViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_tableView];
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
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
  v2 = self;
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

- (_TtC8NewsFeed28DebugFormatLogViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = self;
  v13 = sub_1D6E31DC8();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = self;
  sub_1D6E321BC(v11);
  v14 = v13;

  (*(v7 + 8))(v10, v6);
  return v14;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6E323D4();
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1D6E324D4(v6, a4);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = self;
  sub_1D6E32644(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = sub_1D726207C();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1D6E33864(v6, v8);
}

@end
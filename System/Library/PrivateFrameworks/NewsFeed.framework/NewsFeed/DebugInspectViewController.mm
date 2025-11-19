@interface DebugInspectViewController
- (_TtC8NewsFeed26DebugInspectViewController)initWithCoder:(id)a3;
- (_TtC8NewsFeed26DebugInspectViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)doDismiss;
- (void)doTapToRadar;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugInspectViewController

- (_TtC8NewsFeed26DebugInspectViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_searchController;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed26DebugInspectViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6B27B80();
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = swift_getObjectType();
  v2 = v17.receiver;
  [(DebugInspectViewController *)&v17 viewWillLayoutSubviews];
  v3 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView;
  v4 = *&v2[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView];
  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v4 setFrame_];
    v15 = *&v2[v3];
    v16 = sub_1D6B281F4();
    [v15 setTableHeaderView_];
  }

  else
  {
    __break(1u);
  }
}

- (void)doDismiss
{
  v4 = self;
  v2 = [(DebugInspectViewController *)v4 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)doTapToRadar
{
  v2 = self;
  sub_1D6B289C0();
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource);
  v4 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  return *(*(v3 + v4) + 16);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource);
  v6 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  result = swift_beginAccess();
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v5 + v6);
    if (*(v8 + 16) > a4)
    {
      return *(*(v8 + 48 * a4 + 64) + 16);
    }
  }

  __break(1u);
  return result;
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
  v13 = sub_1D6B29AEC(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource);
  v6 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  result = swift_beginAccess();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v5 + v6);
  if (*(v8 + 16) <= a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v8 + 48 * a4 + 40))
  {

    v9 = sub_1D726203C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource);
  v6 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  result = swift_beginAccess();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v5 + v6);
  if (*(v8 + 16) <= a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v8 + 48 * a4 + 56))
  {

    v9 = sub_1D726203C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
  sub_1D6B2DBA4(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v10 = self;
  v5 = [v4 searchBar];
  v6 = [v5 text];

  if (v6)
  {
    v7 = sub_1D726207C();
    v9 = v8;

    sub_1D632EE2C(v7, v9);
  }

  [*(&v10->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView) reloadData];
}

@end
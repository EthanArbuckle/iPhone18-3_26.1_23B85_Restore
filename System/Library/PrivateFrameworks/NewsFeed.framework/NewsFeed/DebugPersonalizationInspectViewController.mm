@interface DebugPersonalizationInspectViewController
- (_TtC8NewsFeed41DebugPersonalizationInspectViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)doDismiss;
- (void)doTapToRadar;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugPersonalizationInspectViewController

- (_TtC8NewsFeed41DebugPersonalizationInspectViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D716C1C0();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D716D78C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D716D8DC();
}

- (void)doDismiss
{
  v4 = self;
  v2 = [(DebugPersonalizationInspectViewController *)v4 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)doTapToRadar
{
  v2 = self;
  sub_1D716DD38();
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = self + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_targetGroupData;
  sub_1D5ECEDF4();
  v5 = *&v3[*(v4 + 48)];
  v6 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_sections;
  swift_beginAccess();
  return *(*(v5 + v6) + 16);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = self;
  sub_1D716F8C0(v11, v10);
  v14 = v13;

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1D7172090(v6, a4);

  return v8;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = self + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_targetGroupData;
  sub_1D5ECEDF4();
  v7 = *&v5[*(v6 + 48)];
  v8 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_sections;
  result = swift_beginAccess();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(v7 + v8);
  if (*(v10 + 16) <= a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v10 + (a4 << 6) + 88))
  {

    v11 = sub_1D726203C();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
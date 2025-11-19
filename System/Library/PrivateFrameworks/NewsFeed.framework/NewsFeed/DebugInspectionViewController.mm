@interface DebugInspectionViewController
- (_TtC8NewsFeed29DebugInspectionViewController)initWithCoder:(id)a3;
- (_TtC8NewsFeed29DebugInspectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)doDismiss;
- (void)doTapToRadar;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugInspectionViewController

- (_TtC8NewsFeed29DebugInspectionViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections) = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();
  *(&self->super.super.super.isa + v5) = sub_1D725D79C();
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6C0F318();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugInspectionViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView];
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

- (_TtC8NewsFeed29DebugInspectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)doDismiss
{
  v4 = self;
  v2 = [(DebugInspectionViewController *)v4 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)doTapToRadar
{
  v2 = self;
  sub_1D6C108C8();
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections);
    if (*(v4 + 16) > a4)
    {
      return *(*(v4 + 24 * a4 + 48) + 16);
    }
  }

  __break(1u);
  return self;
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
  v13 = sub_1D6C119BC();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(self + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections) + 16) <= a4)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v5 = sub_1D726203C();

  return v5;
}

@end
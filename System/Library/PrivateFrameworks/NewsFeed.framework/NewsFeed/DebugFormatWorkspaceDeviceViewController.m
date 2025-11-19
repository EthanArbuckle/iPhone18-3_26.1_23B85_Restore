@interface DebugFormatWorkspaceDeviceViewController
- (_TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatWorkspaceDeviceViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6F8F030();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatWorkspaceDeviceViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_tableView];
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

- (_TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_sections);
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
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = self;
  sub_1D6F90460();
  v14 = v13;

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(self + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_sections);
  if (*(v5 + 16) <= a4)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  if (*(v5 + 24 * a4 + 40))
  {

    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
  sub_1D6F90CB0(v11, v10);

  (*(v7 + 8))(v10, v6);
}

@end
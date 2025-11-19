@interface SettingsViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC15HealthRecordsUI22SettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15HealthRecordsUI22SettingsViewController)initWithStyle:(int64_t)a3;
- (_TtC15HealthRecordsUI22SettingsViewController)initWithUsingInsetStyling:(BOOL)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)sourceListDataSourceDidUpdate:(id)a3;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tapToRadar:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SettingsViewController

- (void)dealloc
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountStateCancellable))
  {
    v3 = self;

    sub_1D138F64C();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for SettingsViewController();
  [(SettingsViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D112A728();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1D112B5BC(a3);
}

- (void)tapToRadar:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  type metadata accessor for TapToRadarManager();
  static TapToRadarManager.presentTapToRadarDialogue(from:)(self);

  sub_1D1096BE0(v6);
}

- (_TtC15HealthRecordsUI22SettingsViewController)initWithUsingInsetStyling:(BOOL)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI22SettingsViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI22SettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sourceListDataSourceDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  SettingsViewController.sourceListDataSourceDidUpdate(_:)(v4);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  SettingsViewController.tableView(_:didSelectRowAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_1D121C260();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = self;

  v5 = sub_1D115FCFC(v4);

  v6 = *(v5 + 16);

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1D12821DC(a4);

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  object = SettingsViewController.tableView(_:titleForHeaderInSection:)(v6, a4).value._object;

  if (object)
  {
    v9 = sub_1D139012C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D1282454(a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1D139012C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  SettingsViewController.tableView(_:cellForRowAt:)(v10, v9);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_1D138D82C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  sub_1D138E07C();
  if (swift_dynamicCastClass())
  {
    v12 = self;
    v13 = a3;
    v14 = a4;
    sub_1D138E05C();
  }

  else
  {
    v15 = self;
    v16 = a3;
    v17 = a4;
  }

  type metadata accessor for LoadingTableViewCell();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    [*(v18 + OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_spinner) startAnimating];
  }

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_1D138D82C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  sub_1D138E07C();
  v12 = swift_dynamicCastClass();
  v13 = a3;
  v14 = a4;
  v15 = self;
  if (v12)
  {
    sub_1D138E05C();
  }

  type metadata accessor for LoadingTableViewCell();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    [*(v16 + OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_spinner) stopAnimating];
  }

  (*(v9 + 8))(v11, v8);
}

@end
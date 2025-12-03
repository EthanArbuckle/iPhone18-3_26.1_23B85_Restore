@interface SettingsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC15HealthRecordsUI22SettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15HealthRecordsUI22SettingsViewController)initWithStyle:(int64_t)style;
- (_TtC15HealthRecordsUI22SettingsViewController)initWithUsingInsetStyling:(BOOL)styling;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)sourceListDataSourceDidUpdate:(id)update;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tapToRadar:(id)radar;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation SettingsViewController

- (void)dealloc
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountStateCancellable))
  {
    selfCopy = self;

    sub_1D138F64C();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for SettingsViewController();
  [(SettingsViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D112A728();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D112B5BC(appear);
}

- (void)tapToRadar:(id)radar
{
  if (radar)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  type metadata accessor for TapToRadarManager();
  static TapToRadarManager.presentTapToRadarDialogue(from:)(self);

  sub_1D1096BE0(v6);
}

- (_TtC15HealthRecordsUI22SettingsViewController)initWithUsingInsetStyling:(BOOL)styling
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI22SettingsViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI22SettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sourceListDataSourceDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  SettingsViewController.sourceListDataSourceDidUpdate(_:)(updateCopy);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  SettingsViewController.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_1D121C260();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;

  v5 = sub_1D115FCFC(v4);

  v6 = *(v5 + 16);

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1D12821DC(section);

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  object = SettingsViewController.tableView(_:titleForHeaderInSection:)(viewCopy, section).value._object;

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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1D1282454(section);
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  SettingsViewController.tableView(_:cellForRowAt:)(viewCopy, v9);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_1D138D82C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  sub_1D138E07C();
  if (swift_dynamicCastClass())
  {
    selfCopy = self;
    viewCopy = view;
    cellCopy = cell;
    sub_1D138E05C();
  }

  else
  {
    selfCopy2 = self;
    viewCopy2 = view;
    cellCopy2 = cell;
  }

  type metadata accessor for LoadingTableViewCell();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    [*(v18 + OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_spinner) startAnimating];
  }

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_1D138D82C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  sub_1D138E07C();
  v12 = swift_dynamicCastClass();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
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
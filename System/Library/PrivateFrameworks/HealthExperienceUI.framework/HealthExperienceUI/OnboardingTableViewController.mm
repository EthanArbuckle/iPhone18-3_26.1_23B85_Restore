@interface OnboardingTableViewController
- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation OnboardingTableViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA0DD864();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BA0DDDD0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1BA0DDEE0(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for OnboardingTableViewController();
  v4 = v6.receiver;
  v5 = a3;
  [(OnboardingTableViewController *)&v6 traitCollectionDidChange:v5];
  if (*&v4[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor])
  {

    sub_1BA3741A8();
  }
}

- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  OnboardingTableViewController.tableView(_:viewForFooterInSection:)(v8, v6, a4);
  v10 = v9;

  return v10;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  OnboardingTableViewController.tableView(_:viewForHeaderInSection:)(v8, v6, a4);
  v10 = v9;

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = OnboardingTableViewController.tableView(_:heightForHeaderInSection:)(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = OnboardingTableViewController.tableView(_:heightForFooterInSection:)(v6, a4);

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  v10 = a3;
  v11 = self;
  OnboardingTableViewController.tableView(_:didSelectRowAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

@end
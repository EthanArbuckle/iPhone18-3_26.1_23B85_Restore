@interface OnboardingTableViewController
- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation OnboardingTableViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA0DD864();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1BA0DDDD0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BA0DDEE0(appear);
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for OnboardingTableViewController();
  v4 = v6.receiver;
  changeCopy = change;
  [(OnboardingTableViewController *)&v6 traitCollectionDidChange:changeCopy];
  if (*&v4[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor])
  {

    sub_1BA3741A8();
  }
}

- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI29OnboardingTableViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  OnboardingTableViewController.tableView(_:viewForFooterInSection:)(v8, viewCopy, section);
  v10 = v9;

  return v10;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  OnboardingTableViewController.tableView(_:viewForHeaderInSection:)(v8, viewCopy, section);
  v10 = v9;

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = OnboardingTableViewController.tableView(_:heightForHeaderInSection:)(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = OnboardingTableViewController.tableView(_:heightForFooterInSection:)(viewCopy, section);

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  viewCopy = view;
  selfCopy = self;
  OnboardingTableViewController.tableView(_:didSelectRowAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

@end
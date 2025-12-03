@interface FASettingsPresetsTableViewDecorator
- (_TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator)initWithTableView:(id)view;
- (_TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator)initWithTableView:(id)view ruiTableView:(id)tableView parentViewController:(id)controller;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation FASettingsPresetsTableViewDecorator

- (_TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator)initWithTableView:(id)view ruiTableView:(id)tableView parentViewController:(id)controller
{
  swift_unknownObjectUnownedInit();
  *(&self->super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator_ruiTableView) = tableView;
  swift_unknownObjectUnownedAssign();
  v10.receiver = self;
  v10.super_class = type metadata accessor for FASettingsPresetsTableViewDecorator();
  tableViewCopy = tableView;
  return [(FATableViewDecorator *)&v10 initWithTableView:view];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  if (sub_21BCDBD80(section))
  {
    v8 = 1;
  }

  else
  {
    dataSource = [(FATableViewDecorator *)selfCopy dataSource];
    if (dataSource)
    {
      v8 = [(UITableViewDataSource *)dataSource tableView:viewCopy numberOfRowsInSection:section];
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_21BE25EFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25EDC();
  viewCopy = view;
  selfCopy = self;
  sub_21BCDC1D8(viewCopy);
  v14 = v13;

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v6 = sub_21BE25EFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25EDC();
  viewCopy = view;
  selfCopy = self;
  sub_21BCDC7F4(viewCopy);
  v14 = v13;

  (*(v7 + 8))(v10, v6);
  return v14;
}

- (_TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator)initWithTableView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
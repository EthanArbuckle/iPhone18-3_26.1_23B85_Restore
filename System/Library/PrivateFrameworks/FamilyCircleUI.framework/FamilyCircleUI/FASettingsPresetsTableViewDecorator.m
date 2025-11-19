@interface FASettingsPresetsTableViewDecorator
- (_TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator)initWithTableView:(id)a3;
- (_TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator)initWithTableView:(id)a3 ruiTableView:(id)a4 parentViewController:(id)a5;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
@end

@implementation FASettingsPresetsTableViewDecorator

- (_TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator)initWithTableView:(id)a3 ruiTableView:(id)a4 parentViewController:(id)a5
{
  swift_unknownObjectUnownedInit();
  *(&self->super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator_ruiTableView) = a4;
  swift_unknownObjectUnownedAssign();
  v10.receiver = self;
  v10.super_class = type metadata accessor for FASettingsPresetsTableViewDecorator();
  v8 = a4;
  return [(FATableViewDecorator *)&v10 initWithTableView:a3];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  if (sub_21BCDBD80(a4))
  {
    v8 = 1;
  }

  else
  {
    v9 = [(FATableViewDecorator *)v7 dataSource];
    if (v9)
    {
      v8 = [(UITableViewDataSource *)v9 tableView:v6 numberOfRowsInSection:a4];
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_21BE25EFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25EDC();
  v11 = a3;
  v12 = self;
  sub_21BCDC1D8(v11);
  v14 = v13;

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = sub_21BE25EFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25EDC();
  v11 = a3;
  v12 = self;
  sub_21BCDC7F4(v11);
  v14 = v13;

  (*(v7 + 8))(v10, v6);
  return v14;
}

- (_TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator)initWithTableView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
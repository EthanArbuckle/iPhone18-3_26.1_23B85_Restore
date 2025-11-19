@interface AvailableAppsTableView.Coordinator
- (_TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator)init;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AvailableAppsTableView.Coordinator

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_sections;
  swift_beginAccess();
  return (*(&self->super.isa + v4))[2];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_sections;
  swift_beginAccess();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(&self->super.isa + v6);
  if (*(v7 + 16) <= a4)
  {
LABEL_7:
    __break(1u);
    return sub_24BAAA52C();
  }

  v8 = *(v7 + 8 * a4 + 32);
  if (v8 >> 62)
  {
    return sub_24BAAA52C();
  }

  return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_24BAA7F8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA7F5C();
  v10 = a3;
  v11 = self;
  v12 = sub_24BA3B8FC(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_24BAA7F8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA7F5C();
  v10 = a3;
  v11 = self;
  sub_24BA3BDD4(v10);

  (*(v7 + 8))(v9, v6);
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_24BA3E7C4();

  if (v6)
  {
    v7 = sub_24BAAA11C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_collation);
  v6 = self;
  v7 = [v5 sectionTitles];
  v8 = sub_24BAAA12C();

  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v8 + 16) <= a4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = sub_24BAA9FDC();

  return v10;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_24BA3E884(a4);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_sections;
  swift_beginAccess();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(&self->super.isa + v6);
  if (*(v7 + 16) <= a4)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    if (sub_24BAAA52C() > 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v8 = *(v7 + 8 * a4 + 32);
  if (v8 >> 62)
  {
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
LABEL_10:

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_24BA3EDE0(a4);
  v9 = v8;

  return v9;
}

- (_TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
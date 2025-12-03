@interface HUEnergyDashboardItemModule
- (HUEnergyDashboardItemModule)initWithItemUpdater:(id)updater;
- (HUEnergyDashboardItemModule)initWithItemUpdater:(id)updater dashboardContext:(id)context home:(id)home;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUEnergyDashboardItemModule

- (HUEnergyDashboardItemModule)initWithItemUpdater:(id)updater dashboardContext:(id)context home:(id)home
{
  *(&self->super.super.isa + OBJC_IVAR___HUEnergyDashboardItemModule_dashboardContext) = context;
  *(&self->super.super.isa + OBJC_IVAR___HUEnergyDashboardItemModule_home) = home;
  v11.receiver = self;
  v11.super_class = type metadata accessor for EnergyDashboardItemModule();
  contextCopy = context;
  homeCopy = home;
  return [(HFItemModule *)&v11 initWithItemUpdater:updater];
}

- (id)buildItemProviders
{
  selfCopy = self;
  v3 = sub_20CFCF468();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    sub_20CEF9114();
    v4 = sub_20D567CD8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  sub_20D567D08();
  selfCopy = self;
  sub_20CFCF96C();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (HUEnergyDashboardItemModule)initWithItemUpdater:(id)updater
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface HUEnergyDashboardItemModule
- (HUEnergyDashboardItemModule)initWithItemUpdater:(id)a3;
- (HUEnergyDashboardItemModule)initWithItemUpdater:(id)a3 dashboardContext:(id)a4 home:(id)a5;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUEnergyDashboardItemModule

- (HUEnergyDashboardItemModule)initWithItemUpdater:(id)a3 dashboardContext:(id)a4 home:(id)a5
{
  *(&self->super.super.isa + OBJC_IVAR___HUEnergyDashboardItemModule_dashboardContext) = a4;
  *(&self->super.super.isa + OBJC_IVAR___HUEnergyDashboardItemModule_home) = a5;
  v11.receiver = self;
  v11.super_class = type metadata accessor for EnergyDashboardItemModule();
  v8 = a4;
  v9 = a5;
  return [(HFItemModule *)&v11 initWithItemUpdater:a3];
}

- (id)buildItemProviders
{
  v2 = self;
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

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  sub_20D567D08();
  v4 = self;
  sub_20CFCF96C();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (HUEnergyDashboardItemModule)initWithItemUpdater:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface HUDashboardTipModule
- (HUDashboardTipModule)initWithContext:(id)a3 itemUpdater:(id)a4;
- (HUDashboardTipModule)initWithItemUpdater:(id)a3;
- (HUDashboardTipModule)initWithItemUpdater:(id)a3 descriptionText:(id)a4;
- (NSSet)itemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (void)setupTipsObserver;
@end

@implementation HUDashboardTipModule

- (HUDashboardTipModule)initWithContext:(id)a3 itemUpdater:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return DashboardTipModule.init(context:itemUpdater:)(v5, a4);
}

- (HUDashboardTipModule)initWithItemUpdater:(id)a3 descriptionText:(id)a4
{
  *(&self->super.super.isa + OBJC_IVAR___HUDashboardTipModule_dashboardTipItemProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___HUDashboardTipModule_tipObservationTask) = 0;
  v5 = OBJC_IVAR___HUDashboardTipModule_eligibleTip;
  v6 = sub_20D5662A8();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (NSSet)itemProviders
{
  v2 = self;
  sub_20D024734();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  sub_20CF156D0(&qword_28111FFB0, &qword_27C81AF70);
  v3 = sub_20D567CD8();

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  sub_20D567D08();
  v4 = self;
  sub_20D024830();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (HUDashboardTipModule)initWithItemUpdater:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setupTipsObserver
{
  v2 = self;
  sub_20D024C8C();
}

@end
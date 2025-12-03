@interface HUDashboardTipModule
- (HUDashboardTipModule)initWithContext:(id)context itemUpdater:(id)updater;
- (HUDashboardTipModule)initWithItemUpdater:(id)updater;
- (HUDashboardTipModule)initWithItemUpdater:(id)updater descriptionText:(id)text;
- (NSSet)itemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (void)setupTipsObserver;
@end

@implementation HUDashboardTipModule

- (HUDashboardTipModule)initWithContext:(id)context itemUpdater:(id)updater
{
  contextCopy = context;
  swift_unknownObjectRetain();
  return DashboardTipModule.init(context:itemUpdater:)(contextCopy, updater);
}

- (HUDashboardTipModule)initWithItemUpdater:(id)updater descriptionText:(id)text
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
  selfCopy = self;
  sub_20D024734();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  sub_20CF156D0(&qword_28111FFB0, &qword_27C81AF70);
  v3 = sub_20D567CD8();

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  sub_20D567D08();
  selfCopy = self;
  sub_20D024830();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (HUDashboardTipModule)initWithItemUpdater:(id)updater
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setupTipsObserver
{
  selfCopy = self;
  sub_20D024C8C();
}

@end
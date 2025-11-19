@interface HUDashboardTipModuleController
- (Class)collectionCellClassForItem:(id)a3;
- (HUDashboardTipModuleController)initWithModule:(id)a3;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation HUDashboardTipModuleController

- (Class)collectionCellClassForItem:(id)a3
{
  sub_20CECF940(0, &qword_28111FEA0);

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D0851C8(v6, v7);
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_20D085AEC();
  swift_unknownObjectRelease();

  return v6;
}

- (HUDashboardTipModuleController)initWithModule:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR___HUDashboardTipModuleController_tipView) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DashboardTipModuleController();
  return [(HUItemModuleController *)&v5 initWithModule:a3];
}

@end
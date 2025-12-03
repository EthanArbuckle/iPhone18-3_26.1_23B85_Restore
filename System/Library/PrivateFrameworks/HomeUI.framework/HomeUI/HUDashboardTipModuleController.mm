@interface HUDashboardTipModuleController
- (Class)collectionCellClassForItem:(id)item;
- (HUDashboardTipModuleController)initWithModule:(id)module;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment;
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation HUDashboardTipModuleController

- (Class)collectionCellClassForItem:(id)item
{
  sub_20CECF940(0, &qword_28111FEA0);

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20D0851C8(cellCopy, itemCopy);
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_20D085AEC();
  swift_unknownObjectRelease();

  return v6;
}

- (HUDashboardTipModuleController)initWithModule:(id)module
{
  *(&self->super.super.isa + OBJC_IVAR___HUDashboardTipModuleController_tipView) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DashboardTipModuleController();
  return [(HUItemModuleController *)&v5 initWithModule:module];
}

@end
@interface HUEnergyDashboardItemModuleController
- (Class)collectionCellClassForItem:(id)item;
- (HUEnergyDashboardItemModuleController)initWithModule:(id)module;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment;
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation HUEnergyDashboardItemModuleController

- (HUEnergyDashboardItemModuleController)initWithModule:(id)module
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (Class)collectionCellClassForItem:(id)item
{
  sub_20CF3035C();

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  _s6HomeUI35EnergyDashboardItemModuleControllerC13configureCell_3forySo016UICollectionViewI0C_So6HFItemCtF_0();
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment
{
  v6 = sub_20D567838();
  v8 = v7;
  v13 = xmmword_20D5BE8F0;
  v14 = 2;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20CEFA3C8(v6, v8, &v13, environment);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

@end
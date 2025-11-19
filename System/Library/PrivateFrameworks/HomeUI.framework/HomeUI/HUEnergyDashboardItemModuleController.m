@interface HUEnergyDashboardItemModuleController
- (Class)collectionCellClassForItem:(id)a3;
- (HUEnergyDashboardItemModuleController)initWithModule:(id)a3;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation HUEnergyDashboardItemModuleController

- (HUEnergyDashboardItemModuleController)initWithModule:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (Class)collectionCellClassForItem:(id)a3
{
  sub_20CF3035C();

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s6HomeUI35EnergyDashboardItemModuleControllerC13configureCell_3forySo016UICollectionViewI0C_So6HFItemCtF_0();
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4
{
  v6 = sub_20D567838();
  v8 = v7;
  v13 = xmmword_20D5BE8F0;
  v14 = 2;
  swift_unknownObjectRetain();
  v9 = self;
  sub_20CEFA3C8(v6, v8, &v13, a4);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

@end
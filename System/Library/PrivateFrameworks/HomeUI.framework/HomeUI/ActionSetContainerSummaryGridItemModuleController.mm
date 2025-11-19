@interface ActionSetContainerSummaryGridItemModuleController
- (Class)collectionCellClassForItem:(id)a3;
- (_TtC6HomeUI49ActionSetContainerSummaryGridItemModuleController)initWithModule:(id)a3;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4;
- (id)displayedItemsInSection:(id)a3;
- (id)transform:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)sceneEditor:(id)a3 removeActionSetBuilderFromTrigger:(id)a4;
@end

@implementation ActionSetContainerSummaryGridItemModuleController

- (Class)collectionCellClassForItem:(id)a3
{
  sub_20CECF940(0, &qword_27C81DFD0);
  if ([a3 isKindOfClass_])
  {
    type metadata accessor for SceneTileCell();
  }

  else
  {
    sub_20CECF940(0, &qword_28111FEA0);
  }

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CFA2E00(v6, v7);
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4
{
  v6 = sub_20D567838();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_20CFA2CCC();
  v14 = xmmword_20D5BD270;
  v15 = 0;
  sub_20CEFA3C8(v6, v8, &v14, a4);
  v12 = v11;

  swift_unknownObjectRelease();

  return v12;
}

- (id)displayedItemsInSection:(id)a3
{
  sub_20D567838();
  v4 = self;
  v5 = [(HUItemModuleController *)v4 module];
  v6 = [(HFItemModule *)v5 itemUpdater];

  if (v6)
  {
    v7 = sub_20D5677F8();
    v8 = [(HFItemUpdating *)v6 displayedItemsInSectionWithIdentifier:v7];

    swift_unknownObjectRelease();
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
  }

  else
  {
  }

  sub_20CECF940(0, &qword_281120AC0);
  v9 = sub_20D567A58();

  return v9;
}

- (id)transform:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20CFA36D0(v4);

  return v6;
}

- (void)sceneEditor:(id)a3 removeActionSetBuilderFromTrigger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_20CFA3238(a3, a4);
}

- (_TtC6HomeUI49ActionSetContainerSummaryGridItemModuleController)initWithModule:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC6HomeUI49ActionSetContainerSummaryGridItemModuleController____lazy_storage___collectionLayoutManager) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActionSetContainerSummaryGridItemModuleController();
  return [(HUItemModuleController *)&v6 initWithModule:a3];
}

@end
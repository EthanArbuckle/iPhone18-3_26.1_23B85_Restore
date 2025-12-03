@interface AccessoryGridModuleController
- (BOOL)shouldShowHeaderForSection:(id)section;
- (Class)collectionCellClassForItem:(id)item;
- (_TtC6HomeUI29AccessoryGridModuleController)initWithModule:(id)module;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment;
- (id)displayedItemsInSection:(id)section;
- (id)transform:(id)transform;
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation AccessoryGridModuleController

- (Class)collectionCellClassForItem:(id)item
{
  v7 = &unk_28251AC90;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    type metadata accessor for AccessoryTileCell();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for AccessoryGridModuleController();
    [(HUItemModuleController *)&v6 collectionCellClassForItem:item];
    swift_getObjCClassMetadata();
  }

  return swift_getObjCClassFromMetadata();
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment
{
  v6 = sub_20D567838();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_20D117DD0();
  v11 = selfCopy + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_layoutStyle;
  swift_beginAccess();
  v12 = *(v11 + 1);
  v13 = v11[16];
  v17 = *v11;
  v18 = v12;
  v19 = v13;
  sub_20CF008FC(v17, v12, v13);
  sub_20CEFA3C8(v6, v8, &v17, environment);
  v15 = v14;

  swift_unknownObjectRelease();

  sub_20CEFF424(v17, v18, v19);

  return v15;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20D118008(cellCopy, itemCopy);
}

- (id)displayedItemsInSection:(id)section
{
  sub_20D567838();
  selfCopy = self;
  module = [(HUItemModuleController *)selfCopy module];
  itemUpdater = [(HFItemModule *)module itemUpdater];

  if (itemUpdater)
  {
    v7 = sub_20D5677F8();
    v8 = [(HFItemUpdating *)itemUpdater displayedItemsInSectionWithIdentifier:v7];

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

- (BOOL)shouldShowHeaderForSection:(id)section
{
  module = [(HUItemModuleController *)self module];
  v4 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  v5 = *(&module->super.isa + v4);

  return v5 != 0;
}

- (id)transform:(id)transform
{
  transformCopy = transform;
  [transformCopy setSectionLeadingMargin_];
  [transformCopy setSectionTrailingMargin_];

  return transformCopy;
}

- (_TtC6HomeUI29AccessoryGridModuleController)initWithModule:(id)module
{
  moduleCopy = module;
  v4 = sub_20D118E4C(moduleCopy);

  return v4;
}

@end
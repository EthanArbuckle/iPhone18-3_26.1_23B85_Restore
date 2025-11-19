@interface AccessoryGridModuleController
- (BOOL)shouldShowHeaderForSection:(id)a3;
- (Class)collectionCellClassForItem:(id)a3;
- (_TtC6HomeUI29AccessoryGridModuleController)initWithModule:(id)a3;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4;
- (id)displayedItemsInSection:(id)a3;
- (id)transform:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation AccessoryGridModuleController

- (Class)collectionCellClassForItem:(id)a3
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
    [(HUItemModuleController *)&v6 collectionCellClassForItem:a3];
    swift_getObjCClassMetadata();
  }

  return swift_getObjCClassFromMetadata();
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4
{
  v6 = sub_20D567838();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_20D117DD0();
  v11 = v9 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_layoutStyle;
  swift_beginAccess();
  v12 = *(v11 + 1);
  v13 = v11[16];
  v17 = *v11;
  v18 = v12;
  v19 = v13;
  sub_20CF008FC(v17, v12, v13);
  sub_20CEFA3C8(v6, v8, &v17, a4);
  v15 = v14;

  swift_unknownObjectRelease();

  sub_20CEFF424(v17, v18, v19);

  return v15;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D118008(v6, v7);
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

- (BOOL)shouldShowHeaderForSection:(id)a3
{
  v3 = [(HUItemModuleController *)self module];
  v4 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  v5 = *(&v3->super.isa + v4);

  return v5 != 0;
}

- (id)transform:(id)a3
{
  v3 = a3;
  [v3 setSectionLeadingMargin_];
  [v3 setSectionTrailingMargin_];

  return v3;
}

- (_TtC6HomeUI29AccessoryGridModuleController)initWithModule:(id)a3
{
  v3 = a3;
  v4 = sub_20D118E4C(v3);

  return v4;
}

@end
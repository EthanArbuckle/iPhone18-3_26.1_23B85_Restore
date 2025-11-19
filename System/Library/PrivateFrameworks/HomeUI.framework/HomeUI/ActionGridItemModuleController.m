@interface ActionGridItemModuleController
- (BOOL)hasDetailsActionFor:(id)a3 item:(id)a4;
- (Class)collectionCellClassForItem:(id)a3;
- (_TtC6HomeUI30ActionGridItemModuleController)initWithModule:(id)a3;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4;
- (id)detailsViewControllerFor:(id)a3 item:(id)a4;
- (id)displayedItemsInSection:(id)a3;
- (id)transform:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)serviceActionControlsViewController:(id)a3 removeServiceActionItem:(id)a4;
@end

@implementation ActionGridItemModuleController

- (_TtC6HomeUI30ActionGridItemModuleController)initWithModule:(id)a3
{
  *(&self->super._host + OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.isa + OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController____lazy_storage___collectionLayoutManager) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActionGridItemModuleController();
  v5 = a3;
  v6 = [(HUItemModuleController *)&v8 initWithModule:v5];
  *&v5[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_delegate + 8] = &off_2823CEA90;
  swift_unknownObjectWeakAssign();

  return v6;
}

- (Class)collectionCellClassForItem:(id)a3
{
  if ([a3 conformsToProtocol_])
  {
    type metadata accessor for AccessoryTileCell();
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
  sub_20CEC8764(v6, v7);
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4
{
  v6 = sub_20D567838();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_20CEC84A8();
  v14 = xmmword_20D5BA030;
  v15 = 2;
  sub_20CEFA3C8(v6, v8, &v14, a4);
  v12 = v11;

  swift_unknownObjectRelease();

  return v12;
}

- (BOOL)hasDetailsActionFor:(id)a3 item:(id)a4
{
  v4 = [(HUItemModuleController *)self module:a3];
  v5 = v4 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config;
  swift_beginAccess();
  LOBYTE(v5) = v5[16];

  return v5;
}

- (id)detailsViewControllerFor:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_20CEC9E68(v6, v7);

  return v9;
}

- (void)serviceActionControlsViewController:(id)a3 removeServiceActionItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CECD5DC(v7);
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
  v6 = sub_20CECE828(v4);

  return v6;
}

@end
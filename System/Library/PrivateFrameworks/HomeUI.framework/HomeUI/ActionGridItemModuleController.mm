@interface ActionGridItemModuleController
- (BOOL)hasDetailsActionFor:(id)for item:(id)item;
- (Class)collectionCellClassForItem:(id)item;
- (_TtC6HomeUI30ActionGridItemModuleController)initWithModule:(id)module;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment;
- (id)detailsViewControllerFor:(id)for item:(id)item;
- (id)displayedItemsInSection:(id)section;
- (id)transform:(id)transform;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)serviceActionControlsViewController:(id)controller removeServiceActionItem:(id)item;
@end

@implementation ActionGridItemModuleController

- (_TtC6HomeUI30ActionGridItemModuleController)initWithModule:(id)module
{
  *(&self->super._host + OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.isa + OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController____lazy_storage___collectionLayoutManager) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActionGridItemModuleController();
  moduleCopy = module;
  v6 = [(HUItemModuleController *)&v8 initWithModule:moduleCopy];
  *&moduleCopy[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_delegate + 8] = &off_2823CEA90;
  swift_unknownObjectWeakAssign();

  return v6;
}

- (Class)collectionCellClassForItem:(id)item
{
  if ([item conformsToProtocol_])
  {
    type metadata accessor for AccessoryTileCell();
  }

  else
  {
    sub_20CECF940(0, &qword_28111FEA0);
  }

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20CEC8764(cellCopy, itemCopy);
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment
{
  v6 = sub_20D567838();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_20CEC84A8();
  v14 = xmmword_20D5BA030;
  v15 = 2;
  sub_20CEFA3C8(v6, v8, &v14, environment);
  v12 = v11;

  swift_unknownObjectRelease();

  return v12;
}

- (BOOL)hasDetailsActionFor:(id)for item:(id)item
{
  v4 = [(HUItemModuleController *)self module:for];
  v5 = v4 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config;
  swift_beginAccess();
  LOBYTE(v5) = v5[16];

  return v5;
}

- (id)detailsViewControllerFor:(id)for item:(id)item
{
  forCopy = for;
  itemCopy = item;
  selfCopy = self;
  v9 = sub_20CEC9E68(forCopy, itemCopy);

  return v9;
}

- (void)serviceActionControlsViewController:(id)controller removeServiceActionItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  selfCopy = self;
  sub_20CECD5DC(itemCopy);
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

- (id)transform:(id)transform
{
  transformCopy = transform;
  selfCopy = self;
  v6 = sub_20CECE828(transformCopy);

  return v6;
}

@end
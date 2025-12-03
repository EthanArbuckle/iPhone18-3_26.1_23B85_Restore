@interface ActionSetContainerSummaryGridItemModuleController
- (Class)collectionCellClassForItem:(id)item;
- (_TtC6HomeUI49ActionSetContainerSummaryGridItemModuleController)initWithModule:(id)module;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment;
- (id)displayedItemsInSection:(id)section;
- (id)transform:(id)transform;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)sceneEditor:(id)editor removeActionSetBuilderFromTrigger:(id)trigger;
@end

@implementation ActionSetContainerSummaryGridItemModuleController

- (Class)collectionCellClassForItem:(id)item
{
  sub_20CECF940(0, &qword_27C81DFD0);
  if ([item isKindOfClass_])
  {
    type metadata accessor for SceneTileCell();
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
  sub_20CFA2E00(cellCopy, itemCopy);
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment
{
  v6 = sub_20D567838();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_20CFA2CCC();
  v14 = xmmword_20D5BD270;
  v15 = 0;
  sub_20CEFA3C8(v6, v8, &v14, environment);
  v12 = v11;

  swift_unknownObjectRelease();

  return v12;
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
  v6 = sub_20CFA36D0(transformCopy);

  return v6;
}

- (void)sceneEditor:(id)editor removeActionSetBuilderFromTrigger:(id)trigger
{
  editorCopy = editor;
  triggerCopy = trigger;
  selfCopy = self;
  sub_20CFA3238(editor, trigger);
}

- (_TtC6HomeUI49ActionSetContainerSummaryGridItemModuleController)initWithModule:(id)module
{
  *(&self->super.super.isa + OBJC_IVAR____TtC6HomeUI49ActionSetContainerSummaryGridItemModuleController____lazy_storage___collectionLayoutManager) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActionSetContainerSummaryGridItemModuleController();
  return [(HUItemModuleController *)&v6 initWithModule:module];
}

@end
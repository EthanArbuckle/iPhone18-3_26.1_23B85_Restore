@interface HUAccessoryListModuleController
- (BOOL)shouldShowFooterForSection:(id)section;
- (BOOL)shouldShowHeaderForSection:(id)section;
- (Class)collectionCellClassForItem:(id)item;
- (HUAccessoryListModuleController)initWithModule:(id)module;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment;
- (id)displayedItemsInSection:(id)section;
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation HUAccessoryListModuleController

- (Class)collectionCellClassForItem:(id)item
{
  sub_20CECF940(0, &unk_27C81D110);

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20CF399E8(cellCopy, itemCopy);
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment
{
  v6 = sub_20D567838();
  v8 = v7;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 2;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20CEFA3C8(v6, v8, v13, environment);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
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
  type metadata accessor for AccessoryRepresentableItemModule();
  v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);

  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v6 = *&v4[v5];

  return v6 != 0;
}

- (BOOL)shouldShowFooterForSection:(id)section
{
  module = [(HUItemModuleController *)self module];
  type metadata accessor for AccessoryRepresentableItemModule();
  v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);

  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  swift_beginAccess();
  LOBYTE(v5) = v4[v5];

  return v5;
}

- (HUAccessoryListModuleController)initWithModule:(id)module
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
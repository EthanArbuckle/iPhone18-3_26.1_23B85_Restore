@interface HUAccessoryListModuleController
- (BOOL)shouldShowFooterForSection:(id)a3;
- (BOOL)shouldShowHeaderForSection:(id)a3;
- (Class)collectionCellClassForItem:(id)a3;
- (HUAccessoryListModuleController)initWithModule:(id)a3;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4;
- (id)displayedItemsInSection:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation HUAccessoryListModuleController

- (Class)collectionCellClassForItem:(id)a3
{
  sub_20CECF940(0, &unk_27C81D110);

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CF399E8(v6, v7);
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4
{
  v6 = sub_20D567838();
  v8 = v7;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 2;
  swift_unknownObjectRetain();
  v9 = self;
  sub_20CEFA3C8(v6, v8, v13, a4);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
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
  type metadata accessor for AccessoryRepresentableItemModule();
  v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);

  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v6 = *&v4[v5];

  return v6 != 0;
}

- (BOOL)shouldShowFooterForSection:(id)a3
{
  v3 = [(HUItemModuleController *)self module];
  type metadata accessor for AccessoryRepresentableItemModule();
  v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);

  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  swift_beginAccess();
  LOBYTE(v5) = v4[v5];

  return v5;
}

- (HUAccessoryListModuleController)initWithModule:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
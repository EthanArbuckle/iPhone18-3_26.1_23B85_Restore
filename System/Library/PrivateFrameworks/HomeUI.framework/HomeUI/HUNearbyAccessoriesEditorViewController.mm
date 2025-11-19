@interface HUNearbyAccessoriesEditorViewController
- (BOOL)shouldShowHeaderForSection:(id)a3;
- (HUNearbyAccessoriesEditorViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUNearbyAccessoriesEditorViewController)initWithPrimaryAccessory:(id)a3 completionHandler:(id)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)displayedItemsInSection:(id)a3;
- (id)hu_preloadContent;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (void)cancelEditingWithSender:(id)a3;
- (void)dismissEditorWithSender:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUNearbyAccessoriesEditorViewController

- (HUNearbyAccessoriesEditorViewController)initWithPrimaryAccessory:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return NearbyAccessoriesEditorViewController.init(primaryAccessory:completionHandler:)(a3, sub_20CF79684, v6);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20CFCBA1C();
}

- (void)dismissEditorWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CFCC164();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)cancelEditingWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v8[4] = sub_20CFCF294;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20CFFFE8C;
  v8[3] = &block_descriptor_38_1;
  v6 = _Block_copy(v8);
  v7 = v4;

  [(HUNearbyAccessoriesEditorViewController *)v7 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);

  __swift_destroy_boxed_opaque_existential_1(v9);
}

- (id)hu_preloadContent
{
  v2 = self;
  v3 = sub_20CFCD6C8();

  return v3;
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_20CFCE1D8(a3, a4);
  swift_unknownObjectRelease();

  return v8;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20CFCEF1C();

  return v6;
}

- (id)displayedItemsInSection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(HUItemCollectionViewController *)v5 itemManager];
  v7 = [(HFItemManager *)v6 displayedItemsInSectionWithIdentifier:v4];

  if (!v7)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
    v7 = sub_20D567A58();
  }

  return v7;
}

- (BOOL)shouldShowHeaderForSection:(id)a3
{
  sub_20D567838();
  v4 = self;
  v5 = [(HUItemCollectionViewController *)v4 itemManager];
  v6 = sub_20D5677F8();
  v7 = [(HFItemManager *)v5 sectionIndexForDisplayedSectionIdentifier:v6];

  v8 = [(HUItemCollectionViewController *)v4 itemManager];
  v9 = [(HFItemManager *)v8 titleForSection:v7];

  if (v9)
  {
  }

  return v9 != 0;
}

- (HUNearbyAccessoriesEditorViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface HUNearbyAccessoriesEditorViewController
- (BOOL)shouldShowHeaderForSection:(id)section;
- (HUNearbyAccessoriesEditorViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUNearbyAccessoriesEditorViewController)initWithPrimaryAccessory:(id)accessory completionHandler:(id)handler;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)displayedItemsInSection:(id)section;
- (id)hu_preloadContent;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (void)cancelEditingWithSender:(id)sender;
- (void)dismissEditorWithSender:(id)sender;
- (void)viewDidLoad;
@end

@implementation HUNearbyAccessoriesEditorViewController

- (HUNearbyAccessoriesEditorViewController)initWithPrimaryAccessory:(id)accessory completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return NearbyAccessoriesEditorViewController.init(primaryAccessory:completionHandler:)(accessory, sub_20CF79684, v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CFCBA1C();
}

- (void)dismissEditorWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CFCC164();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)cancelEditingWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  v5 = swift_allocObject();
  *(v5 + 16) = selfCopy;
  v8[4] = sub_20CFCF294;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20CFFFE8C;
  v8[3] = &block_descriptor_38_1;
  v6 = _Block_copy(v8);
  v7 = selfCopy;

  [(HUNearbyAccessoriesEditorViewController *)v7 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);

  __swift_destroy_boxed_opaque_existential_1(v9);
}

- (id)hu_preloadContent
{
  selfCopy = self;
  v3 = sub_20CFCD6C8();

  return v3;
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_20CFCE1D8(section, environment);
  swift_unknownObjectRelease();

  return v8;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20CFCEF1C();

  return v6;
}

- (id)displayedItemsInSection:(id)section
{
  sectionCopy = section;
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  v7 = [(HFItemManager *)itemManager displayedItemsInSectionWithIdentifier:sectionCopy];

  if (!v7)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
    v7 = sub_20D567A58();
  }

  return v7;
}

- (BOOL)shouldShowHeaderForSection:(id)section
{
  sub_20D567838();
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  v6 = sub_20D5677F8();
  v7 = [(HFItemManager *)itemManager sectionIndexForDisplayedSectionIdentifier:v6];

  itemManager2 = [(HUItemCollectionViewController *)selfCopy itemManager];
  v9 = [(HFItemManager *)itemManager2 titleForSection:v7];

  if (v9)
  {
  }

  return v9 != 0;
}

- (HUNearbyAccessoriesEditorViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)manager
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
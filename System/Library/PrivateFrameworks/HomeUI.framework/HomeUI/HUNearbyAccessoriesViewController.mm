@interface HUNearbyAccessoriesViewController
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context;
- (BOOL)shouldShowHeaderForSection:(id)section;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUNearbyAccessoriesViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUNearbyAccessoriesViewController)initWithSourceItem:(id)item supportsQuickControls:(BOOL)controls;
- (HUPresentationDelegate)presentationDelegate;
- (id)displayedItemsInSection:(id)section;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item;
- (void)itemManagerDidFinishUpdate:(id)update;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUNearbyAccessoriesViewController

- (HUPresentationDelegate)presentationDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUNearbyAccessoriesViewController)initWithSourceItem:(id)item supportsQuickControls:(BOOL)controls
{
  itemCopy = item;
  v6 = sub_20CF3E378(itemCopy, controls);

  return v6;
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  animatedCopy = animated;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && presentation)
  {
    presentationCopy = presentation;
    selfCopy = self;
    v9 = [presentationCopy hu:-[HUControllableItemCollectionViewController controlsWantSystemPresentationAnimations](selfCopy dismissViewControllerAnimated:sel_controlsWantSystemPresentationAnimations)];

    v10 = v9;
  }

  else
  {
    v10 = [(UIViewController *)self hu_dismissViewControllerAnimated:animatedCopy];
  }

  return v10;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CF3C458();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NearbyAccessoriesViewController();
  v4 = v5.receiver;
  [(HUControllableItemCollectionViewController *)&v5 viewDidAppear:appearCopy];
  sub_20CF3D0D8();
}

- (void)updateViewConstraints
{
  selfCopy = self;
  sub_20CF3C944();
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_20CF3D4A4(section, environment);
  swift_unknownObjectRelease();

  return v8;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  v5 = sub_20D5638C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  conformsToProtocol_ = [item conformsToProtocol_];
  (*(v6 + 8))(v8, v5);
  if (conformsToProtocol_)
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
  sub_20CF3D760(cellCopy, itemCopy);
}

- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for NearbyAccessoriesViewController();
  managerCopy = manager;
  itemCopy = item;
  v8 = v9.receiver;
  [(HUItemCollectionViewController *)&v9 itemManager:managerCopy didUpdateResultsForSourceItem:itemCopy];
  sub_20CF3D0D8();
}

- (void)itemManagerDidFinishUpdate:(id)update
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for NearbyAccessoriesViewController();
  updateCopy = update;
  v5 = v9.receiver;
  [(HUItemCollectionViewController *)&v9 itemManagerDidFinishUpdate:updateCopy];
  v6 = &v5[OBJC_IVAR___HUNearbyAccessoriesViewController_nearbyAccessoriesDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v5, ObjectType, v7);
    swift_unknownObjectRelease();
  }
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

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for NearbyAccessoriesViewController();
  v6 = v9.receiver;
  if ([(HUControllableItemCollectionViewController *)&v9 presentationCoordinator:coordinator shouldBeginPresentationWithContext:context])
  {
    v7 = v6[OBJC_IVAR___HUNearbyAccessoriesViewController_supportsQuickControls];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HUNearbyAccessoriesViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
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
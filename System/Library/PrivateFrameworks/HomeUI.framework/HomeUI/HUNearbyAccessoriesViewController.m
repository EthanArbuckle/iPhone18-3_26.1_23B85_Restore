@interface HUNearbyAccessoriesViewController
- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4;
- (BOOL)shouldShowHeaderForSection:(id)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUNearbyAccessoriesViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUNearbyAccessoriesViewController)initWithSourceItem:(id)a3 supportsQuickControls:(BOOL)a4;
- (HUPresentationDelegate)presentationDelegate;
- (id)displayedItemsInSection:(id)a3;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4;
- (void)itemManagerDidFinishUpdate:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUNearbyAccessoriesViewController

- (HUPresentationDelegate)presentationDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUNearbyAccessoriesViewController)initWithSourceItem:(id)a3 supportsQuickControls:(BOOL)a4
{
  v5 = a3;
  v6 = sub_20CF3E378(v5, a4);

  return v6;
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a3)
  {
    v7 = a3;
    v8 = self;
    v9 = [v7 hu:-[HUControllableItemCollectionViewController controlsWantSystemPresentationAnimations](v8 dismissViewControllerAnimated:sel_controlsWantSystemPresentationAnimations)];

    v10 = v9;
  }

  else
  {
    v10 = [(UIViewController *)self hu_dismissViewControllerAnimated:v4];
  }

  return v10;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20CF3C458();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NearbyAccessoriesViewController();
  v4 = v5.receiver;
  [(HUControllableItemCollectionViewController *)&v5 viewDidAppear:v3];
  sub_20CF3D0D8();
}

- (void)updateViewConstraints
{
  v2 = self;
  sub_20CF3C944();
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_20CF3D4A4(a3, a4);
  swift_unknownObjectRelease();

  return v8;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = sub_20D5638C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v9 = [a3 conformsToProtocol_];
  (*(v6 + 8))(v8, v5);
  if (v9)
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
  sub_20CF3D760(v6, v7);
}

- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for NearbyAccessoriesViewController();
  v6 = a3;
  v7 = a4;
  v8 = v9.receiver;
  [(HUItemCollectionViewController *)&v9 itemManager:v6 didUpdateResultsForSourceItem:v7];
  sub_20CF3D0D8();
}

- (void)itemManagerDidFinishUpdate:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for NearbyAccessoriesViewController();
  v4 = a3;
  v5 = v9.receiver;
  [(HUItemCollectionViewController *)&v9 itemManagerDidFinishUpdate:v4];
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

- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for NearbyAccessoriesViewController();
  v6 = v9.receiver;
  if ([(HUControllableItemCollectionViewController *)&v9 presentationCoordinator:a3 shouldBeginPresentationWithContext:a4])
  {
    v7 = v6[OBJC_IVAR___HUNearbyAccessoriesViewController_supportsQuickControls];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HUNearbyAccessoriesViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
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
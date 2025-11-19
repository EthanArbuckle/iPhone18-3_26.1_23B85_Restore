@interface HUContainedAccessoryElementsGridViewController
- (BOOL)hasDetailsActionForPresentationCoordinator:(id)a3 item:(id)a4;
- (BOOL)requiresPresentingViewControllerDismissal;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HFMediaAccessoryItem)mediaItem;
- (HUContainedAccessoryElementsGridViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUContainedAccessoryElementsGridViewController)initWithServiceContainingItem:(id)a3 mediaItem:(id)a4 isPresentedModally:(BOOL)a5 shouldGroupByRoom:(BOOL)a6 valueSource:(id)a7;
- (HUContainedAccessoryElementsGridViewControllerDelegate)serviceGridDelegate;
- (HUPresentationDelegate)presentationDelegate;
- (HUServiceContainerItem)serviceContainingItem;
- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4;
- (id)displayedItemsInSection:(id)a3;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)a3 tileItem:(HFItem *)a4 completionHandler:(id)a5;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)doneWithSender:(id)a3;
- (void)editWithSender:(id)a3;
- (void)itemManagerDidUpdate:(id)a3;
- (void)setPresentationDelegate:(id)a3;
- (void)setRequiresPresentingViewControllerDismissal:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HUContainedAccessoryElementsGridViewController

- (BOOL)requiresPresentingViewControllerDismissal
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequiresPresentingViewControllerDismissal:(BOOL)a3
{
  v5 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (HUPresentationDelegate)presentationDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPresentationDelegate:(id)a3
{
  v5 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_presentationDelegate;
  swift_beginAccess();
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (HUServiceContainerItem)serviceContainingItem
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_serviceContainingItem;
  swift_beginAccess();
  return *(self + v3);
}

- (HFMediaAccessoryItem)mediaItem
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_mediaItem;
  swift_beginAccess();
  return *(self + v3);
}

- (HUContainedAccessoryElementsGridViewControllerDelegate)serviceGridDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUContainedAccessoryElementsGridViewController)initWithServiceContainingItem:(id)a3 mediaItem:(id)a4 isPresentedModally:(BOOL)a5 shouldGroupByRoom:(BOOL)a6 valueSource:(id)a7
{
  v12 = a3;
  v13 = a4;
  swift_unknownObjectRetain();
  return ContainedAccessoryElementsGridViewController.init(serviceContainingItem:mediaItem:isPresentedModally:shouldGroupByRoom:valueSource:)(a3, a4, a5, a6, a7);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ContainedAccessoryElementsGridViewController();
  v2 = v6.receiver;
  [(HUControllableItemCollectionViewController *)&v6 viewDidLoad];
  v3 = [v2 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemGroupedBackgroundColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v17 = &unk_28251AC90;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    type metadata accessor for AccessoryTileCell();
  }

  else
  {
    v10 = a3;
    v11 = self;
    v12 = sub_20D563868();
    v13 = type metadata accessor for ContainedAccessoryElementsGridViewController();
    v16.receiver = v11;
    v16.super_class = v13;
    [(HUItemCollectionViewController *)&v16 cellClassForItem:v10 indexPath:v12];

    swift_getObjCClassMetadata();
  }

  (*(v7 + 8))(v9, v6);
  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D05E5C8(v6, v7);
}

- (void)itemManagerDidUpdate:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ContainedAccessoryElementsGridViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(HUItemCollectionViewController *)&v6 itemManagerDidUpdate:v4];
  sub_20D05E9CC();
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_20D05EC60(a3, a4);
  swift_unknownObjectRelease();

  return v8;
}

- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)a3 tileItem:(HFItem *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20D567C58();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20D5C6C28;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20D5C5200;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_20D11C1C8(0, 0, v11, &unk_20D5BCD00, v16);
}

- (BOOL)hasDetailsActionForPresentationCoordinator:(id)a3 item:(id)a4
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  if ([Strong respondsToSelector_])
  {
    v8 = [v7 hasDetailsActionFor:self item:a4];
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectRelease();
  return v8;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_20D06159C(v7);

  return v9;
}

- (HUContainedAccessoryElementsGridViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
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

- (id)displayedItemsInSection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(HUItemCollectionViewController *)v5 itemManager];
  v7 = [(HUItemCollectionViewController *)v5 itemManager];
  v8 = [(HFItemManager *)v7 sectionIndexForDisplayedSectionIdentifier:v4];

  v9 = [(HFItemManager *)v6 displayedItemsInSection:v8];
  if (!v9)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
    v9 = sub_20D567A58();
  }

  return v9;
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = ContainedAccessoryElementsGridViewController.finishPresentation(_:animated:)(v6, a4);

  return v8;
}

- (void)doneWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_presentationDelegate;
  swift_beginAccess();
  if (*(v4 + v5))
  {
    v6 = [swift_unknownObjectRetain() finishPresentation:v4 animated:1];

    swift_unknownObjectRelease();
    v4 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
}

- (void)editWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20D05F9A8();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

@end
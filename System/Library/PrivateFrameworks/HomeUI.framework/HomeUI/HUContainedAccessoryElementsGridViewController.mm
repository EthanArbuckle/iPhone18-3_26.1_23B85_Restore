@interface HUContainedAccessoryElementsGridViewController
- (BOOL)hasDetailsActionForPresentationCoordinator:(id)coordinator item:(id)item;
- (BOOL)requiresPresentingViewControllerDismissal;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HFMediaAccessoryItem)mediaItem;
- (HUContainedAccessoryElementsGridViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUContainedAccessoryElementsGridViewController)initWithServiceContainingItem:(id)item mediaItem:(id)mediaItem isPresentedModally:(BOOL)modally shouldGroupByRoom:(BOOL)room valueSource:(id)source;
- (HUContainedAccessoryElementsGridViewControllerDelegate)serviceGridDelegate;
- (HUPresentationDelegate)presentationDelegate;
- (HUServiceContainerItem)serviceContainingItem;
- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item;
- (id)displayedItemsInSection:(id)section;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)doneWithSender:(id)sender;
- (void)editWithSender:(id)sender;
- (void)itemManagerDidUpdate:(id)update;
- (void)setPresentationDelegate:(id)delegate;
- (void)setRequiresPresentingViewControllerDismissal:(BOOL)dismissal;
- (void)viewDidLoad;
@end

@implementation HUContainedAccessoryElementsGridViewController

- (BOOL)requiresPresentingViewControllerDismissal
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequiresPresentingViewControllerDismissal:(BOOL)dismissal
{
  v5 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  *(self + v5) = dismissal;
}

- (HUPresentationDelegate)presentationDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPresentationDelegate:(id)delegate
{
  v5 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_presentationDelegate;
  swift_beginAccess();
  *(self + v5) = delegate;
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

- (HUContainedAccessoryElementsGridViewController)initWithServiceContainingItem:(id)item mediaItem:(id)mediaItem isPresentedModally:(BOOL)modally shouldGroupByRoom:(BOOL)room valueSource:(id)source
{
  itemCopy = item;
  mediaItemCopy = mediaItem;
  swift_unknownObjectRetain();
  return ContainedAccessoryElementsGridViewController.init(serviceContainingItem:mediaItem:isPresentedModally:shouldGroupByRoom:valueSource:)(item, mediaItem, modally, room, source);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ContainedAccessoryElementsGridViewController();
  v2 = v6.receiver;
  [(HUControllableItemCollectionViewController *)&v6 viewDidLoad];
  collectionView = [v2 collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    systemGroupedBackgroundColor = [objc_opt_self() systemGroupedBackgroundColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
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
    itemCopy = item;
    selfCopy = self;
    v12 = sub_20D563868();
    v13 = type metadata accessor for ContainedAccessoryElementsGridViewController();
    v16.receiver = selfCopy;
    v16.super_class = v13;
    [(HUItemCollectionViewController *)&v16 cellClassForItem:itemCopy indexPath:v12];

    swift_getObjCClassMetadata();
  }

  (*(v7 + 8))(v9, v6);
  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20D05E5C8(cellCopy, itemCopy);
}

- (void)itemManagerDidUpdate:(id)update
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ContainedAccessoryElementsGridViewController();
  updateCopy = update;
  v5 = v6.receiver;
  [(HUItemCollectionViewController *)&v6 itemManagerDidUpdate:updateCopy];
  sub_20D05E9CC();
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_20D05EC60(section, environment);
  swift_unknownObjectRelease();

  return v8;
}

- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = item;
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
  forCopy = for;
  itemCopy = item;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v11, &unk_20D5BCD00, v16);
}

- (BOOL)hasDetailsActionForPresentationCoordinator:(id)coordinator item:(id)item
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
    v8 = [v7 hasDetailsActionFor:self item:item];
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectRelease();
  return v8;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item
{
  coordinatorCopy = coordinator;
  itemCopy = item;
  selfCopy = self;
  v9 = sub_20D06159C(itemCopy);

  return v9;
}

- (HUContainedAccessoryElementsGridViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
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

- (id)displayedItemsInSection:(id)section
{
  sectionCopy = section;
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  itemManager2 = [(HUItemCollectionViewController *)selfCopy itemManager];
  v8 = [(HFItemManager *)itemManager2 sectionIndexForDisplayedSectionIdentifier:sectionCopy];

  v9 = [(HFItemManager *)itemManager displayedItemsInSection:v8];
  if (!v9)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
    v9 = sub_20D567A58();
  }

  return v9;
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  presentationCopy = presentation;
  selfCopy = self;
  v8 = ContainedAccessoryElementsGridViewController.finishPresentation(_:animated:)(presentationCopy, animated);

  return v8;
}

- (void)doneWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_presentationDelegate;
  swift_beginAccess();
  if (*(selfCopy + v5))
  {
    v6 = [swift_unknownObjectRetain() finishPresentation:selfCopy animated:1];

    swift_unknownObjectRelease();
    selfCopy = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
}

- (void)editWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20D05F9A8();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

@end
@interface HUStatusDetailsViewController
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUStatusDetailsViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUStatusDetailsViewController)initWithStatusItem:(id)item delegate:(id)delegate;
- (HUStatusDetailsViewControllerDelegate)statusDetailsDelegate;
- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item;
- (id)displayedItemsInSection:(id)section;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (id)prepareToPerformToggleActionForItem:(id)item sourceItem:(id)sourceItem;
- (id)transform:(id)transform;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)doneButtonPressed:(id)pressed;
- (void)presentationCoordinator:(id)coordinator willBeginPresentationWithContext:(id)context;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation HUStatusDetailsViewController

- (HUStatusDetailsViewControllerDelegate)statusDetailsDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUStatusDetailsViewController)initWithStatusItem:(id)item delegate:(id)delegate
{
  itemCopy = item;
  swift_unknownObjectRetain();
  return StatusDetailsViewController.init(statusItem:delegate:)(itemCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20D119C10();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StatusDetailsViewController();
  v4 = v5.receiver;
  [(HUControllableItemCollectionViewController *)&v5 viewDidAppear:appearCopy];
  [objc_opt_self() sendEvent_];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for StatusDetailsViewController();
  v4 = v6.receiver;
  [(HUControllableItemCollectionViewController *)&v6 viewDidDisappear:disappearCopy];
  itemManager = [v4 itemManager];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() resetItemPrioritiesToDefaults];
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  v4 = [(UIViewController *)self hu_dismissViewControllerAnimated:animated];

  return v4;
}

- (void)doneButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_20D11C4B4();
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view
{
  y = location.y;
  x = location.x;
  coordinatorCopy = coordinator;
  viewCopy = view;
  selfCopy = self;
  v12 = sub_20D11A01C(coordinatorCopy, viewCopy, x, y);

  return v12 & 1;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item
{
  v5 = swift_dynamicCastObjCProtocolUnconditional();
  itemCopy = item;
  result = _s6HomeUI22AccessoryDetailsRouterC11detailsView3for20navigationController7dismissSo33HUDetailsPresentationDelegateHost_So06UIViewJ0CXcSgSo6HFItemC_So012UINavigationJ0CSgyycSgtFZ_0(v5, 0, 0, 0);
  if (result)
  {
    v8 = result;

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  itemCopy = item;
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  objc_opt_self();
  shouldUseTitleDescriptionStyleForItem_ = [swift_dynamicCastObjCClassUnconditional() shouldUseTitleDescriptionStyleForItem_];

  (*(v7 + 8))(v9, v6);
  if (shouldUseTitleDescriptionStyleForItem_)
  {
    sub_20CECF940(0, &unk_27C821B08);
  }

  else
  {
    type metadata accessor for AccessoryTileCell();
  }

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20D11A518(cellCopy, itemCopy);
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_20D11ACA0(section, environment);
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
  v15[4] = &unk_20D5CA248;
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

- (id)prepareToPerformToggleActionForItem:(id)item sourceItem:(id)sourceItem
{
  itemCopy = item;
  sourceItemCopy = sourceItem;
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() maintainMinimumPriorityForItem_];

  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for StatusDetailsViewController();
  v10 = [(HUControllableItemCollectionViewController *)&v12 prepareToPerformToggleActionForItem:itemCopy sourceItem:sourceItemCopy];

  return v10;
}

- (void)presentationCoordinator:(id)coordinator willBeginPresentationWithContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  item = [contextCopy item];
  [v10 maintainMinimumPriorityForItem_];

  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for StatusDetailsViewController();
  [(HUControllableItemCollectionViewController *)&v12 presentationCoordinator:coordinatorCopy willBeginPresentationWithContext:contextCopy];
}

- (HUStatusDetailsViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
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
  v7 = [(HFItemManager *)itemManager displayedItemsInSectionWithIdentifier:sectionCopy];

  if (!v7)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
    v7 = sub_20D567A58();
  }

  return v7;
}

- (id)transform:(id)transform
{
  transformCopy = transform;
  [transformCopy setSectionTopMargin_];

  return transformCopy;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v9 = sub_20D5636B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563698();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(interaction) = sub_20D11C654(v12, interaction);

  (*(v10 + 8))(v12, v9);
  return interaction & 1;
}

@end
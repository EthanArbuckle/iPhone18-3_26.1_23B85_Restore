@interface HUStatusDetailsViewController
- (BOOL)presentationCoordinator:(id)a3 shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)a4 view:(id)a5;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUStatusDetailsViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUStatusDetailsViewController)initWithStatusItem:(id)a3 delegate:(id)a4;
- (HUStatusDetailsViewControllerDelegate)statusDetailsDelegate;
- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4;
- (id)displayedItemsInSection:(id)a3;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)prepareToPerformToggleActionForItem:(id)a3 sourceItem:(id)a4;
- (id)transform:(id)a3;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)a3 tileItem:(HFItem *)a4 completionHandler:(id)a5;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)doneButtonPressed:(id)a3;
- (void)presentationCoordinator:(id)a3 willBeginPresentationWithContext:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HUStatusDetailsViewController

- (HUStatusDetailsViewControllerDelegate)statusDetailsDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUStatusDetailsViewController)initWithStatusItem:(id)a3 delegate:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  return StatusDetailsViewController.init(statusItem:delegate:)(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20D119C10();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StatusDetailsViewController();
  v4 = v5.receiver;
  [(HUControllableItemCollectionViewController *)&v5 viewDidAppear:v3];
  [objc_opt_self() sendEvent_];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for StatusDetailsViewController();
  v4 = v6.receiver;
  [(HUControllableItemCollectionViewController *)&v6 viewDidDisappear:v3];
  v5 = [v4 itemManager];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() resetItemPrioritiesToDefaults];
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = [(UIViewController *)self hu_dismissViewControllerAnimated:a4];

  return v4;
}

- (void)doneButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D11C4B4();
}

- (BOOL)presentationCoordinator:(id)a3 shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)a4 view:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = self;
  v12 = sub_20D11A01C(v9, v10, x, y);

  return v12 & 1;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4
{
  v5 = swift_dynamicCastObjCProtocolUnconditional();
  v6 = a4;
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

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v10 = a3;
  v11 = self;
  v12 = [(HUItemCollectionViewController *)v11 itemManager];
  objc_opt_self();
  v13 = [swift_dynamicCastObjCClassUnconditional() shouldUseTitleDescriptionStyleForItem_];

  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    sub_20CECF940(0, &unk_27C821B08);
  }

  else
  {
    type metadata accessor for AccessoryTileCell();
  }

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D11A518(v6, v7);
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_20D11ACA0(a3, a4);
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
  v15[4] = &unk_20D5CA248;
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

- (id)prepareToPerformToggleActionForItem:(id)a3 sourceItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [(HUItemCollectionViewController *)v8 itemManager];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() maintainMinimumPriorityForItem_];

  v12.receiver = v8;
  v12.super_class = type metadata accessor for StatusDetailsViewController();
  v10 = [(HUControllableItemCollectionViewController *)&v12 prepareToPerformToggleActionForItem:v6 sourceItem:v7];

  return v10;
}

- (void)presentationCoordinator:(id)a3 willBeginPresentationWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [(HUItemCollectionViewController *)v8 itemManager];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [v7 item];
  [v10 maintainMinimumPriorityForItem_];

  v12.receiver = v8;
  v12.super_class = type metadata accessor for StatusDetailsViewController();
  [(HUControllableItemCollectionViewController *)&v12 presentationCoordinator:v6 willBeginPresentationWithContext:v7];
}

- (HUStatusDetailsViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
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
  v7 = [(HFItemManager *)v6 displayedItemsInSectionWithIdentifier:v4];

  if (!v7)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
    v7 = sub_20D567A58();
  }

  return v7;
}

- (id)transform:(id)a3
{
  v3 = a3;
  [v3 setSectionTopMargin_];

  return v3;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v9 = sub_20D5636B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563698();
  v13 = a3;
  v14 = self;
  LOBYTE(a6) = sub_20D11C654(v12, a6);

  (*(v10 + 8))(v12, v9);
  return a6 & 1;
}

@end
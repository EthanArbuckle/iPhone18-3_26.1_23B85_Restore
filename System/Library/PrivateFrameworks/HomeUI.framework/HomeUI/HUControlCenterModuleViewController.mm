@interface HUControlCenterModuleViewController
- (BOOL)accessAllowedForCurrentLockState;
- (BOOL)allowsCharacteristicNotifications;
- (BOOL)canDismissPresentedContent;
- (BOOL)canReorderItemAtIndexPath:(id)a3;
- (BOOL)interpretsLocationAsContent:(CGPoint)a3 inView:(id)a4;
- (BOOL)presentationCoordinator:(id)a3 shouldBeginLongPressPresentationWithContext:(id)a4;
- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4;
- (CCUIModuleContentMetrics)contentMetrics;
- (CGSize)overrideContentSize;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUControlCenterModuleViewController)initWithDelegate:(id)a3 ofKind:(int64_t)a4 itemManager:(id)a5 withPreviews:(id)a6;
- (HUControlCenterModuleViewController)initWithDelegate:(id)a3 ofKind:(int64_t)a4 withPreviews:(id)a5;
- (HUControlCenterModuleViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUControlCenterModuleViewControllerDelegate)delegate;
- (INIntent)defaultConfigurationIntent;
- (NSArray)containerViewsForPlatterTreatment;
- (double)compactContinuousCornerRadius;
- (double)preferredExpandedContentHeight;
- (double)preferredExpandedContentWidth;
- (id)displayedItemsInSection:(id)a3;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)prepareToPerformToggleActionForItem:(id)a3 sourceItem:(id)a4;
- (id)presentAccessoryControlsForItem:(id)a3;
- (id)presentationCoordinator:(id)a3 contextForPresentationAtPoint:(CGPoint)a4;
- (id)transform:(id)a3;
- (int64_t)gridSizeClass;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)a3 tileItem:(HFItem *)a4 completionHandler:(id)a5;
- (void)applyGridSizeClass:(int64_t)a3 completionBlock:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)dealloc;
- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4;
- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5;
- (void)itemManagerDidUpdate:(id)a3;
- (void)performBatchCollectionViewUpdatesForUpdateRequest:(id)a3 reloadOnly:(BOOL)a4;
- (void)presentationCoordinatorSendTileInteractionEventOfType:(unint64_t)a3 withPresentationContext:(id)a4 presentationCoordinator:(id)a5;
- (void)setAccessAllowedForCurrentLockState:(BOOL)a3;
- (void)setAllowsCharacteristicNotifications:(BOOL)a3;
- (void)setCompactContinuousCornerRadius:(double)a3;
- (void)setConfigurationIntent:(id)a3;
- (void)setContentMetrics:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setGridSizeClass:(int64_t)a3;
- (void)setSupplementalView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDismissWithViewController:(id)a3;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
@end

@implementation HUControlCenterModuleViewController

- (HUControlCenterModuleViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)allowsCharacteristicNotifications
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_allowsCharacteristicNotifications;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsCharacteristicNotifications:(BOOL)a3
{
  v5 = OBJC_IVAR___HUControlCenterModuleViewController_allowsCharacteristicNotifications;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)accessAllowedForCurrentLockState
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_accessAllowedForCurrentLockState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAccessAllowedForCurrentLockState:(BOOL)a3
{
  v4 = self;
  HUControlCenterModuleViewController.accessAllowedForCurrentLockState.setter(a3);
}

- (HUControlCenterModuleViewController)initWithDelegate:(id)a3 ofKind:(int64_t)a4 itemManager:(id)a5 withPreviews:(id)a6
{
  v6 = a6;
  if (a6)
  {
    type metadata accessor for HUControlCenterModulePreview(0);
    v6 = sub_20D567A78();
  }

  swift_unknownObjectRetain();
  return HUControlCenterModuleViewController.init(delegate:of:itemManager:with:)(a3, a4, a5, v6);
}

- (HUControlCenterModuleViewController)initWithDelegate:(id)a3 ofKind:(int64_t)a4 withPreviews:(id)a5
{
  v5 = a5;
  if (a5)
  {
    type metadata accessor for HUControlCenterModulePreview(0);
    v5 = sub_20D567A78();
  }

  v7 = swift_unknownObjectRetain();
  v8 = sub_20D0465E4(v7, a4, v5);
  swift_unknownObjectRelease();
  return v8;
}

- (void)viewDidLoad
{
  v2 = self;
  HUControlCenterModuleViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  HUControlCenterModuleViewController.viewWillAppear(_:)(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  HUControlCenterModuleViewController.viewIsAppearing(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  HUControlCenterModuleViewController.viewDidDisappear(_:)(a3);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedDispatcher];
  [v5 removeHomeManagerObserver_];

  v6.receiver = v4;
  v6.super_class = HUControlCenterModuleViewController;
  [(HUControlCenterModuleViewController *)&v6 dealloc];
}

- (void)setSupplementalView:(id)a3
{
  v6 = *(self + OBJC_IVAR___HUControlCenterModuleViewController_supplementalView);
  *(self + OBJC_IVAR___HUControlCenterModuleViewController_supplementalView) = a3;
  v4 = a3;
  v5 = self;
  sub_20D03BC30(v6);
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v10 = a3;
  v11 = self;
  HUControlCenterModuleViewController.cellClass(for:indexPath:)(v10, v9);

  (*(v7 + 8))(v9, v6);
  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  HUControlCenterModuleViewController.configureCell(_:for:)(v6, v7);
}

- (void)performBatchCollectionViewUpdatesForUpdateRequest:(id)a3 reloadOnly:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  HUControlCenterModuleViewController.performBatchCollectionViewUpdates(for:reloadOnly:)(v6, a4);
}

- (BOOL)canReorderItemAtIndexPath:(id)a3
{
  v3 = sub_20D5638C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  (*(v4 + 8))(v6, v3);
  return 0;
}

- (void)itemManagerDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  HUControlCenterModuleViewController.itemManagerDidUpdate(_:)(v4);
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = HUControlCenterModuleViewController.layoutSection(forSection:layoutEnvironment:)(a3, a4);
  swift_unknownObjectRelease();

  return v8;
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

- (CGSize)overrideContentSize
{
  v2 = self;
  v3 = HUControlCenterModuleViewController.overrideContentSize()();

  width = v3.width;
  height = v3.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)transform:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20D046A6C(v4);

  return v6;
}

- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = HUControlCenterModuleViewController.presentationCoordinator(_:shouldBeginPresentationWith:)(v6, v7);

  return v9;
}

- (BOOL)presentationCoordinator:(id)a3 shouldBeginLongPressPresentationWithContext:(id)a4
{
  v4 = [a4 item];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass() == 0;

  return v5;
}

- (id)presentationCoordinator:(id)a3 contextForPresentationAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  HUControlCenterModuleViewController.presentationCoordinator(_:contextForPresentationAt:)(v9, v7, __PAIR128__(*&y, *&x));
  v11 = v10;

  return v11;
}

- (id)prepareToPerformToggleActionForItem:(id)a3 sourceItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = HUControlCenterModuleViewController.prepareToPerformToggleAction(for:sourceItem:)(v6, v7);

  return v9;
}

- (void)presentationCoordinatorSendTileInteractionEventOfType:(unint64_t)a3 withPresentationContext:(id)a4 presentationCoordinator:(id)a5
{
  v10 = a4;
  v7 = self;
  v8 = [v10 item];
  v9 = [v10 tappedArea];
  sub_20D0C6B88(v8, a3, v9);
}

- (INIntent)defaultConfigurationIntent
{
  v2 = self;
  v3 = HUControlCenterModuleViewController.defaultConfigurationIntent.getter();

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  HUControlCenterModuleViewController.setEditing(_:animated:)(a3, a4);
}

- (void)setConfigurationIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  HUControlCenterModuleViewController.setConfigurationIntent(_:)(v4);
}

- (double)preferredExpandedContentHeight
{
  CCUIScreenBounds();
  CGRectGetWidth(v5);
  CCUIScreenBounds();
  CGRectGetHeight(v6);
  CGSizeMake(v2);
  return v3;
}

- (double)preferredExpandedContentWidth
{
  CCUIScreenBounds();
  CGRectGetWidth(v5);
  CCUIScreenBounds();
  CGRectGetHeight(v6);

  CGSizeMake(v2);
  return result;
}

- (NSArray)containerViewsForPlatterTreatment
{
  v2 = self;
  v3 = HUControlCenterModuleViewController.containerViewsForPlatterTreatment.getter();

  if (v3)
  {
    sub_20CECF940(0, &qword_28111FB70);
    v4 = sub_20D567A58();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v4 = self;
  HUControlCenterModuleViewController.willTransition(toExpandedContentMode:)(a3);
}

- (BOOL)interpretsLocationAsContent:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  LOBYTE(self) = HUControlCenterModuleViewController.interpretsLocationAsContent(_:in:)(__PAIR128__(*&y, *&x), v7);

  return self & 1;
}

- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_20CF79684;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  HUControlCenterModuleViewController.dismissPresentedContent(animated:completion:)(v4, v6, v7);
  sub_20CEC8164(v6);
}

- (BOOL)canDismissPresentedContent
{
  if (*(self + OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController))
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [(HUControlCenterModuleViewController *)self presentedViewController:v2];
    if (v4)
    {

      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (double)compactContinuousCornerRadius
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCompactContinuousCornerRadius:(double)a3
{
  v5 = OBJC_IVAR___HUControlCenterModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = self;
  sub_20D041FF8(v6);
}

- (CCUIModuleContentMetrics)contentMetrics
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_contentMetrics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentMetrics:(id)a3
{
  v5 = OBJC_IVAR___HUControlCenterModuleViewController_contentMetrics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  v4 = self;
  HUControlCenterModuleViewController.contentRenderingMode.setter(a3);
}

- (int64_t)gridSizeClass
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_gridSizeClass;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGridSizeClass:(int64_t)a3
{
  v5 = OBJC_IVAR___HUControlCenterModuleViewController_gridSizeClass;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_20D04283C();
}

- (void)applyGridSizeClass:(int64_t)a3 completionBlock:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20D567C58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20D5C5520;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20D5C5528;
  v14[5] = v13;
  v15 = self;
  sub_20D11C1C8(0, 0, v9, &unk_20D5C5530, v14);
}

- (id)presentAccessoryControlsForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = HUControlCenterModuleViewController.presentAccessoryControls(for:)(v4);

  return v6;
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
  v15[4] = &unk_20D5C5510;
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

- (void)willDismissWithViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  HUControlCenterModuleViewController.willDismiss(viewController:)(v4);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  HUControlCenterModuleViewController.viewWillTransition(to:with:)(a4);
  swift_unknownObjectRelease();
}

- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_20D046FD0(a5);
}

- (HUControlCenterModuleViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
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
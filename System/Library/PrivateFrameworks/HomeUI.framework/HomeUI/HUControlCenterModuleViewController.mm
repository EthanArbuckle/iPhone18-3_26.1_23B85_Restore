@interface HUControlCenterModuleViewController
- (BOOL)accessAllowedForCurrentLockState;
- (BOOL)allowsCharacteristicNotifications;
- (BOOL)canDismissPresentedContent;
- (BOOL)canReorderItemAtIndexPath:(id)path;
- (BOOL)interpretsLocationAsContent:(CGPoint)content inView:(id)view;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginLongPressPresentationWithContext:(id)context;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context;
- (CCUIModuleContentMetrics)contentMetrics;
- (CGSize)overrideContentSize;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUControlCenterModuleViewController)initWithDelegate:(id)delegate ofKind:(int64_t)kind itemManager:(id)manager withPreviews:(id)previews;
- (HUControlCenterModuleViewController)initWithDelegate:(id)delegate ofKind:(int64_t)kind withPreviews:(id)previews;
- (HUControlCenterModuleViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUControlCenterModuleViewControllerDelegate)delegate;
- (INIntent)defaultConfigurationIntent;
- (NSArray)containerViewsForPlatterTreatment;
- (double)compactContinuousCornerRadius;
- (double)preferredExpandedContentHeight;
- (double)preferredExpandedContentWidth;
- (id)displayedItemsInSection:(id)section;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (id)prepareToPerformToggleActionForItem:(id)item sourceItem:(id)sourceItem;
- (id)presentAccessoryControlsForItem:(id)item;
- (id)presentationCoordinator:(id)coordinator contextForPresentationAtPoint:(CGPoint)point;
- (id)transform:(id)transform;
- (int64_t)gridSizeClass;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler;
- (void)applyGridSizeClass:(int64_t)class completionBlock:(id)block;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)dealloc;
- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home;
- (void)itemManagerDidUpdate:(id)update;
- (void)performBatchCollectionViewUpdatesForUpdateRequest:(id)request reloadOnly:(BOOL)only;
- (void)presentationCoordinatorSendTileInteractionEventOfType:(unint64_t)type withPresentationContext:(id)context presentationCoordinator:(id)coordinator;
- (void)setAccessAllowedForCurrentLockState:(BOOL)state;
- (void)setAllowsCharacteristicNotifications:(BOOL)notifications;
- (void)setCompactContinuousCornerRadius:(double)radius;
- (void)setConfigurationIntent:(id)intent;
- (void)setContentMetrics:(id)metrics;
- (void)setContentRenderingMode:(unint64_t)mode;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setGridSizeClass:(int64_t)class;
- (void)setSupplementalView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDismissWithViewController:(id)controller;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
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

- (void)setAllowsCharacteristicNotifications:(BOOL)notifications
{
  v5 = OBJC_IVAR___HUControlCenterModuleViewController_allowsCharacteristicNotifications;
  swift_beginAccess();
  *(self + v5) = notifications;
}

- (BOOL)accessAllowedForCurrentLockState
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_accessAllowedForCurrentLockState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAccessAllowedForCurrentLockState:(BOOL)state
{
  selfCopy = self;
  HUControlCenterModuleViewController.accessAllowedForCurrentLockState.setter(state);
}

- (HUControlCenterModuleViewController)initWithDelegate:(id)delegate ofKind:(int64_t)kind itemManager:(id)manager withPreviews:(id)previews
{
  previewsCopy = previews;
  if (previews)
  {
    type metadata accessor for HUControlCenterModulePreview(0);
    previewsCopy = sub_20D567A78();
  }

  swift_unknownObjectRetain();
  return HUControlCenterModuleViewController.init(delegate:of:itemManager:with:)(delegate, kind, manager, previewsCopy);
}

- (HUControlCenterModuleViewController)initWithDelegate:(id)delegate ofKind:(int64_t)kind withPreviews:(id)previews
{
  previewsCopy = previews;
  if (previews)
  {
    type metadata accessor for HUControlCenterModulePreview(0);
    previewsCopy = sub_20D567A78();
  }

  v7 = swift_unknownObjectRetain();
  v8 = sub_20D0465E4(v7, kind, previewsCopy);
  swift_unknownObjectRelease();
  return v8;
}

- (void)viewDidLoad
{
  selfCopy = self;
  HUControlCenterModuleViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  HUControlCenterModuleViewController.viewWillAppear(_:)(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  HUControlCenterModuleViewController.viewIsAppearing(_:)(appearing);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  HUControlCenterModuleViewController.viewDidDisappear(_:)(disappear);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedDispatcher = [v3 sharedDispatcher];
  [sharedDispatcher removeHomeManagerObserver_];

  v6.receiver = selfCopy;
  v6.super_class = HUControlCenterModuleViewController;
  [(HUControlCenterModuleViewController *)&v6 dealloc];
}

- (void)setSupplementalView:(id)view
{
  v6 = *(self + OBJC_IVAR___HUControlCenterModuleViewController_supplementalView);
  *(self + OBJC_IVAR___HUControlCenterModuleViewController_supplementalView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_20D03BC30(v6);
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  itemCopy = item;
  selfCopy = self;
  HUControlCenterModuleViewController.cellClass(for:indexPath:)(itemCopy, v9);

  (*(v7 + 8))(v9, v6);
  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  HUControlCenterModuleViewController.configureCell(_:for:)(cellCopy, itemCopy);
}

- (void)performBatchCollectionViewUpdatesForUpdateRequest:(id)request reloadOnly:(BOOL)only
{
  requestCopy = request;
  selfCopy = self;
  HUControlCenterModuleViewController.performBatchCollectionViewUpdates(for:reloadOnly:)(requestCopy, only);
}

- (BOOL)canReorderItemAtIndexPath:(id)path
{
  v3 = sub_20D5638C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  (*(v4 + 8))(v6, v3);
  return 0;
}

- (void)itemManagerDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  HUControlCenterModuleViewController.itemManagerDidUpdate(_:)(updateCopy);
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = HUControlCenterModuleViewController.layoutSection(forSection:layoutEnvironment:)(section, environment);
  swift_unknownObjectRelease();

  return v8;
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

- (CGSize)overrideContentSize
{
  selfCopy = self;
  v3 = HUControlCenterModuleViewController.overrideContentSize()();

  width = v3.width;
  height = v3.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)transform:(id)transform
{
  transformCopy = transform;
  selfCopy = self;
  v6 = sub_20D046A6C(transformCopy);

  return v6;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  selfCopy = self;
  v9 = HUControlCenterModuleViewController.presentationCoordinator(_:shouldBeginPresentationWith:)(coordinatorCopy, contextCopy);

  return v9;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginLongPressPresentationWithContext:(id)context
{
  item = [context item];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass() == 0;

  return v5;
}

- (id)presentationCoordinator:(id)coordinator contextForPresentationAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  coordinatorCopy = coordinator;
  selfCopy = self;
  HUControlCenterModuleViewController.presentationCoordinator(_:contextForPresentationAt:)(v9, coordinatorCopy, __PAIR128__(*&y, *&x));
  v11 = v10;

  return v11;
}

- (id)prepareToPerformToggleActionForItem:(id)item sourceItem:(id)sourceItem
{
  itemCopy = item;
  sourceItemCopy = sourceItem;
  selfCopy = self;
  v9 = HUControlCenterModuleViewController.prepareToPerformToggleAction(for:sourceItem:)(itemCopy, sourceItemCopy);

  return v9;
}

- (void)presentationCoordinatorSendTileInteractionEventOfType:(unint64_t)type withPresentationContext:(id)context presentationCoordinator:(id)coordinator
{
  contextCopy = context;
  selfCopy = self;
  item = [contextCopy item];
  tappedArea = [contextCopy tappedArea];
  sub_20D0C6B88(item, type, tappedArea);
}

- (INIntent)defaultConfigurationIntent
{
  selfCopy = self;
  v3 = HUControlCenterModuleViewController.defaultConfigurationIntent.getter();

  return v3;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  HUControlCenterModuleViewController.setEditing(_:animated:)(editing, animated);
}

- (void)setConfigurationIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  HUControlCenterModuleViewController.setConfigurationIntent(_:)(intentCopy);
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
  selfCopy = self;
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

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  selfCopy = self;
  HUControlCenterModuleViewController.willTransition(toExpandedContentMode:)(mode);
}

- (BOOL)interpretsLocationAsContent:(CGPoint)content inView:(id)view
{
  y = content.y;
  x = content.x;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = HUControlCenterModuleViewController.interpretsLocationAsContent(_:in:)(__PAIR128__(*&y, *&x), viewCopy);

  return self & 1;
}

- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  HUControlCenterModuleViewController.dismissPresentedContent(animated:completion:)(animatedCopy, v6, v7);
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

- (void)setCompactContinuousCornerRadius:(double)radius
{
  v5 = OBJC_IVAR___HUControlCenterModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = radius;
  selfCopy = self;
  sub_20D041FF8(v6);
}

- (CCUIModuleContentMetrics)contentMetrics
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_contentMetrics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentMetrics:(id)metrics
{
  v5 = OBJC_IVAR___HUControlCenterModuleViewController_contentMetrics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = metrics;
  metricsCopy = metrics;
}

- (void)setContentRenderingMode:(unint64_t)mode
{
  selfCopy = self;
  HUControlCenterModuleViewController.contentRenderingMode.setter(mode);
}

- (int64_t)gridSizeClass
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_gridSizeClass;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGridSizeClass:(int64_t)class
{
  v5 = OBJC_IVAR___HUControlCenterModuleViewController_gridSizeClass;
  swift_beginAccess();
  *(self + v5) = class;
  selfCopy = self;
  sub_20D04283C();
}

- (void)applyGridSizeClass:(int64_t)class completionBlock:(id)block
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(block);
  v11 = swift_allocObject();
  v11[2] = class;
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
  selfCopy = self;
  sub_20D11C1C8(0, 0, v9, &unk_20D5C5530, v14);
}

- (id)presentAccessoryControlsForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = HUControlCenterModuleViewController.presentAccessoryControls(for:)(itemCopy);

  return v6;
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
  v15[4] = &unk_20D5C5510;
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

- (void)willDismissWithViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  HUControlCenterModuleViewController.willDismiss(viewController:)(controllerCopy);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  HUControlCenterModuleViewController.viewWillTransition(to:with:)(coordinator);
  swift_unknownObjectRelease();
}

- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home
{
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_20D046FD0(home);
}

- (HUControlCenterModuleViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
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
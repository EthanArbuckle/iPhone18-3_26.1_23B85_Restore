@interface HUDashboardViewController
+ (void)prefetchState;
- (BOOL)_canSkipStatusDetailsForItem:(id)item;
- (BOOL)_hasDetailViewControllerForItem:(id)item;
- (BOOL)_hasTapActionForItem:(id)item;
- (BOOL)_isShowingRestrictedGuestBlockedBackdropView;
- (BOOL)_isShowingRoarUpgradeView;
- (BOOL)_shouldHideTabBar;
- (BOOL)_shouldSetupFilterBarForPocketableFilterPresentationStyle;
- (BOOL)_shouldShowAccessoryControlsForHomeKitObject:(id)object fromStatusItem:(id)item;
- (BOOL)_statusItemRepresentsOnlyResidentIPads:(id)pads;
- (BOOL)allowsCondensedAccessoryTiles;
- (BOOL)automaticallyUpdatesViewControllerTitle;
- (BOOL)canReorderItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)hasDetailsActionForPresentationCoordinator:(id)coordinator item:(id)item;
- (BOOL)presentationCoordinator:(id)coordinator shouldAllowTapticFeedbackForItem:(id)item;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginLongPressPresentationWithContext:(id)context;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context;
- (BOOL)shouldHideNavigationBarButton:(id)button;
- (BOOL)shouldIncludeRoomsInHomeMenu;
- (BOOL)shouldShowAccessoryControlForHomeKitObject:(id)object;
- (BOOL)shouldShowAnnounceButton;
- (BOOL)shouldShowHeaderForSection:(id)section;
- (BOOL)supportsEditing;
- (CGSize)previousCollectionViewSize;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUCameraController)ppt_cameraController;
- (HUDashboardContext)context;
- (HUDashboardViewController)init;
- (HUDashboardViewController)initWithContext:(id)context asOverlay:(BOOL)overlay delegate:(id)delegate;
- (HUDashboardViewControllerDelegate)delegate;
- (NSString)editActionTitle;
- (NSString)editActionTitleLocalizationKey;
- (UIViewController)tipPopoverController;
- (id)_allNavigationBarButtons;
- (id)_dashboardNavigator;
- (id)_dismissPresentedViewControllersAnimated:(BOOL)animated;
- (id)_filterBarController;
- (id)_itemForHomeKitObject:(id)object;
- (id)_performTapActionForItem:(id)item tappedArea:(id)area;
- (id)_presentAccessoryControlsForHomeKitObject:(id)object fromStatusItem:(id)item animated:(BOOL)animated;
- (id)_presentAccessorySettingsForHomeKitObject:(id)object fromStatusItem:(id)item animated:(BOOL)animated;
- (id)_presentQuickControlsForHomeKitItem:(id)item animated:(BOOL)animated;
- (id)_presentRoomEditorForRoom:(id)room;
- (id)_quickControlDetailViewControllerForItem:(id)item;
- (id)_titleForSectionIdentifier:(id)identifier;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)childViewControllersToPreload;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)compositionalLayoutConfigurationForTraitCollection:(id)collection;
- (id)contextTypeDescriptionForAnalytics;
- (id)createDashboardTipModuleControllerWithModule:(id)module;
- (id)createEnergyDashboardModuleControllerWith:(id)with;
- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item;
- (id)displayedItemsInSection:(id)section;
- (id)editActionDelegate;
- (id)homeForNavigationBarButton:(id)button;
- (id)homeKitObjectWithID:(id)d;
- (id)hu_performanceTestReadyFuture;
- (id)hu_preloadContent;
- (id)interactionControllerForPresentation:(id)presentation;
- (id)itemManager:(id)manager futureToUpdateItems:(id)items itemUpdateOptions:(id)options;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (id)matchingItemForHomeKitObject:(id)object;
- (id)navigationBarButtonIdentifierOrderForEdge:(unint64_t)edge;
- (id)presentCameraProfile:(id)profile forCameraClip:(id)clip animated:(BOOL)animated;
- (id)presentCameraProfile:(id)profile startDate:(id)date endDate:(id)endDate animated:(BOOL)animated;
- (id)presentDetailsForItem:(id)item animated:(BOOL)animated secondaryDestination:(unint64_t)destination;
- (id)presentFeedbackFlowForCameraClip:(id)clip fromProfile:(id)profile;
- (id)presentHomeKitObject:(id)object destination:(unint64_t)destination animated:(BOOL)animated;
- (id)presentItem:(id)item animated:(BOOL)animated;
- (id)presentItemWithUUID:(id)d destination:(unint64_t)destination secondaryDestination:(unint64_t)secondaryDestination animated:(BOOL)animated;
- (id)presentROARUpgradeView:(id)view;
- (id)presentRoomSettingsForRoom:(id)room;
- (id)presentStatusDetailsForStatusItemClass:(Class)class animated:(BOOL)animated;
- (id)presentationCoordinator:(id)coordinator contextForPresentationAtPoint:(CGPoint)point;
- (id)quickControlPresentationContextForItem:(id)item atIndexPath:(id)path point:(CGPoint)point;
- (id)reorderableItemListForSection:(int64_t)section;
- (id)roomForNavigationBarButton:(id)button;
- (id)statusItemsForNavigationBarButton:(id)button inHome:(id)home;
- (id)tappableAreaForPoint:(CGPoint)point inItem:(id)item atIndexPath:(id)path;
- (id)transform:(id)transform;
- (unint64_t)navigationBarEdgeForButton:(id)button;
- (void)_addFilterBarToBottomPaletteForNavigationItem:(id)item;
- (void)_addFilterBarToDashboardView;
- (void)_adjustTopPocketInsetsForBottomPaletteWithHeight:(double)height;
- (void)_clearEnergyIndicator;
- (void)_handleBackgroundTap:(id)tap;
- (void)_prepareBottomPaletteForTransitionToContext:(id)context toViewController:(id)controller;
- (void)_presentDetailsViewControllerForSectionWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)_registerObservers;
- (void)_registerSectionDecorationViews;
- (void)_requestLocationAuth;
- (void)_sendContextMenuMetricsWithContext:(id)context title:(id)title;
- (void)_sendFilterBarViewToBackIfNeeded;
- (void)_setNavigationButtons:(id)buttons forEdge:(unint64_t)edge;
- (void)_setUpFilterBar;
- (void)_setUpNavigationBar;
- (void)_setupBackgroundView;
- (void)_setupFilterBarForPocketableFilterPresentationStyle;
- (void)_setupTabBarAppearance;
- (void)_showNoHomeAccessViewsIfNeeded;
- (void)_toggleSizeForCell:(id)cell withItem:(id)item;
- (void)_updateAllHeaderViews;
- (void)_updateAnnounceNotificationSettingsIfNeeded;
- (void)_updateBarButtons;
- (void)_updateBarTintColors;
- (void)_updateBlockoutView;
- (void)_updateFilterBarFrame;
- (void)_updateFilterBarFrameIfNeeded;
- (void)_updateFilterBarViewIfNeeded;
- (void)_updateFilterBarVisibility;
- (void)_updateHeaderView:(id)view atIndexPath:(id)path;
- (void)_updateHomeEnergyIndicatorVisibility;
- (void)_updateHomeEnergyTipVisibility;
- (void)_updatePaletteHeight;
- (void)_updateTabBarVisibility;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler;
- (void)accessoryTileSizeButtonTappedFor:(id)for withItem:(id)item;
- (void)applicationWentIntoBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)changeHomeEnergyTipShouldDisplayTo:(BOOL)to;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)configureWithAccessoryControlViewController:(id)controller;
- (void)createRestrictedGuestBlockedBackdropViewIfNeeded;
- (void)dashboardItemManager:(id)manager didUpdateContext:(id)context;
- (void)didReorderItemWithSortedItemsBySectionID:(id)d;
- (void)didSelectHomeHubMigrationBanner:(id)banner;
- (void)didSelectUnreachableResidentsBanner:(id)banner;
- (void)didSelectWelcomeBanner:(id)banner;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)disableRefresh;
- (void)dismissTip;
- (void)editRoomViewControllerDidFinish:(id)finish withNewRoom:(id)room;
- (void)enableRefresh;
- (void)energyFeatureDidHide;
- (void)handleTraitChanges;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveRoom:(id)room;
- (void)home:(id)home didUpdateLocation:(id)location;
- (void)home:(id)home didUpdateNameForRoom:(id)room;
- (void)home:(id)home didUpdateWallpaperForRoom:(id)room;
- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)enabled;
- (void)homeDidUpdateWallpaper:(id)wallpaper;
- (void)homeEnergyNavigationBarIndicatorTapped:(id)tapped;
- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home;
- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)itemManagerDidUpdate:(id)update;
- (void)loadThermostatControllerForItem:(HFItem *)item completion:(id)completion;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)presentTip;
- (void)presentationCoordinator:(id)coordinator didRecognizeTapForItem:(id)item tappedArea:(id)area;
- (void)presentationCoordinator:(id)coordinator touchDidBeginForItem:(id)item tappedArea:(id)area;
- (void)presentationCoordinator:(id)coordinator touchDidEndForItem:(id)item tappedArea:(id)area;
- (void)refreshTileHelper;
- (void)reloadLayoutAnimated:(BOOL)animated fastUpdate:(BOOL)update;
- (void)sendContextMenuMetricsWithTitleLocalizationKey:(id)key;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setItemShowingSizeToggleButton:(id)button animated:(BOOL)animated;
- (void)setReorderableItemList:(id)list forSection:(int64_t)section;
- (void)setViewIsFullyVisible:(BOOL)visible;
- (void)setupTipsObserver;
- (void)tearDownTipsObserver;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUDashboardViewController

- (void)loadThermostatControllerForItem:(HFItem *)item completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = item;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20D567C58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20D5BEFF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20D5C5200;
  v14[5] = v13;
  itemCopy = item;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v9, &unk_20D5BCD00, v14);
}

- (id)createDashboardTipModuleControllerWithModule:(id)module
{
  v4 = objc_allocWithZone(type metadata accessor for DashboardTipModuleController());
  moduleCopy = module;
  initWithModule_ = [v4 initWithModule_];
  asGeneric = [initWithModule_ asGeneric];

  return asGeneric;
}

- (void)energyFeatureDidHide
{
  selfCopy = self;
  sub_20CF61BC0();
}

- (id)createEnergyDashboardModuleControllerWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  layoutManager = [(HUDashboardViewController *)selfCopy layoutManager];
  v7 = type metadata accessor for EnergyDashboardItemModuleController();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR___HUEnergyDashboardItemModuleController_hasSentHomeEnergyAnalytics] = 0;
  *&v8[OBJC_IVAR___HUEnergyDashboardItemModuleController_layoutManager] = layoutManager;
  swift_unknownObjectWeakAssign();
  v12.receiver = v8;
  v12.super_class = v7;
  v9 = [(HUDashboardViewController *)&v12 initWithModule:withCopy];
  asGeneric = [(HUDashboardViewController *)v9 asGeneric];

  return asGeneric;
}

- (void)setupTipsObserver
{
  selfCopy = self;
  HUDashboardViewController.setupTipsObserver()();
}

- (void)tearDownTipsObserver
{
  selfCopy = self;
  HUDashboardViewController.tearDownTipsObserver()();
}

- (void)changeHomeEnergyTipShouldDisplayTo:(BOOL)to
{
  toCopy = to;
  if (qword_2811208D0 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D708);
  __swift_project_value_buffer(v4, qword_281120C80);
  swift_beginAccess();
  sub_20D5665C8();
  swift_endAccess();
  if (v5 != toCopy)
  {
    swift_beginAccess();
    sub_20D5665D8();
    swift_endAccess();
  }
}

- (void)presentTip
{
  selfCopy = self;
  sub_20CF63720();
}

- (void)dismissTip
{
  selfCopy = self;
  HUDashboardViewController.dismissTip()();
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  selfCopy = self;
  tipPopoverController = [(HUDashboardViewController *)selfCopy tipPopoverController];
  if (tipPopoverController)
  {

    tipPopoverController2 = [(HUDashboardViewController *)selfCopy tipPopoverController];
    if (tipPopoverController2)
    {
      v7 = tipPopoverController2;
      sub_20CECF940(0, &qword_28111FB10);
      v8 = sub_20D5683F8();

      if (v8)
      {
        [(HUDashboardViewController *)selfCopy setTipPopoverController:0];
      }
    }
  }
}

- (id)homeKitObjectWithID:(id)d
{
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D5637E8();
  selfCopy = self;
  v9 = HUDashboardViewController.homeKitObject(with:)();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (BOOL)shouldShowAccessoryControlForHomeKitObject:(id)object
{
  if (!object)
  {
    return 0;
  }

  v3 = 1;
  if (!swift_dynamicCastObjCProtocolConditional())
  {
    return 0;
  }

  return v3;
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
  v15[4] = &unk_20D5C5138;
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

- (void)configureWithAccessoryControlViewController:(id)controller
{
  v10.receiver = self;
  v10.super_class = HUDashboardViewController;
  controllerCopy = controller;
  selfCopy = self;
  [(HUControllableItemCollectionViewController *)&v10 configureWithAccessoryControlViewController:controllerCopy];
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6 && controllerCopy)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 120);
    controllerCopy = controllerCopy;
    v9(0, ObjectType, v7);
  }
}

- (void)disableRefresh
{
  selfCopy = self;
  HUDashboardViewController.disableRefresh()();
}

- (void)enableRefresh
{
  selfCopy = self;
  HUDashboardViewController.enableRefresh()();
}

- (void)refreshTileHelper
{
  selfCopy = self;
  HUDashboardViewController.refreshTileHelper()();
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_20D02B63C();

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  selfCopy = self;
  accessoryControlAnimator = [(HUDashboardViewController *)selfCopy accessoryControlAnimator];
  *(&accessoryControlAnimator->super.isa + OBJC_IVAR___HUAccessoryControlAnimator_currentTransitionType) = 1;

  accessoryControlAnimator2 = [(HUDashboardViewController *)selfCopy accessoryControlAnimator];

  return accessoryControlAnimator2;
}

- (id)interactionControllerForPresentation:(id)presentation
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75828]) init];
  [v3 setWantsInteractiveStart_];

  return v3;
}

- (id)compositionalLayoutConfigurationForTraitCollection:(id)collection
{
  selfCopy = self;

  defaultConfiguration = [objc_opt_self() defaultConfiguration];
  [defaultConfiguration setContentInsetsReference_];
  [defaultConfiguration setInterSectionSpacing_];

  return defaultConfiguration;
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = HUDashboardViewController.layoutSection(forSection:layoutEnvironment:)(section, environment);
  swift_unknownObjectRelease();

  return v8;
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
  v4 = sub_20D567838();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = HUDashboardViewController.shouldShowHeader(forSection:)(v8);

  return v4 & 1;
}

- (id)transform:(id)transform
{
  transformCopy = transform;
  [transformCopy setSectionLeadingMargin_];
  [transformCopy setSectionTrailingMargin_];

  return transformCopy;
}

- (BOOL)allowsCondensedAccessoryTiles
{
  selfCopy = self;
  v3 = HUDashboardViewController.allowsCondensedAccessoryTiles()();

  return v3;
}

- (BOOL)canReorderItemAtIndexPath:(id)path
{
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  selfCopy = self;
  v9 = HUDashboardViewController.canReorderItem(at:)();

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  (*(v7 + 8))(v9, v6);
  sub_20CECF940(0, &unk_27C821288);
  v10 = sub_20D567A58();

  return v10;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  selfCopy = self;
  [(HUDashboardViewController *)selfCopy setItemShowingSizeToggleButton:0 animated:1];
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  v5 = sub_20D5677F8();
  [(HFItemManager *)itemManager disableExternalUpdatesWithReason:v5];
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  v5 = sub_20D5677F8();
  [(HFItemManager *)itemManager endDisableExternalUpdatesWithReason:v5];
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  swift_unknownObjectRetain();
  if ([session localDragSession])
  {
    swift_unknownObjectRelease();
    canLoadObjectsOfClass_ = 1;
  }

  else
  {
    sub_20CECF940(0, &unk_28111FB50);
    canLoadObjectsOfClass_ = [session canLoadObjectsOfClass_];
  }

  swift_unknownObjectRelease();
  return canLoadObjectsOfClass_;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (path)
  {
    sub_20D563878();
    v12 = sub_20D5638C8();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_20D5638C8();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = HUDashboardViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(viewCopy, update, v11);

  swift_unknownObjectRelease();
  sub_20CEF928C(v11, &qword_27C81D5C0);

  return v16;
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  selfCopy = self;
  v7 = sub_20D5638C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_20D563878();
  sub_20D563878();
  sub_20D563878();
  viewCopy = view;
  v21 = selfCopy;
  HUDashboardViewController.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(viewCopy, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23 = sub_20D563868();
  v22(v19, v7);

  return v23;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  HUDashboardViewController.collectionView(_:performDropWith:)(viewCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  swift_unknownObjectRetain();
  selfCopy = self;
  layoutManager = [(HUDashboardViewController *)selfCopy layoutManager];
  v7 = layoutManager + OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition;
  v8 = *(&layoutManager->super.super.isa + OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;

  layoutManager2 = [(HUDashboardViewController *)selfCopy layoutManager];
  *(&layoutManager2->super.super.isa + OBJC_IVAR___HUDashboardLayoutManager_adaptiveTileDragInteractionLayouts) = 0;

  sub_20D0EA1AC(end);
  swift_unknownObjectRelease();
}

- (id)contextTypeDescriptionForAnalytics
{
  selfCopy = self;
  context = [(HUDashboardViewController *)selfCopy context];
  sub_20CFE86BC();
  v5 = v4;

  if (v5)
  {
    v6 = sub_20D5677F8();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)hu_performanceTestReadyFuture
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  hu_preloadContent = [(HUDashboardViewController *)self hu_preloadContent];
  v11[0] = hu_preloadContent;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  firstFullUpdateFuture = [itemManager firstFullUpdateFuture];
  v11[1] = firstFullUpdateFuture;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v3 combineAllFutures:v7];
  v9 = [v8 flatMap:&__block_literal_global_127];

  return v9;
}

+ (void)prefetchState
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeFuture = [mEMORY[0x277D146E8] homeFuture];
  v3 = [homeFuture addSuccessBlock:&__block_literal_global_241];
}

void __42__HUDashboardViewController_prefetchState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HUDashboardLaunchCoordinator shared];
  [v3 prefetchStateForHome:v2];
}

- (HUDashboardViewController)initWithContext:(id)context asOverlay:(BOOL)overlay delegate:(id)delegate
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  v10 = [[HUDashboardItemManager alloc] initWithContext:contextCopy delegate:0];
  v27.receiver = self;
  v27.super_class = HUDashboardViewController;
  v11 = [(HUControllableItemCollectionViewController *)&v27 initUsingCompositionalLayoutWithItemManager:v10];
  if (v11)
  {
    v12 = [[HUDashboardLayoutManager alloc] initWithDelegate:v11];
    layoutManager = v11->_layoutManager;
    v11->_layoutManager = v12;

    v11->_isOverlay = overlay;
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v11->_viewIsFullyVisible = 0;
    v14 = HFLogForCategory();
    v15 = HFLogForCategory();
    v16 = os_signpost_id_make_with_pointer(v15, v11);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412290;
      v29 = v18;
      _os_signpost_emit_with_name_impl(&dword_20CEB6000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "HUViewFirstAppearance", "%@.viewFirstTimeFullyVisibleFuture begins", buf, 0xCu);
    }

    v19 = objc_alloc_init(MEMORY[0x277D2C900]);
    viewFullyVisibleFuture = v11->_viewFullyVisibleFuture;
    v11->_viewFullyVisibleFuture = v19;

    v21 = objc_alloc_init(MEMORY[0x277D2C900]);
    viewFirstTimeFullyVisibleFuture = v11->_viewFirstTimeFullyVisibleFuture;
    v11->_viewFirstTimeFullyVisibleFuture = v21;

    [(HUControllableItemCollectionViewController *)v11 setUseCustomDragAndDrop:1];
    [(HUDashboardItemManager *)v10 setDashboardDelegate:v11];
    if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
    {
      v23 = +[HUSideBarSelectionManager sharedManager];
      [v23 setCurrentContext:contextCopy];
    }

    v24 = objc_alloc_init(HUAccessoryControlAnimator);
    accessoryControlAnimator = v11->_accessoryControlAnimator;
    v11->_accessoryControlAnimator = v24;

    [(HUDashboardViewController *)v11 _registerObservers];
  }

  return v11;
}

- (HUDashboardViewController)init
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  home = [mEMORY[0x277D146E8] home];
  v5 = [HUDashboardContext homeDashboardForHome:home];

  v6 = [(HUDashboardViewController *)self initWithContext:v5 delegate:0];
  return v6;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v26 viewDidLoad];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:viewDidLoad]", v25, 2u);
  }

  collectionView = [(HUDashboardViewController *)self collectionView];
  v5 = objc_opt_class();
  v6 = *MEMORY[0x277D767D8];
  v7 = +[HUGridSectionHeaderView reuseIdentifier];
  [collectionView registerClass:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];

  collectionView2 = [(HUDashboardViewController *)self collectionView];
  [collectionView2 setPreservesSuperviewLayoutMargins:1];

  navigationItem = [(HUDashboardViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:1];

  [(HUDashboardViewController *)self _setUpNavigationBar];
  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    [(HUDashboardViewController *)self _setUpTabBar];
  }

  [(HUDashboardViewController *)self _setupBackgroundView];
  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
  collectionView3 = [(HUDashboardViewController *)self collectionView];
  [collectionView3 contentInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  collectionView4 = [(HUDashboardViewController *)self collectionView];
  [collectionView4 setContentInset:{v12 + 10.0, v14, v16 + 150.0, v18}];

  collectionView5 = [(HUDashboardViewController *)self collectionView];
  [collectionView5 setIndicatorStyle:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_migrationUpdatedTileSize_ name:*MEMORY[0x277D13D28] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_bannerSizeUpdated_ name:@"HUBannerSizeHasUpdatedNotification" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_applicationWentIntoBackground_ name:*MEMORY[0x277D76660] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v11 viewDidAppear:appear];
  [(HUDashboardViewController *)self setViewIsFullyVisible:1];
  context = [(HUDashboardViewController *)self context];
  accessoryTypeGroup = [context accessoryTypeGroup];
  energyAccessoryTypeGroup = [MEMORY[0x277D14378] energyAccessoryTypeGroup];

  if (accessoryTypeGroup == energyAccessoryTypeGroup)
  {
    energyCategoryViewStartTime = [(HUDashboardViewController *)self energyCategoryViewStartTime];

    if (energyCategoryViewStartTime)
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        energyCategoryViewStartTime2 = [(HUDashboardViewController *)self energyCategoryViewStartTime];
        *buf = 138412290;
        v13 = energyCategoryViewStartTime2;
        _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Expected energyCategoryViewStartTime to be nil when displaying the view but found value: %@", buf, 0xCu);
      }
    }

    date = [MEMORY[0x277CBEAA8] date];
    [(HUDashboardViewController *)self setEnergyCategoryViewStartTime:date];
  }

  [(HUDashboardViewController *)self _updateFilterBarViewIfNeeded];
  [(HUDashboardViewController *)self _sendFilterBarViewToBackIfNeeded];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:viewWillAppear]", &buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v21 viewWillAppear:appearCopy];
  [(HUDashboardViewController *)self _requestLocationAuth];
  [(HUDashboardViewController *)self _setUpFilterBar];
  [(HUDashboardViewController *)self _updateFilterBarVisibility];
  [(HUDashboardViewController *)self _updateTabBarVisibility];
  [(HUDashboardViewController *)self _updateBarTintColors];
  [(HUDashboardViewController *)self setupTipsObserver];
  [(HUDashboardViewController *)self _updateAnnounceNotificationSettingsIfNeeded];
  cameraItemModuleController = [(HUDashboardViewController *)self cameraItemModuleController];
  collectionView = [(HUDashboardViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  [cameraItemModuleController enableCameraSnapshotsForCells:visibleCells];

  objc_initWeak(&buf, self);
  v9 = objc_opt_self();
  v22[0] = v9;
  v10 = objc_opt_self();
  v22[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__HUDashboardViewController_viewWillAppear___block_invoke;
  v18[3] = &unk_277DC2980;
  objc_copyWeak(&v19, &buf);
  v12 = [(HUDashboardViewController *)self registerForTraitChanges:v11 withHandler:v18];

  context = [(HUDashboardViewController *)self context];
  home = [context home];
  LODWORD(v10) = [home hf_shouldBlockCurrentRestrictedGuestFromHome];

  if (v10)
  {
    [(HUDashboardViewController *)self createRestrictedGuestBlockedBackdropViewIfNeeded];
    view = [(HUDashboardViewController *)self view];
    restrictedGuestBlockedBackdropView = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    wallpaperView = [(HUDashboardViewController *)self wallpaperView];
    [view insertSubview:restrictedGuestBlockedBackdropView above:wallpaperView];
  }

  else
  {
    view = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [view removeFromSuperview];
  }

  [(HUDashboardViewController *)self _showNoHomeAccessViewsIfNeeded];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&buf);
}

void __44__HUDashboardViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v16 traitCollection];
  v8 = [v7 horizontalSizeClass];
  if (v8 == [v5 horizontalSizeClass])
  {
    v9 = [v16 traitCollection];
    v10 = [v9 verticalSizeClass];
    v11 = [v5 verticalSizeClass];

    if (v10 == v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = [WeakRetained presentedViewController];
  v13 = [v12 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [WeakRetained presentedViewController];
    [v15 dismissViewControllerAnimated:1 completion:0];
  }

LABEL_7:
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HUDashboardViewController;
  [(HUDashboardViewController *)&v10 viewIsAppearing:appearing];
  v11[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [(HUDashboardViewController *)self registerForTraitChanges:v4 withAction:sel_handleTraitChanges];
  context = [(HUDashboardViewController *)self context];
  filterPresentationStyle = [context filterPresentationStyle];

  if (filterPresentationStyle == 1)
  {
    navigationItem = [(HUDashboardViewController *)self navigationItem];
    _bottomPalette = [navigationItem _bottomPalette];
    [_bottomPalette setMinimumHeight:0.0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v24 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:viewWillDisappear]", buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = HUDashboardViewController;
  [(HUItemCollectionViewController *)&v21 viewWillDisappear:disappearCopy];
  context = [(HUDashboardViewController *)self context];
  accessoryTypeGroup = [context accessoryTypeGroup];
  energyAccessoryTypeGroup = [MEMORY[0x277D14378] energyAccessoryTypeGroup];
  v9 = energyAccessoryTypeGroup;
  if (accessoryTypeGroup != energyAccessoryTypeGroup)
  {

LABEL_5:
    goto LABEL_6;
  }

  energyCategoryViewStartTime = [(HUDashboardViewController *)self energyCategoryViewStartTime];

  if (energyCategoryViewStartTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    energyCategoryViewStartTime2 = [(HUDashboardViewController *)self energyCategoryViewStartTime];
    [date timeIntervalSinceDate:energyCategoryViewStartTime2];
    v17 = v16;

    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = v17;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Energy Category view duration:%f [s]", buf, 0xCu);
    }

    [(HUDashboardViewController *)self setEnergyCategoryViewStartTime:0];
    if (v17 > 1.0)
    {
      context = [MEMORY[0x277D146E8] sharedDispatcher];
      accessoryTypeGroup = [context allHomesFuture];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __47__HUDashboardViewController_viewWillDisappear___block_invoke;
      v20[3] = &__block_descriptor_40_e29_v24__0__NSArray_8__NSError_16l;
      *&v20[4] = v17;
      v19 = [accessoryTypeGroup addCompletionBlock:v20];
      goto LABEL_5;
    }
  }

LABEL_6:
  [(HUDashboardViewController *)self setViewIsFullyVisible:0];
  cameraItemModuleController = [(HUDashboardViewController *)self cameraItemModuleController];
  collectionView = [(HUDashboardViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  [cameraItemModuleController disableCameraSnapshotsForCells:visibleCells];
}

void __47__HUDashboardViewController_viewWillDisappear___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) accessories];
        v8 = [v7 count];

        if (v8)
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  [HUEnergyAnalytics saveViewDurationEvent:47 withDuration:v9 withUserHasAccessories:v4];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v4 viewDidDisappear:disappear];
  [(HUDashboardViewController *)self tearDownTipsObserver];
}

- (void)viewLayoutMarginsDidChange
{
  v14.receiver = self;
  v14.super_class = HUDashboardViewController;
  [(HUDashboardViewController *)&v14 viewLayoutMarginsDidChange];
  view = [(HUDashboardViewController *)self view];
  [view layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _filterBarController = [(HUDashboardViewController *)self _filterBarController];
  collectionView = [_filterBarController collectionView];
  [collectionView setLayoutMargins:{v5, v7, v9, v11}];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v17.receiver = self;
  v17.super_class = HUDashboardViewController;
  [(HUDashboardViewController *)&v17 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  restrictedGuestBlockedBackdropView = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];

  if (restrictedGuestBlockedBackdropView)
  {
    restrictedGuestBlockedBackdropView2 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [restrictedGuestBlockedBackdropView2 removeFromSuperview];

    [(HUDashboardViewController *)self setRestrictedGuestBlockedBackdropView:0];
    context = [(HUDashboardViewController *)self context];
    home = [context home];
    hf_shouldBlockCurrentRestrictedGuestFromHome = [home hf_shouldBlockCurrentRestrictedGuestFromHome];

    if (hf_shouldBlockCurrentRestrictedGuestFromHome)
    {
      [(HUDashboardViewController *)self createRestrictedGuestBlockedBackdropViewIfNeeded];
      view = [(HUDashboardViewController *)self view];
      restrictedGuestBlockedBackdropView3 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
      wallpaperView = [(HUDashboardViewController *)self wallpaperView];
      [view insertSubview:restrictedGuestBlockedBackdropView3 above:wallpaperView];
    }
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__HUDashboardViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v16[3] = &unk_277DB79B8;
  v16[4] = self;
  [coordinatorCopy animateAlongsideTransition:v16 completion:0];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = HUDashboardViewController;
  [(HUItemCollectionViewController *)&v10 viewDidLayoutSubviews];
  collectionView = [(HUDashboardViewController *)self collectionView];
  [collectionView frame];
  v5 = v4;
  v7 = v6;

  if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || -[HUDashboardViewController viewIsFullyVisible](self, "viewIsFullyVisible") && (-[HUDashboardViewController filterBarNeedsUpdate](self, "filterBarNeedsUpdate") || (-[HUDashboardViewController previousCollectionViewSize](self, "previousCollectionViewSize"), v9 != v5) || v8 != v7))
  {
    [(HUDashboardViewController *)self _updateFilterBarFrameIfNeeded];
  }

  [(HUDashboardViewController *)self setPreviousCollectionViewSize:v5, v7];
}

- (void)traitCollectionDidChange:(id)change
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:traitCollectionDidChange]", v7, 2u);
  }

  if ([(HUDashboardViewController *)self viewIsFullyVisible])
  {
    energyAccessoryView = [(HUDashboardViewController *)self energyAccessoryView];
    [energyAccessoryView updateEnergyIndicatorViewSizeThatFits];

    energyAccessoryView2 = [(HUDashboardViewController *)self energyAccessoryView];
    [energyAccessoryView2 sizeToFit];
  }

  [(HUDashboardViewController *)self _showNoHomeAccessViewsIfNeeded];
}

- (HUDashboardContext)context
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  context = [itemManager context];

  return context;
}

- (void)setItemShowingSizeToggleButton:(id)button animated:(BOOL)animated
{
  buttonCopy = button;
  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
  {
    itemShowingSizeToggleButton = [(HUDashboardViewController *)self itemShowingSizeToggleButton];
    v9 = buttonCopy;
    v10 = v9;
    if (itemShowingSizeToggleButton == v9)
    {
    }

    else
    {
      if (itemShowingSizeToggleButton)
      {
        v11 = [itemShowingSizeToggleButton isEqual:v9];

        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      itemShowingSizeToggleButton = [MEMORY[0x277CBEB18] array];
      itemShowingSizeToggleButton2 = [(HUDashboardViewController *)self itemShowingSizeToggleButton];
      [itemShowingSizeToggleButton na_safeAddObject:itemShowingSizeToggleButton2];

      [itemShowingSizeToggleButton na_safeAddObject:v10];
      objc_storeStrong(&self->_itemShowingSizeToggleButton, button);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __69__HUDashboardViewController_setItemShowingSizeToggleButton_animated___block_invoke;
      v13[3] = &unk_277DC29C8;
      v13[4] = self;
      animatedCopy = animated;
      [itemShowingSizeToggleButton na_each:v13];
    }
  }

LABEL_10:
}

void __69__HUDashboardViewController_setItemShowingSizeToggleButton_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 itemShowingSizeToggleButton];

  v6 = [*(a1 + 32) itemManager];
  v14 = [v6 indexPathForItem:v4];

  v7 = [*(a1 + 32) collectionView];
  v8 = [v7 cellForItemAtIndexPath:v14];

  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v5 == v4)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  [v11 setShowsSizeChangeButton:v5 == v4 animated:*(a1 + 40)];
  v13 = [v11 layer];
  [v13 setZPosition:v12];
}

- (void)reloadLayoutAnimated:(BOOL)animated fastUpdate:(BOOL)update
{
  updateCopy = update;
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HUDashboardViewController_reloadLayoutAnimated_fastUpdate___block_invoke;
  aBlock[3] = &unk_277DB8488;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.3];
  }

  else
  {
    (*(v7 + 2))(v7);
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  allDisplayedItems = [itemManager allDisplayedItems];
  allObjects = [allDisplayedItems allObjects];

  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  v13 = itemManager2;
  if (updateCopy)
  {
    [itemManager2 reconfigureUIRepresentationForItems:allObjects withAnimation:animatedCopy];
  }

  else
  {
    [itemManager2 reloadUIRepresentationForItems:allObjects withAnimation:animatedCopy];
  }
}

void __61__HUDashboardViewController_reloadLayoutAnimated_fastUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 collectionViewLayout];
  [v3 invalidateLayout];

  v4 = [*(a1 + 32) collectionView];
  [v4 layoutIfNeeded];
}

- (HUCameraController)ppt_cameraController
{
  cameraItemModuleController = [(HUDashboardViewController *)self cameraItemModuleController];
  cameraController = [cameraItemModuleController cameraController];

  return cameraController;
}

- (void)_showNoHomeAccessViewsIfNeeded
{
  objc_opt_class();
  navigationController = [(HUDashboardViewController *)self navigationController];
  if (objc_opt_isKindOfClass())
  {
    v4 = navigationController;
  }

  else
  {
    v4 = 0;
  }

  v15 = v4;

  context = [(HUDashboardViewController *)self context];
  if ([context canShowNoHomeAccessView])
  {
    viewControllers = [v15 viewControllers];
    v7 = [viewControllers count];

    if (v7 == 1)
    {
      [(HUDashboardViewController *)self _updateBlockoutView];
      [(HUDashboardViewController *)self _updateBarButtons];
      goto LABEL_10;
    }
  }

  else
  {
  }

  context2 = [(HUDashboardViewController *)self context];
  home = [context2 home];
  hf_shouldBlockCurrentUserFromHome = [home hf_shouldBlockCurrentUserFromHome];

  if (hf_shouldBlockCurrentUserFromHome)
  {
    _dashboardNavigator = [(HUDashboardViewController *)self _dashboardNavigator];
    context3 = [(HUDashboardViewController *)self context];
    home2 = [context3 home];
    v14 = [_dashboardNavigator showHome:home2];
  }

LABEL_10:
}

- (void)_updateBlockoutView
{
  v78[4] = *MEMORY[0x277D85DE8];
  context = [(HUDashboardViewController *)self context];
  home = [context home];

  context2 = [(HUDashboardViewController *)self context];
  home2 = [context2 home];
  hf_shouldBlockCurrentUserFromHomeForRoarUpgrade = [home2 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade];

  if (hf_shouldBlockCurrentUserFromHomeForRoarUpgrade)
  {
    hf_blockCurrentUserFromHomeReason = [home hf_blockCurrentUserFromHomeReason];
    roarUpgradeView = [(HUDashboardViewController *)self roarUpgradeView];

    if (!roarUpgradeView)
    {
      v11 = [[HUROARUpgradeView alloc] initWithUpgradeViewReason:hf_blockCurrentUserFromHomeReason home:home];
      [(HUDashboardViewController *)self setRoarUpgradeView:v11];

      roarUpgradeView2 = [(HUDashboardViewController *)self roarUpgradeView];
      [roarUpgradeView2 setDelegate:self];

      roarUpgradeView3 = [(HUDashboardViewController *)self roarUpgradeView];
      [roarUpgradeView3 setTranslatesAutoresizingMaskIntoConstraints:0];

      roarUpgradeView4 = [(HUDashboardViewController *)self roarUpgradeView];
      leadingAnchor = [roarUpgradeView4 leadingAnchor];
      view = [(HUDashboardViewController *)self view];
      layoutMarginsGuide = [view layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v78[0] = v72;
      roarUpgradeView5 = [(HUDashboardViewController *)self roarUpgradeView];
      trailingAnchor = [roarUpgradeView5 trailingAnchor];
      view2 = [(HUDashboardViewController *)self view];
      layoutMarginsGuide2 = [view2 layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
      v66 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v78[1] = v66;
      roarUpgradeView6 = [(HUDashboardViewController *)self roarUpgradeView];
      topAnchor = [roarUpgradeView6 topAnchor];
      view3 = [(HUDashboardViewController *)self view];
      layoutMarginsGuide3 = [view3 layoutMarginsGuide];
      topAnchor2 = [layoutMarginsGuide3 topAnchor];
      v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v78[2] = v15;
      roarUpgradeView7 = [(HUDashboardViewController *)self roarUpgradeView];
      bottomAnchor = [roarUpgradeView7 bottomAnchor];
      [(HUDashboardViewController *)self view];
      v19 = v18 = home;
      layoutMarginsGuide4 = [v19 layoutMarginsGuide];
      bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
      v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v78[3] = v22;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];

      home = v18;
      [(HUDashboardViewController *)self setUpgradeViewConstraints:v64];
    }

    roarBackdropView = [(HUDashboardViewController *)self roarBackdropView];

    if (!roarBackdropView)
    {
      v24 = objc_alloc(MEMORY[0x277D75D68]);
      v25 = [MEMORY[0x277D75210] effectWithStyle:18];
      v26 = [v24 initWithEffect:v25];
      [(HUDashboardViewController *)self setRoarBackdropView:v26];

      view4 = [(HUDashboardViewController *)self view];
      [view4 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      roarBackdropView2 = [(HUDashboardViewController *)self roarBackdropView];
      [roarBackdropView2 setFrame:{v29, v31, v33, v35}];

      roarBackdropView3 = [(HUDashboardViewController *)self roarBackdropView];
      [roarBackdropView3 setTranslatesAutoresizingMaskIntoConstraints:1];

      roarBackdropView4 = [(HUDashboardViewController *)self roarBackdropView];
      [roarBackdropView4 setAutoresizingMask:18];
    }

    view5 = [(HUDashboardViewController *)self view];
    roarBackdropView5 = [(HUDashboardViewController *)self roarBackdropView];
    wallpaperView = [(HUDashboardViewController *)self wallpaperView];
    [view5 insertSubview:roarBackdropView5 above:wallpaperView];

    view6 = [(HUDashboardViewController *)self view];
    roarUpgradeView8 = [(HUDashboardViewController *)self roarUpgradeView];
    [view6 addSubview:roarUpgradeView8];

    v44 = MEMORY[0x277CCAAD0];
    upgradeViewConstraints = [(HUDashboardViewController *)self upgradeViewConstraints];
    [v44 activateConstraints:upgradeViewConstraints];

    roarUpgradeView9 = [(HUDashboardViewController *)self roarUpgradeView];
    [roarUpgradeView9 updateScrollViewContentSize];
    goto LABEL_7;
  }

  if ([(HUDashboardViewController *)self _isShowingRoarUpgradeView])
  {
    v47 = MEMORY[0x277CCAAD0];
    upgradeViewConstraints2 = [(HUDashboardViewController *)self upgradeViewConstraints];
    [v47 deactivateConstraints:upgradeViewConstraints2];

    roarUpgradeView10 = [(HUDashboardViewController *)self roarUpgradeView];
    [roarUpgradeView10 removeFromSuperview];

    roarBackdropView6 = [(HUDashboardViewController *)self roarBackdropView];
    [roarBackdropView6 removeFromSuperview];

    itemManager = [(HUItemCollectionViewController *)self itemManager];
    itemProviders = [itemManager itemProviders];
    hmf_isEmpty = [itemProviders hmf_isEmpty];

    if ((hmf_isEmpty & 1) == 0)
    {
      roarUpgradeView9 = [(HUItemCollectionViewController *)self itemManager];
      v54 = MEMORY[0x277D14788];
      v55 = MEMORY[0x277CBEB98];
      itemManager2 = [(HUItemCollectionViewController *)self itemManager];
      itemProviders2 = [itemManager2 itemProviders];
      v58 = [v55 setWithArray:itemProviders2];
      v59 = [v54 requestToReloadItemProviders:v58 senderSelector:a2];
      v60 = [roarUpgradeView9 performItemUpdateRequest:v59];

LABEL_7:
    }
  }
}

- (BOOL)_isShowingRoarUpgradeView
{
  view = [(HUDashboardViewController *)self view];
  subviews = [view subviews];
  roarUpgradeView = [(HUDashboardViewController *)self roarUpgradeView];
  if ([subviews na_safeContainsObject:roarUpgradeView])
  {
    view2 = [(HUDashboardViewController *)self view];
    subviews2 = [view2 subviews];
    roarBackdropView = [(HUDashboardViewController *)self roarBackdropView];
    v9 = [subviews2 na_safeContainsObject:roarBackdropView];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isShowingRestrictedGuestBlockedBackdropView
{
  view = [(HUDashboardViewController *)self view];
  subviews = [view subviews];
  restrictedGuestBlockedBackdropView = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
  v6 = [subviews na_safeContainsObject:restrictedGuestBlockedBackdropView];

  return v6;
}

- (void)itemManagerDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = HUDashboardViewController;
  [(HUItemCollectionViewController *)&v4 itemManagerDidUpdate:update];
  [(HUDashboardViewController *)self _updateBarButtons];
  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
}

- (id)itemManager:(id)manager futureToUpdateItems:(id)items itemUpdateOptions:(id)options
{
  v26 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  itemsCopy = items;
  optionsCopy = options;
  context = [(HUDashboardViewController *)self context];
  if (![context shouldDelayItemUpdatesForViewVisibility] || -[HUDashboardViewController viewIsFullyVisible](self, "viewIsFullyVisible"))
  {

LABEL_4:
    if ([-[HUDashboardViewController superclass](self "superclass")])
    {
      v21.receiver = self;
      v21.super_class = HUDashboardViewController;
      v13 = [(HUItemCollectionViewController *)&v21 itemManager:managerCopy futureToUpdateItems:itemsCopy itemUpdateOptions:optionsCopy];
    }

    else
    {
      v13 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    }

    viewFullyVisibleFuture = v13;
    goto LABEL_8;
  }

  v16 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_4;
  }

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Delaying full item update until the view is fully visible", buf, 2u);
  }

  if ([MEMORY[0x277D14CE8] hasInternalDiagnostics])
  {
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = itemsCopy;
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Not visible - delayed items: %@", buf, 0xCu);
    }
  }

  viewFullyVisibleFuture = [(HUDashboardViewController *)self viewFullyVisibleFuture];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__HUDashboardViewController_itemManager_futureToUpdateItems_itemUpdateOptions___block_invoke;
  v22[3] = &unk_277DB7530;
  v23 = itemsCopy;
  v20 = [viewFullyVisibleFuture addCompletionBlock:v22];

LABEL_8:

  return viewFullyVisibleFuture;
}

void __79__HUDashboardViewController_itemManager_futureToUpdateItems_itemUpdateOptions___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "Delaying full item update until the view is fully visible", &v5, 2u);
  }

  if ([MEMORY[0x277D14CE8] hasInternalDiagnostics])
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Visible - continuing item updates: %@", &v5, 0xCu);
    }
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUDashboardViewController;
  cellCopy = cell;
  [(HUControllableItemCollectionViewController *)&v11 collectionView:view willDisplayCell:cellCopy forItemAtIndexPath:path];
  v9 = [(HUDashboardViewController *)self cameraItemModuleController:v11.receiver];
  v12[0] = cellCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  [v9 enableCameraSnapshotsForCells:v10];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUDashboardViewController;
  cellCopy = cell;
  [(HUControllableItemCollectionViewController *)&v11 collectionView:view didEndDisplayingCell:cellCopy forItemAtIndexPath:path];
  v9 = [(HUDashboardViewController *)self cameraItemModuleController:v11.receiver];
  v12[0] = cellCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  [v9 disableCameraSnapshotsForCells:v10];
}

- (BOOL)automaticallyUpdatesViewControllerTitle
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  context = [itemManager context];
  overrideDashboardTitle = [context overrideDashboardTitle];

  if (overrideDashboardTitle)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = HUDashboardViewController;
  return [(HUItemCollectionViewController *)&v7 automaticallyUpdatesViewControllerTitle];
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  v11.receiver = self;
  v11.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v11 diffableDataItemManager:manager didUpdateItems:items addItems:addItems removeItems:removeItems];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  context = [itemManager context];
  overrideDashboardTitle = [context overrideDashboardTitle];

  if (overrideDashboardTitle)
  {
    navigationItem = [(HUDashboardViewController *)self navigationItem];
    [navigationItem setTitle:overrideDashboardTitle];
  }
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v9 = [itemManager displayedSectionIdentifierForSectionIndex:{objc_msgSend(pathCopy, "section")}];

  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  section = [pathCopy section];

  v12 = [itemManager2 displayedSectionIdentifierForSectionIndex:section];

  if ([v12 isEqualToString:@"NowPlayingSection"] && (objc_msgSend(MEMORY[0x277D14CE8], "isAMac") & 1) == 0 && _os_feature_enabled_impl() || objc_msgSend(v12, "isEqualToString:", @"favoritesSection") || objc_msgSend(itemCopy, "conformsToProtocol:", &unk_28251AC90))
  {
    v13 = objc_opt_class();
    goto LABEL_7;
  }

  latestResults = [itemCopy latestResults];
  v16 = *MEMORY[0x277D13D48];
  v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13D48]];

  if (!v17)
  {
LABEL_15:
    objc_opt_class();
    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    if (objc_opt_isKindOfClass())
    {
      v20 = itemManager3;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    objc_opt_class();
    v22 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v24)
    {
      goto LABEL_27;
    }

    alwaysAllowedScheduleItem = [v21 alwaysAllowedScheduleItem];
    if (([v22 isEqual:alwaysAllowedScheduleItem] & 1) == 0)
    {
      pinCodeAccessItem = [v21 pinCodeAccessItem];
      if (![v22 isEqual:pinCodeAccessItem])
      {
        homeKeyItem = [v21 homeKeyItem];
        [v22 isEqual:homeKeyItem];

        goto LABEL_27;
      }
    }

LABEL_27:
    v13 = objc_opt_class();

    goto LABEL_7;
  }

  latestResults2 = [itemCopy latestResults];
  v13 = [latestResults2 objectForKeyedSubscript:v16];

  if (!object_isClass(v13) || !v13 || ([v13 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {

    goto LABEL_15;
  }

LABEL_7:

  return v13;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v9 = [itemManager displayedSectionIdentifierForSectionIndex:{objc_msgSend(pathCopy, "section")}];

  if ([v9 isEqualToString:@"filterBarSection"])
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

    [v12 setUserInteractionEnabled:0];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HUDashboardViewController;
    v12 = [(HUItemCollectionViewController *)&v14 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  }

  return v12;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v104.receiver = self;
  v104.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v104 configureCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v9 = itemManager;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  v11 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  latestResults = [itemCopy latestResults];
  v15 = *MEMORY[0x277D14000];
  v16 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14000]];

  if (!v16 || !v13)
  {
    goto LABEL_22;
  }

  v17 = objc_opt_class();
  v18 = v11;
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v18;
    if (v19)
    {
      goto LABEL_16;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    v23 = v22 = v10;
    [currentHandler handleFailureInFunction:v23 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];

    v10 = v22;
  }

  v20 = 0;
LABEL_16:

  viewController = [v20 viewController];

  if (!viewController)
  {
    objc_opt_class();
    latestResults2 = [itemCopy latestResults];
    v26 = [latestResults2 objectForKeyedSubscript:v15];
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    v29 = [objc_alloc(MEMORY[0x277D268B8]) initWithRouteUID:v28];
    view = [v29 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    [v29 setLayout:3];
    [v29 setSupportsHorizontalLayout:1];
    [v29 setContext:3];
    v31 = objc_opt_new();
    [v29 setStylingProvider:v31];

    [v20 setAllowSelfSizing:1];
    [v20 setUseDefaultCellBackgroundColor:1];
    [v20 setViewController:v29];
  }

LABEL_22:
  v32 = v11;
  if ([v32 conformsToProtocol:&unk_2824AB818])
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (v34)
  {
    blurGroupingEffectView = [(HUDashboardViewController *)self blurGroupingEffectView];

    if (!blurGroupingEffectView)
    {
      NSLog(&cfstr_BlurGroupingSh.isa);
    }

    blurGroupingEffectView2 = [(HUDashboardViewController *)self blurGroupingEffectView];
    [v34 setBackgroundEffectGrouper:blurGroupingEffectView2];
  }

  if ([itemCopy conformsToProtocol:&unk_28251AC90])
  {
    v101 = v10;
    v102 = v34;
    objc_opt_class();
    v37 = v32;
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    [v39 setDelegate:self];
    [v39 setToggleable:{-[HUControllableItemCollectionViewController itemSupportsToggleInteraction:](self, "itemSupportsToggleInteraction:", itemCopy)}];
    layoutManager = [(HUDashboardViewController *)self layoutManager];
    v41 = [layoutManager gridSizeForItem:itemCopy];
    [v39 setGridSize:{v41, v42}];

    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    v45 = [itemManager3 indexPathForItem:itemCopy];
    alwaysAllowedScheduleItem = [itemManager2 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v45, "section")}];

    if ([alwaysAllowedScheduleItem isEqualToString:@"favoritesSection"])
    {
      [v39 setShowPrefixLabel:1];
      layoutManager2 = [(HUDashboardViewController *)self layoutManager];
      favoritesSectionGridSize = [layoutManager2 favoritesSectionGridSize];
      [v39 setGridSize:{favoritesSectionGridSize, v49}];
    }

    v103 = v39;
    layoutManager3 = [(HUDashboardViewController *)self layoutManager];
    v51 = [layoutManager3 gridSizeForItem:itemCopy];
    v53 = v52;

    if ([alwaysAllowedScheduleItem isEqualToString:@"AllAccessoriesSection"])
    {
      context = [(HUDashboardViewController *)self context];
      [context home];
      v55 = itemCopy;
      v56 = v32;
      v57 = alwaysAllowedScheduleItem;
      v59 = v58 = v13;
      hf_currentUserIsRestrictedGuest = [v59 hf_currentUserIsRestrictedGuest];

      v13 = v58;
      alwaysAllowedScheduleItem = v57;
      v32 = v56;
      itemCopy = v55;

      if (hf_currentUserIsRestrictedGuest)
      {
        if (v51 >= 2 && v53 >= 2)
        {
          [v103 setShowPrefixLabel:1];
        }
      }
    }

    if (![(HUDashboardViewController *)self isEditing])
    {
      v10 = v101;
      v34 = v102;
      v63 = v103;
      goto LABEL_54;
    }

    itemShowingSizeToggleButton = [(HUDashboardViewController *)self itemShowingSizeToggleButton];

    if (itemShowingSizeToggleButton == itemCopy)
    {
      v62 = 1.0;
    }

    else
    {
      v62 = 0.0;
    }

    v63 = v103;
    [v103 setShowsSizeChangeButton:itemShowingSizeToggleButton == itemCopy animated:0];
    layer = [v103 layer];
    [layer setZPosition:v62];
    v10 = v101;
    goto LABEL_45;
  }

  objc_opt_class();
  v63 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v65 = v63;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65;

  if (!v66)
  {
    alwaysAllowedScheduleItem = [v10 alwaysAllowedScheduleItem];
    if ([v63 isEqual:alwaysAllowedScheduleItem])
    {
      v63 = 0;
      goto LABEL_54;
    }

    layer = [v10 pinCodeAccessItem];
    if ([v63 isEqual:layer])
    {
      v63 = 0;
      goto LABEL_46;
    }

    v67 = v13;
    homeKeyItem = [v10 homeKeyItem];
    v69 = [v63 isEqual:homeKeyItem];

    if (v69)
    {
      v63 = 0;
      v13 = v67;
      goto LABEL_55;
    }

    v102 = v34;
    contactOwnerItem = [v10 contactOwnerItem];
    v71 = [v63 isEqual:contactOwnerItem];

    if (v71)
    {
      alwaysAllowedScheduleItem = [MEMORY[0x277D756E0] cellConfiguration];
      latestResults3 = [v63 latestResults];
      v73 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [alwaysAllowedScheduleItem setText:v73];

      systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
      textProperties = [alwaysAllowedScheduleItem textProperties];
      [textProperties setColor:systemBlackColor];

      textProperties2 = [alwaysAllowedScheduleItem textProperties];
      [textProperties2 setAlignment:1];

      layer = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0] addingSymbolicTraits:2 options:0];
      v77 = [MEMORY[0x277D74300] fontWithDescriptor:layer size:0.0];
      textProperties3 = [alwaysAllowedScheduleItem textProperties];
      [textProperties3 setFont:v77];

      [v32 setContentConfiguration:alwaysAllowedScheduleItem];
      listGroupedCellConfiguration = [MEMORY[0x277D751C0] listGroupedCellConfiguration];
      [listGroupedCellConfiguration setCornerRadius:24.0];
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
      [listGroupedCellConfiguration setBackgroundColor:systemWhiteColor];

      [v32 setBackgroundConfiguration:listGroupedCellConfiguration];
    }

    else
    {
      accessoryNoAccessItem = [v10 accessoryNoAccessItem];
      v82 = [v63 isEqual:accessoryNoAccessItem];

      alwaysAllowedScheduleItem = [MEMORY[0x277D756E0] cellConfiguration];
      latestResults4 = [v63 latestResults];
      v84 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [alwaysAllowedScheduleItem setText:v84];

      if (v82)
      {
        systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
        textProperties4 = [alwaysAllowedScheduleItem textProperties];
        [textProperties4 setColor:systemWhiteColor2];

        textProperties5 = [alwaysAllowedScheduleItem textProperties];
        [textProperties5 setAlignment:1];

        v88 = *MEMORY[0x277D769C0];
        layer = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0] addingSymbolicTraits:2 options:0];
        v89 = [MEMORY[0x277D74300] fontWithDescriptor:layer size:0.0];
        textProperties6 = [alwaysAllowedScheduleItem textProperties];
        [textProperties6 setFont:v89];

        latestResults5 = [v63 latestResults];
        v92 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
        [alwaysAllowedScheduleItem setSecondaryText:v92];

        systemWhiteColor3 = [MEMORY[0x277D75348] systemWhiteColor];
        secondaryTextProperties = [alwaysAllowedScheduleItem secondaryTextProperties];
        [secondaryTextProperties setColor:systemWhiteColor3];

        secondaryTextProperties2 = [alwaysAllowedScheduleItem secondaryTextProperties];
        [secondaryTextProperties2 setAlignment:1];

        v96 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v88];
        v97 = [MEMORY[0x277D74300] fontWithDescriptor:v96 size:0.0];
        secondaryTextProperties3 = [alwaysAllowedScheduleItem secondaryTextProperties];
        [secondaryTextProperties3 setFont:v97];

        [v32 setContentConfiguration:alwaysAllowedScheduleItem];
        listGroupedCellConfiguration2 = [MEMORY[0x277D751C0] listGroupedCellConfiguration];
        [listGroupedCellConfiguration2 setCornerRadius:24.0];
        v100 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:0.3];
        [listGroupedCellConfiguration2 setBackgroundColor:v100];

        [v32 setBackgroundConfiguration:listGroupedCellConfiguration2];
      }

      else
      {
        [v32 setContentConfiguration:alwaysAllowedScheduleItem];
        layer = [MEMORY[0x277D751C0] listGroupedCellConfiguration];
        [v32 setBackgroundConfiguration:layer];
      }
    }

    v63 = 0;
    v13 = v67;
LABEL_45:
    v34 = v102;
LABEL_46:

LABEL_54:
  }

LABEL_55:
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v12 = [itemManager displayedSectionIdentifierForSectionIndex:{objc_msgSend(pathCopy, "section")}];

  if (([kindCopy isEqualToString:*MEMORY[0x277D767D8]] & 1) == 0)
  {
    NSLog(&cfstr_AskedForAViewF.isa, kindCopy);
  }

  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  v14 = [itemManager2 titleForSection:{objc_msgSend(pathCopy, "section")}];

  if (!v14)
  {
    NSLog(&cfstr_AskedForHeader.isa, pathCopy);
  }

  v15 = +[HUGridSectionHeaderView reuseIdentifier];
  v27 = viewCopy;
  v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v15 forIndexPath:pathCopy];

  [v16 setOverrideUserInterfaceStyle:2];
  v17 = +[HUCollectionLayoutManager defaultProminentInsetGroupedHeader];
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    textProperties = [v17 textProperties];
    [textProperties setColor:whiteColor];
  }

  [v17 setText:v14];
  [v16 setContentConfiguration:v17];
  v20 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [v14 stringByReplacingOccurrencesOfString:@" " withString:&stru_2823E0EE8];
  v24 = [v20 stringWithFormat:@"%@.SectionHeader-%@", v22, v23];
  [v16 setAccessibilityIdentifier:v24];

  [(HUDashboardViewController *)self _updateHeaderView:v16 atIndexPath:pathCopy];
  context = [(HUDashboardViewController *)self context];
  LODWORD(v24) = [context canPresentDetailsViewControllerForSectionWithIdentifier:v12];

  if (v24)
  {
    objc_initWeak(&location, self);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __90__HUDashboardViewController_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
    v28[3] = &unk_277DB76C8;
    objc_copyWeak(&v31, &location);
    v29 = v14;
    v30 = v12;
    [v16 setActionHandler:v28];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __90__HUDashboardViewController_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (([WeakRetained isEditing] & 1) == 0)
  {
    v3 = [MEMORY[0x277D14670] isHomeControlService];
    v4 = HFLogForCategory();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 32);
        v16 = 138412546;
        v17 = WeakRetained;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ User tapped section header disclosure button to launch Home app for section: %@", &v16, 0x16u);
      }

      v7 = *(a1 + 40);
      v8 = [WeakRetained context];
      v9 = [v8 home];
      v10 = HURoomForDashboardSectionIdentifier(v7, v9);

      if (v10)
      {
        v11 = [MEMORY[0x277D14C80] roomURLForRoom:v10];
        v12 = [MEMORY[0x277D148E8] sharedInstance];
        v13 = [v12 openSensitiveURL:v11];
      }

      else
      {
        v11 = HFLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 40);
          v16 = 138412546;
          v17 = WeakRetained;
          v18 = 2112;
          v19 = v15;
          _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%@ Failed to identify room for section: %@", &v16, 0x16u);
        }
      }
    }

    else
    {
      if (v5)
      {
        v14 = *(a1 + 32);
        v16 = 138412546;
        v17 = WeakRetained;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ User tapped section header disclosure button to present details view controller for section: %@", &v16, 0x16u);
      }

      [WeakRetained _presentDetailsViewControllerForSectionWithIdentifier:*(a1 + 40) animated:1];
    }
  }
}

- (id)reorderableItemListForSection:(int64_t)section
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  context = [(HUDashboardViewController *)self context];
  home = [context home];
  v9 = HURoomForDashboardSectionIdentifier(v6, home);

  v10 = HUAccessoryTypeGroupForDashboardSectionIdentifier(v6);
  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  v12 = [itemManager2 itemModuleForSectionIdentifier:v6];

  if (v12)
  {
    reorderableHomeKitItemList = [v12 reorderableHomeKitItemList];
    goto LABEL_10;
  }

  if (v9)
  {
    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    reorderableFavoritesList = [itemManager3 reorderableServiceListForRoom:v9];
LABEL_9:
    reorderableHomeKitItemList = reorderableFavoritesList;

    goto LABEL_10;
  }

  if (v10)
  {
    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    reorderableFavoritesList = [itemManager3 reorderableServiceListForType:v10];
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"favoritesSection"])
  {
    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    reorderableFavoritesList = [itemManager3 reorderableFavoritesList];
    goto LABEL_9;
  }

  reorderableHomeKitItemList = 0;
LABEL_10:

  return reorderableHomeKitItemList;
}

- (void)setReorderableItemList:(id)list forSection:(int64_t)section
{
  listCopy = list;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v8 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  context = [(HUDashboardViewController *)self context];
  home = [context home];
  v11 = HURoomForDashboardSectionIdentifier(v8, home);

  v12 = HUAccessoryTypeGroupForDashboardSectionIdentifier(v8);
  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  v14 = [itemManager2 itemModuleForSectionIdentifier:v8];

  objc_opt_class();
  v18 = listCopy;
  if (objc_opt_isKindOfClass())
  {
    v15 = v18;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v14)
  {
    [v14 setReorderableHomeKitItemList:v16];
    goto LABEL_13;
  }

  if (v11)
  {
    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    [itemManager3 setReorderableServiceList:v16 forRoom:v11];
  }

  else if (v12)
  {
    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    [itemManager3 setReorderableServiceList:v16 forType:v12];
  }

  else
  {
    if (![v8 isEqualToString:@"favoritesSection"])
    {
      goto LABEL_13;
    }

    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    [itemManager3 setReorderableFavoritesList:v16];
  }

LABEL_13:
}

- (void)didReorderItemWithSortedItemsBySectionID:(id)d
{
  v6.receiver = self;
  v6.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v6 didReorderItemWithSortedItemsBySectionID:d];
  collectionView = [(HUDashboardViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (BOOL)_hasTapActionForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (-[HUDashboardViewController bannerItemModuleController](self, "bannerItemModuleController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasTapActionForItem:itemCopy], v5, (v6))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HUDashboardViewController;
    v7 = [(HUControllableItemCollectionViewController *)&v9 _hasTapActionForItem:itemCopy];
  }

  return v7;
}

- (id)_performTapActionForItem:(id)item tappedArea:(id)area
{
  itemCopy = item;
  areaCopy = area;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      bannerItemModuleController = [(HUDashboardViewController *)self bannerItemModuleController];
      v9 = [bannerItemModuleController hasTapActionForItem:itemCopy];

      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  v10 = [(HUItemCollectionViewController *)self moduleControllerForItem:itemCopy];
  v11 = v10;
  if (v10)
  {
    [v10 didSelectItem:itemCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_8:
    v14.receiver = self;
    v14.super_class = HUDashboardViewController;
    futureWithNoResult = [(HUControllableItemCollectionViewController *)&v14 _performTapActionForItem:itemCopy tappedArea:areaCopy];
    goto LABEL_10;
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

LABEL_10:

  return futureWithNoResult;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if (!editing)
  {
    itemShowingSizeToggleButton = [(HUDashboardViewController *)self itemShowingSizeToggleButton];

    if (itemShowingSizeToggleButton)
    {
      [(HUDashboardViewController *)self setItemShowingSizeToggleButton:0];
    }
  }

  if ([(HUDashboardViewController *)self isEditing]!= editingCopy)
  {
    v8.receiver = self;
    v8.super_class = HUDashboardViewController;
    [(HUControllableItemCollectionViewController *)&v8 setEditing:editingCopy animated:animatedCopy];
    [(HUDashboardViewController *)self _updateAllHeaderViews];
    [(HUDashboardViewController *)self _updateBarButtons];
    [(HUDashboardViewController *)self reloadLayoutAnimated:animatedCopy fastUpdate:1];
  }
}

- (void)setViewIsFullyVisible:(BOOL)visible
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_viewIsFullyVisible != visible)
  {
    self->_viewIsFullyVisible = visible;
    if (visible)
    {
      viewFirstTimeFullyVisibleFuture = [(HUDashboardViewController *)self viewFirstTimeFullyVisibleFuture];
      isFinished = [viewFirstTimeFullyVisibleFuture isFinished];

      if ((isFinished & 1) == 0)
      {
        v6 = HFLogForCategory();
        v7 = HFLogForCategory();
        v8 = os_signpost_id_make_with_pointer(v7, self);

        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138412290;
          v16 = v10;
          _os_signpost_emit_with_name_impl(&dword_20CEB6000, v6, OS_SIGNPOST_INTERVAL_END, v8, "HUViewFirstAppearance", "%@.viewFirstTimeFullyVisibleFuture ends", buf, 0xCu);
        }
      }

      viewFirstTimeFullyVisibleFuture2 = [(HUDashboardViewController *)self viewFirstTimeFullyVisibleFuture];
      [viewFirstTimeFullyVisibleFuture2 finishWithNoResult];

      viewFullyVisibleFuture = [(HUDashboardViewController *)self viewFullyVisibleFuture];
      [viewFullyVisibleFuture finishWithNoResult];
    }

    else
    {
      viewFullyVisibleFuture2 = [(HUDashboardViewController *)self viewFullyVisibleFuture];
      [viewFullyVisibleFuture2 cancel];

      v14 = objc_alloc_init(MEMORY[0x277D2C900]);
      [(HUDashboardViewController *)self setViewFullyVisibleFuture:?];
    }
  }
}

- (id)tappableAreaForPoint:(CGPoint)point inItem:(id)item atIndexPath:(id)path
{
  y = point.y;
  x = point.x;
  itemCopy = item;
  pathCopy = path;
  objc_opt_class();
  collectionView = [(HUDashboardViewController *)self collectionView];
  v12 = [collectionView cellForItemAtIndexPath:pathCopy];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  if (!v13)
  {
    v16.receiver = self;
    v16.super_class = HUDashboardViewController;
    v14 = [(HUControllableItemCollectionViewController *)&v16 tappableAreaForPoint:itemCopy inItem:pathCopy atIndexPath:x, y];
  }

  return v14;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  statusItemModule = [itemManager statusItemModule];
  v7 = [moduleCopy isEqual:statusItemModule];

  if (v7)
  {
    v8 = HUStatusItemModuleController;
LABEL_3:
    bannerItemModuleController = [[v8 alloc] initWithModule:moduleCopy];
LABEL_6:
    v14 = bannerItemModuleController;
    goto LABEL_7;
  }

  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  bannerItemModule = [itemManager2 bannerItemModule];
  v12 = [moduleCopy isEqual:bannerItemModule];

  if (v12)
  {
    v13 = [[HUBannerItemModuleController alloc] initWithModule:moduleCopy host:self delegate:self];
    [(HUDashboardViewController *)self setBannerItemModuleController:v13];

    bannerItemModuleController = [(HUDashboardViewController *)self bannerItemModuleController];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = HUDashboardActionSetItemModuleController;
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    context = [(HUDashboardViewController *)self context];
    if (context)
    {
      context2 = [(HUDashboardViewController *)self context];
      cameraPresentationStyle = [context2 cameraPresentationStyle];
    }

    else
    {
      cameraPresentationStyle = 1;
    }

    v19 = [[HUDashboardCameraItemModuleController alloc] initWithModule:moduleCopy cameraPresentationStyle:cameraPresentationStyle];
    [(HUDashboardViewController *)self setCameraItemModuleController:v19];

    bannerItemModuleController = [(HUDashboardViewController *)self cameraItemModuleController];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = HUServicePlaceholderItemModuleController;
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bannerItemModuleController = [(HUDashboardViewController *)self createDashboardTipModuleControllerWithModule:moduleCopy];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bannerItemModuleController = [(HUDashboardViewController *)self createEnergyDashboardModuleControllerWith:moduleCopy];
    goto LABEL_6;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)didSelectWelcomeBanner:(id)banner
{
  _dashboardNavigator = [(HUDashboardViewController *)self _dashboardNavigator];
  showDiscoverTab = [_dashboardNavigator showDiscoverTab];
}

- (void)didSelectUnreachableResidentsBanner:(id)banner
{
  _dashboardNavigator = [(HUDashboardViewController *)self _dashboardNavigator];
  context = [(HUDashboardViewController *)self context];
  home = [context home];
  v6 = [_dashboardNavigator showBridgeSettingsForHome:home];
}

- (void)didSelectHomeHubMigrationBanner:(id)banner
{
  bannerCopy = banner;
  context = [(HUDashboardViewController *)self context];
  home = [context home];

  v8 = objc_alloc(MEMORY[0x277D14C98]);
  currentUser = [home currentUser];
  v10 = [v8 initWithHome:home user:currentUser nameStyle:0];

  v11 = [v10 setDismissedHomeHubMigrationBanner:1];
  module = [bannerCopy module];
  bannerItemProvider = [module bannerItemProvider];
  homeHubMigrationBannerItem = [bannerItemProvider homeHubMigrationBannerItem];

  devices = [homeHubMigrationBannerItem devices];
  v16 = [home hf_homeHubMigrationBannerTapActionFromViewController:self devices:devices];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__HUDashboardViewController_didSelectHomeHubMigrationBanner___block_invoke;
  v20[3] = &unk_277DBA120;
  v22 = bannerCopy;
  v23 = a2;
  v21 = homeHubMigrationBannerItem;
  v17 = bannerCopy;
  v18 = homeHubMigrationBannerItem;
  v19 = [v16 flatMap:v20];
}

id __61__HUDashboardViewController_didSelectHomeHubMigrationBanner___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D14788];
  v3 = [MEMORY[0x277CBEB98] na_setWithSafeObject:*(a1 + 32)];
  v4 = [v2 requestToUpdateItems:v3 senderSelector:*(a1 + 48)];

  v5 = [*(a1 + 40) module];
  v6 = [v5 itemUpdater];
  v7 = [v6 performItemUpdateRequest:v4];

  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v8;
}

- (id)quickControlPresentationContextForItem:(id)item atIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v17.receiver = self;
  v17.super_class = HUDashboardViewController;
  itemCopy = item;
  v10 = [(HUControllableItemCollectionViewController *)&v17 quickControlPresentationContextForItem:itemCopy atIndexPath:path point:x, y];
  v11 = [(HUDashboardViewController *)self context:v17.receiver];
  room = [v11 room];
  if (room)
  {
    [v10 setParentViewHomeKitObject:room];
  }

  else
  {
    context = [(HUDashboardViewController *)self context];
    home = [context home];
    [v10 setParentViewHomeKitObject:home];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v10 setPrefersSystemTransitions:1];
  }

  return v10;
}

- (id)presentationCoordinator:(id)coordinator contextForPresentationAtPoint:(CGPoint)point
{
  v11.receiver = self;
  v11.super_class = HUDashboardViewController;
  v5 = [(HUControllableItemCollectionViewController *)&v11 presentationCoordinator:coordinator contextForPresentationAtPoint:point.x, point.y];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  actionSetItemModule = [itemManager actionSetItemModule];
  predictedActionSetItems = [actionSetItemModule predictedActionSetItems];

  item = [v5 item];
  LODWORD(actionSetItemModule) = [predictedActionSetItems containsObject:item];

  if (actionSetItemModule)
  {
    [v5 setIsItemDisplayedByPrediction:1];
  }

  return v5;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context
{
  v75 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  v64.receiver = self;
  v64.super_class = HUDashboardViewController;
  if ([(HUControllableItemCollectionViewController *)&v64 presentationCoordinator:coordinatorCopy shouldBeginPresentationWithContext:contextCopy])
  {
    item = [contextCopy item];
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v10 = [itemManager indexPathForItem:item];

    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    v12 = [itemManager2 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v10, "section")}];

    if ([v12 isEqualToString:@"energySection"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"tipsSection"))
    {
      v13 = 0;
LABEL_51:

      goto LABEL_52;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HUDashboardViewController bannerItemModuleController](self, "bannerItemModuleController"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 hasTapActionForItem:item], v14, (v15 & 1) == 0))
    {
      objc_opt_class();
      sourceItem = [item sourceItem];
      if (objc_opt_isKindOfClass())
      {
        v19 = sourceItem;
      }

      else
      {
        v19 = 0;
      }

      v58 = v19;

      [contextCopy setItem:v58];
      v20 = MEMORY[0x277D143D8];
      itemManager3 = [(HUItemCollectionViewController *)self itemManager];
      bannerItemModule = [itemManager3 bannerItemModule];
      hiddenBanners = [bannerItemModule hiddenBanners];
      [v20 sendBannerInteractionforItem:item tappedBannerItemOverrideClassName:0 hiddenBannerEvents:hiddenBanners];
    }

    else
    {
      objc_opt_class();
      itemManager3 = item;
      if (objc_opt_isKindOfClass())
      {
        v17 = itemManager3;
      }

      else
      {
        v17 = 0;
      }

      v58 = v17;
    }

    if (v58 && [(HUDashboardViewController *)self _canSkipStatusDetailsForItem:v58])
    {
      latestResults = [v58 latestResults];
      v55 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14078]];

      if ([v55 count] == 1)
      {
        anyObject = [v55 anyObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          hf_serviceGroup = [anyObject hf_serviceGroup];
          v26 = hf_serviceGroup;
          if (hf_serviceGroup)
          {
            v27 = hf_serviceGroup;
          }

          else
          {
            v27 = anyObject;
          }

          v28 = v27;

          anyObject = v28;
        }

        v29 = [(HUDashboardViewController *)self _shouldShowAccessoryControlsForHomeKitObject:anyObject fromStatusItem:v58, v55];
        v30 = HFLogForCategory();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          if (v31)
          {
            *buf = 138412802;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v58;
            *&buf[22] = 2112;
            v72 = anyObject;
            _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "%@ Skipping status details for item: %@ and instead presenting accessory controls for HomeKit object: %@", buf, 0x20u);
          }

          v32 = [(HUDashboardViewController *)self _presentAccessoryControlsForHomeKitObject:anyObject fromStatusItem:v58 animated:1];
        }

        else
        {
          if (v31)
          {
            *buf = 138412802;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v58;
            *&buf[22] = 2112;
            v72 = anyObject;
            _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "%@ Skipping status details for item: %@ and instead presenting accessory settings for HomeKit object: %@", buf, 0x20u);
          }

          v37 = [(HUDashboardViewController *)self _presentAccessorySettingsForHomeKitObject:anyObject fromStatusItem:v58 animated:1];
        }

LABEL_49:
        v13 = 0;
LABEL_50:

        goto LABEL_51;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v72 = __Block_byref_object_copy__28;
      v73 = __Block_byref_object_dispose__28;
      v74 = 0;
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __88__HUDashboardViewController_presentationCoordinator_shouldBeginPresentationWithContext___block_invoke;
      v63[3] = &unk_277DC29F0;
      v63[4] = buf;
      [v55 enumerateObjectsUsingBlock:v63];
      v33 = *(*&buf[8] + 40);
      if (v33)
      {
        if ([(HUDashboardViewController *)self _shouldShowAccessoryControlsForHomeKitObject:v33 fromStatusItem:v58])
        {
          v34 = HFLogForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(*&buf[8] + 40);
            *v65 = 138412802;
            selfCopy2 = self;
            v67 = 2112;
            v68 = v58;
            v69 = 2112;
            v70 = v35;
            _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "%@ Skipping status details for item: %@ and instead presenting accessory controls for HMServiceGroup: %@", v65, 0x20u);
          }

          v36 = [(HUDashboardViewController *)self _presentAccessoryControlsForHomeKitObject:*(*&buf[8] + 40) fromStatusItem:v58 animated:1];
        }

        else
        {
          v51 = HFLogForCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = *(*&buf[8] + 40);
            *v65 = 138412802;
            selfCopy2 = self;
            v67 = 2112;
            v68 = v58;
            v69 = 2112;
            v70 = v52;
            _os_log_impl(&dword_20CEB6000, v51, OS_LOG_TYPE_DEFAULT, "%@ Skipping status details for item: %@ and instead presenting accessory settings for HMServiceGroup: %@", v65, 0x20u);
          }

          v53 = [(HUDashboardViewController *)self _presentAccessorySettingsForHomeKitObject:*(*&buf[8] + 40) fromStatusItem:v58 animated:1];
        }

        _Block_object_dispose(buf, 8);

        goto LABEL_49;
      }

      _Block_object_dispose(buf, 8);
    }

    if ([MEMORY[0x277D14670] isHomeControlService] && (objc_msgSend(contextCopy, "didAuthenticate") & 1) == 0)
    {
      itemManager4 = [(HUItemCollectionViewController *)self itemManager];
      item2 = [contextCopy item];
      v41 = [itemManager4 childItemsForItem:item2 ofClass:objc_opt_class()];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __88__HUDashboardViewController_presentationCoordinator_shouldBeginPresentationWithContext___block_invoke_317;
      v62[3] = &unk_277DB85D8;
      v62[4] = self;
      LODWORD(v57) = [v41 na_any:v62];

      v42 = v57;
      if (v57)
      {
        v43 = [contextCopy copy];
        controlItems = [contextCopy controlItems];
        [v43 setControlItems:controlItems];

        lockAuthorizationDelegate = [(HUControllableItemCollectionViewController *)self lockAuthorizationDelegate];
        v46 = [lockAuthorizationDelegate authorizeIfLockedForViewController:self];

        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __88__HUDashboardViewController_presentationCoordinator_shouldBeginPresentationWithContext___block_invoke_2;
        v59[3] = &unk_277DB7E68;
        v60 = v43;
        v61 = coordinatorCopy;
        v47 = v43;
        v48 = [v46 addSuccessBlock:v59];

        v42 = v57;
      }

      v38 = v42 ^ 1;
    }

    else
    {
      v38 = 1;
    }

    latestResults2 = [item latestResults];
    v50 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

    v13 = (v50 == 0) & v38;
    goto LABEL_50;
  }

  v13 = 0;
LABEL_52:

  return v13;
}

void __88__HUDashboardViewController_presentationCoordinator_shouldBeginPresentationWithContext___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  v13 = v5;
  if (objc_opt_isKindOfClass())
  {
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 hf_serviceGroup];
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    if (!v10)
    {
LABEL_8:
      objc_storeStrong((v9 + 40), v8);
      goto LABEL_10;
    }

    if ([v10 isEqual:v8])
    {
      v9 = *(*(a1 + 32) + 8);
      goto LABEL_8;
    }
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  *a3 = 1;
LABEL_10:
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginLongPressPresentationWithContext:(id)context
{
  item = [context item];
  v5 = objc_opt_respondsToSelector();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() | v5) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  objc_opt_class();
  v9 = viewCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    collectionView = [(HUDashboardViewController *)self collectionView];
    v14 = [collectionView indexPathForItemAtPoint:{x, y}];

    if (v14)
    {
      itemManager = [(HUItemCollectionViewController *)self itemManager];
      v16 = [itemManager displayedItemAtIndexPath:v14];

      if (v16)
      {
        itemManager2 = [(HUItemCollectionViewController *)self itemManager];
        v18 = [itemManager2 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v14, "section")}];

        v12 = 0;
        if (([v18 isEqualToString:@"tipsSection"] & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"filterBarSection") & 1) == 0)
        {
          if (!-[HUDashboardViewController isEditing](self, "isEditing") || (-[HUDashboardViewController layoutManager](self, "layoutManager"), v20 = objc_claimAutoreleasedReturnValue(), -[HUDashboardViewController context](self, "context"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v20 isAdaptiveTileStyleInSectionIdentifier:v18 context:v21], v21, v20, v22))
          {
            v12 = 1;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)presentationCoordinator:(id)coordinator touchDidBeginForItem:(id)item tappedArea:(id)area
{
  if (@"HUTileCellTappableAreaStateToggleButton" == area)
  {
    itemCopy = item;
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v14 = [itemManager indexPathForItem:itemCopy];

    collectionView = [(HUDashboardViewController *)self collectionView];
    v10 = [collectionView cellForItemAtIndexPath:v14];

    objc_opt_class();
    v11 = v10;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    [v13 animateIconTouchDown];
  }
}

- (void)presentationCoordinator:(id)coordinator touchDidEndForItem:(id)item tappedArea:(id)area
{
  if (@"HUTileCellTappableAreaStateToggleButton" == area)
  {
    itemCopy = item;
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v14 = [itemManager indexPathForItem:itemCopy];

    collectionView = [(HUDashboardViewController *)self collectionView];
    v10 = [collectionView cellForItemAtIndexPath:v14];

    objc_opt_class();
    v11 = v10;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    [v13 animateIconTouchUp];
  }
}

- (BOOL)presentationCoordinator:(id)coordinator shouldAllowTapticFeedbackForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v7 = itemManager;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    alwaysAllowedScheduleItem = [v8 alwaysAllowedScheduleItem];
    if ([v9 isEqual:alwaysAllowedScheduleItem])
    {
      v12 = 0;
    }

    else
    {
      accessoryNoAccessItem = [v8 accessoryNoAccessItem];
      v15 = [v9 isEqual:accessoryNoAccessItem];

      v12 = v15 ^ 1;
    }
  }

  return v12;
}

- (void)presentationCoordinator:(id)coordinator didRecognizeTapForItem:(id)item tappedArea:(id)area
{
  v107 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  itemCopy = item;
  areaCopy = area;
  latestResults = [itemCopy latestResults];
  v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FD8]];

  if (!v13)
  {
    pressedTile = [coordinatorCopy pressedTile];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    if (objc_opt_isKindOfClass())
    {
      v21 = itemManager;
    }

    else
    {
      v21 = 0;
    }

    v89 = v21;

    objc_opt_class();
    v22 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (!v24)
    {
      alwaysAllowedScheduleItem = [v89 alwaysAllowedScheduleItem];
      if ([v22 isEqual:alwaysAllowedScheduleItem])
      {
      }

      else
      {
        accessoryNoAccessItem = [v89 accessoryNoAccessItem];
        v28 = [v22 isEqual:accessoryNoAccessItem];

        if (v22 && !v28)
        {
          contactOwnerItem = [v89 contactOwnerItem];
          v30 = [v22 isEqual:contactOwnerItem];

          if (v30)
          {
            context = [(HUDashboardViewController *)self context];
            home = [context home];
            owner = [home owner];
            userID = [owner userID];

            if (userID)
            {
              v35 = MEMORY[0x277CBEBC0];
              v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"sms://%@", userID];
              v37 = [v35 URLWithString:v36];

              v38 = HFLogForCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = NSStringFromSelector(a2);
                *buf = 138412802;
                selfCopy2 = self;
                v99 = 2112;
                v100 = v39;
                v101 = 2112;
                v102 = v37;
                _os_log_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_DEFAULT, "%@:%@, User requests to contact owner. Opening URL { %@ }", buf, 0x20u);
              }

              mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
              v41 = [mEMORY[0x277D148E8] openSensitiveURL:v37];
            }

            else
            {
              v37 = HFLogForCategory();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v59 = NSStringFromSelector(a2);
                context2 = [(HUDashboardViewController *)self context];
                home2 = [context2 home];
                owner2 = [home2 owner];
                context3 = [(HUDashboardViewController *)self context];
                home3 = [context3 home];
                *buf = 138413314;
                selfCopy2 = self;
                v99 = 2112;
                v100 = v59;
                v101 = 2112;
                v102 = owner2;
                v103 = 2112;
                v104 = 0;
                v105 = 2112;
                v106 = home3;
                _os_log_impl(&dword_20CEB6000, v37, OS_LOG_TYPE_DEFAULT, "%@:%@, Unable to open URL to contact owner {%@} with email {%@} in home {%@}", buf, 0x34u);
              }
            }
          }

          else
          {
            pinCodeAccessItem = [v89 pinCodeAccessItem];
            v43 = [v22 isEqual:pinCodeAccessItem];

            if (v43)
            {
              context4 = [(HUDashboardViewController *)self context];
              home4 = [context4 home];

              currentUser = [home4 currentUser];
              pinCodeManager = [v89 pinCodeManager];
              pinCodeManager2 = [v89 pinCodeManager];
              userPinCodes = [pinCodeManager2 userPinCodes];

              objc_initWeak(buf, self);
              v91[0] = MEMORY[0x277D85DD0];
              v91[1] = 3221225472;
              v91[2] = __87__HUDashboardViewController_presentationCoordinator_didRecognizeTapForItem_tappedArea___block_invoke;
              v91[3] = &unk_277DBE0C8;
              objc_copyWeak(v96, buf);
              v48 = currentUser;
              v92 = v48;
              v96[1] = a2;
              v49 = home4;
              v93 = v49;
              v94 = v89;
              v50 = pinCodeManager;
              v95 = v50;
              v51 = [userPinCodes addSuccessBlock:v91];

              objc_destroyWeak(v96);
              objc_destroyWeak(buf);
            }

            else
            {
              homeKeyItem = [v89 homeKeyItem];
              v53 = [v22 isEqual:homeKeyItem];

              if (v53)
              {
                v54 = MEMORY[0x277D14D08];
                context5 = [(HUDashboardViewController *)self context];
                home5 = [context5 home];
                v57 = [v54 handleAddOrShowHomeKeyButtonTapForHome:home5];
                v58 = [v57 addCompletionBlock:&__block_literal_global_345_0];
              }

              else
              {
                itemManager2 = [(HUItemCollectionViewController *)self itemManager];
                v88 = [itemManager2 indexPathForItem:v22];

                itemManager3 = [(HUItemCollectionViewController *)self itemManager];
                v85 = [itemManager3 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v88, "section")}];

                v64 = &unk_28251AC90;
                v65 = v22;
                if ([v65 conformsToProtocol:v64])
                {
                  v66 = v65;
                }

                else
                {
                  v66 = 0;
                }

                v82 = v66;

                layoutManager = [(HUDashboardViewController *)self layoutManager];
                context6 = [(HUDashboardViewController *)self context];
                v69 = [layoutManager isAdaptiveTileStyleInSectionIdentifier:v85 context:context6];

                if ([(HUDashboardViewController *)self isEditing]&& v82 && v69)
                {
                  itemShowingSizeToggleButton = [(HUDashboardViewController *)self itemShowingSizeToggleButton];

                  v71 = v82;
                  if (itemShowingSizeToggleButton == v82)
                  {
                    v72 = 0;
                  }

                  else
                  {
                    v72 = v82;
                  }

                  [(HUDashboardViewController *)self setItemShowingSizeToggleButton:v72 animated:1];
                }

                else
                {
                  [(HUDashboardViewController *)self setItemShowingSizeToggleButton:0 animated:1];
                  if (objc_opt_respondsToSelector())
                  {
                    v80 = v65;
                    activityLogCoordinator = [v80 activityLogCoordinator];
                    itemManager4 = [(HUItemCollectionViewController *)self itemManager];
                    home6 = [itemManager4 home];
                    v76 = [HUActivityLogViewControllerFactory createActivityLogViewControllerWith:home6 activityLogCoordinator:activityLogCoordinator];

                    v77 = objc_alloc(MEMORY[0x277D757A0]);
                    v78 = [v77 initWithRootViewController:v76];
                    navigationController = [(HUDashboardViewController *)self navigationController];
                    [navigationController presentViewController:v78 animated:1 completion:0];
                  }

                  else
                  {
                    v90.receiver = self;
                    v90.super_class = HUDashboardViewController;
                    [(HUControllableItemCollectionViewController *)&v90 presentationCoordinator:coordinatorCopy didRecognizeTapForItem:v65 tappedArea:areaCopy];
                  }

                  v71 = v82;
                }
              }
            }
          }

          goto LABEL_16;
        }
      }
    }

    v26 = HFLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      selfCopy2 = "[HUDashboardViewController presentationCoordinator:didRecognizeTapForItem:tappedArea:]";
      v99 = 2112;
      v100 = v24;
      v101 = 2112;
      v102 = v22;
      _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "(%s) Skipping action because ruleItem = %@ | item = %@", buf, 0x20u);
    }

LABEL_16:
    goto LABEL_17;
  }

  v14 = MEMORY[0x277D143C0];
  itemManager5 = [(HUItemCollectionViewController *)self itemManager];
  home7 = [itemManager5 home];
  v17 = [v14 addAndSetupNewAccessoriesForHome:home7 room:0];

LABEL_17:
}

void __87__HUDashboardViewController_presentationCoordinator_didRecognizeTapForItem_tappedArea___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__HUDashboardViewController_presentationCoordinator_didRecognizeTapForItem_tappedArea___block_invoke_2;
  v29[3] = &unk_277DBC528;
  v30 = *(a1 + 32);
  v5 = [v3 na_firstObjectPassingTest:v29];
  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(*(a1 + 72));
      *buf = 138412546;
      v32 = WeakRetained;
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Found matching PIN code for user.", buf, 0x16u);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__HUDashboardViewController_presentationCoordinator_didRecognizeTapForItem_tappedArea___block_invoke_331;
    aBlock[3] = &unk_277DBC838;
    objc_copyWeak(&v28, (a1 + 64));
    v25 = v5;
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v8 = _Block_copy(aBlock);
    v9 = objc_alloc_init(MEMORY[0x277CD4790]);
    v23 = 0;
    v10 = [v9 canEvaluatePolicy:2 error:&v23];
    v11 = v23;
    v12 = v11;
    if (v10)
    {
      v13 = _HULocalizedStringWithDefaultValue(@"HUPinCodePassCodeAuthString", @"HUPinCodePassCodeAuthString", 1);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __87__HUDashboardViewController_presentationCoordinator_didRecognizeTapForItem_tappedArea___block_invoke_2_339;
      v20[3] = &unk_277DC2710;
      v22 = v8;
      v21 = v9;
      [v21 evaluatePolicy:2 localizedReason:v13 reply:v20];
    }

    else
    {
      v18 = [v11 domain];
      if ([v18 isEqualToString:*MEMORY[0x277CD4770]])
      {
        v19 = [v12 code] == -5;

        if (v19)
        {
          v8[2](v8);
LABEL_14:

          objc_destroyWeak(&v28);
          goto LABEL_15;
        }
      }

      else
      {
      }

      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "[HUDashboardViewController presentationCoordinator:didRecognizeTapForItem:tappedArea:]_block_invoke";
        v33 = 2112;
        v34 = v12;
        _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "(%s) cannot local authenticate. error = %@", buf, 0x16u);
      }
    }

    goto LABEL_14;
  }

  v14 = [objc_alloc(MEMORY[0x277D14C98]) initWithHome:*(a1 + 40) user:*(a1 + 32) nameStyle:0];
  v15 = [[HUPersonalPINCodeViewController alloc] initWithItem:v14 pinCodeManager:*(a1 + 56) home:*(a1 + 40)];
  [(HUPersonalPINCodeViewController *)v15 setShowDoneButtonInNavBar:1];
  v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v15];
  [v16 setModalPresentationStyle:2];
  v17 = [WeakRetained hu_presentPreloadableViewController:v16 animated:1];

LABEL_15:
}

uint64_t __87__HUDashboardViewController_presentationCoordinator_didRecognizeTapForItem_tappedArea___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userLabel];
  v4 = [v3 user];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

void __87__HUDashboardViewController_presentationCoordinator_didRecognizeTapForItem_tappedArea___block_invoke_331(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [objc_alloc(MEMORY[0x277D14920]) initWithPinCode:*(a1 + 32) inHome:*(a1 + 40) onAccessory:0];
  v3 = [HUPersonalPINCodeViewController alloc];
  v4 = [*(a1 + 48) pinCodeManager];
  v5 = [(HUPersonalPINCodeViewController *)v3 initWithItem:v2 pinCodeManager:v4 home:*(a1 + 40)];

  [(HUPersonalPINCodeViewController *)v5 setShowDoneButtonInNavBar:1];
  v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v6 setModalPresentationStyle:2];
  v7 = [WeakRetained hu_presentPreloadableViewController:v6 animated:1];
}

void __87__HUDashboardViewController_presentationCoordinator_didRecognizeTapForItem_tappedArea___block_invoke_2_339(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[HUDashboardViewController presentationCoordinator:didRecognizeTapForItem:tappedArea:]_block_invoke_2";
      v9 = 2112;
      v10 = v5;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "(%s) When evaluating authentication policy, authError = %@", &v7, 0x16u);
    }
  }

  else
  {
    if (a2)
    {
      dispatch_async(MEMORY[0x277D85CD0], *(a1 + 40));
    }

    [*(a1 + 32) invalidate];
  }
}

- (BOOL)hasDetailsActionForPresentationCoordinator:(id)coordinator item:(id)item
{
  itemCopy = item;
  v6 = ([MEMORY[0x277D14670] isHomeControlService] & 1) == 0 && -[HUDashboardViewController _hasDetailViewControllerForItem:](self, "_hasDetailViewControllerForItem:", itemCopy);

  return v6;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item
{
  itemCopy = item;
  v6 = [(HUDashboardViewController *)self _quickControlDetailViewControllerForItem:itemCopy];
  if (!v6)
  {
    NSLog(&cfstr_NoDetailsViewC.isa, itemCopy);
  }

  return v6;
}

- (BOOL)_hasDetailViewControllerForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [itemCopy conformsToProtocol:&unk_28251B0C8];
  objc_opt_class();
  v7 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  sourceItem = [v9 sourceItem];
  v11 = [sourceItem conformsToProtocol:&unk_28251B0C8];

  v12 = isKindOfClass | v6 | [(HUDashboardViewController *)self matterItemSupportsAccessoryDetails:v7]| v11;
  return v12 & 1;
}

- (id)_quickControlDetailViewControllerForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    NSLog(&cfstr_AttemptedToPre.isa);
    objc_opt_class();
    v5 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    actionSet = [v7 actionSet];

    if (!actionSet)
    {
      NSLog(&cfstr_ActionsetMustN.isa);
      v14 = 0;
LABEL_29:

      if (v14)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v9 = objc_alloc(MEMORY[0x277D14398]);
    actionSet2 = [v7 actionSet];
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    home = [itemManager home];
    v13 = [v9 initWithExistingObject:actionSet2 inHome:home];

    v14 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v13 mode:0];
LABEL_27:

    goto LABEL_29;
  }

  if ([itemCopy conformsToProtocol:&unk_28251B0C8])
  {
    v15 = itemCopy;
    if ([v15 conformsToProtocol:&unk_28251B0C8])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    objc_opt_class();
    v7 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = v7;
    }

    else
    {
      v18 = 0;
    }

    v13 = v18;

    if (v13)
    {
      accessory = [v13 accessory];
      hf_isSingleServiceLikeAccessory = [accessory hf_isSingleServiceLikeAccessory];

      if (hf_isSingleServiceLikeAccessory)
      {
        accessory2 = [v13 accessory];
        hf_primaryService = [accessory2 hf_primaryService];
        v23 = [v13 serviceItemForService:hf_primaryService];

        v7 = v23;
      }
    }

    objc_initWeak(&location, self);
    v24 = v33;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __70__HUDashboardViewController__quickControlDetailViewControllerForItem___block_invoke;
    v33[3] = &unk_277DB8770;
    objc_copyWeak(&v34, &location);
    v25 = [HUAccessoryDetailsRouter detailsViewFor:v7 navigationController:0 dismiss:v33];
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v26 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v7 = v27;

    sourceItem = [v7 sourceItem];
    if ([sourceItem conformsToProtocol:&unk_28251B0C8])
    {
      v29 = sourceItem;
    }

    else
    {
      v29 = 0;
    }

    v13 = v29;

    objc_initWeak(&location, self);
    v24 = v31;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __70__HUDashboardViewController__quickControlDetailViewControllerForItem___block_invoke_2;
    v31[3] = &unk_277DB8770;
    objc_copyWeak(&v32, &location);
    v25 = [HUAccessoryDetailsRouter detailsViewFor:v13 navigationController:0 dismiss:v31];
LABEL_26:
    v14 = v25;
    objc_destroyWeak(v24 + 4);
    objc_destroyWeak(&location);
    goto LABEL_27;
  }

LABEL_30:
  NSLog(&cfstr_NoDetailsViewC.isa, itemCopy);
  v14 = 0;
LABEL_31:

  return v14;
}

void __70__HUDashboardViewController__quickControlDetailViewControllerForItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _dismissPresentedViewControllersAnimated:1];
}

void __70__HUDashboardViewController__quickControlDetailViewControllerForItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _dismissPresentedViewControllersAnimated:1];
}

- (void)_updateTabBarVisibility
{
  _shouldHideTabBar = [(HUDashboardViewController *)self _shouldHideTabBar];
  tabBarController = [(HUDashboardViewController *)self tabBarController];
  tabBar = [tabBarController tabBar];
  [tabBar setHidden:_shouldHideTabBar];
}

- (BOOL)_shouldHideTabBar
{
  context = [(HUDashboardViewController *)self context];
  home = [context home];
  hf_shouldBlockCurrentUserFromHome = [home hf_shouldBlockCurrentUserFromHome];

  if (hf_shouldBlockCurrentUserFromHome)
  {
    return 1;
  }

  context2 = [(HUDashboardViewController *)self context];
  home2 = [context2 home];
  hf_currentUserIsRestrictedGuest = [home2 hf_currentUserIsRestrictedGuest];

  return hf_currentUserIsRestrictedGuest;
}

- (void)dashboardItemManager:(id)manager didUpdateContext:(id)context
{
  contextCopy = context;
  [(HUDashboardViewController *)self setFilterBarNeedsUpdate];
  [(HUDashboardViewController *)self _updateBarButtons];
  [(HUDashboardViewController *)self _updateTabBarVisibility];
  [(HUDashboardViewController *)self _updateFilterBarVisibility];
  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
  wallpaperView = [(HUDashboardViewController *)self wallpaperView];
  context = [(HUDashboardViewController *)self context];
  room = [context room];
  if (room)
  {
    v9 = [wallpaperView refreshWallpaperForHomeKitObject:room withAnimation:1];
  }

  else
  {
    context2 = [(HUDashboardViewController *)self context];
    home = [context2 home];
    v12 = [wallpaperView refreshWallpaperForHomeKitObject:home withAnimation:1];
  }

  [(HUDashboardViewController *)self _showNoHomeAccessViewsIfNeeded];
  navigationHomeButton = [(HUDashboardViewController *)self navigationHomeButton];
  v14 = [HUNavigationMenuFactory homeMenuForButton:navigationHomeButton];
  navigationHomeButton2 = [(HUDashboardViewController *)self navigationHomeButton];
  [navigationHomeButton2 setMenu:v14];

  home2 = [contextCopy home];

  hf_shouldBlockCurrentRestrictedGuestFromHome = [home2 hf_shouldBlockCurrentRestrictedGuestFromHome];
  _isShowingRestrictedGuestBlockedBackdropView = [(HUDashboardViewController *)self _isShowingRestrictedGuestBlockedBackdropView];
  if (hf_shouldBlockCurrentRestrictedGuestFromHome)
  {
    if (!_isShowingRestrictedGuestBlockedBackdropView)
    {
      [(HUDashboardViewController *)self createRestrictedGuestBlockedBackdropViewIfNeeded];
      view = [(HUDashboardViewController *)self view];
      restrictedGuestBlockedBackdropView = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
      wallpaperView2 = [(HUDashboardViewController *)self wallpaperView];
      [view insertSubview:restrictedGuestBlockedBackdropView above:wallpaperView2];

LABEL_9:
    }
  }

  else if (_isShowingRestrictedGuestBlockedBackdropView)
  {
    view = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [view removeFromSuperview];
    goto LABEL_9;
  }

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    context3 = [(HUDashboardViewController *)self context];
    v22 = +[HUSideBarSelectionManager sharedManager];
    [v22 setCurrentContext:context3];
  }
}

- (id)childViewControllersToPreload
{
  v8.receiver = self;
  v8.super_class = HUDashboardViewController;
  childViewControllersToPreload = [(HUItemCollectionViewController *)&v8 childViewControllersToPreload];
  v4 = [childViewControllersToPreload mutableCopy];

  _filterBarController = [(HUDashboardViewController *)self _filterBarController];
  [v4 na_safeAddObject:_filterBarController];
  v6 = [v4 copy];

  return v6;
}

- (id)hu_preloadContent
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HUDashboardViewController;
  hu_preloadContent = [(HUItemCollectionViewController *)&v25 hu_preloadContent];
  context = [(HUDashboardViewController *)self context];
  if ([context backgroundStyle] == 2)
  {
    wallpaperView = [(HUDashboardViewController *)self wallpaperView];
    v6 = wallpaperView == 0;

    if (v6)
    {
      goto LABEL_8;
    }

    wallpaperView2 = [(HUDashboardViewController *)self wallpaperView];
    context2 = [(HUDashboardViewController *)self context];
    room = [context2 room];
    if (room)
    {
      context = [wallpaperView2 refreshWallpaperForHomeKitObject:room withAnimation:0];
    }

    else
    {
      context3 = [(HUDashboardViewController *)self context];
      home = [context3 home];
      context = [wallpaperView2 refreshWallpaperForHomeKitObject:home withAnimation:0];
    }

    v12 = MEMORY[0x277D2C900];
    v26[0] = hu_preloadContent;
    v26[1] = context;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v15 = [v12 combineAllFutures:v13 scheduler:mainThreadScheduler];

    hu_preloadContent = v15;
  }

LABEL_8:
  objc_initWeak(&location, self);
  v16 = [hu_preloadContent recover:&__block_literal_global_401];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __46__HUDashboardViewController_hu_preloadContent__block_invoke_2;
  v22[3] = &unk_277DB84D8;
  objc_copyWeak(&v23, &location);
  v17 = [v16 flatMap:v22];

  if ([*MEMORY[0x277D76620] shouldRecordExtendedLaunchTime])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__HUDashboardViewController_hu_preloadContent__block_invoke_3;
    v21[3] = &unk_277DBAFF8;
    v21[4] = self;
    v18 = [v17 flatMap:v21];
    v19 = [v18 addCompletionBlock:&__block_literal_global_404];
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v17;
}

id __46__HUDashboardViewController_hu_preloadContent__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained loadViewIfNeeded];
  v2 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v2;
}

id __46__HUDashboardViewController_hu_preloadContent__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) itemManager];
  v2 = [v1 home];
  v3 = [v2 hf_characteristicValueManager];
  v4 = [v3 firstReadCompleteFuture];

  return v4;
}

void __46__HUDashboardViewController_hu_preloadContent__block_invoke_4()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "Completed extended launch", v3, 2u);
  }

  v1 = *MEMORY[0x277D76620];
  v2 = [*MEMORY[0x277D76620] _launchTestName];
  [v1 finishedTest:v2 waitForCommit:1 extraResults:0];
}

- (void)accessoryTileSizeButtonTappedFor:(id)for withItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
  itemCopy = item;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    selfCopy = self;
    v15 = 2080;
    v16 = "[HUDashboardViewController accessoryTileSizeButtonTappedFor:withItem:]";
    v17 = 2112;
    v18 = forCopy;
    v19 = 2112;
    v20 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped tile size button for cell %@ with item %@", &v13, 0x2Au);
  }

  v9 = itemCopy;
  v10 = &unk_28251AC90;
  if ([v9 conformsToProtocol:v10])
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    [(HUDashboardViewController *)self _toggleSizeForCell:forCopy withItem:v12];
  }
}

- (id)presentROARUpgradeView:(id)view
{
  context = [(HUDashboardViewController *)self context];
  home = [context home];
  v6 = [HUHomeFeatureOnboardingUtilities home:home onboardHomeHub2FromPresentingViewController:self devices:0 usageOptions:0];

  return v6;
}

- (id)_titleForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager sectionIndexForDisplayedSectionIdentifier:identifierCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    v7 = [itemManager2 titleForSection:v6];
  }

  return v7;
}

- (void)_presentDetailsViewControllerForSectionWithIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  objc_opt_class();
  navigationController = [(HUDashboardViewController *)self navigationController];
  parentViewController = [navigationController parentViewController];
  if (objc_opt_isKindOfClass())
  {
    v9 = parentViewController;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  view = [v10 view];

  subviews = [view subviews];
  v13 = [subviews na_firstObjectPassingTest:&__block_literal_global_409];

  [v13 setDisableWallpaperUpdate:1];
  if ([identifierCopy isEqualToString:@"camerasSection"])
  {
    v14 = [(HUDashboardViewController *)self _titleForSectionIdentifier:identifierCopy];
    _dashboardNavigator = [(HUDashboardViewController *)self _dashboardNavigator];
    context = [(HUDashboardViewController *)self context];
    home = [context home];
    v18 = [_dashboardNavigator showCamerasSectionWithTitle:v14 forHome:home animated:animatedCopy];
  }

  else
  {
    if (![identifierCopy isEqualToString:@"SpeakersAndTVsSection"])
    {
      context2 = [(HUDashboardViewController *)self context];
      home2 = [context2 home];
      v14 = HURoomForDashboardSectionIdentifier(identifierCopy, home2);

      if (v14)
      {
        _dashboardNavigator = [(HUDashboardViewController *)self _dashboardNavigator];
        v22 = [_dashboardNavigator showRoom:v14 animated:animatedCopy];
      }

      else
      {
        if ([identifierCopy isEqualToString:@"scenesSection"])
        {
          _dashboardNavigator = [(HUDashboardViewController *)self _titleForSectionIdentifier:identifierCopy];
          _dashboardNavigator2 = [(HUDashboardViewController *)self _dashboardNavigator];
          context3 = [(HUDashboardViewController *)self context];
          home3 = [context3 home];
          v26 = [_dashboardNavigator2 showScenesSectionWithDashboardTitle:_dashboardNavigator forHome:home3 animated:animatedCopy];
        }

        else
        {
          _dashboardNavigator = [MEMORY[0x277CCA890] currentHandler];
          [_dashboardNavigator handleFailureInMethod:a2 object:self file:@"HUDashboardViewController.m" lineNumber:1784 description:{@"%@ Unhandled presentation for section with identifier: %@", self, identifierCopy}];
        }

        v14 = 0;
      }

      goto LABEL_9;
    }

    v14 = [(HUDashboardViewController *)self _titleForSectionIdentifier:identifierCopy];
    _dashboardNavigator = [(HUDashboardViewController *)self _dashboardNavigator];
    context = [(HUDashboardViewController *)self context];
    home = [context home];
    v19 = [_dashboardNavigator showSpeakersAndTVsSectionWithTitle:v14 forHome:home animated:animatedCopy];
  }

LABEL_9:
}

uint64_t __92__HUDashboardViewController__presentDetailsViewControllerForSectionWithIdentifier_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_itemForHomeKitObject:(id)object
{
  v42 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager matchingItemForHomeKitObject:objectCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    v8 = [itemManager2 buildItemForHomeKitObject:objectCopy];
  }

  v10 = v8;
  v11 = &unk_2824C0788;
  if ([v10 conformsToProtocol:v11])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = v13;
  v15 = &unk_2824C0828;
  if ([v14 conformsToProtocol:v15])
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    context = [(HUDashboardViewController *)self context];
    home = [context home];
    hf_characteristicValueManager = [home hf_characteristicValueManager];

    v21 = v17;
    v22 = &unk_28251B0C8;
    if ([v21 conformsToProtocol:v22])
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v24)
    {
      valueSource = [v24 valueSource];

      if (valueSource)
      {
        valueSource2 = [v24 valueSource];

        hf_characteristicValueManager = valueSource2;
      }
    }

    v27 = [MEMORY[0x277D14B50] policyWithDecision:0];
    [hf_characteristicValueManager beginTransactionWithReason:@"HUDashboardViewControllerTransactionReasonDisableReads" readPolicy:v27 logger:0];

    v36 = *MEMORY[0x277D13BB0];
    v37 = MEMORY[0x277CBEC38];
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v29 = [v21 updateWithOptions:v28];

    [hf_characteristicValueManager commitTransactionWithReason:@"HUDashboardViewControllerTransactionReasonDisableReads"];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __51__HUDashboardViewController__itemForHomeKitObject___block_invoke;
    v34[3] = &unk_277DBAFF8;
    v35 = v21;
    v30 = [v29 flatMap:v34];
  }

  else
  {
    v31 = HFLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v40 = 2112;
      v41 = objectCopy;
      _os_log_error_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_ERROR, "%@ Failed to find item for HomeKit object: %@", buf, 0x16u);
    }

    v32 = MEMORY[0x277D2C900];
    hf_characteristicValueManager = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v30 = [v32 futureWithError:hf_characteristicValueManager];
  }

  return v30;
}

- (id)_presentAccessorySettingsForHomeKitObject:(id)object fromStatusItem:(id)item animated:(BOOL)animated
{
  objectCopy = object;
  itemCopy = item;
  objc_initWeak(&location, self);
  v10 = [(HUDashboardViewController *)self _itemForHomeKitObject:objectCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__HUDashboardViewController__presentAccessorySettingsForHomeKitObject_fromStatusItem_animated___block_invoke;
  v14[3] = &unk_277DC2A38;
  objc_copyWeak(&v16, &location);
  animatedCopy = animated;
  v11 = itemCopy;
  v15 = v11;
  v12 = [v10 flatMap:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
}

id __95__HUDashboardViewController__presentAccessorySettingsForHomeKitObject_fromStatusItem_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _dismissPresentedViewControllersAnimated:*(a1 + 48)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__HUDashboardViewController__presentAccessorySettingsForHomeKitObject_fromStatusItem_animated___block_invoke_2;
  v9[3] = &unk_277DBED88;
  objc_copyWeak(&v12, (a1 + 40));
  v6 = v3;
  v10 = v6;
  v11 = *(a1 + 32);
  v7 = [v5 flatMap:v9];

  objc_destroyWeak(&v12);

  return v7;
}

id __95__HUDashboardViewController__presentAccessorySettingsForHomeKitObject_fromStatusItem_animated___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = 138412802;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@ Presenting accessory settings for item: %@ from status item: %@", &v8, 0x20u);
  }

  v6 = [WeakRetained presentAccessorySettingsForItem:*(a1 + 32)];

  return v6;
}

- (id)_presentAccessoryControlsForHomeKitObject:(id)object fromStatusItem:(id)item animated:(BOOL)animated
{
  objectCopy = object;
  itemCopy = item;
  quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
  presentationContext = [quickControlPresentationCoordinator presentationContext];
  item = [presentationContext item];
  if ([item conformsToProtocol:&unk_2824C0788])
  {
    v13 = item;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14 && ([v14 homeKitObject], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "uniqueIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(objectCopy, "uniqueIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqual:", v17), v17, v16, v15, v18))
  {
    v19 = MEMORY[0x277D2C900];
    quickControlPresentationCoordinator2 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    cardViewController = [quickControlPresentationCoordinator2 cardViewController];
    v22 = [v19 futureWithResult:cardViewController];
  }

  else
  {
    objc_initWeak(&location, self);
    v23 = [(HUDashboardViewController *)self _itemForHomeKitObject:objectCopy];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __95__HUDashboardViewController__presentAccessoryControlsForHomeKitObject_fromStatusItem_animated___block_invoke;
    v25[3] = &unk_277DC2A38;
    objc_copyWeak(&v27, &location);
    animatedCopy = animated;
    v26 = itemCopy;
    v22 = [v23 flatMap:v25];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v22;
}

id __95__HUDashboardViewController__presentAccessoryControlsForHomeKitObject_fromStatusItem_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _dismissPresentedViewControllersAnimated:*(a1 + 48)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__HUDashboardViewController__presentAccessoryControlsForHomeKitObject_fromStatusItem_animated___block_invoke_2;
  v9[3] = &unk_277DC2A60;
  objc_copyWeak(&v12, (a1 + 40));
  v6 = v3;
  v10 = v6;
  v11 = *(a1 + 32);
  v13 = *(a1 + 48);
  v7 = [v5 flatMap:v9];

  objc_destroyWeak(&v12);

  return v7;
}

id __95__HUDashboardViewController__presentAccessoryControlsForHomeKitObject_fromStatusItem_animated___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_opt_new();
  [v3 setItem:*(a1 + 32)];
  v4 = [WeakRetained itemManager];
  v5 = [v4 home];
  [v3 setHome:v5];

  v6 = [WeakRetained itemManager];
  v7 = [v6 childItemsForItem:*(a1 + 32) ofClass:objc_opt_class()];
  [v3 setControlItems:v7];

  [v3 setPrefersSystemTransitions:1];
  v8 = [WeakRetained navigationController];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = WeakRetained;
  }

  [v3 setSourceViewController:v10];

  v11 = [WeakRetained context];
  v12 = [v11 room];
  [v3 setShouldIncludeRoomNameInHeaderTitle:v12 == 0];

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v19 = 138412802;
    v20 = WeakRetained;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@ Presenting quick controls for item: %@ from status item: %@", &v19, 0x20u);
  }

  v16 = [WeakRetained quickControlPresentationCoordinator];
  v17 = [v16 presentQuickControlWithContext:v3 animated:*(a1 + 56)];

  return v17;
}

- (id)_dismissPresentedViewControllersAnimated:(BOOL)animated
{
  animatedCopy = animated;
  objc_initWeak(&location, self);
  quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
  v6 = [quickControlPresentationCoordinator dismissQuickControlAnimated:animatedCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HUDashboardViewController__dismissPresentedViewControllersAnimated___block_invoke;
  v9[3] = &unk_277DC2A88;
  objc_copyWeak(&v10, &location);
  v11 = animatedCopy;
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

id __70__HUDashboardViewController__dismissPresentedViewControllersAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained hu_dismissViewControllerAnimated:*(a1 + 40)];

  return v3;
}

- (BOOL)_shouldShowAccessoryControlsForHomeKitObject:(id)object fromStatusItem:(id)item
{
  v11 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:3];
  v6 = objc_opt_class();

  LOBYTE(v6) = [v5 containsObject:{v6, v8, v9}];
  return v6 ^ 1;
}

- (BOOL)_canSkipStatusDetailsForItem:(id)item
{
  v8[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  if ([v5 containsObject:objc_opt_class()])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![(HUDashboardViewController *)self _statusItemRepresentsOnlyResidentIPads:itemCopy];
  }

  return v6;
}

- (BOOL)_statusItemRepresentsOnlyResidentIPads:(id)pads
{
  latestResults = [pads latestResults];
  v4 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14078]];

  LOBYTE(latestResults) = [v4 na_all:&__block_literal_global_429];
  return latestResults;
}

BOOL __68__HUDashboardViewController__statusItemRepresentsOnlyResidentIPads___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 hf_linkedAccessory];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)createRestrictedGuestBlockedBackdropViewIfNeeded
{
  restrictedGuestBlockedBackdropView = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];

  if (!restrictedGuestBlockedBackdropView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D68]);
    v5 = [MEMORY[0x277D75210] effectWithStyle:18];
    v6 = [v4 initWithEffect:v5];
    [(HUDashboardViewController *)self setRestrictedGuestBlockedBackdropView:v6];

    view = [(HUDashboardViewController *)self view];
    [view bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    restrictedGuestBlockedBackdropView2 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [restrictedGuestBlockedBackdropView2 setFrame:{v9, v11, v13, v15}];

    restrictedGuestBlockedBackdropView3 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [restrictedGuestBlockedBackdropView3 setTranslatesAutoresizingMaskIntoConstraints:1];

    restrictedGuestBlockedBackdropView4 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [restrictedGuestBlockedBackdropView4 setAutoresizingMask:18];
  }
}

- (void)_setupBackgroundView
{
  v79[4] = *MEMORY[0x277D85DE8];
  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView = [(HUDashboardViewController *)self collectionView];
  [collectionView setBackgroundColor:clearColor];

  v5 = [HUBlurGroupingEffectView alloc];
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(HUBlurGroupingEffectView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
  [(HUDashboardViewController *)self setBlurGroupingEffectView:v10];

  blurGroupingEffectView = [(HUDashboardViewController *)self blurGroupingEffectView];
  [blurGroupingEffectView setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(HUDashboardViewController *)self view];
  blurGroupingEffectView2 = [(HUDashboardViewController *)self blurGroupingEffectView];
  collectionView2 = [(HUDashboardViewController *)self collectionView];
  [view insertSubview:blurGroupingEffectView2 below:collectionView2];

  v54 = MEMORY[0x277CCAAD0];
  blurGroupingEffectView3 = [(HUDashboardViewController *)self blurGroupingEffectView];
  topAnchor = [blurGroupingEffectView3 topAnchor];
  view2 = [(HUDashboardViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v64 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v79[0] = v64;
  blurGroupingEffectView4 = [(HUDashboardViewController *)self blurGroupingEffectView];
  bottomAnchor = [blurGroupingEffectView4 bottomAnchor];
  view3 = [(HUDashboardViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v79[1] = v52;
  blurGroupingEffectView5 = [(HUDashboardViewController *)self blurGroupingEffectView];
  leadingAnchor = [blurGroupingEffectView5 leadingAnchor];
  view4 = [(HUDashboardViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v79[2] = v17;
  blurGroupingEffectView6 = [(HUDashboardViewController *)self blurGroupingEffectView];
  trailingAnchor = [blurGroupingEffectView6 trailingAnchor];
  view5 = [(HUDashboardViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v79[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
  [v54 activateConstraints:v23];

  if (-[HUDashboardViewController isOverlay](self, "isOverlay") || ([MEMORY[0x277D14670] isHomeControlService] & 1) != 0 || (-[HUDashboardViewController context](self, "context"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "allowsEditing"), v24, v25))
  {
    v26 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleBackgroundTap_];
    v27 = objc_opt_new();
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v27 setBackgroundColor:clearColor2];

    [v27 addGestureRecognizer:v26];
    collectionView3 = [(HUDashboardViewController *)self collectionView];
    [collectionView3 setBackgroundView:v27];
  }

  context = [(HUDashboardViewController *)self context];
  backgroundStyle = [context backgroundStyle];

  if (backgroundStyle == 1)
  {
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    view6 = [(HUDashboardViewController *)self view];
    [view6 setBackgroundColor:systemBlackColor];
  }

  else
  {
    if (backgroundStyle != 2)
    {
      return;
    }

    v32 = HFLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      wallpaperView = [(HUDashboardViewController *)self wallpaperView];
      *buf = 138412546;
      v76 = wallpaperView;
      v77 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_DEFAULT, "adding wallpaperView: %@ to dashboard: %@", buf, 0x16u);
    }

    v34 = [[HUWallpaperView alloc] initWithFrame:v6, v7, v8, v9];
    wallpaperView = self->_wallpaperView;
    self->_wallpaperView = v34;

    [(HUWallpaperView *)self->_wallpaperView setTranslatesAutoresizingMaskIntoConstraints:0];
    view7 = [(HUDashboardViewController *)self view];
    wallpaperView2 = [(HUDashboardViewController *)self wallpaperView];
    [view7 insertSubview:wallpaperView2 atIndex:0];

    v57 = MEMORY[0x277CCAAD0];
    wallpaperView3 = [(HUDashboardViewController *)self wallpaperView];
    view6 = [wallpaperView3 topAnchor];
    view8 = [(HUDashboardViewController *)self view];
    topAnchor3 = [view8 topAnchor];
    v69 = [view6 constraintEqualToAnchor:topAnchor3];
    v74[0] = v69;
    wallpaperView4 = [(HUDashboardViewController *)self wallpaperView];
    bottomAnchor3 = [wallpaperView4 bottomAnchor];
    view9 = [(HUDashboardViewController *)self view];
    bottomAnchor4 = [view9 bottomAnchor];
    v55 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v74[1] = v55;
    wallpaperView5 = [(HUDashboardViewController *)self wallpaperView];
    leadingAnchor3 = [wallpaperView5 leadingAnchor];
    view10 = [(HUDashboardViewController *)self view];
    leadingAnchor4 = [view10 leadingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v74[2] = v41;
    wallpaperView6 = [(HUDashboardViewController *)self wallpaperView];
    trailingAnchor3 = [wallpaperView6 trailingAnchor];
    view11 = [(HUDashboardViewController *)self view];
    trailingAnchor4 = [view11 trailingAnchor];
    v46 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v74[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    [v57 activateConstraints:v47];

    systemBlackColor = wallpaperView3;
  }
}

- (void)_updateBarTintColors
{
  objc_opt_class();
  navigationController = [(HUDashboardViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  if (objc_opt_isKindOfClass())
  {
    v5 = navigationBar;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  context = [(HUDashboardViewController *)self context];
  overrideNavigationBarTintColor = [context overrideNavigationBarTintColor];
  [v6 setOverrideTintColor:overrideNavigationBarTintColor];

  [(HUDashboardViewController *)self _setupTabBarAppearance];
}

- (void)_setupTabBarAppearance
{
  tabBarItem = [(HUDashboardViewController *)self tabBarItem];
  standardAppearance = [tabBarItem standardAppearance];
  v5 = standardAppearance;
  if (standardAppearance)
  {
    v6 = standardAppearance;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v13 = v6;

  [v13 _setOverrideUserInterfaceStyle:2];
  tabBarItem2 = [(HUDashboardViewController *)self tabBarItem];
  [tabBarItem2 setStandardAppearance:v13];

  tabBarItem3 = [(HUDashboardViewController *)self tabBarItem];
  [tabBarItem3 setScrollEdgeAppearance:v13];

  navigationController = [(HUDashboardViewController *)self navigationController];
  tabBarItem4 = [navigationController tabBarItem];
  [tabBarItem4 setStandardAppearance:v13];

  navigationController2 = [(HUDashboardViewController *)self navigationController];
  tabBarItem5 = [navigationController2 tabBarItem];
  [tabBarItem5 setScrollEdgeAppearance:v13];
}

- (void)_handleBackgroundTap:(id)tap
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ User tapped background", &v8, 0xCu);
  }

  if ([MEMORY[0x277D14670] isHomeControlService])
  {
    parentViewController = [(HUDashboardViewController *)self parentViewController];
    [parentViewController dismissViewControllerAnimated:1 completion:0];
LABEL_7:

    return;
  }

  if ([(HUDashboardViewController *)self isOverlay])
  {
    parentViewController = [(HUDashboardViewController *)self navigationController];
    v6 = [parentViewController popToRootViewControllerAnimated:1];
    goto LABEL_7;
  }

  itemShowingSizeToggleButton = [(HUDashboardViewController *)self itemShowingSizeToggleButton];

  if (itemShowingSizeToggleButton)
  {
    [(HUDashboardViewController *)self setItemShowingSizeToggleButton:0 animated:1];
  }
}

- (void)_toggleSizeForCell:(id)cell withItem:(id)item
{
  v26[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  accessoryRepresentableObject = [itemCopy accessoryRepresentableObject];
  layoutManager = [(HUDashboardViewController *)self layoutManager];
  v10 = [layoutManager gridSizeForItem:itemCopy];
  v12 = v11;

  v13 = v12 <= 1 || v10 <= 1;
  v14 = MEMORY[0x277D14240];
  if (v13)
  {
    v14 = MEMORY[0x277D14238];
  }

  v15 = [accessoryRepresentableObject hf_setTileSize:*v14];
  v16 = MEMORY[0x277D75D18];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __57__HUDashboardViewController__toggleSizeForCell_withItem___block_invoke;
  v23 = &unk_277DB7558;
  v24 = cellCopy;
  selfCopy = self;
  v17 = cellCopy;
  [v16 animateWithDuration:&v20 animations:0.3];
  v18 = [(HUItemCollectionViewController *)self itemManager:v20];
  v26[0] = itemCopy;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [v18 reconfigureUIRepresentationForItems:v19 withAnimation:1];
}

void __57__HUDashboardViewController__toggleSizeForCell_withItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateSizeChangeButton];
  v2 = [*(a1 + 40) collectionView];
  v3 = [v2 collectionViewLayout];
  [v3 invalidateLayout];

  v4 = [*(a1 + 40) collectionView];
  [v4 layoutIfNeeded];
}

- (void)_requestLocationAuth
{
  mEMORY[0x277D0F800] = [MEMORY[0x277D0F800] sharedAuthorization];
  [mEMORY[0x277D0F800] requestAuthorization:2 completionHandler:0];
}

- (void)_updateAllHeaderViews
{
  v22 = *MEMORY[0x277D85DE8];
  collectionView = [(HUDashboardViewController *)self collectionView];
  v4 = *MEMORY[0x277D767D8];
  v5 = [collectionView indexPathsForVisibleSupplementaryElementsOfKind:*MEMORY[0x277D767D8]];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        collectionView2 = [(HUDashboardViewController *)self collectionView];
        v12 = [collectionView2 supplementaryViewForElementKind:v4 atIndexPath:v10];

        objc_opt_class();
        v13 = v12;
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          [(HUDashboardViewController *)self _updateHeaderView:v15 atIndexPath:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)_updateHeaderView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  section = [pathCopy section];

  v10 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __59__HUDashboardViewController__updateHeaderView_atIndexPath___block_invoke;
  v16 = &unk_277DBB548;
  selfCopy = self;
  v18 = v10;
  v11 = v10;
  v12 = __59__HUDashboardViewController__updateHeaderView_atIndexPath___block_invoke(&v13);
  [viewCopy setShowsDisclosureIndicator:{v12, v13, v14, v15, v16, selfCopy}];
}

uint64_t __59__HUDashboardViewController__updateHeaderView_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  if ([v2 canPresentDetailsViewControllerForSectionWithIdentifier:*(a1 + 40)] && (objc_msgSend(MEMORY[0x277D14670], "isHomeControlService") & 1) == 0)
  {
    v3 = [*(a1 + 32) isEditing] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)applicationWentIntoBackground:(id)background
{
  v20 = *MEMORY[0x277D85DE8];
  context = [(HUDashboardViewController *)self context];
  accessoryTypeGroup = [context accessoryTypeGroup];
  energyAccessoryTypeGroup = [MEMORY[0x277D14378] energyAccessoryTypeGroup];
  v6 = energyAccessoryTypeGroup;
  if (accessoryTypeGroup == energyAccessoryTypeGroup)
  {
    energyCategoryViewStartTime = [(HUDashboardViewController *)self energyCategoryViewStartTime];

    if (energyCategoryViewStartTime)
    {
      date = [MEMORY[0x277CBEAA8] date];
      energyCategoryViewStartTime2 = [(HUDashboardViewController *)self energyCategoryViewStartTime];
      [date timeIntervalSinceDate:energyCategoryViewStartTime2];
      v11 = v10;

      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = v11;
        _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Energy Category view duration:%f [s]", buf, 0xCu);
      }

      [(HUDashboardViewController *)self setEnergyCategoryViewStartTime:0];
      if (v11 > 1.0)
      {
        mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
        allHomesFuture = [mEMORY[0x277D146E8] allHomesFuture];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __59__HUDashboardViewController_applicationWentIntoBackground___block_invoke;
        v17[3] = &__block_descriptor_40_e29_v24__0__NSArray_8__NSError_16l;
        *&v17[4] = v11;
        v15 = [allHomesFuture addCompletionBlock:v17];
      }
    }
  }

  else
  {
  }
}

void __59__HUDashboardViewController_applicationWentIntoBackground___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) accessories];
        v8 = [v7 count];

        if (v8)
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  [HUEnergyAnalytics saveViewDurationEvent:47 withDuration:v9 withUserHasAccessories:v4];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v20 = *MEMORY[0x277D85DE8];
  context = [(HUDashboardViewController *)self context];
  accessoryTypeGroup = [context accessoryTypeGroup];
  energyAccessoryTypeGroup = [MEMORY[0x277D14378] energyAccessoryTypeGroup];

  if (accessoryTypeGroup == energyAccessoryTypeGroup)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HUDashboardViewController *)self setEnergyCategoryViewStartTime:date];
  }

  context2 = [(HUDashboardViewController *)self context];
  home = [context2 home];

  if (home)
  {
    v10 = [HUHomeEnergyManagerHelper alloc];
    context3 = [(HUDashboardViewController *)self context];
    home2 = [context3 home];
    v13 = [(HUHomeEnergyManagerHelper *)v10 initWithHome:home2];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v18 = 2080;
      v19 = "[HUDashboardViewController applicationWillEnterForeground:]";
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@ %s Updating Home Location", buf, 0x16u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__HUDashboardViewController_applicationWillEnterForeground___block_invoke;
    v15[3] = &unk_277DB8488;
    v15[4] = self;
    [v13 updateHomeLocationWithCompletionHandler:v15];
  }

  else
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v18 = 2080;
      v19 = "[HUDashboardViewController applicationWillEnterForeground:]";
      _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "%@ %s home is nil.", buf, 0x16u);
    }
  }
}

void __60__HUDashboardViewController_applicationWillEnterForeground___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412546;
    v5 = v3;
    v6 = 2080;
    v7 = "[HUDashboardViewController applicationWillEnterForeground:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@ %s Updated Home Location", &v4, 0x16u);
  }
}

- (void)_registerSectionDecorationViews
{
  objc_opt_class();
  collectionViewLayout = [(HUDashboardViewController *)self collectionViewLayout];
  if (objc_opt_isKindOfClass())
  {
    v4 = collectionViewLayout;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  if (v6)
  {
    layoutManager = [(HUDashboardViewController *)self layoutManager];
    [layoutManager registerSectionDecorationViewsWithLayout:v6];
  }
}

- (void)handleTraitChanges
{
  [(HUDashboardViewController *)self _updatePaletteHeight];

  [(HUDashboardViewController *)self _updateFilterBarFrameIfNeeded];
}

- (HUDashboardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)tipPopoverController
{
  WeakRetained = objc_loadWeakRetained(&self->_tipPopoverController);

  return WeakRetained;
}

- (CGSize)previousCollectionViewSize
{
  width = self->_previousCollectionViewSize.width;
  height = self->_previousCollectionViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)matchingItemForHomeKitObject:(id)object
{
  objectCopy = object;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager matchingItemForHomeKitObject:objectCopy];

  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v7 = objectCopy;
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      hf_primaryService = [v9 hf_primaryService];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_13:
        itemManager2 = [(HUItemCollectionViewController *)self itemManager];
        v6 = [itemManager2 buildItemForHomeKitObject:objectCopy];

        goto LABEL_14;
      }

      objc_opt_class();
      v11 = objectCopy;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v9 = v12;

      hf_primaryService = [v9 accessory];
    }

    v13 = hf_primaryService;
    itemManager3 = [(HUItemCollectionViewController *)self itemManager];
    v6 = [itemManager3 matchingItemForHomeKitObject:v13];

    if (v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

- (id)presentHomeKitObject:(id)object destination:(unint64_t)destination animated:(BOOL)animated
{
  animatedCopy = animated;
  v8 = [(HUDashboardViewController *)self matchingItemForHomeKitObject:object];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_18;
  }

  if ([v8 conformsToProtocol:&unk_28251B0C8])
  {
    v10 = v9;
    sourceItem = v10;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      hu_preloadContent = 0;
      goto LABEL_14;
    }

    objc_opt_class();
    v12 = v9;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    sourceItem = [v14 sourceItem];

    v10 = sourceItem;
  }

  if ([v10 conformsToProtocol:&unk_28251B0C8])
  {
    v15 = sourceItem;
  }

  else
  {
    v15 = 0;
  }

  hu_preloadContent = v15;

LABEL_14:
  if (destination > 1)
  {
    if (destination == 2)
    {
      goto LABEL_24;
    }

    if (destination != 3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!destination)
    {
      goto LABEL_24;
    }

    if (destination != 1)
    {
LABEL_17:

LABEL_18:
      hu_preloadContent = [(HUDashboardViewController *)self hu_preloadContent];
      v17 = [hu_preloadContent flatMap:&__block_literal_global_753];
LABEL_23:
      v18 = v17;
      goto LABEL_29;
    }
  }

  if (hu_preloadContent)
  {
    v17 = [(HUDashboardViewController *)self presentDetailsForItem:hu_preloadContent animated:1 secondaryDestination:destination];
    goto LABEL_23;
  }

LABEL_24:
  v19 = [(HUItemCollectionViewController *)self moduleControllerForItem:v9];
  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v20 = [v19 presentItem:v9 destination:destination animated:animatedCopy];
  }

  else
  {
    v20 = [(HUDashboardViewController *)self presentItem:v9 animated:1];
  }

  v18 = v20;

LABEL_29:

  return v18;
}

id __96__HUDashboardViewController_HomeKitObjectPresenting__presentHomeKitObject_destination_animated___block_invoke()
{
  v0 = MEMORY[0x277D2C900];
  v1 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
  v2 = [v0 futureWithError:v1];

  return v2;
}

- (id)presentItemWithUUID:(id)d destination:(unint64_t)destination secondaryDestination:(unint64_t)secondaryDestination animated:(BOOL)animated
{
  animatedCopy = animated;
  dCopy = d;
  v11 = 1;
  if (destination <= 6)
  {
    if (destination == 4)
    {
      goto LABEL_9;
    }

    if (destination == 6)
    {
      v11 = 3;
      goto LABEL_9;
    }
  }

  else
  {
    if (destination == 29 || destination == 21)
    {
      goto LABEL_9;
    }

    if (destination == 7)
    {
      v11 = 2;
LABEL_9:
      v12 = [(HUDashboardViewController *)self _dismissPresentedViewControllersAnimated:animatedCopy];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke;
      v17[3] = &unk_277DC2B18;
      v17[4] = self;
      v21 = (secondaryDestination & 0xFFFFFFFFFFFFFFFDLL) == 1;
      v18 = dCopy;
      secondaryDestinationCopy = secondaryDestination;
      v22 = animatedCopy;
      v20 = v11;
      v13 = [v12 flatMap:v17];

      goto LABEL_10;
    }
  }

  v15 = MEMORY[0x277D2C900];
  v16 = [MEMORY[0x277CCA9B8] hf_errorWithCode:38];
  v13 = [v15 futureWithError:v16];

LABEL_10:

  return v13;
}

id __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[HUDashboardViewController(HomeKitObjectPresenting) presentItemWithUUID:destination:secondaryDestination:animated:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%s dismissPresentedViewControllersAnimated future completed", buf, 0xCu);
  }

  v3 = [*(a1 + 32) homeKitObjectWithID:*(a1 + 40)];
  if (![*(a1 + 32) shouldShowAccessoryControlForHomeKitObject:v3])
  {
    goto LABEL_9;
  }

  v4 = [*(a1 + 32) matchingItemForHomeKitObject:v3];
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 != 1 || !v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 32) presentHomeKitObject:v3 destination:*(a1 + 48) animated:*(a1 + 65)];
      goto LABEL_11;
    }

LABEL_9:
    v5 = [*(a1 + 32) quickControlPresentationContextForUUID:*(a1 + 40) type:*(a1 + 56)];
    v8 = [*(a1 + 32) quickControlPresentationCoordinator];
    v9 = [v8 presentQuickControlWithContext:v5 animated:*(a1 + 65)];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke_754;
    v12[3] = &__block_descriptor_42_e18___NAFuture_16__0_8l;
    v13 = *(a1 + 64);
    v12[4] = *(a1 + 48);
    v10 = [v9 flatMap:v12];

    goto LABEL_12;
  }

  v7 = [*(a1 + 32) presentAccessorySettingsForItem:v4 secondaryDestination:*(a1 + 48)];
LABEL_11:
  v10 = v7;
LABEL_12:

  return v10;
}

id __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke_754(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[HUDashboardViewController(HomeKitObjectPresenting) presentItemWithUUID:destination:secondaryDestination:animated:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s presentQuickControlWithContext future completed", buf, 0xCu);
  }

  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = [v7 topViewController];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [MEMORY[0x277D2C900] futureWithResult:v10];
  if (*(a1 + 40) == 1)
  {
    v12 = [v10 viewControllerReadyFuture];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke_756;
    v17[3] = &unk_277DC2AD0;
    v13 = v10;
    v20 = *(a1 + 41);
    v14 = *(a1 + 32);
    v18 = v13;
    v19 = v14;
    v15 = [v12 flatMap:v17];

    v11 = v15;
  }

  return v11;
}

id __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke_756(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[HUDashboardViewController(HomeKitObjectPresenting) presentItemWithUUID:destination:secondaryDestination:animated:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%s viewControllerReady future completed", buf, 0xCu);
  }

  [*(a1 + 32) scrollToDetailsViewAnimated:*(a1 + 48)];
  v3 = MEMORY[0x277D2C900];
  if (*(a1 + 40) == 3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke_757;
    v6[3] = &unk_277DB7580;
    v7 = *(a1 + 32);
    v4 = [v3 futureWithBlock:v6];
  }

  else
  {
    v4 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];
  }

  return v4;
}

void __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke_757(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, 500000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke_2;
  v6[3] = &unk_277DB7558;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x277D85CD0], v6);
}

void __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) settingsViewController];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;

  v4 = [v5 showConnectedEcosystems];
  [*(a1 + 40) finishWithResult:*(a1 + 32)];
}

- (id)presentCameraProfile:(id)profile startDate:(id)date endDate:(id)endDate animated:(BOOL)animated
{
  animatedCopy = animated;
  endDateCopy = endDate;
  dateCopy = date;
  profileCopy = profile;
  cameraItemModuleController = [(HUDashboardViewController *)self cameraItemModuleController];
  v14 = [cameraItemModuleController presentCameraPlayerViewControllerForHomeKitObject:profileCopy startDate:dateCopy endDate:endDateCopy animated:animatedCopy];

  return v14;
}

- (id)presentCameraProfile:(id)profile forCameraClip:(id)clip animated:(BOOL)animated
{
  animatedCopy = animated;
  clipCopy = clip;
  profileCopy = profile;
  cameraItemModuleController = [(HUDashboardViewController *)self cameraItemModuleController];
  v11 = [cameraItemModuleController presentCameraPlayerViewControllerForHomeKitObject:profileCopy cameraClip:clipCopy animated:animatedCopy];

  return v11;
}

- (id)presentFeedbackFlowForCameraClip:(id)clip fromProfile:(id)profile
{
  profileCopy = profile;
  clipCopy = clip;
  cameraItemModuleController = [(HUDashboardViewController *)self cameraItemModuleController];
  v9 = [cameraItemModuleController presentFeedbackFlowForCameraClip:clipCopy fromProfile:profileCopy];

  return v9;
}

- (id)presentStatusDetailsForStatusItemClass:(Class)class animated:(BOOL)animated
{
  animatedCopy = animated;
  v29 = *MEMORY[0x277D85DE8];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v7 = NSStringFromClass(class);
    NSLog(&cfstr_InvalidStatusI.isa, v7);
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  allItems = [itemManager allItems];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __102__HUDashboardViewController_HomeKitObjectPresenting__presentStatusDetailsForStatusItemClass_animated___block_invoke;
  v24[3] = &__block_descriptor_40_e16_B16__0__HFItem_8lu32l8;
  v24[4] = class;
  v10 = [allItems na_firstObjectPassingTest:v24];

  if (v10)
  {
    v11 = objc_opt_new();
    [v11 setItem:v10];
    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    home = [itemManager2 home];
    [v11 setHome:home];

    [v11 setPrefersSystemTransitions:1];
    navigationController = [(HUDashboardViewController *)self navigationController];
    v15 = navigationController;
    if (navigationController)
    {
      selfCopy = navigationController;
    }

    else
    {
      selfCopy = self;
    }

    [v11 setSourceViewController:selfCopy];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@ Presenting status details for status item: %@", buf, 0x16u);
    }

    quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    v19 = [quickControlPresentationCoordinator presentQuickControlWithContext:v11 animated:animatedCopy];
  }

  else
  {
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromClass(class);
      *buf = 138412546;
      selfCopy3 = self;
      v27 = 2112;
      v28 = v23;
      _os_log_error_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_ERROR, "%@ Failed to find status item of class: %@", buf, 0x16u);
    }

    v21 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v19 = [v21 futureWithError:v11];
  }

  return v19;
}

- (id)presentItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  if ([(HUControllableItemCollectionViewController *)self shouldShowAccessoryControlForItem:itemCopy])
  {
    v7 = [(HUControllableItemCollectionViewController *)self presentAccessoryControlsForItem:itemCopy];
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v9 = itemCopy;
    if ([v9 conformsToProtocol:&unk_2824C0788])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = v11;
    if ([v12 conformsToProtocol:&unk_2824C0828])
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      [(HUDashboardViewController *)self _presentQuickControlsForHomeKitItem:v14 animated:animatedCopy];
    }

    else
    {
      [MEMORY[0x277D2C900] futureWithNoResult];
    }
    futureWithNoResult = ;
  }

  return futureWithNoResult;
}

- (id)presentDetailsForItem:(id)item animated:(BOOL)animated secondaryDestination:(unint64_t)destination
{
  itemCopy = item;
  if ([(HUControllableItemCollectionViewController *)self shouldShowAccessoryControlForItem:itemCopy])
  {
    v9 = [(HUControllableItemCollectionViewController *)self presentAccessorySettingsForItem:itemCopy secondaryDestination:destination];
  }

  else
  {
    v10 = [(HUDashboardViewController *)self _presentQuickControlsForHomeKitItem:itemCopy animated:0];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __106__HUDashboardViewController_HomeKitObjectPresenting__presentDetailsForItem_animated_secondaryDestination___block_invoke;
    v12[3] = &__block_descriptor_33_e42___NAFuture_16__0__UINavigationController_8l;
    animatedCopy = animated;
    v9 = [v10 flatMap:v12];
  }

  return v9;
}

id __106__HUDashboardViewController_HomeKitObjectPresenting__presentDetailsForItem_animated_secondaryDestination___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __106__HUDashboardViewController_HomeKitObjectPresenting__presentDetailsForItem_animated_secondaryDestination___block_invoke_2;
  v8[3] = &unk_277DBB320;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 futureWithBlock:v8];

  return v6;
}

void __106__HUDashboardViewController_HomeKitObjectPresenting__presentDetailsForItem_animated_secondaryDestination___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [*(a1 + 32) topViewController];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  [v7 scrollToDetailsViewAnimated:*(a1 + 40)];
  v6 = [v7 settingsViewController];
  [v3 finishWithResult:v6];
}

- (id)_presentQuickControlsForHomeKitItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  objc_initWeak(location, self);
  if ([(HUControllableItemCollectionViewController *)self shouldShowAccessoryControlForItem:itemCopy])
  {
    v7 = [(HUDashboardViewController *)self _dismissPresentedViewControllersAnimated:animatedCopy];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke;
    v39[3] = &unk_277DBD700;
    objc_copyWeak(&v41, location);
    v40 = itemCopy;
    v8 = [v7 flatMap:v39];

    objc_destroyWeak(&v41);
    goto LABEL_19;
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v7 = [itemManager indexPathForItem:itemCopy];

  if (v7)
  {
    quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    presentationContext = [quickControlPresentationCoordinator presentationContext];
    item = [presentationContext item];

    if (item)
    {
      v13 = &unk_2824C0788;
      v14 = item;
      v15 = [v14 conformsToProtocol:v13];
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v17 = v15 ^ 1;
      v18 = v16;

      if (itemCopy)
      {
        v19 = v17;
      }

      else
      {
        v19 = 1;
      }

      if ((v19 & 1) == 0)
      {
        homeKitObject = [v18 homeKitObject];
        uniqueIdentifier = [homeKitObject uniqueIdentifier];
        homeKitObject2 = [itemCopy homeKitObject];
        uniqueIdentifier2 = [homeKitObject2 uniqueIdentifier];
        v23 = [uniqueIdentifier isEqual:uniqueIdentifier2];

        if (v23)
        {
          v24 = MEMORY[0x277D2C900];
          quickControlPresentationCoordinator2 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
          cardViewController = [quickControlPresentationCoordinator2 cardViewController];
          v8 = [v24 futureWithResult:cardViewController];

LABEL_17:
          goto LABEL_18;
        }
      }
    }

    v18 = [(HUDashboardViewController *)self _dismissPresentedViewControllersAnimated:animatedCopy];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_3;
    v31[3] = &unk_277DC2A60;
    objc_copyWeak(&v34, location);
    v32 = v7;
    v33 = itemCopy;
    v35 = animatedCopy;
    v8 = [v18 flatMap:v31];

    objc_destroyWeak(&v34);
    goto LABEL_17;
  }

  homeKitObject3 = [itemCopy homeKitObject];
  v8 = [(HUDashboardViewController *)self _presentAccessoryControlsForHomeKitObject:homeKitObject3 fromStatusItem:0 animated:1];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_2;
  v36[3] = &unk_277DB7E90;
  v37 = 0;
  v38 = itemCopy;
  v28 = [v8 addFailureBlock:v36];

  item = v37;
LABEL_18:

LABEL_19:
  objc_destroyWeak(location);

  return v8;
}

id __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained presentAccessoryControlsForItem:*(a1 + 32)];

  return v3;
}

void __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    NSLog(&cfstr_PresentingANon.isa, *(a1 + 40));
  }
}

id __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained collectionView];
  v4 = [v3 cellForItemAtIndexPath:*(a1 + 32)];

  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v6 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_4;
  v17[3] = &unk_277DB8810;
  v17[4] = WeakRetained;
  v18 = v4;
  v19 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_5;
  v12[3] = &unk_277DC2B80;
  v12[4] = WeakRetained;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v16 = *(a1 + 56);
  v7 = v5;
  v15 = v7;
  v8 = v4;
  [v6 animateWithDuration:v17 animations:v12 completion:0.0];
  v9 = v15;
  v10 = v7;

  return v7;
}

void __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 visibleCells];
  v4 = [v3 containsObject:*(a1 + 40)];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) collectionView];
    [v5 scrollToItemAtIndexPath:*(a1 + 48) atScrollPosition:2 animated:0];
  }
}

void __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) quickControlPresentationContextForItem:*(a1 + 40) atIndexPath:*(a1 + 48)];
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 cellForItemAtIndexPath:*(a1 + 48)];
  if ([v4 conformsToProtocol:&unk_2824C4B08])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [*(a1 + 32) quickControlPresentationCoordinator];
  [v7 setPressedTile:v6];

  v8 = [*(a1 + 32) quickControlPresentationCoordinator];
  v9 = [v8 presentQuickControlWithContext:v2 animated:*(a1 + 64)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_6;
  v11[3] = &unk_277DB7530;
  v12 = *(a1 + 56);
  v10 = [v9 addCompletionBlock:v11];
}

- (void)_registerObservers
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8] addHomeObserver:self];

  mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8]2 addHomeManagerObserver:self];

  mEMORY[0x277D146E8]3 = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8]3 addAccessoryObserver:self];

  mEMORY[0x277D146E8]4 = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8]4 addUserObserver:self];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v15 = *MEMORY[0x277D85DE8];
  context = [(HUDashboardViewController *)self context];
  home = [context home];

  if (home)
  {
    v6 = [HUHomeEnergyManagerHelper alloc];
    context2 = [(HUDashboardViewController *)self context];
    home2 = [context2 home];
    v10 = [(HUHomeEnergyManagerHelper *)v6 initWithHome:home2];

    [(HUHomeEnergyManagerHelper *)v10 updateHomeEnergyAvailableFeaturesWithCompletionHandler:&__block_literal_global_834];
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v13 = 2080;
      v14 = "[HUDashboardViewController(Observer) homeManagerDidUpdateHomes:]";
      _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "%@ %s home is nil.", buf, 0x16u);
    }
  }
}

void __65__HUDashboardViewController_Observer__homeManagerDidUpdateHomes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D14640];
  v4 = a3;
  v5 = [v3 sharedHandler];
  [v5 handleError:v4];
}

- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)enabled
{
  v13 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [enabledCopy name];
    v7 = 138412802;
    selfCopy = self;
    v9 = 2080;
    v10 = "[HUDashboardViewController(Observer) homeDidUpdateHomeEnergyManagerEnabled:]";
    v11 = 2112;
    v12 = name;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@ %s) HUDashboardViewController ~~> Dispatching home: %@ onto main.", &v7, 0x20u);
  }

  [(HUDashboardViewController *)self _updateBarButtons];
  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  [(HUDashboardViewController *)self _updateBarButtons:home];

  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  [(HUDashboardViewController *)self _updateBarButtons:home];

  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
}

- (void)home:(id)home didUpdateNameForRoom:(id)room
{
  v20 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  roomCopy = room;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413058;
    selfCopy = self;
    v14 = 2080;
    v15 = "[HUDashboardViewController(Observer) home:didUpdateNameForRoom:]";
    v16 = 2112;
    v17 = homeCopy;
    v18 = 2112;
    v19 = roomCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s home %@ room %@", &v12, 0x2Au);
  }

  objc_opt_class();
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v10 = itemManager;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 updateItemSectionHeaderTitleForRoom:roomCopy];
}

- (void)home:(id)home didRemoveRoom:(id)room
{
  homeCopy = home;
  roomCopy = room;
  context = [(HUDashboardViewController *)self context];
  room = [context room];
  uniqueIdentifier = [room uniqueIdentifier];
  uniqueIdentifier2 = [roomCopy uniqueIdentifier];

  if ([uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2])
  {
    viewIsFullyVisible = [(HUDashboardViewController *)self viewIsFullyVisible];

    if (!viewIsFullyVisible)
    {
      goto LABEL_6;
    }

    context = [(HUDashboardViewController *)self _dashboardNavigator];
    v12 = [context showHome:homeCopy];
  }

  else
  {
  }

LABEL_6:
}

- (void)homeDidUpdateWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  context = [(HUDashboardViewController *)self context];
  room = [context room];
  if (room)
  {
  }

  else
  {
    context2 = [(HUDashboardViewController *)self context];
    home = [context2 home];
    v8 = [home isEqual:wallpaperCopy];

    if (!v8)
    {
      goto LABEL_6;
    }

    context = [(HUDashboardViewController *)self wallpaperView];
    v9 = [context refreshWallpaperForHomeKitObject:wallpaperCopy withAnimation:1];
  }

LABEL_6:
}

- (void)home:(id)home didUpdateWallpaperForRoom:(id)room
{
  roomCopy = room;
  context = [(HUDashboardViewController *)self context];
  room = [context room];
  v7 = [room isEqual:roomCopy];

  if (v7)
  {
    wallpaperView = [(HUDashboardViewController *)self wallpaperView];
    v9 = [wallpaperView refreshWallpaperForHomeKitObject:roomCopy withAnimation:1];
  }
}

- (void)home:(id)home didUpdateLocation:(id)location
{
  v28 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  wallpaperView = [(HUDashboardViewController *)self wallpaperView];
  context = [(HUDashboardViewController *)self context];
  room = [context room];
  if (room)
  {
    v9 = [wallpaperView refreshWallpaperForHomeKitObject:room withAnimation:1];
  }

  else
  {
    context2 = [(HUDashboardViewController *)self context];
    home = [context2 home];
    v12 = [wallpaperView refreshWallpaperForHomeKitObject:home withAnimation:1];
  }

  context3 = [(HUDashboardViewController *)self context];
  home2 = [context3 home];
  if (home2)
  {
    v15 = home2;
    context4 = [(HUDashboardViewController *)self context];
    home3 = [context4 home];

    if (home3 == homeCopy)
    {
      v18 = [HUHomeEnergyManagerHelper alloc];
      context5 = [(HUDashboardViewController *)self context];
      home4 = [context5 home];
      v21 = [(HUHomeEnergyManagerHelper *)v18 initWithHome:home4];

      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v26 = 2080;
        v27 = "[HUDashboardViewController(Observer) home:didUpdateLocation:]";
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@ %s Updating Home Location", buf, 0x16u);
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__HUDashboardViewController_Observer__home_didUpdateLocation___block_invoke;
      v23[3] = &unk_277DB8488;
      v23[4] = self;
      [v21 updateHomeLocationWithCompletionHandler:v23];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v21 = HFLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v26 = 2080;
    v27 = "[HUDashboardViewController(Observer) home:didUpdateLocation:]";
    _os_log_error_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_ERROR, "%@ %s home is nil.", buf, 0x16u);
  }

LABEL_12:
}

void __62__HUDashboardViewController_Observer__home_didUpdateLocation___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412546;
    v5 = v3;
    v6 = 2080;
    v7 = "[HUDashboardViewController(Observer) home:didUpdateLocation:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@:%s Updated Home Location", &v4, 0x16u);
  }
}

- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home
{
  v17 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [homeCopy uuid];
    v15 = 138543362;
    v16 = uuid;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "homeKitDispatcher:manager:didChangeHome: home = %{public}@", &v15, 0xCu);
  }

  mEMORY[0x277D14820] = [MEMORY[0x277D14820] sharedManager];
  [mEMORY[0x277D14820] warmup];

  cameraItemModuleController = [(HUDashboardViewController *)self cameraItemModuleController];
  cameraController = [cameraItemModuleController cameraController];

  if (cameraController)
  {
    playerViewController = [cameraController playerViewController];
    presentingViewController = [playerViewController presentingViewController];
    v14 = [presentingViewController hu_dismissViewControllerAnimated:0];
  }
}

- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state
{
  stateCopy = state;
  v12 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = managerCopy;
    v10 = 1024;
    v11 = stateCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "<HHUDashboardViewController-homeManager:didUpdateHH2State> homeManager = %@ | didUpdateHH2State = %{BOOL}d", &v8, 0x12u);
  }

  [(HUDashboardViewController *)self _updateBlockoutView];
  [(HUDashboardViewController *)self _updateBarButtons];
}

- (id)presentRoomSettingsForRoom:(id)room
{
  roomCopy = room;
  if (roomCopy)
  {
    room = roomCopy;
LABEL_4:
    futureWithNoResult = [(HUDashboardViewController *)self _presentRoomEditorForRoom:room];

    goto LABEL_5;
  }

  context = [(HUDashboardViewController *)self context];
  room = [context room];

  if (room)
  {
    goto LABEL_4;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "HUDashboardViewController: room not provided for settings presentation", v10, 2u);
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_5:

  return futureWithNoResult;
}

- (id)_presentRoomEditorForRoom:(id)room
{
  v4 = MEMORY[0x277D149D8];
  roomCopy = room;
  v6 = [v4 alloc];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  home = [itemManager home];
  v9 = [v6 initWithExistingObject:roomCopy inHome:home];

  v10 = [[HUEditRoomViewController alloc] initWithRoomBuilder:v9 presentationDelegate:self addRoomDelegate:0];
  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  [v11 setModalPresentationStyle:2];
  v12 = [(UIViewController *)self hu_presentPreloadableViewController:v11 animated:1];

  return v12;
}

- (void)editRoomViewControllerDidFinish:(id)finish withNewRoom:(id)room
{
  roomCopy = room;
  if (roomCopy)
  {
    _dashboardNavigator = [(HUDashboardViewController *)self _dashboardNavigator];
    v6 = [_dashboardNavigator showRoom:roomCopy];
  }

  _dashboardNavigator2 = [(HUDashboardViewController *)self _dashboardNavigator];
  [_dashboardNavigator2 dismissViewController];
}

- (void)_setUpNavigationBar
{
  navigationItem = [(HUDashboardViewController *)self navigationItem];
  [navigationItem setLeftItemsSupplementBackButton:1];

  v4 = [HUNavigationBarButton addButtonWithOwner:self];
  [(HUDashboardViewController *)self setNavigationAddButton:v4];

  v5 = [HUNavigationBarButton announceButtonWithOwner:self];
  [(HUDashboardViewController *)self setNavigationAnnounceButton:v5];

  v6 = [HUNavigationBarButton editDoneButtonWithOwner:self];
  [(HUDashboardViewController *)self setNavigationEditDoneButton:v6];

  v7 = [HUNavigationBarButton homeButtonWithOwner:self];
  [(HUDashboardViewController *)self setNavigationHomeButton:v7];

  [(HUDashboardViewController *)self _updateBarButtons];
}

- (void)_clearEnergyIndicator
{
  energyIndicatorViewController = [(HUDashboardViewController *)self energyIndicatorViewController];

  if (energyIndicatorViewController)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:_clearEnergyIndicator]", v6, 2u);
    }

    [(HUDashboardViewController *)self setEnergyIndicatorViewController:0];
    navigationItem = [(HUDashboardViewController *)self navigationItem];
    [navigationItem _setLargeTitleAccessoryView:0 alignToBaseline:0];

    [(HUDashboardViewController *)self _updateHomeEnergyTipVisibility];
  }
}

- (void)_updateHomeEnergyIndicatorVisibility
{
  v43 = *MEMORY[0x277D85DE8];
  context = [(HUDashboardViewController *)self context];
  home = [context home];
  hf_isHomeEnergyHomeEmpty = [home hf_isHomeEnergyHomeEmpty];

  if (hf_isHomeEnergyHomeEmpty)
  {
    goto LABEL_7;
  }

  context2 = [(HUDashboardViewController *)self context];
  home2 = [context2 home];
  hf_isGridForecastVisible = [home2 hf_isGridForecastVisible];

  energyIndicatorViewController = [(HUDashboardViewController *)self energyIndicatorViewController];

  if (!energyIndicatorViewController)
  {
    context3 = [(HUDashboardViewController *)self context];
    home3 = [context3 home];
    hf_isGridForecastSupported = [home3 hf_isGridForecastSupported];

    context4 = [(HUDashboardViewController *)self context];
    allowsEnergyIndicator = [context4 allowsEnergyIndicator];

    v17 = hf_isGridForecastSupported & allowsEnergyIndicator;
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v36 = v17 & hf_isGridForecastVisible;
      v37 = 1024;
      v38 = allowsEnergyIndicator & 1;
      v39 = 1024;
      v40 = hf_isGridForecastVisible;
      v41 = 1024;
      v42 = v17;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:_updateHomeEnergyIndicatorVisibility] Indicator visibility: %{BOOL}d (contextAllows = %{BOOL}d, showGridForecast = %{BOOL}d, home can show indicator %{BOOL}d)", buf, 0x1Au);

      if ((v17 & hf_isGridForecastVisible) != 1)
      {
        return;
      }
    }

    else
    {

      if ((v17 & hf_isGridForecastVisible & 1) == 0)
      {
        return;
      }
    }

    context5 = [(HUDashboardViewController *)self context];
    home4 = [context5 home];
    v21 = [HUEnergyIndicatorAccessoryViewWrapper createEnergyIndicatorViewWithHome:home4];
    [(HUDashboardViewController *)self setEnergyIndicatorViewController:v21];

    energyIndicatorViewController2 = [(HUDashboardViewController *)self energyIndicatorViewController];
    view = [energyIndicatorViewController2 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [HUEnergyIndicatorAccessoryView alloc];
    energyIndicatorViewController3 = [(HUDashboardViewController *)self energyIndicatorViewController];
    view2 = [energyIndicatorViewController3 view];
    v27 = [(HUEnergyIndicatorAccessoryView *)v24 initWithEnergyIndicator:view2];
    [(HUDashboardViewController *)self setEnergyAccessoryView:v27];

    v28 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_homeEnergyNavigationBarIndicatorTapped_];
    energyAccessoryView = [(HUDashboardViewController *)self energyAccessoryView];
    [energyAccessoryView addGestureRecognizer:v28];

    energyAccessoryView2 = [(HUDashboardViewController *)self energyAccessoryView];
    [energyAccessoryView2 setUserInteractionEnabled:1];

    navigationItem = [(HUDashboardViewController *)self navigationItem];
    energyAccessoryView3 = [(HUDashboardViewController *)self energyAccessoryView];
    [navigationItem _setLargeTitleAccessoryView:energyAccessoryView3 alignToBaseline:0];

    navigationItem2 = [(HUDashboardViewController *)self navigationItem];
    [navigationItem2 _setSupportsTwoLineLargeTitles:1];

    [(HUDashboardViewController *)self _updateHomeEnergyTipVisibility];
    return;
  }

  if ((hf_isGridForecastVisible & 1) == 0)
  {
LABEL_7:

    [(HUDashboardViewController *)self _clearEnergyIndicator];
  }

  else
  {
    energyIndicatorViewController4 = [(HUDashboardViewController *)self energyIndicatorViewController];
    context6 = [(HUDashboardViewController *)self context];
    home5 = [context6 home];
    [HUEnergyIndicatorAccessoryViewWrapper updateWithViewController:energyIndicatorViewController4 with:home5];
  }
}

- (void)_updateHomeEnergyTipVisibility
{
  context = [(HUDashboardViewController *)self context];
  home = [context home];
  if ([home hf_isGridForecastEnabled])
  {
    context2 = [(HUDashboardViewController *)self context];
    allowsEnergyIndicator = [context2 allowsEnergyIndicator];
  }

  else
  {
    allowsEnergyIndicator = 0;
  }

  [(HUDashboardViewController *)self changeHomeEnergyTipShouldDisplayTo:allowsEnergyIndicator];
}

- (void)homeEnergyNavigationBarIndicatorTapped:(id)tapped
{
  [HUEnergyAnalytics saveTapEvent:55 withInteractionType:1];
  _dashboardNavigator = [(HUDashboardViewController *)self _dashboardNavigator];
  energyAccessoryTypeGroup = [MEMORY[0x277D14378] energyAccessoryTypeGroup];
  context = [(HUDashboardViewController *)self context];
  home = [context home];
  v7 = [_dashboardNavigator showAccessoryTypeGroup:energyAccessoryTypeGroup forHome:home animated:1];
}

- (void)_updateBarButtons
{
  _allNavigationBarButtons = [(HUDashboardViewController *)self _allNavigationBarButtons];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HUDashboardViewController_NavigationBar___updateBarButtons__block_invoke;
  v8[3] = &unk_277DC2BC8;
  v8[4] = self;
  v4 = [_allNavigationBarButtons na_filter:v8];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HUDashboardViewController_NavigationBar___updateBarButtons__block_invoke_2;
  v7[3] = &unk_277DC2BF0;
  v7[4] = self;
  v5 = [v4 na_dictionaryByBucketingObjectsUsingKeyGenerator:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HUDashboardViewController_NavigationBar___updateBarButtons__block_invoke_3;
  v6[3] = &unk_277DC2C40;
  v6[4] = self;
  [v5 na_each:v6];
}

id __61__HUDashboardViewController_NavigationBar___updateBarButtons__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) navigationBarEdgeForButton:a2];
  if (v2)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
  }

  return v2;
}

void __61__HUDashboardViewController_NavigationBar___updateBarButtons__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D14CE8];
    v9 = [*(a1 + 32) navigationBarButtonIdentifierOrderForEdge:v6];
    v10 = [v8 comparatorWithSortedObjects:v9];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__HUDashboardViewController_NavigationBar___updateBarButtons__block_invoke_4;
    v13[3] = &unk_277DC2C18;
    v14 = v10;
    v11 = v10;
    v12 = [v5 sortedArrayUsingComparator:v13];
    [*(a1 + 32) _setNavigationButtons:v12 forEdge:v7];
  }
}

uint64_t __61__HUDashboardViewController_NavigationBar___updateBarButtons__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 buttonIdentifier];
  v7 = [v5 buttonIdentifier];

  v8 = (*(v4 + 16))(v4, v6, v7);
  return v8;
}

- (id)_allNavigationBarButtons
{
  v3 = objc_opt_new();
  navigationAddButton = [(HUDashboardViewController *)self navigationAddButton];
  [v3 na_safeAddObject:navigationAddButton];

  navigationHomeButton = [(HUDashboardViewController *)self navigationHomeButton];
  [v3 na_safeAddObject:navigationHomeButton];

  navigationEditDoneButton = [(HUDashboardViewController *)self navigationEditDoneButton];
  [v3 na_safeAddObject:navigationEditDoneButton];

  navigationAnnounceButton = [(HUDashboardViewController *)self navigationAnnounceButton];
  [v3 na_safeAddObject:navigationAnnounceButton];

  return v3;
}

- (BOOL)shouldHideNavigationBarButton:(id)button
{
  buttonCopy = button;
  if (!buttonCopy || ([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || (-[HUDashboardViewController isEditing](self, "isEditing") & 1) != 0 && (objc_msgSend(buttonCopy, "buttonIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"Done"), v7, !v8))
  {
    v5 = 1;
  }

  else
  {
    buttonIdentifier = [buttonCopy buttonIdentifier];
    v10 = [buttonIdentifier isEqualToString:@"Done"];

    if (v10)
    {
      isEditing = [(HUDashboardViewController *)self isEditing];
LABEL_11:
      v5 = isEditing ^ 1;
      goto LABEL_4;
    }

    buttonIdentifier2 = [buttonCopy buttonIdentifier];
    v13 = [buttonIdentifier2 isEqualToString:@"Announce"];

    if (v13)
    {
      isEditing = [(HUDashboardViewController *)self shouldShowAnnounceButton];
      goto LABEL_11;
    }

    buttonIdentifier3 = [buttonCopy buttonIdentifier];
    v15 = [buttonIdentifier3 isEqualToString:@"Add"];

    if (v15)
    {
      context = [(HUDashboardViewController *)self context];
      v17 = [context allowsAdding] ^ 1;

      context2 = [(HUDashboardViewController *)self context];
      home = [context2 home];
      hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion = [home hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion];

      v5 = v17 | hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion;
    }

    else
    {
      buttonIdentifier4 = [buttonCopy buttonIdentifier];
      v22 = [buttonIdentifier4 isEqualToString:@"HomesAndRooms"];

      if (v22)
      {
        context3 = [(HUDashboardViewController *)self context];
        if ([context3 allowsHomeNavigation])
        {
          context4 = [(HUDashboardViewController *)self context];
          home2 = [context4 home];
          if ([home2 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
          {
            mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
            homeManager = [mEMORY[0x277D146E8] homeManager];
            homes = [homeManager homes];
            v5 = [homes count] == 1;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

LABEL_4:

  return v5 & 1;
}

- (BOOL)shouldShowAnnounceButton
{
  context = [(HUDashboardViewController *)self context];
  if (![context allowsAnnounce])
  {
    v5 = 0;
LABEL_12:

    return v5;
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  if ([itemManager isEmptyDashboard])
  {
    v5 = 0;
LABEL_11:

    goto LABEL_12;
  }

  context2 = [(HUDashboardViewController *)self context];
  home = [context2 home];
  hf_shouldBlockCurrentUserFromHome = [home hf_shouldBlockCurrentUserFromHome];

  if ((hf_shouldBlockCurrentUserFromHome & 1) == 0)
  {
    context3 = [(HUDashboardViewController *)self context];
    room = [context3 room];

    context4 = [(HUDashboardViewController *)self context];
    context = context4;
    if (room)
    {
      itemManager = [context4 room];
      hf_shouldShowAnnounceButtonForThisRoom = [itemManager hf_shouldShowAnnounceButtonForThisRoom];
    }

    else
    {
      itemManager = [context4 home];
      hf_shouldShowAnnounceButtonForThisRoom = [itemManager hf_shouldShowAnnounceButtonForThisHome];
    }

    v5 = hf_shouldShowAnnounceButtonForThisRoom;
    goto LABEL_11;
  }

  return 0;
}

- (unint64_t)navigationBarEdgeForButton:(id)button
{
  buttonCopy = button;
  if ([(HUDashboardViewController *)self shouldHideNavigationBarButton:buttonCopy])
  {
    v5 = 0;
  }

  else
  {
    buttonIdentifier = [buttonCopy buttonIdentifier];
    v7 = [buttonIdentifier isEqualToString:@"Add"];

    if (v7 & 1) != 0 || ([buttonCopy buttonIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"HomesAndRooms"), v8, (v9) || (objc_msgSend(buttonCopy, "buttonIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"Announce"), v10, (v11))
    {
      v5 = 8;
    }

    else
    {
      buttonIdentifier2 = [buttonCopy buttonIdentifier];
      v14 = [buttonIdentifier2 isEqualToString:@"Done"];

      if (v14)
      {
        v5 = 8;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (id)navigationBarButtonIdentifierOrderForEdge:(unint64_t)edge
{
  if (edge == 8)
  {
    if (_MergedGlobals_7 == -1)
    {
      v3 = &qword_281120CC0;
      goto LABEL_6;
    }

    v6 = &_MergedGlobals_7;
    v7 = &__block_literal_global_1148;
  }

  else
  {
    if (qword_281120CC8 == -1)
    {
      v3 = &qword_281120CD0;
      goto LABEL_6;
    }

    v6 = &qword_281120CC8;
    v7 = &__block_literal_global_1152;
  }

  dispatch_once(v6, v7);
  v3 = v6 + 1;
LABEL_6:
  v4 = *v3;

  return v4;
}

void __86__HUDashboardViewController_NavigationBar__navigationBarButtonIdentifierOrderForEdge___block_invoke_2()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"HomesAndRooms";
  v2[1] = @"Add";
  v2[2] = @"Done";
  v2[3] = @"Announce";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = qword_281120CC0;
  qword_281120CC0 = v0;
}

void __86__HUDashboardViewController_NavigationBar__navigationBarButtonIdentifierOrderForEdge___block_invoke_4()
{
  v0 = [MEMORY[0x277CBEA60] array];
  v1 = qword_281120CD0;
  qword_281120CD0 = v0;
}

- (id)_dashboardNavigator
{
  navigationController = [(HUDashboardViewController *)self navigationController];
  if ([navigationController conformsToProtocol:&unk_282556F78])
  {
    v3 = navigationController;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  dashboardNavigator = [v4 dashboardNavigator];

  return dashboardNavigator;
}

- (void)_setNavigationButtons:(id)buttons forEdge:(unint64_t)edge
{
  buttonsCopy = buttons;
  if (edge == 8)
  {
    navigationItem = [(HUDashboardViewController *)self navigationItem];
    [navigationItem setRightBarButtonItems:buttonsCopy];
  }

  else if (edge == 2)
  {
    navigationItem = [(HUDashboardViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItems:buttonsCopy];
  }

  else
  {
    navigationItem = [MEMORY[0x277CCA890] currentHandler];
    [navigationItem handleFailureInMethod:a2 object:self file:@"HUDashboardViewController.m" lineNumber:2908 description:@"-setNavigationButtons only supports UIRectEdgeLeft or UIRectEdgeRight"];
  }
}

- (id)_filterBarController
{
  objc_opt_class();
  navigationController = [(HUDashboardViewController *)self navigationController];
  if (objc_opt_isKindOfClass())
  {
    v4 = navigationController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  filterBarController = [v5 filterBarController];

  return filterBarController;
}

- (void)_updateFilterBarVisibility
{
  context = [(HUDashboardViewController *)self context];
  filterPresentationStyle = [context filterPresentationStyle];

  navigationItem = [(HUDashboardViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];
  [_bottomPalette setHidden:filterPresentationStyle == 0];

  [(HUDashboardViewController *)self _updatePaletteHeight];
  _filterBarController = [(HUDashboardViewController *)self _filterBarController];
  view = [_filterBarController view];
  superview = [view superview];
  collectionView = [(HUDashboardViewController *)self collectionView];

  if (superview == collectionView)
  {
    _filterBarController2 = [(HUDashboardViewController *)self _filterBarController];
    view2 = [_filterBarController2 view];
    [view2 setHidden:filterPresentationStyle == 0];

    if (filterPresentationStyle)
    {
      navigationItem2 = [(HUDashboardViewController *)self navigationItem];
      _bottomPalette2 = [navigationItem2 _bottomPalette];
      [_bottomPalette2 preferredHeight];
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    [(HUDashboardViewController *)self _adjustTopPocketInsetsForBottomPaletteWithHeight:v16];
  }
}

- (void)_setUpFilterBar
{
  if ([(HUDashboardViewController *)self _shouldSetupFilterBar])
  {
    context = [(HUDashboardViewController *)self context];
    filterPresentationStyle = [context filterPresentationStyle];

    if (filterPresentationStyle == 3)
    {

      [(HUDashboardViewController *)self _setupFilterBarForPocketableFilterPresentationStyle];
    }

    else
    {
      _filterBarController = [(HUDashboardViewController *)self _filterBarController];
      objc_initWeak(&location, self);
      hu_preloadContent = [_filterBarController hu_preloadContent];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__HUDashboardViewController_NavigationBar___setUpFilterBar__block_invoke;
      v9[3] = &unk_277DBC1A0;
      objc_copyWeak(&v11, &location);
      v7 = _filterBarController;
      v10 = v7;
      v8 = [hu_preloadContent addCompletionBlock:v9];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __59__HUDashboardViewController_NavigationBar___setUpFilterBar__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_alloc(MEMORY[0x277D76118]);
  v3 = [*(a1 + 32) view];
  v4 = [v2 initWithContentView:v3];

  [v4 _setLayoutPriority:2];
  v5 = [WeakRetained navigationItem];
  [v5 _setBottomPalette:v4];

  if ([WeakRetained viewIsFullyVisible])
  {
    [WeakRetained _updatePaletteHeight];
  }
}

- (void)_updatePaletteHeight
{
  context = [(HUDashboardViewController *)self context];
  if ([context filterPresentationStyle])
  {
    _filterBarController = [(HUDashboardViewController *)self _filterBarController];
    [_filterBarController intrinsicHeight];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  navigationItem = [(HUDashboardViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];
  [_bottomPalette preferredHeight];
  v10 = v9;

  if (v10 != v6)
  {
    navigationItem2 = [(HUDashboardViewController *)self navigationItem];
    _bottomPalette2 = [navigationItem2 _bottomPalette];
    [_bottomPalette2 setPreferredHeight:v6];

    if ([MEMORY[0x277D14CE8] isInternalInstall])
    {
      if (HFPreferencesBoolForKey())
      {
        context2 = [(HUDashboardViewController *)self context];
        if ([context2 filterPresentationStyle] == 3)
        {
          palettePlaceholderView = [(HUDashboardViewController(FilterBarPaletteHack) *)self palettePlaceholderView];
          [palettePlaceholderView frame];
          v15 = v14;

          if (v15 == v6)
          {
            return;
          }

          palettePlaceholderView2 = [(HUDashboardViewController(FilterBarPaletteHack) *)self palettePlaceholderView];
          [palettePlaceholderView2 frame];
          v18 = v17;
          v20 = v19;
          v22 = v21;

          context2 = [(HUDashboardViewController(FilterBarPaletteHack) *)self palettePlaceholderView];
          [context2 setFrame:{v18, v20, v22, v6}];
        }
      }
    }
  }
}

- (id)homeForNavigationBarButton:(id)button
{
  context = [(HUDashboardViewController *)self context];
  home = [context home];

  return home;
}

- (id)roomForNavigationBarButton:(id)button
{
  context = [(HUDashboardViewController *)self context];
  room = [context room];

  return room;
}

- (BOOL)shouldIncludeRoomsInHomeMenu
{
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    context = [(HUDashboardViewController *)self context];
    home = [context home];
    if (([home hf_shouldBlockCurrentUserFromHome] & 1) == 0)
    {
      view = [(HUDashboardViewController *)self view];
      traitCollection = [view traitCollection];
      isCollapsed = [traitCollection horizontalSizeClass] == 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  else
  {
    context = [(HUDashboardViewController *)self context];
    home = [context home];
    if (([home hf_shouldBlockCurrentUserFromHome] & 1) == 0)
    {
      view = [(HUDashboardViewController *)self navigationController];
      traitCollection = [view splitViewController];
      if (traitCollection)
      {
        navigationController = [(HUDashboardViewController *)self navigationController];
        splitViewController = [navigationController splitViewController];
        isCollapsed = [splitViewController isCollapsed];
      }

      else
      {
        isCollapsed = 1;
      }

      goto LABEL_10;
    }
  }

  isCollapsed = 0;
LABEL_11:

  return isCollapsed;
}

- (id)statusItemsForNavigationBarButton:(id)button inHome:(id)home
{
  homeCopy = home;
  context = [(HUDashboardViewController *)self context];
  home = [context home];
  v8 = [homeCopy isEqual:home];

  if (v8)
  {
    context2 = [(HUDashboardViewController *)self context];
    home2 = [context2 home];
    hf_shouldBlockCurrentUserFromHome = [home2 hf_shouldBlockCurrentUserFromHome];

    if (hf_shouldBlockCurrentUserFromHome)
    {
      v12 = MEMORY[0x277CBEBF8];
      goto LABEL_7;
    }

    context = [(HUItemCollectionViewController *)self itemManager];
    home = [context homeMenuStatusItems];
    allObjects = [home allObjects];
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    statusItemModule = [itemManager statusItemModule];
    _itemComparator = [statusItemModule _itemComparator];
    v12 = [allObjects sortedArrayUsingComparator:_itemComparator];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

LABEL_7:

  return v12;
}

- (id)editActionDelegate
{
  objc_opt_class();
  navigationController = [(HUDashboardViewController *)self navigationController];
  if (objc_opt_isKindOfClass())
  {
    v4 = navigationController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)supportsEditing
{
  context = [(HUDashboardViewController *)self context];
  allowsEditing = [context allowsEditing];

  if (!allowsEditing)
  {
    return 0;
  }

  context2 = [(HUDashboardViewController *)self context];
  home = [context2 home];
  hf_shouldBlockCurrentUserFromHome = [home hf_shouldBlockCurrentUserFromHome];

  if (hf_shouldBlockCurrentUserFromHome)
  {
    return 0;
  }

  context3 = [(HUDashboardViewController *)self context];
  home2 = [context3 home];
  hf_currentUserIsAdministrator = [home2 hf_currentUserIsAdministrator];

  if (!hf_currentUserIsAdministrator)
  {
    return 0;
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  isEmptyDashboard = [itemManager isEmptyDashboard];

  return isEmptyDashboard ^ 1;
}

- (NSString)editActionTitle
{
  context = [(HUDashboardViewController *)self context];
  menuEditActionTitle = [context menuEditActionTitle];

  return menuEditActionTitle;
}

- (NSString)editActionTitleLocalizationKey
{
  context = [(HUDashboardViewController *)self context];
  menuEditActionTitleLocalizationKey = [context menuEditActionTitleLocalizationKey];

  return menuEditActionTitleLocalizationKey;
}

- (void)sendContextMenuMetricsWithTitleLocalizationKey:(id)key
{
  v4 = MEMORY[0x277CBEB38];
  keyCopy = key;
  dictionary = [v4 dictionary];
  [dictionary na_safeSetObject:self forKey:*MEMORY[0x277D13588]];
  contextTypeDescriptionForAnalytics = [(HUDashboardViewController *)self contextTypeDescriptionForAnalytics];
  if ([contextTypeDescriptionForAnalytics length])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"%@-%@", v9, contextTypeDescriptionForAnalytics];
  }

  else
  {
    v10 = 0;
  }

  [dictionary na_safeSetObject:v10 forKey:*MEMORY[0x277D13590]];
  [dictionary na_safeSetObject:keyCopy forKey:*MEMORY[0x277D134F0]];

  [MEMORY[0x277D143D8] sendEvent:36 withData:dictionary];
}

- (void)_updateAnnounceNotificationSettingsIfNeeded
{
  mEMORY[0x277D147A8] = [MEMORY[0x277D147A8] sharedDispatcher];
  getAuthorizationStatusAsync = [mEMORY[0x277D147A8] getAuthorizationStatusAsync];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HUDashboardViewController_Announce___updateAnnounceNotificationSettingsIfNeeded__block_invoke;
  v6[3] = &unk_277DBE7E0;
  v6[4] = self;
  v5 = [getAuthorizationStatusAsync addCompletionBlock:v6];
}

void __82__HUDashboardViewController_Announce___updateAnnounceNotificationSettingsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a2 intValue];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) itemManager];
    v6 = [v5 home];

    v7 = [v6 currentUser];
    v8 = [v7 announceUserSettings];
    v9 = [v8 deviceNotificationMode];
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
      v12 = [MEMORY[0x277CCABB0] numberWithInt:v4];
      v13 = HFLocationServicesAvailableForAuthorizationStatus();
      v14 = @"NO";
      v17 = 138412802;
      v18 = v11;
      v19 = 2112;
      if (v13)
      {
        v14 = @"YES";
      }

      v20 = v12;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "currentNotificationMode = [%@] - CLAuthorizationStatus = [%@] - HFLocationServicesAvailableForAuthorizationStatus = [%@]", &v17, 0x20u);
    }

    if (v9 != 1 && (HFLocationServicesAvailableForAuthorizationStatus() & 1) == 0)
    {
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Setting Announce Notification mode to HMAnnounceDeviceNotificationModeNever", &v17, 2u);
      }

      v16 = [objc_alloc(MEMORY[0x277CD1810]) initWithDeviceNotificationMode:1];
      [v7 updateAnnounceUserSettings:v16 forHome:v6 completionHandler:&__block_literal_global_1227];
    }
  }
}

void __82__HUDashboardViewController_Announce___updateAnnounceNotificationSettingsIfNeeded__block_invoke_1225(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Error updating Announce notification setting - [%@]", &v4, 0xCu);
    }
  }
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  if (-[HUDashboardViewController isEditing](self, "isEditing") & 1) != 0 || ([MEMORY[0x277D14670] isHomeControlService])
  {
    v10 = 0;
    goto LABEL_54;
  }

  v55 = a2;
  quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
  v12 = [(HUDashboardViewController *)self presentationCoordinator:quickControlPresentationCoordinator contextForPresentationAtPoint:x, y];

  v59 = v12;
  item = [v12 item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v57 = [(HUDashboardViewController *)self _hasDetailViewControllerForItem:item];
  objc_opt_class();
  v15 = item;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  actionSetItemStyle = [v17 actionSetItemStyle];
  v66 = actionSetItemStyle == 2;

  context = [(HUDashboardViewController *)self context];
  home = [context home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  v22 = v15;
  v23 = &unk_2824C0788;
  if ([v22 conformsToProtocol:v23])
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  homeKitObject = [v25 homeKitObject];
  v27 = &unk_28259DF78;
  if ([homeKitObject conformsToProtocol:v27])
  {
    v28 = homeKitObject;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v58 = v25;
  homeKitObject2 = [v25 homeKitObject];
  v31 = &unk_28259DE80;
  if ([homeKitObject2 conformsToProtocol:v31])
  {
    v32 = homeKitObject2;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  v34 = 0;
  if (hf_currentUserIsAdministrator)
  {
    v67 = 0;
    if (v29)
    {
      hf_effectiveShowInHomeDashboard = [v29 hf_effectiveShowInHomeDashboard];
      hf_effectiveShowInHomeDashboard2 = [v29 hf_effectiveShowInHomeDashboard];
      v34 = (actionSetItemStyle != 2) & ~hf_effectiveShowInHomeDashboard;
      if (actionSetItemStyle == 2)
      {
        v37 = 0;
      }

      else
      {
        v37 = hf_effectiveShowInHomeDashboard2;
      }

      v67 = v37;
    }
  }

  else
  {
    v67 = 0;
  }

  v63 = v34;
  if (v33)
  {
    v38 = hf_currentUserIsAdministrator;
  }

  else
  {
    v38 = 0;
  }

  if (v38 != 1)
  {
    v61 = 0;
LABEL_33:
    hf_isVisibleInHomeStatus = 0;
    goto LABEL_34;
  }

  if ([v33 hf_supportsHomeStatus])
  {
    v61 = [v33 hf_isVisibleInHomeStatus] ^ 1;
  }

  else
  {
    v61 = 0;
  }

  if (![v33 hf_supportsHomeStatus])
  {
    goto LABEL_33;
  }

  hf_isVisibleInHomeStatus = [v33 hf_isVisibleInHomeStatus];
LABEL_34:
  v62 = isKindOfClass & 1;
  v64 = v33;
  v65 = v29;
  v56 = hf_currentUserIsAdministrator;
  if (hf_currentUserIsAdministrator)
  {
    context2 = [(HUDashboardViewController *)self context];
    if ([context2 allowsEditing])
    {
      LOBYTE(hf_currentUserIsAdministrator) = [(HUDashboardViewController *)self canReorderItemAtIndexPath:pathCopy];
    }

    else
    {
      LOBYTE(hf_currentUserIsAdministrator) = 0;
    }

    v40 = v57;
  }

  else
  {
    v40 = v57;
    v66 = 0;
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v42 = [itemManager displayedSectionIdentifierForSectionIndex:{objc_msgSend(pathCopy, "section")}];

  v43 = v22;
  v44 = &unk_28251AC90;
  if ([v43 conformsToProtocol:v44])
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;

  layoutManager = [(HUDashboardViewController *)self layoutManager];
  context3 = [(HUDashboardViewController *)self context];
  v49 = [layoutManager isAdaptiveTileStyleInSectionIdentifier:v42 context:context3];

  v50 = [MEMORY[0x277D14CE8] isAMac] & v56;
  if (!v46)
  {
    v50 = 0;
  }

  v51 = v50 & v49;
  v52 = hf_currentUserIsAdministrator;
  if (((v62 | v40 | v63) & 1) != 0 || (v67 & 1) != 0 || (v61 & 1) != 0 || (hf_isVisibleInHomeStatus & 1) != 0 || (hf_currentUserIsAdministrator & 1) != 0 || v66 || (v10 = 0, v51))
  {
    v53 = MEMORY[0x277D753B0];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke;
    v68[3] = &unk_277DC2DA0;
    v76 = v52;
    v68[4] = self;
    v69 = v59;
    v77 = v63;
    v70 = v65;
    v75 = v55;
    v78 = v67;
    v79 = v61;
    v71 = v64;
    v80 = hf_isVisibleInHomeStatus;
    v81 = v62;
    v72 = v43;
    v82 = v40;
    v73 = pathCopy;
    v83 = v66;
    v84 = v51;
    v74 = v46;
    v10 = [v53 configurationWithIdentifier:0 previewProvider:0 actionProvider:v68];
    [v10 setPreferredMenuElementOrder:1];
  }

LABEL_54:

  return v10;
}

id __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke(uint64_t a1)
{
  v149[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (*(a1 + 96) == 1 && [MEMORY[0x277D14CE8] supportsEditView])
  {
    v4 = MEMORY[0x277D750C8];
    v5 = [*(a1 + 32) context];
    v6 = [v5 menuEditActionTitle];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.grid.2x2"];
    v146[0] = MEMORY[0x277D85DD0];
    v146[1] = 3221225472;
    v146[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_1259;
    v146[3] = &unk_277DC2C88;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v148 = &__block_literal_global_1253;
    v146[4] = v8;
    v147 = v9;
    v10 = [v4 actionWithTitle:v6 image:v7 identifier:0 handler:v146];

    [v2 addObject:v10];
  }

  if (*(a1 + 97) == 1)
  {
    v11 = MEMORY[0x277D750C8];
    v12 = _HULocalizedStringWithDefaultValue(@"HUShowInHomeDashboardTitle", @"HUShowInHomeDashboardTitle", 1);
    v13 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.circle"];
    v139[0] = MEMORY[0x277D85DD0];
    v139[1] = 3221225472;
    v139[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_2_1267;
    v139[3] = &unk_277DC2CB0;
    v144 = &__block_literal_global_1253;
    v140 = @"HUShowInHomeDashboardTitle";
    v14 = *(a1 + 48);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v141 = v14;
    v142 = v15;
    v145 = *(a1 + 88);
    v143 = v16;
    v17 = [v11 actionWithTitle:v12 image:v13 identifier:0 handler:v139];

    [v3 addObject:v17];
  }

  if (*(a1 + 98) == 1)
  {
    v18 = MEMORY[0x277D750C8];
    v19 = _HULocalizedStringWithDefaultValue(@"HUHideFromHomeDashboardTitle", @"HUHideFromHomeDashboardTitle", 1);
    v20 = [MEMORY[0x277D755B8] systemImageNamed:@"minus.circle"];
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_3;
    v132[3] = &unk_277DC2CB0;
    v137 = &__block_literal_global_1253;
    v133 = @"HUHideFromHomeDashboardTitle";
    v21 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v134 = v21;
    v135 = v22;
    v138 = *(a1 + 88);
    v136 = v23;
    v24 = [v18 actionWithTitle:v19 image:v20 identifier:0 handler:v132];

    [v3 addObject:v24];
  }

  if (*(a1 + 99) == 1)
  {
    v25 = MEMORY[0x277D750C8];
    v26 = _HULocalizedStringWithDefaultValue(@"HUIncludeInHomeStatusTitle", @"HUIncludeInHomeStatusTitle", 1);
    v27 = [MEMORY[0x277D755B8] systemImageNamed:@"house"];
    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 3221225472;
    v125[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_4;
    v125[3] = &unk_277DC2CB0;
    v130 = &__block_literal_global_1253;
    v126 = @"HUIncludeInHomeStatusTitle";
    v28 = *(a1 + 56);
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v127 = v28;
    v128 = v29;
    v131 = *(a1 + 88);
    v129 = v30;
    v31 = [v25 actionWithTitle:v26 image:v27 identifier:0 handler:v125];

    [v3 addObject:v31];
  }

  if (*(a1 + 100) == 1)
  {
    v32 = MEMORY[0x277D750C8];
    v33 = _HULocalizedStringWithDefaultValue(@"HUExcludeFromHomeStatusTitle", @"HUExcludeFromHomeStatusTitle", 1);
    v34 = [MEMORY[0x277D755B8] systemImageNamed:@"house"];
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_5;
    v118[3] = &unk_277DC2CB0;
    v123 = &__block_literal_global_1253;
    v119 = @"HUExcludeFromHomeStatusTitle";
    v35 = *(a1 + 56);
    v36 = *(a1 + 32);
    v37 = *(a1 + 40);
    v120 = v35;
    v121 = v36;
    v124 = *(a1 + 88);
    v122 = v37;
    v38 = [v32 actionWithTitle:v33 image:v34 identifier:0 handler:v118];

    [v3 addObject:v38];
  }

  if (*(a1 + 101) == 1)
  {
    v39 = MEMORY[0x277D750C8];
    v40 = _HULocalizedStringWithDefaultValue(@"HUContextMenuCameraViewLiveStreamTitle", @"HUContextMenuCameraViewLiveStreamTitle", 1);
    v41 = [MEMORY[0x277D755B8] systemImageNamed:@"video"];
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_6;
    v112[3] = &unk_277DC2CD8;
    v117 = &__block_literal_global_1253;
    v42 = *(a1 + 32);
    v113 = @"HUContextMenuCameraViewLiveStreamTitle";
    v114 = v42;
    v115 = *(a1 + 64);
    v116 = *(a1 + 40);
    v43 = [v39 actionWithTitle:v40 image:v41 identifier:0 handler:v112];

    [v3 addObject:v43];
  }

  if (*(a1 + 102) == 1)
  {
    v44 = [*(a1 + 32) shouldShowAccessoryControlForItem:*(a1 + 64)];
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_7;
    v109[3] = &unk_277DC2D00;
    v110 = *(a1 + 64);
    v111 = v44;
    v45 = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_7(v109);
    v46 = MEMORY[0x277D750C8];
    v47 = _HULocalizedStringWithDefaultValue(v45, v45, 1);
    v48 = [MEMORY[0x277D755B8] systemImageNamed:@"gearshape"];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_8;
    v101[3] = &unk_277DC2D28;
    v107 = &__block_literal_global_1253;
    v102 = v45;
    v108 = v44;
    v49 = *(a1 + 64);
    v50 = *(a1 + 32);
    v103 = v49;
    v104 = v50;
    v105 = *(a1 + 72);
    v106 = *(a1 + 40);
    v51 = v45;
    v52 = [v46 actionWithTitle:v47 image:v48 identifier:0 handler:v101];

    [v3 addObject:v52];
  }

  if (*(a1 + 103) == 1)
  {
    v53 = MEMORY[0x277D750C8];
    v54 = _HULocalizedStringWithDefaultValue(@"HUHideSuggestedScenesTitle", @"HUHideSuggestedScenesTitle", 1);
    v55 = [MEMORY[0x277D755B8] systemImageNamed:@"minus.circle"];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_9;
    v96[3] = &unk_277DC2D50;
    v100 = &__block_literal_global_1253;
    v56 = *(a1 + 32);
    v57 = *(a1 + 40);
    v97 = @"HUHideSuggestedScenesTitle";
    v98 = v56;
    v99 = v57;
    v58 = [v53 actionWithTitle:v54 image:v55 identifier:0 handler:v96];

    [v3 addObject:v58];
  }

  if (*(a1 + 104) == 1)
  {
    v59 = [*(a1 + 32) layoutManager];
    v60 = [v59 gridSizeForItem:*(a1 + 80)];
    v62 = v61;

    v63 = v62 <= 1 || v60 <= 1;
    v64 = @"HUContextMenuShowAsLargeTileTitle";
    if (!v63)
    {
      v64 = @"HUContextMenuShowAsSmallTileTitle";
    }

    v65 = v64;
    objc_opt_class();
    v66 = [*(a1 + 32) collectionView];
    v67 = [v66 cellForItemAtIndexPath:*(a1 + 72)];
    if (objc_opt_isKindOfClass())
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    v69 = v68;

    v70 = MEMORY[0x277D750C8];
    v71 = _HULocalizedStringWithDefaultValue(v65, v65, 1);
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_1313;
    v89[3] = &unk_277DC2D78;
    v72 = *(a1 + 32);
    v90 = v65;
    v91 = v72;
    v95 = &__block_literal_global_1253;
    v92 = v69;
    v93 = *(a1 + 80);
    v94 = *(a1 + 40);
    v73 = v65;
    v74 = v69;
    v75 = [v70 actionWithTitle:v71 image:0 identifier:0 handler:v89];

    [v3 addObject:v75];
  }

  if (([v2 count] || objc_msgSend(v3, "count")) && objc_msgSend(*(a1 + 64), "conformsToProtocol:", &unk_2824C0828))
  {
    v76 = [*(a1 + 32) quickControlPresentationContextForItem:*(a1 + 64) atIndexPath:*(a1 + 72)];
    v77 = MEMORY[0x277D143D8];
    v78 = [*(a1 + 32) quickControlPresentationCoordinator];
    [v77 logAndSendTileInteractionEventOfType:3 withPresentationContext:v76 presentationCoordinator:v78];
  }

  v79 = MEMORY[0x277D75710];
  v80 = [v2 copy];
  v81 = [v79 menuWithTitle:&stru_2823E0EE8 image:0 identifier:0 options:1 children:v80];

  v82 = MEMORY[0x277D75710];
  v83 = [v3 copy];
  v84 = [v82 menuWithTitle:&stru_2823E0EE8 image:0 identifier:0 options:1 children:v83];

  v85 = MEMORY[0x277D75710];
  v149[0] = v81;
  v149[1] = v84;
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:2];
  v87 = [v85 menuWithTitle:&stru_2823E0EE8 children:v86];

  return v87;
}

void __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "<HUDashboardViewController> User tapped context menu action: %@", &v4, 0xCu);
  }
}

void __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_1259(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) context];
  v4 = [v3 menuEditActionTitleLocalizationKey];
  (*(v2 + 16))(v2, v4);

  v5 = [*(a1 + 32) editActionDelegate];
  [v5 startEditing];

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = [v7 context];
  v8 = [v9 menuEditActionTitleLocalizationKey];
  [v7 _sendContextMenuMetricsWithContext:v6 title:v8];
}

uint64_t __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_2_1267(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = [*(a1 + 40) hf_updateShowInHomeDashboard:1];
  v3 = [*(a1 + 48) itemManager];
  v4 = [v3 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 72)];

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);

  return [v5 _sendContextMenuMetricsWithContext:v6 title:v7];
}

uint64_t __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = [*(a1 + 40) hf_updateShowInHomeDashboard:0];
  v3 = [*(a1 + 48) itemManager];
  v4 = [v3 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 72)];

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);

  return [v5 _sendContextMenuMetricsWithContext:v6 title:v7];
}

uint64_t __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = [*(a1 + 40) hf_updateIsVisibleInHomeStatus:1];
  v3 = [*(a1 + 48) itemManager];
  v4 = [v3 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 72)];

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);

  return [v5 _sendContextMenuMetricsWithContext:v6 title:v7];
}

uint64_t __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = [*(a1 + 40) hf_updateIsVisibleInHomeStatus:0];
  v3 = [*(a1 + 48) itemManager];
  v4 = [v3 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 72)];

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);

  return [v5 _sendContextMenuMetricsWithContext:v6 title:v7];
}

void __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = [*(a1 + 40) moduleControllerForItem:*(a1 + 48)];
  if (v2)
  {
    [v2 didSelectItem:*(a1 + 48)];
  }

  [*(a1 + 40) _sendContextMenuMetricsWithContext:*(a1 + 56) title:*(a1 + 32)];
}

__CFString *__106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_7(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return @"HUContextMenuSceneDetailsTitle";
  }

  if (*(a1 + 40))
  {
    return @"HUContextMenuAccessorySettingsTitle";
  }

  return @"HUContextMenuAccessoryDetailsTitle";
}

uint64_t __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_8(uint64_t a1)
{
  (*(*(a1 + 72) + 16))();
  if (*(a1 + 80) == 1)
  {
    objc_opt_class();
    v2 = *(a1 + 40);
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    v5 = [v4 sourceItem];
    if ([v5 conformsToProtocol:&unk_28251B0C8])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      v5 = *(a1 + 40);
    }

    v8 = [*(a1 + 48) presentAccessorySettingsForItem:v5];
  }

  else
  {
    v9 = [*(a1 + 48) collectionView];
    v10 = [v9 cellForItemAtIndexPath:*(a1 + 56)];
    if ([v10 conformsToProtocol:&unk_2824C4B08])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 48);
    v13 = v11;
    v14 = [v12 quickControlPresentationCoordinator];
    [v14 setPressedTile:v13];

    v4 = [*(a1 + 48) quickControlPresentationCoordinator];
    v15 = [v4 presentQuickControlWithContext:*(a1 + 64) animated:1];
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 64);
  v18 = *(a1 + 32);

  return [v16 _sendContextMenuMetricsWithContext:v17 title:v18];
}

uint64_t __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_9(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = [*(a1 + 40) itemManager];
  v3 = [v2 home];
  v4 = [v3 hf_setShowPredictedScenesOnDashboard:0];
  v5 = [v4 addCompletionBlock:&__block_literal_global_1306];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);

  return [v6 _sendContextMenuMetricsWithContext:v7 title:v8];
}

void __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = v3 == 0;
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Updating showPredictedScenesOnDashboard to (NO) succeeded: %{BOOL}d  %@", v5, 0x12u);
  }
}

uint64_t __106__HUDashboardViewController_ContextMenu__collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_1313(uint64_t a1)
{
  (*(*(a1 + 72) + 16))();
  [*(a1 + 40) _toggleSizeForCell:*(a1 + 48) withItem:*(a1 + 56)];
  v2 = *(a1 + 64);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 _sendContextMenuMetricsWithContext:v2 title:v4];
}

- (void)_sendContextMenuMetricsWithContext:(id)context title:(id)title
{
  v6 = MEMORY[0x277CBEB38];
  titleCopy = title;
  contextCopy = context;
  dictionary = [v6 dictionary];
  item = [contextCopy item];
  [dictionary na_safeSetObject:item forKey:*MEMORY[0x277D13538]];

  sourceViewController = [contextCopy sourceViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [sourceViewController topViewController];
    v12 = topViewController;
    if (topViewController)
    {
      v13 = topViewController;
    }

    else
    {
      v13 = sourceViewController;
    }

    v14 = v13;

    sourceViewController = v14;
  }

  [dictionary na_safeSetObject:sourceViewController forKey:*MEMORY[0x277D13588]];
  [dictionary na_safeSetObject:titleCopy forKey:*MEMORY[0x277D134F0]];

  context = [(HUDashboardViewController *)self context];
  typeDescriptionForAnalytics = [context typeDescriptionForAnalytics];
  [dictionary na_safeSetObject:typeDescriptionForAnalytics forKey:*MEMORY[0x277D134F8]];

  [MEMORY[0x277D143D8] sendEvent:36 withData:dictionary];
}

- (BOOL)_shouldSetupFilterBarForPocketableFilterPresentationStyle
{
  navigationItem = [(HUDashboardViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];
  if (_bottomPalette)
  {
    v5 = 1;
  }

  else
  {
    navigationController = [(HUDashboardViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v8 = [viewControllers objectAtIndexedSubscript:0];
    navigationItem2 = [v8 navigationItem];
    _bottomPalette2 = [navigationItem2 _bottomPalette];
    v5 = _bottomPalette2 != 0;
  }

  context = [(HUDashboardViewController *)self context];
  filterPresentationStyle = [context filterPresentationStyle];

  if (filterPresentationStyle == 3)
  {
    navigationItem3 = [(HUDashboardViewController *)self navigationItem];
    _bottomPalette3 = [navigationItem3 _bottomPalette];

    contentView = [_bottomPalette3 contentView];
    _filterBarController = [(HUDashboardViewController *)self _filterBarController];
    view = [_filterBarController view];

    _filterBarController2 = [(HUDashboardViewController *)self _filterBarController];
    view2 = [_filterBarController2 view];
    superview = [view2 superview];
    collectionView = [(HUDashboardViewController *)self collectionView];

    v23 = !v5 || contentView != view && superview != collectionView;
  }

  else
  {
    context2 = [(HUDashboardViewController *)self context];
    filterPresentationStyle2 = [context2 filterPresentationStyle];

    if (filterPresentationStyle2 == 2)
    {
      navigationItem4 = [(HUDashboardViewController *)self navigationItem];
      _bottomPalette4 = [navigationItem4 _bottomPalette];
      v28 = _bottomPalette4;
      if (_bottomPalette4)
      {
        _bottomPalette5 = _bottomPalette4;
      }

      else
      {
        navigationController2 = [(HUDashboardViewController *)self navigationController];
        viewControllers2 = [navigationController2 viewControllers];
        v32 = [viewControllers2 objectAtIndexedSubscript:0];
        navigationItem5 = [v32 navigationItem];
        _bottomPalette5 = [navigationItem5 _bottomPalette];
      }

      contentView2 = [_bottomPalette5 contentView];
      _filterBarController3 = [(HUDashboardViewController *)self _filterBarController];
      view3 = [_filterBarController3 view];

      v23 = contentView2 != view3 || !v5;
    }

    else
    {
      return !v5;
    }
  }

  return v23;
}

- (void)_setupFilterBarForPocketableFilterPresentationStyle
{
  _filterBarController = [(HUDashboardViewController *)self _filterBarController];
  objc_initWeak(&location, self);
  hu_preloadContent = [_filterBarController hu_preloadContent];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__HUDashboardViewController_FilterBarPaletteHack___setupFilterBarForPocketableFilterPresentationStyle__block_invoke;
  v6[3] = &unk_277DBC2C8;
  objc_copyWeak(&v7, &location);
  v5 = [hu_preloadContent addCompletionBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __102__HUDashboardViewController_FilterBarPaletteHack___setupFilterBarForPocketableFilterPresentationStyle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained palettePlaceholderView];
  v2 = [WeakRetained navigationItem];
  [v2 _setBottomPalette:v1];

  [WeakRetained _addFilterBarToDashboardView];
  if ([WeakRetained viewIsFullyVisible])
  {
    [WeakRetained _updatePaletteHeight];
    [WeakRetained _updateFilterBarFrameIfNeeded];
  }
}

- (void)_updateFilterBarFrameIfNeeded
{
  [(HUDashboardViewController *)self setFilterBarNeedsUpdate:0];
  context = [(HUDashboardViewController *)self context];
  if ([context filterPresentationStyle] == 3)
  {
    _filterBarController = [(HUDashboardViewController *)self _filterBarController];
    view = [_filterBarController view];
    superview = [view superview];
    collectionView = [(HUDashboardViewController *)self collectionView];

    if (superview == collectionView)
    {
      navigationController = [(HUDashboardViewController *)self navigationController];
      topViewController = [navigationController topViewController];

      if (topViewController == self)
      {

        [(HUDashboardViewController *)self _updateFilterBarFrame];
      }
    }
  }

  else
  {
  }
}

- (void)_updateFilterBarFrame
{
  v70 = *MEMORY[0x277D85DE8];
  navigationItem = [(HUDashboardViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];
  [_bottomPalette frame];
  v6 = v5;

  _filterBarController = [(HUDashboardViewController *)self _filterBarController];
  [_filterBarController intrinsicHeight];
  v9 = v8;
  v10 = -10.0 - v6;
  view = [_filterBarController view];
  [view frame];
  if (CGFloatNearlyEqualToFloatWithTolerance())
  {
    view2 = [_filterBarController view];
    [view2 frame];
    v13 = CGFloatNearlyEqualToFloatWithTolerance();

    if (v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  view3 = [(HUDashboardViewController *)self view];
  [view3 frame];
  v16 = v15;

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    view4 = [_filterBarController view];
    [view4 frame];
    v20 = v19;
    view5 = [_filterBarController view];
    [view5 frame];
    v23 = v22;
    view6 = [_filterBarController view];
    [view6 frame];
    v26 = v25;
    view7 = [_filterBarController view];
    [view7 frame];
    v52 = 134220032;
    selfCopy2 = self;
    v54 = 2048;
    v55 = v20;
    v56 = 2048;
    v57 = v23;
    v58 = 2048;
    v59 = v26;
    v60 = 2048;
    v61 = v28;
    v62 = 2048;
    v63 = 0;
    v64 = 2048;
    v65 = v10;
    v66 = 2048;
    v67 = v16;
    v68 = 2048;
    v69 = v9;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_INFO, "[%p] Updating pocketable filter bar frame (%.2f, %.2f, %.2f, %.2f) to (%.2f, %.2f, %.2f, %.2f)", &v52, 0x5Cu);
  }

  view8 = [_filterBarController view];
  [view8 frame];
  v31 = v30;

  view9 = [_filterBarController view];
  [view9 frame];
  v34 = v33;

  view10 = [_filterBarController view];
  [view10 frame];
  v37 = v36;

  view11 = [_filterBarController view];
  [view11 setFrame:{0.0, v10, v16, v9}];

  if (v9 != v31)
  {
    [(HUDashboardViewController *)self _updatePaletteHeight];
  }

  if (v9 > 0.0)
  {
    v39 = v10 - v34;
    if (v10 - v34 != 0.0 && v37 != 0.0)
    {
      v40 = HFLogForCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        collectionView = [(HUDashboardViewController *)self collectionView];
        [collectionView contentOffset];
        v52 = 134218496;
        selfCopy2 = self;
        v54 = 2048;
        v55 = v42;
        v56 = 2048;
        v57 = v10 - v34;
        _os_log_impl(&dword_20CEB6000, v40, OS_LOG_TYPE_INFO, "[%p] Adjusting content offset after updating filter bar frame: %.2f by %.2f", &v52, 0x20u);
      }

      collectionView2 = [(HUDashboardViewController *)self collectionView];
      [collectionView2 contentOffset];
      v45 = v44;
      v47 = v46;

      collectionView3 = [(HUDashboardViewController *)self collectionView];
      [collectionView3 setContentOffset:{v45, v39 + v47}];
    }
  }

  _filterBarController2 = [(HUDashboardViewController *)self _filterBarController];
  view12 = [_filterBarController2 view];
  isHidden = [view12 isHidden];

  if (isHidden)
  {
    [(HUDashboardViewController *)self _updateFilterBarVisibility];
  }

LABEL_17:
}

- (void)_updateFilterBarViewIfNeeded
{
  context = [(HUDashboardViewController *)self context];
  filterPresentationStyle = [context filterPresentationStyle];

  if (filterPresentationStyle == 3)
  {
    navigationItem = [(HUDashboardViewController *)self navigationItem];
    _bottomPalette = [navigationItem _bottomPalette];
    contentView = [_bottomPalette contentView];
    _filterBarController = [(HUDashboardViewController *)self _filterBarController];
    view = [_filterBarController view];

    if (contentView == view)
    {
      palettePlaceholderView = [(HUDashboardViewController(FilterBarPaletteHack) *)self palettePlaceholderView];
      navigationItem2 = [(HUDashboardViewController *)self navigationItem];
      [navigationItem2 _setBottomPalette:palettePlaceholderView];

      [(HUDashboardViewController *)self _addFilterBarToDashboardView];
    }

    else
    {
      _filterBarController2 = [(HUDashboardViewController *)self _filterBarController];
      view2 = [_filterBarController2 view];
      superview = [view2 superview];
      collectionView = [(HUDashboardViewController *)self collectionView];

      if (superview == collectionView)
      {

        [(HUDashboardViewController *)self _updateFilterBarFrameIfNeeded];
      }

      else
      {
        v14 = HFLogForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "Dashboard presented without a filter bar in palette or as a subview.", buf, 2u);
        }

        [(HUDashboardViewController *)self _addFilterBarToDashboardView];
      }
    }
  }

  else
  {
    context2 = [(HUDashboardViewController *)self context];
    filterPresentationStyle2 = [context2 filterPresentationStyle];

    if (filterPresentationStyle2 == 2)
    {
      navigationItem3 = [(HUDashboardViewController *)self navigationItem];
      _bottomPalette2 = [navigationItem3 _bottomPalette];
      contentView2 = [_bottomPalette2 contentView];
      _filterBarController3 = [(HUDashboardViewController *)self _filterBarController];
      view3 = [_filterBarController3 view];

      if (contentView2 != view3)
      {
        navigationController = [(HUDashboardViewController *)self navigationController];
        viewControllers = [navigationController viewControllers];
        v24 = [viewControllers count];

        if (v24 < 2)
        {
          navigationItem4 = [(HUDashboardViewController *)self navigationItem];
        }

        else
        {
          navigationController2 = [(HUDashboardViewController *)self navigationController];
          viewControllers2 = [navigationController2 viewControllers];
          v27 = [viewControllers2 objectAtIndexedSubscript:0];
          navigationItem4 = [v27 navigationItem];
        }

        [(HUDashboardViewController *)self _addFilterBarToBottomPaletteForNavigationItem:navigationItem4];
      }
    }
  }
}

- (void)_adjustTopPocketInsetsForBottomPaletteWithHeight:(double)height
{
  navigationItem = [(HUDashboardViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];
  [_bottomPalette setHidden:1];

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    collectionView = [(HUDashboardViewController *)self collectionView];
    [collectionView _setPocketInsets:{-height, 0.0, 0.0, 0.0}];
  }
}

- (void)_addFilterBarToDashboardView
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v16 = 134217984;
    selfCopy2 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_INFO, "[%p] Adding filter bar to dashboard view", &v16, 0xCu);
  }

  [(HUDashboardViewController *)self _updateFilterBarFrame];
  if (self)
  {
    _filterBarController = [(HUDashboardViewController *)self _filterBarController];
    view = [_filterBarController view];

    effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];
    layer = [view layer];
    flipsHorizontalAxis = [layer flipsHorizontalAxis];

    if (effectiveUserInterfaceLayoutDirection)
    {
      if ((flipsHorizontalAxis & 1) == 0)
      {
        v9 = HFLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v16 = 134217984;
          selfCopy2 = self;
          _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_INFO, "[%p] Manually applying flipsHorizontalAxis=YES to filter bar", &v16, 0xCu);
        }

        goto LABEL_10;
      }
    }

    else if (flipsHorizontalAxis)
    {
LABEL_10:
      layer2 = [view layer];
      [layer2 setFlipsHorizontalAxis:effectiveUserInterfaceLayoutDirection != 0];
    }
  }

  collectionView = [(HUDashboardViewController *)self collectionView];
  _filterBarController2 = [(HUDashboardViewController *)self _filterBarController];
  view2 = [_filterBarController2 view];
  [collectionView insertSubview:view2 atIndex:0];

  [(HUDashboardViewController *)self _updatePaletteHeight];
  navigationItem = [(HUDashboardViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];
  [_bottomPalette preferredHeight];
  [(HUDashboardViewController *)self _adjustTopPocketInsetsForBottomPaletteWithHeight:?];
}

- (void)_addFilterBarToBottomPaletteForNavigationItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_INFO, "[%p] Adding filter bar to palette", &v16, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277D76118]);
  _filterBarController = [(HUDashboardViewController *)self _filterBarController];
  view = [_filterBarController view];
  v9 = [v6 initWithContentView:view];

  [v9 _setLayoutPriority:2];
  [v9 setUserInteractionEnabled:1];
  [v9 setHidden:0];
  if ([MEMORY[0x277D14CE8] isInternalInstall] && HFPreferencesBoolForKey())
  {
    v10 = [MEMORY[0x277D75348] colorWithHue:drand48() saturation:1.0 brightness:1.0 alpha:0.25];
    [v9 setBackgroundColor:v10];
  }

  [itemCopy _setBottomPalette:v9];
  if (self)
  {
    _filterBarController2 = [(HUDashboardViewController *)self _filterBarController];
    view2 = [_filterBarController2 view];

    layer = [view2 layer];
    flipsHorizontalAxis = [layer flipsHorizontalAxis];

    if (flipsHorizontalAxis)
    {
      layer2 = [view2 layer];
      [layer2 setFlipsHorizontalAxis:0];
    }
  }
}

- (void)_prepareBottomPaletteForTransitionToContext:(id)context toViewController:(id)controller
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  controllerCopy = controller;
  filterPresentationStyle = [contextCopy filterPresentationStyle];
  if (self == controllerCopy || filterPresentationStyle != 2)
  {
    filterPresentationStyle2 = [contextCopy filterPresentationStyle];
    if (self == controllerCopy && filterPresentationStyle2 == 3)
    {
      collectionView = [(HUDashboardViewController *)controllerCopy collectionView];
      [collectionView contentOffset];
      v13 = v12;

      if (v13 > 0.0)
      {
        [(HUDashboardViewController *)self _addFilterBarToDashboardView];
      }
    }
  }

  else
  {
    context = [(HUDashboardViewController *)self context];
    if ([context filterPresentationStyle] == 3)
    {
    }

    else
    {
      context2 = [(HUDashboardViewController *)self context];
      filterPresentationStyle3 = [context2 filterPresentationStyle];

      if (filterPresentationStyle3)
      {
        goto LABEL_13;
      }
    }

    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_INFO, "[%p] Preparing to move filter bar to palette", &v18, 0xCu);
    }

    navigationItem = [(HUDashboardViewController *)self navigationItem];
    [(HUDashboardViewController *)self _addFilterBarToBottomPaletteForNavigationItem:navigationItem];
  }

LABEL_13:
}

- (void)_sendFilterBarViewToBackIfNeeded
{
  context = [(HUDashboardViewController *)self context];
  filterPresentationStyle = [context filterPresentationStyle];

  if (filterPresentationStyle == 3)
  {
    collectionView = [(HUDashboardViewController *)self collectionView];
    _filterBarController = [(HUDashboardViewController *)self _filterBarController];
    view = [_filterBarController view];
    [collectionView sendSubviewToBack:view];
  }
}

@end
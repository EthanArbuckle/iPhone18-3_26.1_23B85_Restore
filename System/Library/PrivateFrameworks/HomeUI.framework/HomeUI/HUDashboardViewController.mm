@interface HUDashboardViewController
+ (void)prefetchState;
- (BOOL)_canSkipStatusDetailsForItem:(id)a3;
- (BOOL)_hasDetailViewControllerForItem:(id)a3;
- (BOOL)_hasTapActionForItem:(id)a3;
- (BOOL)_isShowingRestrictedGuestBlockedBackdropView;
- (BOOL)_isShowingRoarUpgradeView;
- (BOOL)_shouldHideTabBar;
- (BOOL)_shouldSetupFilterBarForPocketableFilterPresentationStyle;
- (BOOL)_shouldShowAccessoryControlsForHomeKitObject:(id)a3 fromStatusItem:(id)a4;
- (BOOL)_statusItemRepresentsOnlyResidentIPads:(id)a3;
- (BOOL)allowsCondensedAccessoryTiles;
- (BOOL)automaticallyUpdatesViewControllerTitle;
- (BOOL)canReorderItemAtIndexPath:(id)a3;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)hasDetailsActionForPresentationCoordinator:(id)a3 item:(id)a4;
- (BOOL)presentationCoordinator:(id)a3 shouldAllowTapticFeedbackForItem:(id)a4;
- (BOOL)presentationCoordinator:(id)a3 shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)a4 view:(id)a5;
- (BOOL)presentationCoordinator:(id)a3 shouldBeginLongPressPresentationWithContext:(id)a4;
- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4;
- (BOOL)shouldHideNavigationBarButton:(id)a3;
- (BOOL)shouldIncludeRoomsInHomeMenu;
- (BOOL)shouldShowAccessoryControlForHomeKitObject:(id)a3;
- (BOOL)shouldShowAnnounceButton;
- (BOOL)shouldShowHeaderForSection:(id)a3;
- (BOOL)supportsEditing;
- (CGSize)previousCollectionViewSize;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUCameraController)ppt_cameraController;
- (HUDashboardContext)context;
- (HUDashboardViewController)init;
- (HUDashboardViewController)initWithContext:(id)a3 asOverlay:(BOOL)a4 delegate:(id)a5;
- (HUDashboardViewControllerDelegate)delegate;
- (NSString)editActionTitle;
- (NSString)editActionTitleLocalizationKey;
- (UIViewController)tipPopoverController;
- (id)_allNavigationBarButtons;
- (id)_dashboardNavigator;
- (id)_dismissPresentedViewControllersAnimated:(BOOL)a3;
- (id)_filterBarController;
- (id)_itemForHomeKitObject:(id)a3;
- (id)_performTapActionForItem:(id)a3 tappedArea:(id)a4;
- (id)_presentAccessoryControlsForHomeKitObject:(id)a3 fromStatusItem:(id)a4 animated:(BOOL)a5;
- (id)_presentAccessorySettingsForHomeKitObject:(id)a3 fromStatusItem:(id)a4 animated:(BOOL)a5;
- (id)_presentQuickControlsForHomeKitItem:(id)a3 animated:(BOOL)a4;
- (id)_presentRoomEditorForRoom:(id)a3;
- (id)_quickControlDetailViewControllerForItem:(id)a3;
- (id)_titleForSectionIdentifier:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)childViewControllersToPreload;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)compositionalLayoutConfigurationForTraitCollection:(id)a3;
- (id)contextTypeDescriptionForAnalytics;
- (id)createDashboardTipModuleControllerWithModule:(id)a3;
- (id)createEnergyDashboardModuleControllerWith:(id)a3;
- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4;
- (id)displayedItemsInSection:(id)a3;
- (id)editActionDelegate;
- (id)homeForNavigationBarButton:(id)a3;
- (id)homeKitObjectWithID:(id)a3;
- (id)hu_performanceTestReadyFuture;
- (id)hu_preloadContent;
- (id)interactionControllerForPresentation:(id)a3;
- (id)itemManager:(id)a3 futureToUpdateItems:(id)a4 itemUpdateOptions:(id)a5;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)matchingItemForHomeKitObject:(id)a3;
- (id)navigationBarButtonIdentifierOrderForEdge:(unint64_t)a3;
- (id)presentCameraProfile:(id)a3 forCameraClip:(id)a4 animated:(BOOL)a5;
- (id)presentCameraProfile:(id)a3 startDate:(id)a4 endDate:(id)a5 animated:(BOOL)a6;
- (id)presentDetailsForItem:(id)a3 animated:(BOOL)a4 secondaryDestination:(unint64_t)a5;
- (id)presentFeedbackFlowForCameraClip:(id)a3 fromProfile:(id)a4;
- (id)presentHomeKitObject:(id)a3 destination:(unint64_t)a4 animated:(BOOL)a5;
- (id)presentItem:(id)a3 animated:(BOOL)a4;
- (id)presentItemWithUUID:(id)a3 destination:(unint64_t)a4 secondaryDestination:(unint64_t)a5 animated:(BOOL)a6;
- (id)presentROARUpgradeView:(id)a3;
- (id)presentRoomSettingsForRoom:(id)a3;
- (id)presentStatusDetailsForStatusItemClass:(Class)a3 animated:(BOOL)a4;
- (id)presentationCoordinator:(id)a3 contextForPresentationAtPoint:(CGPoint)a4;
- (id)quickControlPresentationContextForItem:(id)a3 atIndexPath:(id)a4 point:(CGPoint)a5;
- (id)reorderableItemListForSection:(int64_t)a3;
- (id)roomForNavigationBarButton:(id)a3;
- (id)statusItemsForNavigationBarButton:(id)a3 inHome:(id)a4;
- (id)tappableAreaForPoint:(CGPoint)a3 inItem:(id)a4 atIndexPath:(id)a5;
- (id)transform:(id)a3;
- (unint64_t)navigationBarEdgeForButton:(id)a3;
- (void)_addFilterBarToBottomPaletteForNavigationItem:(id)a3;
- (void)_addFilterBarToDashboardView;
- (void)_adjustTopPocketInsetsForBottomPaletteWithHeight:(double)a3;
- (void)_clearEnergyIndicator;
- (void)_handleBackgroundTap:(id)a3;
- (void)_prepareBottomPaletteForTransitionToContext:(id)a3 toViewController:(id)a4;
- (void)_presentDetailsViewControllerForSectionWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)_registerObservers;
- (void)_registerSectionDecorationViews;
- (void)_requestLocationAuth;
- (void)_sendContextMenuMetricsWithContext:(id)a3 title:(id)a4;
- (void)_sendFilterBarViewToBackIfNeeded;
- (void)_setNavigationButtons:(id)a3 forEdge:(unint64_t)a4;
- (void)_setUpFilterBar;
- (void)_setUpNavigationBar;
- (void)_setupBackgroundView;
- (void)_setupFilterBarForPocketableFilterPresentationStyle;
- (void)_setupTabBarAppearance;
- (void)_showNoHomeAccessViewsIfNeeded;
- (void)_toggleSizeForCell:(id)a3 withItem:(id)a4;
- (void)_updateAllHeaderViews;
- (void)_updateAnnounceNotificationSettingsIfNeeded;
- (void)_updateBarButtons;
- (void)_updateBarTintColors;
- (void)_updateBlockoutView;
- (void)_updateFilterBarFrame;
- (void)_updateFilterBarFrameIfNeeded;
- (void)_updateFilterBarViewIfNeeded;
- (void)_updateFilterBarVisibility;
- (void)_updateHeaderView:(id)a3 atIndexPath:(id)a4;
- (void)_updateHomeEnergyIndicatorVisibility;
- (void)_updateHomeEnergyTipVisibility;
- (void)_updatePaletteHeight;
- (void)_updateTabBarVisibility;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)a3 tileItem:(HFItem *)a4 completionHandler:(id)a5;
- (void)accessoryTileSizeButtonTappedFor:(id)a3 withItem:(id)a4;
- (void)applicationWentIntoBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)changeHomeEnergyTipShouldDisplayTo:(BOOL)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)configureWithAccessoryControlViewController:(id)a3;
- (void)createRestrictedGuestBlockedBackdropViewIfNeeded;
- (void)dashboardItemManager:(id)a3 didUpdateContext:(id)a4;
- (void)didReorderItemWithSortedItemsBySectionID:(id)a3;
- (void)didSelectHomeHubMigrationBanner:(id)a3;
- (void)didSelectUnreachableResidentsBanner:(id)a3;
- (void)didSelectWelcomeBanner:(id)a3;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)disableRefresh;
- (void)dismissTip;
- (void)editRoomViewControllerDidFinish:(id)a3 withNewRoom:(id)a4;
- (void)enableRefresh;
- (void)energyFeatureDidHide;
- (void)handleTraitChanges;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4;
- (void)home:(id)a3 didUpdateLocation:(id)a4;
- (void)home:(id)a3 didUpdateNameForRoom:(id)a4;
- (void)home:(id)a3 didUpdateWallpaperForRoom:(id)a4;
- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)a3;
- (void)homeDidUpdateWallpaper:(id)a3;
- (void)homeEnergyNavigationBarIndicatorTapped:(id)a3;
- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5;
- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)itemManagerDidUpdate:(id)a3;
- (void)loadThermostatControllerForItem:(HFItem *)a3 completion:(id)a4;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)presentTip;
- (void)presentationCoordinator:(id)a3 didRecognizeTapForItem:(id)a4 tappedArea:(id)a5;
- (void)presentationCoordinator:(id)a3 touchDidBeginForItem:(id)a4 tappedArea:(id)a5;
- (void)presentationCoordinator:(id)a3 touchDidEndForItem:(id)a4 tappedArea:(id)a5;
- (void)refreshTileHelper;
- (void)reloadLayoutAnimated:(BOOL)a3 fastUpdate:(BOOL)a4;
- (void)sendContextMenuMetricsWithTitleLocalizationKey:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setItemShowingSizeToggleButton:(id)a3 animated:(BOOL)a4;
- (void)setReorderableItemList:(id)a3 forSection:(int64_t)a4;
- (void)setViewIsFullyVisible:(BOOL)a3;
- (void)setupTipsObserver;
- (void)tearDownTipsObserver;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUDashboardViewController

- (void)loadThermostatControllerForItem:(HFItem *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
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
  v13[4] = &unk_20D5BEFF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20D5C5200;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_20D11C1C8(0, 0, v9, &unk_20D5BCD00, v14);
}

- (id)createDashboardTipModuleControllerWithModule:(id)a3
{
  v4 = objc_allocWithZone(type metadata accessor for DashboardTipModuleController());
  v5 = a3;
  v6 = [v4 initWithModule_];
  v7 = [v6 asGeneric];

  return v7;
}

- (void)energyFeatureDidHide
{
  v2 = self;
  sub_20CF61BC0();
}

- (id)createEnergyDashboardModuleControllerWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(HUDashboardViewController *)v5 layoutManager];
  v7 = type metadata accessor for EnergyDashboardItemModuleController();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR___HUEnergyDashboardItemModuleController_hasSentHomeEnergyAnalytics] = 0;
  *&v8[OBJC_IVAR___HUEnergyDashboardItemModuleController_layoutManager] = v6;
  swift_unknownObjectWeakAssign();
  v12.receiver = v8;
  v12.super_class = v7;
  v9 = [(HUDashboardViewController *)&v12 initWithModule:v4];
  v10 = [(HUDashboardViewController *)v9 asGeneric];

  return v10;
}

- (void)setupTipsObserver
{
  v2 = self;
  HUDashboardViewController.setupTipsObserver()();
}

- (void)tearDownTipsObserver
{
  v2 = self;
  HUDashboardViewController.tearDownTipsObserver()();
}

- (void)changeHomeEnergyTipShouldDisplayTo:(BOOL)a3
{
  v3 = a3;
  if (qword_2811208D0 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D708);
  __swift_project_value_buffer(v4, qword_281120C80);
  swift_beginAccess();
  sub_20D5665C8();
  swift_endAccess();
  if (v5 != v3)
  {
    swift_beginAccess();
    sub_20D5665D8();
    swift_endAccess();
  }
}

- (void)presentTip
{
  v2 = self;
  sub_20CF63720();
}

- (void)dismissTip
{
  v2 = self;
  HUDashboardViewController.dismissTip()();
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = [(HUDashboardViewController *)v9 tipPopoverController];
  if (v5)
  {

    v6 = [(HUDashboardViewController *)v9 tipPopoverController];
    if (v6)
    {
      v7 = v6;
      sub_20CECF940(0, &qword_28111FB10);
      v8 = sub_20D5683F8();

      if (v8)
      {
        [(HUDashboardViewController *)v9 setTipPopoverController:0];
      }
    }
  }
}

- (id)homeKitObjectWithID:(id)a3
{
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D5637E8();
  v8 = self;
  v9 = HUDashboardViewController.homeKitObject(with:)();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (BOOL)shouldShowAccessoryControlForHomeKitObject:(id)a3
{
  if (!a3)
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
  v15[4] = &unk_20D5C5138;
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

- (void)configureWithAccessoryControlViewController:(id)a3
{
  v10.receiver = self;
  v10.super_class = HUDashboardViewController;
  v4 = a3;
  v5 = self;
  [(HUControllableItemCollectionViewController *)&v10 configureWithAccessoryControlViewController:v4];
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6 && v4)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 120);
    v4 = v4;
    v9(0, ObjectType, v7);
  }
}

- (void)disableRefresh
{
  v2 = self;
  HUDashboardViewController.disableRefresh()();
}

- (void)enableRefresh
{
  v2 = self;
  HUDashboardViewController.enableRefresh()();
}

- (void)refreshTileHelper
{
  v2 = self;
  HUDashboardViewController.refreshTileHelper()();
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_20D02B63C();

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = self;
  v4 = [(HUDashboardViewController *)v3 accessoryControlAnimator];
  *(&v4->super.isa + OBJC_IVAR___HUAccessoryControlAnimator_currentTransitionType) = 1;

  v5 = [(HUDashboardViewController *)v3 accessoryControlAnimator];

  return v5;
}

- (id)interactionControllerForPresentation:(id)a3
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75828]) init];
  [v3 setWantsInteractiveStart_];

  return v3;
}

- (id)compositionalLayoutConfigurationForTraitCollection:(id)a3
{
  v3 = self;

  v4 = [objc_opt_self() defaultConfiguration];
  [v4 setContentInsetsReference_];
  [v4 setInterSectionSpacing_];

  return v4;
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = HUDashboardViewController.layoutSection(forSection:layoutEnvironment:)(a3, a4);
  swift_unknownObjectRelease();

  return v8;
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
  v4 = sub_20D567838();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = HUDashboardViewController.shouldShowHeader(forSection:)(v8);

  return v4 & 1;
}

- (id)transform:(id)a3
{
  v3 = a3;
  [v3 setSectionLeadingMargin_];
  [v3 setSectionTrailingMargin_];

  return v3;
}

- (BOOL)allowsCondensedAccessoryTiles
{
  v2 = self;
  v3 = HUDashboardViewController.allowsCondensedAccessoryTiles()();

  return v3;
}

- (BOOL)canReorderItemAtIndexPath:(id)a3
{
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v8 = self;
  v9 = HUDashboardViewController.canReorderItem(at:)();

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
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

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v6 = self;
  [(HUDashboardViewController *)v6 setItemShowingSizeToggleButton:0 animated:1];
  v4 = [(HUItemCollectionViewController *)v6 itemManager];
  v5 = sub_20D5677F8();
  [(HFItemManager *)v4 disableExternalUpdatesWithReason:v5];
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v6 = self;
  v4 = [(HUItemCollectionViewController *)v6 itemManager];
  v5 = sub_20D5677F8();
  [(HFItemManager *)v4 endDisableExternalUpdatesWithReason:v5];
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  swift_unknownObjectRetain();
  if ([a4 localDragSession])
  {
    swift_unknownObjectRelease();
    v5 = 1;
  }

  else
  {
    sub_20CECF940(0, &unk_28111FB50);
    v5 = [a4 canLoadObjectsOfClass_];
  }

  swift_unknownObjectRelease();
  return v5;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a5)
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

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  v16 = HUDashboardViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(v14, a4, v11);

  swift_unknownObjectRelease();
  sub_20CEF928C(v11, &qword_27C81D5C0);

  return v16;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v26 = self;
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
  v20 = a3;
  v21 = v26;
  HUDashboardViewController.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(v20, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23 = sub_20D563868();
  v22(v19, v7);

  return v23;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  HUDashboardViewController.collectionView(_:performDropWith:)(v6, a4);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  swift_unknownObjectRetain();
  v10 = self;
  v6 = [(HUDashboardViewController *)v10 layoutManager];
  v7 = v6 + OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition;
  v8 = *(&v6->super.super.isa + OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;

  v9 = [(HUDashboardViewController *)v10 layoutManager];
  *(&v9->super.super.isa + OBJC_IVAR___HUDashboardLayoutManager_adaptiveTileDragInteractionLayouts) = 0;

  sub_20D0EA1AC(a4);
  swift_unknownObjectRelease();
}

- (id)contextTypeDescriptionForAnalytics
{
  v2 = self;
  v3 = [(HUDashboardViewController *)v2 context];
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
  v4 = [(HUDashboardViewController *)self hu_preloadContent];
  v11[0] = v4;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 firstFullUpdateFuture];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v3 combineAllFutures:v7];
  v9 = [v8 flatMap:&__block_literal_global_127];

  return v9;
}

+ (void)prefetchState
{
  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  v2 = [v4 homeFuture];
  v3 = [v2 addSuccessBlock:&__block_literal_global_241];
}

void __42__HUDashboardViewController_prefetchState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HUDashboardLaunchCoordinator shared];
  [v3 prefetchStateForHome:v2];
}

- (HUDashboardViewController)initWithContext:(id)a3 asOverlay:(BOOL)a4 delegate:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [[HUDashboardItemManager alloc] initWithContext:v8 delegate:0];
  v27.receiver = self;
  v27.super_class = HUDashboardViewController;
  v11 = [(HUControllableItemCollectionViewController *)&v27 initUsingCompositionalLayoutWithItemManager:v10];
  if (v11)
  {
    v12 = [[HUDashboardLayoutManager alloc] initWithDelegate:v11];
    layoutManager = v11->_layoutManager;
    v11->_layoutManager = v12;

    v11->_isOverlay = a4;
    objc_storeWeak(&v11->_delegate, v9);
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
      [v23 setCurrentContext:v8];
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
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4 = [v3 home];
  v5 = [HUDashboardContext homeDashboardForHome:v4];

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

  v4 = [(HUDashboardViewController *)self collectionView];
  v5 = objc_opt_class();
  v6 = *MEMORY[0x277D767D8];
  v7 = +[HUGridSectionHeaderView reuseIdentifier];
  [v4 registerClass:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];

  v8 = [(HUDashboardViewController *)self collectionView];
  [v8 setPreservesSuperviewLayoutMargins:1];

  v9 = [(HUDashboardViewController *)self navigationItem];
  [v9 setLargeTitleDisplayMode:1];

  [(HUDashboardViewController *)self _setUpNavigationBar];
  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    [(HUDashboardViewController *)self _setUpTabBar];
  }

  [(HUDashboardViewController *)self _setupBackgroundView];
  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
  v10 = [(HUDashboardViewController *)self collectionView];
  [v10 contentInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(HUDashboardViewController *)self collectionView];
  [v19 setContentInset:{v12 + 10.0, v14, v16 + 150.0, v18}];

  v20 = [(HUDashboardViewController *)self collectionView];
  [v20 setIndicatorStyle:1];

  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  [v21 addObserver:self selector:sel_migrationUpdatedTileSize_ name:*MEMORY[0x277D13D28] object:0];

  v22 = [MEMORY[0x277CCAB98] defaultCenter];
  [v22 addObserver:self selector:sel_bannerSizeUpdated_ name:@"HUBannerSizeHasUpdatedNotification" object:0];

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 addObserver:self selector:sel_applicationWentIntoBackground_ name:*MEMORY[0x277D76660] object:0];

  v24 = [MEMORY[0x277CCAB98] defaultCenter];
  [v24 addObserver:self selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v11 viewDidAppear:a3];
  [(HUDashboardViewController *)self setViewIsFullyVisible:1];
  v4 = [(HUDashboardViewController *)self context];
  v5 = [v4 accessoryTypeGroup];
  v6 = [MEMORY[0x277D14378] energyAccessoryTypeGroup];

  if (v5 == v6)
  {
    v7 = [(HUDashboardViewController *)self energyCategoryViewStartTime];

    if (v7)
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [(HUDashboardViewController *)self energyCategoryViewStartTime];
        *buf = 138412290;
        v13 = v10;
        _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Expected energyCategoryViewStartTime to be nil when displaying the view but found value: %@", buf, 0xCu);
      }
    }

    v9 = [MEMORY[0x277CBEAA8] date];
    [(HUDashboardViewController *)self setEnergyCategoryViewStartTime:v9];
  }

  [(HUDashboardViewController *)self _updateFilterBarViewIfNeeded];
  [(HUDashboardViewController *)self _sendFilterBarViewToBackIfNeeded];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:viewWillAppear]", &buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v21 viewWillAppear:v3];
  [(HUDashboardViewController *)self _requestLocationAuth];
  [(HUDashboardViewController *)self _setUpFilterBar];
  [(HUDashboardViewController *)self _updateFilterBarVisibility];
  [(HUDashboardViewController *)self _updateTabBarVisibility];
  [(HUDashboardViewController *)self _updateBarTintColors];
  [(HUDashboardViewController *)self setupTipsObserver];
  [(HUDashboardViewController *)self _updateAnnounceNotificationSettingsIfNeeded];
  v6 = [(HUDashboardViewController *)self cameraItemModuleController];
  v7 = [(HUDashboardViewController *)self collectionView];
  v8 = [v7 visibleCells];
  [v6 enableCameraSnapshotsForCells:v8];

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

  v13 = [(HUDashboardViewController *)self context];
  v14 = [v13 home];
  LODWORD(v10) = [v14 hf_shouldBlockCurrentRestrictedGuestFromHome];

  if (v10)
  {
    [(HUDashboardViewController *)self createRestrictedGuestBlockedBackdropViewIfNeeded];
    v15 = [(HUDashboardViewController *)self view];
    v16 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    v17 = [(HUDashboardViewController *)self wallpaperView];
    [v15 insertSubview:v16 above:v17];
  }

  else
  {
    v15 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [v15 removeFromSuperview];
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

- (void)viewIsAppearing:(BOOL)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HUDashboardViewController;
  [(HUDashboardViewController *)&v10 viewIsAppearing:a3];
  v11[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [(HUDashboardViewController *)self registerForTraitChanges:v4 withAction:sel_handleTraitChanges];
  v6 = [(HUDashboardViewController *)self context];
  v7 = [v6 filterPresentationStyle];

  if (v7 == 1)
  {
    v8 = [(HUDashboardViewController *)self navigationItem];
    v9 = [v8 _bottomPalette];
    [v9 setMinimumHeight:0.0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:viewWillDisappear]", buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = HUDashboardViewController;
  [(HUItemCollectionViewController *)&v21 viewWillDisappear:v3];
  v6 = [(HUDashboardViewController *)self context];
  v7 = [v6 accessoryTypeGroup];
  v8 = [MEMORY[0x277D14378] energyAccessoryTypeGroup];
  v9 = v8;
  if (v7 != v8)
  {

LABEL_5:
    goto LABEL_6;
  }

  v13 = [(HUDashboardViewController *)self energyCategoryViewStartTime];

  if (v13)
  {
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [(HUDashboardViewController *)self energyCategoryViewStartTime];
    [v14 timeIntervalSinceDate:v15];
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
      v6 = [MEMORY[0x277D146E8] sharedDispatcher];
      v7 = [v6 allHomesFuture];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __47__HUDashboardViewController_viewWillDisappear___block_invoke;
      v20[3] = &__block_descriptor_40_e29_v24__0__NSArray_8__NSError_16l;
      *&v20[4] = v17;
      v19 = [v7 addCompletionBlock:v20];
      goto LABEL_5;
    }
  }

LABEL_6:
  [(HUDashboardViewController *)self setViewIsFullyVisible:0];
  v10 = [(HUDashboardViewController *)self cameraItemModuleController];
  v11 = [(HUDashboardViewController *)self collectionView];
  v12 = [v11 visibleCells];
  [v10 disableCameraSnapshotsForCells:v12];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v4 viewDidDisappear:a3];
  [(HUDashboardViewController *)self tearDownTipsObserver];
}

- (void)viewLayoutMarginsDidChange
{
  v14.receiver = self;
  v14.super_class = HUDashboardViewController;
  [(HUDashboardViewController *)&v14 viewLayoutMarginsDidChange];
  v3 = [(HUDashboardViewController *)self view];
  [v3 layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HUDashboardViewController *)self _filterBarController];
  v13 = [v12 collectionView];
  [v13 setLayoutMargins:{v5, v7, v9, v11}];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HUDashboardViewController;
  [(HUDashboardViewController *)&v17 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];

  if (v8)
  {
    v9 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [v9 removeFromSuperview];

    [(HUDashboardViewController *)self setRestrictedGuestBlockedBackdropView:0];
    v10 = [(HUDashboardViewController *)self context];
    v11 = [v10 home];
    v12 = [v11 hf_shouldBlockCurrentRestrictedGuestFromHome];

    if (v12)
    {
      [(HUDashboardViewController *)self createRestrictedGuestBlockedBackdropViewIfNeeded];
      v13 = [(HUDashboardViewController *)self view];
      v14 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
      v15 = [(HUDashboardViewController *)self wallpaperView];
      [v13 insertSubview:v14 above:v15];
    }
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__HUDashboardViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v16[3] = &unk_277DB79B8;
  v16[4] = self;
  [v7 animateAlongsideTransition:v16 completion:0];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = HUDashboardViewController;
  [(HUItemCollectionViewController *)&v10 viewDidLayoutSubviews];
  v3 = [(HUDashboardViewController *)self collectionView];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || -[HUDashboardViewController viewIsFullyVisible](self, "viewIsFullyVisible") && (-[HUDashboardViewController filterBarNeedsUpdate](self, "filterBarNeedsUpdate") || (-[HUDashboardViewController previousCollectionViewSize](self, "previousCollectionViewSize"), v9 != v5) || v8 != v7))
  {
    [(HUDashboardViewController *)self _updateFilterBarFrameIfNeeded];
  }

  [(HUDashboardViewController *)self setPreviousCollectionViewSize:v5, v7];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:traitCollectionDidChange]", v7, 2u);
  }

  if ([(HUDashboardViewController *)self viewIsFullyVisible])
  {
    v5 = [(HUDashboardViewController *)self energyAccessoryView];
    [v5 updateEnergyIndicatorViewSizeThatFits];

    v6 = [(HUDashboardViewController *)self energyAccessoryView];
    [v6 sizeToFit];
  }

  [(HUDashboardViewController *)self _showNoHomeAccessViewsIfNeeded];
}

- (HUDashboardContext)context
{
  v2 = [(HUItemCollectionViewController *)self itemManager];
  v3 = [v2 context];

  return v3;
}

- (void)setItemShowingSizeToggleButton:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
  {
    v8 = [(HUDashboardViewController *)self itemShowingSizeToggleButton];
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (v8)
      {
        v11 = [v8 isEqual:v9];

        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v8 = [MEMORY[0x277CBEB18] array];
      v12 = [(HUDashboardViewController *)self itemShowingSizeToggleButton];
      [v8 na_safeAddObject:v12];

      [v8 na_safeAddObject:v10];
      objc_storeStrong(&self->_itemShowingSizeToggleButton, a3);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __69__HUDashboardViewController_setItemShowingSizeToggleButton_animated___block_invoke;
      v13[3] = &unk_277DC29C8;
      v13[4] = self;
      v14 = a4;
      [v8 na_each:v13];
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

- (void)reloadLayoutAnimated:(BOOL)a3 fastUpdate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HUDashboardViewController_reloadLayoutAnimated_fastUpdate___block_invoke;
  aBlock[3] = &unk_277DB8488;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (v5)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.3];
  }

  else
  {
    (*(v7 + 2))(v7);
  }

  v9 = [(HUItemCollectionViewController *)self itemManager];
  v10 = [v9 allDisplayedItems];
  v11 = [v10 allObjects];

  v12 = [(HUItemCollectionViewController *)self itemManager];
  v13 = v12;
  if (v4)
  {
    [v12 reconfigureUIRepresentationForItems:v11 withAnimation:v5];
  }

  else
  {
    [v12 reloadUIRepresentationForItems:v11 withAnimation:v5];
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
  v2 = [(HUDashboardViewController *)self cameraItemModuleController];
  v3 = [v2 cameraController];

  return v3;
}

- (void)_showNoHomeAccessViewsIfNeeded
{
  objc_opt_class();
  v3 = [(HUDashboardViewController *)self navigationController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v15 = v4;

  v5 = [(HUDashboardViewController *)self context];
  if ([v5 canShowNoHomeAccessView])
  {
    v6 = [v15 viewControllers];
    v7 = [v6 count];

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

  v8 = [(HUDashboardViewController *)self context];
  v9 = [v8 home];
  v10 = [v9 hf_shouldBlockCurrentUserFromHome];

  if (v10)
  {
    v11 = [(HUDashboardViewController *)self _dashboardNavigator];
    v12 = [(HUDashboardViewController *)self context];
    v13 = [v12 home];
    v14 = [v11 showHome:v13];
  }

LABEL_10:
}

- (void)_updateBlockoutView
{
  v78[4] = *MEMORY[0x277D85DE8];
  v4 = [(HUDashboardViewController *)self context];
  v5 = [v4 home];

  v6 = [(HUDashboardViewController *)self context];
  v7 = [v6 home];
  v8 = [v7 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade];

  if (v8)
  {
    v9 = [v5 hf_blockCurrentUserFromHomeReason];
    v10 = [(HUDashboardViewController *)self roarUpgradeView];

    if (!v10)
    {
      v11 = [[HUROARUpgradeView alloc] initWithUpgradeViewReason:v9 home:v5];
      [(HUDashboardViewController *)self setRoarUpgradeView:v11];

      v12 = [(HUDashboardViewController *)self roarUpgradeView];
      [v12 setDelegate:self];

      v13 = [(HUDashboardViewController *)self roarUpgradeView];
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

      v77 = [(HUDashboardViewController *)self roarUpgradeView];
      v75 = [v77 leadingAnchor];
      v76 = [(HUDashboardViewController *)self view];
      v74 = [v76 layoutMarginsGuide];
      v73 = [v74 leadingAnchor];
      v72 = [v75 constraintEqualToAnchor:v73];
      v78[0] = v72;
      v71 = [(HUDashboardViewController *)self roarUpgradeView];
      v69 = [v71 trailingAnchor];
      v70 = [(HUDashboardViewController *)self view];
      v68 = [v70 layoutMarginsGuide];
      v67 = [v68 trailingAnchor];
      v66 = [v69 constraintEqualToAnchor:v67];
      v78[1] = v66;
      v65 = [(HUDashboardViewController *)self roarUpgradeView];
      v62 = [v65 topAnchor];
      v63 = [(HUDashboardViewController *)self view];
      v61 = [v63 layoutMarginsGuide];
      v14 = [v61 topAnchor];
      v15 = [v62 constraintEqualToAnchor:v14];
      v78[2] = v15;
      v16 = [(HUDashboardViewController *)self roarUpgradeView];
      v17 = [v16 bottomAnchor];
      [(HUDashboardViewController *)self view];
      v19 = v18 = v5;
      v20 = [v19 layoutMarginsGuide];
      v21 = [v20 bottomAnchor];
      v22 = [v17 constraintEqualToAnchor:v21];
      v78[3] = v22;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];

      v5 = v18;
      [(HUDashboardViewController *)self setUpgradeViewConstraints:v64];
    }

    v23 = [(HUDashboardViewController *)self roarBackdropView];

    if (!v23)
    {
      v24 = objc_alloc(MEMORY[0x277D75D68]);
      v25 = [MEMORY[0x277D75210] effectWithStyle:18];
      v26 = [v24 initWithEffect:v25];
      [(HUDashboardViewController *)self setRoarBackdropView:v26];

      v27 = [(HUDashboardViewController *)self view];
      [v27 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = [(HUDashboardViewController *)self roarBackdropView];
      [v36 setFrame:{v29, v31, v33, v35}];

      v37 = [(HUDashboardViewController *)self roarBackdropView];
      [v37 setTranslatesAutoresizingMaskIntoConstraints:1];

      v38 = [(HUDashboardViewController *)self roarBackdropView];
      [v38 setAutoresizingMask:18];
    }

    v39 = [(HUDashboardViewController *)self view];
    v40 = [(HUDashboardViewController *)self roarBackdropView];
    v41 = [(HUDashboardViewController *)self wallpaperView];
    [v39 insertSubview:v40 above:v41];

    v42 = [(HUDashboardViewController *)self view];
    v43 = [(HUDashboardViewController *)self roarUpgradeView];
    [v42 addSubview:v43];

    v44 = MEMORY[0x277CCAAD0];
    v45 = [(HUDashboardViewController *)self upgradeViewConstraints];
    [v44 activateConstraints:v45];

    v46 = [(HUDashboardViewController *)self roarUpgradeView];
    [v46 updateScrollViewContentSize];
    goto LABEL_7;
  }

  if ([(HUDashboardViewController *)self _isShowingRoarUpgradeView])
  {
    v47 = MEMORY[0x277CCAAD0];
    v48 = [(HUDashboardViewController *)self upgradeViewConstraints];
    [v47 deactivateConstraints:v48];

    v49 = [(HUDashboardViewController *)self roarUpgradeView];
    [v49 removeFromSuperview];

    v50 = [(HUDashboardViewController *)self roarBackdropView];
    [v50 removeFromSuperview];

    v51 = [(HUItemCollectionViewController *)self itemManager];
    v52 = [v51 itemProviders];
    v53 = [v52 hmf_isEmpty];

    if ((v53 & 1) == 0)
    {
      v46 = [(HUItemCollectionViewController *)self itemManager];
      v54 = MEMORY[0x277D14788];
      v55 = MEMORY[0x277CBEB98];
      v56 = [(HUItemCollectionViewController *)self itemManager];
      v57 = [v56 itemProviders];
      v58 = [v55 setWithArray:v57];
      v59 = [v54 requestToReloadItemProviders:v58 senderSelector:a2];
      v60 = [v46 performItemUpdateRequest:v59];

LABEL_7:
    }
  }
}

- (BOOL)_isShowingRoarUpgradeView
{
  v3 = [(HUDashboardViewController *)self view];
  v4 = [v3 subviews];
  v5 = [(HUDashboardViewController *)self roarUpgradeView];
  if ([v4 na_safeContainsObject:v5])
  {
    v6 = [(HUDashboardViewController *)self view];
    v7 = [v6 subviews];
    v8 = [(HUDashboardViewController *)self roarBackdropView];
    v9 = [v7 na_safeContainsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isShowingRestrictedGuestBlockedBackdropView
{
  v3 = [(HUDashboardViewController *)self view];
  v4 = [v3 subviews];
  v5 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
  v6 = [v4 na_safeContainsObject:v5];

  return v6;
}

- (void)itemManagerDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUDashboardViewController;
  [(HUItemCollectionViewController *)&v4 itemManagerDidUpdate:a3];
  [(HUDashboardViewController *)self _updateBarButtons];
  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
}

- (id)itemManager:(id)a3 futureToUpdateItems:(id)a4 itemUpdateOptions:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(HUDashboardViewController *)self context];
  if (![v12 shouldDelayItemUpdatesForViewVisibility] || -[HUDashboardViewController viewIsFullyVisible](self, "viewIsFullyVisible"))
  {

LABEL_4:
    if ([-[HUDashboardViewController superclass](self "superclass")])
    {
      v21.receiver = self;
      v21.super_class = HUDashboardViewController;
      v13 = [(HUItemCollectionViewController *)&v21 itemManager:v9 futureToUpdateItems:v10 itemUpdateOptions:v11];
    }

    else
    {
      v13 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    }

    v14 = v13;
    goto LABEL_8;
  }

  v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  v17 = [v16 BOOLValue];

  if (v17)
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
      v25 = v10;
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Not visible - delayed items: %@", buf, 0xCu);
    }
  }

  v14 = [(HUDashboardViewController *)self viewFullyVisibleFuture];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__HUDashboardViewController_itemManager_futureToUpdateItems_itemUpdateOptions___block_invoke;
  v22[3] = &unk_277DB7530;
  v23 = v10;
  v20 = [v14 addCompletionBlock:v22];

LABEL_8:

  return v14;
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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUDashboardViewController;
  v8 = a4;
  [(HUControllableItemCollectionViewController *)&v11 collectionView:a3 willDisplayCell:v8 forItemAtIndexPath:a5];
  v9 = [(HUDashboardViewController *)self cameraItemModuleController:v11.receiver];
  v12[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  [v9 enableCameraSnapshotsForCells:v10];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUDashboardViewController;
  v8 = a4;
  [(HUControllableItemCollectionViewController *)&v11 collectionView:a3 didEndDisplayingCell:v8 forItemAtIndexPath:a5];
  v9 = [(HUDashboardViewController *)self cameraItemModuleController:v11.receiver];
  v12[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  [v9 disableCameraSnapshotsForCells:v10];
}

- (BOOL)automaticallyUpdatesViewControllerTitle
{
  v3 = [(HUItemCollectionViewController *)self itemManager];
  v4 = [v3 context];
  v5 = [v4 overrideDashboardTitle];

  if (v5)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = HUDashboardViewController;
  return [(HUItemCollectionViewController *)&v7 automaticallyUpdatesViewControllerTitle];
}

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v11.receiver = self;
  v11.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v11 diffableDataItemManager:a3 didUpdateItems:a4 addItems:a5 removeItems:a6];
  v7 = [(HUItemCollectionViewController *)self itemManager];
  v8 = [v7 context];
  v9 = [v8 overrideDashboardTitle];

  if (v9)
  {
    v10 = [(HUDashboardViewController *)self navigationItem];
    [v10 setTitle:v9];
  }
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v8 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v7, "section")}];

  v10 = [(HUItemCollectionViewController *)self itemManager];
  v11 = [v7 section];

  v12 = [v10 displayedSectionIdentifierForSectionIndex:v11];

  if ([v12 isEqualToString:@"NowPlayingSection"] && (objc_msgSend(MEMORY[0x277D14CE8], "isAMac") & 1) == 0 && _os_feature_enabled_impl() || objc_msgSend(v12, "isEqualToString:", @"favoritesSection") || objc_msgSend(v6, "conformsToProtocol:", &unk_28251AC90))
  {
    v13 = objc_opt_class();
    goto LABEL_7;
  }

  v15 = [v6 latestResults];
  v16 = *MEMORY[0x277D13D48];
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13D48]];

  if (!v17)
  {
LABEL_15:
    objc_opt_class();
    v19 = [(HUItemCollectionViewController *)self itemManager];
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    objc_opt_class();
    v22 = v6;
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

    v25 = [v21 alwaysAllowedScheduleItem];
    if (([v22 isEqual:v25] & 1) == 0)
    {
      v26 = [v21 pinCodeAccessItem];
      if (![v22 isEqual:v26])
      {
        v27 = [v21 homeKeyItem];
        [v22 isEqual:v27];

        goto LABEL_27;
      }
    }

LABEL_27:
    v13 = objc_opt_class();

    goto LABEL_7;
  }

  v18 = [v6 latestResults];
  v13 = [v18 objectForKeyedSubscript:v16];

  if (!object_isClass(v13) || !v13 || ([v13 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {

    goto LABEL_15;
  }

LABEL_7:

  return v13;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v8 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v7, "section")}];

  if ([v9 isEqualToString:@"filterBarSection"])
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v7];

    [v12 setUserInteractionEnabled:0];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HUDashboardViewController;
    v12 = [(HUItemCollectionViewController *)&v14 collectionView:v6 cellForItemAtIndexPath:v7];
  }

  return v12;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v104.receiver = self;
  v104.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v104 configureCell:v6 forItem:v7];
  objc_opt_class();
  v8 = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  v11 = v6;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v7 latestResults];
  v15 = *MEMORY[0x277D14000];
  v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277D14000]];

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

    v21 = [MEMORY[0x277CCA890] currentHandler];
    [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    v23 = v22 = v10;
    [v21 handleFailureInFunction:v23 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];

    v10 = v22;
  }

  v20 = 0;
LABEL_16:

  v24 = [v20 viewController];

  if (!v24)
  {
    objc_opt_class();
    v25 = [v7 latestResults];
    v26 = [v25 objectForKeyedSubscript:v15];
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
    v30 = [v29 view];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

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
    v35 = [(HUDashboardViewController *)self blurGroupingEffectView];

    if (!v35)
    {
      NSLog(&cfstr_BlurGroupingSh.isa);
    }

    v36 = [(HUDashboardViewController *)self blurGroupingEffectView];
    [v34 setBackgroundEffectGrouper:v36];
  }

  if ([v7 conformsToProtocol:&unk_28251AC90])
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
    [v39 setToggleable:{-[HUControllableItemCollectionViewController itemSupportsToggleInteraction:](self, "itemSupportsToggleInteraction:", v7)}];
    v40 = [(HUDashboardViewController *)self layoutManager];
    v41 = [v40 gridSizeForItem:v7];
    [v39 setGridSize:{v41, v42}];

    v43 = [(HUItemCollectionViewController *)self itemManager];
    v44 = [(HUItemCollectionViewController *)self itemManager];
    v45 = [v44 indexPathForItem:v7];
    v46 = [v43 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v45, "section")}];

    if ([v46 isEqualToString:@"favoritesSection"])
    {
      [v39 setShowPrefixLabel:1];
      v47 = [(HUDashboardViewController *)self layoutManager];
      v48 = [v47 favoritesSectionGridSize];
      [v39 setGridSize:{v48, v49}];
    }

    v103 = v39;
    v50 = [(HUDashboardViewController *)self layoutManager];
    v51 = [v50 gridSizeForItem:v7];
    v53 = v52;

    if ([v46 isEqualToString:@"AllAccessoriesSection"])
    {
      v54 = [(HUDashboardViewController *)self context];
      [v54 home];
      v55 = v7;
      v56 = v32;
      v57 = v46;
      v59 = v58 = v13;
      v60 = [v59 hf_currentUserIsRestrictedGuest];

      v13 = v58;
      v46 = v57;
      v32 = v56;
      v7 = v55;

      if (v60)
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

    v61 = [(HUDashboardViewController *)self itemShowingSizeToggleButton];

    if (v61 == v7)
    {
      v62 = 1.0;
    }

    else
    {
      v62 = 0.0;
    }

    v63 = v103;
    [v103 setShowsSizeChangeButton:v61 == v7 animated:0];
    v64 = [v103 layer];
    [v64 setZPosition:v62];
    v10 = v101;
    goto LABEL_45;
  }

  objc_opt_class();
  v63 = v7;
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
    v46 = [v10 alwaysAllowedScheduleItem];
    if ([v63 isEqual:v46])
    {
      v63 = 0;
      goto LABEL_54;
    }

    v64 = [v10 pinCodeAccessItem];
    if ([v63 isEqual:v64])
    {
      v63 = 0;
      goto LABEL_46;
    }

    v67 = v13;
    v68 = [v10 homeKeyItem];
    v69 = [v63 isEqual:v68];

    if (v69)
    {
      v63 = 0;
      v13 = v67;
      goto LABEL_55;
    }

    v102 = v34;
    v70 = [v10 contactOwnerItem];
    v71 = [v63 isEqual:v70];

    if (v71)
    {
      v46 = [MEMORY[0x277D756E0] cellConfiguration];
      v72 = [v63 latestResults];
      v73 = [v72 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [v46 setText:v73];

      v74 = [MEMORY[0x277D75348] systemBlackColor];
      v75 = [v46 textProperties];
      [v75 setColor:v74];

      v76 = [v46 textProperties];
      [v76 setAlignment:1];

      v64 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0] addingSymbolicTraits:2 options:0];
      v77 = [MEMORY[0x277D74300] fontWithDescriptor:v64 size:0.0];
      v78 = [v46 textProperties];
      [v78 setFont:v77];

      [v32 setContentConfiguration:v46];
      v79 = [MEMORY[0x277D751C0] listGroupedCellConfiguration];
      [v79 setCornerRadius:24.0];
      v80 = [MEMORY[0x277D75348] systemWhiteColor];
      [v79 setBackgroundColor:v80];

      [v32 setBackgroundConfiguration:v79];
    }

    else
    {
      v81 = [v10 accessoryNoAccessItem];
      v82 = [v63 isEqual:v81];

      v46 = [MEMORY[0x277D756E0] cellConfiguration];
      v83 = [v63 latestResults];
      v84 = [v83 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [v46 setText:v84];

      if (v82)
      {
        v85 = [MEMORY[0x277D75348] systemWhiteColor];
        v86 = [v46 textProperties];
        [v86 setColor:v85];

        v87 = [v46 textProperties];
        [v87 setAlignment:1];

        v88 = *MEMORY[0x277D769C0];
        v64 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0] addingSymbolicTraits:2 options:0];
        v89 = [MEMORY[0x277D74300] fontWithDescriptor:v64 size:0.0];
        v90 = [v46 textProperties];
        [v90 setFont:v89];

        v91 = [v63 latestResults];
        v92 = [v91 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
        [v46 setSecondaryText:v92];

        v93 = [MEMORY[0x277D75348] systemWhiteColor];
        v94 = [v46 secondaryTextProperties];
        [v94 setColor:v93];

        v95 = [v46 secondaryTextProperties];
        [v95 setAlignment:1];

        v96 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v88];
        v97 = [MEMORY[0x277D74300] fontWithDescriptor:v96 size:0.0];
        v98 = [v46 secondaryTextProperties];
        [v98 setFont:v97];

        [v32 setContentConfiguration:v46];
        v99 = [MEMORY[0x277D751C0] listGroupedCellConfiguration];
        [v99 setCornerRadius:24.0];
        v100 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:0.3];
        [v99 setBackgroundColor:v100];

        [v32 setBackgroundConfiguration:v99];
      }

      else
      {
        [v32 setContentConfiguration:v46];
        v64 = [MEMORY[0x277D751C0] listGroupedCellConfiguration];
        [v32 setBackgroundConfiguration:v64];
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

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HUItemCollectionViewController *)self itemManager];
  v12 = [v11 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v10, "section")}];

  if (([v9 isEqualToString:*MEMORY[0x277D767D8]] & 1) == 0)
  {
    NSLog(&cfstr_AskedForAViewF.isa, v9);
  }

  v13 = [(HUItemCollectionViewController *)self itemManager];
  v14 = [v13 titleForSection:{objc_msgSend(v10, "section")}];

  if (!v14)
  {
    NSLog(&cfstr_AskedForHeader.isa, v10);
  }

  v15 = +[HUGridSectionHeaderView reuseIdentifier];
  v27 = v8;
  v16 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v15 forIndexPath:v10];

  [v16 setOverrideUserInterfaceStyle:2];
  v17 = +[HUCollectionLayoutManager defaultProminentInsetGroupedHeader];
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v18 = [MEMORY[0x277D75348] whiteColor];
    v19 = [v17 textProperties];
    [v19 setColor:v18];
  }

  [v17 setText:v14];
  [v16 setContentConfiguration:v17];
  v20 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [v14 stringByReplacingOccurrencesOfString:@" " withString:&stru_2823E0EE8];
  v24 = [v20 stringWithFormat:@"%@.SectionHeader-%@", v22, v23];
  [v16 setAccessibilityIdentifier:v24];

  [(HUDashboardViewController *)self _updateHeaderView:v16 atIndexPath:v10];
  v25 = [(HUDashboardViewController *)self context];
  LODWORD(v24) = [v25 canPresentDetailsViewControllerForSectionWithIdentifier:v12];

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

- (id)reorderableItemListForSection:(int64_t)a3
{
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex:a3];

  v7 = [(HUDashboardViewController *)self context];
  v8 = [v7 home];
  v9 = HURoomForDashboardSectionIdentifier(v6, v8);

  v10 = HUAccessoryTypeGroupForDashboardSectionIdentifier(v6);
  v11 = [(HUItemCollectionViewController *)self itemManager];
  v12 = [v11 itemModuleForSectionIdentifier:v6];

  if (v12)
  {
    v13 = [v12 reorderableHomeKitItemList];
    goto LABEL_10;
  }

  if (v9)
  {
    v14 = [(HUItemCollectionViewController *)self itemManager];
    v15 = [v14 reorderableServiceListForRoom:v9];
LABEL_9:
    v13 = v15;

    goto LABEL_10;
  }

  if (v10)
  {
    v14 = [(HUItemCollectionViewController *)self itemManager];
    v15 = [v14 reorderableServiceListForType:v10];
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"favoritesSection"])
  {
    v14 = [(HUItemCollectionViewController *)self itemManager];
    v15 = [v14 reorderableFavoritesList];
    goto LABEL_9;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (void)setReorderableItemList:(id)a3 forSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUItemCollectionViewController *)self itemManager];
  v8 = [v7 displayedSectionIdentifierForSectionIndex:a4];

  v9 = [(HUDashboardViewController *)self context];
  v10 = [v9 home];
  v11 = HURoomForDashboardSectionIdentifier(v8, v10);

  v12 = HUAccessoryTypeGroupForDashboardSectionIdentifier(v8);
  v13 = [(HUItemCollectionViewController *)self itemManager];
  v14 = [v13 itemModuleForSectionIdentifier:v8];

  objc_opt_class();
  v18 = v6;
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
    v17 = [(HUItemCollectionViewController *)self itemManager];
    [v17 setReorderableServiceList:v16 forRoom:v11];
  }

  else if (v12)
  {
    v17 = [(HUItemCollectionViewController *)self itemManager];
    [v17 setReorderableServiceList:v16 forType:v12];
  }

  else
  {
    if (![v8 isEqualToString:@"favoritesSection"])
    {
      goto LABEL_13;
    }

    v17 = [(HUItemCollectionViewController *)self itemManager];
    [v17 setReorderableFavoritesList:v16];
  }

LABEL_13:
}

- (void)didReorderItemWithSortedItemsBySectionID:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUDashboardViewController;
  [(HUControllableItemCollectionViewController *)&v6 didReorderItemWithSortedItemsBySectionID:a3];
  v4 = [(HUDashboardViewController *)self collectionView];
  v5 = [v4 collectionViewLayout];
  [v5 invalidateLayout];
}

- (BOOL)_hasTapActionForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (-[HUDashboardViewController bannerItemModuleController](self, "bannerItemModuleController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasTapActionForItem:v4], v5, (v6))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HUDashboardViewController;
    v7 = [(HUControllableItemCollectionViewController *)&v9 _hasTapActionForItem:v4];
  }

  return v7;
}

- (id)_performTapActionForItem:(id)a3 tappedArea:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [(HUDashboardViewController *)self bannerItemModuleController];
      v9 = [v8 hasTapActionForItem:v6];

      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  v10 = [(HUItemCollectionViewController *)self moduleControllerForItem:v6];
  v11 = v10;
  if (v10)
  {
    [v10 didSelectItem:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_8:
    v14.receiver = self;
    v14.super_class = HUDashboardViewController;
    v12 = [(HUControllableItemCollectionViewController *)&v14 _performTapActionForItem:v6 tappedArea:v7];
    goto LABEL_10;
  }

  v12 = [MEMORY[0x277D2C900] futureWithNoResult];

LABEL_10:

  return v12;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3)
  {
    v7 = [(HUDashboardViewController *)self itemShowingSizeToggleButton];

    if (v7)
    {
      [(HUDashboardViewController *)self setItemShowingSizeToggleButton:0];
    }
  }

  if ([(HUDashboardViewController *)self isEditing]!= v5)
  {
    v8.receiver = self;
    v8.super_class = HUDashboardViewController;
    [(HUControllableItemCollectionViewController *)&v8 setEditing:v5 animated:v4];
    [(HUDashboardViewController *)self _updateAllHeaderViews];
    [(HUDashboardViewController *)self _updateBarButtons];
    [(HUDashboardViewController *)self reloadLayoutAnimated:v4 fastUpdate:1];
  }
}

- (void)setViewIsFullyVisible:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_viewIsFullyVisible != a3)
  {
    self->_viewIsFullyVisible = a3;
    if (a3)
    {
      v4 = [(HUDashboardViewController *)self viewFirstTimeFullyVisibleFuture];
      v5 = [v4 isFinished];

      if ((v5 & 1) == 0)
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

      v11 = [(HUDashboardViewController *)self viewFirstTimeFullyVisibleFuture];
      [v11 finishWithNoResult];

      v12 = [(HUDashboardViewController *)self viewFullyVisibleFuture];
      [v12 finishWithNoResult];
    }

    else
    {
      v13 = [(HUDashboardViewController *)self viewFullyVisibleFuture];
      [v13 cancel];

      v14 = objc_alloc_init(MEMORY[0x277D2C900]);
      [(HUDashboardViewController *)self setViewFullyVisibleFuture:?];
    }
  }
}

- (id)tappableAreaForPoint:(CGPoint)a3 inItem:(id)a4 atIndexPath:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v11 = [(HUDashboardViewController *)self collectionView];
  v12 = [v11 cellForItemAtIndexPath:v10];
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
    v14 = [(HUControllableItemCollectionViewController *)&v16 tappableAreaForPoint:v9 inItem:v10 atIndexPath:x, y];
  }

  return v14;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 statusItemModule];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = HUStatusItemModuleController;
LABEL_3:
    v9 = [[v8 alloc] initWithModule:v4];
LABEL_6:
    v14 = v9;
    goto LABEL_7;
  }

  v10 = [(HUItemCollectionViewController *)self itemManager];
  v11 = [v10 bannerItemModule];
  v12 = [v4 isEqual:v11];

  if (v12)
  {
    v13 = [[HUBannerItemModuleController alloc] initWithModule:v4 host:self delegate:self];
    [(HUDashboardViewController *)self setBannerItemModuleController:v13];

    v9 = [(HUDashboardViewController *)self bannerItemModuleController];
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
    v16 = [(HUDashboardViewController *)self context];
    if (v16)
    {
      v17 = [(HUDashboardViewController *)self context];
      v18 = [v17 cameraPresentationStyle];
    }

    else
    {
      v18 = 1;
    }

    v19 = [[HUDashboardCameraItemModuleController alloc] initWithModule:v4 cameraPresentationStyle:v18];
    [(HUDashboardViewController *)self setCameraItemModuleController:v19];

    v9 = [(HUDashboardViewController *)self cameraItemModuleController];
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
    v9 = [(HUDashboardViewController *)self createDashboardTipModuleControllerWithModule:v4];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(HUDashboardViewController *)self createEnergyDashboardModuleControllerWith:v4];
    goto LABEL_6;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)didSelectWelcomeBanner:(id)a3
{
  v4 = [(HUDashboardViewController *)self _dashboardNavigator];
  v3 = [v4 showDiscoverTab];
}

- (void)didSelectUnreachableResidentsBanner:(id)a3
{
  v7 = [(HUDashboardViewController *)self _dashboardNavigator];
  v4 = [(HUDashboardViewController *)self context];
  v5 = [v4 home];
  v6 = [v7 showBridgeSettingsForHome:v5];
}

- (void)didSelectHomeHubMigrationBanner:(id)a3
{
  v5 = a3;
  v6 = [(HUDashboardViewController *)self context];
  v7 = [v6 home];

  v8 = objc_alloc(MEMORY[0x277D14C98]);
  v9 = [v7 currentUser];
  v10 = [v8 initWithHome:v7 user:v9 nameStyle:0];

  v11 = [v10 setDismissedHomeHubMigrationBanner:1];
  v12 = [v5 module];
  v13 = [v12 bannerItemProvider];
  v14 = [v13 homeHubMigrationBannerItem];

  v15 = [v14 devices];
  v16 = [v7 hf_homeHubMigrationBannerTapActionFromViewController:self devices:v15];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__HUDashboardViewController_didSelectHomeHubMigrationBanner___block_invoke;
  v20[3] = &unk_277DBA120;
  v22 = v5;
  v23 = a2;
  v21 = v14;
  v17 = v5;
  v18 = v14;
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

- (id)quickControlPresentationContextForItem:(id)a3 atIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v17.receiver = self;
  v17.super_class = HUDashboardViewController;
  v9 = a3;
  v10 = [(HUControllableItemCollectionViewController *)&v17 quickControlPresentationContextForItem:v9 atIndexPath:a4 point:x, y];
  v11 = [(HUDashboardViewController *)self context:v17.receiver];
  v12 = [v11 room];
  if (v12)
  {
    [v10 setParentViewHomeKitObject:v12];
  }

  else
  {
    v13 = [(HUDashboardViewController *)self context];
    v14 = [v13 home];
    [v10 setParentViewHomeKitObject:v14];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v10 setPrefersSystemTransitions:1];
  }

  return v10;
}

- (id)presentationCoordinator:(id)a3 contextForPresentationAtPoint:(CGPoint)a4
{
  v11.receiver = self;
  v11.super_class = HUDashboardViewController;
  v5 = [(HUControllableItemCollectionViewController *)&v11 presentationCoordinator:a3 contextForPresentationAtPoint:a4.x, a4.y];
  v6 = [(HUItemCollectionViewController *)self itemManager];
  v7 = [v6 actionSetItemModule];
  v8 = [v7 predictedActionSetItems];

  v9 = [v5 item];
  LODWORD(v7) = [v8 containsObject:v9];

  if (v7)
  {
    [v5 setIsItemDisplayedByPrediction:1];
  }

  return v5;
}

- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v64.receiver = self;
  v64.super_class = HUDashboardViewController;
  if ([(HUControllableItemCollectionViewController *)&v64 presentationCoordinator:v6 shouldBeginPresentationWithContext:v7])
  {
    v8 = [v7 item];
    v9 = [(HUItemCollectionViewController *)self itemManager];
    v10 = [v9 indexPathForItem:v8];

    v11 = [(HUItemCollectionViewController *)self itemManager];
    v12 = [v11 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v10, "section")}];

    if ([v12 isEqualToString:@"energySection"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"tipsSection"))
    {
      v13 = 0;
LABEL_51:

      goto LABEL_52;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HUDashboardViewController bannerItemModuleController](self, "bannerItemModuleController"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 hasTapActionForItem:v8], v14, (v15 & 1) == 0))
    {
      objc_opt_class();
      v18 = [v8 sourceItem];
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v58 = v19;

      [v7 setItem:v58];
      v20 = MEMORY[0x277D143D8];
      v16 = [(HUItemCollectionViewController *)self itemManager];
      v21 = [v16 bannerItemModule];
      v22 = [v21 hiddenBanners];
      [v20 sendBannerInteractionforItem:v8 tappedBannerItemOverrideClassName:0 hiddenBannerEvents:v22];
    }

    else
    {
      objc_opt_class();
      v16 = v8;
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v58 = v17;
    }

    if (v58 && [(HUDashboardViewController *)self _canSkipStatusDetailsForItem:v58])
    {
      v23 = [v58 latestResults];
      v55 = [v23 objectForKeyedSubscript:*MEMORY[0x277D14078]];

      if ([v55 count] == 1)
      {
        v24 = [v55 anyObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [v24 hf_serviceGroup];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = v24;
          }

          v28 = v27;

          v24 = v28;
        }

        v29 = [(HUDashboardViewController *)self _shouldShowAccessoryControlsForHomeKitObject:v24 fromStatusItem:v58, v55];
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
            v72 = v24;
            _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "%@ Skipping status details for item: %@ and instead presenting accessory controls for HomeKit object: %@", buf, 0x20u);
          }

          v32 = [(HUDashboardViewController *)self _presentAccessoryControlsForHomeKitObject:v24 fromStatusItem:v58 animated:1];
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
            v72 = v24;
            _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "%@ Skipping status details for item: %@ and instead presenting accessory settings for HomeKit object: %@", buf, 0x20u);
          }

          v37 = [(HUDashboardViewController *)self _presentAccessorySettingsForHomeKitObject:v24 fromStatusItem:v58 animated:1];
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
            v66 = self;
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
            v66 = self;
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

    if ([MEMORY[0x277D14670] isHomeControlService] && (objc_msgSend(v7, "didAuthenticate") & 1) == 0)
    {
      v39 = [(HUItemCollectionViewController *)self itemManager];
      v40 = [v7 item];
      v41 = [v39 childItemsForItem:v40 ofClass:objc_opt_class()];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __88__HUDashboardViewController_presentationCoordinator_shouldBeginPresentationWithContext___block_invoke_317;
      v62[3] = &unk_277DB85D8;
      v62[4] = self;
      LODWORD(v57) = [v41 na_any:v62];

      v42 = v57;
      if (v57)
      {
        v43 = [v7 copy];
        v44 = [v7 controlItems];
        [v43 setControlItems:v44];

        v45 = [(HUControllableItemCollectionViewController *)self lockAuthorizationDelegate];
        v46 = [v45 authorizeIfLockedForViewController:self];

        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __88__HUDashboardViewController_presentationCoordinator_shouldBeginPresentationWithContext___block_invoke_2;
        v59[3] = &unk_277DB7E68;
        v60 = v43;
        v61 = v6;
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

    v49 = [v8 latestResults];
    v50 = [v49 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

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

- (BOOL)presentationCoordinator:(id)a3 shouldBeginLongPressPresentationWithContext:(id)a4
{
  v4 = [a4 item];
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

- (BOOL)presentationCoordinator:(id)a3 shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)a4 view:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
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

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [(HUDashboardViewController *)self collectionView];
    v14 = [v13 indexPathForItemAtPoint:{x, y}];

    if (v14)
    {
      v15 = [(HUItemCollectionViewController *)self itemManager];
      v16 = [v15 displayedItemAtIndexPath:v14];

      if (v16)
      {
        v17 = [(HUItemCollectionViewController *)self itemManager];
        v18 = [v17 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v14, "section")}];

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

- (void)presentationCoordinator:(id)a3 touchDidBeginForItem:(id)a4 tappedArea:(id)a5
{
  if (@"HUTileCellTappableAreaStateToggleButton" == a5)
  {
    v7 = a4;
    v8 = [(HUItemCollectionViewController *)self itemManager];
    v14 = [v8 indexPathForItem:v7];

    v9 = [(HUDashboardViewController *)self collectionView];
    v10 = [v9 cellForItemAtIndexPath:v14];

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

- (void)presentationCoordinator:(id)a3 touchDidEndForItem:(id)a4 tappedArea:(id)a5
{
  if (@"HUTileCellTappableAreaStateToggleButton" == a5)
  {
    v7 = a4;
    v8 = [(HUItemCollectionViewController *)self itemManager];
    v14 = [v8 indexPathForItem:v7];

    v9 = [(HUDashboardViewController *)self collectionView];
    v10 = [v9 cellForItemAtIndexPath:v14];

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

- (BOOL)presentationCoordinator:(id)a3 shouldAllowTapticFeedbackForItem:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = v5;
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
    v13 = [v8 alwaysAllowedScheduleItem];
    if ([v9 isEqual:v13])
    {
      v12 = 0;
    }

    else
    {
      v14 = [v8 accessoryNoAccessItem];
      v15 = [v9 isEqual:v14];

      v12 = v15 ^ 1;
    }
  }

  return v12;
}

- (void)presentationCoordinator:(id)a3 didRecognizeTapForItem:(id)a4 tappedArea:(id)a5
{
  v107 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 latestResults];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13FD8]];

  if (!v13)
  {
    v18 = [v9 pressedTile];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    v20 = [(HUItemCollectionViewController *)self itemManager];
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v89 = v21;

    objc_opt_class();
    v22 = v10;
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
      v25 = [v89 alwaysAllowedScheduleItem];
      if ([v22 isEqual:v25])
      {
      }

      else
      {
        v27 = [v89 accessoryNoAccessItem];
        v28 = [v22 isEqual:v27];

        if (v22 && !v28)
        {
          v29 = [v89 contactOwnerItem];
          v30 = [v22 isEqual:v29];

          if (v30)
          {
            v31 = [(HUDashboardViewController *)self context];
            v32 = [v31 home];
            v33 = [v32 owner];
            v34 = [v33 userID];

            if (v34)
            {
              v35 = MEMORY[0x277CBEBC0];
              v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"sms://%@", v34];
              v37 = [v35 URLWithString:v36];

              v38 = HFLogForCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = NSStringFromSelector(a2);
                *buf = 138412802;
                v98 = self;
                v99 = 2112;
                v100 = v39;
                v101 = 2112;
                v102 = v37;
                _os_log_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_DEFAULT, "%@:%@, User requests to contact owner. Opening URL { %@ }", buf, 0x20u);
              }

              v40 = [MEMORY[0x277D148E8] sharedInstance];
              v41 = [v40 openSensitiveURL:v37];
            }

            else
            {
              v37 = HFLogForCategory();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v59 = NSStringFromSelector(a2);
                v87 = [(HUDashboardViewController *)self context];
                v84 = [v87 home];
                v81 = [v84 owner];
                v60 = [(HUDashboardViewController *)self context];
                v61 = [v60 home];
                *buf = 138413314;
                v98 = self;
                v99 = 2112;
                v100 = v59;
                v101 = 2112;
                v102 = v81;
                v103 = 2112;
                v104 = 0;
                v105 = 2112;
                v106 = v61;
                _os_log_impl(&dword_20CEB6000, v37, OS_LOG_TYPE_DEFAULT, "%@:%@, Unable to open URL to contact owner {%@} with email {%@} in home {%@}", buf, 0x34u);
              }
            }
          }

          else
          {
            v42 = [v89 pinCodeAccessItem];
            v43 = [v22 isEqual:v42];

            if (v43)
            {
              v44 = [(HUDashboardViewController *)self context];
              v45 = [v44 home];

              v46 = [v45 currentUser];
              v83 = [v89 pinCodeManager];
              v47 = [v89 pinCodeManager];
              v86 = [v47 userPinCodes];

              objc_initWeak(buf, self);
              v91[0] = MEMORY[0x277D85DD0];
              v91[1] = 3221225472;
              v91[2] = __87__HUDashboardViewController_presentationCoordinator_didRecognizeTapForItem_tappedArea___block_invoke;
              v91[3] = &unk_277DBE0C8;
              objc_copyWeak(v96, buf);
              v48 = v46;
              v92 = v48;
              v96[1] = a2;
              v49 = v45;
              v93 = v49;
              v94 = v89;
              v50 = v83;
              v95 = v50;
              v51 = [v86 addSuccessBlock:v91];

              objc_destroyWeak(v96);
              objc_destroyWeak(buf);
            }

            else
            {
              v52 = [v89 homeKeyItem];
              v53 = [v22 isEqual:v52];

              if (v53)
              {
                v54 = MEMORY[0x277D14D08];
                v55 = [(HUDashboardViewController *)self context];
                v56 = [v55 home];
                v57 = [v54 handleAddOrShowHomeKeyButtonTapForHome:v56];
                v58 = [v57 addCompletionBlock:&__block_literal_global_345_0];
              }

              else
              {
                v62 = [(HUItemCollectionViewController *)self itemManager];
                v88 = [v62 indexPathForItem:v22];

                v63 = [(HUItemCollectionViewController *)self itemManager];
                v85 = [v63 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v88, "section")}];

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

                v67 = [(HUDashboardViewController *)self layoutManager];
                v68 = [(HUDashboardViewController *)self context];
                v69 = [v67 isAdaptiveTileStyleInSectionIdentifier:v85 context:v68];

                if ([(HUDashboardViewController *)self isEditing]&& v82 && v69)
                {
                  v70 = [(HUDashboardViewController *)self itemShowingSizeToggleButton];

                  v71 = v82;
                  if (v70 == v82)
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
                    v73 = [v80 activityLogCoordinator];
                    v74 = [(HUItemCollectionViewController *)self itemManager];
                    v75 = [v74 home];
                    v76 = [HUActivityLogViewControllerFactory createActivityLogViewControllerWith:v75 activityLogCoordinator:v73];

                    v77 = objc_alloc(MEMORY[0x277D757A0]);
                    v78 = [v77 initWithRootViewController:v76];
                    v79 = [(HUDashboardViewController *)self navigationController];
                    [v79 presentViewController:v78 animated:1 completion:0];
                  }

                  else
                  {
                    v90.receiver = self;
                    v90.super_class = HUDashboardViewController;
                    [(HUControllableItemCollectionViewController *)&v90 presentationCoordinator:v9 didRecognizeTapForItem:v65 tappedArea:v11];
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
      v98 = "[HUDashboardViewController presentationCoordinator:didRecognizeTapForItem:tappedArea:]";
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
  v15 = [(HUItemCollectionViewController *)self itemManager];
  v16 = [v15 home];
  v17 = [v14 addAndSetupNewAccessoriesForHome:v16 room:0];

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

- (BOOL)hasDetailsActionForPresentationCoordinator:(id)a3 item:(id)a4
{
  v5 = a4;
  v6 = ([MEMORY[0x277D14670] isHomeControlService] & 1) == 0 && -[HUDashboardViewController _hasDetailViewControllerForItem:](self, "_hasDetailViewControllerForItem:", v5);

  return v6;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4
{
  v5 = a4;
  v6 = [(HUDashboardViewController *)self _quickControlDetailViewControllerForItem:v5];
  if (!v6)
  {
    NSLog(&cfstr_NoDetailsViewC.isa, v5);
  }

  return v6;
}

- (BOOL)_hasDetailViewControllerForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [v4 conformsToProtocol:&unk_28251B0C8];
  objc_opt_class();
  v7 = v4;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 sourceItem];
  v11 = [v10 conformsToProtocol:&unk_28251B0C8];

  v12 = isKindOfClass | v6 | [(HUDashboardViewController *)self matterItemSupportsAccessoryDetails:v7]| v11;
  return v12 & 1;
}

- (id)_quickControlDetailViewControllerForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    NSLog(&cfstr_AttemptedToPre.isa);
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 actionSet];

    if (!v8)
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
    v10 = [v7 actionSet];
    v11 = [(HUItemCollectionViewController *)self itemManager];
    v12 = [v11 home];
    v13 = [v9 initWithExistingObject:v10 inHome:v12];

    v14 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v13 mode:0];
LABEL_27:

    goto LABEL_29;
  }

  if ([v4 conformsToProtocol:&unk_28251B0C8])
  {
    v15 = v4;
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
      v19 = [v13 accessory];
      v20 = [v19 hf_isSingleServiceLikeAccessory];

      if (v20)
      {
        v21 = [v13 accessory];
        v22 = [v21 hf_primaryService];
        v23 = [v13 serviceItemForService:v22];

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
    v26 = v4;
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v7 = v27;

    v28 = [v7 sourceItem];
    if ([v28 conformsToProtocol:&unk_28251B0C8])
    {
      v29 = v28;
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
  NSLog(&cfstr_NoDetailsViewC.isa, v4);
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
  v3 = [(HUDashboardViewController *)self _shouldHideTabBar];
  v5 = [(HUDashboardViewController *)self tabBarController];
  v4 = [v5 tabBar];
  [v4 setHidden:v3];
}

- (BOOL)_shouldHideTabBar
{
  v3 = [(HUDashboardViewController *)self context];
  v4 = [v3 home];
  v5 = [v4 hf_shouldBlockCurrentUserFromHome];

  if (v5)
  {
    return 1;
  }

  v7 = [(HUDashboardViewController *)self context];
  v8 = [v7 home];
  v9 = [v8 hf_currentUserIsRestrictedGuest];

  return v9;
}

- (void)dashboardItemManager:(id)a3 didUpdateContext:(id)a4
{
  v5 = a4;
  [(HUDashboardViewController *)self setFilterBarNeedsUpdate];
  [(HUDashboardViewController *)self _updateBarButtons];
  [(HUDashboardViewController *)self _updateTabBarVisibility];
  [(HUDashboardViewController *)self _updateFilterBarVisibility];
  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
  v6 = [(HUDashboardViewController *)self wallpaperView];
  v7 = [(HUDashboardViewController *)self context];
  v8 = [v7 room];
  if (v8)
  {
    v9 = [v6 refreshWallpaperForHomeKitObject:v8 withAnimation:1];
  }

  else
  {
    v10 = [(HUDashboardViewController *)self context];
    v11 = [v10 home];
    v12 = [v6 refreshWallpaperForHomeKitObject:v11 withAnimation:1];
  }

  [(HUDashboardViewController *)self _showNoHomeAccessViewsIfNeeded];
  v13 = [(HUDashboardViewController *)self navigationHomeButton];
  v14 = [HUNavigationMenuFactory homeMenuForButton:v13];
  v15 = [(HUDashboardViewController *)self navigationHomeButton];
  [v15 setMenu:v14];

  v16 = [v5 home];

  v17 = [v16 hf_shouldBlockCurrentRestrictedGuestFromHome];
  v18 = [(HUDashboardViewController *)self _isShowingRestrictedGuestBlockedBackdropView];
  if (v17)
  {
    if (!v18)
    {
      [(HUDashboardViewController *)self createRestrictedGuestBlockedBackdropViewIfNeeded];
      v19 = [(HUDashboardViewController *)self view];
      v20 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
      v21 = [(HUDashboardViewController *)self wallpaperView];
      [v19 insertSubview:v20 above:v21];

LABEL_9:
    }
  }

  else if (v18)
  {
    v19 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [v19 removeFromSuperview];
    goto LABEL_9;
  }

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    v23 = [(HUDashboardViewController *)self context];
    v22 = +[HUSideBarSelectionManager sharedManager];
    [v22 setCurrentContext:v23];
  }
}

- (id)childViewControllersToPreload
{
  v8.receiver = self;
  v8.super_class = HUDashboardViewController;
  v3 = [(HUItemCollectionViewController *)&v8 childViewControllersToPreload];
  v4 = [v3 mutableCopy];

  v5 = [(HUDashboardViewController *)self _filterBarController];
  [v4 na_safeAddObject:v5];
  v6 = [v4 copy];

  return v6;
}

- (id)hu_preloadContent
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HUDashboardViewController;
  v3 = [(HUItemCollectionViewController *)&v25 hu_preloadContent];
  v4 = [(HUDashboardViewController *)self context];
  if ([v4 backgroundStyle] == 2)
  {
    v5 = [(HUDashboardViewController *)self wallpaperView];
    v6 = v5 == 0;

    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [(HUDashboardViewController *)self wallpaperView];
    v8 = [(HUDashboardViewController *)self context];
    v9 = [v8 room];
    if (v9)
    {
      v4 = [v7 refreshWallpaperForHomeKitObject:v9 withAnimation:0];
    }

    else
    {
      v10 = [(HUDashboardViewController *)self context];
      v11 = [v10 home];
      v4 = [v7 refreshWallpaperForHomeKitObject:v11 withAnimation:0];
    }

    v12 = MEMORY[0x277D2C900];
    v26[0] = v3;
    v26[1] = v4;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v14 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v15 = [v12 combineAllFutures:v13 scheduler:v14];

    v3 = v15;
  }

LABEL_8:
  objc_initWeak(&location, self);
  v16 = [v3 recover:&__block_literal_global_401];
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

- (void)accessoryTileSizeButtonTappedFor:(id)a3 withItem:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = self;
    v15 = 2080;
    v16 = "[HUDashboardViewController accessoryTileSizeButtonTappedFor:withItem:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped tile size button for cell %@ with item %@", &v13, 0x2Au);
  }

  v9 = v7;
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
    [(HUDashboardViewController *)self _toggleSizeForCell:v6 withItem:v12];
  }
}

- (id)presentROARUpgradeView:(id)a3
{
  v4 = [(HUDashboardViewController *)self context];
  v5 = [v4 home];
  v6 = [HUHomeFeatureOnboardingUtilities home:v5 onboardHomeHub2FromPresentingViewController:self devices:0 usageOptions:0];

  return v6;
}

- (id)_titleForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 sectionIndexForDisplayedSectionIdentifier:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(HUItemCollectionViewController *)self itemManager];
    v7 = [v8 titleForSection:v6];
  }

  return v7;
}

- (void)_presentDetailsViewControllerForSectionWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v27 = a3;
  objc_opt_class();
  v7 = [(HUDashboardViewController *)self navigationController];
  v8 = [v7 parentViewController];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 view];

  v12 = [v11 subviews];
  v13 = [v12 na_firstObjectPassingTest:&__block_literal_global_409];

  [v13 setDisableWallpaperUpdate:1];
  if ([v27 isEqualToString:@"camerasSection"])
  {
    v14 = [(HUDashboardViewController *)self _titleForSectionIdentifier:v27];
    v15 = [(HUDashboardViewController *)self _dashboardNavigator];
    v16 = [(HUDashboardViewController *)self context];
    v17 = [v16 home];
    v18 = [v15 showCamerasSectionWithTitle:v14 forHome:v17 animated:v4];
  }

  else
  {
    if (![v27 isEqualToString:@"SpeakersAndTVsSection"])
    {
      v20 = [(HUDashboardViewController *)self context];
      v21 = [v20 home];
      v14 = HURoomForDashboardSectionIdentifier(v27, v21);

      if (v14)
      {
        v15 = [(HUDashboardViewController *)self _dashboardNavigator];
        v22 = [v15 showRoom:v14 animated:v4];
      }

      else
      {
        if ([v27 isEqualToString:@"scenesSection"])
        {
          v15 = [(HUDashboardViewController *)self _titleForSectionIdentifier:v27];
          v23 = [(HUDashboardViewController *)self _dashboardNavigator];
          v24 = [(HUDashboardViewController *)self context];
          v25 = [v24 home];
          v26 = [v23 showScenesSectionWithDashboardTitle:v15 forHome:v25 animated:v4];
        }

        else
        {
          v15 = [MEMORY[0x277CCA890] currentHandler];
          [v15 handleFailureInMethod:a2 object:self file:@"HUDashboardViewController.m" lineNumber:1784 description:{@"%@ Unhandled presentation for section with identifier: %@", self, v27}];
        }

        v14 = 0;
      }

      goto LABEL_9;
    }

    v14 = [(HUDashboardViewController *)self _titleForSectionIdentifier:v27];
    v15 = [(HUDashboardViewController *)self _dashboardNavigator];
    v16 = [(HUDashboardViewController *)self context];
    v17 = [v16 home];
    v19 = [v15 showSpeakersAndTVsSectionWithTitle:v14 forHome:v17 animated:v4];
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

- (id)_itemForHomeKitObject:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 matchingItemForHomeKitObject:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(HUItemCollectionViewController *)self itemManager];
    v8 = [v9 buildItemForHomeKitObject:v4];
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
    v18 = [(HUDashboardViewController *)self context];
    v19 = [v18 home];
    v20 = [v19 hf_characteristicValueManager];

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
      v25 = [v24 valueSource];

      if (v25)
      {
        v26 = [v24 valueSource];

        v20 = v26;
      }
    }

    v27 = [MEMORY[0x277D14B50] policyWithDecision:0];
    [v20 beginTransactionWithReason:@"HUDashboardViewControllerTransactionReasonDisableReads" readPolicy:v27 logger:0];

    v36 = *MEMORY[0x277D13BB0];
    v37 = MEMORY[0x277CBEC38];
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v29 = [v21 updateWithOptions:v28];

    [v20 commitTransactionWithReason:@"HUDashboardViewControllerTransactionReasonDisableReads"];
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
      v39 = self;
      v40 = 2112;
      v41 = v4;
      _os_log_error_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_ERROR, "%@ Failed to find item for HomeKit object: %@", buf, 0x16u);
    }

    v32 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v30 = [v32 futureWithError:v20];
  }

  return v30;
}

- (id)_presentAccessorySettingsForHomeKitObject:(id)a3 fromStatusItem:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v10 = [(HUDashboardViewController *)self _itemForHomeKitObject:v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__HUDashboardViewController__presentAccessorySettingsForHomeKitObject_fromStatusItem_animated___block_invoke;
  v14[3] = &unk_277DC2A38;
  objc_copyWeak(&v16, &location);
  v17 = a5;
  v11 = v9;
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

- (id)_presentAccessoryControlsForHomeKitObject:(id)a3 fromStatusItem:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
  v11 = [v10 presentationContext];
  v12 = [v11 item];
  if ([v12 conformsToProtocol:&unk_2824C0788])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14 && ([v14 homeKitObject], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "uniqueIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "uniqueIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqual:", v17), v17, v16, v15, v18))
  {
    v19 = MEMORY[0x277D2C900];
    v20 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    v21 = [v20 cardViewController];
    v22 = [v19 futureWithResult:v21];
  }

  else
  {
    objc_initWeak(&location, self);
    v23 = [(HUDashboardViewController *)self _itemForHomeKitObject:v8];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __95__HUDashboardViewController__presentAccessoryControlsForHomeKitObject_fromStatusItem_animated___block_invoke;
    v25[3] = &unk_277DC2A38;
    objc_copyWeak(&v27, &location);
    v28 = a5;
    v26 = v9;
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

- (id)_dismissPresentedViewControllersAnimated:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
  v6 = [v5 dismissQuickControlAnimated:v3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HUDashboardViewController__dismissPresentedViewControllersAnimated___block_invoke;
  v9[3] = &unk_277DC2A88;
  objc_copyWeak(&v10, &location);
  v11 = v3;
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

- (BOOL)_shouldShowAccessoryControlsForHomeKitObject:(id)a3 fromStatusItem:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:3];
  v6 = objc_opt_class();

  LOBYTE(v6) = [v5 containsObject:{v6, v8, v9}];
  return v6 ^ 1;
}

- (BOOL)_canSkipStatusDetailsForItem:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  if ([v5 containsObject:objc_opt_class()])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![(HUDashboardViewController *)self _statusItemRepresentsOnlyResidentIPads:v4];
  }

  return v6;
}

- (BOOL)_statusItemRepresentsOnlyResidentIPads:(id)a3
{
  v3 = [a3 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14078]];

  LOBYTE(v3) = [v4 na_all:&__block_literal_global_429];
  return v3;
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
  v3 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D68]);
    v5 = [MEMORY[0x277D75210] effectWithStyle:18];
    v6 = [v4 initWithEffect:v5];
    [(HUDashboardViewController *)self setRestrictedGuestBlockedBackdropView:v6];

    v7 = [(HUDashboardViewController *)self view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [v16 setFrame:{v9, v11, v13, v15}];

    v17 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:1];

    v18 = [(HUDashboardViewController *)self restrictedGuestBlockedBackdropView];
    [v18 setAutoresizingMask:18];
  }
}

- (void)_setupBackgroundView
{
  v79[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(HUDashboardViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = [HUBlurGroupingEffectView alloc];
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(HUBlurGroupingEffectView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
  [(HUDashboardViewController *)self setBlurGroupingEffectView:v10];

  v11 = [(HUDashboardViewController *)self blurGroupingEffectView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(HUDashboardViewController *)self view];
  v13 = [(HUDashboardViewController *)self blurGroupingEffectView];
  v14 = [(HUDashboardViewController *)self collectionView];
  [v12 insertSubview:v13 below:v14];

  v54 = MEMORY[0x277CCAAD0];
  v72 = [(HUDashboardViewController *)self blurGroupingEffectView];
  v68 = [v72 topAnchor];
  v70 = [(HUDashboardViewController *)self view];
  v66 = [v70 topAnchor];
  v64 = [v68 constraintEqualToAnchor:v66];
  v79[0] = v64;
  v62 = [(HUDashboardViewController *)self blurGroupingEffectView];
  v58 = [v62 bottomAnchor];
  v60 = [(HUDashboardViewController *)self view];
  v56 = [v60 bottomAnchor];
  v52 = [v58 constraintEqualToAnchor:v56];
  v79[1] = v52;
  v50 = [(HUDashboardViewController *)self blurGroupingEffectView];
  v49 = [v50 leadingAnchor];
  v15 = [(HUDashboardViewController *)self view];
  v16 = [v15 leadingAnchor];
  v17 = [v49 constraintEqualToAnchor:v16];
  v79[2] = v17;
  v18 = [(HUDashboardViewController *)self blurGroupingEffectView];
  v19 = [v18 trailingAnchor];
  v20 = [(HUDashboardViewController *)self view];
  v21 = [v20 trailingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v79[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
  [v54 activateConstraints:v23];

  if (-[HUDashboardViewController isOverlay](self, "isOverlay") || ([MEMORY[0x277D14670] isHomeControlService] & 1) != 0 || (-[HUDashboardViewController context](self, "context"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "allowsEditing"), v24, v25))
  {
    v26 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleBackgroundTap_];
    v27 = objc_opt_new();
    v28 = [MEMORY[0x277D75348] clearColor];
    [v27 setBackgroundColor:v28];

    [v27 addGestureRecognizer:v26];
    v29 = [(HUDashboardViewController *)self collectionView];
    [v29 setBackgroundView:v27];
  }

  v30 = [(HUDashboardViewController *)self context];
  v31 = [v30 backgroundStyle];

  if (v31 == 1)
  {
    v48 = [MEMORY[0x277D75348] systemBlackColor];
    v38 = [(HUDashboardViewController *)self view];
    [v38 setBackgroundColor:v48];
  }

  else
  {
    if (v31 != 2)
    {
      return;
    }

    v32 = HFLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [(HUDashboardViewController *)self wallpaperView];
      *buf = 138412546;
      v76 = v33;
      v77 = 2112;
      v78 = self;
      _os_log_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_DEFAULT, "adding wallpaperView: %@ to dashboard: %@", buf, 0x16u);
    }

    v34 = [[HUWallpaperView alloc] initWithFrame:v6, v7, v8, v9];
    wallpaperView = self->_wallpaperView;
    self->_wallpaperView = v34;

    [(HUWallpaperView *)self->_wallpaperView setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = [(HUDashboardViewController *)self view];
    v37 = [(HUDashboardViewController *)self wallpaperView];
    [v36 insertSubview:v37 atIndex:0];

    v57 = MEMORY[0x277CCAAD0];
    v61 = [(HUDashboardViewController *)self wallpaperView];
    v38 = [v61 topAnchor];
    v73 = [(HUDashboardViewController *)self view];
    v71 = [v73 topAnchor];
    v69 = [v38 constraintEqualToAnchor:v71];
    v74[0] = v69;
    v67 = [(HUDashboardViewController *)self wallpaperView];
    v63 = [v67 bottomAnchor];
    v65 = [(HUDashboardViewController *)self view];
    v59 = [v65 bottomAnchor];
    v55 = [v63 constraintEqualToAnchor:v59];
    v74[1] = v55;
    v53 = [(HUDashboardViewController *)self wallpaperView];
    v51 = [v53 leadingAnchor];
    v39 = [(HUDashboardViewController *)self view];
    v40 = [v39 leadingAnchor];
    v41 = [v51 constraintEqualToAnchor:v40];
    v74[2] = v41;
    v42 = [(HUDashboardViewController *)self wallpaperView];
    v43 = [v42 trailingAnchor];
    v44 = [(HUDashboardViewController *)self view];
    v45 = [v44 trailingAnchor];
    v46 = [v43 constraintEqualToAnchor:v45];
    v74[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    [v57 activateConstraints:v47];

    v48 = v61;
  }
}

- (void)_updateBarTintColors
{
  objc_opt_class();
  v3 = [(HUDashboardViewController *)self navigationController];
  v4 = [v3 navigationBar];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(HUDashboardViewController *)self context];
  v8 = [v7 overrideNavigationBarTintColor];
  [v6 setOverrideTintColor:v8];

  [(HUDashboardViewController *)self _setupTabBarAppearance];
}

- (void)_setupTabBarAppearance
{
  v3 = [(HUDashboardViewController *)self tabBarItem];
  v4 = [v3 standardAppearance];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v13 = v6;

  [v13 _setOverrideUserInterfaceStyle:2];
  v7 = [(HUDashboardViewController *)self tabBarItem];
  [v7 setStandardAppearance:v13];

  v8 = [(HUDashboardViewController *)self tabBarItem];
  [v8 setScrollEdgeAppearance:v13];

  v9 = [(HUDashboardViewController *)self navigationController];
  v10 = [v9 tabBarItem];
  [v10 setStandardAppearance:v13];

  v11 = [(HUDashboardViewController *)self navigationController];
  v12 = [v11 tabBarItem];
  [v12 setScrollEdgeAppearance:v13];
}

- (void)_handleBackgroundTap:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ User tapped background", &v8, 0xCu);
  }

  if ([MEMORY[0x277D14670] isHomeControlService])
  {
    v5 = [(HUDashboardViewController *)self parentViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
LABEL_7:

    return;
  }

  if ([(HUDashboardViewController *)self isOverlay])
  {
    v5 = [(HUDashboardViewController *)self navigationController];
    v6 = [v5 popToRootViewControllerAnimated:1];
    goto LABEL_7;
  }

  v7 = [(HUDashboardViewController *)self itemShowingSizeToggleButton];

  if (v7)
  {
    [(HUDashboardViewController *)self setItemShowingSizeToggleButton:0 animated:1];
  }
}

- (void)_toggleSizeForCell:(id)a3 withItem:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 accessoryRepresentableObject];
  v9 = [(HUDashboardViewController *)self layoutManager];
  v10 = [v9 gridSizeForItem:v7];
  v12 = v11;

  v13 = v12 <= 1 || v10 <= 1;
  v14 = MEMORY[0x277D14240];
  if (v13)
  {
    v14 = MEMORY[0x277D14238];
  }

  v15 = [v8 hf_setTileSize:*v14];
  v16 = MEMORY[0x277D75D18];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __57__HUDashboardViewController__toggleSizeForCell_withItem___block_invoke;
  v23 = &unk_277DB7558;
  v24 = v6;
  v25 = self;
  v17 = v6;
  [v16 animateWithDuration:&v20 animations:0.3];
  v18 = [(HUItemCollectionViewController *)self itemManager:v20];
  v26[0] = v7;
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
  v2 = [MEMORY[0x277D0F800] sharedAuthorization];
  [v2 requestAuthorization:2 completionHandler:0];
}

- (void)_updateAllHeaderViews
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HUDashboardViewController *)self collectionView];
  v4 = *MEMORY[0x277D767D8];
  v5 = [v3 indexPathsForVisibleSupplementaryElementsOfKind:*MEMORY[0x277D767D8]];

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
        v11 = [(HUDashboardViewController *)self collectionView];
        v12 = [v11 supplementaryViewForElementKind:v4 atIndexPath:v10];

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

- (void)_updateHeaderView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v6 section];

  v10 = [v8 displayedSectionIdentifierForSectionIndex:v9];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __59__HUDashboardViewController__updateHeaderView_atIndexPath___block_invoke;
  v16 = &unk_277DBB548;
  v17 = self;
  v18 = v10;
  v11 = v10;
  v12 = __59__HUDashboardViewController__updateHeaderView_atIndexPath___block_invoke(&v13);
  [v7 setShowsDisclosureIndicator:{v12, v13, v14, v15, v16, v17}];
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

- (void)applicationWentIntoBackground:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v16 = [(HUDashboardViewController *)self context];
  v4 = [v16 accessoryTypeGroup];
  v5 = [MEMORY[0x277D14378] energyAccessoryTypeGroup];
  v6 = v5;
  if (v4 == v5)
  {
    v7 = [(HUDashboardViewController *)self energyCategoryViewStartTime];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEAA8] date];
      v9 = [(HUDashboardViewController *)self energyCategoryViewStartTime];
      [v8 timeIntervalSinceDate:v9];
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
        v13 = [MEMORY[0x277D146E8] sharedDispatcher];
        v14 = [v13 allHomesFuture];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __59__HUDashboardViewController_applicationWentIntoBackground___block_invoke;
        v17[3] = &__block_descriptor_40_e29_v24__0__NSArray_8__NSError_16l;
        *&v17[4] = v11;
        v15 = [v14 addCompletionBlock:v17];
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

- (void)applicationWillEnterForeground:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(HUDashboardViewController *)self context];
  v5 = [v4 accessoryTypeGroup];
  v6 = [MEMORY[0x277D14378] energyAccessoryTypeGroup];

  if (v5 == v6)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    [(HUDashboardViewController *)self setEnergyCategoryViewStartTime:v7];
  }

  v8 = [(HUDashboardViewController *)self context];
  v9 = [v8 home];

  if (v9)
  {
    v10 = [HUHomeEnergyManagerHelper alloc];
    v11 = [(HUDashboardViewController *)self context];
    v12 = [v11 home];
    v13 = [(HUHomeEnergyManagerHelper *)v10 initWithHome:v12];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = self;
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
      v17 = self;
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
  v3 = [(HUDashboardViewController *)self collectionViewLayout];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  if (v6)
  {
    v5 = [(HUDashboardViewController *)self layoutManager];
    [v5 registerSectionDecorationViewsWithLayout:v6];
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

- (id)matchingItemForHomeKitObject:(id)a3
{
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 matchingItemForHomeKitObject:v4];

  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v7 = v4;
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = [v9 hf_primaryService];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_13:
        v15 = [(HUItemCollectionViewController *)self itemManager];
        v6 = [v15 buildItemForHomeKitObject:v4];

        goto LABEL_14;
      }

      objc_opt_class();
      v11 = v4;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v9 = v12;

      v10 = [v9 accessory];
    }

    v13 = v10;
    v14 = [(HUItemCollectionViewController *)self itemManager];
    v6 = [v14 matchingItemForHomeKitObject:v13];

    if (v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

- (id)presentHomeKitObject:(id)a3 destination:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = [(HUDashboardViewController *)self matchingItemForHomeKitObject:a3];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_18;
  }

  if ([v8 conformsToProtocol:&unk_28251B0C8])
  {
    v10 = v9;
    v11 = v10;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = 0;
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

    v11 = [v14 sourceItem];

    v10 = v11;
  }

  if ([v10 conformsToProtocol:&unk_28251B0C8])
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

LABEL_14:
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      goto LABEL_24;
    }

    if (a4 != 3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    if (a4 != 1)
    {
LABEL_17:

LABEL_18:
      v16 = [(HUDashboardViewController *)self hu_preloadContent];
      v17 = [v16 flatMap:&__block_literal_global_753];
LABEL_23:
      v18 = v17;
      goto LABEL_29;
    }
  }

  if (v16)
  {
    v17 = [(HUDashboardViewController *)self presentDetailsForItem:v16 animated:1 secondaryDestination:a4];
    goto LABEL_23;
  }

LABEL_24:
  v19 = [(HUItemCollectionViewController *)self moduleControllerForItem:v9];
  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v20 = [v19 presentItem:v9 destination:a4 animated:v5];
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

- (id)presentItemWithUUID:(id)a3 destination:(unint64_t)a4 secondaryDestination:(unint64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = 1;
  if (a4 <= 6)
  {
    if (a4 == 4)
    {
      goto LABEL_9;
    }

    if (a4 == 6)
    {
      v11 = 3;
      goto LABEL_9;
    }
  }

  else
  {
    if (a4 == 29 || a4 == 21)
    {
      goto LABEL_9;
    }

    if (a4 == 7)
    {
      v11 = 2;
LABEL_9:
      v12 = [(HUDashboardViewController *)self _dismissPresentedViewControllersAnimated:v6];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __116__HUDashboardViewController_HomeKitObjectPresenting__presentItemWithUUID_destination_secondaryDestination_animated___block_invoke;
      v17[3] = &unk_277DC2B18;
      v17[4] = self;
      v21 = (a5 & 0xFFFFFFFFFFFFFFFDLL) == 1;
      v18 = v10;
      v19 = a5;
      v22 = v6;
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

- (id)presentCameraProfile:(id)a3 startDate:(id)a4 endDate:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(HUDashboardViewController *)self cameraItemModuleController];
  v14 = [v13 presentCameraPlayerViewControllerForHomeKitObject:v12 startDate:v11 endDate:v10 animated:v6];

  return v14;
}

- (id)presentCameraProfile:(id)a3 forCameraClip:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(HUDashboardViewController *)self cameraItemModuleController];
  v11 = [v10 presentCameraPlayerViewControllerForHomeKitObject:v9 cameraClip:v8 animated:v5];

  return v11;
}

- (id)presentFeedbackFlowForCameraClip:(id)a3 fromProfile:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUDashboardViewController *)self cameraItemModuleController];
  v9 = [v8 presentFeedbackFlowForCameraClip:v7 fromProfile:v6];

  return v9;
}

- (id)presentStatusDetailsForStatusItemClass:(Class)a3 animated:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v7 = NSStringFromClass(a3);
    NSLog(&cfstr_InvalidStatusI.isa, v7);
  }

  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v8 allItems];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __102__HUDashboardViewController_HomeKitObjectPresenting__presentStatusDetailsForStatusItemClass_animated___block_invoke;
  v24[3] = &__block_descriptor_40_e16_B16__0__HFItem_8lu32l8;
  v24[4] = a3;
  v10 = [v9 na_firstObjectPassingTest:v24];

  if (v10)
  {
    v11 = objc_opt_new();
    [v11 setItem:v10];
    v12 = [(HUItemCollectionViewController *)self itemManager];
    v13 = [v12 home];
    [v11 setHome:v13];

    [v11 setPrefersSystemTransitions:1];
    v14 = [(HUDashboardViewController *)self navigationController];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = self;
    }

    [v11 setSourceViewController:v16];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = self;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@ Presenting status details for status item: %@", buf, 0x16u);
    }

    v18 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    v19 = [v18 presentQuickControlWithContext:v11 animated:v4];
  }

  else
  {
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromClass(a3);
      *buf = 138412546;
      v26 = self;
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

- (id)presentItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(HUControllableItemCollectionViewController *)self shouldShowAccessoryControlForItem:v6])
  {
    v7 = [(HUControllableItemCollectionViewController *)self presentAccessoryControlsForItem:v6];
    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v9 = v6;
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
      [(HUDashboardViewController *)self _presentQuickControlsForHomeKitItem:v14 animated:v4];
    }

    else
    {
      [MEMORY[0x277D2C900] futureWithNoResult];
    }
    v8 = ;
  }

  return v8;
}

- (id)presentDetailsForItem:(id)a3 animated:(BOOL)a4 secondaryDestination:(unint64_t)a5
{
  v8 = a3;
  if ([(HUControllableItemCollectionViewController *)self shouldShowAccessoryControlForItem:v8])
  {
    v9 = [(HUControllableItemCollectionViewController *)self presentAccessorySettingsForItem:v8 secondaryDestination:a5];
  }

  else
  {
    v10 = [(HUDashboardViewController *)self _presentQuickControlsForHomeKitItem:v8 animated:0];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __106__HUDashboardViewController_HomeKitObjectPresenting__presentDetailsForItem_animated_secondaryDestination___block_invoke;
    v12[3] = &__block_descriptor_33_e42___NAFuture_16__0__UINavigationController_8l;
    v13 = a4;
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

- (id)_presentQuickControlsForHomeKitItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(location, self);
  if ([(HUControllableItemCollectionViewController *)self shouldShowAccessoryControlForItem:v6])
  {
    v7 = [(HUDashboardViewController *)self _dismissPresentedViewControllersAnimated:v4];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke;
    v39[3] = &unk_277DBD700;
    objc_copyWeak(&v41, location);
    v40 = v6;
    v8 = [v7 flatMap:v39];

    objc_destroyWeak(&v41);
    goto LABEL_19;
  }

  v9 = [(HUItemCollectionViewController *)self itemManager];
  v7 = [v9 indexPathForItem:v6];

  if (v7)
  {
    v10 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    v11 = [v10 presentationContext];
    v12 = [v11 item];

    if (v12)
    {
      v13 = &unk_2824C0788;
      v14 = v12;
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

      if (v6)
      {
        v19 = v17;
      }

      else
      {
        v19 = 1;
      }

      if ((v19 & 1) == 0)
      {
        v30 = [v18 homeKitObject];
        v20 = [v30 uniqueIdentifier];
        v21 = [v6 homeKitObject];
        v22 = [v21 uniqueIdentifier];
        v23 = [v20 isEqual:v22];

        if (v23)
        {
          v24 = MEMORY[0x277D2C900];
          v25 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
          v26 = [v25 cardViewController];
          v8 = [v24 futureWithResult:v26];

LABEL_17:
          goto LABEL_18;
        }
      }
    }

    v18 = [(HUDashboardViewController *)self _dismissPresentedViewControllersAnimated:v4];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_3;
    v31[3] = &unk_277DC2A60;
    objc_copyWeak(&v34, location);
    v32 = v7;
    v33 = v6;
    v35 = v4;
    v8 = [v18 flatMap:v31];

    objc_destroyWeak(&v34);
    goto LABEL_17;
  }

  v27 = [v6 homeKitObject];
  v8 = [(HUDashboardViewController *)self _presentAccessoryControlsForHomeKitObject:v27 fromStatusItem:0 animated:1];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __99__HUDashboardViewController_HomeKitObjectPresenting___presentQuickControlsForHomeKitItem_animated___block_invoke_2;
  v36[3] = &unk_277DB7E90;
  v37 = 0;
  v38 = v6;
  v28 = [v8 addFailureBlock:v36];

  v12 = v37;
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
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v3 addHomeObserver:self];

  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v4 addHomeManagerObserver:self];

  v5 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v5 addAccessoryObserver:self];

  v6 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v6 addUserObserver:self];
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(HUDashboardViewController *)self context];
  v5 = [v4 home];

  if (v5)
  {
    v6 = [HUHomeEnergyManagerHelper alloc];
    v7 = [(HUDashboardViewController *)self context];
    v8 = [v7 home];
    v10 = [(HUHomeEnergyManagerHelper *)v6 initWithHome:v8];

    [(HUHomeEnergyManagerHelper *)v10 updateHomeEnergyAvailableFeaturesWithCompletionHandler:&__block_literal_global_834];
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = self;
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

- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = 138412802;
    v8 = self;
    v9 = 2080;
    v10 = "[HUDashboardViewController(Observer) homeDidUpdateHomeEnergyManagerEnabled:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@ %s) HUDashboardViewController ~~> Dispatching home: %@ onto main.", &v7, 0x20u);
  }

  [(HUDashboardViewController *)self _updateBarButtons];
  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  [(HUDashboardViewController *)self _updateBarButtons:a3];

  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  [(HUDashboardViewController *)self _updateBarButtons:a3];

  [(HUDashboardViewController *)self _updateHomeEnergyIndicatorVisibility];
}

- (void)home:(id)a3 didUpdateNameForRoom:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413058;
    v13 = self;
    v14 = 2080;
    v15 = "[HUDashboardViewController(Observer) home:didUpdateNameForRoom:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s home %@ room %@", &v12, 0x2Au);
  }

  objc_opt_class();
  v9 = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 updateItemSectionHeaderTitleForRoom:v7];
}

- (void)home:(id)a3 didRemoveRoom:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(HUDashboardViewController *)self context];
  v8 = [v7 room];
  v9 = [v8 uniqueIdentifier];
  v10 = [v6 uniqueIdentifier];

  if ([v9 hmf_isEqualToUUID:v10])
  {
    v11 = [(HUDashboardViewController *)self viewIsFullyVisible];

    if (!v11)
    {
      goto LABEL_6;
    }

    v7 = [(HUDashboardViewController *)self _dashboardNavigator];
    v12 = [v7 showHome:v13];
  }

  else
  {
  }

LABEL_6:
}

- (void)homeDidUpdateWallpaper:(id)a3
{
  v10 = a3;
  v4 = [(HUDashboardViewController *)self context];
  v5 = [v4 room];
  if (v5)
  {
  }

  else
  {
    v6 = [(HUDashboardViewController *)self context];
    v7 = [v6 home];
    v8 = [v7 isEqual:v10];

    if (!v8)
    {
      goto LABEL_6;
    }

    v4 = [(HUDashboardViewController *)self wallpaperView];
    v9 = [v4 refreshWallpaperForHomeKitObject:v10 withAnimation:1];
  }

LABEL_6:
}

- (void)home:(id)a3 didUpdateWallpaperForRoom:(id)a4
{
  v10 = a4;
  v5 = [(HUDashboardViewController *)self context];
  v6 = [v5 room];
  v7 = [v6 isEqual:v10];

  if (v7)
  {
    v8 = [(HUDashboardViewController *)self wallpaperView];
    v9 = [v8 refreshWallpaperForHomeKitObject:v10 withAnimation:1];
  }
}

- (void)home:(id)a3 didUpdateLocation:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUDashboardViewController *)self wallpaperView];
  v7 = [(HUDashboardViewController *)self context];
  v8 = [v7 room];
  if (v8)
  {
    v9 = [v6 refreshWallpaperForHomeKitObject:v8 withAnimation:1];
  }

  else
  {
    v10 = [(HUDashboardViewController *)self context];
    v11 = [v10 home];
    v12 = [v6 refreshWallpaperForHomeKitObject:v11 withAnimation:1];
  }

  v13 = [(HUDashboardViewController *)self context];
  v14 = [v13 home];
  if (v14)
  {
    v15 = v14;
    v16 = [(HUDashboardViewController *)self context];
    v17 = [v16 home];

    if (v17 == v5)
    {
      v18 = [HUHomeEnergyManagerHelper alloc];
      v19 = [(HUDashboardViewController *)self context];
      v20 = [v19 home];
      v21 = [(HUHomeEnergyManagerHelper *)v18 initWithHome:v20];

      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = self;
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
    v25 = self;
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

- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uuid];
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "homeKitDispatcher:manager:didChangeHome: home = %{public}@", &v15, 0xCu);
  }

  v9 = [MEMORY[0x277D14820] sharedManager];
  [v9 warmup];

  v10 = [(HUDashboardViewController *)self cameraItemModuleController];
  v11 = [v10 cameraController];

  if (v11)
  {
    v12 = [v11 playerViewController];
    v13 = [v12 presentingViewController];
    v14 = [v13 hu_dismissViewControllerAnimated:0];
  }
}

- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "<HHUDashboardViewController-homeManager:didUpdateHH2State> homeManager = %@ | didUpdateHH2State = %{BOOL}d", &v8, 0x12u);
  }

  [(HUDashboardViewController *)self _updateBlockoutView];
  [(HUDashboardViewController *)self _updateBarButtons];
}

- (id)presentRoomSettingsForRoom:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
LABEL_4:
    v7 = [(HUDashboardViewController *)self _presentRoomEditorForRoom:v5];

    goto LABEL_5;
  }

  v6 = [(HUDashboardViewController *)self context];
  v5 = [v6 room];

  if (v5)
  {
    goto LABEL_4;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "HUDashboardViewController: room not provided for settings presentation", v10, 2u);
  }

  v7 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_5:

  return v7;
}

- (id)_presentRoomEditorForRoom:(id)a3
{
  v4 = MEMORY[0x277D149D8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(HUItemCollectionViewController *)self itemManager];
  v8 = [v7 home];
  v9 = [v6 initWithExistingObject:v5 inHome:v8];

  v10 = [[HUEditRoomViewController alloc] initWithRoomBuilder:v9 presentationDelegate:self addRoomDelegate:0];
  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  [v11 setModalPresentationStyle:2];
  v12 = [(UIViewController *)self hu_presentPreloadableViewController:v11 animated:1];

  return v12;
}

- (void)editRoomViewControllerDidFinish:(id)a3 withNewRoom:(id)a4
{
  v8 = a4;
  if (v8)
  {
    v5 = [(HUDashboardViewController *)self _dashboardNavigator];
    v6 = [v5 showRoom:v8];
  }

  v7 = [(HUDashboardViewController *)self _dashboardNavigator];
  [v7 dismissViewController];
}

- (void)_setUpNavigationBar
{
  v3 = [(HUDashboardViewController *)self navigationItem];
  [v3 setLeftItemsSupplementBackButton:1];

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
  v3 = [(HUDashboardViewController *)self energyIndicatorViewController];

  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:_clearEnergyIndicator]", v6, 2u);
    }

    [(HUDashboardViewController *)self setEnergyIndicatorViewController:0];
    v5 = [(HUDashboardViewController *)self navigationItem];
    [v5 _setLargeTitleAccessoryView:0 alignToBaseline:0];

    [(HUDashboardViewController *)self _updateHomeEnergyTipVisibility];
  }
}

- (void)_updateHomeEnergyIndicatorVisibility
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(HUDashboardViewController *)self context];
  v4 = [v3 home];
  v5 = [v4 hf_isHomeEnergyHomeEmpty];

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = [(HUDashboardViewController *)self context];
  v7 = [v6 home];
  v8 = [v7 hf_isGridForecastVisible];

  v9 = [(HUDashboardViewController *)self energyIndicatorViewController];

  if (!v9)
  {
    v12 = [(HUDashboardViewController *)self context];
    v13 = [v12 home];
    v14 = [v13 hf_isGridForecastSupported];

    v15 = [(HUDashboardViewController *)self context];
    v16 = [v15 allowsEnergyIndicator];

    v17 = v14 & v16;
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v36 = v17 & v8;
      v37 = 1024;
      v38 = v16 & 1;
      v39 = 1024;
      v40 = v8;
      v41 = 1024;
      v42 = v17;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "[HUDashboardViewController:_updateHomeEnergyIndicatorVisibility] Indicator visibility: %{BOOL}d (contextAllows = %{BOOL}d, showGridForecast = %{BOOL}d, home can show indicator %{BOOL}d)", buf, 0x1Au);

      if ((v17 & v8) != 1)
      {
        return;
      }
    }

    else
    {

      if ((v17 & v8 & 1) == 0)
      {
        return;
      }
    }

    v19 = [(HUDashboardViewController *)self context];
    v20 = [v19 home];
    v21 = [HUEnergyIndicatorAccessoryViewWrapper createEnergyIndicatorViewWithHome:v20];
    [(HUDashboardViewController *)self setEnergyIndicatorViewController:v21];

    v22 = [(HUDashboardViewController *)self energyIndicatorViewController];
    v23 = [v22 view];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [HUEnergyIndicatorAccessoryView alloc];
    v25 = [(HUDashboardViewController *)self energyIndicatorViewController];
    v26 = [v25 view];
    v27 = [(HUEnergyIndicatorAccessoryView *)v24 initWithEnergyIndicator:v26];
    [(HUDashboardViewController *)self setEnergyAccessoryView:v27];

    v28 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_homeEnergyNavigationBarIndicatorTapped_];
    v29 = [(HUDashboardViewController *)self energyAccessoryView];
    [v29 addGestureRecognizer:v28];

    v30 = [(HUDashboardViewController *)self energyAccessoryView];
    [v30 setUserInteractionEnabled:1];

    v31 = [(HUDashboardViewController *)self navigationItem];
    v32 = [(HUDashboardViewController *)self energyAccessoryView];
    [v31 _setLargeTitleAccessoryView:v32 alignToBaseline:0];

    v33 = [(HUDashboardViewController *)self navigationItem];
    [v33 _setSupportsTwoLineLargeTitles:1];

    [(HUDashboardViewController *)self _updateHomeEnergyTipVisibility];
    return;
  }

  if ((v8 & 1) == 0)
  {
LABEL_7:

    [(HUDashboardViewController *)self _clearEnergyIndicator];
  }

  else
  {
    v34 = [(HUDashboardViewController *)self energyIndicatorViewController];
    v10 = [(HUDashboardViewController *)self context];
    v11 = [v10 home];
    [HUEnergyIndicatorAccessoryViewWrapper updateWithViewController:v34 with:v11];
  }
}

- (void)_updateHomeEnergyTipVisibility
{
  v3 = [(HUDashboardViewController *)self context];
  v4 = [v3 home];
  if ([v4 hf_isGridForecastEnabled])
  {
    v5 = [(HUDashboardViewController *)self context];
    v6 = [v5 allowsEnergyIndicator];
  }

  else
  {
    v6 = 0;
  }

  [(HUDashboardViewController *)self changeHomeEnergyTipShouldDisplayTo:v6];
}

- (void)homeEnergyNavigationBarIndicatorTapped:(id)a3
{
  [HUEnergyAnalytics saveTapEvent:55 withInteractionType:1];
  v8 = [(HUDashboardViewController *)self _dashboardNavigator];
  v4 = [MEMORY[0x277D14378] energyAccessoryTypeGroup];
  v5 = [(HUDashboardViewController *)self context];
  v6 = [v5 home];
  v7 = [v8 showAccessoryTypeGroup:v4 forHome:v6 animated:1];
}

- (void)_updateBarButtons
{
  v3 = [(HUDashboardViewController *)self _allNavigationBarButtons];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HUDashboardViewController_NavigationBar___updateBarButtons__block_invoke;
  v8[3] = &unk_277DC2BC8;
  v8[4] = self;
  v4 = [v3 na_filter:v8];

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
  v4 = [(HUDashboardViewController *)self navigationAddButton];
  [v3 na_safeAddObject:v4];

  v5 = [(HUDashboardViewController *)self navigationHomeButton];
  [v3 na_safeAddObject:v5];

  v6 = [(HUDashboardViewController *)self navigationEditDoneButton];
  [v3 na_safeAddObject:v6];

  v7 = [(HUDashboardViewController *)self navigationAnnounceButton];
  [v3 na_safeAddObject:v7];

  return v3;
}

- (BOOL)shouldHideNavigationBarButton:(id)a3
{
  v4 = a3;
  if (!v4 || ([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || (-[HUDashboardViewController isEditing](self, "isEditing") & 1) != 0 && (objc_msgSend(v4, "buttonIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"Done"), v7, !v8))
  {
    v5 = 1;
  }

  else
  {
    v9 = [v4 buttonIdentifier];
    v10 = [v9 isEqualToString:@"Done"];

    if (v10)
    {
      v11 = [(HUDashboardViewController *)self isEditing];
LABEL_11:
      v5 = v11 ^ 1;
      goto LABEL_4;
    }

    v12 = [v4 buttonIdentifier];
    v13 = [v12 isEqualToString:@"Announce"];

    if (v13)
    {
      v11 = [(HUDashboardViewController *)self shouldShowAnnounceButton];
      goto LABEL_11;
    }

    v14 = [v4 buttonIdentifier];
    v15 = [v14 isEqualToString:@"Add"];

    if (v15)
    {
      v16 = [(HUDashboardViewController *)self context];
      v17 = [v16 allowsAdding] ^ 1;

      v18 = [(HUDashboardViewController *)self context];
      v19 = [v18 home];
      v20 = [v19 hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion];

      v5 = v17 | v20;
    }

    else
    {
      v21 = [v4 buttonIdentifier];
      v22 = [v21 isEqualToString:@"HomesAndRooms"];

      if (v22)
      {
        v23 = [(HUDashboardViewController *)self context];
        if ([v23 allowsHomeNavigation])
        {
          v24 = [(HUDashboardViewController *)self context];
          v25 = [v24 home];
          if ([v25 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
          {
            v26 = [MEMORY[0x277D146E8] sharedDispatcher];
            v27 = [v26 homeManager];
            v28 = [v27 homes];
            v5 = [v28 count] == 1;
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
  v3 = [(HUDashboardViewController *)self context];
  if (![v3 allowsAnnounce])
  {
    v5 = 0;
LABEL_12:

    return v5;
  }

  v4 = [(HUItemCollectionViewController *)self itemManager];
  if ([v4 isEmptyDashboard])
  {
    v5 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v6 = [(HUDashboardViewController *)self context];
  v7 = [v6 home];
  v8 = [v7 hf_shouldBlockCurrentUserFromHome];

  if ((v8 & 1) == 0)
  {
    v9 = [(HUDashboardViewController *)self context];
    v10 = [v9 room];

    v11 = [(HUDashboardViewController *)self context];
    v3 = v11;
    if (v10)
    {
      v4 = [v11 room];
      v12 = [v4 hf_shouldShowAnnounceButtonForThisRoom];
    }

    else
    {
      v4 = [v11 home];
      v12 = [v4 hf_shouldShowAnnounceButtonForThisHome];
    }

    v5 = v12;
    goto LABEL_11;
  }

  return 0;
}

- (unint64_t)navigationBarEdgeForButton:(id)a3
{
  v4 = a3;
  if ([(HUDashboardViewController *)self shouldHideNavigationBarButton:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 buttonIdentifier];
    v7 = [v6 isEqualToString:@"Add"];

    if (v7 & 1) != 0 || ([v4 buttonIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"HomesAndRooms"), v8, (v9) || (objc_msgSend(v4, "buttonIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"Announce"), v10, (v11))
    {
      v5 = 8;
    }

    else
    {
      v13 = [v4 buttonIdentifier];
      v14 = [v13 isEqualToString:@"Done"];

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

- (id)navigationBarButtonIdentifierOrderForEdge:(unint64_t)a3
{
  if (a3 == 8)
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
  v2 = [(HUDashboardViewController *)self navigationController];
  if ([v2 conformsToProtocol:&unk_282556F78])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 dashboardNavigator];

  return v5;
}

- (void)_setNavigationButtons:(id)a3 forEdge:(unint64_t)a4
{
  v8 = a3;
  if (a4 == 8)
  {
    v7 = [(HUDashboardViewController *)self navigationItem];
    [v7 setRightBarButtonItems:v8];
  }

  else if (a4 == 2)
  {
    v7 = [(HUDashboardViewController *)self navigationItem];
    [v7 setLeftBarButtonItems:v8];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HUDashboardViewController.m" lineNumber:2908 description:@"-setNavigationButtons only supports UIRectEdgeLeft or UIRectEdgeRight"];
  }
}

- (id)_filterBarController
{
  objc_opt_class();
  v3 = [(HUDashboardViewController *)self navigationController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 filterBarController];

  return v6;
}

- (void)_updateFilterBarVisibility
{
  v3 = [(HUDashboardViewController *)self context];
  v4 = [v3 filterPresentationStyle];

  v5 = [(HUDashboardViewController *)self navigationItem];
  v6 = [v5 _bottomPalette];
  [v6 setHidden:v4 == 0];

  [(HUDashboardViewController *)self _updatePaletteHeight];
  v7 = [(HUDashboardViewController *)self _filterBarController];
  v8 = [v7 view];
  v9 = [v8 superview];
  v10 = [(HUDashboardViewController *)self collectionView];

  if (v9 == v10)
  {
    v11 = [(HUDashboardViewController *)self _filterBarController];
    v12 = [v11 view];
    [v12 setHidden:v4 == 0];

    if (v4)
    {
      v13 = [(HUDashboardViewController *)self navigationItem];
      v14 = [v13 _bottomPalette];
      [v14 preferredHeight];
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
    v3 = [(HUDashboardViewController *)self context];
    v4 = [v3 filterPresentationStyle];

    if (v4 == 3)
    {

      [(HUDashboardViewController *)self _setupFilterBarForPocketableFilterPresentationStyle];
    }

    else
    {
      v5 = [(HUDashboardViewController *)self _filterBarController];
      objc_initWeak(&location, self);
      v6 = [v5 hu_preloadContent];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__HUDashboardViewController_NavigationBar___setUpFilterBar__block_invoke;
      v9[3] = &unk_277DBC1A0;
      objc_copyWeak(&v11, &location);
      v7 = v5;
      v10 = v7;
      v8 = [v6 addCompletionBlock:v9];

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
  v3 = [(HUDashboardViewController *)self context];
  if ([v3 filterPresentationStyle])
  {
    v4 = [(HUDashboardViewController *)self _filterBarController];
    [v4 intrinsicHeight];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(HUDashboardViewController *)self navigationItem];
  v8 = [v7 _bottomPalette];
  [v8 preferredHeight];
  v10 = v9;

  if (v10 != v6)
  {
    v11 = [(HUDashboardViewController *)self navigationItem];
    v12 = [v11 _bottomPalette];
    [v12 setPreferredHeight:v6];

    if ([MEMORY[0x277D14CE8] isInternalInstall])
    {
      if (HFPreferencesBoolForKey())
      {
        v23 = [(HUDashboardViewController *)self context];
        if ([v23 filterPresentationStyle] == 3)
        {
          v13 = [(HUDashboardViewController(FilterBarPaletteHack) *)self palettePlaceholderView];
          [v13 frame];
          v15 = v14;

          if (v15 == v6)
          {
            return;
          }

          v16 = [(HUDashboardViewController(FilterBarPaletteHack) *)self palettePlaceholderView];
          [v16 frame];
          v18 = v17;
          v20 = v19;
          v22 = v21;

          v23 = [(HUDashboardViewController(FilterBarPaletteHack) *)self palettePlaceholderView];
          [v23 setFrame:{v18, v20, v22, v6}];
        }
      }
    }
  }
}

- (id)homeForNavigationBarButton:(id)a3
{
  v3 = [(HUDashboardViewController *)self context];
  v4 = [v3 home];

  return v4;
}

- (id)roomForNavigationBarButton:(id)a3
{
  v3 = [(HUDashboardViewController *)self context];
  v4 = [v3 room];

  return v4;
}

- (BOOL)shouldIncludeRoomsInHomeMenu
{
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v3 = [(HUDashboardViewController *)self context];
    v4 = [v3 home];
    if (([v4 hf_shouldBlockCurrentUserFromHome] & 1) == 0)
    {
      v5 = [(HUDashboardViewController *)self view];
      v6 = [v5 traitCollection];
      v7 = [v6 horizontalSizeClass] == 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  else
  {
    v3 = [(HUDashboardViewController *)self context];
    v4 = [v3 home];
    if (([v4 hf_shouldBlockCurrentUserFromHome] & 1) == 0)
    {
      v5 = [(HUDashboardViewController *)self navigationController];
      v6 = [v5 splitViewController];
      if (v6)
      {
        v8 = [(HUDashboardViewController *)self navigationController];
        v9 = [v8 splitViewController];
        v7 = [v9 isCollapsed];
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_10;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)statusItemsForNavigationBarButton:(id)a3 inHome:(id)a4
{
  v5 = a4;
  v6 = [(HUDashboardViewController *)self context];
  v7 = [v6 home];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = [(HUDashboardViewController *)self context];
    v10 = [v9 home];
    v11 = [v10 hf_shouldBlockCurrentUserFromHome];

    if (v11)
    {
      v12 = MEMORY[0x277CBEBF8];
      goto LABEL_7;
    }

    v6 = [(HUItemCollectionViewController *)self itemManager];
    v7 = [v6 homeMenuStatusItems];
    v13 = [v7 allObjects];
    v14 = [(HUItemCollectionViewController *)self itemManager];
    v15 = [v14 statusItemModule];
    v16 = [v15 _itemComparator];
    v12 = [v13 sortedArrayUsingComparator:v16];
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
  v3 = [(HUDashboardViewController *)self navigationController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v3 = [(HUDashboardViewController *)self context];
  v4 = [v3 allowsEditing];

  if (!v4)
  {
    return 0;
  }

  v5 = [(HUDashboardViewController *)self context];
  v6 = [v5 home];
  v7 = [v6 hf_shouldBlockCurrentUserFromHome];

  if (v7)
  {
    return 0;
  }

  v8 = [(HUDashboardViewController *)self context];
  v9 = [v8 home];
  v10 = [v9 hf_currentUserIsAdministrator];

  if (!v10)
  {
    return 0;
  }

  v11 = [(HUItemCollectionViewController *)self itemManager];
  v12 = [v11 isEmptyDashboard];

  return v12 ^ 1;
}

- (NSString)editActionTitle
{
  v2 = [(HUDashboardViewController *)self context];
  v3 = [v2 menuEditActionTitle];

  return v3;
}

- (NSString)editActionTitleLocalizationKey
{
  v2 = [(HUDashboardViewController *)self context];
  v3 = [v2 menuEditActionTitleLocalizationKey];

  return v3;
}

- (void)sendContextMenuMetricsWithTitleLocalizationKey:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v11 = [v4 dictionary];
  [v11 na_safeSetObject:self forKey:*MEMORY[0x277D13588]];
  v6 = [(HUDashboardViewController *)self contextTypeDescriptionForAnalytics];
  if ([v6 length])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"%@-%@", v9, v6];
  }

  else
  {
    v10 = 0;
  }

  [v11 na_safeSetObject:v10 forKey:*MEMORY[0x277D13590]];
  [v11 na_safeSetObject:v5 forKey:*MEMORY[0x277D134F0]];

  [MEMORY[0x277D143D8] sendEvent:36 withData:v11];
}

- (void)_updateAnnounceNotificationSettingsIfNeeded
{
  v3 = [MEMORY[0x277D147A8] sharedDispatcher];
  v4 = [v3 getAuthorizationStatusAsync];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HUDashboardViewController_Announce___updateAnnounceNotificationSettingsIfNeeded__block_invoke;
  v6[3] = &unk_277DBE7E0;
  v6[4] = self;
  v5 = [v4 addCompletionBlock:v6];
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

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  if (-[HUDashboardViewController isEditing](self, "isEditing") & 1) != 0 || ([MEMORY[0x277D14670] isHomeControlService])
  {
    v10 = 0;
    goto LABEL_54;
  }

  v55 = a2;
  v11 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
  v12 = [(HUDashboardViewController *)self presentationCoordinator:v11 contextForPresentationAtPoint:x, y];

  v59 = v12;
  v13 = [v12 item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v57 = [(HUDashboardViewController *)self _hasDetailViewControllerForItem:v13];
  objc_opt_class();
  v15 = v13;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v17 actionSetItemStyle];
  v66 = v18 == 2;

  v19 = [(HUDashboardViewController *)self context];
  v20 = [v19 home];
  v21 = [v20 hf_currentUserIsAdministrator];

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

  v26 = [v25 homeKitObject];
  v27 = &unk_28259DF78;
  if ([v26 conformsToProtocol:v27])
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v58 = v25;
  v30 = [v25 homeKitObject];
  v31 = &unk_28259DE80;
  if ([v30 conformsToProtocol:v31])
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  v34 = 0;
  if (v21)
  {
    v67 = 0;
    if (v29)
    {
      v35 = [v29 hf_effectiveShowInHomeDashboard];
      v36 = [v29 hf_effectiveShowInHomeDashboard];
      v34 = (v18 != 2) & ~v35;
      if (v18 == 2)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36;
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
    v38 = v21;
  }

  else
  {
    v38 = 0;
  }

  if (v38 != 1)
  {
    v61 = 0;
LABEL_33:
    v60 = 0;
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

  v60 = [v33 hf_isVisibleInHomeStatus];
LABEL_34:
  v62 = isKindOfClass & 1;
  v64 = v33;
  v65 = v29;
  v56 = v21;
  if (v21)
  {
    v39 = [(HUDashboardViewController *)self context];
    if ([v39 allowsEditing])
    {
      LOBYTE(v21) = [(HUDashboardViewController *)self canReorderItemAtIndexPath:v9];
    }

    else
    {
      LOBYTE(v21) = 0;
    }

    v40 = v57;
  }

  else
  {
    v40 = v57;
    v66 = 0;
  }

  v41 = [(HUItemCollectionViewController *)self itemManager];
  v42 = [v41 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v9, "section")}];

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

  v47 = [(HUDashboardViewController *)self layoutManager];
  v48 = [(HUDashboardViewController *)self context];
  v49 = [v47 isAdaptiveTileStyleInSectionIdentifier:v42 context:v48];

  v50 = [MEMORY[0x277D14CE8] isAMac] & v56;
  if (!v46)
  {
    v50 = 0;
  }

  v51 = v50 & v49;
  v52 = v21;
  if (((v62 | v40 | v63) & 1) != 0 || (v67 & 1) != 0 || (v61 & 1) != 0 || (v60 & 1) != 0 || (v21 & 1) != 0 || v66 || (v10 = 0, v51))
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
    v80 = v60;
    v81 = v62;
    v72 = v43;
    v82 = v40;
    v73 = v9;
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

- (void)_sendContextMenuMetricsWithContext:(id)a3 title:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v17 = [v6 dictionary];
  v9 = [v8 item];
  [v17 na_safeSetObject:v9 forKey:*MEMORY[0x277D13538]];

  v10 = [v8 sourceViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 topViewController];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;

    v10 = v14;
  }

  [v17 na_safeSetObject:v10 forKey:*MEMORY[0x277D13588]];
  [v17 na_safeSetObject:v7 forKey:*MEMORY[0x277D134F0]];

  v15 = [(HUDashboardViewController *)self context];
  v16 = [v15 typeDescriptionForAnalytics];
  [v17 na_safeSetObject:v16 forKey:*MEMORY[0x277D134F8]];

  [MEMORY[0x277D143D8] sendEvent:36 withData:v17];
}

- (BOOL)_shouldSetupFilterBarForPocketableFilterPresentationStyle
{
  v3 = [(HUDashboardViewController *)self navigationItem];
  v4 = [v3 _bottomPalette];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(HUDashboardViewController *)self navigationController];
    v7 = [v6 viewControllers];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 navigationItem];
    v10 = [v9 _bottomPalette];
    v5 = v10 != 0;
  }

  v11 = [(HUDashboardViewController *)self context];
  v12 = [v11 filterPresentationStyle];

  if (v12 == 3)
  {
    v13 = [(HUDashboardViewController *)self navigationItem];
    v14 = [v13 _bottomPalette];

    v15 = [v14 contentView];
    v16 = [(HUDashboardViewController *)self _filterBarController];
    v17 = [v16 view];

    v18 = [(HUDashboardViewController *)self _filterBarController];
    v19 = [v18 view];
    v20 = [v19 superview];
    v21 = [(HUDashboardViewController *)self collectionView];

    v23 = !v5 || v15 != v17 && v20 != v21;
  }

  else
  {
    v24 = [(HUDashboardViewController *)self context];
    v25 = [v24 filterPresentationStyle];

    if (v25 == 2)
    {
      v26 = [(HUDashboardViewController *)self navigationItem];
      v27 = [v26 _bottomPalette];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v30 = [(HUDashboardViewController *)self navigationController];
        v31 = [v30 viewControllers];
        v32 = [v31 objectAtIndexedSubscript:0];
        v33 = [v32 navigationItem];
        v29 = [v33 _bottomPalette];
      }

      v34 = [v29 contentView];
      v35 = [(HUDashboardViewController *)self _filterBarController];
      v36 = [v35 view];

      v23 = v34 != v36 || !v5;
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
  v3 = [(HUDashboardViewController *)self _filterBarController];
  objc_initWeak(&location, self);
  v4 = [v3 hu_preloadContent];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__HUDashboardViewController_FilterBarPaletteHack___setupFilterBarForPocketableFilterPresentationStyle__block_invoke;
  v6[3] = &unk_277DBC2C8;
  objc_copyWeak(&v7, &location);
  v5 = [v4 addCompletionBlock:v6];

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
  v9 = [(HUDashboardViewController *)self context];
  if ([v9 filterPresentationStyle] == 3)
  {
    v3 = [(HUDashboardViewController *)self _filterBarController];
    v4 = [v3 view];
    v5 = [v4 superview];
    v6 = [(HUDashboardViewController *)self collectionView];

    if (v5 == v6)
    {
      v7 = [(HUDashboardViewController *)self navigationController];
      v8 = [v7 topViewController];

      if (v8 == self)
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
  v3 = [(HUDashboardViewController *)self navigationItem];
  v4 = [v3 _bottomPalette];
  [v4 frame];
  v6 = v5;

  v7 = [(HUDashboardViewController *)self _filterBarController];
  [v7 intrinsicHeight];
  v9 = v8;
  v10 = -10.0 - v6;
  v11 = [v7 view];
  [v11 frame];
  if (CGFloatNearlyEqualToFloatWithTolerance())
  {
    v12 = [v7 view];
    [v12 frame];
    v13 = CGFloatNearlyEqualToFloatWithTolerance();

    if (v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v14 = [(HUDashboardViewController *)self view];
  [v14 frame];
  v16 = v15;

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v7 view];
    [v18 frame];
    v20 = v19;
    v21 = [v7 view];
    [v21 frame];
    v23 = v22;
    v24 = [v7 view];
    [v24 frame];
    v26 = v25;
    v27 = [v7 view];
    [v27 frame];
    v52 = 134220032;
    v53 = self;
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

  v29 = [v7 view];
  [v29 frame];
  v31 = v30;

  v32 = [v7 view];
  [v32 frame];
  v34 = v33;

  v35 = [v7 view];
  [v35 frame];
  v37 = v36;

  v38 = [v7 view];
  [v38 setFrame:{0.0, v10, v16, v9}];

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
        v41 = [(HUDashboardViewController *)self collectionView];
        [v41 contentOffset];
        v52 = 134218496;
        v53 = self;
        v54 = 2048;
        v55 = v42;
        v56 = 2048;
        v57 = v10 - v34;
        _os_log_impl(&dword_20CEB6000, v40, OS_LOG_TYPE_INFO, "[%p] Adjusting content offset after updating filter bar frame: %.2f by %.2f", &v52, 0x20u);
      }

      v43 = [(HUDashboardViewController *)self collectionView];
      [v43 contentOffset];
      v45 = v44;
      v47 = v46;

      v48 = [(HUDashboardViewController *)self collectionView];
      [v48 setContentOffset:{v45, v39 + v47}];
    }
  }

  v49 = [(HUDashboardViewController *)self _filterBarController];
  v50 = [v49 view];
  v51 = [v50 isHidden];

  if (v51)
  {
    [(HUDashboardViewController *)self _updateFilterBarVisibility];
  }

LABEL_17:
}

- (void)_updateFilterBarViewIfNeeded
{
  v3 = [(HUDashboardViewController *)self context];
  v4 = [v3 filterPresentationStyle];

  if (v4 == 3)
  {
    v5 = [(HUDashboardViewController *)self navigationItem];
    v6 = [v5 _bottomPalette];
    v7 = [v6 contentView];
    v8 = [(HUDashboardViewController *)self _filterBarController];
    v9 = [v8 view];

    if (v7 == v9)
    {
      v28 = [(HUDashboardViewController(FilterBarPaletteHack) *)self palettePlaceholderView];
      v29 = [(HUDashboardViewController *)self navigationItem];
      [v29 _setBottomPalette:v28];

      [(HUDashboardViewController *)self _addFilterBarToDashboardView];
    }

    else
    {
      v10 = [(HUDashboardViewController *)self _filterBarController];
      v11 = [v10 view];
      v12 = [v11 superview];
      v13 = [(HUDashboardViewController *)self collectionView];

      if (v12 == v13)
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
    v15 = [(HUDashboardViewController *)self context];
    v16 = [v15 filterPresentationStyle];

    if (v16 == 2)
    {
      v17 = [(HUDashboardViewController *)self navigationItem];
      v18 = [v17 _bottomPalette];
      v19 = [v18 contentView];
      v20 = [(HUDashboardViewController *)self _filterBarController];
      v21 = [v20 view];

      if (v19 != v21)
      {
        v22 = [(HUDashboardViewController *)self navigationController];
        v23 = [v22 viewControllers];
        v24 = [v23 count];

        if (v24 < 2)
        {
          v30 = [(HUDashboardViewController *)self navigationItem];
        }

        else
        {
          v25 = [(HUDashboardViewController *)self navigationController];
          v26 = [v25 viewControllers];
          v27 = [v26 objectAtIndexedSubscript:0];
          v30 = [v27 navigationItem];
        }

        [(HUDashboardViewController *)self _addFilterBarToBottomPaletteForNavigationItem:v30];
      }
    }
  }
}

- (void)_adjustTopPocketInsetsForBottomPaletteWithHeight:(double)a3
{
  v5 = [(HUDashboardViewController *)self navigationItem];
  v6 = [v5 _bottomPalette];
  [v6 setHidden:1];

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v7 = [(HUDashboardViewController *)self collectionView];
    [v7 _setPocketInsets:{-a3, 0.0, 0.0, 0.0}];
  }
}

- (void)_addFilterBarToDashboardView
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v16 = 134217984;
    v17 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_INFO, "[%p] Adding filter bar to dashboard view", &v16, 0xCu);
  }

  [(HUDashboardViewController *)self _updateFilterBarFrame];
  if (self)
  {
    v4 = [(HUDashboardViewController *)self _filterBarController];
    v5 = [v4 view];

    v6 = [v5 effectiveUserInterfaceLayoutDirection];
    v7 = [v5 layer];
    v8 = [v7 flipsHorizontalAxis];

    if (v6)
    {
      if ((v8 & 1) == 0)
      {
        v9 = HFLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v16 = 134217984;
          v17 = self;
          _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_INFO, "[%p] Manually applying flipsHorizontalAxis=YES to filter bar", &v16, 0xCu);
        }

        goto LABEL_10;
      }
    }

    else if (v8)
    {
LABEL_10:
      v10 = [v5 layer];
      [v10 setFlipsHorizontalAxis:v6 != 0];
    }
  }

  v11 = [(HUDashboardViewController *)self collectionView];
  v12 = [(HUDashboardViewController *)self _filterBarController];
  v13 = [v12 view];
  [v11 insertSubview:v13 atIndex:0];

  [(HUDashboardViewController *)self _updatePaletteHeight];
  v14 = [(HUDashboardViewController *)self navigationItem];
  v15 = [v14 _bottomPalette];
  [v15 preferredHeight];
  [(HUDashboardViewController *)self _adjustTopPocketInsetsForBottomPaletteWithHeight:?];
}

- (void)_addFilterBarToBottomPaletteForNavigationItem:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 134217984;
    v17 = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_INFO, "[%p] Adding filter bar to palette", &v16, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277D76118]);
  v7 = [(HUDashboardViewController *)self _filterBarController];
  v8 = [v7 view];
  v9 = [v6 initWithContentView:v8];

  [v9 _setLayoutPriority:2];
  [v9 setUserInteractionEnabled:1];
  [v9 setHidden:0];
  if ([MEMORY[0x277D14CE8] isInternalInstall] && HFPreferencesBoolForKey())
  {
    v10 = [MEMORY[0x277D75348] colorWithHue:drand48() saturation:1.0 brightness:1.0 alpha:0.25];
    [v9 setBackgroundColor:v10];
  }

  [v4 _setBottomPalette:v9];
  if (self)
  {
    v11 = [(HUDashboardViewController *)self _filterBarController];
    v12 = [v11 view];

    v13 = [v12 layer];
    v14 = [v13 flipsHorizontalAxis];

    if (v14)
    {
      v15 = [v12 layer];
      [v15 setFlipsHorizontalAxis:0];
    }
  }
}

- (void)_prepareBottomPaletteForTransitionToContext:(id)a3 toViewController:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 filterPresentationStyle];
  if (self == v7 || v8 != 2)
  {
    v10 = [v6 filterPresentationStyle];
    if (self == v7 && v10 == 3)
    {
      v11 = [(HUDashboardViewController *)v7 collectionView];
      [v11 contentOffset];
      v13 = v12;

      if (v13 > 0.0)
      {
        [(HUDashboardViewController *)self _addFilterBarToDashboardView];
      }
    }
  }

  else
  {
    v9 = [(HUDashboardViewController *)self context];
    if ([v9 filterPresentationStyle] == 3)
    {
    }

    else
    {
      v14 = [(HUDashboardViewController *)self context];
      v15 = [v14 filterPresentationStyle];

      if (v15)
      {
        goto LABEL_13;
      }
    }

    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = self;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_INFO, "[%p] Preparing to move filter bar to palette", &v18, 0xCu);
    }

    v17 = [(HUDashboardViewController *)self navigationItem];
    [(HUDashboardViewController *)self _addFilterBarToBottomPaletteForNavigationItem:v17];
  }

LABEL_13:
}

- (void)_sendFilterBarViewToBackIfNeeded
{
  v3 = [(HUDashboardViewController *)self context];
  v4 = [v3 filterPresentationStyle];

  if (v4 == 3)
  {
    v7 = [(HUDashboardViewController *)self collectionView];
    v5 = [(HUDashboardViewController *)self _filterBarController];
    v6 = [v5 view];
    [v7 sendSubviewToBack:v6];
  }
}

@end
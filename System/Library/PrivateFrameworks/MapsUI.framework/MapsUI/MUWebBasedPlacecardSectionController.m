@interface MUWebBasedPlacecardSectionController
- (BOOL)isTesting;
- (BOOL)webViewLoading;
- (UIView)sectionView;
- (_TtC6MapsUI36MUWebBasedPlacecardSectionController)initWithMapItem:(id)a3;
- (_TtC6MapsUI36MUWebBasedPlacecardSectionController)initWithMapItem:(id)a3 placeActionDispatcher:(id)a4 bridge:(id)a5 configuration:(id)a6;
- (_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration)configuration;
- (_TtP6MapsUI44MUWebBasedPlacecardSectionControllerDelegate_)sectionDelegate;
- (double)bottomInset;
- (double)topInset;
- (float)cardExpansionProgress;
- (float)cardExpansionProgressDefaultValue;
- (id)generateReportWithResult:(id)a3 testName:(id)a4;
- (void)ETAProviderUpdated:(id)a3;
- (void)addTestingObserverIfNeeded;
- (void)callBridgeMethodForExpansionProgressWithProgress:(float)a3;
- (void)cleanPlacecard;
- (void)didReceiveMessageFromWebContentViewController:(id)a3 replyHandler:(id)a4;
- (void)didSelectMenuItemWithItemId:(id)a3 menuItemId:(id)a4 menuType:(int64_t)a5;
- (void)didTapCloseButtonIn:(id)a3;
- (void)didUpdateHeight;
- (void)evChargerAvailabilityProvider:(id)a3 didUpdateAvailability:(id)a4;
- (void)fetchWebScrollFPSWithCompletion:(id)a3;
- (void)handleCardExpansionForVerifiedHeaderWithProgress:(float)a3;
- (void)handleCardExpansionWithProgress:(float)a3 height:(float)a4;
- (void)handleNativeUITapFor:(int64_t)a3;
- (void)loadPlaceCardWithUrl:(id)a3;
- (void)loadWebViewDidFail;
- (void)loadWebViewFromResourceURL;
- (void)postNotificationForContentLoadWithEvent:(int64_t)a3;
- (void)presentDebugPanel;
- (void)reloadDataWithMapItem:(id)a3 configuration:(id)a4;
- (void)removeTestingObserverIfNeeded;
- (void)runOnMainThread:(id)a3;
- (void)runScrollingTestWithNote:(id)a3;
- (void)setBottomInset:(double)a3;
- (void)setCardExpansionProgress:(float)a3;
- (void)setConfiguration:(id)a3;
- (void)setTopInset:(double)a3;
- (void)setupWebContentViewController;
- (void)updateDirectionsMetadata;
- (void)updateDownloadButton;
- (void)updateETAProvider;
- (void)updateEVChargerWithAvailability:(id)a3;
- (void)updatePlacecard;
- (void)updateUserData;
- (void)updateUserPreferences;
- (void)webBasedPlacecardVC:(id)a3 didScroll:(id)a4;
- (void)webViewFinishedLoading;
- (void)webViewIsCurrent:(BOOL)a3;
@end

@implementation MUWebBasedPlacecardSectionController

- (_TtP6MapsUI44MUWebBasedPlacecardSectionControllerDelegate_)sectionDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration)configuration
{
  v3 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5734640(&selRef_removeObserver_, MUEVChargerAvailabilityProvider.unregisterObserver(_:));
  v6 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(v5 + v6) = v4;
  v8 = v4;

  sub_1C5734640(&selRef_addObserver_, MUEVChargerAvailabilityProvider.registerObserver(_:));
}

- (BOOL)webViewLoading
{
  v2 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  v3 = self;
  v4 = v2;
  v5 = sub_1C566AF74();

  LOBYTE(v4) = [v5 isLoading];
  return v4;
}

- (double)topInset
{
  v3 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_topInset;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTopInset:(double)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_topInset;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)bottomInset
{
  v3 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bottomInset;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBottomInset:(double)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bottomInset;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (float)cardExpansionProgress
{
  v2 = self;
  v3 = sub_1C5725A7C();

  return v3;
}

- (void)setCardExpansionProgress:(float)a3
{
  v3 = (self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress);
  *v3 = a3;
  *(v3 + 4) = 0;
}

- (float)cardExpansionProgressDefaultValue
{
  v2 = [objc_opt_self() isMapsProcess];
  result = 1.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (_TtC6MapsUI36MUWebBasedPlacecardSectionController)initWithMapItem:(id)a3 placeActionDispatcher:(id)a4 bridge:(id)a5 configuration:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_1C57347EC(v9, v10, v11, v12);

  return v13;
}

- (void)reloadDataWithMapItem:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1C5726068(v6, v7);
}

- (_TtC6MapsUI36MUWebBasedPlacecardSectionController)initWithMapItem:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setupWebContentViewController
{
  v2 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController) + OBJC_IVAR____TtC6MapsUI33MUWebBasedPlacecardViewController_viewControllerDelegate;
  swift_beginAccess();
  *(v2 + 8) = &protocol witness table for MUWebBasedPlacecardSectionController;
  swift_unknownObjectWeakAssign();
}

- (void)loadWebViewFromResourceURL
{
  v2 = self;
  sub_1C5726670();
}

- (void)loadPlaceCardWithUrl:(id)a3
{
  v4 = sub_1C584EA90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C584EA50();
  v10 = self;
  sub_1C5726794(v9);

  (*(v5 + 8))(v9, v4);
}

- (void)webViewFinishedLoading
{
  v2 = self;
  sub_1C5726B88();
}

- (void)didReceiveMessageFromWebContentViewController:(id)a3 replyHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_1C584EAE0();
  v10 = v9;

  _Block_copy(v6);
  sub_1C5739208(v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1C566DD84(v8, v10);
}

- (void)loadWebViewDidFail
{
  v2 = self;
  MUWebBasedPlacecardSectionController.loadWebViewDidFail()();
}

- (void)callBridgeMethodForExpansionProgressWithProgress:(float)a3
{
  v3 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  v5 = self;
  v4 = v3;
  sub_1C566C6D4();
}

- (void)updatePlacecard
{
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_1C569789C(v7);
  sub_1C569A8D8(8);
  v9 = *(v8 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v7, 0, 0);

  v10 = *(v8 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
  sub_1C5718EA0();
  sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

- (void)cleanPlacecard
{
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_1C569789C(v7);
  sub_1C569A8D8(9);
  v9 = *(v8 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v7, 0, 0);

  sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

- (void)handleNativeUITapFor:(int64_t)a3
{
  v4 = self;
  MUWebBasedPlacecardSectionController.handleNativeUITap(for:)(a3);
}

- (void)updateUserData
{
  v2 = self;
  MUWebBasedPlacecardSectionController.updateUserData()();
}

- (void)updateUserPreferences
{
  v2 = self;
  MUWebBasedPlacecardSectionController.updateUserPreferences()();
}

- (void)updateDirectionsMetadata
{
  v2 = self;
  MUWebBasedPlacecardSectionController.updateDirectionsMetadata()();
}

- (void)updateETAProvider
{
  v2 = self;
  sub_1C5731EE8();
}

- (void)handleCardExpansionWithProgress:(float)a3 height:(float)a4
{
  v6 = self;
  MUWebBasedPlacecardSectionController.handleCardExpansion(progress:height:)(a3, a4);
}

- (void)handleCardExpansionForVerifiedHeaderWithProgress:(float)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x1B0);
  v6 = self;
  v4(a3);
  *&v5 = a3;
  [(MUWebBasedPlacecardSectionController *)v6 callBridgeMethodForExpansionProgressWithProgress:v5];
}

- (void)updateEVChargerWithAvailability:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5732754(v4);
}

- (void)updateDownloadButton
{
  v2 = self;
  MUWebBasedPlacecardSectionController.updateDownloadButton()();
}

- (void)runOnMainThread:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1C5742764(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)ETAProviderUpdated:(id)a3
{
  if (a3)
  {
    [(MUWebBasedPlacecardSectionController *)self updateETAProvider];
  }
}

- (void)evChargerAvailabilityProvider:(id)a3 didUpdateAvailability:(id)a4
{
  v5 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability);
  *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability) = a4;
  v6 = a4;
  v7 = self;

  [(MUWebBasedPlacecardSectionController *)v7 updateEVChargerWithAvailability:v6];
}

- (void)didTapCloseButtonIn:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher);
  type metadata accessor for MUPlaceActionDispatcher.CloseAction();
  v5 = self;
  v6 = MUPlaceActionDispatcher.CloseAction.__allocating_init()();
  type metadata accessor for MUPlaceActionFeedbackEnvironment();
  v7 = sub_1C56433CC(0);
  MUPlaceActionDispatcher.performAction(for:environment:completion:)(v6, v7, 0, 0);
}

- (void)didUpdateHeight
{
  v3 = self;
  v2 = [(MUPlaceSectionController *)v3 delegate];
  if (v2)
  {
    [(MUPlaceSectionControllerDelegate *)v2 placeSectionControllerRequestsLayoutChange:v3];
    swift_unknownObjectRelease();
  }
}

- (void)didSelectMenuItemWithItemId:(id)a3 menuItemId:(id)a4 menuType:(int64_t)a5
{
  v7 = sub_1C584F660();
  v9 = v8;
  v10 = sub_1C584F660();
  v12 = v11;
  v13 = self;
  v14 = sub_1C57042D8(a5);
  if (v14 == 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  sub_1C572DC6C(v7, v9, v10, v12, v15);
}

- (void)webViewIsCurrent:(BOOL)a3
{
  v4 = self;
  MUWebBasedPlacecardSectionController.webViewIsCurrent(_:)(a3);
}

- (void)webBasedPlacecardVC:(id)a3 didScroll:(id)a4
{
  v5 = *((*MEMORY[0x1E69E7D40] & *self) + 0xB0);
  v6 = a4;
  v8 = self;
  v7 = v5();
  if (v7)
  {
    [v7 sectionController:v8 didScroll:v6];
    swift_unknownObjectRelease();
  }
}

- (UIView)sectionView
{
  v2 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
  v3 = self;
  result = [v2 view];
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)presentDebugPanel
{
  v2 = self;
  sub_1C5733F8C();
}

- (BOOL)isTesting
{
  v2 = *MEMORY[0x1E69DDA98];
  if (*MEMORY[0x1E69DDA98])
  {
    LOBYTE(v2) = [v2 isRunningTest];
  }

  else
  {
    __break(1u);
  }

  return v2;
}

- (void)postNotificationForContentLoadWithEvent:(int64_t)a3
{
  v4 = self;
  sub_1C577CC9C(a3);
}

- (void)addTestingObserverIfNeeded
{
  v3 = self;
  if ([(MUWebBasedPlacecardSectionController *)v3 isTesting])
  {
    v2 = [objc_opt_self() defaultCenter];
    [v2 addObserver:v3 selector:sel_runScrollingTestWithNote_ name:@"MUWebBasedPlacecardScrollTestNotification" object:0];
  }
}

- (void)removeTestingObserverIfNeeded
{
  v3 = self;
  if ([(MUWebBasedPlacecardSectionController *)v3 isTesting])
  {
    v2 = [objc_opt_self() defaultCenter];
    [v2 removeObserver:v3 name:@"MUWebBasedPlacecardScrollTestNotification" object:0];
  }
}

- (void)runScrollingTestWithNote:(id)a3
{
  v4 = sub_1C584E7C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C584E790();
  v10 = self;
  sub_1C577CF90(v9);

  (*(v5 + 8))(v9, v4);
}

- (void)fetchWebScrollFPSWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1C577F87C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1C577DBE8(v7, v6);
  sub_1C5632FA8(v7);
}

- (id)generateReportWithResult:(id)a3 testName:(id)a4
{
  v5 = sub_1C584F770();
  v6 = sub_1C584F660();
  v8 = v7;
  v9 = self;
  sub_1C577F1B0(v5, v6, v8);

  v10 = sub_1C584F5C0();

  return v10;
}

@end
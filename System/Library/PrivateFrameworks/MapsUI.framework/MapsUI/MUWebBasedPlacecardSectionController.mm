@interface MUWebBasedPlacecardSectionController
- (BOOL)isTesting;
- (BOOL)webViewLoading;
- (UIView)sectionView;
- (_TtC6MapsUI36MUWebBasedPlacecardSectionController)initWithMapItem:(id)item;
- (_TtC6MapsUI36MUWebBasedPlacecardSectionController)initWithMapItem:(id)item placeActionDispatcher:(id)dispatcher bridge:(id)bridge configuration:(id)configuration;
- (_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration)configuration;
- (_TtP6MapsUI44MUWebBasedPlacecardSectionControllerDelegate_)sectionDelegate;
- (double)bottomInset;
- (double)topInset;
- (float)cardExpansionProgress;
- (float)cardExpansionProgressDefaultValue;
- (id)generateReportWithResult:(id)result testName:(id)name;
- (void)ETAProviderUpdated:(id)updated;
- (void)addTestingObserverIfNeeded;
- (void)callBridgeMethodForExpansionProgressWithProgress:(float)progress;
- (void)cleanPlacecard;
- (void)didReceiveMessageFromWebContentViewController:(id)controller replyHandler:(id)handler;
- (void)didSelectMenuItemWithItemId:(id)id menuItemId:(id)itemId menuType:(int64_t)type;
- (void)didTapCloseButtonIn:(id)in;
- (void)didUpdateHeight;
- (void)evChargerAvailabilityProvider:(id)provider didUpdateAvailability:(id)availability;
- (void)fetchWebScrollFPSWithCompletion:(id)completion;
- (void)handleCardExpansionForVerifiedHeaderWithProgress:(float)progress;
- (void)handleCardExpansionWithProgress:(float)progress height:(float)height;
- (void)handleNativeUITapFor:(int64_t)for;
- (void)loadPlaceCardWithUrl:(id)url;
- (void)loadWebViewDidFail;
- (void)loadWebViewFromResourceURL;
- (void)postNotificationForContentLoadWithEvent:(int64_t)event;
- (void)presentDebugPanel;
- (void)reloadDataWithMapItem:(id)item configuration:(id)configuration;
- (void)removeTestingObserverIfNeeded;
- (void)runOnMainThread:(id)thread;
- (void)runScrollingTestWithNote:(id)note;
- (void)setBottomInset:(double)inset;
- (void)setCardExpansionProgress:(float)progress;
- (void)setConfiguration:(id)configuration;
- (void)setTopInset:(double)inset;
- (void)setupWebContentViewController;
- (void)updateDirectionsMetadata;
- (void)updateDownloadButton;
- (void)updateETAProvider;
- (void)updateEVChargerWithAvailability:(id)availability;
- (void)updatePlacecard;
- (void)updateUserData;
- (void)updateUserPreferences;
- (void)webBasedPlacecardVC:(id)c didScroll:(id)scroll;
- (void)webViewFinishedLoading;
- (void)webViewIsCurrent:(BOOL)current;
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

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1C5734640(&selRef_removeObserver_, MUEVChargerAvailabilityProvider.unregisterObserver(_:));
  v6 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  swift_beginAccess();
  v7 = *(selfCopy + v6);
  *(selfCopy + v6) = configurationCopy;
  v8 = configurationCopy;

  sub_1C5734640(&selRef_addObserver_, MUEVChargerAvailabilityProvider.registerObserver(_:));
}

- (BOOL)webViewLoading
{
  v2 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  selfCopy = self;
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

- (void)setTopInset:(double)inset
{
  v5 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_topInset;
  swift_beginAccess();
  *(self + v5) = inset;
}

- (double)bottomInset
{
  v3 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bottomInset;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBottomInset:(double)inset
{
  v5 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bottomInset;
  swift_beginAccess();
  *(self + v5) = inset;
}

- (float)cardExpansionProgress
{
  selfCopy = self;
  v3 = sub_1C5725A7C();

  return v3;
}

- (void)setCardExpansionProgress:(float)progress
{
  v3 = (self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress);
  *v3 = progress;
  *(v3 + 4) = 0;
}

- (float)cardExpansionProgressDefaultValue
{
  isMapsProcess = [objc_opt_self() isMapsProcess];
  result = 1.0;
  if (isMapsProcess)
  {
    return 0.0;
  }

  return result;
}

- (_TtC6MapsUI36MUWebBasedPlacecardSectionController)initWithMapItem:(id)item placeActionDispatcher:(id)dispatcher bridge:(id)bridge configuration:(id)configuration
{
  itemCopy = item;
  dispatcherCopy = dispatcher;
  bridgeCopy = bridge;
  configurationCopy = configuration;
  v13 = sub_1C57347EC(itemCopy, dispatcherCopy, bridgeCopy, configurationCopy);

  return v13;
}

- (void)reloadDataWithMapItem:(id)item configuration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  selfCopy = self;
  sub_1C5726068(itemCopy, configurationCopy);
}

- (_TtC6MapsUI36MUWebBasedPlacecardSectionController)initWithMapItem:(id)item
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
  selfCopy = self;
  sub_1C5726670();
}

- (void)loadPlaceCardWithUrl:(id)url
{
  v4 = sub_1C584EA90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C584EA50();
  selfCopy = self;
  sub_1C5726794(v9);

  (*(v5 + 8))(v9, v4);
}

- (void)webViewFinishedLoading
{
  selfCopy = self;
  sub_1C5726B88();
}

- (void)didReceiveMessageFromWebContentViewController:(id)controller replyHandler:(id)handler
{
  v6 = _Block_copy(handler);
  controllerCopy = controller;
  selfCopy = self;
  v8 = sub_1C584EAE0();
  v10 = v9;

  _Block_copy(v6);
  sub_1C5739208(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1C566DD84(v8, v10);
}

- (void)loadWebViewDidFail
{
  selfCopy = self;
  MUWebBasedPlacecardSectionController.loadWebViewDidFail()();
}

- (void)callBridgeMethodForExpansionProgressWithProgress:(float)progress
{
  v3 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  selfCopy = self;
  v4 = v3;
  sub_1C566C6D4();
}

- (void)updatePlacecard
{
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1C569789C(v7);
  sub_1C569A8D8(8);
  v9 = *(selfCopy + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v7, 0, 0);

  v10 = *(selfCopy + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
  sub_1C5718EA0();
  sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

- (void)cleanPlacecard
{
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1C569789C(v7);
  sub_1C569A8D8(9);
  v9 = *(selfCopy + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v7, 0, 0);

  sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

- (void)handleNativeUITapFor:(int64_t)for
{
  selfCopy = self;
  MUWebBasedPlacecardSectionController.handleNativeUITap(for:)(for);
}

- (void)updateUserData
{
  selfCopy = self;
  MUWebBasedPlacecardSectionController.updateUserData()();
}

- (void)updateUserPreferences
{
  selfCopy = self;
  MUWebBasedPlacecardSectionController.updateUserPreferences()();
}

- (void)updateDirectionsMetadata
{
  selfCopy = self;
  MUWebBasedPlacecardSectionController.updateDirectionsMetadata()();
}

- (void)updateETAProvider
{
  selfCopy = self;
  sub_1C5731EE8();
}

- (void)handleCardExpansionWithProgress:(float)progress height:(float)height
{
  selfCopy = self;
  MUWebBasedPlacecardSectionController.handleCardExpansion(progress:height:)(progress, height);
}

- (void)handleCardExpansionForVerifiedHeaderWithProgress:(float)progress
{
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x1B0);
  selfCopy = self;
  v4(progress);
  *&v5 = progress;
  [(MUWebBasedPlacecardSectionController *)selfCopy callBridgeMethodForExpansionProgressWithProgress:v5];
}

- (void)updateEVChargerWithAvailability:(id)availability
{
  availabilityCopy = availability;
  selfCopy = self;
  sub_1C5732754(availabilityCopy);
}

- (void)updateDownloadButton
{
  selfCopy = self;
  MUWebBasedPlacecardSectionController.updateDownloadButton()();
}

- (void)runOnMainThread:(id)thread
{
  v4 = _Block_copy(thread);
  _Block_copy(v4);
  selfCopy = self;
  sub_1C5742764(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)ETAProviderUpdated:(id)updated
{
  if (updated)
  {
    [(MUWebBasedPlacecardSectionController *)self updateETAProvider];
  }
}

- (void)evChargerAvailabilityProvider:(id)provider didUpdateAvailability:(id)availability
{
  v5 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability);
  *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability) = availability;
  availabilityCopy = availability;
  selfCopy = self;

  [(MUWebBasedPlacecardSectionController *)selfCopy updateEVChargerWithAvailability:availabilityCopy];
}

- (void)didTapCloseButtonIn:(id)in
{
  v4 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher);
  type metadata accessor for MUPlaceActionDispatcher.CloseAction();
  selfCopy = self;
  v6 = MUPlaceActionDispatcher.CloseAction.__allocating_init()();
  type metadata accessor for MUPlaceActionFeedbackEnvironment();
  v7 = sub_1C56433CC(0);
  MUPlaceActionDispatcher.performAction(for:environment:completion:)(v6, v7, 0, 0);
}

- (void)didUpdateHeight
{
  selfCopy = self;
  delegate = [(MUPlaceSectionController *)selfCopy delegate];
  if (delegate)
  {
    [(MUPlaceSectionControllerDelegate *)delegate placeSectionControllerRequestsLayoutChange:selfCopy];
    swift_unknownObjectRelease();
  }
}

- (void)didSelectMenuItemWithItemId:(id)id menuItemId:(id)itemId menuType:(int64_t)type
{
  v7 = sub_1C584F660();
  v9 = v8;
  v10 = sub_1C584F660();
  v12 = v11;
  selfCopy = self;
  v14 = sub_1C57042D8(type);
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

- (void)webViewIsCurrent:(BOOL)current
{
  selfCopy = self;
  MUWebBasedPlacecardSectionController.webViewIsCurrent(_:)(current);
}

- (void)webBasedPlacecardVC:(id)c didScroll:(id)scroll
{
  v5 = *((*MEMORY[0x1E69E7D40] & *self) + 0xB0);
  scrollCopy = scroll;
  selfCopy = self;
  v7 = v5();
  if (v7)
  {
    [v7 sectionController:selfCopy didScroll:scrollCopy];
    swift_unknownObjectRelease();
  }
}

- (UIView)sectionView
{
  v2 = *(self + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
  selfCopy = self;
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
  selfCopy = self;
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

- (void)postNotificationForContentLoadWithEvent:(int64_t)event
{
  selfCopy = self;
  sub_1C577CC9C(event);
}

- (void)addTestingObserverIfNeeded
{
  selfCopy = self;
  if ([(MUWebBasedPlacecardSectionController *)selfCopy isTesting])
  {
    defaultCenter = [objc_opt_self() defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel_runScrollingTestWithNote_ name:@"MUWebBasedPlacecardScrollTestNotification" object:0];
  }
}

- (void)removeTestingObserverIfNeeded
{
  selfCopy = self;
  if ([(MUWebBasedPlacecardSectionController *)selfCopy isTesting])
  {
    defaultCenter = [objc_opt_self() defaultCenter];
    [defaultCenter removeObserver:selfCopy name:@"MUWebBasedPlacecardScrollTestNotification" object:0];
  }
}

- (void)runScrollingTestWithNote:(id)note
{
  v4 = sub_1C584E7C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C584E790();
  selfCopy = self;
  sub_1C577CF90(v9);

  (*(v5 + 8))(v9, v4);
}

- (void)fetchWebScrollFPSWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1C577DBE8(v7, v6);
  sub_1C5632FA8(v7);
}

- (id)generateReportWithResult:(id)result testName:(id)name
{
  v5 = sub_1C584F770();
  v6 = sub_1C584F660();
  v8 = v7;
  selfCopy = self;
  sub_1C577F1B0(v5, v6, v8);

  v10 = sub_1C584F5C0();

  return v10;
}

@end
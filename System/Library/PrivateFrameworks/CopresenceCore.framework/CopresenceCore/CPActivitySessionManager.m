@interface CPActivitySessionManager
- (BOOL)handedOff;
- (CPActivitySessionManager)init;
- (CPActivitySessionManager)initWithIdentifier:(id)a3 groupUUID:(id)a4 activities:(id)a5 applicationController:(id)a6 delegate:(id)a7 queue:(id)a8 systemStateObserver:(id)a9 sceneObservationManager:(id)a10;
- (CPActivitySessionManagerDelegate)delegate;
- (CPApplicationLauncher)applicationLauncher;
- (NSSet)activitySessions;
- (NSUUID)identifier;
- (id)createActivitySessionWithTuActivitySession:(id)a3;
- (void)applicationController:(id)a3 bundleIdentifierChanged:(id)a4;
- (void)leaveActivitySessionWithUUID:(id)a3;
- (void)presentSessionDismissalAlertForActivitySessionUUID:(id)a3 allowingCancellation:(BOOL)a4 completionHandler:(id)a5;
- (void)refreshActivitySessionActiveParticipants;
- (void)refreshDataCryptors;
- (void)removeActivitySessionWithUUID:(id)a3 usingHandle:(id)a4;
- (void)removeLocalScreenSharingSessions;
- (void)removeScreenSharingSessions;
- (void)resetNonScreenSharingSessions;
- (void)resetSceneAssociationsForBundleID:(id)a3;
- (void)resetSessions;
- (void)setApplicationLauncher:(id)a3;
- (void)setHandedOff:(BOOL)a3;
- (void)setUsingAirplay:(BOOL)a3 forActivitySessionWithUUID:(id)a4;
- (void)updateActivitySessionWithUUID:(id)a3 activity:(id)a4;
- (void)updateExternalParticipants:(id)a3;
- (void)updateNearbyClustersWithLocalParticipantCluster:(id)a3 remoteParticipants:(id)a4;
- (void)updateVirtualParticipantIdentifier:(unint64_t)a3;
@end

@implementation CPActivitySessionManager

- (NSUUID)identifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___CPActivitySessionManager_id, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSSet)activitySessions
{
  v2 = self;
  ActivitySessionManager.activitySessions.getter();

  type metadata accessor for ActivitySession(0);
  lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (CPActivitySessionManagerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CPApplicationLauncher)applicationLauncher
{
  v3 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setApplicationLauncher:(id)a3
{
  v4 = a3;
  v5 = self;
  ActivitySessionManager.applicationLauncher.setter(v4);
}

- (BOOL)handedOff
{
  v3 = OBJC_IVAR___CPActivitySessionManager_handedOff;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHandedOff:(BOOL)a3
{
  v5 = OBJC_IVAR___CPActivitySessionManager_handedOff;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  ActivitySessionManager.handedOff.didset();
}

- (CPActivitySessionManager)initWithIdentifier:(id)a3 groupUUID:(id)a4 activities:(id)a5 applicationController:(id)a6 delegate:(id)a7 queue:(id)a8 systemStateObserver:(id)a9 sceneObservationManager:(id)a10
{
  v23[0] = a8;
  v23[1] = self;
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v23 - v17;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivity and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
  v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = a6;
  swift_unknownObjectRetain();
  v21 = v23[0];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return ActivitySessionManager.init(id:groupUUID:activities:applicationController:delegate:queue:systemStateObserver:sceneObservationManager:)(v18, v16, v19, v20, a7, v21, a9, a10);
}

- (id)createActivitySessionWithTuActivitySession:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ActivitySessionManager.createActivitySession(tuActivitySession:)(v4);

  return v6;
}

- (void)leaveActivitySessionWithUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  ActivitySessionManager.leaveActivitySession(activitySessionUUID:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)presentSessionDismissalAlertForActivitySessionUUID:(id)a3 allowingCancellation:(BOOL)a4 completionHandler:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  v13 = self;
  specialized ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:)(v11, v13, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (void)removeActivitySessionWithUUID:(id)a3 usingHandle:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = self;
  ActivitySessionManager.removeActivitySession(activitySessionUUID:using:)(v10, a4);

  (*(v7 + 8))(v10, v6);
}

- (void)updateActivitySessionWithUUID:(id)a3 activity:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = self;
  ActivitySessionManager.updateActivitySession(activitySessionUUID:activity:)(v10, v11);

  (*(v7 + 8))(v10, v6);
}

- (void)updateNearbyClustersWithLocalParticipantCluster:(id)a3 remoteParticipants:(id)a4
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  ActivitySessionManager.updateNearbyClusters(localParticipantCluster:remoteParticipants:)(a3, v6);
}

- (void)setUsingAirplay:(BOOL)a3 forActivitySessionWithUUID:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  ActivitySessionManager.setUsingAirplay(_:_:)(a3, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)refreshDataCryptors
{
  v2 = self;
  ActivitySessionManager.refreshDataCryptors()();
}

- (void)refreshActivitySessionActiveParticipants
{
  v2 = self;
  ActivitySessionManager.refreshActivitySessionActiveParticipants()();
}

- (void)resetSessions
{
  v2 = self;
  ActivitySessionManager.resetSessions()();
}

- (void)resetNonScreenSharingSessions
{
  v2 = self;
  ActivitySessionManager.resetNonScreenSharingSessions()();
}

- (void)removeScreenSharingSessions
{
  v2 = self;
  ActivitySessionManager.removeScreenSharingSessions()();
}

- (void)removeLocalScreenSharingSessions
{
  v2 = self;
  ActivitySessionManager.removeLocalScreenSharingSessions()();
}

- (void)resetSceneAssociationsForBundleID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  ActivitySessionManager.resetSceneAssociations(for:)(v8);
}

- (void)updateVirtualParticipantIdentifier:(unint64_t)a3
{
  v4 = self;
  ActivitySessionManager.updateVirtualParticipantId(_:)(a3);
}

- (void)updateExternalParticipants:(id)a3
{
  type metadata accessor for TUExternalParticipant();
  lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUExternalParticipant and conformance NSObject, MEMORY[0x1E69D8A28]);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  ActivitySessionManager.updateExternalParticipants(_:)(v4);
}

- (CPActivitySessionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)applicationController:(id)a3 bundleIdentifierChanged:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  ActivitySessionManager.applicationController(_:bundleIdentifierChanged:)(v9, v6, v8);
}

@end
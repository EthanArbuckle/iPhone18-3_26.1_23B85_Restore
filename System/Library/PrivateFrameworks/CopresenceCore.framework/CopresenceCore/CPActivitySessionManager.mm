@interface CPActivitySessionManager
- (BOOL)handedOff;
- (CPActivitySessionManager)init;
- (CPActivitySessionManager)initWithIdentifier:(id)identifier groupUUID:(id)d activities:(id)activities applicationController:(id)controller delegate:(id)delegate queue:(id)queue systemStateObserver:(id)observer sceneObservationManager:(id)self0;
- (CPActivitySessionManagerDelegate)delegate;
- (CPApplicationLauncher)applicationLauncher;
- (NSSet)activitySessions;
- (NSUUID)identifier;
- (id)createActivitySessionWithTuActivitySession:(id)session;
- (void)applicationController:(id)controller bundleIdentifierChanged:(id)changed;
- (void)leaveActivitySessionWithUUID:(id)d;
- (void)presentSessionDismissalAlertForActivitySessionUUID:(id)d allowingCancellation:(BOOL)cancellation completionHandler:(id)handler;
- (void)refreshActivitySessionActiveParticipants;
- (void)refreshDataCryptors;
- (void)removeActivitySessionWithUUID:(id)d usingHandle:(id)handle;
- (void)removeLocalScreenSharingSessions;
- (void)removeScreenSharingSessions;
- (void)resetNonScreenSharingSessions;
- (void)resetSceneAssociationsForBundleID:(id)d;
- (void)resetSessions;
- (void)setApplicationLauncher:(id)launcher;
- (void)setHandedOff:(BOOL)off;
- (void)setUsingAirplay:(BOOL)airplay forActivitySessionWithUUID:(id)d;
- (void)updateActivitySessionWithUUID:(id)d activity:(id)activity;
- (void)updateExternalParticipants:(id)participants;
- (void)updateNearbyClustersWithLocalParticipantCluster:(id)cluster remoteParticipants:(id)participants;
- (void)updateVirtualParticipantIdentifier:(unint64_t)identifier;
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
  selfCopy = self;
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

- (void)setApplicationLauncher:(id)launcher
{
  launcherCopy = launcher;
  selfCopy = self;
  ActivitySessionManager.applicationLauncher.setter(launcherCopy);
}

- (BOOL)handedOff
{
  v3 = OBJC_IVAR___CPActivitySessionManager_handedOff;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHandedOff:(BOOL)off
{
  v5 = OBJC_IVAR___CPActivitySessionManager_handedOff;
  swift_beginAccess();
  *(self + v5) = off;
  selfCopy = self;
  ActivitySessionManager.handedOff.didset();
}

- (CPActivitySessionManager)initWithIdentifier:(id)identifier groupUUID:(id)d activities:(id)activities applicationController:(id)controller delegate:(id)delegate queue:(id)queue systemStateObserver:(id)observer sceneObservationManager:(id)self0
{
  v23[0] = queue;
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
  controllerCopy = controller;
  swift_unknownObjectRetain();
  v21 = v23[0];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return ActivitySessionManager.init(id:groupUUID:activities:applicationController:delegate:queue:systemStateObserver:sceneObservationManager:)(v18, v16, v19, controllerCopy, delegate, v21, observer, manager);
}

- (id)createActivitySessionWithTuActivitySession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  v6 = ActivitySessionManager.createActivitySession(tuActivitySession:)(sessionCopy);

  return v6;
}

- (void)leaveActivitySessionWithUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ActivitySessionManager.leaveActivitySession(activitySessionUUID:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)presentSessionDismissalAlertForActivitySessionUUID:(id)d allowingCancellation:(BOOL)cancellation completionHandler:(id)handler
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(handler);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  selfCopy = self;
  specialized ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:)(v11, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (void)removeActivitySessionWithUUID:(id)d usingHandle:(id)handle
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  handleCopy = handle;
  selfCopy = self;
  ActivitySessionManager.removeActivitySession(activitySessionUUID:using:)(v10, handle);

  (*(v7 + 8))(v10, v6);
}

- (void)updateActivitySessionWithUUID:(id)d activity:(id)activity
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  activityCopy = activity;
  selfCopy = self;
  ActivitySessionManager.updateActivitySession(activitySessionUUID:activity:)(v10, activityCopy);

  (*(v7 + 8))(v10, v6);
}

- (void)updateNearbyClustersWithLocalParticipantCluster:(id)cluster remoteParticipants:(id)participants
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  clusterCopy = cluster;
  selfCopy = self;
  ActivitySessionManager.updateNearbyClusters(localParticipantCluster:remoteParticipants:)(cluster, v6);
}

- (void)setUsingAirplay:(BOOL)airplay forActivitySessionWithUUID:(id)d
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ActivitySessionManager.setUsingAirplay(_:_:)(airplay, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)refreshDataCryptors
{
  selfCopy = self;
  ActivitySessionManager.refreshDataCryptors()();
}

- (void)refreshActivitySessionActiveParticipants
{
  selfCopy = self;
  ActivitySessionManager.refreshActivitySessionActiveParticipants()();
}

- (void)resetSessions
{
  selfCopy = self;
  ActivitySessionManager.resetSessions()();
}

- (void)resetNonScreenSharingSessions
{
  selfCopy = self;
  ActivitySessionManager.resetNonScreenSharingSessions()();
}

- (void)removeScreenSharingSessions
{
  selfCopy = self;
  ActivitySessionManager.removeScreenSharingSessions()();
}

- (void)removeLocalScreenSharingSessions
{
  selfCopy = self;
  ActivitySessionManager.removeLocalScreenSharingSessions()();
}

- (void)resetSceneAssociationsForBundleID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  ActivitySessionManager.resetSceneAssociations(for:)(v8);
}

- (void)updateVirtualParticipantIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  ActivitySessionManager.updateVirtualParticipantId(_:)(identifier);
}

- (void)updateExternalParticipants:(id)participants
{
  type metadata accessor for TUExternalParticipant();
  lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUExternalParticipant and conformance NSObject, MEMORY[0x1E69D8A28]);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ActivitySessionManager.updateExternalParticipants(_:)(v4);
}

- (CPActivitySessionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)applicationController:(id)controller bundleIdentifierChanged:(id)changed
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  controllerCopy = controller;
  selfCopy = self;
  ActivitySessionManager.applicationController(_:bundleIdentifierChanged:)(controllerCopy, v6, v8);
}

@end
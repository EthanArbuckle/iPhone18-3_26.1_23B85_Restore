@interface ConversationManagerHostConnection
- (void)addRemoteMembers:(id)a3 toConversationWithUUID:(id)a4;
- (void)createActivitySessionWith:(id)a3 onConversationWithUUID:(id)a4 completion:(id)a5;
- (void)fetchEndpointWith:(id)a3 activitySessionUUID:(id)a4 activity:(id)a5 completion:(id)a6;
- (void)includeMetricsReport:(id)a3 onConversationWithUUID:(id)a4;
- (void)prepareForGroupActivityWithOverrides:(id)a3 completionHandler:(id)a4;
- (void)requestConversationContainersUpdate;
- (void)requestEndpointWith:(id)a3 activitySessionUUID:(id)a4 activity:(id)a5 completion:(id)a6;
- (void)setActivityAuthorization:(BOOL)a3 forBundleIdentifier:(id)a4;
- (void)setDownlinkMuted:(BOOL)a3 forRemoteParticipantsInConversationWithUUID:(id)a4;
- (void)updateConversationContainersWithConversationContainersByGroupUUID:(id)a3;
- (void)updateConversationWith:(id)a3 participantPresentationContexts:(id)a4;
@end

@implementation ConversationManagerHostConnection

- (void)updateConversationContainersWithConversationContainersByGroupUUID:(id)a3
{
  type metadata accessor for UUID();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  ConversationManagerHostConnection.updateConversationContainers(conversationContainersByGroupUUID:)(v4);
}

- (void)requestEndpointWith:(id)a3 activitySessionUUID:(id)a4 activity:(id)a5 completion:(id)a6
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v14);
  v18 = a5;
  v19 = self;
  specialized ConversationManagerHostConnection.requestEndpoint(with:activitySessionUUID:activity:completion:)(v15, v17, v13, v18, v19, v14);
  _Block_release(v14);
  _Block_release(v14);

  (*(v10 + 8))(v13, v9);
}

- (void)requestConversationContainersUpdate
{
  v2 = self;
  ConversationManagerHostConnection.requestConversationContainersUpdate()();
}

- (void)prepareForGroupActivityWithOverrides:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  ConversationManagerHostConnection.prepareForGroupActivity(overrides:completionHandler:)(a3, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> (), v7);
}

- (void)createActivitySessionWith:(id)a3 onConversationWithUUID:(id)a4 completion:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v14 = a3;
  v15 = self;
  specialized ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:)(v14, v12, v15, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)addRemoteMembers:(id)a3 toConversationWithUUID:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  ConversationManagerHostConnection.addRemoteMembers(_:toConversationWithUUID:)(v10, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)setActivityAuthorization:(BOOL)a3 forBundleIdentifier:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  ConversationManagerHostConnection.setActivityAuthorization(_:forBundleIdentifier:)(a3, v10);
}

- (void)setDownlinkMuted:(BOOL)a3 forRemoteParticipantsInConversationWithUUID:(id)a4
{
  v4 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(v4, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)updateConversationWith:(id)a3 participantPresentationContexts:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantPresentationContext, 0x1E69D8BA0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:)(v9, v10);

  (*(v6 + 8))(v9, v5);
}

- (void)includeMetricsReport:(id)a3 onConversationWithUUID:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  ConversationManagerHostConnection.includeMetricsReport(_:onConversationWithUUID:)(v10, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)fetchEndpointWith:(id)a3 activitySessionUUID:(id)a4 activity:(id)a5 completion:(id)a6
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v19 = a5;
  v20 = self;
  ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:)(v15, v17, v13, v19, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned TUConversationActivity?) -> (), v18);

  (*(v10 + 8))(v13, v9);
}

@end
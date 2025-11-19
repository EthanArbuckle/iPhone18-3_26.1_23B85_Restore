@interface ConversationManagerClient
- (void)requestEndpointWith:(id)a3 activitySessionUUID:(id)a4 activity:(id)a5 completion:(id)a6;
- (void)updateConversationContainersWithConversationContainersByGroupUUID:(id)a3;
@end

@implementation ConversationManagerClient

- (void)updateConversationContainersWithConversationContainersByGroupUUID:(id)a3
{
  type metadata accessor for UUID();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  ConversationManagerClient.updateConversationContainers(conversationContainersByGroupUUID:)(v4);
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
  specialized ConversationManagerClient.requestEndpoint(with:activitySessionUUID:activity:completion:)(v15, v17, v13, v18, v19, v14);
  _Block_release(v14);
  _Block_release(v14);

  (*(v10 + 8))(v13, v9);
}

@end
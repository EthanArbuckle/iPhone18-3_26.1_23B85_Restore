@interface ConversationManagerClient
- (void)requestEndpointWith:(id)with activitySessionUUID:(id)d activity:(id)activity completion:(id)completion;
- (void)updateConversationContainersWithConversationContainersByGroupUUID:(id)d;
@end

@implementation ConversationManagerClient

- (void)updateConversationContainersWithConversationContainersByGroupUUID:(id)d
{
  type metadata accessor for UUID();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ConversationManagerClient.updateConversationContainers(conversationContainersByGroupUUID:)(v4);
}

- (void)requestEndpointWith:(id)with activitySessionUUID:(id)d activity:(id)activity completion:(id)completion
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(completion);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v14);
  activityCopy = activity;
  selfCopy = self;
  specialized ConversationManagerClient.requestEndpoint(with:activitySessionUUID:activity:completion:)(v15, v17, v13, activityCopy, selfCopy, v14);
  _Block_release(v14);
  _Block_release(v14);

  (*(v10 + 8))(v13, v9);
}

@end
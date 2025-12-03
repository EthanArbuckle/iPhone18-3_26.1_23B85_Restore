@interface BackgroundSessionManagerClient
- (void)leaveWithIdentifier:(id)identifier completion:(id)completion;
- (void)prewarmWithCompletion:(id)completion;
- (void)sessionDidReceiveUpdatedUnknownParticipantListWithSessionID:(id)d unknownParticipants:(id)participants;
- (void)sessionDidRejectKeyRecoveryRequestWithSessionID:(id)d;
- (void)updateMembersWithIdentifier:(id)identifier members:(id)members completion:(id)completion;
- (void)updateShare:(id)share activityID:(id)d completion:(id)completion;
- (void)updateWithActivitySessions:(id)sessions;
@end

@implementation BackgroundSessionManagerClient

- (void)prewarmWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  BackgroundSessionManagerClient.prewarm(completion:)(thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v5);
}

- (void)leaveWithIdentifier:(id)identifier completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  BackgroundSessionManagerClient.leave(identifier:completion:)(v10, thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)updateMembersWithIdentifier:(id)identifier members:(id)members completion:(id)completion
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  selfCopy = self;
  BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(v11, v13, thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v14);

  (*(v8 + 8))(v11, v7);
}

- (void)updateShare:(id)share activityID:(id)d completion:(id)completion
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  shareCopy = share;
  selfCopy = self;
  BackgroundSessionManagerClient.updateShare(_:activityID:completion:)(shareCopy, v12, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v14);

  (*(v9 + 8))(v12, v8);
}

- (void)updateWithActivitySessions:(id)sessions
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 16);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (void)sessionDidRejectKeyRecoveryRequestWithSessionID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 24);
    selfCopy = self;
    v12(v8, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  (*(v5 + 8))(v8, v4);
}

- (void)sessionDidReceiveUpdatedUnknownParticipantListWithSessionID:(id)d unknownParticipants:(id)participants
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    v16 = v6;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 32);
    selfCopy = self;
    v14(v9, v10, ObjectType, v12);

    v6 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v6 + 8))(v9, v5);
}

@end
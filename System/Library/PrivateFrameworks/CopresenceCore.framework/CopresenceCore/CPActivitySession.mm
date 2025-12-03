@interface CPActivitySession
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CPActivitySession)init;
- (NSString)description;
- (NSString)persistentSceneIdentifier;
- (NSUUID)identifier;
- (TUConversationActivity)activity;
- (TUConversationActivitySession)tuConversationActivitySession;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)associateSceneWithSceneID:(id)d;
- (void)permitJoin;
- (void)receivedResourceAtURL:(id)l withMetadata:(id)metadata fromParticipantIdentifier:(unint64_t)identifier;
- (void)resetSession;
- (void)setActivity:(id)activity;
- (void)updateActivityImage:(id)image;
- (void)updateApplicationState:(unint64_t)state;
@end

@implementation CPActivitySession

- (NSUUID)identifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___CPActivitySession_id, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSString)persistentSceneIdentifier
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x1C8);
  selfCopy = self;
  v2(v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  BidirectionalCollection.last.getter();

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  if (v6)
  {
    v4 = MEMORY[0x1B270FF70]();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TUConversationActivity)activity
{
  v3 = OBJC_IVAR___CPActivitySession_activity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActivity:(id)activity
{
  v5 = OBJC_IVAR___CPActivitySession_activity;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = activity;
  activityCopy = activity;
  selfCopy = self;
  ActivitySession.activity.didset(v6);
}

- (TUConversationActivitySession)tuConversationActivitySession
{
  selfCopy = self;
  v3 = ActivitySession.tuConversationActivitySession.getter();

  return v3;
}

- (void)permitJoin
{
  selfCopy = self;
  ActivitySession.permitJoin()();
}

- (void)updateApplicationState:(unint64_t)state
{
  selfCopy = self;
  ActivitySession.updateApplicationState(_:)(state);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized ActivitySession.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

- (void)associateSceneWithSceneID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  ActivitySession.associateScene(sceneID:)(v8);
}

- (CPActivitySession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateActivityImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  ActivitySession.updateActivityImage(_:)();
  outlined consume of Data._Representation(v5, v7);
}

- (void)assertionWillInvalidate:(id)invalidate
{
  v5 = *(self + OBJC_IVAR___CPActivitySession_queue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in ActivitySession.assertionWillInvalidate(_:)partial apply;
  *(v7 + 24) = v6;
  v11[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_211;
  v8 = _Block_copy(v11);
  selfCopy = self;
  invalidateCopy = invalidate;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  selfCopy = self;
  errorCopy = error;
  specialized ActivitySession.assertion(_:didInvalidateWithError:)(error);
}

- (void)resetSession
{
  selfCopy = self;
  ActivitySession.resetSession()();
}

- (void)receivedResourceAtURL:(id)l withMetadata:(id)metadata fromParticipantIdentifier:(unint64_t)identifier
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  metadataCopy = metadata;
  selfCopy = self;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  ActivitySession.receivedResource(atURL:withMetadata:fromParticipantIdentifier:)(v12, v15, v17, identifier);
  outlined consume of Data._Representation(v15, v17);

  (*(v9 + 8))(v12, v8);
}

- (NSString)description
{
  selfCopy = self;
  v3 = ActivitySession.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B270FF70](v3, v5);

  return v6;
}

@end
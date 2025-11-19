@interface CPConversationManagerHost
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CPConversationManagerHost)init;
- (CPConversationManagerHost)initWithDataSource:(id)a3;
- (void)conversationManager:(id)a3 activitySessionContainersChanged:(id)a4;
- (void)conversationManager:(id)a3 requestedEndpointWithIdentifier:(id)a4 activitySession:(id)a5 completion:(id)a6;
- (void)conversationManager:(id)a3 sharePlayAllowedChanged:(BOOL)a4;
- (void)dealloc;
@end

@implementation CPConversationManagerHost

- (CPConversationManagerHost)initWithDataSource:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(CPFeatureFlags);
  swift_unknownObjectRetain();
  v6 = specialized ConversationManagerHost.init(dataSource:featureFlags:)(a3, [v5 init], objc_allocWithZone(ObjectType));
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR___CPConversationManagerHost_listener);
  v5 = self;
  [v4 invalidate];
  [*(&v5->super.isa + OBJC_IVAR___CPConversationManagerHost_listenerDeprecated) invalidate];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(CPConversationManagerHost *)&v6 dealloc];
}

- (CPConversationManagerHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)a3 activitySessionContainersChanged:(id)a4
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  specialized ConversationManagerHost.conversationManager(_:activitySessionContainersChanged:)(v5);
  swift_unknownObjectRelease();
}

- (void)conversationManager:(id)a3 sharePlayAllowedChanged:(BOOL)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  specialized ConversationManagerHost.conversationManager(_:sharePlayAllowedChanged:)(a4);
  swift_unknownObjectRelease();
}

- (void)conversationManager:(id)a3 requestedEndpointWithIdentifier:(id)a4 activitySession:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  specialized ConversationManagerHost.conversationManager(_:requestedEndpointWithIdentifier:activitySession:completion:)(v9, v11, v13, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSXPCListenerEndpoint?) -> (), v12);
  swift_unknownObjectRelease();
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized ConversationManagerHost.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

@end
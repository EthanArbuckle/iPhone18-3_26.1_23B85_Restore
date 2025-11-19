@interface CPApplicationMonitor
- (CPApplicationMonitor)init;
- (CPApplicationMonitor)initWithApplicationController:(id)a3 queue:(id)a4;
- (void)conversationManager:(id)a3 activitySessionContainersChanged:(id)a4;
- (void)conversationManager:(id)a3 conversationAdvertisementCreated:(id)a4;
- (void)conversationManager:(id)a3 conversationAdvertisementLost:(id)a4;
- (void)conversationManager:(id)a3 conversationChanged:(id)a4;
- (void)dealloc;
@end

@implementation CPApplicationMonitor

- (CPApplicationMonitor)initWithApplicationController:(id)a3 queue:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = one-time initialization token for shared;
  v8 = a3;
  v9 = a4;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = static CPApplicationPolicyManager.shared;
  v13[3] = type metadata accessor for CPApplicationController();
  v13[4] = &protocol witness table for CPApplicationController;
  v13[0] = v8;
  v11 = (*(ObjectType + 136))(v10, v13, v9);
  swift_deallocPartialClassInstance();
  return v11;
}

- (void)dealloc
{
  v3 = (&self->super.isa + OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor);
  swift_beginAccess();
  if (*v3)
  {
    v4 = v3[1];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 32);
    v7 = self;
    swift_unknownObjectRetain();
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = self;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for CPApplicationMonitor();
  [(CPApplicationMonitor *)&v9 dealloc];
}

- (void)conversationManager:(id)a3 conversationChanged:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  specialized CPApplicationMonitor.conversationManager(_:conversationChanged:)(a3);
  swift_unknownObjectRelease();
}

- (void)conversationManager:(id)a3 activitySessionContainersChanged:(id)a4
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  specialized CPApplicationMonitor.conversationManager(_:activitySessionContainersChanged:)(v5);
  swift_unknownObjectRelease();
}

- (void)conversationManager:(id)a3 conversationAdvertisementCreated:(id)a4
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x98);
  v5 = self;
  v4();
}

- (void)conversationManager:(id)a3 conversationAdvertisementLost:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  specialized CPApplicationMonitor.conversationManager(_:conversationAdvertisementLost:)();
  swift_unknownObjectRelease();
}

- (CPApplicationMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
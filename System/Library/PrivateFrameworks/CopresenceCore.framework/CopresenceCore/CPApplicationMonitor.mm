@interface CPApplicationMonitor
- (CPApplicationMonitor)init;
- (CPApplicationMonitor)initWithApplicationController:(id)controller queue:(id)queue;
- (void)conversationManager:(id)manager activitySessionContainersChanged:(id)changed;
- (void)conversationManager:(id)manager conversationAdvertisementCreated:(id)created;
- (void)conversationManager:(id)manager conversationAdvertisementLost:(id)lost;
- (void)conversationManager:(id)manager conversationChanged:(id)changed;
- (void)dealloc;
@end

@implementation CPApplicationMonitor

- (CPApplicationMonitor)initWithApplicationController:(id)controller queue:(id)queue
{
  ObjectType = swift_getObjectType();
  v7 = one-time initialization token for shared;
  controllerCopy = controller;
  queueCopy = queue;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = static CPApplicationPolicyManager.shared;
  v13[3] = type metadata accessor for CPApplicationController();
  v13[4] = &protocol witness table for CPApplicationController;
  v13[0] = controllerCopy;
  v11 = (*(ObjectType + 136))(v10, v13, queueCopy);
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
    selfCopy = self;
    swift_unknownObjectRetain();
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for CPApplicationMonitor();
  [(CPApplicationMonitor *)&v9 dealloc];
}

- (void)conversationManager:(id)manager conversationChanged:(id)changed
{
  swift_unknownObjectRetain();
  changedCopy = changed;
  selfCopy = self;
  specialized CPApplicationMonitor.conversationManager(_:conversationChanged:)(manager);
  swift_unknownObjectRelease();
}

- (void)conversationManager:(id)manager activitySessionContainersChanged:(id)changed
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized CPApplicationMonitor.conversationManager(_:activitySessionContainersChanged:)(v5);
  swift_unknownObjectRelease();
}

- (void)conversationManager:(id)manager conversationAdvertisementCreated:(id)created
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x98);
  selfCopy = self;
  v4();
}

- (void)conversationManager:(id)manager conversationAdvertisementLost:(id)lost
{
  swift_unknownObjectRetain();
  lostCopy = lost;
  selfCopy = self;
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
@interface MBPersonaStateManager
- (NSArray)allPersonaStates;
- (_TtC7backupd21MBPersonaStateManager)init;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)personaStateForPersonaID:(id)d;
- (id)restoreSessionForPersonaID:(id)d;
@end

@implementation MBPersonaStateManager

- (id)restoreSessionForPersonaID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_100030A98(v4, v6);

  return v8;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  selfCopy = self;
  v6 = sub_100030CDC(subscriptCopy);

  return v6;
}

- (NSArray)allPersonaStates
{
  selfCopy = self;
  sub_100030ED8();

  type metadata accessor for MBPersonaState();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)personaStateForPersonaID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_100030FE0(v4, v6);

  return v8;
}

- (_TtC7backupd21MBPersonaStateManager)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC7backupd21MBPersonaStateManager_personaIDStateMap) = &_swiftEmptyDictionarySingleton;
  v4 = OBJC_IVAR____TtC7backupd21MBPersonaStateManager_lock;
  type metadata accessor for MBUnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 2) = v6;
  *v6 = 0;
  *(&self->super.isa + v4) = v5;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(MBPersonaStateManager *)&v8 init];
}

@end
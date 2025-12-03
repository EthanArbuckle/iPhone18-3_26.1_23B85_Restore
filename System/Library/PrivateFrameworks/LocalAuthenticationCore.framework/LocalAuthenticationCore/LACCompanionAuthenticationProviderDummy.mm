@interface LACCompanionAuthenticationProviderDummy
- (BOOL)isAvailable;
- (LACCompanionAuthenticationProviderDelegate)delegate;
- (_TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy)init;
- (_TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy)initWithCompanion:(int64_t)companion replyQueue:(id)queue;
- (id)authenticateWithRequest:(id)request;
- (void)cancelAuthenticationWithID:(id)d;
- (void)domainStateForRequest:(id)request completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation LACCompanionAuthenticationProviderDummy

- (BOOL)isAvailable
{
  selfCopy = self;
  v3 = LACCompanionAuthenticationProviderDummy.isAvailable.getter();

  return v3 & 1;
}

- (LACCompanionAuthenticationProviderDelegate)delegate
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)domainStateForRequest:(id)request completion:(id)completion
{
  v5 = _Block_copy(completion);
  _Block_copy(v5);
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized LACCompanionAuthenticationProviderDummy.domainState(for:completion:)(selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
  swift_unknownObjectRelease();
}

- (_TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy)initWithCompanion:(int64_t)companion replyQueue:(id)queue
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion) = companion;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_replyQueue) = queue;
  v10.receiver = self;
  v10.super_class = ObjectType;
  queueCopy = queue;
  return [(LACCompanionAuthenticationProviderDummy *)&v10 init];
}

- (id)authenticateWithRequest:(id)request
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  selfCopy = self;
  UUID.init()();
  (*(v5 + 16))(v12, v8, v4);
  (*(v5 + 56))(v12, 0, 1, v4);
  $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)(selfCopy, v8);

  v14 = *(v5 + 8);
  v14(v8, v4);
  v15 = (*(v5 + 48))(v12, 1, v4);
  v16 = 0;
  if (v15 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v14(v12, v4);
    v16 = isa;
  }

  return v16;
}

- (void)cancelAuthenticationWithID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  LACCompanionAuthenticationProviderDummy.cancelAuthentication(with:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (_TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
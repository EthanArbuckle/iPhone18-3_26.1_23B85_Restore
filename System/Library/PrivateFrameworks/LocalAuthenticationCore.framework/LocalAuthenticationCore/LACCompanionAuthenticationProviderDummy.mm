@interface LACCompanionAuthenticationProviderDummy
- (BOOL)isAvailable;
- (LACCompanionAuthenticationProviderDelegate)delegate;
- (_TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy)init;
- (_TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy)initWithCompanion:(int64_t)a3 replyQueue:(id)a4;
- (id)authenticateWithRequest:(id)a3;
- (void)cancelAuthenticationWithID:(id)a3;
- (void)domainStateForRequest:(id)a3 completion:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation LACCompanionAuthenticationProviderDummy

- (BOOL)isAvailable
{
  v2 = self;
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

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)domainStateForRequest:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  swift_unknownObjectRetain();
  v6 = self;
  specialized LACCompanionAuthenticationProviderDummy.domainState(for:completion:)(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
  swift_unknownObjectRelease();
}

- (_TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy)initWithCompanion:(int64_t)a3 replyQueue:(id)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_replyQueue) = a4;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = a4;
  return [(LACCompanionAuthenticationProviderDummy *)&v10 init];
}

- (id)authenticateWithRequest:(id)a3
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
  v13 = self;
  UUID.init()();
  (*(v5 + 16))(v12, v8, v4);
  (*(v5 + 56))(v12, 0, 1, v4);
  $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)(v13, v8);

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

- (void)cancelAuthenticationWithID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
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
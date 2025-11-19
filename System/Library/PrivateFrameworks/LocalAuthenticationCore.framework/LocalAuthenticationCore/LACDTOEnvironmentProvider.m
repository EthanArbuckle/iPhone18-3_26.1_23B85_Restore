@interface LACDTOEnvironmentProvider
- (_TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider)init;
- (_TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider)initWithLocationProvider:(id)a3 featureController:(id)a4 ratchetStateProvider:(id)a5 lostModeController:(id)a6;
- (void)fetchEnvironmentForPolicy:(int64_t)a3 options:(id)a4 completion:(id)a5;
@end

@implementation LACDTOEnvironmentProvider

- (_TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider)initWithLocationProvider:(id)a3 featureController:(id)a4 ratchetStateProvider:(id)a5 lostModeController:(id)a6
{
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_locationProvider) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_featureController) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_ratchetStateProvider) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_lostModeController) = a6;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LACDTOEnvironmentProvider();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(LACDTOEnvironmentProvider *)&v7 init];
}

- (void)fetchEnvironmentForPolicy:(int64_t)a3 options:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  LACDTOEnvironmentProvider.fetchEnvironment(policy:options:completion:)(a3, v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACDTOEnvironment?, @unowned NSError?) -> (), v9);
}

- (_TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
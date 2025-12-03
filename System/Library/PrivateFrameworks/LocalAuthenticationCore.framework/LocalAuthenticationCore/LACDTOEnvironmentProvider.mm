@interface LACDTOEnvironmentProvider
- (_TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider)init;
- (_TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider)initWithLocationProvider:(id)provider featureController:(id)controller ratchetStateProvider:(id)stateProvider lostModeController:(id)modeController;
- (void)fetchEnvironmentForPolicy:(int64_t)policy options:(id)options completion:(id)completion;
@end

@implementation LACDTOEnvironmentProvider

- (_TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider)initWithLocationProvider:(id)provider featureController:(id)controller ratchetStateProvider:(id)stateProvider lostModeController:(id)modeController
{
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_locationProvider) = provider;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_featureController) = controller;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_ratchetStateProvider) = stateProvider;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_lostModeController) = modeController;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LACDTOEnvironmentProvider();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(LACDTOEnvironmentProvider *)&v7 init];
}

- (void)fetchEnvironmentForPolicy:(int64_t)policy options:(id)options completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  LACDTOEnvironmentProvider.fetchEnvironment(policy:options:completion:)(policy, v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACDTOEnvironment?, @unowned NSError?) -> (), v9);
}

- (_TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
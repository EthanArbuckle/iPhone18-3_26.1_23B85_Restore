@interface LACUIDTOBiometryRequiredScenePresentationHandler
- (BOOL)canHandle:(id)a3;
- (_TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler)init;
- (void)handle:(id)a3 inContext:(id)a4;
@end

@implementation LACUIDTOBiometryRequiredScenePresentationHandler

- (BOOL)canHandle:(id)a3
{
  v3 = a3;
  v4 = [v3 userInterfaceRequest];
  v5 = [v4 identifier];

  return v5 == 5;
}

- (void)handle:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized LACUIDTOBiometryRequiredScenePresentationHandler.handle(request:inContext:)(v7);
}

- (_TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface LACUIDTOBiometryRequiredScenePresentationHandler
- (BOOL)canHandle:(id)handle;
- (_TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler)init;
- (void)handle:(id)handle inContext:(id)context;
@end

@implementation LACUIDTOBiometryRequiredScenePresentationHandler

- (BOOL)canHandle:(id)handle
{
  handleCopy = handle;
  userInterfaceRequest = [handleCopy userInterfaceRequest];
  identifier = [userInterfaceRequest identifier];

  return identifier == 5;
}

- (void)handle:(id)handle inContext:(id)context
{
  handleCopy = handle;
  contextCopy = context;
  selfCopy = self;
  specialized LACUIDTOBiometryRequiredScenePresentationHandler.handle(request:inContext:)(contextCopy);
}

- (_TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
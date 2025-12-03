@interface LACUIAlertScenePresentationHandler
- (BOOL)canHandle:(id)handle;
- (_TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler)init;
- (void)handle:(id)handle inContext:(id)context;
@end

@implementation LACUIAlertScenePresentationHandler

- (BOOL)canHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  userInterfaceRequest = [handleCopy userInterfaceRequest];
  identifier = [userInterfaceRequest identifier];

  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration);
  return v8 == identifier;
}

- (void)handle:(id)handle inContext:(id)context
{
  handleCopy = handle;
  contextCopy = context;
  v11.super.isa = self;
  isa = v11.super.isa;
  v8.super.isa = handleCopy;
  v8._userInterfaceRequest = contextCopy;
  LACUIAlertScenePresentationHandler.handle(request:inContext:)(v8, v11);
}

- (_TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
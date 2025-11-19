@interface LACUIAlertScenePresentationHandler
- (BOOL)canHandle:(id)a3;
- (_TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler)init;
- (void)handle:(id)a3 inContext:(id)a4;
@end

@implementation LACUIAlertScenePresentationHandler

- (BOOL)canHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 userInterfaceRequest];
  v7 = [v6 identifier];

  v8 = *(&v5->super.isa + OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration);
  return v8 == v7;
}

- (void)handle:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.super.isa = self;
  isa = v11.super.isa;
  v8.super.isa = v6;
  v8._userInterfaceRequest = v7;
  LACUIAlertScenePresentationHandler.handle(request:inContext:)(v8, v11);
}

- (_TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
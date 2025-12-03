@interface LACUIAngelPresenter
- (_TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter)init;
- (id)requestForScene:(id)scene;
- (void)angelSceneDidActivate:(id)activate;
- (void)angelSceneDidDeactivate:(id)deactivate error:(id)error;
@end

@implementation LACUIAngelPresenter

- (id)requestForScene:(id)scene
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = LACUIAngelPresenter.request(forScene:)(v4, v6);

  return v8;
}

- (_TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)angelSceneDidActivate:(id)activate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized LACUIAngelPresenter.angelSceneDidActivate(_:)(activate);
  swift_unknownObjectRelease();
}

- (void)angelSceneDidDeactivate:(id)deactivate error:(id)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  errorCopy = error;
  LACUIAngelPresenter.angelSceneDidDeactivate(_:error:)(deactivate, error);
  swift_unknownObjectRelease();
}

@end
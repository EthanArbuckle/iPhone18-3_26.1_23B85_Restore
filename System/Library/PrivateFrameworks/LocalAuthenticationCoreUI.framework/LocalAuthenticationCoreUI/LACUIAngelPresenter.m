@interface LACUIAngelPresenter
- (_TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter)init;
- (id)requestForScene:(id)a3;
- (void)angelSceneDidActivate:(id)a3;
- (void)angelSceneDidDeactivate:(id)a3 error:(id)a4;
@end

@implementation LACUIAngelPresenter

- (id)requestForScene:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = LACUIAngelPresenter.request(forScene:)(v4, v6);

  return v8;
}

- (_TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)angelSceneDidActivate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  specialized LACUIAngelPresenter.angelSceneDidActivate(_:)(a3);
  swift_unknownObjectRelease();
}

- (void)angelSceneDidDeactivate:(id)a3 error:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = a4;
  LACUIAngelPresenter.angelSceneDidDeactivate(_:error:)(a3, a4);
  swift_unknownObjectRelease();
}

@end
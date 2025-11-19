@interface LACUIAngelConnectionHandler
- (_TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler)init;
- (void)showUIForRequest:(id)a3 completion:(id)a4;
@end

@implementation LACUIAngelConnectionHandler

- (_TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)showUIForRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized LACUIAngelConnectionHandler.showUI(for:completion:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end
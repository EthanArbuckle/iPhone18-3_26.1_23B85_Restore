@interface LACUIAngelConnectionHandler
- (_TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler)init;
- (void)showUIForRequest:(id)request completion:(id)completion;
@end

@implementation LACUIAngelConnectionHandler

- (_TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)showUIForRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  specialized LACUIAngelConnectionHandler.showUI(for:completion:)(requestCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end
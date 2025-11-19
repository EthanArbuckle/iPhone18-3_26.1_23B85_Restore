@interface LACUIAngelConnectionListener
- (_TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener)init;
- (void)connectionDidInvalidate:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4;
@end

@implementation LACUIAngelConnectionListener

- (_TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = self;
  specialized LACUIAngelConnectionListener.listener(_:didReceive:)(a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)connectionDidInvalidate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  LACUIAngelConnectionListener.connectionDidInvalidate(_:)(a3);
  swift_unknownObjectRelease();
}

@end
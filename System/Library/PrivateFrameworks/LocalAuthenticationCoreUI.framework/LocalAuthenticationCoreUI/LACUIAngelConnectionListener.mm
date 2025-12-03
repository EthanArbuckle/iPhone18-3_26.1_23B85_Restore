@interface LACUIAngelConnectionListener
- (_TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener)init;
- (void)connectionDidInvalidate:(id)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection;
@end

@implementation LACUIAngelConnectionListener

- (_TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized LACUIAngelConnectionListener.listener(_:didReceive:)(connection);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)connectionDidInvalidate:(id)invalidate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  LACUIAngelConnectionListener.connectionDidInvalidate(_:)(invalidate);
  swift_unknownObjectRelease();
}

@end
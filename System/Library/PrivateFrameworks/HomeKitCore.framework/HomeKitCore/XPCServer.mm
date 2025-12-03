@interface XPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC11HomeKitCore9XPCServer)init;
- (void)start;
@end

@implementation XPCServer

- (_TtC11HomeKitCore9XPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)start
{
  selfCopy = self;
  XPCServer.start()();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_25311BA10(connectionCopy);

  return v9 & 1;
}

@end
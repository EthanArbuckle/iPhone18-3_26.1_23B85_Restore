@interface WidgetCenterServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC10ChronoCore18WidgetCenterServer)init;
@end

@implementation WidgetCenterServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_224A32080(connectionCopy);

  return v9 & 1;
}

- (_TtC10ChronoCore18WidgetCenterServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
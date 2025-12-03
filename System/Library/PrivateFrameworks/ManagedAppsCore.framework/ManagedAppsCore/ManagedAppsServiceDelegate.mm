@interface ManagedAppsServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15ManagedAppsCore26ManagedAppsServiceDelegate)init;
@end

@implementation ManagedAppsServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_258038378(connectionCopy);

  return v9 & 1;
}

- (_TtC15ManagedAppsCore26ManagedAppsServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
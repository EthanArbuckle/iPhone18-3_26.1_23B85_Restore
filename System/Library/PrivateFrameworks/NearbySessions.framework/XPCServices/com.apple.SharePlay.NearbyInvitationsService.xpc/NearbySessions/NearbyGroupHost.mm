@interface NearbyGroupHost
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost)init;
@end

@implementation NearbyGroupHost

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized NearbyGroupHost.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

- (_TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
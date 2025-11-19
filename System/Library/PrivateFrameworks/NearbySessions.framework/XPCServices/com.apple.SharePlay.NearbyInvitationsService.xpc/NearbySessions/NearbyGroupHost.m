@interface NearbyGroupHost
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost)init;
@end

@implementation NearbyGroupHost

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized NearbyGroupHost.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

- (_TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
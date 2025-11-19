@interface NearbyInvitationServiceHost
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost)init;
- (void)dealloc;
@end

@implementation NearbyInvitationServiceHost

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_listener);
  v5 = self;
  [v4 invalidate];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(NearbyInvitationServiceHost *)&v6 dealloc];
}

- (_TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized NearbyInvitationServiceHost.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

@end
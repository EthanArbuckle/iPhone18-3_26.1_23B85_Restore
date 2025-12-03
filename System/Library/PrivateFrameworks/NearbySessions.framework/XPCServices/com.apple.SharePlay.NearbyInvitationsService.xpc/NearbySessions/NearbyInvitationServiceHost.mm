@interface NearbyInvitationServiceHost
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost)init;
- (void)dealloc;
@end

@implementation NearbyInvitationServiceHost

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_listener);
  selfCopy = self;
  [v4 invalidate];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(NearbyInvitationServiceHost *)&v6 dealloc];
}

- (_TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized NearbyInvitationServiceHost.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

@end
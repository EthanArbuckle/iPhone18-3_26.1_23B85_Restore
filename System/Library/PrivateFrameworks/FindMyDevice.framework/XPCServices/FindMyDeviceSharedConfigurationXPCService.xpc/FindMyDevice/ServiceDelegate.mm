@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC41FindMyDeviceSharedConfigurationXPCService15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100010170(connectionCopy);

  return v9 & 1;
}

- (_TtC41FindMyDeviceSharedConfigurationXPCService15ServiceDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC41FindMyDeviceSharedConfigurationXPCService15ServiceDelegate_service;
  type metadata accessor for FindMyDeviceSharedConfigurationXPCService();
  *(&self->super.isa + v4) = sub_100004928();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ServiceDelegate *)&v6 init];
}

@end
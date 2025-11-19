@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC41FindMyDeviceSharedConfigurationXPCService15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100010170(v7);

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
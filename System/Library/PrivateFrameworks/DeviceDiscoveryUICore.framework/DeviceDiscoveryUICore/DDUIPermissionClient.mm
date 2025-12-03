@interface DDUIPermissionClient
- (_TtC21DeviceDiscoveryUICore20DDUIPermissionClient)init;
- (void)dealloc;
@end

@implementation DDUIPermissionClient

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUIPermissionClient_connection);
  selfCopy = self;

  sub_230F39468();

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(DDUIPermissionClient *)&v6 dealloc];
}

- (_TtC21DeviceDiscoveryUICore20DDUIPermissionClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface DaemonXPCConnectionManager
- (_TtC19HealthRecordsDaemon26DaemonXPCConnectionManager)init;
- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error;
- (void)dealloc;
@end

@implementation DaemonXPCConnectionManager

- (void)dealloc
{
  selfCopy = self;
  sub_251C6E9E8();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for DaemonXPCConnectionManager();
  [(DaemonXPCConnectionManager *)&v3 dealloc];
}

- (_TtC19HealthRecordsDaemon26DaemonXPCConnectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error
{
  v7 = OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  v9 = type metadata accessor for DaemonConnectionServer();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC19HealthRecordsDaemon22DaemonConnectionServer_client] = client;
  *&v10[OBJC_IVAR____TtC19HealthRecordsDaemon22DaemonConnectionServer_serviceMap] = v8;
  v14.receiver = v10;
  v14.super_class = v9;
  clientCopy = client;

  v12 = [(DaemonXPCConnectionManager *)&v14 init];

  return v12;
}

@end
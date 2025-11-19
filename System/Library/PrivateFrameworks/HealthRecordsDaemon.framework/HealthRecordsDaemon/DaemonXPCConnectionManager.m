@interface DaemonXPCConnectionManager
- (_TtC19HealthRecordsDaemon26DaemonXPCConnectionManager)init;
- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation DaemonXPCConnectionManager

- (void)dealloc
{
  v2 = self;
  sub_251C6E9E8();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for DaemonXPCConnectionManager();
  [(DaemonXPCConnectionManager *)&v3 dealloc];
}

- (_TtC19HealthRecordsDaemon26DaemonXPCConnectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5
{
  v7 = OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  v9 = type metadata accessor for DaemonConnectionServer();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC19HealthRecordsDaemon22DaemonConnectionServer_client] = a4;
  *&v10[OBJC_IVAR____TtC19HealthRecordsDaemon22DaemonConnectionServer_serviceMap] = v8;
  v14.receiver = v10;
  v14.super_class = v9;
  v11 = a4;

  v12 = [(DaemonXPCConnectionManager *)&v14 init];

  return v12;
}

@end
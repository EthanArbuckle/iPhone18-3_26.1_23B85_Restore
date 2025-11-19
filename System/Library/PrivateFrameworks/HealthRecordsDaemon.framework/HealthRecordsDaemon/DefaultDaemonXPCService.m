@interface DefaultDaemonXPCService
- (_TtC19HealthRecordsDaemon23DefaultDaemonXPCService)init;
- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5;
@end

@implementation DefaultDaemonXPCService

- (_TtC19HealthRecordsDaemon23DefaultDaemonXPCService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator);
  v6 = *&self->identifier[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  v8 = a4;
  v9 = self;
  v10 = v7(v8);

  return v10;
}

@end
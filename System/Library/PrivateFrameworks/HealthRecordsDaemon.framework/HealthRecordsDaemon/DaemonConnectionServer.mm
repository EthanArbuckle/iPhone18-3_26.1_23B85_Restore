@interface DaemonConnectionServer
- (_TtC19HealthRecordsDaemon22DaemonConnectionServer)init;
- (id)exportedInterface;
- (void)remote_fetchEndpointForServiceIdentifier:(id)a3 completion:(id)a4;
@end

@implementation DaemonConnectionServer

- (_TtC19HealthRecordsDaemon22DaemonConnectionServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_fetchEndpointForServiceIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_251C70F14();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_251C6F118(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (id)exportedInterface
{
  v2 = HKHealthRecordsDaemonConnectionServerInterface();

  return v2;
}

@end
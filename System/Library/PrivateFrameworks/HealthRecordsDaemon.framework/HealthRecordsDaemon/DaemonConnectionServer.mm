@interface DaemonConnectionServer
- (_TtC19HealthRecordsDaemon22DaemonConnectionServer)init;
- (id)exportedInterface;
- (void)remote_fetchEndpointForServiceIdentifier:(id)identifier completion:(id)completion;
@end

@implementation DaemonConnectionServer

- (_TtC19HealthRecordsDaemon22DaemonConnectionServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_fetchEndpointForServiceIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_251C70F14();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_251C6F118(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (id)exportedInterface
{
  v2 = HKHealthRecordsDaemonConnectionServerInterface();

  return v2;
}

@end
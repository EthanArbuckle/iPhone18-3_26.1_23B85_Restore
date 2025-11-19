@interface ClinicalSharingSyncObserverServer
- (_TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer)init;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)remote_startObservingSyncStatusWithCompletion:(id)a3;
@end

@implementation ClinicalSharingSyncObserverServer

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_lock;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_lock);
  sub_251B40DE8(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  v4 = self;
  sub_251C702C4();
  MEMORY[0x25308E2B0](*(&self->super.isa + v3), -1, -1);
  v5.receiver = v4;
  v5.super_class = type metadata accessor for ClinicalSharingSyncObserverServer();
  [(ClinicalSharingSyncObserverServer *)&v5 dealloc];
}

- (_TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_startObservingSyncStatusWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self;
  sub_251B402FC();
  v4[2](v4, 1, 0);

  _Block_release(v4);
}

- (id)exportedInterface
{
  v2 = HKClinicalSharingSyncObserverServerInterface();

  return v2;
}

- (id)remoteInterface
{
  v2 = HKClinicalSharingSyncObserverClientInterface();

  return v2;
}

- (void)connectionInvalidated
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_lock);
  sub_251B40DE8(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  v3 = self;
  sub_251C702C4();
}

@end
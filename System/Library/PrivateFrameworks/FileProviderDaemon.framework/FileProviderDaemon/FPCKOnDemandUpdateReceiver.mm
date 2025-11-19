@interface FPCKOnDemandUpdateReceiver
- (NSDictionary)telemetryReport;
- (_TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver)init;
- (_TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver)initWithDomainBackend:(id)a3 persistUpdates:(BOOL)a4;
- (void)reingestItemIDs:(id)a3;
- (void)saveCheckpointWithReport:(id)a3;
- (void)sendDiagnosticsForItemIDs:(id)a3;
- (void)shouldPauseWithCompletion:(id)a3;
@end

@implementation FPCKOnDemandUpdateReceiver

- (NSDictionary)telemetryReport
{
  v2 = (self + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report);
  v3 = self;
  os_unfair_lock_lock(v2);
  v4 = *&v2[2]._os_unfair_lock_opaque;
  sub_1CF4DFA80();
  os_unfair_lock_unlock(v2);

  v5 = sub_1CF9E6618();

  return v5;
}

- (_TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver)initWithDomainBackend:(id)a3 persistUpdates:(BOOL)a4
{
  swift_unknownObjectRetain();
  v6 = sub_1CF3402F4(a3, a4);
  swift_unknownObjectRelease();
  return v6;
}

- (void)saveCheckpointWithReport:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CF33FBC0(v4);
}

- (void)shouldPauseWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  (*(v3 + 2))(v3, 0, 0);

  _Block_release(v3);
}

- (void)sendDiagnosticsForItemIDs:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_1CF9E5B88();
  v7 = v6;

  sub_1CF33FEB8();
  sub_1CEFE4714(v5, v7);
}

- (void)reingestItemIDs:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_1CF9E5B88();
  v7 = v6;

  sub_1CF340394();
  sub_1CEFE4714(v5, v7);
}

- (_TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
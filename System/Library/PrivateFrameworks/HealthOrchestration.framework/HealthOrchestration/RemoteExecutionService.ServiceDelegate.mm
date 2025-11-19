@interface RemoteExecutionService.ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCC19HealthOrchestration22RemoteExecutionService15ServiceDelegate)init;
- (void)remote_runWithWorkPlan:(id)a3 provider:(id)a4 executor:(id)a5 with:(id)a6;
@end

@implementation RemoteExecutionService.ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = objc_opt_self();
  v7 = a4;
  v8 = self;
  v9 = [v6 interfaceWithProtocol_];
  [v7 setExportedInterface_];

  [v7 setExportedObject_];
  [v7 resume];

  return 1;
}

- (void)remote_runWithWorkPlan:(id)a3 provider:(id)a4 executor:(id)a5 with:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_22887F3A0();
  v11 = v10;
  v12 = sub_22887F3A0();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  v16 = a3;
  v17 = self;
  sub_2288382A0(v16, v9, v11, v12, v14, sub_228838844, v15);
}

- (_TtCC19HealthOrchestration22RemoteExecutionService15ServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
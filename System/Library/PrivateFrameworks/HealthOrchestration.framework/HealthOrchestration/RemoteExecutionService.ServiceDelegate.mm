@interface RemoteExecutionService.ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCC19HealthOrchestration22RemoteExecutionService15ServiceDelegate)init;
- (void)remote_runWithWorkPlan:(id)plan provider:(id)provider executor:(id)executor with:(id)with;
@end

@implementation RemoteExecutionService.ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v6 = objc_opt_self();
  connectionCopy = connection;
  selfCopy = self;
  interfaceWithProtocol_ = [v6 interfaceWithProtocol_];
  [connectionCopy setExportedInterface_];

  [connectionCopy setExportedObject_];
  [connectionCopy resume];

  return 1;
}

- (void)remote_runWithWorkPlan:(id)plan provider:(id)provider executor:(id)executor with:(id)with
{
  v8 = _Block_copy(with);
  v9 = sub_22887F3A0();
  v11 = v10;
  v12 = sub_22887F3A0();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  planCopy = plan;
  selfCopy = self;
  sub_2288382A0(planCopy, v9, v11, v12, v14, sub_228838844, v15);
}

- (_TtCC19HealthOrchestration22RemoteExecutionService15ServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
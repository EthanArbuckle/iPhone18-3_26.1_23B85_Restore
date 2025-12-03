@interface HealthAppOrchestrationListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC14HealthPlatform30HealthAppOrchestrationListener)init;
@end

@implementation HealthAppOrchestrationListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_228520678(connectionCopy);

  return v9 & 1;
}

- (_TtC14HealthPlatform30HealthAppOrchestrationListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface HealthAppOrchestrationListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC14HealthPlatform30HealthAppOrchestrationListener)init;
@end

@implementation HealthAppOrchestrationListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_228520678(v7);

  return v9 & 1;
}

- (_TtC14HealthPlatform30HealthAppOrchestrationListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
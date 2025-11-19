@interface HealthAppOrchestrationClient
- (void)dealloc;
@end

@implementation HealthAppOrchestrationClient

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_clientProxy);
  swift_unknownObjectWeakAssign();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_connection);
  v6 = self;
  [v5 invalidate];
  v7.receiver = v6;
  v7.super_class = ObjectType;
  [(HealthAppOrchestrationClient *)&v7 dealloc];
}

@end
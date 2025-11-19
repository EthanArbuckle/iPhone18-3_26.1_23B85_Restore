@interface HealthAppHealthDaemonOrchestrationClient
- (_TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient)init;
- (void)runBackgroundGenerationWithPlugins:(id)a3 commitAsUrgent:(BOOL)a4 generationType:(unint64_t)a5 completion:(id)a6;
@end

@implementation HealthAppHealthDaemonOrchestrationClient

- (void)runBackgroundGenerationWithPlugins:(id)a3 commitAsUrgent:(BOOL)a4 generationType:(unint64_t)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  if (a3)
  {
    sub_2293C0600();
  }

  *(swift_allocObject() + 16) = v8;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient_connection);
  v10 = self;
  sub_2293C00E0();
}

- (_TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient)init
{
  v3 = OBJC_IVAR____TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient_connection;
  *(&self->super.isa + v3) = [objc_allocWithZone(sub_2293C0120()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for HealthAppHealthDaemonOrchestrationClient();
  return [(HealthAppHealthDaemonOrchestrationClient *)&v5 init];
}

@end
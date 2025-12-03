@interface HealthAppHealthDaemonOrchestrationClient
- (_TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient)init;
- (void)runBackgroundGenerationWithPlugins:(id)plugins commitAsUrgent:(BOOL)urgent generationType:(unint64_t)type completion:(id)completion;
@end

@implementation HealthAppHealthDaemonOrchestrationClient

- (void)runBackgroundGenerationWithPlugins:(id)plugins commitAsUrgent:(BOOL)urgent generationType:(unint64_t)type completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (plugins)
  {
    sub_2293C0600();
  }

  *(swift_allocObject() + 16) = v8;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient_connection);
  selfCopy = self;
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
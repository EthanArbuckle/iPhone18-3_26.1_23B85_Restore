@interface HDWorkoutBackgroundActivityController
- (STBackgroundActivitiesStatusDomainBackgroundActivityAttribution)currentAttribution;
- (_TtC12HealthDaemon37HDWorkoutBackgroundActivityController)init;
- (_TtC12HealthDaemon37HDWorkoutBackgroundActivityController)initWithAuditToken:(id *)token;
- (void)hidePillIfNeededWithCompletion:(id)completion;
- (void)setCurrentAttribution:(id)attribution;
- (void)showPillIfNeededWithCompletion:(id)completion;
@end

@implementation HDWorkoutBackgroundActivityController

- (STBackgroundActivitiesStatusDomainBackgroundActivityAttribution)currentAttribution
{
  v3 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCurrentAttribution:(id)attribution
{
  v5 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = attribution;
  attributionCopy = attribution;
}

- (_TtC12HealthDaemon37HDWorkoutBackgroundActivityController)initWithAuditToken:(id *)token
{
  v4 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_publisher;
  v7 = *&token->var0[4];
  v8 = *token->var0;
  *(&self->super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D6B910]) init];
  *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution) = 0;
  v5 = (self + OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_auditToken);
  *v5 = v8;
  v5[1] = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for HDWorkoutBackgroundActivityController();
  return [(HDWorkoutBackgroundActivityController *)&v9 init];
}

- (void)showPillIfNeededWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_228A15D8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_228A15314(v7, v6);
  sub_2289ACBE4(v7);
}

- (void)hidePillIfNeededWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_228A15D5C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_228A155E4(v7, v6);
  sub_2289ACBE4(v7);
}

- (_TtC12HealthDaemon37HDWorkoutBackgroundActivityController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
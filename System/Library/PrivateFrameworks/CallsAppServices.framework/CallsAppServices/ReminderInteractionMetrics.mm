@interface ReminderInteractionMetrics
- (_TtC16CallsAppServices26ReminderInteractionMetrics)init;
@end

@implementation ReminderInteractionMetrics

- (_TtC16CallsAppServices26ReminderInteractionMetrics)init
{
  v3 = OBJC_IVAR____TtC16CallsAppServices26ReminderInteractionMetrics_analyticsLogger;
  *(&self->super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69BDCF0]) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for ReminderInteractionMetrics();
  return [(ReminderInteractionMetrics *)&v5 init];
}

@end
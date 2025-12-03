@interface HDUserNotificationSystemApertureContentDefinition
- (_TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition)init;
- (_TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition)initWithImageDefinition:(id)definition preventAutomaticDismissal:(BOOL)dismissal;
@end

@implementation HDUserNotificationSystemApertureContentDefinition

- (_TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition)initWithImageDefinition:(id)definition preventAutomaticDismissal:(BOOL)dismissal
{
  *(&self->super.isa + OBJC_IVAR____TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition_imageDefinition) = definition;
  *(&self->super.isa + OBJC_IVAR____TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition_preventAutomaticDismissal) = dismissal;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HDUserNotificationSystemApertureContentDefinition();
  definitionCopy = definition;
  return [(HDUserNotificationSystemApertureContentDefinition *)&v7 init];
}

- (_TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface HDUserNotificationSystemApertureContentDefinition
- (_TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition)init;
- (_TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition)initWithImageDefinition:(id)a3 preventAutomaticDismissal:(BOOL)a4;
@end

@implementation HDUserNotificationSystemApertureContentDefinition

- (_TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition)initWithImageDefinition:(id)a3 preventAutomaticDismissal:(BOOL)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition_imageDefinition) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition_preventAutomaticDismissal) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HDUserNotificationSystemApertureContentDefinition();
  v5 = a3;
  return [(HDUserNotificationSystemApertureContentDefinition *)&v7 init];
}

- (_TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
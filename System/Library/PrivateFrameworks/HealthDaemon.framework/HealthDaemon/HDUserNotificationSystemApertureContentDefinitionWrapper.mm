@interface HDUserNotificationSystemApertureContentDefinitionWrapper
- (_TtC12HealthDaemon56HDUserNotificationSystemApertureContentDefinitionWrapper)init;
- (_TtC12HealthDaemon56HDUserNotificationSystemApertureContentDefinitionWrapper)initWithSystemColorName:(id)name systemImageName:(id)imageName preventAutomaticDismissal:(BOOL)dismissal;
@end

@implementation HDUserNotificationSystemApertureContentDefinitionWrapper

- (_TtC12HealthDaemon56HDUserNotificationSystemApertureContentDefinitionWrapper)initWithSystemColorName:(id)name systemImageName:(id)imageName preventAutomaticDismissal:(BOOL)dismissal
{
  sub_22911C35C();
  sub_22911C35C();
  v6 = objc_allocWithZone(sub_22911B8FC());
  sub_22911B8EC();
  v7 = objc_allocWithZone(sub_22911B91C());
  *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon56HDUserNotificationSystemApertureContentDefinitionWrapper_contentDefinition) = sub_22911B90C();
  v9.receiver = self;
  v9.super_class = type metadata accessor for HDUserNotificationSystemApertureContentDefinitionWrapper();
  return [(HDUserNotificationSystemApertureContentDefinitionWrapper *)&v9 init];
}

- (_TtC12HealthDaemon56HDUserNotificationSystemApertureContentDefinitionWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
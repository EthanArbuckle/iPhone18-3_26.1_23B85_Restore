@interface PluginNotificationRouter
- (_TtC18HealthExperienceUI24PluginNotificationRouter)init;
- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification;
@end

@implementation PluginNotificationRouter

- (_TtC18HealthExperienceUI24PluginNotificationRouter)init
{
  sub_1BA4A3C48();
  v2 = sub_1BA4A3C38();
  type metadata accessor for PlatformNotificationHandlerPluginProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = v2;
  v4 = sub_1B9F0A388(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification
{
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  v11.is_nil = selfCopy;
  v9 = selfCopy;
  v11.value.super.isa = notification;
  PluginNotificationRouter.userNotificationCenter(_:openSettingsFor:)(centerCopy, v11);
}

@end
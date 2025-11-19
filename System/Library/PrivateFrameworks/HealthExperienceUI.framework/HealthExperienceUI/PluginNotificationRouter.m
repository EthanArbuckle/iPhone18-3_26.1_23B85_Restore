@interface PluginNotificationRouter
- (_TtC18HealthExperienceUI24PluginNotificationRouter)init;
- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4;
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

- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v11.is_nil = v8;
  v9 = v8;
  v11.value.super.isa = a4;
  PluginNotificationRouter.userNotificationCenter(_:openSettingsFor:)(v6, v11);
}

@end
@interface TSNotificationSettings
- (TSNotificationSettings)init;
- (TSNotificationSettings)initWithSystemSettings:(id)settings;
@end

@implementation TSNotificationSettings

- (TSNotificationSettings)initWithSystemSettings:(id)settings
{
  settingsCopy = settings;
  v4 = sub_21980FBE0(settingsCopy);

  return v4;
}

- (TSNotificationSettings)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
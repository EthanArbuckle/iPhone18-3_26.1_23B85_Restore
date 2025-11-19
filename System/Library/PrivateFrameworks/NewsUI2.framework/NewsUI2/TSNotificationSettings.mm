@interface TSNotificationSettings
- (TSNotificationSettings)init;
- (TSNotificationSettings)initWithSystemSettings:(id)a3;
@end

@implementation TSNotificationSettings

- (TSNotificationSettings)initWithSystemSettings:(id)a3
{
  v3 = a3;
  v4 = sub_21980FBE0(v3);

  return v4;
}

- (TSNotificationSettings)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
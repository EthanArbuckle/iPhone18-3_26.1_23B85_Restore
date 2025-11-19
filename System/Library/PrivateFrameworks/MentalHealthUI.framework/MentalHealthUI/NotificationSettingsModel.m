@interface NotificationSettingsModel
- (_TtC14MentalHealthUI25NotificationSettingsModel)init;
- (void)dealloc;
- (void)settingsManagerDidUpdateNotificationSettings:(id)a3;
- (void)updateNotificationAuthorizationStatus;
@end

@implementation NotificationSettingsModel

- (_TtC14MentalHealthUI25NotificationSettingsModel)init
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(MEMORY[0x277D280B8]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v6 = objc_allocWithZone(ObjectType);
  v7 = NotificationSettingsModel.init(settingsManager:userNotificationCenter:)(v4, v5);
  swift_getObjectType();
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x30);
  v9 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:v5 name:*MEMORY[0x277D76758] object:0];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(NotificationSettingsModel *)&v7 dealloc];
}

- (void)updateNotificationAuthorizationStatus
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_userNotificationCenter);
  v3 = self;
  v4 = [v2 notificationSettings];
  [v4 authorizationStatus];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00574();
}

- (void)settingsManagerDidUpdateNotificationSettings:(id)a3
{
  swift_getObjectType();
  sub_2589F3A58();
  v4 = self;
  sub_258B004E4();
  sub_258B00504();
}

@end
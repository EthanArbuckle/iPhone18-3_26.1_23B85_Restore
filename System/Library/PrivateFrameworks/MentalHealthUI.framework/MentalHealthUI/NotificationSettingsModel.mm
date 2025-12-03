@interface NotificationSettingsModel
- (_TtC14MentalHealthUI25NotificationSettingsModel)init;
- (void)dealloc;
- (void)settingsManagerDidUpdateNotificationSettings:(id)settings;
- (void)updateNotificationAuthorizationStatus;
@end

@implementation NotificationSettingsModel

- (_TtC14MentalHealthUI25NotificationSettingsModel)init
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(MEMORY[0x277D280B8]) init];
  initWithBundleIdentifier_ = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v6 = objc_allocWithZone(ObjectType);
  v7 = NotificationSettingsModel.init(settingsManager:userNotificationCenter:)(v4, initWithBundleIdentifier_);
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
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D76758] object:0];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(NotificationSettingsModel *)&v7 dealloc];
}

- (void)updateNotificationAuthorizationStatus
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_userNotificationCenter);
  selfCopy = self;
  notificationSettings = [v2 notificationSettings];
  [notificationSettings authorizationStatus];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00574();
}

- (void)settingsManagerDidUpdateNotificationSettings:(id)settings
{
  swift_getObjectType();
  sub_2589F3A58();
  selfCopy = self;
  sub_258B004E4();
  sub_258B00504();
}

@end
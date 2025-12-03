@interface HMCameraProfile(HFUserNotificationServiceSettings)
- (HFUserNotificationServiceSettings)hf_userNotificationSettings;
- (id)_hf_doorbellBulletinNotification;
- (id)_hf_legacyMotionSensorBulletinNotification;
- (id)_hf_smartDetectionBulletinNotification;
- (id)hf_bulletinNotifications;
- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings;
@end

@implementation HMCameraProfile(HFUserNotificationServiceSettings)

- (id)_hf_doorbellBulletinNotification
{
  accessory = [self accessory];
  v2 = [accessory hf_serviceOfType:*MEMORY[0x277CD0E38]];
  bulletinBoardNotification = [v2 bulletinBoardNotification];

  return bulletinBoardNotification;
}

- (id)_hf_legacyMotionSensorBulletinNotification
{
  accessory = [self accessory];
  v2 = [accessory hf_serviceOfType:*MEMORY[0x277CD0EC0]];
  bulletinBoardNotification = [v2 bulletinBoardNotification];

  return bulletinBoardNotification;
}

- (id)_hf_smartDetectionBulletinNotification
{
  userSettings = [self userSettings];
  smartNotificationBulletin = [userSettings smartNotificationBulletin];

  return smartNotificationBulletin;
}

- (id)hf_bulletinNotifications
{
  v2 = objc_opt_new();
  _hf_legacyMotionSensorBulletinNotification = [self _hf_legacyMotionSensorBulletinNotification];
  [v2 na_safeAddObject:_hf_legacyMotionSensorBulletinNotification];

  _hf_smartDetectionBulletinNotification = [self _hf_smartDetectionBulletinNotification];
  [v2 na_safeAddObject:_hf_smartDetectionBulletinNotification];

  _hf_doorbellBulletinNotification = [self _hf_doorbellBulletinNotification];
  [v2 na_safeAddObject:_hf_doorbellBulletinNotification];

  return v2;
}

- (HFUserNotificationServiceSettings)hf_userNotificationSettings
{
  v2 = [HFUserNotificationServiceSettings alloc];
  hf_bulletinNotifications = [self hf_bulletinNotifications];
  v4 = [(HFUserNotificationServiceSettings *)v2 initWithBulletinBoardNotifications:hf_bulletinNotifications];

  return v4;
}

- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings
{
  v4 = a3;
  hf_userNotificationSettings = [self hf_userNotificationSettings];

  if (hf_userNotificationSettings)
  {
    hf_bulletinNotifications = [self hf_bulletinNotifications];
    [v4 applySettingsToBulletinBoardNotifications:hf_bulletinNotifications];
  }

  else
  {
    v7 = MEMORY[0x277D2C900];
    hf_bulletinNotifications = [MEMORY[0x277CCA9B8] hf_errorWithCode:32];
    [v7 futureWithError:hf_bulletinNotifications];
  }
  v8 = ;

  return v8;
}

@end
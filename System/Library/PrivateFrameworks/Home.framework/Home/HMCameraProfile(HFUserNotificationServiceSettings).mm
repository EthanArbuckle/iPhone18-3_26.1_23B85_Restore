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
  v1 = [a1 accessory];
  v2 = [v1 hf_serviceOfType:*MEMORY[0x277CD0E38]];
  v3 = [v2 bulletinBoardNotification];

  return v3;
}

- (id)_hf_legacyMotionSensorBulletinNotification
{
  v1 = [a1 accessory];
  v2 = [v1 hf_serviceOfType:*MEMORY[0x277CD0EC0]];
  v3 = [v2 bulletinBoardNotification];

  return v3;
}

- (id)_hf_smartDetectionBulletinNotification
{
  v1 = [a1 userSettings];
  v2 = [v1 smartNotificationBulletin];

  return v2;
}

- (id)hf_bulletinNotifications
{
  v2 = objc_opt_new();
  v3 = [a1 _hf_legacyMotionSensorBulletinNotification];
  [v2 na_safeAddObject:v3];

  v4 = [a1 _hf_smartDetectionBulletinNotification];
  [v2 na_safeAddObject:v4];

  v5 = [a1 _hf_doorbellBulletinNotification];
  [v2 na_safeAddObject:v5];

  return v2;
}

- (HFUserNotificationServiceSettings)hf_userNotificationSettings
{
  v2 = [HFUserNotificationServiceSettings alloc];
  v3 = [a1 hf_bulletinNotifications];
  v4 = [(HFUserNotificationServiceSettings *)v2 initWithBulletinBoardNotifications:v3];

  return v4;
}

- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings
{
  v4 = a3;
  v5 = [a1 hf_userNotificationSettings];

  if (v5)
  {
    v6 = [a1 hf_bulletinNotifications];
    [v4 applySettingsToBulletinBoardNotifications:v6];
  }

  else
  {
    v7 = MEMORY[0x277D2C900];
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:32];
    [v7 futureWithError:v6];
  }
  v8 = ;

  return v8;
}

@end
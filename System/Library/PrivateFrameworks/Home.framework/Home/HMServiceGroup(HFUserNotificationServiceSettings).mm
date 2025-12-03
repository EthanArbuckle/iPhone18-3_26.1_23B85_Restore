@interface HMServiceGroup(HFUserNotificationServiceSettings)
- (HFUserNotificationServiceSettings)hf_userNotificationSettings;
- (id)_hf_allBulletinBoardNotifications;
- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings;
@end

@implementation HMServiceGroup(HFUserNotificationServiceSettings)

- (id)_hf_allBulletinBoardNotifications
{
  services = [self services];
  v2 = [services na_map:&__block_literal_global_131];

  return v2;
}

- (HFUserNotificationServiceSettings)hf_userNotificationSettings
{
  v2 = [HFUserNotificationServiceSettings alloc];
  _hf_allBulletinBoardNotifications = [self _hf_allBulletinBoardNotifications];
  v4 = [(HFUserNotificationServiceSettings *)v2 initWithBulletinBoardNotifications:_hf_allBulletinBoardNotifications];

  return v4;
}

- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings
{
  v4 = a3;
  hf_userNotificationSettings = [self hf_userNotificationSettings];

  if (hf_userNotificationSettings)
  {
    _hf_allBulletinBoardNotifications = [self _hf_allBulletinBoardNotifications];
    [v4 applySettingsToBulletinBoardNotifications:_hf_allBulletinBoardNotifications];
  }

  else
  {
    v7 = MEMORY[0x277D2C900];
    _hf_allBulletinBoardNotifications = [MEMORY[0x277CCA9B8] hf_errorWithCode:32];
    [v7 futureWithError:_hf_allBulletinBoardNotifications];
  }
  v8 = ;

  return v8;
}

@end
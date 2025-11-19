@interface HMServiceGroup(HFUserNotificationServiceSettings)
- (HFUserNotificationServiceSettings)hf_userNotificationSettings;
- (id)_hf_allBulletinBoardNotifications;
- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings;
@end

@implementation HMServiceGroup(HFUserNotificationServiceSettings)

- (id)_hf_allBulletinBoardNotifications
{
  v1 = [a1 services];
  v2 = [v1 na_map:&__block_literal_global_131];

  return v2;
}

- (HFUserNotificationServiceSettings)hf_userNotificationSettings
{
  v2 = [HFUserNotificationServiceSettings alloc];
  v3 = [a1 _hf_allBulletinBoardNotifications];
  v4 = [(HFUserNotificationServiceSettings *)v2 initWithBulletinBoardNotifications:v3];

  return v4;
}

- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings
{
  v4 = a3;
  v5 = [a1 hf_userNotificationSettings];

  if (v5)
  {
    v6 = [a1 _hf_allBulletinBoardNotifications];
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
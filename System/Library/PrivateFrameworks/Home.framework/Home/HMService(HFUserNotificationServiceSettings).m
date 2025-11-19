@interface HMService(HFUserNotificationServiceSettings)
- (HFUserNotificationServiceSettings)hf_userNotificationSettings;
- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings;
@end

@implementation HMService(HFUserNotificationServiceSettings)

- (HFUserNotificationServiceSettings)hf_userNotificationSettings
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 bulletinBoardNotification];

  if (v2)
  {
    v3 = [HFUserNotificationServiceSettings alloc];
    v4 = [a1 bulletinBoardNotification];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [(HFUserNotificationServiceSettings *)v3 initWithBulletinBoardNotifications:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 hf_userNotificationSettings];

  if (v5)
  {
    v6 = [a1 bulletinBoardNotification];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 applySettingsToBulletinBoardNotifications:v7];
  }

  else
  {
    v9 = MEMORY[0x277D2C900];
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:32];
    v8 = [v9 futureWithError:v6];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

@end
@interface HMAccessory(HFUserNotificationServiceSettings)
- (HFUserNotificationServiceSettings)hf_userNotificationSettings;
- (id)_audioAnalysisEventBulletinNotifications;
- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings;
@end

@implementation HMAccessory(HFUserNotificationServiceSettings)

- (id)_audioAnalysisEventBulletinNotifications
{
  v2 = objc_opt_new();
  _hf_audioAnalysisEventBulletinBoardNotification = [self _hf_audioAnalysisEventBulletinBoardNotification];
  [v2 na_safeAddObject:_hf_audioAnalysisEventBulletinBoardNotification];

  v4 = [v2 copy];

  return v4;
}

- (HFUserNotificationServiceSettings)hf_userNotificationSettings
{
  bulletinBoardNotificationByEndpoint = [self bulletinBoardNotificationByEndpoint];

  v3 = [HFUserNotificationServiceSettings alloc];
  if (bulletinBoardNotificationByEndpoint)
  {
    bulletinBoardNotificationByEndpoint2 = [self bulletinBoardNotificationByEndpoint];
    allValues = [bulletinBoardNotificationByEndpoint2 allValues];
    v6 = [(HFUserNotificationServiceSettings *)v3 initWithBulletinBoardNotifications:allValues];
  }

  else
  {
    bulletinBoardNotificationByEndpoint2 = [self _audioAnalysisEventBulletinNotifications];
    v6 = [(HFUserNotificationServiceSettings *)v3 initWithBulletinBoardNotifications:bulletinBoardNotificationByEndpoint2];
  }

  return v6;
}

- (id)hf_updateUserNotificationSettings:()HFUserNotificationServiceSettings
{
  v4 = a3;
  bulletinBoardNotificationByEndpoint = [self bulletinBoardNotificationByEndpoint];

  if (bulletinBoardNotificationByEndpoint)
  {
    bulletinBoardNotificationByEndpoint2 = [self bulletinBoardNotificationByEndpoint];
    allValues = [bulletinBoardNotificationByEndpoint2 allValues];
    v8 = [v4 applySettingsToBulletinBoardNotifications:allValues];
  }

  else
  {
    hf_userNotificationSettings = [self hf_userNotificationSettings];

    if (hf_userNotificationSettings)
    {
      bulletinBoardNotificationByEndpoint2 = [self _audioAnalysisEventBulletinNotifications];
      [v4 applySettingsToBulletinBoardNotifications:bulletinBoardNotificationByEndpoint2];
    }

    else
    {
      v10 = MEMORY[0x277D2C900];
      bulletinBoardNotificationByEndpoint2 = [MEMORY[0x277CCA9B8] hf_errorWithCode:32];
      [v10 futureWithError:bulletinBoardNotificationByEndpoint2];
    }
    v8 = ;
  }

  return v8;
}

@end
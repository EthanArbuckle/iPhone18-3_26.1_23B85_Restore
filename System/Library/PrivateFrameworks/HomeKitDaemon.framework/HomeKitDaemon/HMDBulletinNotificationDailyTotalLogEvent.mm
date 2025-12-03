@interface HMDBulletinNotificationDailyTotalLogEvent
- (HMDBulletinNotificationDailyTotalLogEvent)initWithTopic:(id)topic countForTopic:(unint64_t)forTopic userNotificationSettings:(id)settings;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDBulletinNotificationDailyTotalLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"topic";
  topic = [(HMDBulletinNotificationDailyTotalLogEvent *)self topic];
  v10[0] = topic;
  v9[1] = @"topicCount";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDBulletinNotificationDailyTotalLogEvent topicCount](self, "topicCount")}];
  v10[1] = v4;
  v9[2] = @"bulletinNotificationSettings";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDBulletinNotificationDailyTotalLogEvent bulletinNotificationSettings](self, "bulletinNotificationSettings")}];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDBulletinNotificationDailyTotalLogEvent)initWithTopic:(id)topic countForTopic:(unint64_t)forTopic userNotificationSettings:(id)settings
{
  topicCopy = topic;
  settingsCopy = settings;
  v22.receiver = self;
  v22.super_class = HMDBulletinNotificationDailyTotalLogEvent;
  v11 = [(HMMLogEvent *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_topic, topic);
    v12->_topicCount = forTopic;
    v13 = settingsCopy;
    authorizationStatus = [v13 authorizationStatus];
    lockScreenSetting = [v13 lockScreenSetting];
    notificationCenterSetting = [v13 notificationCenterSetting];
    criticalAlertSetting = [v13 criticalAlertSetting];
    timeSensitiveSetting = [v13 timeSensitiveSetting];

    v19 = notificationCenterSetting == 2 || lockScreenSetting == 2;
    v20 = 3;
    if (!v19)
    {
      v20 = 1;
    }

    if (criticalAlertSetting == 2)
    {
      v20 |= 4uLL;
    }

    if (timeSensitiveSetting == 2)
    {
      v20 |= 8uLL;
    }

    if (authorizationStatus != 2)
    {
      v20 = 0;
    }

    v12->_bulletinNotificationSettings = v20;
  }

  return v12;
}

@end
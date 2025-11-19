@interface HMDBulletinNotificationDailyTotalLogEvent
- (HMDBulletinNotificationDailyTotalLogEvent)initWithTopic:(id)a3 countForTopic:(unint64_t)a4 userNotificationSettings:(id)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDBulletinNotificationDailyTotalLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"topic";
  v3 = [(HMDBulletinNotificationDailyTotalLogEvent *)self topic];
  v10[0] = v3;
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

- (HMDBulletinNotificationDailyTotalLogEvent)initWithTopic:(id)a3 countForTopic:(unint64_t)a4 userNotificationSettings:(id)a5
{
  v9 = a3;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = HMDBulletinNotificationDailyTotalLogEvent;
  v11 = [(HMMLogEvent *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_topic, a3);
    v12->_topicCount = a4;
    v13 = v10;
    v14 = [v13 authorizationStatus];
    v15 = [v13 lockScreenSetting];
    v16 = [v13 notificationCenterSetting];
    v17 = [v13 criticalAlertSetting];
    v18 = [v13 timeSensitiveSetting];

    v19 = v16 == 2 || v15 == 2;
    v20 = 3;
    if (!v19)
    {
      v20 = 1;
    }

    if (v17 == 2)
    {
      v20 |= 4uLL;
    }

    if (v18 == 2)
    {
      v20 |= 8uLL;
    }

    if (v14 != 2)
    {
      v20 = 0;
    }

    v12->_bulletinNotificationSettings = v20;
  }

  return v12;
}

@end
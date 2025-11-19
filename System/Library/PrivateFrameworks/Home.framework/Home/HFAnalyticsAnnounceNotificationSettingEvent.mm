@interface HFAnalyticsAnnounceNotificationSettingEvent
- (HFAnalyticsAnnounceNotificationSettingEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsAnnounceNotificationSettingEvent

- (HFAnalyticsAnnounceNotificationSettingEvent)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"announceNotificationSettingOption"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsann.isa);
  }

  v6 = [v4 objectForKeyedSubscript:@"announceSettingChangedByOwner"];
  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticsann_0.isa);
  }

  v7 = [v4 objectForKeyedSubscript:@"announceSettingChangedByAdmin"];
  if (!v7)
  {
    NSLog(&cfstr_Hfanalyticsann_1.isa);
  }

  v8 = [v4 objectForKeyedSubscript:@"announceSettingChangedDuringOnboarding"];
  if (!v8)
  {
    NSLog(&cfstr_Hfanalyticsann_2.isa);
  }

  v9 = [v4 objectForKeyedSubscript:@"announceSettingChangedFromUserSettings"];
  if (!v9)
  {
    NSLog(&cfstr_Hfanalyticsann_3.isa);
  }

  v10 = [v4 objectForKeyedSubscript:@"announceSettingChangedFromHomePodSettings"];
  if (!v10)
  {
    NSLog(&cfstr_Hfanalyticsann_4.isa);
  }

  v11 = [v4 objectForKeyedSubscript:@"announceSettingChangeFailed"];
  if (!v11)
  {
    NSLog(&cfstr_Hfanalyticsann_5.isa);
  }

  v25.receiver = self;
  v25.super_class = HFAnalyticsAnnounceNotificationSettingEvent;
  v12 = [(HFAnalyticsEvent *)&v25 initWithEventType:23];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_announceNotificationSettingOption, v5);
    objc_storeStrong(&v13->_settingChangedByOwner, v6);
    objc_storeStrong(&v13->_settingChangedByAdmin, v7);
    objc_storeStrong(&v13->_settingChangedDuringOnboarding, v8);
    objc_storeStrong(&v13->_settingChangedFromUserSettings, v9);
    objc_storeStrong(&v13->_settingChangedFromHomePodSettings, v10);
    objc_storeStrong(&v13->_announceSettingChangeFailed, v11);
    [MEMORY[0x277CCAC38] processInfo];
    v24 = v11;
    v14 = v10;
    v15 = v9;
    v16 = v8;
    v17 = v7;
    v18 = v6;
    v20 = v19 = v5;
    v21 = [v20 processName];
    processName = v13->_processName;
    v13->_processName = v21;

    v5 = v19;
    v6 = v18;
    v7 = v17;
    v8 = v16;
    v9 = v15;
    v10 = v14;
    v11 = v24;
  }

  return v13;
}

- (id)payload
{
  v14.receiver = self;
  v14.super_class = HFAnalyticsAnnounceNotificationSettingEvent;
  v3 = [(HFAnalyticsEvent *)&v14 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsAnnounceNotificationSettingEvent *)self announceNotificationSettingOption];
  [v4 setObject:v5 forKeyedSubscript:@"intercomNotificationSettingOption"];

  v6 = [(HFAnalyticsAnnounceNotificationSettingEvent *)self settingChangedByOwner];
  [v4 setObject:v6 forKeyedSubscript:@"intercomSettingChangedByOwner"];

  v7 = [(HFAnalyticsAnnounceNotificationSettingEvent *)self settingChangedByAdmin];
  [v4 setObject:v7 forKeyedSubscript:@"intercomSettingChangedByAdmin"];

  v8 = [(HFAnalyticsAnnounceNotificationSettingEvent *)self settingChangedDuringOnboarding];
  [v4 setObject:v8 forKeyedSubscript:@"intercomSettingChangedDuringOnboarding"];

  v9 = [(HFAnalyticsAnnounceNotificationSettingEvent *)self settingChangedFromUserSettings];
  [v4 setObject:v9 forKeyedSubscript:@"intercomSettingChangedFromUserSettings"];

  v10 = [(HFAnalyticsAnnounceNotificationSettingEvent *)self settingChangedFromHomePodSettings];
  [v4 setObject:v10 forKeyedSubscript:@"intercomSettingChangedFromHomePodSettings"];

  v11 = [(HFAnalyticsAnnounceNotificationSettingEvent *)self announceSettingChangeFailed];
  [v4 setObject:v11 forKeyedSubscript:@"intercomSettingChangeFailed"];

  v12 = [(HFAnalyticsAnnounceNotificationSettingEvent *)self processName];
  [v4 setObject:v12 forKeyedSubscript:@"processName"];

  return v4;
}

@end
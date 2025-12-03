@interface HFAnalyticsAnnounceNotificationSettingEvent
- (HFAnalyticsAnnounceNotificationSettingEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsAnnounceNotificationSettingEvent

- (HFAnalyticsAnnounceNotificationSettingEvent)initWithData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"announceNotificationSettingOption"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsann.isa);
  }

  v6 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedByOwner"];
  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticsann_0.isa);
  }

  v7 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedByAdmin"];
  if (!v7)
  {
    NSLog(&cfstr_Hfanalyticsann_1.isa);
  }

  v8 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedDuringOnboarding"];
  if (!v8)
  {
    NSLog(&cfstr_Hfanalyticsann_2.isa);
  }

  v9 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedFromUserSettings"];
  if (!v9)
  {
    NSLog(&cfstr_Hfanalyticsann_3.isa);
  }

  v10 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedFromHomePodSettings"];
  if (!v10)
  {
    NSLog(&cfstr_Hfanalyticsann_4.isa);
  }

  v11 = [dataCopy objectForKeyedSubscript:@"announceSettingChangeFailed"];
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
    processName = [v20 processName];
    processName = v13->_processName;
    v13->_processName = processName;

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
  payload = [(HFAnalyticsEvent *)&v14 payload];
  v4 = [payload mutableCopy];

  announceNotificationSettingOption = [(HFAnalyticsAnnounceNotificationSettingEvent *)self announceNotificationSettingOption];
  [v4 setObject:announceNotificationSettingOption forKeyedSubscript:@"intercomNotificationSettingOption"];

  settingChangedByOwner = [(HFAnalyticsAnnounceNotificationSettingEvent *)self settingChangedByOwner];
  [v4 setObject:settingChangedByOwner forKeyedSubscript:@"intercomSettingChangedByOwner"];

  settingChangedByAdmin = [(HFAnalyticsAnnounceNotificationSettingEvent *)self settingChangedByAdmin];
  [v4 setObject:settingChangedByAdmin forKeyedSubscript:@"intercomSettingChangedByAdmin"];

  settingChangedDuringOnboarding = [(HFAnalyticsAnnounceNotificationSettingEvent *)self settingChangedDuringOnboarding];
  [v4 setObject:settingChangedDuringOnboarding forKeyedSubscript:@"intercomSettingChangedDuringOnboarding"];

  settingChangedFromUserSettings = [(HFAnalyticsAnnounceNotificationSettingEvent *)self settingChangedFromUserSettings];
  [v4 setObject:settingChangedFromUserSettings forKeyedSubscript:@"intercomSettingChangedFromUserSettings"];

  settingChangedFromHomePodSettings = [(HFAnalyticsAnnounceNotificationSettingEvent *)self settingChangedFromHomePodSettings];
  [v4 setObject:settingChangedFromHomePodSettings forKeyedSubscript:@"intercomSettingChangedFromHomePodSettings"];

  announceSettingChangeFailed = [(HFAnalyticsAnnounceNotificationSettingEvent *)self announceSettingChangeFailed];
  [v4 setObject:announceSettingChangeFailed forKeyedSubscript:@"intercomSettingChangeFailed"];

  processName = [(HFAnalyticsAnnounceNotificationSettingEvent *)self processName];
  [v4 setObject:processName forKeyedSubscript:@"processName"];

  return v4;
}

@end
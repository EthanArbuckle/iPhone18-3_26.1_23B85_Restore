@interface HFAnalyticsAnnounceUserSettingEvent
- (HFAnalyticsAnnounceUserSettingEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsAnnounceUserSettingEvent

- (HFAnalyticsAnnounceUserSettingEvent)initWithData:(id)data
{
  dataCopy = data;
  obj = [dataCopy objectForKeyedSubscript:@"announceIsEnabledForUser"];
  if (!obj)
  {
    NSLog(&cfstr_Hfanalyticsann_6.isa);
  }

  v5 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedForCurrentUser"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsann_7.isa);
  }

  v6 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedEnabledForAdminUser"];
  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticsann_8.isa);
  }

  v7 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedByOwner"];
  if (!v7)
  {
    NSLog(&cfstr_Hfanalyticsann_0.isa);
  }

  v8 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedByAdmin"];
  if (!v8)
  {
    NSLog(&cfstr_Hfanalyticsann_1.isa);
  }

  v9 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedDuringOnboarding"];
  if (!v9)
  {
    NSLog(&cfstr_Hfanalyticsann_2.isa);
  }

  v10 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedFromUserSettings"];
  if (!v10)
  {
    NSLog(&cfstr_Hfanalyticsann_3.isa);
  }

  v11 = [dataCopy objectForKeyedSubscript:@"announceSettingChangedFromHomePodSettings"];
  if (!v11)
  {
    NSLog(&cfstr_Hfanalyticsann_4.isa);
  }

  v12 = [dataCopy objectForKeyedSubscript:@"announceSettingChangeFailed"];
  if (!v12)
  {
    NSLog(&cfstr_Hfanalyticsann_5.isa);
  }

  v27.receiver = self;
  v27.super_class = HFAnalyticsAnnounceUserSettingEvent;
  v13 = [(HFAnalyticsEvent *)&v27 initWithEventType:21];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_announceEnabledForUser, obj);
    objc_storeStrong(&v14->_settingChangedForCurrentUser, v5);
    objc_storeStrong(&v14->_settingChangedForAdminUser, v6);
    objc_storeStrong(&v14->_settingChangedByOwner, v7);
    objc_storeStrong(&v14->_settingChangedByAdmin, v8);
    objc_storeStrong(&v14->_settingChangedDuringOnboarding, v9);
    objc_storeStrong(&v14->_settingChangedFromUserSettings, v10);
    objc_storeStrong(&v14->_settingChangedFromHomePodSettings, v11);
    objc_storeStrong(&v14->_announceSettingChangeFailed, v12);
    [MEMORY[0x277CCAC38] processInfo];
    v25 = v10;
    v15 = v9;
    v16 = v8;
    v17 = v7;
    v18 = v6;
    v19 = v5;
    v21 = v20 = v12;
    processName = [v21 processName];
    processName = v14->_processName;
    v14->_processName = processName;

    v12 = v20;
    v5 = v19;
    v6 = v18;
    v7 = v17;
    v8 = v16;
    v9 = v15;
    v10 = v25;
  }

  return v14;
}

- (id)payload
{
  v16.receiver = self;
  v16.super_class = HFAnalyticsAnnounceUserSettingEvent;
  payload = [(HFAnalyticsEvent *)&v16 payload];
  v4 = [payload mutableCopy];

  announceEnabledForUser = [(HFAnalyticsAnnounceUserSettingEvent *)self announceEnabledForUser];
  [v4 setObject:announceEnabledForUser forKeyedSubscript:@"intercomIsEnabledForUser"];

  settingChangedForCurrentUser = [(HFAnalyticsAnnounceUserSettingEvent *)self settingChangedForCurrentUser];
  [v4 setObject:settingChangedForCurrentUser forKeyedSubscript:@"intercomSettingChangedForCurrentUser"];

  settingChangedForAdminUser = [(HFAnalyticsAnnounceUserSettingEvent *)self settingChangedForAdminUser];
  [v4 setObject:settingChangedForAdminUser forKeyedSubscript:@"intercomSettingChangedForAdminUser"];

  settingChangedByOwner = [(HFAnalyticsAnnounceUserSettingEvent *)self settingChangedByOwner];
  [v4 setObject:settingChangedByOwner forKeyedSubscript:@"intercomSettingChangedByOwner"];

  settingChangedByAdmin = [(HFAnalyticsAnnounceUserSettingEvent *)self settingChangedByAdmin];
  [v4 setObject:settingChangedByAdmin forKeyedSubscript:@"intercomSettingChangedByAdmin"];

  settingChangedDuringOnboarding = [(HFAnalyticsAnnounceUserSettingEvent *)self settingChangedDuringOnboarding];
  [v4 setObject:settingChangedDuringOnboarding forKeyedSubscript:@"intercomSettingChangedDuringOnboarding"];

  settingChangedFromUserSettings = [(HFAnalyticsAnnounceUserSettingEvent *)self settingChangedFromUserSettings];
  [v4 setObject:settingChangedFromUserSettings forKeyedSubscript:@"intercomSettingChangedFromUserSettings"];

  settingChangedFromHomePodSettings = [(HFAnalyticsAnnounceUserSettingEvent *)self settingChangedFromHomePodSettings];
  [v4 setObject:settingChangedFromHomePodSettings forKeyedSubscript:@"intercomSettingChangedFromHomePodSettings"];

  announceSettingChangeFailed = [(HFAnalyticsAnnounceUserSettingEvent *)self announceSettingChangeFailed];
  [v4 setObject:announceSettingChangeFailed forKeyedSubscript:@"intercomSettingChangeFailed"];

  processName = [(HFAnalyticsAnnounceUserSettingEvent *)self processName];
  [v4 setObject:processName forKeyedSubscript:@"processName"];

  return v4;
}

@end
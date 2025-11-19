@interface HFAnalyticsHomePodAlarmUpdatedEvent
- (HFAnalyticsHomePodAlarmUpdatedEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsHomePodAlarmUpdatedEvent

- (HFAnalyticsHomePodAlarmUpdatedEvent)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"homePodAlarmID"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticshom.isa);
  }

  v6 = [v4 objectForKeyedSubscript:@"alarmUpdatedSuccessfully"];
  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticshom_5.isa);
  }

  v7 = [v4 objectForKeyedSubscript:@"isMusicAlarm"];
  if (!v7)
  {
    NSLog(&cfstr_Hfanalyticshom_1.isa);
  }

  v8 = [v4 objectForKeyedSubscript:@"hasCustomVolume"];
  if (!v8)
  {
    NSLog(&cfstr_Hfanalyticshom_2.isa);
  }

  v9 = [v4 objectForKeyedSubscript:@"customVolumeLevel"];
  if (!v9)
  {
    NSLog(&cfstr_Hfanalyticshom_3.isa);
  }

  v17.receiver = self;
  v17.super_class = HFAnalyticsHomePodAlarmUpdatedEvent;
  v10 = [(HFAnalyticsEvent *)&v17 initWithEventType:16];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homePodAlarmID, v5);
    v11->_alarmUpdatedSuccessfully = [v6 BOOLValue];
    v11->_isMusicAlarm = [v7 BOOLValue];
    v11->_hasCustomVolume = [v8 BOOLValue];
    [v9 floatValue];
    v11->_customVolumeLevel = v12;
    v13 = [MEMORY[0x277CCAC38] processInfo];
    v14 = [v13 processName];
    processName = v11->_processName;
    v11->_processName = v14;
  }

  return v11;
}

- (id)payload
{
  v13.receiver = self;
  v13.super_class = HFAnalyticsHomePodAlarmUpdatedEvent;
  v3 = [(HFAnalyticsEvent *)&v13 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsHomePodAlarmUpdatedEvent *)self homePodAlarmID];
  [v4 setObject:v5 forKeyedSubscript:@"homePodAlarmID"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsHomePodAlarmUpdatedEvent alarmUpdatedSuccessfully](self, "alarmUpdatedSuccessfully")}];
  [v4 setObject:v6 forKeyedSubscript:@"homePodAlarmUpdatedSuccessfully"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsHomePodAlarmUpdatedEvent isMusicAlarm](self, "isMusicAlarm")}];
  [v4 setObject:v7 forKeyedSubscript:@"isHomePodMusicAlarm"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsHomePodAlarmUpdatedEvent hasCustomVolume](self, "hasCustomVolume")}];
  [v4 setObject:v8 forKeyedSubscript:@"homePodMusicAlarmHasCustomVolume"];

  v9 = MEMORY[0x277CCABB0];
  [(HFAnalyticsHomePodAlarmUpdatedEvent *)self customVolumeLevel];
  v10 = [v9 numberWithFloat:?];
  [v4 setObject:v10 forKeyedSubscript:@"homePodMusicAlarmCustomVolumeLevel"];

  v11 = [(HFAnalyticsHomePodAlarmUpdatedEvent *)self processName];
  [v4 setObject:v11 forKeyedSubscript:@"processName"];

  return v4;
}

@end
@interface HFAnalyticsHomePodAlarmDeletedEvent
- (HFAnalyticsHomePodAlarmDeletedEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsHomePodAlarmDeletedEvent

- (HFAnalyticsHomePodAlarmDeletedEvent)initWithData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"homePodAlarmID"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticshom.isa);
  }

  v6 = [dataCopy objectForKeyedSubscript:@"alarmDeletedSuccessfully"];
  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticshom_0.isa);
  }

  v7 = [dataCopy objectForKeyedSubscript:@"isMusicAlarm"];
  if (!v7)
  {
    NSLog(&cfstr_Hfanalyticshom_1.isa);
  }

  v8 = [dataCopy objectForKeyedSubscript:@"hasCustomVolume"];
  if (!v8)
  {
    NSLog(&cfstr_Hfanalyticshom_2.isa);
  }

  v9 = [dataCopy objectForKeyedSubscript:@"customVolumeLevel"];
  if (!v9)
  {
    NSLog(&cfstr_Hfanalyticshom_3.isa);
  }

  v17.receiver = self;
  v17.super_class = HFAnalyticsHomePodAlarmDeletedEvent;
  v10 = [(HFAnalyticsEvent *)&v17 initWithEventType:17];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homePodAlarmID, v5);
    v11->_alarmDeletedSuccessfully = [v6 BOOLValue];
    v11->_isMusicAlarm = [v7 BOOLValue];
    v11->_hasCustomVolume = [v8 BOOLValue];
    [v9 floatValue];
    v11->_customVolumeLevel = v12;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processName = v11->_processName;
    v11->_processName = processName;
  }

  return v11;
}

- (id)payload
{
  v13.receiver = self;
  v13.super_class = HFAnalyticsHomePodAlarmDeletedEvent;
  payload = [(HFAnalyticsEvent *)&v13 payload];
  v4 = [payload mutableCopy];

  homePodAlarmID = [(HFAnalyticsHomePodAlarmDeletedEvent *)self homePodAlarmID];
  [v4 setObject:homePodAlarmID forKeyedSubscript:@"homePodAlarmID"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsHomePodAlarmDeletedEvent alarmDeletedSuccessfully](self, "alarmDeletedSuccessfully")}];
  [v4 setObject:v6 forKeyedSubscript:@"homePodAlarmDeletedSuccessfully"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsHomePodAlarmDeletedEvent isMusicAlarm](self, "isMusicAlarm")}];
  [v4 setObject:v7 forKeyedSubscript:@"isHomePodMusicAlarm"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsHomePodAlarmDeletedEvent hasCustomVolume](self, "hasCustomVolume")}];
  [v4 setObject:v8 forKeyedSubscript:@"homePodMusicAlarmHasCustomVolume"];

  v9 = MEMORY[0x277CCABB0];
  [(HFAnalyticsHomePodAlarmDeletedEvent *)self customVolumeLevel];
  v10 = [v9 numberWithFloat:?];
  [v4 setObject:v10 forKeyedSubscript:@"homePodMusicAlarmCustomVolumeLevel"];

  processName = [(HFAnalyticsHomePodAlarmDeletedEvent *)self processName];
  [v4 setObject:processName forKeyedSubscript:@"processName"];

  return v4;
}

@end
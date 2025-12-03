@interface HFAnalyticsAppForegroundDurationEvent
- (HFAnalyticsAppForegroundDurationEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsAppForegroundDurationEvent

- (HFAnalyticsAppForegroundDurationEvent)initWithData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"foregroundDuration"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsapp.isa);
  }

  v6 = [dataCopy objectForKeyedSubscript:@"userHasAccessories"];
  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticsapp_0.isa);
  }

  v13.receiver = self;
  v13.super_class = HFAnalyticsAppForegroundDurationEvent;
  v7 = [(HFAnalyticsEvent *)&v13 initWithEventType:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_foregroundDuration, v5);
    v8->_userHasAccessories = [v6 BOOLValue];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processName = v8->_processName;
    v8->_processName = processName;
  }

  return v8;
}

- (id)payload
{
  v9.receiver = self;
  v9.super_class = HFAnalyticsAppForegroundDurationEvent;
  payload = [(HFAnalyticsEvent *)&v9 payload];
  v4 = [payload mutableCopy];

  foregroundDuration = [(HFAnalyticsAppForegroundDurationEvent *)self foregroundDuration];
  [v4 setObject:foregroundDuration forKeyedSubscript:@"foregroundDuration"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAppForegroundDurationEvent userHasAccessories](self, "userHasAccessories")}];
  [v4 setObject:v6 forKeyedSubscript:@"userHasAccessories"];

  processName = [(HFAnalyticsAppForegroundDurationEvent *)self processName];
  [v4 setObject:processName forKeyedSubscript:@"processName"];

  return v4;
}

@end
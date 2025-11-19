@interface HFAnalyticsAppForegroundDurationEvent
- (HFAnalyticsAppForegroundDurationEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsAppForegroundDurationEvent

- (HFAnalyticsAppForegroundDurationEvent)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"foregroundDuration"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsapp.isa);
  }

  v6 = [v4 objectForKeyedSubscript:@"userHasAccessories"];
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
    v9 = [MEMORY[0x277CCAC38] processInfo];
    v10 = [v9 processName];
    processName = v8->_processName;
    v8->_processName = v10;
  }

  return v8;
}

- (id)payload
{
  v9.receiver = self;
  v9.super_class = HFAnalyticsAppForegroundDurationEvent;
  v3 = [(HFAnalyticsEvent *)&v9 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsAppForegroundDurationEvent *)self foregroundDuration];
  [v4 setObject:v5 forKeyedSubscript:@"foregroundDuration"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAppForegroundDurationEvent userHasAccessories](self, "userHasAccessories")}];
  [v4 setObject:v6 forKeyedSubscript:@"userHasAccessories"];

  v7 = [(HFAnalyticsAppForegroundDurationEvent *)self processName];
  [v4 setObject:v7 forKeyedSubscript:@"processName"];

  return v4;
}

@end
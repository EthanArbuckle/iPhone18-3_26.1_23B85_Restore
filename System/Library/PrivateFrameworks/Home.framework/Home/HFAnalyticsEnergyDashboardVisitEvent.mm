@interface HFAnalyticsEnergyDashboardVisitEvent
- (HFAnalyticsEnergyDashboardVisitEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsEnergyDashboardVisitEvent

- (HFAnalyticsEnergyDashboardVisitEvent)initWithData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"energyDashboardStatus"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsene_8.isa);
  }

  objc_opt_class();
  v6 = [dataCopy objectForKeyedSubscript:@"energyForecastGridID"];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    NSLog(&cfstr_Hfanalyticsene_9.isa);
  }

  v9 = [dataCopy objectForKeyedSubscript:@"energyDashboardDoublePaneEnabled"];
  if (!v9)
  {
    NSLog(&cfstr_Hfanalyticsene_10.isa);
  }

  v13.receiver = self;
  v13.super_class = HFAnalyticsEnergyDashboardVisitEvent;
  v10 = [(HFAnalyticsEvent *)&v13 initWithEventType:44];
  v11 = v10;
  if (v10)
  {
    v10->_status = v5;
    objc_storeStrong(&v10->_gridID, v7);
    v11->_isDoublePaneEnabled = [v9 BOOLValue];
  }

  return v11;
}

- (id)payload
{
  v9.receiver = self;
  v9.super_class = HFAnalyticsEnergyDashboardVisitEvent;
  payload = [(HFAnalyticsEvent *)&v9 payload];
  v4 = [payload mutableCopy];

  status = [(HFAnalyticsEnergyDashboardVisitEvent *)self status];
  [v4 na_safeSetObject:status forKey:@"energyDashboardStatus"];

  gridID = [(HFAnalyticsEnergyDashboardVisitEvent *)self gridID];
  [v4 na_safeSetObject:gridID forKey:@"energyForecastGridID"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsEnergyDashboardVisitEvent isDoublePaneEnabled](self, "isDoublePaneEnabled")}];
  [v4 na_safeSetObject:v7 forKey:@"energyDashboardDoublePaneEnabled"];

  [v4 na_safeSetObject:&unk_2825252F0 forKey:@"homeAppEventCount"];

  return v4;
}

@end
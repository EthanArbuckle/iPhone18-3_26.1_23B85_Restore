@interface HFAnalyticsEnergyIndicatorAccessoryViewVisitEvent
- (HFAnalyticsEnergyIndicatorAccessoryViewVisitEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsEnergyIndicatorAccessoryViewVisitEvent

- (HFAnalyticsEnergyIndicatorAccessoryViewVisitEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"energyForecastGridID"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    NSLog(&cfstr_Hfanalyticsene_2.isa);
  }

  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"energyIndicatorAdviceText"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    NSLog(&cfstr_Hfanalyticsene_3.isa);
  }

  v14.receiver = self;
  v14.super_class = HFAnalyticsEnergyIndicatorAccessoryViewVisitEvent;
  v11 = [(HFAnalyticsEvent *)&v14 initWithEventType:51];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_gridID, v6);
    objc_storeStrong(&v12->_adviceText, v9);
  }

  return v12;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsEnergyIndicatorAccessoryViewVisitEvent;
  v3 = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsEnergyIndicatorAccessoryViewVisitEvent *)self gridID];
  [v4 na_safeSetObject:v5 forKey:@"energyForecastGridID"];

  v6 = [(HFAnalyticsEnergyIndicatorAccessoryViewVisitEvent *)self adviceText];
  [v4 na_safeSetObject:v6 forKey:@"energyIndicatorAdviceText"];

  [v4 na_safeSetObject:&unk_2825236A0 forKey:@"homeAppEventCount"];

  return v4;
}

@end
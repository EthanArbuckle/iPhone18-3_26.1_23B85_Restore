@interface HFAnalyticsAutomationNamingTypeProportionEvent
- (HFAnalyticsAutomationNamingTypeProportionEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsAutomationNamingTypeProportionEvent

- (HFAnalyticsAutomationNamingTypeProportionEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"percentUsingConfiguredNameKey"];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v11.receiver = self;
  v11.super_class = HFAnalyticsAutomationNamingTypeProportionEvent;
  v8 = [(HFAnalyticsEvent *)&v11 initWithEventType:25];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_percentUsingConfiguredName, v6);
  }

  return v9;
}

- (id)payload
{
  v7.receiver = self;
  v7.super_class = HFAnalyticsAutomationNamingTypeProportionEvent;
  v3 = [(HFAnalyticsEvent *)&v7 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsAutomationNamingTypeProportionEvent *)self percentUsingConfiguredName];
  [v4 na_safeSetObject:v5 forKey:@"percentType0"];

  return v4;
}

@end
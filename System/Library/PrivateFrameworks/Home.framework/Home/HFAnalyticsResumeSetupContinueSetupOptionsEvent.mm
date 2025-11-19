@interface HFAnalyticsResumeSetupContinueSetupOptionsEvent
- (HFAnalyticsResumeSetupContinueSetupOptionsEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsResumeSetupContinueSetupOptionsEvent

- (HFAnalyticsResumeSetupContinueSetupOptionsEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"accessoryCategoryType"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"resumeSetupSelectedOption"];

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v14.receiver = self;
  v14.super_class = HFAnalyticsResumeSetupContinueSetupOptionsEvent;
  v11 = [(HFAnalyticsEvent *)&v14 initWithEventType:29];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accessoryType, v6);
    objc_storeStrong(&v12->_resumeSetupOption, v9);
  }

  return v12;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsResumeSetupContinueSetupOptionsEvent;
  v3 = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsResumeSetupContinueSetupOptionsEvent *)self accessoryType];
  [v4 na_safeSetObject:v5 forKey:@"accessory"];

  v6 = [(HFAnalyticsResumeSetupContinueSetupOptionsEvent *)self resumeSetupOption];
  [v4 na_safeSetObject:v6 forKey:@"optionSelected"];

  return v4;
}

@end
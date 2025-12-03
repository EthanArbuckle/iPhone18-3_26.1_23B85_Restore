@interface HFAnalyticsResumeSetupContinueSetupOptionsEvent
- (HFAnalyticsResumeSetupContinueSetupOptionsEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsResumeSetupContinueSetupOptionsEvent

- (HFAnalyticsResumeSetupContinueSetupOptionsEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"accessoryCategoryType"];
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
  v8 = [dataCopy objectForKeyedSubscript:@"resumeSetupSelectedOption"];

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
  payload = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [payload mutableCopy];

  accessoryType = [(HFAnalyticsResumeSetupContinueSetupOptionsEvent *)self accessoryType];
  [v4 na_safeSetObject:accessoryType forKey:@"accessory"];

  resumeSetupOption = [(HFAnalyticsResumeSetupContinueSetupOptionsEvent *)self resumeSetupOption];
  [v4 na_safeSetObject:resumeSetupOption forKey:@"optionSelected"];

  return v4;
}

@end
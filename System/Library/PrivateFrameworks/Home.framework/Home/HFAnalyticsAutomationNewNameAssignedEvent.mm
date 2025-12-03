@interface HFAnalyticsAutomationNewNameAssignedEvent
- (HFAnalyticsAutomationNewNameAssignedEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsAutomationNewNameAssignedEvent

- (HFAnalyticsAutomationNewNameAssignedEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"didNamingSucceedKey"];
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
  v8 = [dataCopy objectForKeyedSubscript:@"errorTypeKey"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  v11 = [dataCopy objectForKeyedSubscript:@"modifiesExisitingTriggerKey"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  objc_opt_class();
  v14 = [dataCopy objectForKeyedSubscript:@"namingTypeKey"];

  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v20.receiver = self;
  v20.super_class = HFAnalyticsAutomationNewNameAssignedEvent;
  v17 = [(HFAnalyticsEvent *)&v20 initWithEventType:24];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_didNamingSucceed, v6);
    objc_storeStrong(&v18->_errorType, v9);
    objc_storeStrong(&v18->_modifiesExistingTrigger, v12);
    objc_storeStrong(&v18->_namingType, v15);
  }

  return v18;
}

- (id)payload
{
  v10.receiver = self;
  v10.super_class = HFAnalyticsAutomationNewNameAssignedEvent;
  payload = [(HFAnalyticsEvent *)&v10 payload];
  v4 = [payload mutableCopy];

  didNamingSucceed = [(HFAnalyticsAutomationNewNameAssignedEvent *)self didNamingSucceed];
  [v4 na_safeSetObject:didNamingSucceed forKey:@"didNamingSucceed"];

  errorType = [(HFAnalyticsAutomationNewNameAssignedEvent *)self errorType];
  [v4 na_safeSetObject:errorType forKey:@"errorType"];

  modifiesExistingTrigger = [(HFAnalyticsAutomationNewNameAssignedEvent *)self modifiesExistingTrigger];
  [v4 na_safeSetObject:modifiesExistingTrigger forKey:@"modifiesExistingTrigger"];

  namingType = [(HFAnalyticsAutomationNewNameAssignedEvent *)self namingType];
  [v4 na_safeSetObject:namingType forKey:@"namingType"];

  return v4;
}

@end
@interface HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent
- (HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent

- (HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"resumeSetupNonConfiguredAccessoryCount"];
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
  v8 = [dataCopy objectForKeyedSubscript:@"resumeSetupNonConfiguredBridgeCount"];
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
  v11 = [dataCopy objectForKeyedSubscript:@"resumeSetupNonConfiguredBridgedCount"];
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
  v14 = [dataCopy objectForKeyedSubscript:@"homeUUID"];

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
  v20.super_class = HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent;
  v17 = [(HFAnalyticsEvent *)&v20 initWithEventType:30];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_nonConfiguredAccessoryCount, v6);
    objc_storeStrong(&v18->_nonConfiguredBridgeCount, v9);
    objc_storeStrong(&v18->_nonConfiguredBridgedCount, v12);
    objc_storeStrong(&v18->_homeID, v15);
  }

  return v18;
}

- (id)payload
{
  v10.receiver = self;
  v10.super_class = HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent;
  payload = [(HFAnalyticsEvent *)&v10 payload];
  v4 = [payload mutableCopy];

  nonConfiguredAccessoryCount = [(HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent *)self nonConfiguredAccessoryCount];
  [v4 na_safeSetObject:nonConfiguredAccessoryCount forKey:@"nonConfiguredAccessoryCount"];

  nonConfiguredBridgeCount = [(HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent *)self nonConfiguredBridgeCount];
  [v4 na_safeSetObject:nonConfiguredBridgeCount forKey:@"nonConfiguredBridgesCount"];

  nonConfiguredBridgedCount = [(HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent *)self nonConfiguredBridgedCount];
  [v4 na_safeSetObject:nonConfiguredBridgedCount forKey:@"nonConfiguredBridgedCount"];

  homeID = [(HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent *)self homeID];
  [v4 na_safeSetObject:homeID forKey:@"home"];

  return v4;
}

@end
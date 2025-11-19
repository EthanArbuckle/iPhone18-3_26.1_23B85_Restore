@interface HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent
- (HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent

- (HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"resumeSetupNonConfiguredAccessoryCount"];
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
  v8 = [v4 objectForKeyedSubscript:@"resumeSetupNonConfiguredBridgeCount"];
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
  v11 = [v4 objectForKeyedSubscript:@"resumeSetupNonConfiguredBridgedCount"];
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
  v14 = [v4 objectForKeyedSubscript:@"homeUUID"];

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
  v3 = [(HFAnalyticsEvent *)&v10 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent *)self nonConfiguredAccessoryCount];
  [v4 na_safeSetObject:v5 forKey:@"nonConfiguredAccessoryCount"];

  v6 = [(HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent *)self nonConfiguredBridgeCount];
  [v4 na_safeSetObject:v6 forKey:@"nonConfiguredBridgesCount"];

  v7 = [(HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent *)self nonConfiguredBridgedCount];
  [v4 na_safeSetObject:v7 forKey:@"nonConfiguredBridgedCount"];

  v8 = [(HFAnalyticsResumeSetupNonConfiguredAccessoryCountEvent *)self homeID];
  [v4 na_safeSetObject:v8 forKey:@"home"];

  return v4;
}

@end
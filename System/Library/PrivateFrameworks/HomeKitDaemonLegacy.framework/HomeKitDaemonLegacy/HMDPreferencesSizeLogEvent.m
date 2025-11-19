@interface HMDPreferencesSizeLogEvent
- (HMDPreferencesSizeLogEvent)initWithApplicationID:(id)a3 preferencesKey:(id)a4 preferencesSize:(unint64_t)a5 eventTrigger:(unint64_t)a6;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDPreferencesSizeLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDPreferencesSizeLogEvent *)self applicationID];
  [v3 setObject:v4 forKeyedSubscript:@"applicationID"];

  v5 = [(HMDPreferencesSizeLogEvent *)self preferencesKey];
  [v3 setObject:v5 forKeyedSubscript:@"preferencesKey"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDPreferencesSizeLogEvent preferencesSize](self, "preferencesSize")}];
  [v3 setObject:v6 forKeyedSubscript:@"preferencesSize"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDPreferencesSizeLogEvent eventTrigger](self, "eventTrigger")}];
  [v3 setObject:v7 forKeyedSubscript:@"eventTrigger"];

  v8 = [v3 copy];

  return v8;
}

- (HMDPreferencesSizeLogEvent)initWithApplicationID:(id)a3 preferencesKey:(id)a4 preferencesSize:(unint64_t)a5 eventTrigger:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = HMDPreferencesSizeLogEvent;
  v13 = [(HMMLogEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_applicationID, a3);
    objc_storeStrong(&v14->_preferencesKey, a4);
    v14->_preferencesSize = a5;
    v14->_eventTrigger = a6;
  }

  return v14;
}

@end
@interface HMDPreferencesSizeLogEvent
- (HMDPreferencesSizeLogEvent)initWithApplicationID:(id)d preferencesKey:(id)key preferencesSize:(unint64_t)size eventTrigger:(unint64_t)trigger;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDPreferencesSizeLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  applicationID = [(HMDPreferencesSizeLogEvent *)self applicationID];
  [dictionary setObject:applicationID forKeyedSubscript:@"applicationID"];

  preferencesKey = [(HMDPreferencesSizeLogEvent *)self preferencesKey];
  [dictionary setObject:preferencesKey forKeyedSubscript:@"preferencesKey"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDPreferencesSizeLogEvent preferencesSize](self, "preferencesSize")}];
  [dictionary setObject:v6 forKeyedSubscript:@"preferencesSize"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDPreferencesSizeLogEvent eventTrigger](self, "eventTrigger")}];
  [dictionary setObject:v7 forKeyedSubscript:@"eventTrigger"];

  v8 = [dictionary copy];

  return v8;
}

- (HMDPreferencesSizeLogEvent)initWithApplicationID:(id)d preferencesKey:(id)key preferencesSize:(unint64_t)size eventTrigger:(unint64_t)trigger
{
  dCopy = d;
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = HMDPreferencesSizeLogEvent;
  v13 = [(HMMLogEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_applicationID, d);
    objc_storeStrong(&v14->_preferencesKey, key);
    v14->_preferencesSize = size;
    v14->_eventTrigger = trigger;
  }

  return v14;
}

@end
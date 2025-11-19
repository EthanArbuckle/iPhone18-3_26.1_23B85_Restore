@interface HMDCompositeSettingsControllerFetchLogEvent
- (HMDCompositeSettingsControllerFetchLogEvent)initWithStartTime:(double)a3 keyPath:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCompositeSettingsControllerFetchLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDCompositeSettingsControllerFetchLogEvent *)self keyPath];
  [v3 setObject:v4 forKeyedSubscript:@"keyPath"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v5 forKeyedSubscript:@"latency"];

  v6 = [v3 copy];

  return v6;
}

- (HMDCompositeSettingsControllerFetchLogEvent)initWithStartTime:(double)a3 keyPath:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDCompositeSettingsControllerFetchLogEvent;
  v8 = [(HMMLogEvent *)&v11 initWithStartTime:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyPath, a4);
  }

  return v9;
}

@end
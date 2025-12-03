@interface HMDCompositeSettingsControllerFetchLogEvent
- (HMDCompositeSettingsControllerFetchLogEvent)initWithStartTime:(double)time keyPath:(id)path;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCompositeSettingsControllerFetchLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  keyPath = [(HMDCompositeSettingsControllerFetchLogEvent *)self keyPath];
  [dictionary setObject:keyPath forKeyedSubscript:@"keyPath"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [dictionary setObject:v5 forKeyedSubscript:@"latency"];

  v6 = [dictionary copy];

  return v6;
}

- (HMDCompositeSettingsControllerFetchLogEvent)initWithStartTime:(double)time keyPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = HMDCompositeSettingsControllerFetchLogEvent;
  v8 = [(HMMLogEvent *)&v11 initWithStartTime:time];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyPath, path);
  }

  return v9;
}

@end
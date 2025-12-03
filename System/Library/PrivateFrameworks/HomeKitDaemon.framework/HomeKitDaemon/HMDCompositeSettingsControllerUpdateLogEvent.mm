@interface HMDCompositeSettingsControllerUpdateLogEvent
- (HMDCompositeSettingsControllerUpdateLogEvent)initWithStartTime:(double)time keyPath:(id)path;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCompositeSettingsControllerUpdateLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self)
  {
    Property = objc_getProperty(self, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  [dictionary setObject:Property forKeyedSubscript:@"keyPath"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [dictionary setObject:v6 forKeyedSubscript:@"latency"];

  v7 = [dictionary copy];

  return v7;
}

- (HMDCompositeSettingsControllerUpdateLogEvent)initWithStartTime:(double)time keyPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = HMDCompositeSettingsControllerUpdateLogEvent;
  v8 = [(HMMLogEvent *)&v11 initWithStartTime:time];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyPath, path);
  }

  return v9;
}

@end
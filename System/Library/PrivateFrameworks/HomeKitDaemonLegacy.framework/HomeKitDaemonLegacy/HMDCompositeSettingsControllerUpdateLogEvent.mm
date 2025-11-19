@interface HMDCompositeSettingsControllerUpdateLogEvent
- (HMDCompositeSettingsControllerUpdateLogEvent)initWithStartTime:(double)a3 keyPath:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCompositeSettingsControllerUpdateLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (self)
  {
    Property = objc_getProperty(self, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  [v4 setObject:Property forKeyedSubscript:@"keyPath"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v4 setObject:v6 forKeyedSubscript:@"latency"];

  v7 = [v4 copy];

  return v7;
}

- (HMDCompositeSettingsControllerUpdateLogEvent)initWithStartTime:(double)a3 keyPath:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDCompositeSettingsControllerUpdateLogEvent;
  v8 = [(HMMLogEvent *)&v11 initWithStartTime:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyPath, a4);
  }

  return v9;
}

@end
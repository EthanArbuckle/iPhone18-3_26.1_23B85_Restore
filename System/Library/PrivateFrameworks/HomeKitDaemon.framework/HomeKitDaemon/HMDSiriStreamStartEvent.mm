@interface HMDSiriStreamStartEvent
- (HMDSiriStreamStartEvent)initWithActivationType:(unint64_t)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDSiriStreamStartEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"duration";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  v8[1] = @"activationType";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriStreamStartEvent activationType](self, "activationType")}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDSiriStreamStartEvent)initWithActivationType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDSiriStreamStartEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_activationType = a3;
  }

  return result;
}

@end
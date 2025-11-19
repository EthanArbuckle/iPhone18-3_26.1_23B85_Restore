@interface HMDHomeLocationLogEvent
+ (id)updateWithHomeDistance:(double)a3;
- (HMDHomeLocationLogEvent)initWithDistance:(double)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHomeLocationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"homeLocationDistance_DOUBLE";
  v3 = MEMORY[0x277CCABB0];
  [(HMDHomeLocationLogEvent *)self homeLocationDistance];
  v4 = [v3 numberWithDouble:?];
  v9[1] = @"isGreatDistance_INT";
  v10[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDHomeLocationLogEvent isGreatDistance](self, "isGreatDistance")}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDHomeLocationLogEvent)initWithDistance:(double)a3
{
  v5.receiver = self;
  v5.super_class = HMDHomeLocationLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_isGreatDistance = a3 > 500.0;
    result->_homeLocationDistance = a3;
  }

  return result;
}

+ (id)updateWithHomeDistance:(double)a3
{
  v3 = [[HMDHomeLocationLogEvent alloc] initWithDistance:a3];

  return v3;
}

@end
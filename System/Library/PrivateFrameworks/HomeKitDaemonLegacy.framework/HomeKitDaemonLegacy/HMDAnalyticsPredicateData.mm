@interface HMDAnalyticsPredicateData
- (HMDAnalyticsPredicateData)init;
@end

@implementation HMDAnalyticsPredicateData

- (HMDAnalyticsPredicateData)init
{
  v6.receiver = self;
  v6.super_class = HMDAnalyticsPredicateData;
  v2 = [(HMDAnalyticsPredicateData *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    presenceEvents = v2->_presenceEvents;
    v2->_presenceEvents = array;
  }

  return v2;
}

@end
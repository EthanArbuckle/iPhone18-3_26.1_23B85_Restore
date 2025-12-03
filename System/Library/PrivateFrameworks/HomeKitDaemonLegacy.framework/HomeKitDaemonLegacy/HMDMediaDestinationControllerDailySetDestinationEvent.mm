@interface HMDMediaDestinationControllerDailySetDestinationEvent
- (HMDMediaDestinationControllerDailySetDestinationEvent)initWithExistingDestinationType:(id)type;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMediaDestinationControllerDailySetDestinationEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"existingMediaDestinationType";
  existingDestinationType = [(HMDMediaDestinationControllerDailySetDestinationEvent *)self existingDestinationType];
  v7[0] = existingDestinationType;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDMediaDestinationControllerDailySetDestinationEvent)initWithExistingDestinationType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = HMDMediaDestinationControllerDailySetDestinationEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_existingDestinationType, type);
  }

  return v7;
}

@end
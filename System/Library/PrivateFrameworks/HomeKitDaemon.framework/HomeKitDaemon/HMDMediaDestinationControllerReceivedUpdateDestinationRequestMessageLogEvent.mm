@interface HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent
- (HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent)initWithExistingDestinationType:(id)type destinationType:(id)destinationType isTriggeredOnControllerDevice:(id)device userPrivilege:(id)privilege;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"existingMediaDestinationType";
  existingDestinationType = [(HMDMediaDestinationControllerDestinationLogEvent *)self existingDestinationType];
  v11[0] = existingDestinationType;
  v10[1] = @"mediaDestinationType";
  destinationType = [(HMDMediaDestinationControllerDestinationLogEvent *)self destinationType];
  v11[1] = destinationType;
  v10[2] = @"isTriggeredOnControllerDevice";
  isTriggeredOnControllerDevice = [(HMDMediaDestinationControllerLogEvent *)self isTriggeredOnControllerDevice];
  v11[2] = isTriggeredOnControllerDevice;
  v10[3] = @"userPrivilege";
  userPrivilege = [(HMDMediaDestinationControllerLogEvent *)self userPrivilege];
  v11[3] = userPrivilege;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent)initWithExistingDestinationType:(id)type destinationType:(id)destinationType isTriggeredOnControllerDevice:(id)device userPrivilege:(id)privilege
{
  v7.receiver = self;
  v7.super_class = HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent;
  return [(HMDMediaDestinationControllerDestinationLogEvent *)&v7 initWithExistingDestinationType:type destinationType:destinationType isTriggeredOnControllerDevice:device userPrivilege:privilege];
}

@end
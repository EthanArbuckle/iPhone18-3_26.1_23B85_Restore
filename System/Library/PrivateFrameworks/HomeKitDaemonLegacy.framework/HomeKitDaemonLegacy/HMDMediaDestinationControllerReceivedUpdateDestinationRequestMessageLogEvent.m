@interface HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent
- (HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent)initWithExistingDestinationType:(id)a3 destinationType:(id)a4 isTriggeredOnControllerDevice:(id)a5 userPrivilege:(id)a6;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"existingMediaDestinationType";
  v3 = [(HMDMediaDestinationControllerDestinationLogEvent *)self existingDestinationType];
  v11[0] = v3;
  v10[1] = @"mediaDestinationType";
  v4 = [(HMDMediaDestinationControllerDestinationLogEvent *)self destinationType];
  v11[1] = v4;
  v10[2] = @"isTriggeredOnControllerDevice";
  v5 = [(HMDMediaDestinationControllerLogEvent *)self isTriggeredOnControllerDevice];
  v11[2] = v5;
  v10[3] = @"userPrivilege";
  v6 = [(HMDMediaDestinationControllerLogEvent *)self userPrivilege];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent)initWithExistingDestinationType:(id)a3 destinationType:(id)a4 isTriggeredOnControllerDevice:(id)a5 userPrivilege:(id)a6
{
  v7.receiver = self;
  v7.super_class = HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent;
  return [(HMDMediaDestinationControllerDestinationLogEvent *)&v7 initWithExistingDestinationType:a3 destinationType:a4 isTriggeredOnControllerDevice:a5 userPrivilege:a6];
}

@end
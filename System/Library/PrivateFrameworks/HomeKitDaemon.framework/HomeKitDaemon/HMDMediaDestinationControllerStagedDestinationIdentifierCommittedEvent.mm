@interface HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent
- (HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent)initWithStagedDestinationIdentifier:(id)a3 isTriggeredOnControllerDevice:(id)a4 userPrivilege:(id)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"duration";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:{ceil(-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds") / 1000.0 / 0.1) * 0.1}];
  v10[0] = v3;
  v9[1] = @"isTriggeredOnControllerDevice";
  v4 = [(HMDMediaDestinationControllerLogEvent *)self isTriggeredOnControllerDevice];
  v10[1] = v4;
  v9[2] = @"userPrivilege";
  v5 = [(HMDMediaDestinationControllerLogEvent *)self userPrivilege];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent)initWithStagedDestinationIdentifier:(id)a3 isTriggeredOnControllerDevice:(id)a4 userPrivilege:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = v11;
    v18.receiver = self;
    v18.super_class = HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent;
    v13 = [(HMDMediaDestinationControllerLogEvent *)&v18 initWithIsTriggeredOnControllerDevice:v10 userPrivilege:v11];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_stagedDestinationIdentifier, a3);
    }

    return v14;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    [(HMDMediaDestinationControllerDailySetDestinationEvent *)v16 .cxx_destruct];
  }

  return result;
}

@end
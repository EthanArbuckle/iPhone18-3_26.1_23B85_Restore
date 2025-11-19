@interface HMDMediaDestinationControllerFailureLogEvent
- (HMDMediaDestinationControllerFailureLogEvent)initWithDestinationControllerErrorCode:(id)a3 errorCode:(id)a4 errorDomain:(id)a5 isTriggeredOnControllerDevice:(id)a6 userPrivilege:(id)a7;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMediaDestinationControllerFailureLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"isTriggeredOnControllerDevice";
  v3 = [(HMDMediaDestinationControllerLogEvent *)self isTriggeredOnControllerDevice];
  v12[0] = v3;
  v11[1] = @"destinationControllerErrorCode";
  v4 = [(HMDMediaDestinationControllerFailureLogEvent *)self destinationControllerErrorCode];
  v12[1] = v4;
  v11[2] = @"userPrivilege";
  v5 = [(HMDMediaDestinationControllerLogEvent *)self userPrivilege];
  v12[2] = v5;
  v11[3] = @"errorCode";
  v6 = [(HMDMediaDestinationControllerFailureLogEvent *)self errorCode];
  v12[3] = v6;
  v11[4] = @"errorDomain";
  v7 = [(HMDMediaDestinationControllerFailureLogEvent *)self errorDomain];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDMediaDestinationControllerFailureLogEvent)initWithDestinationControllerErrorCode:(id)a3 errorCode:(id)a4 errorDomain:(id)a5 isTriggeredOnControllerDevice:(id)a6 userPrivilege:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v14)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v15)
  {
LABEL_9:
    v22 = _HMFPreconditionFailure();
    [(HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent *)v22 .cxx_destruct];
    return result;
  }

  v18 = v17;
  v24.receiver = self;
  v24.super_class = HMDMediaDestinationControllerFailureLogEvent;
  v19 = [(HMDMediaDestinationControllerLogEvent *)&v24 initWithIsTriggeredOnControllerDevice:v16 userPrivilege:v17];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_destinationControllerErrorCode, a3);
    objc_storeStrong(&v20->_errorCode, a4);
    objc_storeStrong(&v20->_errorDomain, a5);
  }

  return v20;
}

@end
@interface HMDMediaDestinationControllerFailureLogEvent
- (HMDMediaDestinationControllerFailureLogEvent)initWithDestinationControllerErrorCode:(id)code errorCode:(id)errorCode errorDomain:(id)domain isTriggeredOnControllerDevice:(id)device userPrivilege:(id)privilege;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMediaDestinationControllerFailureLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"isTriggeredOnControllerDevice";
  isTriggeredOnControllerDevice = [(HMDMediaDestinationControllerLogEvent *)self isTriggeredOnControllerDevice];
  v12[0] = isTriggeredOnControllerDevice;
  v11[1] = @"destinationControllerErrorCode";
  destinationControllerErrorCode = [(HMDMediaDestinationControllerFailureLogEvent *)self destinationControllerErrorCode];
  v12[1] = destinationControllerErrorCode;
  v11[2] = @"userPrivilege";
  userPrivilege = [(HMDMediaDestinationControllerLogEvent *)self userPrivilege];
  v12[2] = userPrivilege;
  v11[3] = @"errorCode";
  errorCode = [(HMDMediaDestinationControllerFailureLogEvent *)self errorCode];
  v12[3] = errorCode;
  v11[4] = @"errorDomain";
  errorDomain = [(HMDMediaDestinationControllerFailureLogEvent *)self errorDomain];
  v12[4] = errorDomain;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDMediaDestinationControllerFailureLogEvent)initWithDestinationControllerErrorCode:(id)code errorCode:(id)errorCode errorDomain:(id)domain isTriggeredOnControllerDevice:(id)device userPrivilege:(id)privilege
{
  codeCopy = code;
  errorCodeCopy = errorCode;
  domainCopy = domain;
  deviceCopy = device;
  privilegeCopy = privilege;
  if (!codeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!errorCodeCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!domainCopy)
  {
LABEL_9:
    v22 = _HMFPreconditionFailure();
    [(HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent *)v22 .cxx_destruct];
    return result;
  }

  v18 = privilegeCopy;
  v24.receiver = self;
  v24.super_class = HMDMediaDestinationControllerFailureLogEvent;
  v19 = [(HMDMediaDestinationControllerLogEvent *)&v24 initWithIsTriggeredOnControllerDevice:deviceCopy userPrivilege:privilegeCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_destinationControllerErrorCode, code);
    objc_storeStrong(&v20->_errorCode, errorCode);
    objc_storeStrong(&v20->_errorDomain, domain);
  }

  return v20;
}

@end
@interface HMDMediaDestinationControllerDestinationLogEvent
- (HMDMediaDestinationControllerDestinationLogEvent)initWithExistingDestinationType:(id)type destinationType:(id)destinationType isTriggeredOnControllerDevice:(id)device userPrivilege:(id)privilege;
@end

@implementation HMDMediaDestinationControllerDestinationLogEvent

- (HMDMediaDestinationControllerDestinationLogEvent)initWithExistingDestinationType:(id)type destinationType:(id)destinationType isTriggeredOnControllerDevice:(id)device userPrivilege:(id)privilege
{
  typeCopy = type;
  destinationTypeCopy = destinationType;
  deviceCopy = device;
  privilegeCopy = privilege;
  if (!typeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!destinationTypeCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!deviceCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = privilegeCopy;
  if (!privilegeCopy)
  {
LABEL_11:
    v19 = _HMFPreconditionFailure();
    return [(HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent *)v19 coreAnalyticsEventOptions];
  }

  v21.receiver = self;
  v21.super_class = HMDMediaDestinationControllerDestinationLogEvent;
  v16 = [(HMDMediaDestinationControllerLogEvent *)&v21 initWithIsTriggeredOnControllerDevice:deviceCopy userPrivilege:privilegeCopy];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_existingDestinationType, type);
    objc_storeStrong(&v17->_destinationType, destinationType);
  }

  return v17;
}

@end
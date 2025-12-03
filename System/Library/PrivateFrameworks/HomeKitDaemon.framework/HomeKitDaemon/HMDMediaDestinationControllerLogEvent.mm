@interface HMDMediaDestinationControllerLogEvent
- (HMDMediaDestinationControllerLogEvent)initWithIsTriggeredOnControllerDevice:(id)device userPrivilege:(id)privilege;
@end

@implementation HMDMediaDestinationControllerLogEvent

- (HMDMediaDestinationControllerLogEvent)initWithIsTriggeredOnControllerDevice:(id)device userPrivilege:(id)privilege
{
  deviceCopy = device;
  privilegeCopy = privilege;
  if (!deviceCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = privilegeCopy;
  if (!privilegeCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    [(HMDMediaDestinationControllerDestinationLogEvent *)v13 .cxx_destruct];
    return result;
  }

  v15.receiver = self;
  v15.super_class = HMDMediaDestinationControllerLogEvent;
  v10 = [(HMMLogEvent *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_isTriggeredOnControllerDevice, device);
    objc_storeStrong(&v11->_userPrivilege, privilege);
  }

  return v11;
}

@end
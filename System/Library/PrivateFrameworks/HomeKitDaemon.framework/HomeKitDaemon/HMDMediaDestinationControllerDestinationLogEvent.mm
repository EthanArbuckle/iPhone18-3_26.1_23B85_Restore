@interface HMDMediaDestinationControllerDestinationLogEvent
- (HMDMediaDestinationControllerDestinationLogEvent)initWithExistingDestinationType:(id)a3 destinationType:(id)a4 isTriggeredOnControllerDevice:(id)a5 userPrivilege:(id)a6;
@end

@implementation HMDMediaDestinationControllerDestinationLogEvent

- (HMDMediaDestinationControllerDestinationLogEvent)initWithExistingDestinationType:(id)a3 destinationType:(id)a4 isTriggeredOnControllerDevice:(id)a5 userPrivilege:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = v14;
  if (!v14)
  {
LABEL_11:
    v19 = _HMFPreconditionFailure();
    return [(HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent *)v19 coreAnalyticsEventOptions];
  }

  v21.receiver = self;
  v21.super_class = HMDMediaDestinationControllerDestinationLogEvent;
  v16 = [(HMDMediaDestinationControllerLogEvent *)&v21 initWithIsTriggeredOnControllerDevice:v13 userPrivilege:v14];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_existingDestinationType, a3);
    objc_storeStrong(&v17->_destinationType, a4);
  }

  return v17;
}

@end
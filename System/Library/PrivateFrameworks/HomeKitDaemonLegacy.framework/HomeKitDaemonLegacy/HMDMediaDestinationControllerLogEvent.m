@interface HMDMediaDestinationControllerLogEvent
- (HMDMediaDestinationControllerLogEvent)initWithIsTriggeredOnControllerDevice:(id)a3 userPrivilege:(id)a4;
@end

@implementation HMDMediaDestinationControllerLogEvent

- (HMDMediaDestinationControllerLogEvent)initWithIsTriggeredOnControllerDevice:(id)a3 userPrivilege:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
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
    objc_storeStrong(&v10->_isTriggeredOnControllerDevice, a3);
    objc_storeStrong(&v11->_userPrivilege, a4);
  }

  return v11;
}

@end
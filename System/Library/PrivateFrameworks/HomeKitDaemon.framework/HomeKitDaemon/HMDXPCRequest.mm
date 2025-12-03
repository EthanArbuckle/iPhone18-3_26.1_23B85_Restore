@interface HMDXPCRequest
- (HMDXPCRequest)initWithName:(id)name qualityOfService:(int64_t)service timeoutDate:(id)date responseHandler:(id)handler;
@end

@implementation HMDXPCRequest

- (HMDXPCRequest)initWithName:(id)name qualityOfService:(int64_t)service timeoutDate:(id)date responseHandler:(id)handler
{
  nameCopy = name;
  dateCopy = date;
  handlerCopy = handler;
  if (!nameCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!dateCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v13 = handlerCopy;
  if (!handlerCopy)
  {
LABEL_9:
    v22 = _HMFPreconditionFailure();
    return [(HMDXPCRequestTracker *)v22 initWithQueue:v23 watchdogTimer:v24, v25];
  }

  v26.receiver = self;
  v26.super_class = HMDXPCRequest;
  v14 = [(HMDXPCRequest *)&v26 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    v14->_qualityOfService = service;
    v17 = [dateCopy copy];
    timeoutDate = v14->_timeoutDate;
    v14->_timeoutDate = v17;

    v19 = [v13 copy];
    responseHandler = v14->_responseHandler;
    v14->_responseHandler = v19;
  }

  return v14;
}

@end
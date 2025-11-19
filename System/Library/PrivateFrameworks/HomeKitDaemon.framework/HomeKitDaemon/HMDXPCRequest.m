@interface HMDXPCRequest
- (HMDXPCRequest)initWithName:(id)a3 qualityOfService:(int64_t)a4 timeoutDate:(id)a5 responseHandler:(id)a6;
@end

@implementation HMDXPCRequest

- (HMDXPCRequest)initWithName:(id)a3 qualityOfService:(int64_t)a4 timeoutDate:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v11)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v13 = v12;
  if (!v12)
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
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    v14->_qualityOfService = a4;
    v17 = [v11 copy];
    timeoutDate = v14->_timeoutDate;
    v14->_timeoutDate = v17;

    v19 = [v13 copy];
    responseHandler = v14->_responseHandler;
    v14->_responseHandler = v19;
  }

  return v14;
}

@end
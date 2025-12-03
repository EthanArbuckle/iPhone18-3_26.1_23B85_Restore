@interface HMDPendingSocketRequest
- (HMDPendingSocketRequest)initWithApplicationProtocolName:(id)name completion:(id)completion;
@end

@implementation HMDPendingSocketRequest

- (HMDPendingSocketRequest)initWithApplicationProtocolName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = HMDPendingSocketRequest;
  v9 = [(HMDPendingSocketRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationProtocolName, name);
    v11 = _Block_copy(completionCopy);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end
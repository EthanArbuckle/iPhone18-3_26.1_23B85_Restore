@interface HMDPendingSocketRequest
- (HMDPendingSocketRequest)initWithApplicationProtocolName:(id)a3 completion:(id)a4;
@end

@implementation HMDPendingSocketRequest

- (HMDPendingSocketRequest)initWithApplicationProtocolName:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDPendingSocketRequest;
  v9 = [(HMDPendingSocketRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationProtocolName, a3);
    v11 = _Block_copy(v8);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end
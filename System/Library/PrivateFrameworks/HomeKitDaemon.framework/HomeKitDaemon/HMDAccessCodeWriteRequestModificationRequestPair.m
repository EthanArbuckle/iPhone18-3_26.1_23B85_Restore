@interface HMDAccessCodeWriteRequestModificationRequestPair
- (HMDAccessCodeWriteRequestModificationRequestPair)initWithWriteRequest:(id)a3 modificationRequests:(id)a4;
@end

@implementation HMDAccessCodeWriteRequestModificationRequestPair

- (HMDAccessCodeWriteRequestModificationRequestPair)initWithWriteRequest:(id)a3 modificationRequests:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDAccessCodeWriteRequestModificationRequestPair;
  v9 = [(HMDAccessCodeWriteRequestModificationRequestPair *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_writeRequest, a3);
    v11 = [v8 copy];
    modificationRequests = v10->_modificationRequests;
    v10->_modificationRequests = v11;
  }

  return v10;
}

@end
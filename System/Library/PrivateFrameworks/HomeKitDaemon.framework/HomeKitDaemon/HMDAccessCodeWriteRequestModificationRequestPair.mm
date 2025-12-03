@interface HMDAccessCodeWriteRequestModificationRequestPair
- (HMDAccessCodeWriteRequestModificationRequestPair)initWithWriteRequest:(id)request modificationRequests:(id)requests;
@end

@implementation HMDAccessCodeWriteRequestModificationRequestPair

- (HMDAccessCodeWriteRequestModificationRequestPair)initWithWriteRequest:(id)request modificationRequests:(id)requests
{
  requestCopy = request;
  requestsCopy = requests;
  v14.receiver = self;
  v14.super_class = HMDAccessCodeWriteRequestModificationRequestPair;
  v9 = [(HMDAccessCodeWriteRequestModificationRequestPair *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_writeRequest, request);
    v11 = [requestsCopy copy];
    modificationRequests = v10->_modificationRequests;
    v10->_modificationRequests = v11;
  }

  return v10;
}

@end
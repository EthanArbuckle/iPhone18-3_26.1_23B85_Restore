@interface COMessageChannelRequestInfo
- (COMessageChannelRequestInfo)initWithRequestID:(unsigned int)a3 type:(int64_t)a4 request:(id)a5;
@end

@implementation COMessageChannelRequestInfo

- (COMessageChannelRequestInfo)initWithRequestID:(unsigned int)a3 type:(int64_t)a4 request:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = COMessageChannelRequestInfo;
  v10 = [(COMessageChannelRequestInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_requestID = a3;
    v10->_requestType = a4;
    objc_storeStrong(&v10->_request, a5);
    objc_storeStrong(&v11->_destinationInfo, @"unknown");
  }

  return v11;
}

@end
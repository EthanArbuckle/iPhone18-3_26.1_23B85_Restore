@interface COMessageChannelRequestInfo
- (COMessageChannelRequestInfo)initWithRequestID:(unsigned int)d type:(int64_t)type request:(id)request;
@end

@implementation COMessageChannelRequestInfo

- (COMessageChannelRequestInfo)initWithRequestID:(unsigned int)d type:(int64_t)type request:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = COMessageChannelRequestInfo;
  v10 = [(COMessageChannelRequestInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_requestID = d;
    v10->_requestType = type;
    objc_storeStrong(&v10->_request, request);
    objc_storeStrong(&v11->_destinationInfo, @"unknown");
  }

  return v11;
}

@end
@interface COIDSOutstandingRequestInfo
- (COIDSOutstandingRequestInfo)initWithRequest:(id)request at:(unint64_t)at callback:(id)callback activity:(id)activity;
@end

@implementation COIDSOutstandingRequestInfo

- (COIDSOutstandingRequestInfo)initWithRequest:(id)request at:(unint64_t)at callback:(id)callback activity:(id)activity
{
  requestCopy = request;
  callbackCopy = callback;
  activityCopy = activity;
  v19.receiver = self;
  v19.super_class = COIDSOutstandingRequestInfo;
  v14 = [(COIDSOutstandingRequestInfo *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, request);
    v15->_enqeueStart = at;
    v16 = MEMORY[0x245D5FF10](callbackCopy);
    callback = v15->_callback;
    v15->_callback = v16;

    objc_storeStrong(&v15->_activity, activity);
  }

  return v15;
}

@end
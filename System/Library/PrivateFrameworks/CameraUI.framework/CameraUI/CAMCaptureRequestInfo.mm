@interface CAMCaptureRequestInfo
- (CAMCaptureRequestInfo)initWithRequest:(id)request;
- (void)didReceiveCallback:(int64_t)callback atAbsoluteTime:(unint64_t)time;
@end

@implementation CAMCaptureRequestInfo

- (CAMCaptureRequestInfo)initWithRequest:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = CAMCaptureRequestInfo;
  v6 = [(CAMCaptureRequestInfo *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    receivedCallbacks = v7->__receivedCallbacks;
    v7->__receivedCallbacks = v8;

    userInitiationTime = [requestCopy userInitiationTime];
    v7->__userInitiationTime = userInitiationTime;
    if (!userInitiationTime)
    {
      v7->__userInitiationTime = mach_absolute_time();
    }

    v11 = v7;
  }

  return v7;
}

- (void)didReceiveCallback:(int64_t)callback atAbsoluteTime:(unint64_t)time
{
  v6 = time - [(CAMCaptureRequestInfo *)self _userInitiationTime];
  info = 0;
  mach_timebase_info(&info);
  v7 = [[CAMCaptureCallbackReceipt alloc] initWithCallback:callback duration:(v6 * info.numer / info.denom) / 1000000000.0];
  _receivedCallbacks = [(CAMCaptureRequestInfo *)self _receivedCallbacks];
  [_receivedCallbacks addObject:v7];
}

@end
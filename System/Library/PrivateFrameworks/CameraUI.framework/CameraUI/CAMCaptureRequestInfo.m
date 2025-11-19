@interface CAMCaptureRequestInfo
- (CAMCaptureRequestInfo)initWithRequest:(id)a3;
- (void)didReceiveCallback:(int64_t)a3 atAbsoluteTime:(unint64_t)a4;
@end

@implementation CAMCaptureRequestInfo

- (CAMCaptureRequestInfo)initWithRequest:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CAMCaptureRequestInfo;
  v6 = [(CAMCaptureRequestInfo *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    receivedCallbacks = v7->__receivedCallbacks;
    v7->__receivedCallbacks = v8;

    v10 = [v5 userInitiationTime];
    v7->__userInitiationTime = v10;
    if (!v10)
    {
      v7->__userInitiationTime = mach_absolute_time();
    }

    v11 = v7;
  }

  return v7;
}

- (void)didReceiveCallback:(int64_t)a3 atAbsoluteTime:(unint64_t)a4
{
  v6 = a4 - [(CAMCaptureRequestInfo *)self _userInitiationTime];
  info = 0;
  mach_timebase_info(&info);
  v7 = [[CAMCaptureCallbackReceipt alloc] initWithCallback:a3 duration:(v6 * info.numer / info.denom) / 1000000000.0];
  v8 = [(CAMCaptureRequestInfo *)self _receivedCallbacks];
  [v8 addObject:v7];
}

@end
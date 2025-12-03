@interface BWCameraStreamingMonitorClientSession
- (void)dealloc;
- (void)initWithClientInfo:(void *)info sessionID:(int)d clientPID:(char)iD running:(char)running containsVideoSource:;
@end

@implementation BWCameraStreamingMonitorClientSession

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCameraStreamingMonitorClientSession;
  [(BWCameraStreamingMonitorClientSession *)&v3 dealloc];
}

- (void)initWithClientInfo:(void *)info sessionID:(int)d clientPID:(char)iD running:(char)running containsVideoSource:
{
  if (!self)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = BWCameraStreamingMonitorClientSession;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  if (v11)
  {
    v11[1] = a2;
    v11[2] = info;
    *(v11 + 6) = d;
    *(v11 + 28) = iD;
    *(v11 + 29) = running;
  }

  return v11;
}

@end
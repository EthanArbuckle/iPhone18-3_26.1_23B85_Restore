@interface BWCameraStreamingMonitorClientSession
- (void)dealloc;
- (void)initWithClientInfo:(void *)a3 sessionID:(int)a4 clientPID:(char)a5 running:(char)a6 containsVideoSource:;
@end

@implementation BWCameraStreamingMonitorClientSession

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCameraStreamingMonitorClientSession;
  [(BWCameraStreamingMonitorClientSession *)&v3 dealloc];
}

- (void)initWithClientInfo:(void *)a3 sessionID:(int)a4 clientPID:(char)a5 running:(char)a6 containsVideoSource:
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = BWCameraStreamingMonitorClientSession;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  if (v11)
  {
    v11[1] = a2;
    v11[2] = a3;
    *(v11 + 6) = a4;
    *(v11 + 28) = a5;
    *(v11 + 29) = a6;
  }

  return v11;
}

@end
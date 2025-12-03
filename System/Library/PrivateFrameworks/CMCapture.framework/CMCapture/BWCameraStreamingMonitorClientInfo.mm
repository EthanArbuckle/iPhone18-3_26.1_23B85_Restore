@interface BWCameraStreamingMonitorClientInfo
- (void)dealloc;
- (void)initWithProcessHandle:(void *)handle;
@end

@implementation BWCameraStreamingMonitorClientInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCameraStreamingMonitorClientInfo;
  [(BWCameraStreamingMonitorClientInfo *)&v3 dealloc];
}

- (void)initWithProcessHandle:(void *)handle
{
  if (!handle)
  {
    return 0;
  }

  v5.receiver = handle;
  v5.super_class = BWCameraStreamingMonitorClientInfo;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[2] = a2;
  }

  return v3;
}

@end
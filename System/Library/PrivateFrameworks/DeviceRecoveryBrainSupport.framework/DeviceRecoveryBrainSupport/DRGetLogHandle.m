@interface DRGetLogHandle
@end

@implementation DRGetLogHandle

void __DRGetLogHandle_block_invoke(id a1)
{
  v1 = DRGetLoggingCategory();
  DRGetLogHandle_logHandle = os_log_create("com.apple.DeviceRecovery", v1);

  _objc_release_x1();
}

@end
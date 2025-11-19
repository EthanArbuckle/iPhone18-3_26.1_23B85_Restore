@interface DRGetSignpostHandle
@end

@implementation DRGetSignpostHandle

void __DRGetSignpostHandle_block_invoke(id a1)
{
  v1 = DRGetLoggingCategory();
  DRGetSignpostHandle_signpostHandle = os_log_create("com.apple.DeviceRecovery.signposts", v1);

  _objc_release_x1();
}

@end
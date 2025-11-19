@interface DebugHierarchyGzipOSLog
@end

@implementation DebugHierarchyGzipOSLog

void __DebugHierarchyGzipOSLog_block_invoke(id a1)
{
  DebugHierarchyGzipOSLog___dvt_lazy_init_variable = os_log_create("com.apple.dt.DebugHierarchy", "Gzip");

  _objc_release_x1();
}

@end
@interface DebugHierarchyPOIOSLog
@end

@implementation DebugHierarchyPOIOSLog

void __DebugHierarchyPOIOSLog_block_invoke(id a1)
{
  DebugHierarchyPOIOSLog___dvt_lazy_init_variable = os_log_create("com.apple.dt.DebugHierarchy", "PointsOfInterest");

  _objc_release_x1();
}

@end
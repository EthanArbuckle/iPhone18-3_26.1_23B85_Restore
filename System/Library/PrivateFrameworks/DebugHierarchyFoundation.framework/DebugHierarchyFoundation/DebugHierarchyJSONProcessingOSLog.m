@interface DebugHierarchyJSONProcessingOSLog
@end

@implementation DebugHierarchyJSONProcessingOSLog

void __DebugHierarchyJSONProcessingOSLog_block_invoke(id a1)
{
  DebugHierarchyJSONProcessingOSLog___dvt_lazy_init_variable = os_log_create("com.apple.dt.DebugHierarchy", "JSONProcessing");

  _objc_release_x1();
}

@end
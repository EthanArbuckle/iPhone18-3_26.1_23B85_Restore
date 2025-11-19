@interface DebugHierarchyRequestsOSLog
@end

@implementation DebugHierarchyRequestsOSLog

void __DebugHierarchyRequestsOSLog_block_invoke(id a1)
{
  DebugHierarchyRequestsOSLog___dvt_lazy_init_variable = os_log_create("com.apple.dt.DebugHierarchy", "Requests");

  _objc_release_x1();
}

void __DebugHierarchyRequestsOSLog_block_invoke_0(id a1)
{
  DebugHierarchyRequestsOSLog___dvt_lazy_init_variable_0 = os_log_create("com.apple.dt.DebugHierarchy", "Requests");

  _objc_release_x1();
}

@end
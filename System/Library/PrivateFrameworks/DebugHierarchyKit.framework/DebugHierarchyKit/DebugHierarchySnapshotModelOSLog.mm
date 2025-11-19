@interface DebugHierarchySnapshotModelOSLog
@end

@implementation DebugHierarchySnapshotModelOSLog

void __DebugHierarchySnapshotModelOSLog_block_invoke(id a1)
{
  DebugHierarchySnapshotModelOSLog___dvt_lazy_init_variable = os_log_create("com.apple.dt.DebugHierarchy", "SnapshotModel");

  _objc_release_x1();
}

@end
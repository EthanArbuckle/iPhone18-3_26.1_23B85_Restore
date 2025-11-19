@interface LBPluginLoggingUtilsInit
@end

@implementation LBPluginLoggingUtilsInit

void __LBPluginLoggingUtilsInit_block_invoke(id a1)
{
  LBFLogContextPlugin = os_log_create(kLBPluginLoggingSubsystem, kLBPluginLoggingCategoryPlugin);

  _objc_release_x1();
}

@end
@interface OULoggingGetOSLogForCategoryOfflineOD
@end

@implementation OULoggingGetOSLogForCategoryOfflineOD

os_log_t ___OULoggingGetOSLogForCategoryOfflineOD_block_invoke()
{
  result = os_log_create("com.apple.ObjectUnderstanding", "OfflineOD");
  _OULoggingGetOSLogForCategoryOfflineOD_oslog = result;
  return result;
}

@end
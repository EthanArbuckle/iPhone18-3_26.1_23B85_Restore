@interface OULoggingGetOSLogForCategoryOnlineOD
@end

@implementation OULoggingGetOSLogForCategoryOnlineOD

os_log_t ___OULoggingGetOSLogForCategoryOnlineOD_block_invoke()
{
  result = os_log_create("com.apple.ObjectUnderstanding", "OnlineOD");
  _OULoggingGetOSLogForCategoryOnlineOD_oslog = result;
  return result;
}

@end
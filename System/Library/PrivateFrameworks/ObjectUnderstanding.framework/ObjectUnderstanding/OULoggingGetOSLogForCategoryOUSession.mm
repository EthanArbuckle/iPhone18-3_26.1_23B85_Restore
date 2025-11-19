@interface OULoggingGetOSLogForCategoryOUSession
@end

@implementation OULoggingGetOSLogForCategoryOUSession

os_log_t ___OULoggingGetOSLogForCategoryOUSession_block_invoke()
{
  result = os_log_create("com.apple.ObjectUnderstanding", "OUSession");
  _OULoggingGetOSLogForCategoryOUSession_oslog = result;
  return result;
}

@end
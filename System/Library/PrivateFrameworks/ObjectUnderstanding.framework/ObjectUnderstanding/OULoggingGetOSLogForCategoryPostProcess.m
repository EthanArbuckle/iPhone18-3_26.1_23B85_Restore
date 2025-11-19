@interface OULoggingGetOSLogForCategoryPostProcess
@end

@implementation OULoggingGetOSLogForCategoryPostProcess

os_log_t ___OULoggingGetOSLogForCategoryPostProcess_block_invoke()
{
  result = os_log_create("com.apple.ObjectUnderstanding", "PostProcess");
  _OULoggingGetOSLogForCategoryPostProcess_oslog = result;
  return result;
}

@end
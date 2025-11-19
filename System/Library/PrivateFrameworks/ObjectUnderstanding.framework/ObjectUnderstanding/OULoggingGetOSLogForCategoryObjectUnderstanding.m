@interface OULoggingGetOSLogForCategoryObjectUnderstanding
@end

@implementation OULoggingGetOSLogForCategoryObjectUnderstanding

os_log_t ___OULoggingGetOSLogForCategoryObjectUnderstanding_block_invoke()
{
  result = os_log_create("com.apple.ObjectUnderstanding", "ObjectUnderstanding");
  _OULoggingGetOSLogForCategoryObjectUnderstanding_oslog = result;
  return result;
}

@end
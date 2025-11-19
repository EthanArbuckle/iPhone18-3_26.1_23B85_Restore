@interface OULoggingGetOSLogForCategoryKeyframeAccumulation
@end

@implementation OULoggingGetOSLogForCategoryKeyframeAccumulation

os_log_t ___OULoggingGetOSLogForCategoryKeyframeAccumulation_block_invoke()
{
  result = os_log_create("com.apple.ObjectUnderstanding", "KeyframeAccumulation");
  _OULoggingGetOSLogForCategoryKeyframeAccumulation_oslog = result;
  return result;
}

@end
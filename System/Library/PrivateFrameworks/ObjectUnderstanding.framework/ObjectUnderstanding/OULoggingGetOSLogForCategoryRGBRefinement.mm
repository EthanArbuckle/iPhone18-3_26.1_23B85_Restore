@interface OULoggingGetOSLogForCategoryRGBRefinement
@end

@implementation OULoggingGetOSLogForCategoryRGBRefinement

os_log_t ___OULoggingGetOSLogForCategoryRGBRefinement_block_invoke()
{
  result = os_log_create("com.apple.ObjectUnderstanding", "RGBRefinement");
  _OULoggingGetOSLogForCategoryRGBRefinement_oslog = result;
  return result;
}

@end
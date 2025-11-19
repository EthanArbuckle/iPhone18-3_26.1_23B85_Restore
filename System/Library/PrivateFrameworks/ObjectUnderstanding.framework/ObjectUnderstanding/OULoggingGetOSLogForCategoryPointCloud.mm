@interface OULoggingGetOSLogForCategoryPointCloud
@end

@implementation OULoggingGetOSLogForCategoryPointCloud

os_log_t ___OULoggingGetOSLogForCategoryPointCloud_block_invoke()
{
  result = os_log_create("com.apple.ObjectUnderstanding", "PointCloud");
  _OULoggingGetOSLogForCategoryPointCloud_oslog = result;
  return result;
}

@end
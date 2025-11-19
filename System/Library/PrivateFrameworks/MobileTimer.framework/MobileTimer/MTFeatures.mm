@interface MTFeatures
+ (BOOL)supportsCoreData;
+ (BOOL)supportsCoreDataIcloud;
@end

@implementation MTFeatures

+ (BOOL)supportsCoreData
{
  if (supportsCoreData_onceToken != -1)
  {
    +[MTFeatures supportsCoreData];
  }

  return supportsCoreData_supports;
}

uint64_t __30__MTFeatures_supportsCoreData__block_invoke()
{
  result = _os_feature_enabled_impl();
  supportsCoreData_supports = result;
  return result;
}

+ (BOOL)supportsCoreDataIcloud
{
  if (supportsCoreDataIcloud_onceToken != -1)
  {
    +[MTFeatures supportsCoreDataIcloud];
  }

  return supportsCoreDataIcloud_supports;
}

uint64_t __36__MTFeatures_supportsCoreDataIcloud__block_invoke()
{
  result = _os_feature_enabled_impl();
  supportsCoreDataIcloud_supports = result;
  return result;
}

@end
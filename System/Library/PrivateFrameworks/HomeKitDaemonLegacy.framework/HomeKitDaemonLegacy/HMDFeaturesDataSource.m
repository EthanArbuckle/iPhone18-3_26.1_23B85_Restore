@interface HMDFeaturesDataSource
+ (HMDFeaturesDataSource)defaultDataSource;
@end

@implementation HMDFeaturesDataSource

+ (HMDFeaturesDataSource)defaultDataSource
{
  if (defaultDataSource_onceToken != -1)
  {
    dispatch_once(&defaultDataSource_onceToken, &__block_literal_global_168611);
  }

  v3 = defaultDataSource_dataSource;

  return v3;
}

uint64_t __42__HMDFeaturesDataSource_defaultDataSource__block_invoke()
{
  v0 = objc_alloc_init(HMDFeaturesDataSource);
  v1 = defaultDataSource_dataSource;
  defaultDataSource_dataSource = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
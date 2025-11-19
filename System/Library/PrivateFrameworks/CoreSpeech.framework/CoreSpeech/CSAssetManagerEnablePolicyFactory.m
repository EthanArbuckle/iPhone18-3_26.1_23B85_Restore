@interface CSAssetManagerEnablePolicyFactory
+ (id)assetManagerEnabledPolicy;
@end

@implementation CSAssetManagerEnablePolicyFactory

+ (id)assetManagerEnabledPolicy
{
  v2 = objc_alloc_init(CSAssetManagerEnablePolicy);

  return v2;
}

@end
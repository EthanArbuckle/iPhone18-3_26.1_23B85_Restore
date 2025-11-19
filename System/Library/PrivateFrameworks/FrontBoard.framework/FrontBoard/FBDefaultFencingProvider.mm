@interface FBDefaultFencingProvider
@end

@implementation FBDefaultFencingProvider

void __43___FBDefaultFencingProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_FBDefaultFencingProvider);
  v1 = sharedInstance___instance;
  sharedInstance___instance = v0;
}

@end
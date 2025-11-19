@interface NWCCBundle
+ (NSBundle)bundle;
@end

@implementation NWCCBundle

+ (NSBundle)bundle
{
  if (bundle_onceToken != -1)
  {
    +[NWCCBundle bundle];
  }

  v3 = bundle_instance;

  return v3;
}

uint64_t __20__NWCCBundle_bundle__block_invoke()
{
  bundle_instance = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

@end
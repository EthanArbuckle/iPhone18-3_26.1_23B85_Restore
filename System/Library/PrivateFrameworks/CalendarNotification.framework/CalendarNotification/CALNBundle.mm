@interface CALNBundle
+ (id)bundle;
@end

@implementation CALNBundle

+ (id)bundle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__CALNBundle_bundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (bundle_onceToken != -1)
  {
    dispatch_once(&bundle_onceToken, block);
  }

  v2 = bundle_bundle;

  return v2;
}

uint64_t __20__CALNBundle_bundle__block_invoke(uint64_t a1)
{
  bundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

@end
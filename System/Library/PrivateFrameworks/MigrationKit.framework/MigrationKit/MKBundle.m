@interface MKBundle
+ (id)bundle;
@end

@implementation MKBundle

+ (id)bundle
{
  if (bundle_onceToken != -1)
  {
    +[MKBundle bundle];
  }

  v3 = bundle_bundle;

  return v3;
}

uint64_t __18__MKBundle_bundle__block_invoke()
{
  bundle_bundle = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:@"/System/Library/PrivateFrameworks/MigrationKit.framework/MigrationKit.bundle"];

  return MEMORY[0x2821F96F8]();
}

@end
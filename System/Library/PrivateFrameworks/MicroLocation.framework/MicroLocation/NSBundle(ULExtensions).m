@interface NSBundle(ULExtensions)
+ (uint64_t)ULFrameworkBundle;
@end

@implementation NSBundle(ULExtensions)

+ (uint64_t)ULFrameworkBundle
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

@end
@interface CDPUtilitiesBundle
+ (id)bundle;
@end

@implementation CDPUtilitiesBundle

+ (id)bundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

@end
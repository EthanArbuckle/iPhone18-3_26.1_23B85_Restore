@interface ISUtilities
+ (id)bundle;
@end

@implementation ISUtilities

+ (id)bundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

@end
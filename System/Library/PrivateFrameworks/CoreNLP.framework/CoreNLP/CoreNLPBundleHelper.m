@interface CoreNLPBundleHelper
- (id)createBundle;
@end

@implementation CoreNLPBundleHelper

- (id)createBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

@end
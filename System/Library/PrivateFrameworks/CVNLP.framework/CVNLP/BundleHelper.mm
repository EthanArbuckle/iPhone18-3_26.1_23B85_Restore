@interface BundleHelper
- (id)createBundle;
@end

@implementation BundleHelper

- (id)createBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v2, sel_bundleForClass_, v3, v4);
}

@end
@interface NSBundle(DSSourceDescriptor)
+ (uint64_t)dssd_bundleForSourceDescriptor;
@end

@implementation NSBundle(DSSourceDescriptor)

+ (uint64_t)dssd_bundleForSourceDescriptor
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

@end
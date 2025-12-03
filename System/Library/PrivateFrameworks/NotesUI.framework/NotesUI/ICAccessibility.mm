@interface ICAccessibility
+ (id)sharedInstance;
@end

@implementation ICAccessibility

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__ICAccessibility_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__ICAccessibilitySharedInstanceOnceToken != -1)
  {
    dispatch_once(&sharedInstance__ICAccessibilitySharedInstanceOnceToken, block);
  }

  v2 = sharedInstance__ICAccessibilitySharedInstance;

  return v2;
}

uint64_t __33__ICAccessibility_sharedInstance__block_invoke()
{
  sharedInstance__ICAccessibilitySharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end
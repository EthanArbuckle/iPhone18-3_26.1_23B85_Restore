@interface MALogging
+ (id)sharedLogging;
@end

@implementation MALogging

+ (id)sharedLogging
{
  if (sharedLogging_onceToken != -1)
  {
    dispatch_once(&sharedLogging_onceToken, &__block_literal_global_345);
  }

  v3 = sharedLogging_sharedLogging;

  return v3;
}

uint64_t __26__MALogging_sharedLogging__block_invoke()
{
  v0 = objc_alloc_init(MALogging);
  v1 = sharedLogging_sharedLogging;
  sharedLogging_sharedLogging = v0;

  v2 = os_log_create("com.apple.Matisse", "default");
  v3 = *(sharedLogging_sharedLogging + 8);
  *(sharedLogging_sharedLogging + 8) = v2;

  return MEMORY[0x2821F96F8]();
}

@end
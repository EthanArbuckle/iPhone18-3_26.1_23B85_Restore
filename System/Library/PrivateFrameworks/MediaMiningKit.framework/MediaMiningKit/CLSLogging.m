@interface CLSLogging
+ (id)sharedLogging;
@end

@implementation CLSLogging

+ (id)sharedLogging
{
  if (sharedLogging_onceToken != -1)
  {
    dispatch_once(&sharedLogging_onceToken, &__block_literal_global_1377);
  }

  v3 = sharedLogging_sharedLogging;

  return v3;
}

uint64_t __27__CLSLogging_sharedLogging__block_invoke()
{
  v0 = objc_alloc_init(CLSLogging);
  v1 = sharedLogging_sharedLogging;
  sharedLogging_sharedLogging = v0;

  *(sharedLogging_sharedLogging + 8) = os_log_create("com.apple.mediaminingkit", "default");

  return MEMORY[0x2821F96F8]();
}

@end
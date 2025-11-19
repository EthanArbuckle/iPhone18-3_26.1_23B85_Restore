@interface DELogging
+ (id)fwHandle;
@end

@implementation DELogging

+ (id)fwHandle
{
  if (fwHandle_onceToken != -1)
  {
    +[DELogging fwHandle];
  }

  v3 = fwHandle_handle;

  return v3;
}

uint64_t __21__DELogging_fwHandle__block_invoke()
{
  fwHandle_handle = os_log_create("com.apple.diagnosticextensions", "Framework");

  return MEMORY[0x2821F96F8]();
}

@end
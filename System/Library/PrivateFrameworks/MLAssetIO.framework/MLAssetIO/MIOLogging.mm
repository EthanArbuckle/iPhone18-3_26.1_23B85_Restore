@interface MIOLogging
+ (id)coreChannel;
@end

@implementation MIOLogging

+ (id)coreChannel
{
  if (coreChannel_onceToken != -1)
  {
    +[MIOLogging coreChannel];
  }

  v3 = coreChannel_coreChannel;

  return v3;
}

void __25__MIOLogging_coreChannel__block_invoke()
{
  v0 = os_log_create("com.apple.mlassetio", "mlassetio");
  v1 = coreChannel_coreChannel;
  coreChannel_coreChannel = v0;

  if (!coreChannel_coreChannel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __25__MIOLogging_coreChannel__block_invoke_cold_1();
  }
}

@end
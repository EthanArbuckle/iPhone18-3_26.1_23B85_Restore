@interface FedStatsPluginLog
+ (id)logger;
@end

@implementation FedStatsPluginLog

+ (id)logger
{
  if (logger_onceToken != -1)
  {
    +[FedStatsPluginLog logger];
  }

  v3 = logger__framework;

  return v3;
}

uint64_t __27__FedStatsPluginLog_logger__block_invoke()
{
  logger__framework = os_log_create("com.apple.FedStats", "Framework");

  return MEMORY[0x2821F96F8]();
}

@end
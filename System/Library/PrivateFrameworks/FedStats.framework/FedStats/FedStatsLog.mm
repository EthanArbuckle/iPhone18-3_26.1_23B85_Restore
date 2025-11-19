@interface FedStatsLog
+ (id)logger;
@end

@implementation FedStatsLog

+ (id)logger
{
  if (logger_onceToken != -1)
  {
    +[FedStatsLog logger];
  }

  v3 = logger__framework;

  return v3;
}

uint64_t __21__FedStatsLog_logger__block_invoke()
{
  logger__framework = os_log_create("com.apple.FedStats", "Framework");

  return MEMORY[0x2821F96F8]();
}

@end
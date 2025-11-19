@interface CDMLogging
+ (void)CDMLogInitIfNeeded;
@end

@implementation CDMLogging

+ (void)CDMLogInitIfNeeded
{
  if (+[CDMLogging CDMLogInitIfNeeded]::once != -1)
  {
    dispatch_once(&+[CDMLogging CDMLogInitIfNeeded]::once, &__block_literal_global_59);
  }
}

uint64_t __32__CDMLogging_CDMLogInitIfNeeded__block_invoke()
{
  CDMLogContext = os_log_create(CDMLoggingSubsystem, CDMLoggingCategory);

  return MEMORY[0x1EEE66BB8]();
}

@end
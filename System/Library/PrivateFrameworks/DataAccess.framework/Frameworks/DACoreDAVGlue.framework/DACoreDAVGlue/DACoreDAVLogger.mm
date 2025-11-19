@interface DACoreDAVLogger
+ (id)registerDefaultLoggerWithCoreDAV;
@end

@implementation DACoreDAVLogger

+ (id)registerDefaultLoggerWithCoreDAV
{
  if (registerDefaultLoggerWithCoreDAV_pred != -1)
  {
    +[DACoreDAVLogger registerDefaultLoggerWithCoreDAV];
  }

  v3 = registerDefaultLoggerWithCoreDAV__genericLogger;

  return v3;
}

void __51__DACoreDAVLogger_registerDefaultLoggerWithCoreDAV__block_invoke()
{
  v0 = [(DATrafficLogger *)[DACoreDAVLogger alloc] initWithFilename:0];
  v1 = registerDefaultLoggerWithCoreDAV__genericLogger;
  registerDefaultLoggerWithCoreDAV__genericLogger = v0;

  v2 = [MEMORY[0x277CFDC18] sharedLogging];
  [v2 addLogDelegate:registerDefaultLoggerWithCoreDAV__genericLogger forAccountInfoProvider:0];
}

@end
@interface DACoreDAVLogger
+ (id)registerDefaultLoggerWithCoreDAV;
- (int64_t)coreDAVLogLevel;
- (void)coreDAVLogDiagnosticMessage:(id)message atLevel:(int64_t)level;
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

- (int64_t)coreDAVLogLevel
{
  DALogLevel = getDALogLevel();
  DAOutputLevel = getDAOutputLevel();
  if (DALogLevel <= DAOutputLevel)
  {
    return DAOutputLevel;
  }

  else
  {
    return DALogLevel;
  }
}

- (void)coreDAVLogDiagnosticMessage:(id)message atLevel:(int64_t)level
{
  levelCopy = level;
  v11 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + levelCopy);
  if (os_log_type_enabled(v6, v7))
  {
    v9 = 138412290;
    v10 = messageCopy;
    _os_log_impl(&dword_2424DC000, v6, v7, "%@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end
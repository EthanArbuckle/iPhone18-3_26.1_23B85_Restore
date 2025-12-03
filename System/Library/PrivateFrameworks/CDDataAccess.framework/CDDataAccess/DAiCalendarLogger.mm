@interface DAiCalendarLogger
+ (id)sharedLogger;
- (void)logICSMessage:(id)message atLevel:(int64_t)level;
@end

@implementation DAiCalendarLogger

+ (id)sharedLogger
{
  if (sharedLogger_onceToken != -1)
  {
    +[DAiCalendarLogger sharedLogger];
  }

  v3 = sharedLogger_sSharedLogger;

  return v3;
}

uint64_t __33__DAiCalendarLogger_sharedLogger__block_invoke()
{
  sharedLogger_sSharedLogger = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)logICSMessage:(id)message atLevel:(int64_t)level
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
    _os_log_impl(&dword_24244C000, v6, v7, "%@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end
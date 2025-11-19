@interface DAiCalendarLogger
+ (id)sharedLogger;
- (void)logICSMessage:(id)a3 atLevel:(int64_t)a4;
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

- (void)logICSMessage:(id)a3 atLevel:(int64_t)a4
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + v4);
  if (os_log_type_enabled(v6, v7))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_24844D000, v6, v7, "%@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end
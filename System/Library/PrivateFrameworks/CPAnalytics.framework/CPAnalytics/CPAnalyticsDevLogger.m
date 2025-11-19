@interface CPAnalyticsDevLogger
- (CPAnalyticsDevLogger)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4;
- (void)processEvent:(id)a3;
@end

@implementation CPAnalyticsDevLogger

- (void)processEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (processEvent__devLoggerOnce != -1)
  {
    dispatch_once(&processEvent__devLoggerOnce, &__block_literal_global);
  }

  v4 = processEvent__devLogger;
  if (os_log_type_enabled(processEvent__devLogger, OS_LOG_TYPE_DEBUG))
  {
    v6 = v4;
    v7 = [v3 timestamp];
    v8 = [v3 name];
    v9 = [v3 copyRawPayload];
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_debug_impl(&dword_24260A000, v6, OS_LOG_TYPE_DEBUG, "%@: %@ payload: %@", &v10, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __37__CPAnalyticsDevLogger_processEvent___block_invoke()
{
  processEvent__devLogger = os_log_create("com.apple.photos.CPAnalytics", "CPAnalyticsDevLogger");

  return MEMORY[0x2821F96F8]();
}

- (CPAnalyticsDevLogger)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4
{
  v5.receiver = self;
  v5.super_class = CPAnalyticsDevLogger;
  return [(CPAnalyticsDevLogger *)&v5 init:a3];
}

@end
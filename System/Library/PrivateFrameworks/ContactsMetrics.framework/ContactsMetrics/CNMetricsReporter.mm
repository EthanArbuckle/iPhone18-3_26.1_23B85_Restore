@interface CNMetricsReporter
+ (id)log;
+ (void)logDatabaseResolution:(id)a3;
- (id)compoundKeyForEvent:(id)a3;
- (void)sendDictionary:(id)a3 forEvent:(id)a4 andLog:(BOOL)a5;
@end

@implementation CNMetricsReporter

+ (id)log
{
  if (log_cn_once_token_1 != -1)
  {
    +[CNMetricsReporter log];
  }

  v3 = log_cn_once_object_1;

  return v3;
}

uint64_t __24__CNMetricsReporter_log__block_invoke()
{
  log_cn_once_object_1 = os_log_create("com.apple.contacts", "metrics-reporter");

  return MEMORY[0x2821F96F8]();
}

- (void)sendDictionary:(id)a3 forEvent:(id)a4 andLog:(BOOL)a5
{
  v5 = a5;
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(CNMetricsReporter *)self compoundKeyForEvent:v9];
  v11 = v8;
  AnalyticsSendEventLazy();

  if (v5)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_244157000, v12, OS_LOG_TYPE_INFO, "CNMetrics Collected for %@ (%@)", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)compoundKeyForEvent:(id)a3
{
  v4 = a3;
  v5 = [(CNMetricsReporter *)self eventKeyPrefix];
  v6 = [v5 stringByAppendingString:v4];

  return v6;
}

+ (void)logDatabaseResolution:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 alloc];
  v10 = @"resolution";
  v11[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = [v6 initWithDictionary:v7];
  [a1 sendDictionary:v8 forEvent:@"com.apple.contacts.databaseIntegrity"];

  v9 = *MEMORY[0x277D85DE8];
}

@end
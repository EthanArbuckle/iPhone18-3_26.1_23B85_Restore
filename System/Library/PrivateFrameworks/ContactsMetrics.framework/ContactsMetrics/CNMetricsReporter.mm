@interface CNMetricsReporter
+ (id)log;
+ (void)logDatabaseResolution:(id)resolution;
- (id)compoundKeyForEvent:(id)event;
- (void)sendDictionary:(id)dictionary forEvent:(id)event andLog:(BOOL)log;
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

- (void)sendDictionary:(id)dictionary forEvent:(id)event andLog:(BOOL)log
{
  logCopy = log;
  v18 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  eventCopy = event;
  v10 = [(CNMetricsReporter *)self compoundKeyForEvent:eventCopy];
  v11 = dictionaryCopy;
  AnalyticsSendEventLazy();

  if (logCopy)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v15 = eventCopy;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_244157000, v12, OS_LOG_TYPE_INFO, "CNMetrics Collected for %@ (%@)", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)compoundKeyForEvent:(id)event
{
  eventCopy = event;
  eventKeyPrefix = [(CNMetricsReporter *)self eventKeyPrefix];
  v6 = [eventKeyPrefix stringByAppendingString:eventCopy];

  return v6;
}

+ (void)logDatabaseResolution:(id)resolution
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  resolutionCopy = resolution;
  v6 = [v4 alloc];
  v10 = @"resolution";
  v11[0] = resolutionCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = [v6 initWithDictionary:v7];
  [self sendDictionary:v8 forEvent:@"com.apple.contacts.databaseIntegrity"];

  v9 = *MEMORY[0x277D85DE8];
}

@end
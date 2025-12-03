@interface EDMailAnalyticsCollector
- (EDMailAnalyticsCollector)initWithAnalyticsCollector:(id)collector smimeConfigurationProvider:(id)provider messagePersistence:(id)persistence;
- (id)coreAnalyticsPeriodicEvent;
@end

@implementation EDMailAnalyticsCollector

- (EDMailAnalyticsCollector)initWithAnalyticsCollector:(id)collector smimeConfigurationProvider:(id)provider messagePersistence:(id)persistence
{
  collectorCopy = collector;
  providerCopy = provider;
  persistenceCopy = persistence;
  v17.receiver = self;
  v17.super_class = EDMailAnalyticsCollector;
  v11 = [(EDMailAnalyticsCollector *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_messagePersistence, persistence);
    v13 = [[EDSMIMEAnalyticsCollector alloc] initWithAnalyticsCollector:collectorCopy smimeConfigurationProvider:providerCopy messagePersistence:persistenceCopy];
    smimeAnalyticsCollector = v12->_smimeAnalyticsCollector;
    v12->_smimeAnalyticsCollector = v13;

    v15 = [collectorCopy registerForLogEventsWithPeriodicDataProvider:v12];
  }

  return v12;
}

- (id)coreAnalyticsPeriodicEvent
{
  v23[1] = *MEMORY[0x1E69E9840];
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v4 = [em_userDefaults objectForKey:*MEMORY[0x1E699AB88]];

  v5 = [MEMORY[0x1E695DF00] ef_midnightNdaysAgo:30];
  v6 = [MEMORY[0x1E699B8C8] column:@"date_received"];
  v7 = MEMORY[0x1E696AD98];
  [v5 timeIntervalSince1970];
  v8 = [v7 numberWithDouble:?];
  v9 = [v6 greaterThan:v8];

  v10 = objc_alloc(MEMORY[0x1E699B948]);
  v11 = [MEMORY[0x1E699B890] count:0];
  v12 = +[EDMessagePersistence messagesTableName];
  v13 = [v10 initWithResult:v11 table:v12];

  [v13 setWhere:v9];
  [v13 setLimit:1];
  messagePersistence = [(EDMailAnalyticsCollector *)self messagePersistence];
  v15 = [messagePersistence countOfMessageStatement:v13];

  if (v15 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v4 ef_isLaterThanDate:v5];
  }

  v22 = @"usesMail";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:v16];
  v23[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v19 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.usage" collectionData:v18];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end
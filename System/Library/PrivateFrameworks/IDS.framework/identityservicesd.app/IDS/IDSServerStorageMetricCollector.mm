@interface IDSServerStorageMetricCollector
- (IDSServerStorageMetricCollector)initWithTopic:(id)topic isPrimary:(BOOL)primary;
- (id)dictionaryMetric;
- (void)endCollector;
- (void)incrementClientTimeoutCount;
- (void)incrementMessageCount;
- (void)incrementRoundCount;
- (void)incrementServerTimeoutCount;
- (void)reportMetric;
@end

@implementation IDSServerStorageMetricCollector

- (IDSServerStorageMetricCollector)initWithTopic:(id)topic isPrimary:(BOOL)primary
{
  topicCopy = topic;
  v10.receiver = self;
  v10.super_class = IDSServerStorageMetricCollector;
  v6 = [(IDSServerStorageMetricCollector *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(IDSServerStorageMetricCollector *)v6 setTopic:topicCopy];
    [(IDSServerStorageMetricCollector *)v7 setWasPrimary:1];
    v8 = +[NSDate date];
    [v8 timeIntervalSinceReferenceDate];
    [(IDSServerStorageMetricCollector *)v7 setStartTime:?];
  }

  return v7;
}

- (void)incrementMessageCount
{
  v3 = [(IDSServerStorageMetricCollector *)self messageCount]+ 1;

  [(IDSServerStorageMetricCollector *)self setMessageCount:v3];
}

- (void)incrementRoundCount
{
  v3 = [(IDSServerStorageMetricCollector *)self roundCount]+ 1;

  [(IDSServerStorageMetricCollector *)self setRoundCount:v3];
}

- (void)incrementServerTimeoutCount
{
  v3 = [(IDSServerStorageMetricCollector *)self serverTimeoutCount]+ 1;

  [(IDSServerStorageMetricCollector *)self setServerTimeoutCount:v3];
}

- (void)incrementClientTimeoutCount
{
  v3 = [(IDSServerStorageMetricCollector *)self clientTimeoutCount]+ 1;

  [(IDSServerStorageMetricCollector *)self setClientTimeoutCount:v3];
}

- (void)endCollector
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceReferenceDate];
  [(IDSServerStorageMetricCollector *)self setEndTime:?];
}

- (void)reportMetric
{
  [(IDSServerStorageMetricCollector *)self endTime];
  v4 = v3;
  [(IDSServerStorageMetricCollector *)self startTime];
  v6 = v4 - v5;
  v7 = [IDSServerStorageStateMachineCompletedMetric alloc];
  topic = [(IDSServerStorageMetricCollector *)self topic];
  linkType = [(IDSServerStorageMetricCollector *)self linkType];
  wasPrimary = [(IDSServerStorageMetricCollector *)self wasPrimary];
  messageCount = [(IDSServerStorageMetricCollector *)self messageCount];
  roundCount = [(IDSServerStorageMetricCollector *)self roundCount];
  serverTimeoutCount = [(IDSServerStorageMetricCollector *)self serverTimeoutCount];
  clientTimeoutCount = [(IDSServerStorageMetricCollector *)self clientTimeoutCount];
  terminationReason = [(IDSServerStorageMetricCollector *)self terminationReason];
  storageCheckVersion = [(IDSServerStorageMetricCollector *)self storageCheckVersion];
  v18 = [v7 initWithService:topic linkType:linkType wasPrimary:wasPrimary timeTaken:messageCount messagesProcessed:roundCount roundsProcessed:serverTimeoutCount serverTimeoutCount:v6 clientTimeoutCount:clientTimeoutCount terminationReason:terminationReason storageCheckVersion:storageCheckVersion];

  v17 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v17 logMetric:v18];
}

- (id)dictionaryMetric
{
  [(IDSServerStorageMetricCollector *)self endTime];
  v4 = v3;
  [(IDSServerStorageMetricCollector *)self startTime];
  v6 = v5;
  v7 = objc_alloc_init(NSMutableDictionary);
  topic = [(IDSServerStorageMetricCollector *)self topic];
  if (topic)
  {
    CFDictionarySetValue(v7, @"Topic", topic);
  }

  v9 = v4 - v6;

  v10 = [NSNumber numberWithInteger:[(IDSServerStorageMetricCollector *)self linkType]];
  if (v10)
  {
    CFDictionarySetValue(v7, @"linkType", v10);
  }

  if ([(IDSServerStorageMetricCollector *)self wasPrimary])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  CFDictionarySetValue(v7, @"wasPrimary", v11);
  v12 = [NSNumber numberWithDouble:v9];
  if (v12)
  {
    CFDictionarySetValue(v7, @"timeTaken", v12);
  }

  v13 = [NSNumber numberWithInteger:[(IDSServerStorageMetricCollector *)self messageCount]];
  if (v13)
  {
    CFDictionarySetValue(v7, @"messagesProcessed", v13);
  }

  v14 = [NSNumber numberWithInteger:[(IDSServerStorageMetricCollector *)self roundCount]];
  if (v14)
  {
    CFDictionarySetValue(v7, @"roundsProcessed", v14);
  }

  v15 = [NSNumber numberWithInteger:[(IDSServerStorageMetricCollector *)self serverTimeoutCount]];
  if (v15)
  {
    CFDictionarySetValue(v7, @"serverTimeoutCount", v15);
  }

  v16 = [NSNumber numberWithInteger:[(IDSServerStorageMetricCollector *)self clientTimeoutCount]];
  if (v16)
  {
    CFDictionarySetValue(v7, @"clientTimeoutCount", v16);
  }

  v17 = [NSNumber numberWithInteger:[(IDSServerStorageMetricCollector *)self terminationReason]];
  if (v17)
  {
    CFDictionarySetValue(v7, @"terminationReason", v17);
  }

  storageCheckVersion = [(IDSServerStorageMetricCollector *)self storageCheckVersion];
  if (storageCheckVersion)
  {
    CFDictionarySetValue(v7, @"storageCheckVersion", storageCheckVersion);
  }

  return v7;
}

@end
@interface IDSQueryRateLimitedMetric
- (IDSQueryRateLimitedMetric)initWithTopLevelService:(id)service count:(id)count timeSinceStart:(id)start;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSQueryRateLimitedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  topLevelService = [(IDSQueryRateLimitedMetric *)self topLevelService];
  if (topLevelService)
  {
    CFDictionarySetValue(v3, @"topLevelService", topLevelService);
  }

  queryCount = [(IDSQueryRateLimitedMetric *)self queryCount];
  if (queryCount)
  {
    CFDictionarySetValue(v3, @"count", queryCount);
  }

  timeSinceStart = [(IDSQueryRateLimitedMetric *)self timeSinceStart];
  if (timeSinceStart)
  {
    CFDictionarySetValue(v3, @"timeSinceStart", timeSinceStart);
  }

  return v3;
}

- (IDSQueryRateLimitedMetric)initWithTopLevelService:(id)service count:(id)count timeSinceStart:(id)start
{
  serviceCopy = service;
  countCopy = count;
  startCopy = start;
  v15.receiver = self;
  v15.super_class = IDSQueryRateLimitedMetric;
  v12 = [(IDSQueryRateLimitedMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topLevelService, service);
    objc_storeStrong(&v13->_queryCount, count);
    objc_storeStrong(&v13->_timeSinceStart, start);
  }

  return v13;
}

@end
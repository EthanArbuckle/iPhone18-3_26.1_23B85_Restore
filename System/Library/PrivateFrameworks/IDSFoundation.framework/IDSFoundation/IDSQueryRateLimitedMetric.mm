@interface IDSQueryRateLimitedMetric
- (IDSQueryRateLimitedMetric)initWithTopLevelService:(id)a3 count:(id)a4 timeSinceStart:(id)a5;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSQueryRateLimitedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSQueryRateLimitedMetric *)self topLevelService];
  if (v4)
  {
    CFDictionarySetValue(v3, @"topLevelService", v4);
  }

  v5 = [(IDSQueryRateLimitedMetric *)self queryCount];
  if (v5)
  {
    CFDictionarySetValue(v3, @"count", v5);
  }

  v6 = [(IDSQueryRateLimitedMetric *)self timeSinceStart];
  if (v6)
  {
    CFDictionarySetValue(v3, @"timeSinceStart", v6);
  }

  return v3;
}

- (IDSQueryRateLimitedMetric)initWithTopLevelService:(id)a3 count:(id)a4 timeSinceStart:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSQueryRateLimitedMetric;
  v12 = [(IDSQueryRateLimitedMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topLevelService, a3);
    objc_storeStrong(&v13->_queryCount, a4);
    objc_storeStrong(&v13->_timeSinceStart, a5);
  }

  return v13;
}

@end
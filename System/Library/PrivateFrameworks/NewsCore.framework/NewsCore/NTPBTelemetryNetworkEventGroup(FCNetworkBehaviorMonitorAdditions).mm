@interface NTPBTelemetryNetworkEventGroup(FCNetworkBehaviorMonitorAdditions)
- (FCNetworkEventStats)connectDurationStats;
- (FCNetworkEventStats)dnsDurationStats;
- (FCNetworkEventStats)timeToFirstByteStats;
- (FCNetworkEventStats)totalDurationStats;
- (id)endDate;
- (id)startDate;
- (uint64_t)cacheHitCount;
- (uint64_t)cacheMissCount;
@end

@implementation NTPBTelemetryNetworkEventGroup(FCNetworkBehaviorMonitorAdditions)

- (id)startDate
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  successes = [self successes];
  v3 = [successes countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(successes);
        }

        startTime = [*(*(&v22 + 1) + 8 * i) startTime];
        if (startTime < v6)
        {
          v6 = startTime;
        }
      }

      v4 = [successes countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  failures = [self failures];
  v10 = [failures countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(failures);
        }

        startTime2 = [*(*(&v18 + 1) + 8 * j) startTime];
        if (startTime2 < v6)
        {
          v6 = startTime2;
        }
      }

      v11 = [failures countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:v6];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)endDate
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  successes = [self successes];
  v3 = [successes countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(successes);
        }

        startTime = [*(*(&v22 + 1) + 8 * i) startTime];
        if (startTime > v5)
        {
          v5 = startTime;
        }
      }

      v4 = [successes countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  failures = [self failures];
  v10 = [failures countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(failures);
        }

        startTime2 = [*(*(&v18 + 1) + 8 * j) startTime];
        if (startTime2 > v5)
        {
          v5 = startTime2;
        }
      }

      v11 = [failures countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:v5];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (FCNetworkEventStats)totalDurationStats
{
  successes = [self successes];
  v2 = [successes fc_arrayByTransformingWithBlock:&__block_literal_global_314];

  v3 = [[FCNetworkEventStats alloc] initWithValues:v2];

  return v3;
}

- (FCNetworkEventStats)dnsDurationStats
{
  successes = [self successes];
  v2 = [successes fc_arrayByTransformingWithBlock:&__block_literal_global_317];

  v3 = [[FCNetworkEventStats alloc] initWithValues:v2];

  return v3;
}

- (FCNetworkEventStats)connectDurationStats
{
  successes = [self successes];
  v2 = [successes fc_arrayByTransformingWithBlock:&__block_literal_global_319];

  v3 = [[FCNetworkEventStats alloc] initWithValues:v2];

  return v3;
}

- (FCNetworkEventStats)timeToFirstByteStats
{
  successes = [self successes];
  v2 = [successes fc_arrayByTransformingWithBlock:&__block_literal_global_321];

  v3 = [[FCNetworkEventStats alloc] initWithValues:v2];

  return v3;
}

- (uint64_t)cacheHitCount
{
  successes = [self successes];
  v2 = [successes fc_countOfObjectsPassingTest:&__block_literal_global_324];

  return v2;
}

- (uint64_t)cacheMissCount
{
  successes = [self successes];
  v2 = [successes fc_countOfObjectsPassingTest:&__block_literal_global_326];

  return v2;
}

@end
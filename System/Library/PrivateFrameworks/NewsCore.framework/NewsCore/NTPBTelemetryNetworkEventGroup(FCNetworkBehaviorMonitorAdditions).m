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
  v2 = [a1 successes];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v22 + 1) + 8 * i) startTime];
        if (v8 < v6)
        {
          v6 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  v9 = [a1 failures];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * j) startTime];
        if (v14 < v6)
        {
          v6 = v14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
  v2 = [a1 successes];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v22 + 1) + 8 * i) startTime];
        if (v8 > v5)
        {
          v5 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  v9 = [a1 failures];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * j) startTime];
        if (v14 > v5)
        {
          v5 = v14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:v5];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (FCNetworkEventStats)totalDurationStats
{
  v1 = [a1 successes];
  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_314];

  v3 = [[FCNetworkEventStats alloc] initWithValues:v2];

  return v3;
}

- (FCNetworkEventStats)dnsDurationStats
{
  v1 = [a1 successes];
  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_317];

  v3 = [[FCNetworkEventStats alloc] initWithValues:v2];

  return v3;
}

- (FCNetworkEventStats)connectDurationStats
{
  v1 = [a1 successes];
  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_319];

  v3 = [[FCNetworkEventStats alloc] initWithValues:v2];

  return v3;
}

- (FCNetworkEventStats)timeToFirstByteStats
{
  v1 = [a1 successes];
  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_321];

  v3 = [[FCNetworkEventStats alloc] initWithValues:v2];

  return v3;
}

- (uint64_t)cacheHitCount
{
  v1 = [a1 successes];
  v2 = [v1 fc_countOfObjectsPassingTest:&__block_literal_global_324];

  return v2;
}

- (uint64_t)cacheMissCount
{
  v1 = [a1 successes];
  v2 = [v1 fc_countOfObjectsPassingTest:&__block_literal_global_326];

  return v2;
}

@end
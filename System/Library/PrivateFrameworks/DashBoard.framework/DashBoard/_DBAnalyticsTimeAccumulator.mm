@interface _DBAnalyticsTimeAccumulator
- (BOOL)isAccumulatingTimeForAnyKey;
- (BOOL)isAccumulatingTimeForKey:(id)a3;
- (_DBAnalyticsTimeAccumulator)init;
- (double)accumulatedTimeForKey:(id)a3;
- (void)startCountingTimeForKey:(id)a3;
- (void)stopCountingTimeForAllKeys;
- (void)stopCountingTimeForKey:(id)a3;
@end

@implementation _DBAnalyticsTimeAccumulator

- (_DBAnalyticsTimeAccumulator)init
{
  v8.receiver = self;
  v8.super_class = _DBAnalyticsTimeAccumulator;
  v2 = [(_DBAnalyticsTimeAccumulator *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    dateStorage = v2->_dateStorage;
    v2->_dateStorage = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    accumulatedTimeStorage = v2->_accumulatedTimeStorage;
    v2->_accumulatedTimeStorage = v5;
  }

  return v2;
}

- (BOOL)isAccumulatingTimeForKey:(id)a3
{
  v4 = a3;
  v5 = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (BOOL)isAccumulatingTimeForAnyKey
{
  v2 = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)startCountingTimeForKey:(id)a3
{
  v6 = a3;
  if (![(_DBAnalyticsTimeAccumulator *)self isAccumulatingTimeForKey:?])
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }
}

- (void)stopCountingTimeForAllKeys
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
  v4 = [v3 allKeys];
  v5 = [v4 copy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_DBAnalyticsTimeAccumulator *)self stopCountingTimeForKey:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)stopCountingTimeForKey:(id)a3
{
  v14 = a3;
  v4 = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
  v5 = [v4 objectForKeyedSubscript:v14];

  if (v5)
  {
    [(_DBAnalyticsTimeAccumulator *)self accumulatedTimeForKey:v14];
    v7 = v6;
    v8 = [MEMORY[0x277CBEAA8] date];
    [v5 DBSecondsToDate:v8];
    v10 = v7 + v9;

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    v12 = [(_DBAnalyticsTimeAccumulator *)self accumulatedTimeStorage];
    [v12 setObject:v11 forKeyedSubscript:v14];

    v13 = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
    [v13 setObject:0 forKeyedSubscript:v14];
  }
}

- (double)accumulatedTimeForKey:(id)a3
{
  v4 = a3;
  v5 = [(_DBAnalyticsTimeAccumulator *)self accumulatedTimeStorage];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

@end
@interface _DBAnalyticsTimeAccumulator
- (BOOL)isAccumulatingTimeForAnyKey;
- (BOOL)isAccumulatingTimeForKey:(id)key;
- (_DBAnalyticsTimeAccumulator)init;
- (double)accumulatedTimeForKey:(id)key;
- (void)startCountingTimeForKey:(id)key;
- (void)stopCountingTimeForAllKeys;
- (void)stopCountingTimeForKey:(id)key;
@end

@implementation _DBAnalyticsTimeAccumulator

- (_DBAnalyticsTimeAccumulator)init
{
  v8.receiver = self;
  v8.super_class = _DBAnalyticsTimeAccumulator;
  v2 = [(_DBAnalyticsTimeAccumulator *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dateStorage = v2->_dateStorage;
    v2->_dateStorage = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    accumulatedTimeStorage = v2->_accumulatedTimeStorage;
    v2->_accumulatedTimeStorage = dictionary2;
  }

  return v2;
}

- (BOOL)isAccumulatingTimeForKey:(id)key
{
  keyCopy = key;
  dateStorage = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
  v6 = [dateStorage objectForKeyedSubscript:keyCopy];

  return v6 != 0;
}

- (BOOL)isAccumulatingTimeForAnyKey
{
  dateStorage = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
  v3 = [dateStorage count] != 0;

  return v3;
}

- (void)startCountingTimeForKey:(id)key
{
  keyCopy = key;
  if (![(_DBAnalyticsTimeAccumulator *)self isAccumulatingTimeForKey:?])
  {
    date = [MEMORY[0x277CBEAA8] date];
    dateStorage = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
    [dateStorage setObject:date forKeyedSubscript:keyCopy];
  }
}

- (void)stopCountingTimeForAllKeys
{
  v16 = *MEMORY[0x277D85DE8];
  dateStorage = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
  allKeys = [dateStorage allKeys];
  v5 = [allKeys copy];

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

- (void)stopCountingTimeForKey:(id)key
{
  keyCopy = key;
  dateStorage = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
  v5 = [dateStorage objectForKeyedSubscript:keyCopy];

  if (v5)
  {
    [(_DBAnalyticsTimeAccumulator *)self accumulatedTimeForKey:keyCopy];
    v7 = v6;
    date = [MEMORY[0x277CBEAA8] date];
    [v5 DBSecondsToDate:date];
    v10 = v7 + v9;

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    accumulatedTimeStorage = [(_DBAnalyticsTimeAccumulator *)self accumulatedTimeStorage];
    [accumulatedTimeStorage setObject:v11 forKeyedSubscript:keyCopy];

    dateStorage2 = [(_DBAnalyticsTimeAccumulator *)self dateStorage];
    [dateStorage2 setObject:0 forKeyedSubscript:keyCopy];
  }
}

- (double)accumulatedTimeForKey:(id)key
{
  keyCopy = key;
  accumulatedTimeStorage = [(_DBAnalyticsTimeAccumulator *)self accumulatedTimeStorage];
  v6 = [accumulatedTimeStorage objectForKeyedSubscript:keyCopy];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

@end
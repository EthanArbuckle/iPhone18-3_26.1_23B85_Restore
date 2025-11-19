@interface _CDMultiLevelRateLimiter
- (BOOL)credit;
- (BOOL)debited;
- (NSString)description;
- (_CDMultiLevelRateLimiter)initWithPeriodToCountMap:(id)a3;
- (void)recordTimeAndRefillIfNeededRaw;
@end

@implementation _CDMultiLevelRateLimiter

- (void)recordTimeAndRefillIfNeededRaw
{
  v3 = [MEMORY[0x1E695DF00] date];
  if (self->_numberOfRateLimitPolicies >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_periodStart objectAtIndexedSubscript:v4];
      [(NSDate *)v3 timeIntervalSinceDate:v5];
      v7 = v6;
      v8 = [(NSArray *)self->_periods objectAtIndexedSubscript:v4];
      [v8 doubleValue];
      v10 = v9;

      if (v7 > v10)
      {
        [(NSMutableArray *)self->_periodStart setObject:v3 atIndexedSubscript:v4];
        [(NSMutableArray *)self->_balances setObject:&unk_1F05EE8C8 atIndexedSubscript:v4];
      }

      ++v4;
    }

    while (self->_numberOfRateLimitPolicies > v4);
  }

  lastRecorded = self->_lastRecorded;
  self->_lastRecorded = v3;
}

- (BOOL)debited
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35___CDMultiLevelRateLimiter_debited__block_invoke;
  v5[3] = &unk_1E7368AF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (_CDMultiLevelRateLimiter)initWithPeriodToCountMap:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = _CDMultiLevelRateLimiter;
  v5 = [(_CDMultiLevelRateLimiter *)&v44 init];
  if (v5)
  {
    v6 = [v4 allKeys];
    v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_39];
    v8 = [v7 mutableCopy];

    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5->_numberOfRateLimitPolicies];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v4 objectForKeyedSubscript:*(*(&v40 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v12);
    }

    v39 = v5;

    v16 = [MEMORY[0x1E696AD50] indexSet];
    v17 = [v9 count] - 1;
    if (v17 >= 1)
    {
      do
      {
        v18 = [v9 objectAtIndexedSubscript:v17];
        v19 = [v18 integerValue];

        v20 = v17 + 1;
        do
        {
          v21 = [v9 objectAtIndexedSubscript:v20 - 2];
          v22 = [v21 integerValue];

          if (v22 >= v19)
          {
            [v16 addIndex:v20 - 2];
          }

          --v20;
        }

        while (v20 > 1);
        if ([v16 count])
        {
          [v9 removeObjectsAtIndexes:v16];
          [v10 removeObjectsAtIndexes:v16];
          [v16 removeAllIndexes];
        }

        v23 = [v9 count];
        if (v23 >= v17)
        {
          v24 = v17;
        }

        else
        {
          v24 = v23;
        }

        v17 = v24 - 1;
      }

      while (v24 > 1);
    }

    v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
    v5 = v39;
    periods = v39->_periods;
    v39->_periods = v25;

    v39->_numberOfRateLimitPolicies = [(NSArray *)v39->_periods count];
    v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
    maxCounts = v39->_maxCounts;
    v39->_maxCounts = v27;

    v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:v39->_numberOfRateLimitPolicies];
    periodStart = v39->_periodStart;
    v39->_periodStart = v29;

    v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:v39->_numberOfRateLimitPolicies];
    balances = v39->_balances;
    v39->_balances = v31;

    v33 = [MEMORY[0x1E695DF00] distantPast];
    objc_storeStrong(&v39->_lastRecorded, v33);
    if (v39->_numberOfRateLimitPolicies >= 1)
    {
      v34 = 0;
      do
      {
        [(NSMutableArray *)v39->_balances setObject:&unk_1F05EE8C8 atIndexedSubscript:v34];
        [(NSMutableArray *)v39->_periodStart setObject:v33 atIndexedSubscript:v34++];
      }

      while (v34 < v39->_numberOfRateLimitPolicies);
    }

    v35 = dispatch_queue_create("com.apple.duet.multilevelratelimiter", 0);
    queue = v39->_queue;
    v39->_queue = v35;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)credit
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34___CDMultiLevelRateLimiter_credit__block_invoke;
  block[3] = &unk_1E7367440;
  block[4] = self;
  dispatch_sync(queue, block);
  return 1;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  maxCounts = self->_maxCounts;
  v7 = [v3 stringWithFormat:@"%@: %@ per %@", v5, maxCounts, self->_periods];

  return v7;
}

@end
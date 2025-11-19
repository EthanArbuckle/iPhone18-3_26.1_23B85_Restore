@interface _ICResultCache
- (BOOL)fuzzyMatchItem:(id)a3 withValue:(id)a4;
- (_ICResultCache)initWithTTL:(double)a3;
- (id)searchWithTrigger:(id)a3;
- (id)searchWithValue:(id)a3;
- (void)addResults:(id)a3;
- (void)clear;
@end

@implementation _ICResultCache

- (void)clear
{
  cachedResults = self->_cachedResults;
  self->_cachedResults = 0;
  MEMORY[0x2821F96F8]();
}

- (_ICResultCache)initWithTTL:(double)a3
{
  v5.receiver = self;
  v5.super_class = _ICResultCache;
  result = [(_ICResultCache *)&v5 init];
  if (result)
  {
    result->_ttlInSeconds = a3;
  }

  return result;
}

- (void)addResults:(id)a3
{
  objc_storeStrong(&self->_cachedResults, a3);
  v7 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  start = self->_start;
  self->_start = v5;
}

- (id)searchWithTrigger:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSDate *)self->_start timeIntervalSinceNow];
  if (self->_ttlInSeconds >= -v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_cachedResults;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 trigger];
          v14 = [v13 isEqualToProactiveTrigger:v4];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [(_ICResultCache *)self clear];
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)fuzzyMatchItem:(id)a3 withValue:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v8 = [v7 characterIsMember:{objc_msgSend(v6, "characterAtIndex:", 0)}];

  if (v8 && (v20 = 0u, v21 = 0u, v18 = 0u, v19 = 0u, (v9 = [&unk_28670F1C0 countByEnumeratingWithState:&v18 objects:v22 count:16]) != 0))
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(&unk_28670F1C0);
        }

        v13 = [MEMORY[0x277CCACA8] stringWithString:*(*(&v18 + 1) + 8 * i)];
        v14 = [v13 stringByAppendingString:v6];

        LOBYTE(v13) = [v5 hasPrefix:v14];
        if (v13)
        {
          v15 = 1;
          goto LABEL_13;
        }
      }

      v10 = [&unk_28670F1C0 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v15 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)searchWithValue:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 length])
  {
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  [(NSDate *)self->_start timeIntervalSinceNow];
  if (self->_ttlInSeconds < -v5)
  {
    goto LABEL_20;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_cachedResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {

    goto LABEL_20;
  }

  v8 = v7;
  v19 = self;
  v9 = 0;
  v10 = *v21;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      v13 = [v12 value];
      if ([v13 hasPrefix:v4])
      {
      }

      else
      {
        [v12 value];
        v15 = v14 = v6;
        v16 = [(_ICResultCache *)v19 fuzzyMatchItem:v15 withValue:v4];

        v6 = v14;
        if (!v16)
        {
          continue;
        }
      }

      if (!v9)
      {
        v9 = [MEMORY[0x277CBEB18] array];
      }

      if ([v9 count] == 2)
      {
        goto LABEL_17;
      }

      [v9 addObject:v12];
    }

    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v8);
LABEL_17:

  self = v19;
  if (!v9)
  {
LABEL_20:
    [(_ICResultCache *)self clear];
    goto LABEL_21;
  }

LABEL_22:

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
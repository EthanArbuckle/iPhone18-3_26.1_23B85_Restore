@interface _ICResultCache
- (BOOL)fuzzyMatchItem:(id)item withValue:(id)value;
- (_ICResultCache)initWithTTL:(double)l;
- (id)searchWithTrigger:(id)trigger;
- (id)searchWithValue:(id)value;
- (void)addResults:(id)results;
- (void)clear;
@end

@implementation _ICResultCache

- (void)clear
{
  cachedResults = self->_cachedResults;
  self->_cachedResults = 0;
  MEMORY[0x2821F96F8]();
}

- (_ICResultCache)initWithTTL:(double)l
{
  v5.receiver = self;
  v5.super_class = _ICResultCache;
  result = [(_ICResultCache *)&v5 init];
  if (result)
  {
    result->_ttlInSeconds = l;
  }

  return result;
}

- (void)addResults:(id)results
{
  objc_storeStrong(&self->_cachedResults, results);
  resultsCopy = results;
  date = [MEMORY[0x277CBEAA8] date];
  start = self->_start;
  self->_start = date;
}

- (id)searchWithTrigger:(id)trigger
{
  v22 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  [(NSDate *)self->_start timeIntervalSinceNow];
  if (self->_ttlInSeconds >= -v5)
  {
    array = [MEMORY[0x277CBEB18] array];
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
          trigger = [v12 trigger];
          v14 = [trigger isEqualToProactiveTrigger:triggerCopy];

          if (v14)
          {
            [array addObject:v12];
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
    array = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)fuzzyMatchItem:(id)item withValue:(id)value
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  valueCopy = value;
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v8 = [decimalDigitCharacterSet characterIsMember:{objc_msgSend(valueCopy, "characterAtIndex:", 0)}];

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
        v14 = [v13 stringByAppendingString:valueCopy];

        LOBYTE(v13) = [itemCopy hasPrefix:v14];
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

- (id)searchWithValue:(id)value
{
  v25 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (![valueCopy length])
  {
LABEL_21:
    array = 0;
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
  selfCopy = self;
  array = 0;
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
      value = [v12 value];
      if ([value hasPrefix:valueCopy])
      {
      }

      else
      {
        [v12 value];
        v15 = v14 = v6;
        v16 = [(_ICResultCache *)selfCopy fuzzyMatchItem:v15 withValue:valueCopy];

        v6 = v14;
        if (!v16)
        {
          continue;
        }
      }

      if (!array)
      {
        array = [MEMORY[0x277CBEB18] array];
      }

      if ([array count] == 2)
      {
        goto LABEL_17;
      }

      [array addObject:v12];
    }

    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v8);
LABEL_17:

  self = selfCopy;
  if (!array)
  {
LABEL_20:
    [(_ICResultCache *)self clear];
    goto LABEL_21;
  }

LABEL_22:

  v17 = *MEMORY[0x277D85DE8];

  return array;
}

@end
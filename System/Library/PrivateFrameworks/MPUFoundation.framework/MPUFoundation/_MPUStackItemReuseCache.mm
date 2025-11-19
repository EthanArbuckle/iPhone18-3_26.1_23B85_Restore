@interface _MPUStackItemReuseCache
+ (id)dequeueReusableStackItemWithIdentifier:(id)a3;
+ (void)enqueueReusableStackItem:(id)a3 forReuseIdentifier:(id)a4;
+ (void)registerStackViewForReuseIdentifier:(id)a3;
+ (void)unregisterStackViewForReuseIdentifier:(id)a3;
@end

@implementation _MPUStackItemReuseCache

+ (id)dequeueReusableStackItemWithIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [__reuseIdentifierToReusableStackItems objectForKey:v3];
    if ([v4 count])
    {
      v5 = [v4 objectAtIndex:0];
      [v4 removeObjectAtIndex:0];
      if (![v4 count])
      {
        [__reuseIdentifierToReusableStackItems removeObjectForKey:v3];
        if (![__reuseIdentifierToReusableStackItems count])
        {
          v6 = __reuseIdentifierToReusableStackItems;
          __reuseIdentifierToReusableStackItems = 0;
        }
      }

      [v5 setHidden:0];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)enqueueReusableStackItem:(id)a3 forReuseIdentifier:(id)a4
{
  v12 = a3;
  v5 = a4;
  if (v12)
  {
    if (v5)
    {
      v6 = [__reuseIdentifierToRegisteredCount objectForKey:v5];
      v7 = [v6 integerValue];

      if (v7)
      {
        [v12 prepareForReuse];
        [v12 setHidden:1];
        v8 = __reuseIdentifierToReusableStackItems;
        if (!__reuseIdentifierToReusableStackItems)
        {
          v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
          v10 = __reuseIdentifierToReusableStackItems;
          __reuseIdentifierToReusableStackItems = v9;

          v8 = __reuseIdentifierToReusableStackItems;
        }

        v11 = [v8 objectForKey:v5];
        if (!v11)
        {
          v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
          [__reuseIdentifierToReusableStackItems setObject:v11 forKey:v5];
        }

        if ([v11 count] <= 2)
        {
          [v11 addObject:v12];
        }
      }
    }
  }
}

+ (void)registerStackViewForReuseIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = __reuseIdentifierToRegisteredCount;
    v11 = v3;
    if (!__reuseIdentifierToRegisteredCount)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
      v6 = __reuseIdentifierToRegisteredCount;
      __reuseIdentifierToRegisteredCount = v5;

      v4 = __reuseIdentifierToRegisteredCount;
    }

    v7 = [v4 objectForKey:v11];
    v8 = [v7 integerValue];

    v9 = __reuseIdentifierToRegisteredCount;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8 + 1];
    [v9 setObject:v10 forKey:v11];
  }

  MEMORY[0x2821F96F8]();
}

+ (void)unregisterStackViewForReuseIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v7 = v3;
    v4 = [__reuseIdentifierToRegisteredCount objectForKey:v3];
    v5 = [v4 integerValue];

    if (v5 == 1)
    {
      [__reuseIdentifierToRegisteredCount removeObjectForKey:v7];
      if (![__reuseIdentifierToRegisteredCount count])
      {
        v6 = __reuseIdentifierToRegisteredCount;
        __reuseIdentifierToRegisteredCount = 0;
      }

      [__reuseIdentifierToReusableStackItems removeObjectForKey:v7];
    }
  }

  MEMORY[0x2821F96F8]();
}

@end
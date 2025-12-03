@interface _MPUStackItemReuseCache
+ (id)dequeueReusableStackItemWithIdentifier:(id)identifier;
+ (void)enqueueReusableStackItem:(id)item forReuseIdentifier:(id)identifier;
+ (void)registerStackViewForReuseIdentifier:(id)identifier;
+ (void)unregisterStackViewForReuseIdentifier:(id)identifier;
@end

@implementation _MPUStackItemReuseCache

+ (id)dequeueReusableStackItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = [__reuseIdentifierToReusableStackItems objectForKey:identifierCopy];
    if ([v4 count])
    {
      v5 = [v4 objectAtIndex:0];
      [v4 removeObjectAtIndex:0];
      if (![v4 count])
      {
        [__reuseIdentifierToReusableStackItems removeObjectForKey:identifierCopy];
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

+ (void)enqueueReusableStackItem:(id)item forReuseIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  if (itemCopy)
  {
    if (identifierCopy)
    {
      v6 = [__reuseIdentifierToRegisteredCount objectForKey:identifierCopy];
      integerValue = [v6 integerValue];

      if (integerValue)
      {
        [itemCopy prepareForReuse];
        [itemCopy setHidden:1];
        v8 = __reuseIdentifierToReusableStackItems;
        if (!__reuseIdentifierToReusableStackItems)
        {
          v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
          v10 = __reuseIdentifierToReusableStackItems;
          __reuseIdentifierToReusableStackItems = v9;

          v8 = __reuseIdentifierToReusableStackItems;
        }

        v11 = [v8 objectForKey:identifierCopy];
        if (!v11)
        {
          v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
          [__reuseIdentifierToReusableStackItems setObject:v11 forKey:identifierCopy];
        }

        if ([v11 count] <= 2)
        {
          [v11 addObject:itemCopy];
        }
      }
    }
  }
}

+ (void)registerStackViewForReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = __reuseIdentifierToRegisteredCount;
    v11 = identifierCopy;
    if (!__reuseIdentifierToRegisteredCount)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
      v6 = __reuseIdentifierToRegisteredCount;
      __reuseIdentifierToRegisteredCount = v5;

      v4 = __reuseIdentifierToRegisteredCount;
    }

    v7 = [v4 objectForKey:v11];
    integerValue = [v7 integerValue];

    v9 = __reuseIdentifierToRegisteredCount;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
    [v9 setObject:v10 forKey:v11];
  }

  MEMORY[0x2821F96F8]();
}

+ (void)unregisterStackViewForReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = identifierCopy;
    v4 = [__reuseIdentifierToRegisteredCount objectForKey:identifierCopy];
    integerValue = [v4 integerValue];

    if (integerValue == 1)
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
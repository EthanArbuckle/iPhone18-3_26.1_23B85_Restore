@interface NSArray(Utilities)
- (id)mt_condensedArray;
- (id)mt_deepCopy;
- (id)mt_map:()Utilities;
- (unint64_t)mt_verifyEventData;
@end

@implementation NSArray(Utilities)

- (unint64_t)mt_verifyEventData
{
  result = [self count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v4 = [self objectAtIndexedSubscript:i];
      null = [MEMORY[0x277CBEB68] null];
      if (v4 == null || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          v13 = MTConfigurationError(108, @"Event data item at index %ld is of invalid type %@. Event data items must be of NSDictionary or MTPromise type.", v7, v8, v9, v10, v11, v12, i);
        }
      }

      result = [self count];
    }
  }

  return result;
}

- (id)mt_map:()Utilities
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
          [v5 addObject:null];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)mt_deepCopy
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [self count];
  v3 = 8 * v2;
  v4 = v12 - ((8 * v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, 8 * v2);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v6 = [self objectAtIndexedSubscript:i];
      if (objc_opt_respondsToSelector())
      {
        mt_deepCopy = [v6 mt_deepCopy];

        v6 = mt_deepCopy;
      }

      v8 = *&v4[8 * i];
      *&v4[8 * i] = v6;
    }
  }

  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:v2];
  if (v2)
  {
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)mt_condensedArray
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v6 && v7)
          {
            v6 = [v7 mutableCopy];
          }

          if (v6)
          {
            [v6 addEntriesFromDictionary:v10];
          }

          else
          {
            v12 = v10;

            v7 = v12;
          }
        }

        else
        {
          if (v6)
          {
            v11 = [v6 copy];
            [v2 addObject:v11];
          }

          else if (v7)
          {
            [v2 addObject:{v7, v17}];
          }

          [v2 addObject:v10];
          v6 = 0;
          v7 = 0;
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);

    if (v6)
    {
      v13 = [v6 copy];
      [v2 addObject:v13];

      goto LABEL_26;
    }

    if (v7)
    {
      [v2 addObject:v7];
    }
  }

  else
  {

    v7 = 0;
  }

  v6 = 0;
LABEL_26:
  v14 = [v2 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end
@interface NSArray
- (id)mt_condensedArray;
- (id)mt_deepCopy;
- (id)mt_map:(id)a3;
- (void)mt_verifyEventData;
@end

@implementation NSArray

- (void)mt_verifyEventData
{
  if ([(NSArray *)self count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSArray *)self objectAtIndexedSubscript:v3];
      v5 = +[NSNull null];
      if (v4 == v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          v13 = MTConfigurationError(108, @"Event data item at index %ld is of invalid type %@. Event data items must be of NSDictionary or MTPromise type.", v7, v8, v9, v10, v11, v12, v3);
        }
      }

      ++v3;
    }

    while (v3 < [(NSArray *)self count]);
  }
}

- (id)mt_map:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = +[NSNull null];
          [v5 addObject:v12];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)mt_deepCopy
{
  v3 = [(NSArray *)self count];
  v4 = 8 * v3;
  v5 = &v12 - ((8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v5, 8 * v3);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = [(NSArray *)self objectAtIndexedSubscript:i];
      if (objc_opt_respondsToSelector())
      {
        v8 = [v7 mt_deepCopy];

        v7 = v8;
      }

      v9 = *&v5[8 * i];
      *&v5[8 * i] = v7;
    }
  }

  v10 = [NSArray arrayWithObjects:v5 count:v3];
  if (v3)
  {
    do
    {

      v4 -= 8;
    }

    while (v4);
  }

  return v10;
}

- (id)mt_condensedArray
{
  v3 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v7 && v8)
          {
            v7 = [v8 mutableCopy];
          }

          if (v7)
          {
            [v7 addEntriesFromDictionary:v11];
          }

          else
          {
            v13 = v11;

            v8 = v13;
          }
        }

        else
        {
          if (v7)
          {
            v12 = [v7 copy];
            [v3 addObject:v12];
          }

          else if (v8)
          {
            [v3 addObject:{v8, v17}];
          }

          [v3 addObject:v11];
          v7 = 0;
          v8 = 0;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);

    if (v7)
    {
      v14 = [v7 copy];
      [v3 addObject:v14];

      goto LABEL_26;
    }

    if (v8)
    {
      [v3 addObject:v8];
    }
  }

  else
  {

    v8 = 0;
  }

  v7 = 0;
LABEL_26:
  v15 = [v3 copy];

  return v15;
}

@end
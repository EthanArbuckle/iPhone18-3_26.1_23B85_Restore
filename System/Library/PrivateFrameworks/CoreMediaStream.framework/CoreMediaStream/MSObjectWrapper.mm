@interface MSObjectWrapper
+ (id)objectsFromWrappers:(id)a3;
+ (id)objectsFromWrappers:(id)a3 equalToObject:(id)a4;
+ (id)wrapperWithObject:(id)a3 size:(int64_t)a4;
+ (int64_t)indexOfObject:(id)a3 inWrapperArray:(id)a4;
- (MSObjectWrapper)initWithObject:(id)a3 size:(int64_t)a4;
@end

@implementation MSObjectWrapper

- (MSObjectWrapper)initWithObject:(id)a3 size:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MSObjectWrapper;
  v8 = [(MSObjectWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_object, a3);
    v9->_size = a4;
  }

  return v9;
}

+ (id)objectsFromWrappers:(id)a3 equalToObject:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 object];
        if ([v14 isEqual:v6])
        {
          v15 = [v13 object];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)objectsFromWrappers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) object];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (int64_t)indexOfObject:(id)a3 inWrapperArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndex:v7];
      v9 = [v8 object];
      v10 = [v9 isEqual:v5];

      if (v10)
      {
        break;
      }

      if (++v7 >= [v6 count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = -1;
  }

  return v7;
}

+ (id)wrapperWithObject:(id)a3 size:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithObject:v6 size:a4];

  return v7;
}

@end
@interface NSURLComponents(FamilyCircle)
- (id)fa_queryItemsDictionary;
- (id)fa_valueForQueryItem:()FamilyCircle;
@end

@implementation NSURLComponents(FamilyCircle)

- (id)fa_valueForQueryItem:()FamilyCircle
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self queryItems];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  value = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (value)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:v4];

        if (v11)
        {
          value = [v9 value];
          goto LABEL_11;
        }
      }

      value = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return value;
}

- (id)fa_queryItemsDictionary
{
  v22 = *MEMORY[0x1E69E9840];
  queryItems = [self queryItems];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(queryItems, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = queryItems;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        name = [v8 name];
        if (name)
        {
          v10 = name;
          value = [v8 value];

          if (value)
          {
            value2 = [v8 value];
            name2 = [v8 name];
            [v2 setObject:value2 forKeyedSubscript:name2];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end
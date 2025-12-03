@interface NSDictionary(IconFoundationAdditions)
- (id)_IF_arrayForKey:()IconFoundationAdditions;
- (id)_IF_arrayForKeys:()IconFoundationAdditions;
- (id)_IF_dataForKey:()IconFoundationAdditions;
- (id)_IF_dictionaryAddingEntriesFromDictionary:()IconFoundationAdditions;
- (id)_IF_dictionaryForKey:()IconFoundationAdditions;
- (id)_IF_dictionaryForKeys:()IconFoundationAdditions;
- (id)_IF_dictionarySubsetForKeys:()IconFoundationAdditions;
- (id)_IF_numberForKey:()IconFoundationAdditions;
- (id)_IF_numberForKeys:()IconFoundationAdditions;
- (id)_IF_objectOfClass:()IconFoundationAdditions forKey:;
- (id)_IF_objectOfClass:()IconFoundationAdditions forKeys:;
- (id)_IF_stringForKey:()IconFoundationAdditions;
- (id)_IF_stringForKeys:()IconFoundationAdditions;
- (uint64_t)_IF_BOOLForKey:()IconFoundationAdditions;
- (uint64_t)_IF_BOOLForKey:()IconFoundationAdditions defaultValue:;
- (uint64_t)_IF_BOOLForKeys:()IconFoundationAdditions;
- (uint64_t)_IF_BOOLForKeys:()IconFoundationAdditions defaultValue:;
@end

@implementation NSDictionary(IconFoundationAdditions)

- (id)_IF_objectOfClass:()IconFoundationAdditions forKey:
{
  v4 = [self objectForKey:a4];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_IF_stringForKey:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)_IF_numberForKey:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)_IF_arrayForKey:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)_IF_dictionaryForKey:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)_IF_dataForKey:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (uint64_t)_IF_BOOLForKey:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKey:v4];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (uint64_t)_IF_BOOLForKey:()IconFoundationAdditions defaultValue:
{
  v6 = a3;
  v7 = [self _IF_objectOfClass:objc_opt_class() forKey:v6];

  if (v7)
  {
    a4 = [v7 BOOLValue];
  }

  return a4;
}

- (id)_IF_objectOfClass:()IconFoundationAdditions forKeys:
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [self objectForKey:{*(*(&v12 + 1) + 8 * v9), v12}];
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

- (id)_IF_stringForKeys:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKeys:v4];

  return v5;
}

- (id)_IF_numberForKeys:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKeys:v4];

  return v5;
}

- (id)_IF_arrayForKeys:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKeys:v4];

  return v5;
}

- (id)_IF_dictionaryForKeys:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKeys:v4];

  return v5;
}

- (uint64_t)_IF_BOOLForKeys:()IconFoundationAdditions
{
  v4 = a3;
  v5 = [self _IF_objectOfClass:objc_opt_class() forKeys:v4];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (uint64_t)_IF_BOOLForKeys:()IconFoundationAdditions defaultValue:
{
  v6 = a3;
  v7 = [self _IF_objectOfClass:objc_opt_class() forKeys:v6];

  if (v7)
  {
    a4 = [v7 BOOLValue];
  }

  return a4;
}

- (id)_IF_dictionaryAddingEntriesFromDictionary:()IconFoundationAdditions
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [[v4 alloc] initWithDictionary:self];
  [v6 addEntriesFromDictionary:v5];

  v7 = [v6 copy];

  return v7;
}

- (id)_IF_dictionarySubsetForKeys:()IconFoundationAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [self objectForKeyedSubscript:{v11, v16}];

        if (v12)
        {
          v13 = [self objectForKeyedSubscript:v11];
          [v5 setObject:v13 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

@end
@interface _CDDataCollectionAnonymizer
- (id)anonymizeArray:(uint64_t)a1;
- (id)anonymizeDictionary:(void *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initWithSalt:(id *)a1;
- (void)anonymizeObject:(void *)a1;
@end

@implementation _CDDataCollectionAnonymizer

- (id)initWithSalt:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _CDDataCollectionAnonymizer;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_CDDataCollectionAnonymizer allocWithZone:a3];
  if (self)
  {
    salt = self->_salt;
  }

  else
  {
    salt = 0;
  }

  return [(_CDDataCollectionAnonymizer *)&v4->super.isa initWithSalt:?];
}

- (id)anonymizeArray:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = MEMORY[0x1E695DF70];
    [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_3_10();
    v7 = [v6 countByEnumeratingWithState:v14 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(_CDDataCollectionAnonymizer *)a1 anonymizeObject:?];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:v14 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)anonymizeObject:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    if (OUTLINED_FUNCTION_8_5())
    {
      v4 = [_CDHashUtilities sha256Hash:v3 withSalt:a1[1]];
LABEL_6:
      a1 = v4;
      goto LABEL_10;
    }

    objc_opt_class();
    if (OUTLINED_FUNCTION_8_5())
    {
      v4 = v3;
      goto LABEL_6;
    }

    objc_opt_class();
    if (OUTLINED_FUNCTION_8_5())
    {
      v4 = [(_CDDataCollectionAnonymizer *)a1 anonymizeArray:v3];
      goto LABEL_6;
    }

    objc_opt_class();
    if (OUTLINED_FUNCTION_8_5())
    {
      v4 = [(_CDDataCollectionAnonymizer *)a1 anonymizeDictionary:v3];
      goto LABEL_6;
    }

    a1 = 0;
  }

LABEL_10:

  return a1;
}

- (id)anonymizeDictionary:(void *)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = MEMORY[0x1E695DF90];
    [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_3_10();
    v7 = [v6 countByEnumeratingWithState:v16 objects:v18 count:16];
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

          v11 = *(v16[1] + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11];
          v13 = [(_CDDataCollectionAnonymizer *)a1 anonymizeObject:v12];

          if (v13)
          {
            [v5 setObject:v13 forKey:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:v16 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

@end
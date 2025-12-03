@interface _CDDataCollectionAnonymizer
- (id)anonymizeArray:(uint64_t)array;
- (id)anonymizeDictionary:(void *)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithSalt:(id *)salt;
- (void)anonymizeObject:(void *)object;
@end

@implementation _CDDataCollectionAnonymizer

- (id)initWithSalt:(id *)salt
{
  v4 = a2;
  if (salt)
  {
    v7.receiver = salt;
    v7.super_class = _CDDataCollectionAnonymizer;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    salt = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return salt;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_CDDataCollectionAnonymizer allocWithZone:zone];
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

- (id)anonymizeArray:(uint64_t)array
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (array)
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

          v11 = [(_CDDataCollectionAnonymizer *)array anonymizeObject:?];
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

- (void)anonymizeObject:(void *)object
{
  v3 = a2;
  if (object)
  {
    objc_opt_class();
    if (OUTLINED_FUNCTION_8_5())
    {
      v4 = [_CDHashUtilities sha256Hash:v3 withSalt:object[1]];
LABEL_6:
      object = v4;
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
      v4 = [(_CDDataCollectionAnonymizer *)object anonymizeArray:v3];
      goto LABEL_6;
    }

    objc_opt_class();
    if (OUTLINED_FUNCTION_8_5())
    {
      v4 = [(_CDDataCollectionAnonymizer *)object anonymizeDictionary:v3];
      goto LABEL_6;
    }

    object = 0;
  }

LABEL_10:

  return object;
}

- (id)anonymizeDictionary:(void *)dictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (dictionary)
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
          v13 = [(_CDDataCollectionAnonymizer *)dictionary anonymizeObject:v12];

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
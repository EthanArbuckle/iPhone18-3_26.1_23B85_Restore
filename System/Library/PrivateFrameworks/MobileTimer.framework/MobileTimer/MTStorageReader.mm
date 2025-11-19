@interface MTStorageReader
+ (BOOL)_dictionaryIsForSerializableObject:(id)a3;
+ (id)_unwrap:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (MTStorageReader)initWithEncodedDictionary:(id)a3;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id)_decodeObject:(id)a3;
- (id)_objectForDictionary:(id)a3;
- (id)decodeObjectForKey:(id)a3;
- (int)decodeInt32ForKey:(id)a3;
- (int)decodeIntForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (int64_t)decodeIntegerForKey:(id)a3;
@end

@implementation MTStorageReader

- (MTStorageReader)initWithEncodedDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTStorageReader;
  v5 = [(MTStorageReader *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
    stack = v5->_stack;
    v5->_stack = v6;
  }

  return v5;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

- (int64_t)decodeIntegerForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (int)decodeIntForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  LODWORD(v4) = [v6 intValue];
  return v4;
}

- (int)decodeInt32ForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  LODWORD(v4) = [v6 intValue];
  return v4;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 longLongValue];
  return v7;
}

- (float)decodeFloatForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)decodeDoubleForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (id)decodeObjectForKey:(id)a3
{
  stack = self->_stack;
  v5 = a3;
  v6 = [(NSMutableArray *)stack lastObject];
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = [(MTStorageReader *)self _decodeObject:v7];

  return v8;
}

- (id)_decodeObject:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v4;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_22;
    }

    v8 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(MTStorageReader *)self _decodeObject:*(*(&v24 + 1) + 8 * i), v24];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v11);
    }

    goto LABEL_20;
  }

  v5 = v4;
  if (![objc_opt_class() _dictionaryIsForSerializableObject:v5])
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v5;
    v15 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v9);
          }

          v19 = *(*(&v28 + 1) + 8 * j);
          v20 = [v9 objectForKeyedSubscript:v19];
          v21 = [(MTStorageReader *)self _decodeObject:v20];
          [v8 setObject:v21 forKeyedSubscript:v19];
        }

        v16 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }

LABEL_20:

    v6 = [v8 copy];
    goto LABEL_21;
  }

  v6 = [(MTStorageReader *)self _objectForDictionary:v5];
LABEL_21:

LABEL_22:
  v22 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)_dictionaryIsForSerializableObject:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 allKeys];
    v5 = [v4 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 allKeys];
      v7 = [v6 firstObject];
      v8 = [v7 hasPrefix:@"$"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_unwrap:(id)a3
{
  v4 = a3;
  if ([a1 _dictionaryIsForSerializableObject:v4])
  {
    v5 = [v4 allKeys];
    v6 = [v5 firstObject];

    v7 = [v4 objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (id)_objectForDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [v5 firstObject];

  v7 = [v4 objectForKeyedSubscript:v6];

  [(NSMutableArray *)self->_stack addObject:v7];
  v8 = [v6 substringFromIndex:1];
  v9 = [objc_alloc(NSClassFromString(v8)) initWithCoder:self];
  [(NSMutableArray *)self->_stack removeObject:v7];

  return v9;
}

@end
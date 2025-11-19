@interface MTStorageWriter
- (MTStorageWriter)init;
- (id)_dictionaryForProtocolObject:(id)a3;
- (id)encodedDictionary;
- (void)_encodeObject:(id)a3 forKey:(id)a4;
- (void)_encodeProtocolObject:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeInteger:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation MTStorageWriter

- (MTStorageWriter)init
{
  v8.receiver = self;
  v8.super_class = MTStorageWriter;
  v2 = [(MTStorageWriter *)&v8 init];
  if (v2)
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = objc_opt_new();
    v5 = [v3 arrayWithObject:v4];
    stack = v2->_stack;
    v2->_stack = v5;
  }

  return v2;
}

- (void)_encodeObject:(id)a3 forKey:(id)a4
{
  stack = self->_stack;
  v6 = a4;
  v7 = a3;
  v8 = [(NSMutableArray *)stack lastObject];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (void)encodeInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(MTStorageWriter *)self _encodeObject:v8 forKey:v7];
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [(MTStorageWriter *)self _encodeObject:v8 forKey:v7];
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  *&v8 = a3;
  v9 = [v6 numberWithFloat:v8];
  [(MTStorageWriter *)self _encodeObject:v9 forKey:v7];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(MTStorageWriter *)self _encodeObject:v8 forKey:v7];
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v6;
    v8 = v6;
    v9 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v40 + 1) + 8 * i);
          v16 = [(MTStorageWriter *)self _serializingProtocol];
          v17 = [v15 conformsToProtocol:v16];

          if (v17)
          {
            v18 = [(MTStorageWriter *)self _dictionaryForProtocolObject:v15];
            [v9 addObject:v18];
          }

          else
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v12);
    }

    v19 = self;
    v20 = v9;
LABEL_25:
    [(MTStorageWriter *)v19 _encodeObject:v20 forKey:v7, v34];

    v6 = v35;
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v7;
    v35 = v6;
    v21 = v6;
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = v21;
    v22 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v10);
          }

          v26 = *(*(&v36 + 1) + 8 * j);
          v27 = [v10 objectForKeyedSubscript:{v26, v34}];
          v28 = [(MTStorageWriter *)self _serializingProtocol];
          v29 = [v27 conformsToProtocol:v28];

          if (v29)
          {
            v30 = [(MTStorageWriter *)self _dictionaryForProtocolObject:v27];
            [v9 setObject:v30 forKeyedSubscript:v26];
          }

          else
          {
            [v9 setObject:v27 forKeyedSubscript:v26];
          }
        }

        v23 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v23);
    }

    v19 = self;
    v20 = v9;
    v7 = v34;
    goto LABEL_25;
  }

  v32 = [(MTStorageWriter *)self _serializingProtocol];
  v33 = [v6 conformsToProtocol:v32];

  if (v33)
  {
    [(MTStorageWriter *)self _encodeProtocolObject:v6 forKey:v7];
  }

  else
  {
    [(MTStorageWriter *)self _encodeObject:v6 forKey:v7];
  }

LABEL_26:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_encodeProtocolObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(MTStorageWriter *)self _dictionaryForProtocolObject:a3];
  [(MTStorageWriter *)self _encodeObject:v7 forKey:v6];
}

- (id)_dictionaryForProtocolObject:(id)a3
{
  v4 = [a3 copy];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  [(NSMutableArray *)self->_stack addObject:v6];
  [v4 encodeWithCoder:self];
  [(NSMutableArray *)self->_stack removeLastObject];
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@%@", @"$", v9];

  [v5 setObject:v6 forKeyedSubscript:v10];

  return v5;
}

- (id)encodedDictionary
{
  v2 = [(NSMutableArray *)self->_stack lastObject];
  v3 = [v2 copy];

  return v3;
}

@end
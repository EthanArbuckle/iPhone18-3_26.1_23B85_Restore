@interface MTStorageReader
+ (BOOL)_dictionaryIsForSerializableObject:(id)object;
+ (id)_unwrap:(id)_unwrap;
- (BOOL)decodeBoolForKey:(id)key;
- (MTStorageReader)initWithEncodedDictionary:(id)dictionary;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)_decodeObject:(id)object;
- (id)_objectForDictionary:(id)dictionary;
- (id)decodeObjectForKey:(id)key;
- (int)decodeInt32ForKey:(id)key;
- (int)decodeIntForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (int64_t)decodeIntegerForKey:(id)key;
@end

@implementation MTStorageReader

- (MTStorageReader)initWithEncodedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = MTStorageReader;
  v5 = [(MTStorageReader *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithObject:dictionaryCopy];
    stack = v5->_stack;
    v5->_stack = v6;
  }

  return v5;
}

- (BOOL)decodeBoolForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  LOBYTE(keyCopy) = [v6 BOOLValue];
  return keyCopy;
}

- (int64_t)decodeIntegerForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (int)decodeIntForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  LODWORD(keyCopy) = [v6 intValue];
  return keyCopy;
}

- (int)decodeInt32ForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  LODWORD(keyCopy) = [v6 intValue];
  return keyCopy;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  longLongValue = [v6 longLongValue];
  return longLongValue;
}

- (float)decodeFloatForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)decodeDoubleForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (id)decodeObjectForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v7 = [lastObject objectForKeyedSubscript:keyCopy];

  v8 = [(MTStorageReader *)self _decodeObject:v7];

  return v8;
}

- (id)_decodeObject:(id)object
{
  v34 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = objectCopy;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_22;
    }

    array = [MEMORY[0x1E695DF70] array];
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
          [array addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v11);
    }

    goto LABEL_20;
  }

  v5 = objectCopy;
  if (![objc_opt_class() _dictionaryIsForSerializableObject:v5])
  {
    array = [MEMORY[0x1E695DF90] dictionary];
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
          [array setObject:v21 forKeyedSubscript:v19];
        }

        v16 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }

LABEL_20:

    v6 = [array copy];
    goto LABEL_21;
  }

  v6 = [(MTStorageReader *)self _objectForDictionary:v5];
LABEL_21:

LABEL_22:
  v22 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)_dictionaryIsForSerializableObject:(id)object
{
  objectCopy = object;
  if ([objectCopy count] == 1)
  {
    allKeys = [objectCopy allKeys];
    firstObject = [allKeys firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      allKeys2 = [objectCopy allKeys];
      firstObject2 = [allKeys2 firstObject];
      v8 = [firstObject2 hasPrefix:@"$"];
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

+ (id)_unwrap:(id)_unwrap
{
  _unwrapCopy = _unwrap;
  if ([self _dictionaryIsForSerializableObject:_unwrapCopy])
  {
    allKeys = [_unwrapCopy allKeys];
    firstObject = [allKeys firstObject];

    v7 = [_unwrapCopy objectForKeyedSubscript:firstObject];
  }

  else
  {
    v7 = _unwrapCopy;
  }

  return v7;
}

- (id)_objectForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  firstObject = [allKeys firstObject];

  v7 = [dictionaryCopy objectForKeyedSubscript:firstObject];

  [(NSMutableArray *)self->_stack addObject:v7];
  v8 = [firstObject substringFromIndex:1];
  v9 = [objc_alloc(NSClassFromString(v8)) initWithCoder:self];
  [(NSMutableArray *)self->_stack removeObject:v7];

  return v9;
}

@end
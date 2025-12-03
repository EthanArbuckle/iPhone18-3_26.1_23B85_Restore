@interface MTStorageWriter
- (MTStorageWriter)init;
- (id)_dictionaryForProtocolObject:(id)object;
- (id)encodedDictionary;
- (void)_encodeObject:(id)object forKey:(id)key;
- (void)_encodeProtocolObject:(id)object forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeInteger:(int64_t)integer forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
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

- (void)_encodeObject:(id)object forKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  objectCopy = object;
  lastObject = [(NSMutableArray *)stack lastObject];
  [lastObject setObject:objectCopy forKeyedSubscript:keyCopy];
}

- (void)encodeInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(MTStorageWriter *)self _encodeObject:v8 forKey:keyCopy];
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithLongLong:int64];
  [(MTStorageWriter *)self _encodeObject:v8 forKey:keyCopy];
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  *&v8 = float;
  v9 = [v6 numberWithFloat:v8];
  [(MTStorageWriter *)self _encodeObject:v9 forKey:keyCopy];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithDouble:double];
  [(MTStorageWriter *)self _encodeObject:v8 forKey:keyCopy];
}

- (void)encodeObject:(id)object forKey:(id)key
{
  v46 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = objectCopy;
    v8 = objectCopy;
    array = [MEMORY[0x1E695DF70] array];
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
          _serializingProtocol = [(MTStorageWriter *)self _serializingProtocol];
          v17 = [v15 conformsToProtocol:_serializingProtocol];

          if (v17)
          {
            v18 = [(MTStorageWriter *)self _dictionaryForProtocolObject:v15];
            [array addObject:v18];
          }

          else
          {
            [array addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v12);
    }

    selfCopy2 = self;
    v20 = array;
LABEL_25:
    [(MTStorageWriter *)selfCopy2 _encodeObject:v20 forKey:keyCopy, v34];

    objectCopy = v35;
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = keyCopy;
    v35 = objectCopy;
    v21 = objectCopy;
    array = [MEMORY[0x1E695DF90] dictionary];
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
          _serializingProtocol2 = [(MTStorageWriter *)self _serializingProtocol];
          v29 = [v27 conformsToProtocol:_serializingProtocol2];

          if (v29)
          {
            v30 = [(MTStorageWriter *)self _dictionaryForProtocolObject:v27];
            [array setObject:v30 forKeyedSubscript:v26];
          }

          else
          {
            [array setObject:v27 forKeyedSubscript:v26];
          }
        }

        v23 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v23);
    }

    selfCopy2 = self;
    v20 = array;
    keyCopy = v34;
    goto LABEL_25;
  }

  _serializingProtocol3 = [(MTStorageWriter *)self _serializingProtocol];
  v33 = [objectCopy conformsToProtocol:_serializingProtocol3];

  if (v33)
  {
    [(MTStorageWriter *)self _encodeProtocolObject:objectCopy forKey:keyCopy];
  }

  else
  {
    [(MTStorageWriter *)self _encodeObject:objectCopy forKey:keyCopy];
  }

LABEL_26:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_encodeProtocolObject:(id)object forKey:(id)key
{
  keyCopy = key;
  v7 = [(MTStorageWriter *)self _dictionaryForProtocolObject:object];
  [(MTStorageWriter *)self _encodeObject:v7 forKey:keyCopy];
}

- (id)_dictionaryForProtocolObject:(id)object
{
  v4 = [object copy];
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
  lastObject = [(NSMutableArray *)self->_stack lastObject];
  v3 = [lastObject copy];

  return v3;
}

@end
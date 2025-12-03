@interface _DKObjectFromMOCache
- (_DKObjectFromMOCache)init;
- (id)deduplicateString:(id *)string;
- (id)objectForKey:(void *)key type:;
- (id)objectForKey:(void *)key type:(void *)type setIfMissingWithBlock:;
- (void)initWithReporting;
- (void)setObject:(void *)object forKey:(void *)key type:;
@end

@implementation _DKObjectFromMOCache

- (_DKObjectFromMOCache)init
{
  v6.receiver = self;
  v6.super_class = _DKObjectFromMOCache;
  v2 = [(_DKObjectFromMOCache *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cache = v2->_cache;
    v2->_cache = dictionary;
  }

  return v2;
}

- (void)initWithReporting
{
  if (!self)
  {
    return 0;
  }

  v1 = [self init];
  if (v1)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v3 = v1[2];
    v1[2] = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v5 = v1[3];
    v1[3] = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v7 = v1[4];
    v1[4] = dictionary3;
  }

  return v1;
}

- (id)objectForKey:(void *)key type:
{
  v5 = a2;
  keyCopy = key;
  if (self)
  {
    v7 = [self[1] objectForKeyedSubscript:keyCopy];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKey:v5];
      v11 = objc_getProperty(self, v10, 24, 1);
      if (v11)
      {
        v13 = v11;
        Property = objc_getProperty(self, v12, 32, 1);

        if (Property)
        {
          if (v9)
          {
            v15 = @"com.apple.coreduet.knowledgeMOCache.%@.hit";
          }

          else
          {
            v15 = @"com.apple.coreduet.knowledgeMOCache.%@.miss";
          }

          if (v9)
          {
            v16 = 24;
          }

          else
          {
            v16 = 32;
          }

          keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v15, keyCopy];
          v19 = [objc_getProperty(self v18];
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "unsignedIntegerValue") + 1}];

          [objc_getProperty(self v21];
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setObject:(void *)object forKey:(void *)key type:
{
  v17 = a2;
  objectCopy = object;
  keyCopy = key;
  if (self)
  {
    v10 = [self[1] objectForKeyedSubscript:keyCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      [v10 setCountLimit:20];
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduet.moconverter.cache.%@", keyCopy];
      [v10 setName:keyCopy];

      [self[1] setObject:v10 forKeyedSubscript:keyCopy];
    }

    if (objc_getProperty(self, v9, 16, 1))
    {
      keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduet.knowledgeMOCache.%@.set", keyCopy];
      v14 = [objc_getProperty(self v13];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "unsignedIntegerValue") + 1}];

      [objc_getProperty(self v16];
    }

    [v10 setObject:v17 forKey:objectCopy];
  }
}

- (id)objectForKey:(void *)key type:(void *)type setIfMissingWithBlock:
{
  v7 = a2;
  keyCopy = key;
  typeCopy = type;
  if (self)
  {
    v10 = [(_DKObjectFromMOCache *)self objectForKey:v7 type:keyCopy];
    if (!v10)
    {
      v10 = typeCopy[2](typeCopy);
      if (v10)
      {
        [(_DKObjectFromMOCache *)self setObject:v10 forKey:v7 type:keyCopy];
      }
    }

    self = v10;
  }

  return self;
}

- (id)deduplicateString:(id *)string
{
  v3 = a2;
  v4 = v3;
  if (string)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42___DKObjectFromMOCache_deduplicateString___block_invoke;
    v6[3] = &unk_1E736A328;
    v7 = v3;
    string = [(_DKObjectFromMOCache *)string objectForKey:v7 type:@"_str" setIfMissingWithBlock:v6];
  }

  return string;
}

@end
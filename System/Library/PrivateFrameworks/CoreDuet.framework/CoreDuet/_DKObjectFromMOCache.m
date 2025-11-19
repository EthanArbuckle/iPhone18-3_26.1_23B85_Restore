@interface _DKObjectFromMOCache
- (_DKObjectFromMOCache)init;
- (id)deduplicateString:(id *)a1;
- (id)objectForKey:(void *)a3 type:;
- (id)objectForKey:(void *)a3 type:(void *)a4 setIfMissingWithBlock:;
- (void)initWithReporting;
- (void)setObject:(void *)a3 forKey:(void *)a4 type:;
@end

@implementation _DKObjectFromMOCache

- (_DKObjectFromMOCache)init
{
  v6.receiver = self;
  v6.super_class = _DKObjectFromMOCache;
  v2 = [(_DKObjectFromMOCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (void)initWithReporting
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 init];
  if (v1)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = v1[2];
    v1[2] = v2;

    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = v1[3];
    v1[3] = v4;

    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = v1[4];
    v1[4] = v6;
  }

  return v1;
}

- (id)objectForKey:(void *)a3 type:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1[1] objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKey:v5];
      v11 = objc_getProperty(a1, v10, 24, 1);
      if (v11)
      {
        v13 = v11;
        Property = objc_getProperty(a1, v12, 32, 1);

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

          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:v15, v6];
          v19 = [objc_getProperty(a1 v18];
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "unsignedIntegerValue") + 1}];

          [objc_getProperty(a1 v21];
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

- (void)setObject:(void *)a3 forKey:(void *)a4 type:
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v10 = [a1[1] objectForKeyedSubscript:v8];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      [v10 setCountLimit:20];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduet.moconverter.cache.%@", v8];
      [v10 setName:v11];

      [a1[1] setObject:v10 forKeyedSubscript:v8];
    }

    if (objc_getProperty(a1, v9, 16, 1))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduet.knowledgeMOCache.%@.set", v8];
      v14 = [objc_getProperty(a1 v13];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "unsignedIntegerValue") + 1}];

      [objc_getProperty(a1 v16];
    }

    [v10 setObject:v17 forKey:v7];
  }
}

- (id)objectForKey:(void *)a3 type:(void *)a4 setIfMissingWithBlock:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [(_DKObjectFromMOCache *)a1 objectForKey:v7 type:v8];
    if (!v10)
    {
      v10 = v9[2](v9);
      if (v10)
      {
        [(_DKObjectFromMOCache *)a1 setObject:v10 forKey:v7 type:v8];
      }
    }

    a1 = v10;
  }

  return a1;
}

- (id)deduplicateString:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42___DKObjectFromMOCache_deduplicateString___block_invoke;
    v6[3] = &unk_1E736A328;
    v7 = v3;
    a1 = [(_DKObjectFromMOCache *)a1 objectForKey:v7 type:@"_str" setIfMissingWithBlock:v6];
  }

  return a1;
}

@end
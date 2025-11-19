@interface CAMMemoizationCache
- (CAMMemoizationCache)initWithMemoizesNil:(BOOL)a3;
- (id)objectForKey:(id)a3 memoizationBlock:(id)a4;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
@end

@implementation CAMMemoizationCache

- (CAMMemoizationCache)initWithMemoizesNil:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CAMMemoizationCache;
  v4 = [(CAMMemoizationCache *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_memoizesNil = a3;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v5->__dictionary;
    v5->__dictionary = v6;

    v8 = v5;
  }

  return v5;
}

- (id)objectForKey:(id)a3 memoizationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMMemoizationCache *)self _dictionary];
  v9 = [(CAMMemoizationCache *)self memoizesNil];
  v10 = [v8 objectForKeyedSubscript:v6];
  if (v9)
  {
    v11 = [MEMORY[0x1E695DFB0] null];

    if (v10 == v11)
    {
      v13 = 0;
      goto LABEL_12;
    }
  }

  if (!v10)
  {
    if (v7)
    {
      v12 = v7[2](v7, v6);
      if (v12)
      {
        v10 = v12;
        [v8 setObject:v12 forKeyedSubscript:v6];
        goto LABEL_11;
      }

      if (v9)
      {
        v14 = [MEMORY[0x1E695DFB0] null];
        [v8 setObject:v14 forKeyedSubscript:v6];
      }
    }

    v10 = 0;
  }

LABEL_11:
  v13 = v10;
  v10 = v13;
LABEL_12:

  return v13;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(CAMMemoizationCache *)self _dictionary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CAMMemoizationCache_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E76FC7E8;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __57__CAMMemoizationCache_enumerateKeysAndObjectsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v6 != v5)
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end
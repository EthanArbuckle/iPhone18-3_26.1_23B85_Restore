@interface CAMMemoizationCache
- (CAMMemoizationCache)initWithMemoizesNil:(BOOL)nil;
- (id)objectForKey:(id)key memoizationBlock:(id)block;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
@end

@implementation CAMMemoizationCache

- (CAMMemoizationCache)initWithMemoizesNil:(BOOL)nil
{
  v10.receiver = self;
  v10.super_class = CAMMemoizationCache;
  v4 = [(CAMMemoizationCache *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_memoizesNil = nil;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v5->__dictionary;
    v5->__dictionary = v6;

    v8 = v5;
  }

  return v5;
}

- (id)objectForKey:(id)key memoizationBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  _dictionary = [(CAMMemoizationCache *)self _dictionary];
  memoizesNil = [(CAMMemoizationCache *)self memoizesNil];
  v10 = [_dictionary objectForKeyedSubscript:keyCopy];
  if (memoizesNil)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (v10 == null)
    {
      v13 = 0;
      goto LABEL_12;
    }
  }

  if (!v10)
  {
    if (blockCopy)
    {
      v12 = blockCopy[2](blockCopy, keyCopy);
      if (v12)
      {
        v10 = v12;
        [_dictionary setObject:v12 forKeyedSubscript:keyCopy];
        goto LABEL_11;
      }

      if (memoizesNil)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        [_dictionary setObject:null2 forKeyedSubscript:keyCopy];
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

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  _dictionary = [(CAMMemoizationCache *)self _dictionary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CAMMemoizationCache_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E76FC7E8;
  v8 = blockCopy;
  v6 = blockCopy;
  [_dictionary enumerateKeysAndObjectsUsingBlock:v7];
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
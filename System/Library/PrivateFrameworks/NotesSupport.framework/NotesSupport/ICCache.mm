@interface ICCache
+ (id)cacheCollection;
+ (void)purgeAllCaches;
- (ICCache)init;
- (NSSet)allKeys;
- (void)dealloc;
- (void)registerForMemoryWarnings;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsWithKeyContainingString:(id)string;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key cost:(unint64_t)cost;
- (void)unregisterForMemoryWarnings;
@end

@implementation ICCache

- (ICCache)init
{
  v11.receiver = self;
  v11.super_class = ICCache;
  v2 = [(ICCache *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(ICCache *)v2 registerForMemoryWarnings];
    cacheCollection = [objc_opt_class() cacheCollection];
    [cacheCollection addPointer:v3];

    v5 = [MEMORY[0x1E695DFA8] set];
    mutableKeys = v3->_mutableKeys;
    v3->_mutableKeys = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.notes.iccache", v7);
    mutableKeysAccessQueue = v3->_mutableKeysAccessQueue;
    v3->_mutableKeysAccessQueue = v8;
  }

  return v3;
}

- (void)registerForMemoryWarnings
{
  v3 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, MEMORY[0x1E69E96A0]);
  [(ICCache *)self setMemoryWarningEventSource:v3];

  objc_initWeak(&location, self);
  memoryWarningEventSource = [(ICCache *)self memoryWarningEventSource];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __36__ICCache_registerForMemoryWarnings__block_invoke;
  v9 = &unk_1E84849F8;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(memoryWarningEventSource, &v6);

  v5 = [(ICCache *)self memoryWarningEventSource:v6];
  dispatch_resume(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

+ (id)cacheCollection
{
  if (cacheCollection_onceToken != -1)
  {
    +[ICCache cacheCollection];
  }

  v3 = cacheCollection_sCacheCollection;

  return v3;
}

uint64_t __26__ICCache_cacheCollection__block_invoke()
{
  cacheCollection_sCacheCollection = [MEMORY[0x1E696AE08] weakObjectsPointerArray];

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  [(ICCache *)self unregisterForMemoryWarnings];
  v3.receiver = self;
  v3.super_class = ICCache;
  [(ICCache *)&v3 dealloc];
}

void __36__ICCache_registerForMemoryWarnings__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained receivedMemoryWarning];
}

- (void)unregisterForMemoryWarnings
{
  memoryWarningEventSource = [(ICCache *)self memoryWarningEventSource];

  if (memoryWarningEventSource)
  {
    memoryWarningEventSource2 = [(ICCache *)self memoryWarningEventSource];
    dispatch_source_cancel(memoryWarningEventSource2);
  }
}

+ (void)purgeAllCaches
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[ICCache cacheCollection];
  allObjects = [v2 allObjects];

  v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeAllObjects];
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = ICCache;
  [(ICCache *)&v11 setObject:object forKey:keyCopy];
  mutableKeysAccessQueue = [(ICCache *)self mutableKeysAccessQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__ICCache_setObject_forKey___block_invoke;
  v9[3] = &unk_1E8484980;
  v9[4] = self;
  v10 = keyCopy;
  v8 = keyCopy;
  dispatch_sync(mutableKeysAccessQueue, v9);
}

void __28__ICCache_setObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableKeys];
  [v2 ic_addNonNilObject:*(a1 + 40)];
}

- (void)setObject:(id)object forKey:(id)key cost:(unint64_t)cost
{
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = ICCache;
  [(ICCache *)&v13 setObject:object forKey:keyCopy cost:cost];
  mutableKeysAccessQueue = [(ICCache *)self mutableKeysAccessQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__ICCache_setObject_forKey_cost___block_invoke;
  v11[3] = &unk_1E8484980;
  v11[4] = self;
  v12 = keyCopy;
  v10 = keyCopy;
  dispatch_sync(mutableKeysAccessQueue, v11);
}

void __33__ICCache_setObject_forKey_cost___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableKeys];
  [v2 ic_addNonNilObject:*(a1 + 40)];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = ICCache;
  [(ICCache *)&v9 removeObjectForKey:keyCopy];
  mutableKeysAccessQueue = [(ICCache *)self mutableKeysAccessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__ICCache_removeObjectForKey___block_invoke;
  v7[3] = &unk_1E8484980;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(mutableKeysAccessQueue, v7);
}

void __30__ICCache_removeObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableKeys];
  [v2 ic_removeNonNilObject:*(a1 + 40)];
}

- (void)removeAllObjects
{
  v5.receiver = self;
  v5.super_class = ICCache;
  [(ICCache *)&v5 removeAllObjects];
  mutableKeysAccessQueue = [(ICCache *)self mutableKeysAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__ICCache_removeAllObjects__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = self;
  dispatch_sync(mutableKeysAccessQueue, block);
}

void __27__ICCache_removeAllObjects__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mutableKeys];
  [v1 removeAllObjects];
}

- (NSSet)allKeys
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  mutableKeysAccessQueue = [(ICCache *)self mutableKeysAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __18__ICCache_allKeys__block_invoke;
  v6[3] = &unk_1E8484848;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(mutableKeysAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __18__ICCache_allKeys__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) mutableKeys];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeObjectsWithKeyContainingString:(id)string
{
  v16 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(ICCache *)self allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        if (stringCopy)
        {
          v10 = *(*(&v11 + 1) + 8 * i);
          if ([v10 containsString:stringCopy])
          {
            [(ICCache *)self removeObjectForKey:v10];
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end
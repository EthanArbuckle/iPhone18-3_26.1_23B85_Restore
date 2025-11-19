@interface EFLRUCache
+ (OS_os_log)log;
- (EFLRUCache)initWithCapacity:(unint64_t)a3;
- (id)objectForKey:(id)a3;
- (id)test_firstNode;
- (id)test_lastNode;
- (unint64_t)test_size;
- (void)_pruneLastObject;
- (void)_pushToTop:(id)a3;
- (void)addObject:(id)a3 forKey:(id)a4;
- (void)removeAllObjects;
@end

@implementation EFLRUCache

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __17__EFLRUCache_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_3 != -1)
  {
    dispatch_once(&log_onceToken_3, block);
  }

  v2 = log_log_3;

  return v2;
}

void __17__EFLRUCache_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_3;
  log_log_3 = v1;
}

- (EFLRUCache)initWithCapacity:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = EFLRUCache;
  v4 = [(EFLRUCache *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = a3;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    nodesByKey = v5->_nodesByKey;
    v5->_nodesByKey = v6;

    v5->_size = 0;
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)addObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(EFLRUCache *)self nodesByKey];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = +[EFLRUCache log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [EFLRUCache addObject:v10 forKey:?];
    }
  }

  else
  {
    v11 = [(EFLRUCache *)self size];
    if (v11 >= [(EFLRUCache *)self capacity])
    {
      [(EFLRUCache *)self _pruneLastObject];
    }

    v12 = [[_EFLRUCacheNode alloc] initWithKey:v7 element:v6];
    v13 = [(EFLRUCache *)self nodesByKey];
    [v13 setObject:v12 forKeyedSubscript:v7];

    [(EFLRUCache *)self setSize:[(EFLRUCache *)self size]+ 1];
    v14 = [(EFLRUCache *)self lastNode];

    v9 = v12;
    if (!v14)
    {
      [(EFLRUCache *)self setLastNode:v12];
    }
  }

  [(EFLRUCache *)self _pushToTop:v9];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(EFLRUCache *)self nodesByKey];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [(EFLRUCache *)self _pushToTop:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 element];

  return v7;
}

- (void)removeAllObjects
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(EFLRUCache *)self nodesByKey];
  v4 = [v3 allValues];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 setNext:{0, v14}];
        [v9 setPrevious:0];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  lastNode = self->_lastNode;
  self->_lastNode = 0;

  firstNode = self->_firstNode;
  self->_firstNode = 0;

  v12 = [(EFLRUCache *)self nodesByKey];
  [v12 removeAllObjects];

  [(EFLRUCache *)self setSize:0];
  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_pushToTop:(id)a3
{
  v7 = a3;
  v4 = [v7 next];
  v5 = [v7 previous];
  [v5 setNext:v4];

  [v7 setPrevious:0];
  v6 = [(EFLRUCache *)self firstNode];
  [v7 setNext:v6];
  [v6 setPrevious:v7];
  [(EFLRUCache *)self setFirstNode:v7];
}

- (void)_pruneLastObject
{
  v3 = [(EFLRUCache *)self lastNode];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 previous];
    v5 = [(EFLRUCache *)self nodesByKey];
    v6 = [v7 key];
    [v5 removeObjectForKey:v6];

    [v4 setNext:0];
    [(EFLRUCache *)self setLastNode:v4];
    [(EFLRUCache *)self setSize:[(EFLRUCache *)self size]- 1];

    v3 = v7;
  }
}

- (unint64_t)test_size
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EFLRUCache.m" lineNumber:150 description:{@"%s can only be called from unit tests", "-[EFLRUCache test_size]"}];
  }

  return [(EFLRUCache *)self size];
}

- (id)test_firstNode
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EFLRUCache.m" lineNumber:155 description:{@"%s can only be called from unit tests", "-[EFLRUCache test_firstNode]"}];
  }

  return [(EFLRUCache *)self firstNode];
}

- (id)test_lastNode
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EFLRUCache.m" lineNumber:160 description:{@"%s can only be called from unit tests", "-[EFLRUCache test_lastNode]"}];
  }

  return [(EFLRUCache *)self lastNode];
}

@end
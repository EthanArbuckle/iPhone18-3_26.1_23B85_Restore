@interface EFLRUCache
+ (OS_os_log)log;
- (EFLRUCache)initWithCapacity:(unint64_t)capacity;
- (id)objectForKey:(id)key;
- (id)test_firstNode;
- (id)test_lastNode;
- (unint64_t)test_size;
- (void)_pruneLastObject;
- (void)_pushToTop:(id)top;
- (void)addObject:(id)object forKey:(id)key;
- (void)removeAllObjects;
@end

@implementation EFLRUCache

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __17__EFLRUCache_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (EFLRUCache)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = EFLRUCache;
  v4 = [(EFLRUCache *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = capacity;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    nodesByKey = v5->_nodesByKey;
    v5->_nodesByKey = v6;

    v5->_size = 0;
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)addObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  nodesByKey = [(EFLRUCache *)self nodesByKey];
  v9 = [nodesByKey objectForKeyedSubscript:keyCopy];

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

    v12 = [[_EFLRUCacheNode alloc] initWithKey:keyCopy element:objectCopy];
    nodesByKey2 = [(EFLRUCache *)self nodesByKey];
    [nodesByKey2 setObject:v12 forKeyedSubscript:keyCopy];

    [(EFLRUCache *)self setSize:[(EFLRUCache *)self size]+ 1];
    lastNode = [(EFLRUCache *)self lastNode];

    v9 = v12;
    if (!lastNode)
    {
      [(EFLRUCache *)self setLastNode:v12];
    }
  }

  [(EFLRUCache *)self _pushToTop:v9];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  nodesByKey = [(EFLRUCache *)self nodesByKey];
  v6 = [nodesByKey objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    [(EFLRUCache *)self _pushToTop:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
  element = [v6 element];

  return element;
}

- (void)removeAllObjects
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  nodesByKey = [(EFLRUCache *)self nodesByKey];
  allValues = [nodesByKey allValues];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = allValues;
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

  nodesByKey2 = [(EFLRUCache *)self nodesByKey];
  [nodesByKey2 removeAllObjects];

  [(EFLRUCache *)self setSize:0];
  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_pushToTop:(id)top
{
  topCopy = top;
  next = [topCopy next];
  previous = [topCopy previous];
  [previous setNext:next];

  [topCopy setPrevious:0];
  firstNode = [(EFLRUCache *)self firstNode];
  [topCopy setNext:firstNode];
  [firstNode setPrevious:topCopy];
  [(EFLRUCache *)self setFirstNode:topCopy];
}

- (void)_pruneLastObject
{
  lastNode = [(EFLRUCache *)self lastNode];
  if (lastNode)
  {
    v7 = lastNode;
    previous = [lastNode previous];
    nodesByKey = [(EFLRUCache *)self nodesByKey];
    v6 = [v7 key];
    [nodesByKey removeObjectForKey:v6];

    [previous setNext:0];
    [(EFLRUCache *)self setLastNode:previous];
    [(EFLRUCache *)self setSize:[(EFLRUCache *)self size]- 1];

    lastNode = v7;
  }
}

- (unint64_t)test_size
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFLRUCache.m" lineNumber:150 description:{@"%s can only be called from unit tests", "-[EFLRUCache test_size]"}];
  }

  return [(EFLRUCache *)self size];
}

- (id)test_firstNode
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFLRUCache.m" lineNumber:155 description:{@"%s can only be called from unit tests", "-[EFLRUCache test_firstNode]"}];
  }

  return [(EFLRUCache *)self firstNode];
}

- (id)test_lastNode
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFLRUCache.m" lineNumber:160 description:{@"%s can only be called from unit tests", "-[EFLRUCache test_lastNode]"}];
  }

  return [(EFLRUCache *)self lastNode];
}

@end
@interface MFMessageStoreObjectCache
- (MFMessageStoreObjectCache)initWithCapacity:(unint64_t)capacity;
- (id)addObject:(id)object forMessage:(id)message kind:(int64_t)kind;
- (id)debugDescription;
- (id)description;
- (id)objectForMessage:(id)message kind:(int64_t)kind;
- (void)_nts_evictObject;
- (void)_nts_setObject:(id)object forKey:(id)key;
- (void)flush;
- (void)removeAllObjectsForMessage:(id)message;
- (void)removeObjectForMessage:(id)message kind:(int64_t)kind;
- (void)setObject:(id)object forMessage:(id)message kind:(int64_t)kind;
@end

@implementation MFMessageStoreObjectCache

- (MFMessageStoreObjectCache)initWithCapacity:(unint64_t)capacity
{
  v11.receiver = self;
  v11.super_class = MFMessageStoreObjectCache;
  v4 = [(MFMessageStoreObjectCache *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v4->_lock;
    v4->_lock = v5;

    v4->_capacity = 4 * capacity;
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v4->_capacity];
    cache = v4->_cache;
    v4->_cache = v7;

    v9 = v4;
  }

  return v4;
}

- (id)description
{
  [(NSLock *)self->_lock lock];
  v3 = [(MFMessageStoreObjectCache *)self debugDescription];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)debugDescription
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_cache count];
  selfCopy = self;
  allValues = [(NSMutableDictionary *)self->_cache allValues];
  v21 = [MEMORY[0x1E696AB50] set];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [allValues objectAtIndexedSubscript:i];
      [v21 addObject:v5];
    }
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v21, "count")}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v21;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [%lu]", *(*(&v22 + 1) + 8 * j), objc_msgSend(v7, "countForObject:", *(*(&v22 + 1) + 8 * j))];
        [v6 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  capacity = selfCopy->_capacity;
  v15 = [v6 componentsJoinedByString:{@", "}];
  v16 = [v12 stringWithFormat:@"<%@: %p> capacity %lu, size %lu, distribution (%@)", v13, selfCopy, capacity, v3, v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)_nts_evictObject
{
  if (_nts_evictObject_onceToken != -1)
  {
    [MFMessageStoreObjectCache _nts_evictObject];
  }

  v3 = [(NSMutableDictionary *)self->_cache count];
  v4 = arc4random() % v3;
  allKeys = [(NSMutableDictionary *)self->_cache allKeys];
  cache = self->_cache;
  v8 = allKeys;
  v7 = [allKeys objectAtIndexedSubscript:v4];
  [(NSMutableDictionary *)cache removeObjectForKey:v7];
}

- (void)_nts_setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  capacity = self->_capacity;
  if (capacity <= [(NSMutableDictionary *)self->_cache count])
  {
    [(MFMessageStoreObjectCache *)self _nts_evictObject];
  }

  [(NSMutableDictionary *)self->_cache setObject:objectCopy forKey:keyCopy];
}

- (void)setObject:(id)object forMessage:(id)message kind:(int64_t)kind
{
  objectCopy = object;
  messageCopy = message;
  [(NSLock *)self->_lock lock];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(*(self->_keyGenerator + 2))()];
  [(MFMessageStoreObjectCache *)self _nts_setObject:objectCopy forKey:v8];

  [(NSLock *)self->_lock unlock];
}

- (id)addObject:(id)object forMessage:(id)message kind:(int64_t)kind
{
  objectCopy = object;
  messageCopy = message;
  [(NSLock *)self->_lock lock];
  v9 = (*(self->_keyGenerator + 2))();
  cache = self->_cache;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v12 = [(NSMutableDictionary *)cache objectForKeyedSubscript:v11];

  if (objectCopy && v12)
  {
    comparator = self->_comparator;
    if (!comparator || comparator[2](comparator, v12, objectCopy) != -1)
    {
      goto LABEL_9;
    }

    v14 = self->_cache;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    [(NSMutableDictionary *)v14 removeObjectForKey:v15];

    v12 = 0;
  }

  if (objectCopy && !v12)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    [(MFMessageStoreObjectCache *)self _nts_setObject:objectCopy forKey:v16];

    v12 = objectCopy;
  }

LABEL_9:
  [(NSLock *)self->_lock unlock];

  return v12;
}

- (void)removeObjectForMessage:(id)message kind:(int64_t)kind
{
  messageCopy = message;
  [(NSLock *)self->_lock lock];
  v5 = (*(self->_keyGenerator + 2))();
  cache = self->_cache;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  [(NSMutableDictionary *)cache removeObjectForKey:v7];

  [(NSLock *)self->_lock unlock];
}

- (void)removeAllObjectsForMessage:(id)message
{
  v12 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  [(NSLock *)self->_lock lock];
  v4 = 0;
  v11[0] = xmmword_1D36EFE90;
  v11[1] = xmmword_1D36EFEA0;
  do
  {
    v5 = *(v11 + v4);
    v6 = (*(self->_keyGenerator + 2))();
    cache = self->_cache;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    [(NSMutableDictionary *)cache removeObjectForKey:v8];

    v4 += 8;
  }

  while (v4 != 32);
  [(NSLock *)self->_lock unlock];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)objectForMessage:(id)message kind:(int64_t)kind
{
  messageCopy = message;
  [(NSLock *)self->_lock lock];
  v6 = (*(self->_keyGenerator + 2))();
  cache = self->_cache;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  v9 = [(NSMutableDictionary *)cache objectForKeyedSubscript:v8];

  [(NSLock *)self->_lock unlock];

  return v9;
}

- (void)flush
{
  [(NSLock *)self->_lock lock];
  [(NSMutableDictionary *)self->_cache removeAllObjects];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

@end
@interface EFLazyCache
- (EFLazyCache)initWithCountLimit:(unint64_t)limit;
- (EFLazyCacheDelegate)delegate;
- (id)cachedObjectForKey:(id)key;
- (id)objectForKey:(id)key generator:(id)generator;
- (id)storedObjectForKey:(id)key;
- (int64_t)waiterCountForKey:(id)key;
- (void)_exchangeOriginalObject:(id)object forKey:(id)key withObject:(id)withObject;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setDelegate:(id)delegate;
@end

@implementation EFLazyCache

- (void)removeAllObjects
{
  [(NSRecursiveLock *)self->_lock lock];
  [(NSCache *)self->_storage removeAllObjects];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)dealloc
{
  [(NSCache *)self->_storage setDelegate:0];
  v3.receiver = self;
  v3.super_class = EFLazyCache;
  [(EFLazyCache *)&v3 dealloc];
}

- (EFLazyCache)initWithCountLimit:(unint64_t)limit
{
  v10.receiver = self;
  v10.super_class = EFLazyCache;
  v4 = [(EFLazyCache *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v4->_lock;
    v4->_lock = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    storage = v4->_storage;
    v4->_storage = v7;

    [(NSCache *)v4->_storage setCountLimit:limit];
    [(NSCache *)v4->_storage setDelegate:v4];
  }

  return v4;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_flags = *&self->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
    v5 = obj;
  }
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  [(NSRecursiveLock *)self->_lock lock];
  [(NSCache *)self->_storage removeObjectForKey:keyCopy];
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_exchangeOriginalObject:(id)object forKey:(id)key withObject:(id)withObject
{
  objectCopy = object;
  keyCopy = key;
  withObjectCopy = withObject;
  [(NSRecursiveLock *)self->_lock lock];
  v10 = [(NSCache *)self->_storage objectForKey:keyCopy];
  if (v10 == objectCopy)
  {
    storage = self->_storage;
    if (withObjectCopy)
    {
      [(NSCache *)storage setObject:withObjectCopy forKey:keyCopy];
    }

    else
    {
      [(NSCache *)storage removeObjectForKey:keyCopy];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)objectForKey:(id)key generator:(id)generator
{
  keyCopy = key;
  generatorCopy = generator;
  while (1)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v8 = [(NSCache *)self->_storage objectForKey:keyCopy];
    if (v8)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v10 = v8;
      v11 = (isKindOfClass & 1) == 0;
      v12 = (isKindOfClass & 1) != 0 ? v10 : 0;
      v13 = v11 ? v10 : 0;
    }

    else
    {
      v12 = [[_EFLazyCacheConditionLock alloc] initWithCondition:0];
      [(NSCache *)self->_storage setObject:v12 forKey:keyCopy];
      v13 = 0;
    }

    [(NSRecursiveLock *)self->_lock unlock];
    if (v13)
    {
      break;
    }

    if ([(NSConditionLock *)v12 tryLockWhenCondition:0])
    {
      v13 = generatorCopy[2](generatorCopy);
      [(EFLazyCache *)self _exchangeOriginalObject:v12 forKey:keyCopy withObject:v13];
      [(NSConditionLock *)v12 unlockWithCondition:1];
      break;
    }

    [(_EFLazyCacheConditionLock *)v12 incrementWaiterCount];
    [(NSConditionLock *)v12 lockWhenCondition:1];
    [(NSConditionLock *)v12 unlock];
    [(_EFLazyCacheConditionLock *)v12 decrementWaiterCount];
  }

  return v13;
}

- (id)storedObjectForKey:(id)key
{
  keyCopy = key;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSCache *)self->_storage objectForKey:keyCopy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v5;
}

- (id)cachedObjectForKey:(id)key
{
  v3 = [(EFLazyCache *)self storedObjectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  cacheCopy = cache;
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (self->_storage == cacheCopy && (*&self->_flags & 1) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained lazyCache:self willEvictObject:objectCopy];
  }
}

- (EFLazyCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)waiterCountForKey:(id)key
{
  v3 = [(EFLazyCache *)self storedObjectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    waiterCount = [v3 waiterCount];
  }

  else
  {
    waiterCount = 0;
  }

  return waiterCount;
}

@end
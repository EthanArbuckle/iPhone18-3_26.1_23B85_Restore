@interface EFLazyCache
- (EFLazyCache)initWithCountLimit:(unint64_t)a3;
- (EFLazyCacheDelegate)delegate;
- (id)cachedObjectForKey:(id)a3;
- (id)objectForKey:(id)a3 generator:(id)a4;
- (id)storedObjectForKey:(id)a3;
- (int64_t)waiterCountForKey:(id)a3;
- (void)_exchangeOriginalObject:(id)a3 forKey:(id)a4 withObject:(id)a5;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setDelegate:(id)a3;
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

- (EFLazyCache)initWithCountLimit:(unint64_t)a3
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

    [(NSCache *)v4->_storage setCountLimit:a3];
    [(NSCache *)v4->_storage setDelegate:v4];
  }

  return v4;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_flags = *&self->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
    v5 = obj;
  }
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  [(NSCache *)self->_storage removeObjectForKey:v4];
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_exchangeOriginalObject:(id)a3 forKey:(id)a4 withObject:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  [(NSRecursiveLock *)self->_lock lock];
  v10 = [(NSCache *)self->_storage objectForKey:v8];
  if (v10 == v12)
  {
    storage = self->_storage;
    if (v9)
    {
      [(NSCache *)storage setObject:v9 forKey:v8];
    }

    else
    {
      [(NSCache *)storage removeObjectForKey:v8];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)objectForKey:(id)a3 generator:(id)a4
{
  v6 = a3;
  v7 = a4;
  while (1)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v8 = [(NSCache *)self->_storage objectForKey:v6];
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
      [(NSCache *)self->_storage setObject:v12 forKey:v6];
      v13 = 0;
    }

    [(NSRecursiveLock *)self->_lock unlock];
    if (v13)
    {
      break;
    }

    if ([(NSConditionLock *)v12 tryLockWhenCondition:0])
    {
      v13 = v7[2](v7);
      [(EFLazyCache *)self _exchangeOriginalObject:v12 forKey:v6 withObject:v13];
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

- (id)storedObjectForKey:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSCache *)self->_storage objectForKey:v4];
  [(NSRecursiveLock *)self->_lock unlock];

  return v5;
}

- (id)cachedObjectForKey:(id)a3
{
  v3 = [(EFLazyCache *)self storedObjectForKey:a3];
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

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v8 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (self->_storage == v8 && (*&self->_flags & 1) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained lazyCache:self willEvictObject:v6];
  }
}

- (EFLazyCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)waiterCountForKey:(id)a3
{
  v3 = [(EFLazyCache *)self storedObjectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 waiterCount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
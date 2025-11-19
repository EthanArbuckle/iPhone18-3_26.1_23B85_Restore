@interface LACCache
- (LACCache)initWithTimeout:(double)a3;
- (id)_identifierForParameter:(id)a3;
- (id)cachedValueWithParameter:(id)a3;
- (void)_invalidateCachedValue:(id)a3 identifier:(id)a4;
- (void)invalidate;
- (void)setCachedValue:(id)a3 withParameter:(id)a4;
@end

@implementation LACCache

- (LACCache)initWithTimeout:(double)a3
{
  v11.receiver = self;
  v11.super_class = LACCache;
  v4 = [(LACCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeout = a3;
    v6 = objc_opt_new();
    cachedValues = v5->_cachedValues;
    v5->_cachedValues = v6;

    v5->_cachedValuesLock._os_unfair_lock_opaque = 0;
    v8 = [LACConcurrencyUtilities createDefaultSerialQueueWithIdentifier:@"com.apple.LocalAuthentication.lac-cache-queue"];
    workQueue = v5->_workQueue;
    v5->_workQueue = v8;
  }

  return v5;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_cachedValuesLock);
  [(NSMutableDictionary *)self->_cachedValues removeAllObjects];

  os_unfair_lock_unlock(&self->_cachedValuesLock);
}

- (id)cachedValueWithParameter:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cachedValuesLock);
  cachedValues = self->_cachedValues;
  v6 = [(LACCache *)self _identifierForParameter:v4];

  v7 = [(NSMutableDictionary *)cachedValues objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_cachedValuesLock);

  return v7;
}

- (void)setCachedValue:(id)a3 withParameter:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(LACCache *)self _identifierForParameter:a4];
    os_unfair_lock_lock(&self->_cachedValuesLock);
    [(NSMutableDictionary *)self->_cachedValues setObject:v6 forKeyedSubscript:v7];
    os_unfair_lock_unlock(&self->_cachedValuesLock);
    if (self->_timeout > 0.0)
    {
      objc_initWeak(&location, self);
      v8 = dispatch_time(0, (self->_timeout * 1000000000.0));
      workQueue = self->_workQueue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __41__LACCache_setCachedValue_withParameter___block_invoke;
      v10[3] = &unk_1E7A97930;
      objc_copyWeak(&v13, &location);
      v11 = v6;
      v12 = v7;
      dispatch_after(v8, workQueue, v10);

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __41__LACCache_setCachedValue_withParameter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _invalidateCachedValue:*(a1 + 32) identifier:*(a1 + 40)];
}

- (id)_identifierForParameter:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = a3;
    v5 = objc_opt_class();
    v6 = [v4 description];

    v7 = [v3 stringWithFormat:@"%@-%@", v5, v6];
  }

  else
  {
    v7 = &stru_1F2652748;
  }

  return v7;
}

- (void)_invalidateCachedValue:(id)a3 identifier:(id)a4
{
  v8 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_cachedValuesLock);
  v7 = [(NSMutableDictionary *)self->_cachedValues objectForKeyedSubscript:v8];

  if (v7 == v6)
  {
    [(NSMutableDictionary *)self->_cachedValues removeObjectForKey:v8];
  }

  os_unfair_lock_unlock(&self->_cachedValuesLock);
}

@end
@interface CSReusableBufferPool
- (CSReusableBufferPool)initWithConfiguration:(id)a3;
- (id)_createNewBackingStore;
- (id)_getAvailableBackingStore;
- (id)dataWithBytes:(const void *)a3 length:(unint64_t)a4;
- (void)_checkIdleBackingStores;
- (void)_recycleUsedBackingStore:(id)a3;
- (void)cleanup;
- (void)handleUsedBackingStore:(id)a3;
@end

@implementation CSReusableBufferPool

- (void)_checkIdleBackingStores
{
  v21 = *MEMORY[0x1E69E9840];
  numberOfBackingStores = self->_numberOfBackingStores;
  if (numberOfBackingStores > [(CSReusableBufferPoolConfiguration *)self->_configuration minimalNumberOfBackingStores])
  {
    [(CSReusableBufferPoolConfiguration *)self->_configuration backingStoreIdleTimeout];
    if (v4 != 0.0)
    {
      v6 = v4;
      if ([(NSMutableArray *)self->_recycledBackingStores count])
      {
        v7 = mach_absolute_time();
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = self->_recycledBackingStores;
        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v17;
LABEL_7:
          v13 = 0;
          v15 = v11 + v10;
          while (1)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = [*(*(&v16 + 1) + 8 * v13) recycleHostTime];
            if (_CSMachAbsoluteTimeRate_onceToken != -1)
            {
              dispatch_once(&_CSMachAbsoluteTimeRate_onceToken, &__block_literal_global_431);
            }

            if (*&_CSMachAbsoluteTimeRate_rate * (v7 - v14) / 1000000000.0 <= v6)
            {
              break;
            }

            ++v11;
            if (v10 == ++v13)
            {
              v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
              v11 = v15;
              if (v10)
              {
                goto LABEL_7;
              }

              break;
            }
          }

          if (v11)
          {
            [(NSMutableArray *)self->_recycledBackingStores removeObjectsInRange:0, v11];
          }
        }

        else
        {
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_recycleUsedBackingStore:(id)a3
{
  v4 = a3;
  [v4 setRecycleHostTime:mach_absolute_time()];
  [(NSMutableArray *)self->_recycledBackingStores addObject:v4];
}

- (id)_createNewBackingStore
{
  if ([(CSReusableBufferPool *)self _canCreateNewBackingStore])
  {
    v3 = [[CSReusablePrivateMemoryBackingStore alloc] initWithBufferSize:[(CSReusableBufferPoolConfiguration *)self->_configuration backingStoreCapacity]];
    ++self->_numberOfBackingStores;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_getAvailableBackingStore
{
  v3 = [(NSMutableArray *)self->_recycledBackingStores lastObject];
  if (v3)
  {
    [(NSMutableArray *)self->_recycledBackingStores removeLastObject];
  }

  return v3;
}

- (void)handleUsedBackingStore:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(CSReusableBufferPool *)self _recycleUsedBackingStore:v4];

  [(CSReusableBufferPool *)self _checkIdleBackingStores];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cleanup
{
  os_unfair_lock_lock(&self->_lock);
  [(CSReusableBufferPool *)self _checkIdleBackingStores];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)dataWithBytes:(const void *)a3 length:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_lock);
  v7 = [(CSReusableBufferPool *)self _getAvailableBackingStore];
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v8 = [(CSReusableBufferPool *)self _createNewBackingStore];
    os_unfair_lock_unlock(&self->_lock);
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  if ([v8 configureWithBytes:a3 length:a4])
  {
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x1E695DEF0]);
    v10 = [v8 bytes];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__CSReusableBufferPool_dataWithBytes_length___block_invoke;
    v13[3] = &unk_1E865C6F0;
    objc_copyWeak(&v15, &location);
    v8 = v8;
    v14 = v8;
    v11 = [v9 initWithBytesNoCopy:v10 length:a4 deallocator:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    goto LABEL_7;
  }

LABEL_6:
  v11 = 0;
LABEL_7:

  return v11;
}

void __45__CSReusableBufferPool_dataWithBytes_length___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleUsedBackingStore:*(a1 + 32)];
}

- (CSReusableBufferPool)initWithConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSReusableBufferPool;
  v6 = [(CSReusableBufferPool *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recycledBackingStores = v7->_recycledBackingStores;
    v7->_recycledBackingStores = v8;
  }

  return v7;
}

@end
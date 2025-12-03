@interface CSReusableBufferPool
- (CSReusableBufferPool)initWithConfiguration:(id)configuration;
- (id)_createNewBackingStore;
- (id)_getAvailableBackingStore;
- (id)dataWithBytes:(const void *)bytes length:(unint64_t)length;
- (void)_checkIdleBackingStores;
- (void)_recycleUsedBackingStore:(id)store;
- (void)cleanup;
- (void)handleUsedBackingStore:(id)store;
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

            recycleHostTime = [*(*(&v16 + 1) + 8 * v13) recycleHostTime];
            if (_CSMachAbsoluteTimeRate_onceToken != -1)
            {
              dispatch_once(&_CSMachAbsoluteTimeRate_onceToken, &__block_literal_global_431);
            }

            if (*&_CSMachAbsoluteTimeRate_rate * (v7 - recycleHostTime) / 1000000000.0 <= v6)
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

- (void)_recycleUsedBackingStore:(id)store
{
  storeCopy = store;
  [storeCopy setRecycleHostTime:mach_absolute_time()];
  [(NSMutableArray *)self->_recycledBackingStores addObject:storeCopy];
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
  lastObject = [(NSMutableArray *)self->_recycledBackingStores lastObject];
  if (lastObject)
  {
    [(NSMutableArray *)self->_recycledBackingStores removeLastObject];
  }

  return lastObject;
}

- (void)handleUsedBackingStore:(id)store
{
  storeCopy = store;
  os_unfair_lock_lock(&self->_lock);
  [(CSReusableBufferPool *)self _recycleUsedBackingStore:storeCopy];

  [(CSReusableBufferPool *)self _checkIdleBackingStores];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cleanup
{
  os_unfair_lock_lock(&self->_lock);
  [(CSReusableBufferPool *)self _checkIdleBackingStores];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)dataWithBytes:(const void *)bytes length:(unint64_t)length
{
  os_unfair_lock_lock(&self->_lock);
  _getAvailableBackingStore = [(CSReusableBufferPool *)self _getAvailableBackingStore];
  if (_getAvailableBackingStore)
  {
    _createNewBackingStore = _getAvailableBackingStore;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    _createNewBackingStore = [(CSReusableBufferPool *)self _createNewBackingStore];
    os_unfair_lock_unlock(&self->_lock);
    if (!_createNewBackingStore)
    {
      goto LABEL_6;
    }
  }

  if ([_createNewBackingStore configureWithBytes:bytes length:length])
  {
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x1E695DEF0]);
    bytes = [_createNewBackingStore bytes];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__CSReusableBufferPool_dataWithBytes_length___block_invoke;
    v13[3] = &unk_1E865C6F0;
    objc_copyWeak(&v15, &location);
    _createNewBackingStore = _createNewBackingStore;
    v14 = _createNewBackingStore;
    v11 = [v9 initWithBytesNoCopy:bytes length:length deallocator:v13];

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

- (CSReusableBufferPool)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = CSReusableBufferPool;
  v6 = [(CSReusableBufferPool *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recycledBackingStores = v7->_recycledBackingStores;
    v7->_recycledBackingStores = v8;
  }

  return v7;
}

@end
@interface NRRegistry
+ (id)getReferencedSecureProperties:(id)a3 fromDiff:(id)a4;
+ (id)getReferencedSecurePropertyIDsFromDiff:(id)a3;
+ (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5;
+ (unint64_t)readNotifyToken:(int)a3;
+ (void)fixSecurePropertiesWithCollection:(id)a3 secureProperties:(id)a4 insecurePropertyNames:(id)a5;
- (BOOL)enqueueUnlessSuspended:(id)a3;
- (NRMutableDeviceCollection)collection;
- (NRRegistry)initWithParameters:(id)a3;
- (NRSecureDevicePropertyStore)secureProperties;
- (id)addDiffObserverWithWriteBlock:(id)a3;
- (id)addSecurePropertiesObserverWithReadBlock:(id)a3;
- (void)_notifyDiffObserversWithDiff:(id)a3 deviceCollection:(id)a4 secureProperties:(id)a5;
- (void)_notifyObserversSecurePropertiesAreAvailableWithCollection:(id)a3 secureProperties:(id)a4;
- (void)_startQueue;
- (void)deasyncGrabRegistryWithReadBlock:(id)a3;
- (void)deasyncGrabRegistryWithWriteBlock:(id)a3;
- (void)grabRegistryWithReadBlock:(id)a3;
- (void)grabRegistryWithReadBlockAsync:(id)a3;
- (void)grabRegistryWithWriteBlockAsync:(id)a3;
- (void)invalidate;
- (void)performUnderCollectionLock:(id)a3;
- (void)removeDiffObserver:(id)a3;
- (void)removeSecurePropertiesObserver:(id)a3;
- (void)setCollection:(id)a3;
- (void)setQueueCollection:(id)a3;
- (void)setSecureProperties:(id)a3;
@end

@implementation NRRegistry

void __28__NRRegistry__supportsWatch__block_invoke()
{
  if (MGGetBoolAnswer())
  {
    if (_NRIsDemoModeEnabled())
    {
      _MergedGlobals_10 = 1;
    }

    else
    {
      v1 = MGGetStringAnswer();
      if ([v1 isEqualToString:@"Watch"])
      {
        v0 = 1;
      }

      else
      {
        v0 = MGGetBoolAnswer();
      }

      _MergedGlobals_10 = v0;
    }
  }
}

- (NRMutableDeviceCollection)collection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__NRRegistry_collection__block_invoke;
  v4[3] = &unk_1E86DB8F0;
  v4[4] = self;
  v4[5] = &v5;
  [(NRRegistry *)self performUnderCollectionLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NRSecureDevicePropertyStore)secureProperties
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__NRRegistry_secureProperties__block_invoke;
  v4[3] = &unk_1E86DB8F0;
  v4[4] = self;
  v4[5] = &v5;
  [(NRRegistry *)self performUnderCollectionLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_startQueue
{
  if (!self->_queueRunning)
  {
    self->_queueRunning = 1;
    [(NRBypassQueue *)self->_accessQueue resume];
  }
}

- (void)deasyncGrabRegistryWithReadBlock:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__NRRegistry_sync__deasyncGrabRegistryWithReadBlock___block_invoke;
  v8[3] = &unk_1E86DB3C8;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  v7 = v4;
  [(NRRegistry *)self grabRegistryWithReadBlockAsync:v8];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __53__NRRegistry_sync__deasyncGrabRegistryWithReadBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)deasyncGrabRegistryWithWriteBlock:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__NRRegistry_sync__deasyncGrabRegistryWithWriteBlock___block_invoke;
  v8[3] = &unk_1E86DB3F0;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  v7 = v4;
  [(NRRegistry *)self grabRegistryWithWriteBlockAsync:v8];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

id __54__NRRegistry_sync__deasyncGrabRegistryWithWriteBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  v5 = [v3 applyDiff:v4];
  dispatch_semaphore_signal(*(a1 + 32));

  return v4;
}

- (NRRegistry)initWithParameters:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NRRegistry;
  v5 = [(NRRegistry *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"NRRegistryPlatformSupportsWatch"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 BOOLValue];
    }

    else
    {
      objc_opt_self();
      if (qword_1ED6F0B08 != -1)
      {
        dispatch_once(&qword_1ED6F0B08, &__block_literal_global_7);
      }

      v8 = _MergedGlobals_10;
    }

    v5->_supportsWatch = v8 & 1;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.nanoregistry.registry.managementqueue", v9);
    managementQueue = v5->_managementQueue;
    v5->_managementQueue = v10;

    v12 = objc_alloc_init(NRBypassQueue);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v12;

    [(NRBypassQueue *)v5->_accessQueue suspend];
    v14 = [v4 objectForKeyedSubscript:@"NRRegistryShouldCreateCollection"];
    v15 = v14;
    if (!v14 || [v14 BOOLValue])
    {
      v16 = objc_opt_new();
      [(NRRegistry *)v5 setCollection:v16];
    }
  }

  return v5;
}

- (void)performUnderCollectionLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_collectionLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_collectionLock);
}

- (void)setCollection:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__NRRegistry_setCollection___block_invoke;
  v6[3] = &unk_1E86DAF10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NRRegistry *)self performUnderCollectionLock:v6];
}

- (void)setQueueCollection:(id)a3
{
  v5 = a3;
  [v5 setParentDelegate:self];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __33__NRRegistry_setQueueCollection___block_invoke;
  v10 = &unk_1E86DC758;
  objc_copyWeak(&v11, &location);
  v6 = [v5 addObserverQueue:0 withBlock:&v7];
  objc_storeStrong(&self->_collection, a3);
  [(NRRegistry *)self _startQueue:v7];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __33__NRRegistry_setQueueCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained collection];
  v5 = [WeakRetained secureProperties];
  [WeakRetained _notifyDiffObserversWithDiff:v3 deviceCollection:v4 secureProperties:v5];

  [WeakRetained _notifyObserversSecurePropertiesAreAvailableWithCollection:v4 secureProperties:v5];
}

- (void)setSecureProperties:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__NRRegistry_setSecureProperties___block_invoke;
  v6[3] = &unk_1E86DAF10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NRRegistry *)self performUnderCollectionLock:v6];
}

uint64_t __34__NRRegistry_setSecureProperties___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__NRRegistry_setSecureProperties___block_invoke_2;
  v4[3] = &unk_1E86DC068;
  v4[4] = v2;
  return [v2 grabRegistryWithReadBlockAsync:v4];
}

- (BOOL)enqueueUnlessSuspended:(id)a3
{
  queueRunning = self->_queueRunning;
  if (queueRunning)
  {
    [(NRBypassQueue *)self->_accessQueue enqueueBlock:a3];
  }

  return queueRunning;
}

- (void)grabRegistryWithReadBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__NRRegistry_grabRegistryWithReadBlock___block_invoke;
  v6[3] = &unk_1E86DACC0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NRRegistry *)self enqueue:v6];
}

void __40__NRRegistry_grabRegistryWithReadBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) collection];
  v3 = [*(a1 + 32) secureProperties];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)grabRegistryWithReadBlockAsync:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__NRRegistry_grabRegistryWithReadBlockAsync___block_invoke;
  v6[3] = &unk_1E86DACC0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NRRegistry *)self enqueueAsync:v6];
}

void __45__NRRegistry_grabRegistryWithReadBlockAsync___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) collection];
  v3 = [*(a1 + 32) secureProperties];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)grabRegistryWithWriteBlockAsync:(id)a3
{
  v4 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__5;
  v9[4] = __Block_byref_object_dispose__5;
  v10 = os_transaction_create();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__NRRegistry_grabRegistryWithWriteBlockAsync___block_invoke;
  v6[3] = &unk_1E86DB878;
  v5 = v4;
  v6[4] = self;
  v7 = v5;
  v8 = v9;
  [(NRRegistry *)self enqueueAsync:v6];

  _Block_object_dispose(v9, 8);
}

void __46__NRRegistry_grabRegistryWithWriteBlockAsync___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) collection];
  v4 = [*(a1 + 32) secureProperties];
  v9 = (*(v2 + 16))(v2, v3, v4);

  if (v9)
  {
    v5 = [*(a1 + 32) collection];
    v6 = [v5 applyDiff:v9];
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (id)addDiffObserverWithWriteBlock:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__NRRegistry_addDiffObserverWithWriteBlock___block_invoke;
  v8[3] = &unk_1E86DB8C8;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(NRRegistry *)self performUnderCollectionLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __44__NRRegistry_addDiffObserverWithWriteBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _nextToken];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1 + 32) + 8))
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;
  }

  v10 = [*(a1 + 40) copy];
  v9 = MEMORY[0x1E12E7560]();
  [*(*(a1 + 32) + 8) setObject:v9 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)removeDiffObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__NRRegistry_removeDiffObserver___block_invoke;
  v6[3] = &unk_1E86DAF10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NRRegistry *)self performUnderCollectionLock:v6];
}

- (void)_notifyDiffObserversWithDiff:(id)a3 deviceCollection:(id)a4 secureProperties:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __77__NRRegistry__notifyDiffObserversWithDiff_deviceCollection_secureProperties___block_invoke;
  v22[3] = &unk_1E86DB8F0;
  v22[4] = self;
  v22[5] = &v23;
  [(NRRegistry *)self performUnderCollectionLock:v22];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v24[5];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v24[5] objectForKeyedSubscript:{v15, v18}];
        (v16)[2](v16, v8, v9, v10, v15);
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v23, 8);
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __77__NRRegistry__notifyDiffObserversWithDiff_deviceCollection_secureProperties___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)addSecurePropertiesObserverWithReadBlock:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__NRRegistry_addSecurePropertiesObserverWithReadBlock___block_invoke;
  v9[3] = &unk_1E86DB8C8;
  v11 = &v12;
  v9[4] = self;
  v5 = v4;
  v10 = v5;
  [(NRRegistry *)self performUnderCollectionLock:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__NRRegistry_addSecurePropertiesObserverWithReadBlock___block_invoke_2;
  v8[3] = &unk_1E86DC068;
  v8[4] = self;
  [(NRRegistry *)self grabRegistryWithReadBlock:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __55__NRRegistry_addSecurePropertiesObserverWithReadBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _nextToken];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1 + 32) + 16))
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;
  }

  v10 = [*(a1 + 40) copy];
  v9 = MEMORY[0x1E12E7560]();
  [*(*(a1 + 32) + 16) setObject:v9 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)removeSecurePropertiesObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__NRRegistry_removeSecurePropertiesObserver___block_invoke;
  v6[3] = &unk_1E86DAF10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NRRegistry *)self performUnderCollectionLock:v6];
}

- (void)invalidate
{
  v3 = [(NRRegistry *)self managementQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__NRRegistry_invalidate__block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_sync(v3, block);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__NRRegistry_invalidate__block_invoke_2;
  v5[3] = &unk_1E86DAE98;
  v5[4] = self;
  [(NRRegistry *)self enqueueAsync:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__NRRegistry_invalidate__block_invoke_3;
  v4[3] = &unk_1E86DAE98;
  v4[4] = self;
  [(NRRegistry *)self performUnderCollectionLock:v4];
  [(NRBypassQueue *)self->_accessQueue invalidate];
}

void __24__NRRegistry_invalidate__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) collection];
  [v1 invalidate];
}

uint64_t __24__NRRegistry_invalidate__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(*(a1 + 32) + 8);

  return [v2 removeAllObjects];
}

- (void)_notifyObserversSecurePropertiesAreAvailableWithCollection:(id)a3 secureProperties:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NRRegistry *)self secureProperties];

  if (v8)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__5;
    v25 = __Block_byref_object_dispose__5;
    v26 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__NRRegistry__notifyObserversSecurePropertiesAreAvailableWithCollection_secureProperties___block_invoke;
    v20[3] = &unk_1E86DB8F0;
    v20[4] = self;
    v20[5] = &v21;
    [(NRRegistry *)self performUnderCollectionLock:v20];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v22[5];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [v22[5] objectForKeyedSubscript:{v13, v16}];
          (v14)[2](v14, v6, v7, v13);
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
      }

      while (v10);
    }

    _Block_object_dispose(&v21, 8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __90__NRRegistry__notifyObserversSecurePropertiesAreAvailableWithCollection_secureProperties___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

+ (id)getReferencedSecurePropertyIDsFromDiff:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v31;
    v22 = *v31;
    v23 = v3;
    do
    {
      v8 = 0;
      v24 = v5;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [v3 objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * v8), v22, v23}];
        if ([v9 changeType] != 2)
        {
          v25 = v8;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v10 = [v9 diff];
          v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v27;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v27 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v26 + 1) + 8 * i);
                v16 = [v9 diff];
                v17 = [v16 objectForKeyedSubscript:v15];

                if ([v17 changeType] != 2)
                {
                  v18 = [v17 diff];
                  v19 = [v18 value];

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if (!v6)
                    {
                      v6 = [MEMORY[0x1E695DF70] array];
                    }

                    [v6 addObject:v19];
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v12);
          }

          v7 = v22;
          v3 = v23;
          v5 = v24;
          v8 = v25;
        }

        ++v8;
      }

      while (v8 != v5);
      v5 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)getReferencedSecureProperties:(id)a3 fromDiff:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 getReferencedSecurePropertyIDsFromDiff:v7];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:v14];
        if (v15)
        {
          if (!v11)
          {
            v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
          }

          [v11 setObject:v15 forKeyedSubscript:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (void)fixSecurePropertiesWithCollection:(id)a3 secureProperties:(id)a4 insecurePropertyNames:(id)a5
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v58 = a4;
  v8 = a5;
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v70 = "+[NRRegistry fixSecurePropertiesWithCollection:secureProperties:insecurePropertyNames:]";
      _os_log_impl(&dword_1E0ADF000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v51 = [MEMORY[0x1E695DF90] dictionary];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v7;
  v53 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v53)
  {
    v52 = *v64;
    v12 = 0x1E86DA000uLL;
    do
    {
      v13 = 0;
      do
      {
        if (*v64 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v63 + 1) + 8 * v13);
        v56 = v13;
        v14 = [obj objectForKeyedSubscript:v51];
        v57 = [MEMORY[0x1E695DF90] dictionary];
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v59 objects:v67 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v60;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v60 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v59 + 1) + 8 * i);
              if (![v8 containsObject:v20])
              {
                goto LABEL_51;
              }

              v21 = [v15 objectForKeyedSubscript:v20];
              v22 = [v21 value];
              v23 = *(v12 + 2712);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v25 = nr_daemon_log();
                v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

                if (v26)
                {
                  v27 = nr_daemon_log();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v70 = v20;
                    _os_log_impl(&dword_1E0ADF000, v27, OS_LOG_TYPE_DEFAULT, "Property %@ was marked as secure but is now in allowlist, converting to insecure property", buf, 0xCu);
                  }
                }

                v28 = [v15 objectForKeyedSubscript:v20];
                v29 = [v28 value];

                v30 = [v58 securePropertyForID:v29];
              }

              else
              {
LABEL_51:
                if ([v8 containsObject:v20])
                {
                  continue;
                }

                v31 = [v15 objectForKeyedSubscript:v20];
                v32 = [v31 value];
                v33 = *(v12 + 2712);
                objc_opt_class();
                v34 = objc_opt_isKindOfClass();

                if (v34)
                {
                  continue;
                }

                v35 = nr_daemon_log();
                v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

                if (v36)
                {
                  v37 = nr_daemon_log();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v70 = v20;
                    _os_log_impl(&dword_1E0ADF000, v37, OS_LOG_TYPE_DEFAULT, "Property %@ is not in allowlist and is stored as insecure, converting to secure property", buf, 0xCu);
                  }
                }

                v38 = [v15 objectForKeyedSubscript:v20];
                v29 = [v38 value];

                v30 = [v58 storeSecureProperty:v29];
              }

              v39 = v30;
              if (v30)
              {
                v40 = [[NRDevicePropertyDiff alloc] initWithValue:v30];
                v41 = [[NRDevicePropertyDiffType alloc] initWithDiff:v40 andChangeType:1];
                [v57 setObject:v41 forKeyedSubscript:v20];

                v12 = 0x1E86DA000;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v59 objects:v67 count:16];
          }

          while (v17);
        }

        if ([v57 count])
        {
          v42 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v57];
          v43 = [[NRDeviceDiffType alloc] initWithDiff:v42 andChangeType:1];
          [v51 setObject:v43 forKeyedSubscript:v55];
        }

        v13 = v56 + 1;
      }

      while (v56 + 1 != v53);
      v53 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v53);
  }

  v44 = [v51 count];
  v45 = nr_daemon_log();
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);

  if (v44)
  {
    if (v46)
    {
      v47 = nr_daemon_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v70 = "+[NRRegistry fixSecurePropertiesWithCollection:secureProperties:insecurePropertyNames:]";
        _os_log_impl(&dword_1E0ADF000, v47, OS_LOG_TYPE_DEFAULT, "%s: Updating some allowlisted properties", buf, 0xCu);
      }
    }

    v48 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v51];
    v49 = [obj applyDiff:v48];
  }

  else
  {
    if (!v46)
    {
      goto LABEL_45;
    }

    v48 = nr_daemon_log();
    if (os_log_type_enabled(&v48->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v70 = "+[NRRegistry fixSecurePropertiesWithCollection:secureProperties:insecurePropertyNames:]";
      _os_log_impl(&dword_1E0ADF000, &v48->super.super, OS_LOG_TYPE_DEFAULT, "%s: Not updating any properties", buf, 0xCu);
    }
  }

LABEL_45:
  v50 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)readNotifyToken:(int)a3
{
  if (a3 == -1)
  {
    return 0;
  }

  state64 = 0;
  if (notify_get_state(a3, &state64))
  {
    return 0;
  }

  else
  {
    return state64;
  }
}

+ (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  out_token = -1;
  v10 = [v7 UTF8String];
  if (v9)
  {
    if (!notify_register_dispatch(v10, &out_token, v8, v9))
    {
      goto LABEL_9;
    }
  }

  else if (!notify_register_check(v10, &out_token))
  {
    goto LABEL_9;
  }

  v11 = nr_framework_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

  if (v12)
  {
    v13 = nr_framework_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_error_impl(&dword_1E0ADF000, v13, OS_LOG_TYPE_ERROR, "Failed to register block and get notify token for %@", buf, 0xCu);
    }
  }

LABEL_9:
  v14 = out_token;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end
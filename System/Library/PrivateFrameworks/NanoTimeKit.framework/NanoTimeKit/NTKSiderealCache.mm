@interface NTKSiderealCache
+ (id)sharedCache;
- (float)aplForDate:(id)a3 generationBlock:(id)a4;
- (id)_init;
- (id)imageDataForKey:(id)a3 generationBlock:(id)a4;
- (void)_purgeEverything;
- (void)purgeAPLCache;
- (void)purgeCachedKey:(id)a3;
@end

@implementation NTKSiderealCache

+ (id)sharedCache
{
  if (sharedCache_onceToken_0 != -1)
  {
    +[NTKSiderealCache sharedCache];
  }

  v3 = sharedCache_sharedCache;

  return v3;
}

void __31__NTKSiderealCache_sharedCache__block_invoke()
{
  v0 = [[NTKSiderealCache alloc] _init];
  v1 = sharedCache_sharedCache;
  sharedCache_sharedCache = v0;
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = NTKSiderealCache;
  v2 = [(NTKSiderealCache *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("NTKSiderealCache Queue", MEMORY[0x277D85CD8]);
    readerWriterQueue = v2->_readerWriterQueue;
    v2->_readerWriterQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    dataCache = v2->_dataCache;
    v2->_dataCache = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    aplCache = v2->_aplCache;
    v2->_aplCache = v7;

    [(NSCache *)v2->_aplCache setCountLimit:64];
    [(NTKSiderealCache *)v2 _purgeEverything];
  }

  return v2;
}

- (void)_purgeEverything
{
  readerWriterQueue = self->_readerWriterQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NTKSiderealCache__purgeEverything__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_barrier_async(readerWriterQueue, block);
}

uint64_t __36__NTKSiderealCache__purgeEverything__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  v2 = *(*(a1 + 32) + 24);

  return [v2 removeAllObjects];
}

- (void)purgeCachedKey:(id)a3
{
  v4 = a3;
  readerWriterQueue = self->_readerWriterQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__NTKSiderealCache_purgeCachedKey___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(readerWriterQueue, v7);
}

- (void)purgeAPLCache
{
  readerWriterQueue = self->_readerWriterQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NTKSiderealCache_purgeAPLCache__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_barrier_async(readerWriterQueue, block);
}

- (id)imageDataForKey:(id)a3 generationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__11;
  v26 = __Block_byref_object_dispose__11;
  v27 = 0;
  readerWriterQueue = self->_readerWriterQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NTKSiderealCache_imageDataForKey_generationBlock___block_invoke;
  block[3] = &unk_278780498;
  v21 = &v22;
  block[4] = self;
  v9 = v6;
  v20 = v9;
  dispatch_sync(readerWriterQueue, block);
  if (!v23[5])
  {
    v10 = v7[2](v7);
    v11 = v23[5];
    v23[5] = v10;

    if (v23[5])
    {
      v12 = self->_readerWriterQueue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __52__NTKSiderealCache_imageDataForKey_generationBlock___block_invoke_2;
      v16[3] = &unk_2787804C0;
      v16[4] = self;
      v18 = &v22;
      v17 = v9;
      dispatch_barrier_async(v12, v16);
    }

    else
    {
      v13 = _NTKLoggingObjectForDomain(36, "NTKLoggingDomainSidereal");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NTKSiderealCache imageDataForKey:v9 generationBlock:v13];
      }
    }
  }

  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __52__NTKSiderealCache_imageDataForKey_generationBlock___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (float)aplForDate:(id)a3 generationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__11;
  v32 = __Block_byref_object_dispose__11;
  v33 = 0;
  readerWriterQueue = self->_readerWriterQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__NTKSiderealCache_aplForDate_generationBlock___block_invoke;
  block[3] = &unk_278780498;
  v27 = &v28;
  block[4] = self;
  v9 = v6;
  v26 = v9;
  dispatch_sync(readerWriterQueue, block);
  v10 = v29[5];
  if (!v10)
  {
    v11 = MEMORY[0x277CCABB0];
    v7[2](v7);
    v12 = [v11 numberWithFloat:?];
    v13 = v29[5];
    v29[5] = v12;

    if (v29[5])
    {
      v14 = self->_readerWriterQueue;
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __47__NTKSiderealCache_aplForDate_generationBlock___block_invoke_2;
      v21 = &unk_2787804C0;
      v22 = self;
      v24 = &v28;
      v23 = v9;
      dispatch_barrier_async(v14, &v18);

      v10 = v29[5];
    }

    else
    {
      v10 = 0;
    }
  }

  [v10 floatValue];
  v16 = v15;

  _Block_object_dispose(&v28, 8);
  return v16;
}

void __47__NTKSiderealCache_aplForDate_generationBlock___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)imageDataForKey:(uint64_t)a1 generationBlock:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NTKSiderealCache imageDataForKey:generationBlock:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "%s received nil imageData for key:%@", &v2, 0x16u);
}

@end
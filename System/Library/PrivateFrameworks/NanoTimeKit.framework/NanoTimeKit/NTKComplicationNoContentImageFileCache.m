@interface NTKComplicationNoContentImageFileCache
+ (id)sharedInstance;
- (BOOL)_flushCache;
- (NTKComplicationNoContentImageFileCache)init;
- (id)_makeMutableCacheCopy;
- (id)imageForClientIdentifier:(id)a3 family:(int64_t)a4;
- (id)noContentImagesForClientIdentifier:(id)a3;
- (void)_dirtyCache;
- (void)dealloc;
- (void)init;
- (void)removeAllEntriesExceptThoseWithClientIdentifiers:(id)a3;
- (void)setImage:(id)a3 forClientIdentifier:(id)a4 family:(int64_t)a5;
- (void)setNoContentImages:(id)a3 forClientIdentifier:(id)a4;
@end

@implementation NTKComplicationNoContentImageFileCache

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NTKComplicationNoContentImageFileCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_22 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_22, block);
  }

  v2 = sharedInstance___sharedInstance_7;

  return v2;
}

void __56__NTKComplicationNoContentImageFileCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedInstance___sharedInstance_7;
  sharedInstance___sharedInstance_7 = v0;
}

- (NTKComplicationNoContentImageFileCache)init
{
  v26.receiver = self;
  v26.super_class = NTKComplicationNoContentImageFileCache;
  v2 = [(NTKComplicationNoContentImageFileCache *)&v26 init];
  if (v2)
  {
    v3 = _PathToComplicationNoContentImageArchive();
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v3 options:1 error:0];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:0];
      [v5 setDecodingFailurePolicy:0];
      v6 = MEMORY[0x277CBEB98];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
      v11 = [v5 decodeObjectOfClasses:v10 forKey:*MEMORY[0x277CCA308]];
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      NTKValidateDictionary(v11, v12, v13);
    }

    else
    {
      v11 = [MEMORY[0x277CBEB38] dictionary];
    }

    queue_complicationNoContentImages = v2->_queue_complicationNoContentImages;
    v2->_queue_complicationNoContentImages = v11;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.NanoTimeKit.NTKComplicationNoContentImageFileCache.access", v15);
    cacheQueue = v2->_cacheQueue;
    v2->_cacheQueue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.NanoTimeKit.NTKComplicationNoContentImageFileCache.flush", v18);
    cacheFlushQueue = v2->_cacheFlushQueue;
    v2->_cacheFlushQueue = v19;

    v21 = [[NTKTaskScheduler alloc] initWithQueue:v2->_cacheFlushQueue];
    taskScheduler = v2->_taskScheduler;
    v2->_taskScheduler = v21;

    [(NTKTaskScheduler *)v2->_taskScheduler setWaitingPeriod:30.0];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"NTKComplicationNoContentImageFileCache-%p", v2];
    cacheIdentifier = v2->_cacheIdentifier;
    v2->_cacheIdentifier = v23;
  }

  return v2;
}

- (void)dealloc
{
  [(NTKTaskScheduler *)self->_taskScheduler cancelAllTasks];
  v3.receiver = self;
  v3.super_class = NTKComplicationNoContentImageFileCache;
  [(NTKComplicationNoContentImageFileCache *)&v3 dealloc];
}

- (id)imageForClientIdentifier:(id)a3 family:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__46;
    v19 = __Block_byref_object_dispose__46;
    v20 = 0;
    cacheQueue = self->_cacheQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__NTKComplicationNoContentImageFileCache_imageForClientIdentifier_family___block_invoke;
    v11[3] = &unk_278786578;
    v11[4] = self;
    v13 = &v15;
    v14 = a4;
    v12 = v6;
    dispatch_sync(cacheQueue, v11);
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __74__NTKComplicationNoContentImageFileCache_imageForClientIdentifier_family___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = a1[7];
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v7 = v2;
      v4 = [v2 circularSmallImage];
    }

    else
    {
      if (v3 != 7)
      {
        goto LABEL_11;
      }

      v7 = v2;
      v4 = [v2 extraLargeImage];
    }
  }

  else if (v3)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v7 = v2;
    v4 = [v2 utilitarianSmallImage];
  }

  else
  {
    v7 = v2;
    v4 = [v2 modularSmallImage];
  }

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v2 = v7;
LABEL_11:
}

- (void)setImage:(id)a3 forClientIdentifier:(id)a4 family:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_initWeak(&location, self);
    cacheQueue = self->_cacheQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__NTKComplicationNoContentImageFileCache_setImage_forClientIdentifier_family___block_invoke;
    block[3] = &unk_2787865A0;
    objc_copyWeak(v14, &location);
    v12 = v9;
    v14[1] = a5;
    v13 = v8;
    dispatch_async(cacheQueue, block);

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }
}

void __78__NTKComplicationNoContentImageFileCache_setImage_forClientIdentifier_family___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[1] objectForKeyedSubscript:*(a1 + 32)];
    if (!v3)
    {
      v3 = objc_alloc_init(NTKComplicationNoContentImages);
      [v5[1] setObject:v3 forKey:*(a1 + 32)];
      [v5 _dirtyCache];
    }

    v4 = *(a1 + 56);
    if (v4 > 3)
    {
      if (v4 == 4)
      {
        [(NTKComplicationNoContentImages *)v3 setCircularSmallImage:*(a1 + 40)];
        goto LABEL_13;
      }

      if (v4 == 7)
      {
        [(NTKComplicationNoContentImages *)v3 setExtraLargeImage:*(a1 + 40)];
        goto LABEL_13;
      }
    }

    else
    {
      if (!v4)
      {
        [(NTKComplicationNoContentImages *)v3 setModularSmallImage:*(a1 + 40)];
        goto LABEL_13;
      }

      if (v4 == 2)
      {
        [(NTKComplicationNoContentImages *)v3 setUtilitarianSmallImage:*(a1 + 40)];
LABEL_13:
        [v5 _dirtyCache];
      }
    }

    WeakRetained = v5;
  }
}

- (id)noContentImagesForClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__46;
    v16 = __Block_byref_object_dispose__46;
    v17 = 0;
    cacheQueue = self->_cacheQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__NTKComplicationNoContentImageFileCache_noContentImagesForClientIdentifier___block_invoke;
    block[3] = &unk_278780498;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(cacheQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __77__NTKComplicationNoContentImageFileCache_noContentImagesForClientIdentifier___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 8) objectForKey:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setNoContentImages:(id)a3 forClientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  cacheQueue = self->_cacheQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__NTKComplicationNoContentImageFileCache_setNoContentImages_forClientIdentifier___block_invoke;
  v11[3] = &unk_27877F668;
  objc_copyWeak(&v14, &location);
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(cacheQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __81__NTKComplicationNoContentImageFileCache_setNoContentImages_forClientIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[1] objectForKeyedSubscript:*(a1 + 32)];
    v4 = *(a1 + 40);
    if (v4)
    {
      if (([v4 isEqual:v3] & 1) == 0)
      {
        [v5[1] setObject:*(a1 + 40) forKey:*(a1 + 32)];
LABEL_7:
        [v5 _dirtyCache];
      }
    }

    else if (v3)
    {
      [v5[1] removeObjectForKey:*(a1 + 32)];
      goto LABEL_7;
    }

    WeakRetained = v5;
  }
}

- (void)removeAllEntriesExceptThoseWithClientIdentifiers:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NTKComplicationNoContentImageFileCache_removeAllEntriesExceptThoseWithClientIdentifiers___block_invoke;
  block[3] = &unk_27877F610;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(cacheQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __91__NTKComplicationNoContentImageFileCache_removeAllEntriesExceptThoseWithClientIdentifiers___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [WeakRetained[1] allKeys];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          if (([*(a1 + 32) containsObject:v9] & 1) == 0)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [WeakRetained[1] removeObjectForKey:{*(*(&v15 + 1) + 8 * j), v15}];
          [WeakRetained _dirtyCache];
        }

        v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (void)_dirtyCache
{
  dispatch_assert_queue_V2(self->_cacheQueue);
  [(NTKTaskScheduler *)self->_taskScheduler cancelAllTasks];
  self->_cacheDirty = 1;
  objc_initWeak(&location, self);
  taskScheduler = self->_taskScheduler;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__NTKComplicationNoContentImageFileCache__dirtyCache__block_invoke;
  v5[3] = &unk_27877E298;
  objc_copyWeak(&v6, &location);
  v4 = [(NTKTaskScheduler *)taskScheduler scheduleTask:v5 identifier:@"com.apple.ntk.NTKComplicationNoContentImageFileCache"];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __53__NTKComplicationNoContentImageFileCache__dirtyCache__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _flushCache];

  return v2;
}

- (id)_makeMutableCacheCopy
{
  v3 = objc_opt_new();
  queue_complicationNoContentImages = self->_queue_complicationNoContentImages;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__NTKComplicationNoContentImageFileCache__makeMutableCacheCopy__block_invoke;
  v7[3] = &unk_2787865C8;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)queue_complicationNoContentImages enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __63__NTKComplicationNoContentImageFileCache__makeMutableCacheCopy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)_flushCache
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__46;
  v14 = __Block_byref_object_dispose__46;
  v15 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NTKComplicationNoContentImageFileCache__flushCache__block_invoke;
  block[3] = &unk_278786168;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(cacheQueue, block);
  v3 = v11[5];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11[5] requiringSecureCoding:1 error:0];
    v5 = _PathToComplicationNoContentImageArchive();
    [v4 writeToFile:v5 atomically:1];

    v6 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "NTKComplicationNoContentImageFileCache:_flushCache flushed out to disk", v8, 2u);
    }
  }

  _Block_object_dispose(&v10, 8);

  return v3 != 0;
}

void __53__NTKComplicationNoContentImageFileCache__flushCache__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[16] == 1)
  {
    v3 = [v2 _makeMutableCacheCopy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    *(*(a1 + 32) + 16) = 0;
  }
}

- (void)init
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Error decoding complication no content images: %@", &v2, 0xCu);
}

@end
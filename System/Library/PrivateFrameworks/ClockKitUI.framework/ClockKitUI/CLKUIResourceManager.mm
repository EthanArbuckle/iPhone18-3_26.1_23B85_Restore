@interface CLKUIResourceManager
+ (id)sharedInstance;
- (BOOL)ensureMemoryAvailable:(unint64_t)available;
- (CLKUIResourceManager)init;
- (id)_fetchOldestAtlas;
- (id)borrowTextureLoadingQueue;
- (id)delegateForUuid:(id)uuid;
- (id)textureForUuid:(id)uuid delegate:(id)delegate rect:(id)rect nullTexture:(BOOL)texture streaming:;
- (unint64_t)_computeMemoryAvailable;
- (unint64_t)_memoryLimit;
- (void)_purgeAllUnconditionally;
- (void)dealloc;
- (void)purge:(id)purge;
- (void)purgeAllUnused;
- (void)updateTextureStreaming;
@end

@implementation CLKUIResourceManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CLKUIResourceManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __38__CLKUIResourceManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (CLKUIResourceManager)init
{
  v17.receiver = self;
  v17.super_class = CLKUIResourceManager;
  v2 = [(CLKUIResourceManager *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_new();
    atlasesByUuid = v2->_atlasesByUuid;
    v2->_atlasesByUuid = v3;

    v5 = objc_opt_new();
    providersByKey = v2->_providersByKey;
    v2->_providersByKey = v5;

    v7 = objc_opt_new();
    recentProvidersForUuid = v2->_recentProvidersForUuid;
    v2->_recentProvidersForUuid = v7;

    v9 = objc_opt_new();
    streamedAtlases = v2->_streamedAtlases;
    v2->_streamedAtlases = v9;

    v11 = objc_opt_new();
    textureLoaderQueues = v2->_textureLoaderQueues;
    v2->_textureLoaderQueues = v11;

    v13 = CLKRunningInProcess();
    v14 = 36700160;
    if (!v13)
    {
      v14 = -1;
    }

    v2->_memoryLimit = v14;
    v2->_explicitMemoryLimit = -1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__purgeAllUnconditionally name:*MEMORY[0x1E695B4C8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695B4C8] object:0];

  v4.receiver = self;
  v4.super_class = CLKUIResourceManager;
  [(CLKUIResourceManager *)&v4 dealloc];
}

- (id)textureForUuid:(id)uuid delegate:(id)delegate rect:(id)rect nullTexture:(BOOL)texture streaming:
{
  textureCopy = texture;
  v21 = v6;
  uuidCopy = uuid;
  delegateCopy = delegate;
  rectCopy = rect;
  resourceProviderKey = [delegateCopy resourceProviderKey];
  v15 = resourceProviderKey;
  v16 = 0;
  if (uuidCopy && resourceProviderKey)
  {
    v17 = [resourceProviderKey key];
    v18 = [(NSMutableDictionary *)self->_providersByKey objectForKey:v17];
    if (!v18)
    {
      v18 = [objc_opt_new() initWithDelegate:delegateCopy key:v17];
      [(NSMutableDictionary *)self->_providersByKey setObject:v18 forKeyedSubscript:v17];
    }

    [(NSMutableDictionary *)self->_recentProvidersForUuid setObject:v18 forKeyedSubscript:uuidCopy, v21];
    [v18 addUuidToHistory:uuidCopy];
    v19 = [(NSMutableDictionary *)self->_atlasesByUuid objectForKeyedSubscript:uuidCopy];
    if (!v19)
    {
      v19 = [(CLKUIResourceManager *)self _newAtlasForUuid:uuidCopy nullTexture:rectCopy streaming:textureCopy];
      [(NSMutableDictionary *)self->_atlasesByUuid setObject:v19 forKeyedSubscript:uuidCopy];
      if (textureCopy)
      {
        [(NSMutableArray *)self->_streamedAtlases addObject:v19];
      }
    }

    v16 = [[CLKUITexture alloc] initWithAtlas:v19 rect:v22];
  }

  return v16;
}

- (void)purge:(id)purge
{
  v5 = [(NSMutableDictionary *)self->_atlasesByUuid objectForKeyedSubscript:purge];
  if ([v5 isPurgable])
  {
    v4 = objc_opt_new();
    [v4 addObject:v5];
    [(CLKUIResourceManager *)self _purgeAtlases:v4];
  }
}

- (unint64_t)_memoryLimit
{
  result = self->_explicitMemoryLimit;
  if (result == -1)
  {
    return self->_memoryLimit;
  }

  return result;
}

- (unint64_t)_computeMemoryAvailable
{
  if (self->_explicitMemoryLimit == -1 && !CLKRunningInProcess())
  {
    return -1;
  }

  v2 = MEMORY[0x1E691E0A0]();
  if (v2 >= 0x500000)
  {
    return v2 - 5242880;
  }

  else
  {
    return 0;
  }
}

- (id)_fetchOldestAtlas
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_atlasesByUuid;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [(NSMutableDictionary *)self->_atlasesByUuid objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i), v16];
        if ([v10 isPurgable])
        {
          if (v6)
          {
            [v10 boundTime];
            if (v11 < v8)
            {
              v12 = v11;
              v13 = v10;

              v8 = v12;
              v6 = v13;
            }
          }

          else
          {
            v6 = v10;
            [v6 boundTime];
            v8 = v14;
          }
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)borrowTextureLoadingQueue
{
  if ([(NSMutableArray *)self->_textureLoaderQueues count])
  {
    lastObject = [(NSMutableArray *)self->_textureLoaderQueues lastObject];
    [(NSMutableArray *)self->_textureLoaderQueues removeLastObject];
  }

  else
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    lastObject = dispatch_queue_create("CLKUIMetalTexture queue", v4);
  }

  return lastObject;
}

- (BOOL)ensureMemoryAvailable:(unint64_t)available
{
  v37 = *MEMORY[0x1E69E9840];
  _computeMemoryAvailable = [(CLKUIResourceManager *)self _computeMemoryAvailable];
  _memoryLimit = [(CLKUIResourceManager *)self _memoryLimit];
  if (self->_memoryUsed + available > _memoryLimit || _computeMemoryAvailable < available)
  {
    v8 = _memoryLimit;
    v9 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      memoryUsed = self->_memoryUsed;
      *buf = 134218752;
      availableCopy = available;
      v31 = 2048;
      v32 = _computeMemoryAvailable;
      v33 = 2048;
      v34 = memoryUsed;
      v35 = 2048;
      v36 = v8;
      _os_log_impl(&dword_1E49C8000, v9, OS_LOG_TYPE_DEFAULT, "evications begin (needs %lu bytes, %lu available bytes, %lu memory used, %lu limit)", buf, 0x2Au);
    }

    [(CLKUIResourceManager *)self purgeAllUnused];
    _computeMemoryAvailable2 = [(CLKUIResourceManager *)self _computeMemoryAvailable];
    v12 = _computeMemoryAvailable2;
    if (self->_memoryUsed + available > v8 || _computeMemoryAvailable2 < available)
    {
      v13 = objc_opt_new();
      _fetchOldestAtlas = [(CLKUIResourceManager *)self _fetchOldestAtlas];
      if (!_fetchOldestAtlas)
      {
LABEL_19:
        v23 = CLKLoggingObjectForDomain();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = self->_memoryUsed;
          *buf = 134218240;
          availableCopy = v12;
          v31 = 2048;
          v32 = v24;
          _os_log_impl(&dword_1E49C8000, v23, OS_LOG_TYPE_DEFAULT, "evications end: failed (%lu available bytes, %lu memory used)", buf, 0x16u);
        }

        v15 = 0;
        goto LABEL_26;
      }

      v18 = _fetchOldestAtlas;
      *&v17 = 138412290;
      v28 = v17;
      while (1)
      {
        v19 = CLKLoggingObjectForDomain();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [v18 uuid];
          *buf = v28;
          availableCopy = uuid;
          _os_log_impl(&dword_1E49C8000, v19, OS_LOG_TYPE_DEFAULT, "evict uuid %@", buf, 0xCu);
        }

        [v13 addObject:v18];
        [(CLKUIResourceManager *)self _purgeAtlases:v13];
        [v13 removeAllObjects];
        _computeMemoryAvailable3 = [(CLKUIResourceManager *)self _computeMemoryAvailable];
        v12 = _computeMemoryAvailable3;
        if (self->_memoryUsed + available <= v8 && _computeMemoryAvailable3 >= available)
        {
          break;
        }

        _fetchOldestAtlas2 = [(CLKUIResourceManager *)self _fetchOldestAtlas];

        v18 = _fetchOldestAtlas2;
        if (!_fetchOldestAtlas2)
        {
          goto LABEL_19;
        }
      }

      v25 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_memoryUsed;
        *buf = 134218240;
        availableCopy = v12;
        v31 = 2048;
        v32 = v26;
        _os_log_impl(&dword_1E49C8000, v25, OS_LOG_TYPE_DEFAULT, "evications end: success (%lu available bytes, %lu memory used)", buf, 0x16u);
      }
    }

    else
    {
      v13 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_memoryUsed;
        *buf = 134218240;
        availableCopy = v12;
        v31 = 2048;
        v32 = v14;
        _os_log_impl(&dword_1E49C8000, v13, OS_LOG_TYPE_DEFAULT, "evications end: success (%lu available bytes, %lu memory used)", buf, 0x16u);
      }
    }

    v15 = 1;
LABEL_26:

    return v15;
  }

  return 1;
}

- (void)purgeAllUnused
{
  v46 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v3 = self->_providersByKey;
    v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v38;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v38 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v37 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_providersByKey objectForKeyedSubscript:v9];
          delegate = [v10 delegate];
          if (!delegate)
          {
            if (!v6)
            {
              v6 = objc_opt_new();
            }

            [v6 addObject:v9];
          }
        }

        v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = self->_atlasesByUuid;
    v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = 0;
      v17 = *v34;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = [(NSMutableDictionary *)self->_atlasesByUuid objectForKeyedSubscript:*(*(&v33 + 1) + 8 * j)];
          if (![v19 instanceCount])
          {
            if ([v19 isPurgable])
            {
              if (!v16)
              {
                v16 = objc_opt_new();
              }

              [v16 addObject:v19];
            }

            if (!v15)
            {
              v15 = objc_opt_new();
            }

            [v15 addObject:v19];
          }
        }

        v14 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v33 objects:v44 count:16];
      }

      while (v14);

      if (v16)
      {
        [(CLKUIResourceManager *)self _purgeAtlases:v16];
      }

      if (!v6)
      {
        goto LABEL_37;
      }
    }

    else
    {

      v16 = 0;
      v15 = 0;
      if (!v6)
      {
        goto LABEL_37;
      }
    }

    [(NSMutableDictionary *)self->_providersByKey removeObjectsForKeys:v6];
LABEL_37:
    if (v15)
    {
      v28 = v16;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = v15;
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v43 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          for (k = 0; k != v22; ++k)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v29 + 1) + 8 * k);
            uuid = [v25 uuid];
            v27 = CLKLoggingObjectForDomain();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = uuid;
              _os_log_impl(&dword_1E49C8000, v27, OS_LOG_TYPE_DEFAULT, "discard uuid %@", buf, 0xCu);
            }

            [(NSMutableDictionary *)self->_atlasesByUuid removeObjectForKey:uuid];
            [(NSMutableDictionary *)self->_recentProvidersForUuid removeObjectForKey:uuid];
            [(NSMutableArray *)self->_streamedAtlases removeObject:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v29 objects:v43 count:16];
        }

        while (v22);
      }

      v16 = v28;
    }

    return;
  }

  [(CLKUIResourceManager *)self performSelectorOnMainThread:sel_purgeAllUnused withObject:0 waitUntilDone:0];
}

- (void)updateTextureStreaming
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_streamedAtlases;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(CLKUIResourceManager *)self _updateTextureStreamingForAtlas:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)delegateForUuid:(id)uuid
{
  v23 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  v5 = [(NSMutableDictionary *)self->_recentProvidersForUuid objectForKeyedSubscript:uuidCopy];
  v6 = v5;
  if (!v5 || ([v5 delegate], (delegate = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_providersByKey;
    v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v17 = v6;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(NSMutableDictionary *)self->_providersByKey objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
          delegate = [v13 delegate];
          if (delegate)
          {
            uuidHistory = [v13 uuidHistory];
            v15 = [uuidHistory containsObject:uuidCopy];

            if (v15)
            {
              [(NSMutableDictionary *)self->_recentProvidersForUuid setObject:v13 forKeyedSubscript:uuidCopy];

              goto LABEL_14;
            }
          }
        }

        v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      delegate = 0;
LABEL_14:
      v6 = v17;
    }

    else
    {
      delegate = 0;
    }
  }

  return delegate;
}

- (void)_purgeAllUnconditionally
{
  v15 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = objc_opt_new();
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_atlasesByUuid;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableDictionary *)self->_atlasesByUuid objectForKeyedSubscript:*(*(&v10 + 1) + 8 * i), v10];
          if ([v9 isPurgable])
          {
            [v3 addObject:v9];
          }
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(CLKUIResourceManager *)self _purgeAtlases:v3];
  }

  else
  {

    [(CLKUIResourceManager *)self performSelectorOnMainThread:sel__purgeAllUnconditionally withObject:0 waitUntilDone:0];
  }
}

@end
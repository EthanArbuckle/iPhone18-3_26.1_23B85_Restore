@interface CDPurgeableResultCache
+ (id)sharedPurgeableResultsCache;
- (BOOL)hasInvalids;
- (BOOL)hasSnapshotForVolume:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isInvalidForVolume:(id)a3;
- (BOOL)isStale;
- (BOOL)isStaleForVolume:(id)a3;
- (id)bsdDiskForVolume:(id)a3;
- (id)dictionaryByMerging:(id)a3 with:(id)a4;
- (id)initEmpty;
- (id)recentInfoForVolume:(id)a3 atUrgency:(int)a4 validateResults:(BOOL)a5;
- (id)servicesForVolume:(id)a3;
- (id)thresholdsForVolume:(id)a3;
- (int64_t)recentStateForVolume:(id)a3;
- (void)absorbRecentInfo:(id)a3;
- (void)invalidateAllForgettingPushers:(BOOL)a3;
- (void)log;
- (void)updateRecentVolumeInfo:(id)a3;
@end

@implementation CDPurgeableResultCache

+ (id)sharedPurgeableResultsCache
{
  if (qword_1ED76A000 != -1)
  {
    dispatch_once(&qword_1ED76A000, &__block_literal_global_3);
  }

  v3 = _MergedGlobals_3;

  return v3;
}

uint64_t __53__CDPurgeableResultCache_sharedPurgeableResultsCache__block_invoke()
{
  _MergedGlobals_3 = [[CDPurgeableResultCache alloc] initEmpty];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initEmpty
{
  v9.receiver = self;
  v9.super_class = CDPurgeableResultCache;
  v2 = [(CDPurgeableResultCache *)&v9 init];
  if (v2)
  {
    v3 = [CDRecentInfo recentInfoForVolumes:MEMORY[0x1E695E0F8]];
    [(CDPurgeableResultCache *)v2 setRecentPurgeableResults:v3];

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    [(CDPurgeableResultCache *)v2 setQueue:v6];

    v7 = v2;
  }

  return v2;
}

- (id)recentInfoForVolume:(id)a3 atUrgency:(int)a4 validateResults:(BOOL)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v9 = [(CDPurgeableResultCache *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__CDPurgeableResultCache_recentInfoForVolume_atUrgency_validateResults___block_invoke;
  v13[3] = &unk_1E7F02C78;
  v14 = v8;
  v15 = &v18;
  v13[4] = self;
  v16 = a4;
  v17 = a5;
  v10 = v8;
  dispatch_sync(v9, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __72__CDPurgeableResultCache_recentInfoForVolume_atUrgency_validateResults___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) recentPurgeableResults];
  v2 = [v5 _recentInfoForVolume:*(a1 + 40) atUrgency:*(a1 + 56) validateResults:*(a1 + 60)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dictionaryByMerging:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = [[v7 alloc] initWithDictionary:v6];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__CDPurgeableResultCache_dictionaryByMerging_with___block_invoke;
  v14[3] = &unk_1E7F02CA0;
  v10 = v9;
  v15 = v10;
  v16 = v6;
  v17 = self;
  v11 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];

  v12 = v10;
  return v10;
}

void __51__CDPurgeableResultCache_dictionaryByMerging_with___block_invoke(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (![v5 isEqual:@"CACHE_DELETE_NAME_MAP"])
  {
    v7 = [a1[5] objectForKey:v5];

    if (v7)
    {
      v8 = [a1[5] objectForKey:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = CDGetLogHandle("client");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v23 = [a1[5] objectForKey:v5];
            *v24 = 138412802;
            *&v24[4] = v6;
            *&v24[12] = 2112;
            *&v24[14] = v23;
            *&v24[22] = 2112;
            v25 = v5;
            _os_log_debug_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_DEBUG, "invoking again %@ and %@ %@", v24, 0x20u);
          }

          v10 = [a1[6] dictionaryByMerging:v8 with:v6];
          v11 = [v10 count];
          v12 = a1[4];
          if (v11)
          {
            v13 = v10;
          }

          else
          {
            v13 = v8;
          }

          v14 = a1[4];
          goto LABEL_26;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = CDGetLogHandle("client");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *v24 = 138412802;
            *&v24[4] = v6;
            *&v24[12] = 2112;
            *&v24[14] = v8;
            *&v24[22] = 2112;
            v25 = v5;
            _os_log_debug_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEBUG, "adding %@ and %@ %@", v24, 0x20u);
          }

          v16 = evaluateNumberProperty(v6);
          v17 = [v16 unsignedLongLongValue];
          v18 = evaluateNumberProperty(v8);
          v19 = [v18 unsignedLongLongValue];

          v20 = a1[4];
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19 + v17];
          v14 = v20;
          goto LABEL_25;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v8];
        [v10 setObject:v6 forKey:v5];
        v21 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
LABEL_24:

          v14 = a1[4];
LABEL_25:
          v13 = v10;
LABEL_26:
          [v14 setObject:v13 forKey:{v5, *v24, *&v24[16]}];

LABEL_27:
          goto LABEL_28;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_27;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_27;
        }

        v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v6];
        [v10 setObject:v8 forKey:v5];
        v21 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_24;
        }
      }

      *v24 = 138412546;
      *&v24[4] = v10;
      *&v24[12] = 2112;
      *&v24[14] = v5;
      _os_log_debug_impl(&dword_1BA7F1000, v21, OS_LOG_TYPE_DEBUG, "setting %@ for %@", v24, 0x16u);
      goto LABEL_24;
    }
  }

  [a1[4] setObject:v6 forKey:v5];
LABEL_28:

  v22 = *MEMORY[0x1E69E9840];
}

- (int64_t)recentStateForVolume:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v4)
  {
    v5 = [(CDPurgeableResultCache *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__CDPurgeableResultCache_recentStateForVolume___block_invoke;
    block[3] = &unk_1E7F02D18;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(v5, block);

    v6 = v12[3];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __47__CDPurgeableResultCache_recentStateForVolume___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) recentPurgeableResults];
  v2 = [*(a1 + 40) mountPoint];
  *(*(*(a1 + 48) + 8) + 24) = [v3 recentStateForVolume:v2];
}

- (void)updateRecentVolumeInfo:(id)a3
{
  v4 = a3;
  v7 = [(CDPurgeableResultCache *)self recentPurgeableResults];
  v5 = [v7 volumes];
  v6 = [v4 volume];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

- (void)invalidateAllForgettingPushers:(BOOL)a3
{
  v5 = [(CDPurgeableResultCache *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CDPurgeableResultCache_invalidateAllForgettingPushers___block_invoke;
  v6[3] = &unk_1E7F02CC8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __57__CDPurgeableResultCache_invalidateAllForgettingPushers___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [*(a1 + 32) recentPurgeableResults];
  v3 = [v2 volumes];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v10 = [*(a1 + 32) recentPurgeableResults];
        [v10 invalidateForVolume:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  if (*(a1 + 40) == 1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [*(a1 + 32) recentPurgeableResults];
    v12 = [v11 copyPushingServices];

    v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * v16);
          v18 = [*(a1 + 32) recentPurgeableResults];
          v19 = [v18 pushingServices];
          [v19 removeObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEmpty
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CDPurgeableResultCache *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CDPurgeableResultCache_isEmpty__block_invoke;
  v5[3] = &unk_1E7F02CF0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __33__CDPurgeableResultCache_isEmpty__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentPurgeableResults];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isEmpty];
}

- (BOOL)isStale
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CDPurgeableResultCache *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CDPurgeableResultCache_isStale__block_invoke;
  v5[3] = &unk_1E7F02CF0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __33__CDPurgeableResultCache_isStale__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentPurgeableResults];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isStale];
}

- (BOOL)hasInvalids
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CDPurgeableResultCache *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CDPurgeableResultCache_hasInvalids__block_invoke;
  v5[3] = &unk_1E7F02CF0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __37__CDPurgeableResultCache_hasInvalids__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentPurgeableResults];
  *(*(*(a1 + 40) + 8) + 24) = [v2 hasInvalids];
}

- (id)bsdDiskForVolume:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v5 = [(CDPurgeableResultCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CDPurgeableResultCache_bsdDiskForVolume___block_invoke;
  block[3] = &unk_1E7F02D18;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__CDPurgeableResultCache_bsdDiskForVolume___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) recentPurgeableResults];
  v2 = [v5 bsdDiskForVolume:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)thresholdsForVolume:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v5 = [(CDPurgeableResultCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CDPurgeableResultCache_thresholdsForVolume___block_invoke;
  block[3] = &unk_1E7F02D18;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__CDPurgeableResultCache_thresholdsForVolume___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) recentPurgeableResults];
  v2 = [*(a1 + 40) mountPoint];
  v3 = [v6 thresholdsForVolume:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)servicesForVolume:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v5 = [(CDPurgeableResultCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CDPurgeableResultCache_servicesForVolume___block_invoke;
  block[3] = &unk_1E7F02D18;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __44__CDPurgeableResultCache_servicesForVolume___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) recentPurgeableResults];
  v2 = [v5 servicesForVolume:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasSnapshotForVolume:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CDPurgeableResultCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CDPurgeableResultCache_hasSnapshotForVolume___block_invoke;
  block[3] = &unk_1E7F02D18;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __47__CDPurgeableResultCache_hasSnapshotForVolume___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentPurgeableResults];
  *(*(*(a1 + 48) + 8) + 24) = [v2 hasSnapshotForVolume:*(a1 + 40)];
}

- (BOOL)isStaleForVolume:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CDPurgeableResultCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CDPurgeableResultCache_isStaleForVolume___block_invoke;
  block[3] = &unk_1E7F02D18;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __43__CDPurgeableResultCache_isStaleForVolume___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentPurgeableResults];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isStaleForVolume:*(a1 + 40)];
}

- (BOOL)isInvalidForVolume:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CDPurgeableResultCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CDPurgeableResultCache_isInvalidForVolume___block_invoke;
  block[3] = &unk_1E7F02D18;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __45__CDPurgeableResultCache_isInvalidForVolume___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentPurgeableResults];
  v3 = [v2 isInvalidForVolume:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)absorbRecentInfo:(id)a3
{
  v4 = a3;
  v5 = [(CDPurgeableResultCache *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CDPurgeableResultCache_absorbRecentInfo___block_invoke;
  v7[3] = &unk_1E7F02D40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)log
{
  v3 = [(CDPurgeableResultCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CDPurgeableResultCache_log__block_invoke;
  block[3] = &unk_1E7F02D68;
  block[4] = self;
  dispatch_async(v3, block);
}

void __29__CDPurgeableResultCache_log__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) recentPurgeableResults];
  [v1 log];
}

@end
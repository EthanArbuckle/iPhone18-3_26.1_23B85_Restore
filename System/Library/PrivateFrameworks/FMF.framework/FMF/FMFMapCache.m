@interface FMFMapCache
- (BOOL)pendingMapImageForLocation:(id)a3 altitude:(double)a4 pitch:(double)a5 width:(double)a6 andHeight:(double)a7;
- (BOOL)pendingMapImageForRequest:(id)a3;
- (FMFMapCache)init;
- (double)cacheExpiryInSeconds;
- (double)pruneIntervalInSeconds;
- (id)cachedGridImageForWidth:(double)a3 andHeight:(double)a4;
- (id)cachedMapImageForLocation:(id)a3 altitude:(double)a4 pitch:(double)a5 width:(double)a6 andHeight:(double)a7;
- (id)cachedMapImageForRequest:(id)a3;
- (id)cachedNoLocationImageForWidth:(double)a3 andHeight:(double)a4;
- (id)gridKeyForWidth:(double)a3 andHeight:(double)a4;
- (id)noLocationKeyForWidth:(double)a3 andHeight:(double)a4;
- (void)cacheGridImage:(id)a3 forWidth:(double)a4 andHeight:(double)a5;
- (void)cacheMapImage:(id)a3 forLocation:(id)a4 altitude:(double)a5 pitch:(double)a6 width:(double)a7 andHeight:(double)a8;
- (void)cacheMapImage:(id)a3 forRequest:(id)a4;
- (void)cacheNoLocationImage:(id)a3 forWidth:(double)a4 andHeight:(double)a5;
- (void)flushCache;
- (void)pruneCacheIfNeeded;
- (void)readMetaData;
- (void)saveMetaData;
@end

@implementation FMFMapCache

- (FMFMapCache)init
{
  v34 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = FMFMapCache;
  v2 = [(FMFMapCache *)&v29 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D07B70] integerForKey:@"lastPruneTimestamp" inDomain:@"com.apple.findmy"];
    -[FMFMapCache setFileProtectionDeactivated:](v2, "setFileProtectionDeactivated:", [MEMORY[0x277D07B70] BOOLForKey:@"fileProtectionDisabled" inDomain:@"com.apple.findmy"]);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v3];
    [(FMFMapCache *)v2 setLastPruneDate:v4];

    v5 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(FMFMapCache *)v2 fileProtectionDeactivated];
      v7 = [(FMFMapCache *)v2 lastPruneDate];
      *buf = 67109378;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_24A33F000, v5, OS_LOG_TYPE_DEFAULT, "FMFMapCache: File protection deactivated? %i last prune date? %@", buf, 0x12u);
    }

    [(FMFMapCache *)v2 setMapLocationDistanceThreshold:50.0];
    v8 = objc_opt_new();
    [(FMFMapCache *)v2 setCacheMetaData:v8];

    v9 = objc_opt_new();
    [(FMFMapCache *)v2 setGridImageMetaData:v9];

    v10 = objc_opt_new();
    [(FMFMapCache *)v2 setNoLocationImageMetaData:v10];

    v11 = objc_opt_new();
    [(FMFMapCache *)v2 setMapImageMetaData:v11];

    v12 = objc_opt_new();
    [(FMFMapCache *)v2 setPendingMapImageMetaData:v12];

    v13 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v14 = [v13 firstObject];
    v15 = [v14 stringByAppendingPathComponent:@"com.apple.icloud.FMF.FMFMapXPCService"];

    v16 = [v15 stringByAppendingPathComponent:@"FMFMapCacheMeta.data"];
    [(FMFMapCache *)v2 setCachePath:v16];

    [(FMFMapCache *)v2 setImageCachePath:v15];
    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v18 = dispatch_queue_create("com.apple.icloud.FMF.CacheMetaIO", v17);
    [(FMFMapCache *)v2 setCacheMetaQueue:v18];

    v19 = dispatch_queue_create("com.apple.icloud.FMF.GridImageIO", v17);
    [(FMFMapCache *)v2 setGridImageQueue:v19];

    v20 = dispatch_queue_create("com.apple.icloud.FMF.NoLocationImageIO", v17);
    [(FMFMapCache *)v2 setNoLocationImageQueue:v20];

    v21 = dispatch_queue_create("com.apple.icloud.FMF.MapImageIO", v17);
    [(FMFMapCache *)v2 setMapImageQueue:v21];

    v22 = dispatch_queue_create("com.apple.icloud.FMF.PendingImageQueue", v17);
    [(FMFMapCache *)v2 setPendingImageQueue:v22];

    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v24 = [v23 fileExistsAtPath:v15];

    if ((v24 & 1) == 0)
    {
      v25 = LogCategory_FMFMapXPC();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A33F000, v25, OS_LOG_TYPE_DEFAULT, "FMFMapCache: Creating cache folder", buf, 2u);
      }

      v26 = [MEMORY[0x277CCAA00] defaultManager];
      [v26 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:0];
    }

    [(FMFMapCache *)v2 readMetaData];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)cachedGridImageForWidth:(double)a3 andHeight:(double)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(FMFMapCache *)self gridKeyForWidth:a3 andHeight:a4];
  v6 = [(FMFMapCache *)self gridImageMetaData];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    v9 = [v7 path];
    v10 = [v8 dataWithContentsOfFile:v9];

    v11 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_24A33F000, v11, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cachedGridImageForWidth data retreived: %@", &v14, 0xCu);
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)cacheGridImage:(id)a3 forWidth:(double)a4 andHeight:(double)a5
{
  v8 = a3;
  v9 = self;
  v10 = [(FMFMapCache *)v9 gridImageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke;
  block[3] = &unk_278FDE520;
  v17 = a4;
  v18 = a5;
  v14 = v9;
  v15 = v8;
  v16 = v9;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, block);
}

void __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 gridKeyForWidth:*(a1 + 56) andHeight:*(a1 + 64)];
  v4 = [v3 stringByAppendingPathExtension:@"png"];
  v5 = v4;
  v6 = &stru_285D7AA10;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v2 imageCachePath];
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CCA1B0]];
  v11 = [*(a1 + 40) writeToFile:v9 atomically:1];
  v12 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&dword_24A33F000, v12, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cacheGridImage %@", buf, 0xCu);
  }

  if (v11)
  {
    if (([*(a1 + 48) fileProtectionDeactivated] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v13 = objc_claimAutoreleasedReturnValue(), v18 = 0, objc_msgSend(v13, "setAttributes:ofItemAtPath:error:", v10, v9, &v18), v14 = v18, v13, !v14))
    {
      v14 = [[FMFMapCacheImage alloc] initWithPath:v9];
      v16 = [v2 gridImageMetaData];
      [v16 setObject:v14 forKey:v3];

      [v2 saveMetaData];
    }

    else
    {
      v15 = LogCategory_FMFMapXPC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v14 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_24A33F000, &v14->super, OS_LOG_TYPE_DEFAULT, "FMFMapCache: Unable to write grid image to disk %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)cachedNoLocationImageForWidth:(double)a3 andHeight:(double)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(FMFMapCache *)self noLocationKeyForWidth:a3 andHeight:a4];
  v6 = [(FMFMapCache *)self noLocationImageMetaData];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    v9 = [v7 path];
    v10 = [v8 dataWithContentsOfFile:v9];

    v11 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_24A33F000, v11, OS_LOG_TYPE_DEFAULT, "FMFMapCache: noLocationImageForWidth data retreived: %@", &v14, 0xCu);
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)cacheNoLocationImage:(id)a3 forWidth:(double)a4 andHeight:(double)a5
{
  v8 = a3;
  v9 = self;
  v10 = [(FMFMapCache *)v9 noLocationImageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__FMFMapCache_cacheNoLocationImage_forWidth_andHeight___block_invoke;
  block[3] = &unk_278FDE520;
  v17 = a4;
  v18 = a5;
  v14 = v9;
  v15 = v8;
  v16 = v9;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, block);
}

void __55__FMFMapCache_cacheNoLocationImage_forWidth_andHeight___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 noLocationKeyForWidth:*(a1 + 56) andHeight:*(a1 + 64)];
  v4 = [v3 stringByAppendingPathExtension:@"png"];
  v5 = v4;
  v6 = &stru_285D7AA10;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v2 imageCachePath];
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CCA1B0]];
  v11 = [*(a1 + 40) writeToFile:v9 atomically:1];
  v12 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&dword_24A33F000, v12, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cacheNoLocationImage %@", buf, 0xCu);
  }

  if (v11)
  {
    if (([*(a1 + 48) fileProtectionDeactivated] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v13 = objc_claimAutoreleasedReturnValue(), v18 = 0, objc_msgSend(v13, "setAttributes:ofItemAtPath:error:", v10, v9, &v18), v14 = v18, v13, !v14))
    {
      v14 = [[FMFMapCacheImage alloc] initWithPath:v9];
      v16 = [v2 noLocationImageMetaData];
      [v16 setObject:v14 forKey:v3];

      [v2 saveMetaData];
    }

    else
    {
      v15 = LogCategory_FMFMapXPC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v14 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_24A33F000, &v14->super, OS_LOG_TYPE_DEFAULT, "FMFMapCache: Unable to write grid image to disk %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)cachedMapImageForRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FMFMapCache *)self mapImageMetaData];
  v6 = [v4 key];

  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    v9 = [v7 path];
    v10 = [v8 dataWithContentsOfFile:v9];

    v11 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_24A33F000, v11, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cachedMapImageForRequest data retreived: %@", &v14, 0xCu);
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)cachedMapImageForLocation:(id)a3 altitude:(double)a4 pitch:(double)a5 width:(double)a6 andHeight:(double)a7
{
  v12 = a3;
  v13 = [[FMFMapImageRequest alloc] initWithLocation:v12 altitude:1 pitch:a4 width:a5 height:a6 andCachingEnabled:a7];

  v14 = [(FMFMapCache *)self cachedMapImageForRequest:v13];

  return v14;
}

- (void)cacheMapImage:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(FMFMapCache *)self mapImageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FMFMapCache_cacheMapImage_forRequest___block_invoke;
  block[3] = &unk_278FDE570;
  objc_copyWeak(&v15, &location);
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __40__FMFMapCache_cacheMapImage_forRequest___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [a1[4] key];
  v4 = [v3 stringByAppendingPathExtension:@"png"];
  v5 = v4;
  v6 = &stru_285D7AA10;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [WeakRetained imageCachePath];
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CCA1B0]];
  v11 = [a1[5] writeToFile:v9 atomically:1];
  v12 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v9;
    _os_log_impl(&dword_24A33F000, v12, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cacheMapImage %@", buf, 0xCu);
  }

  if ((v11 & 1) == 0)
  {
    v15 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v9;
      v27 = 2112;
      v28 = 0;
      _os_log_impl(&dword_24A33F000, &v15->super, OS_LOG_TYPE_DEFAULT, "FMFMapCache: Unable to write map image to disk %@ %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  if (([a1[6] fileProtectionDeactivated] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v13 = objc_claimAutoreleasedReturnValue(), v24 = 0, objc_msgSend(v13, "setAttributes:ofItemAtPath:error:", v10, v9, &v24), v14 = v24, v13, !v14))
  {
    v15 = [[FMFMapCacheImage alloc] initWithPath:v9];
    v16 = [WeakRetained mapImageMetaData];
    [v16 setObject:v15 forKey:v3];

    [WeakRetained saveMetaData];
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v15 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
  {
    __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke_cold_1();
  }

LABEL_14:

  v17 = [WeakRetained pendingImageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FMFMapCache_cacheMapImage_forRequest___block_invoke_59;
  block[3] = &unk_278FDE548;
  v22 = WeakRetained;
  v23 = v3;
  v18 = v3;
  v19 = WeakRetained;
  dispatch_sync(v17, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __40__FMFMapCache_cacheMapImage_forRequest___block_invoke_59(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingMapImageMetaData];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) pendingMapImageMetaData];
    [v4 removeObjectForKey:*(a1 + 40)];
  }
}

- (void)cacheMapImage:(id)a3 forLocation:(id)a4 altitude:(double)a5 pitch:(double)a6 width:(double)a7 andHeight:(double)a8
{
  v14 = a4;
  v15 = a3;
  v16 = [[FMFMapImageRequest alloc] initWithLocation:v14 altitude:1 pitch:a5 width:a6 height:a7 andCachingEnabled:a8];

  [(FMFMapCache *)self cacheMapImage:v15 forRequest:v16];
}

- (BOOL)pendingMapImageForRequest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v5 = [(FMFMapCache *)self pendingImageQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__FMFMapCache_pendingMapImageForRequest___block_invoke;
  v8[3] = &unk_278FDE598;
  objc_copyWeak(&v11, &location);
  v9 = v4;
  v10 = &v12;
  v6 = v4;
  dispatch_sync(v5, v8);

  LOBYTE(v5) = *(v13 + 24);
  objc_destroyWeak(&v11);
  _Block_object_dispose(&v12, 8);
  objc_destroyWeak(&location);
  return v5;
}

void __41__FMFMapCache_pendingMapImageForRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) key];
  v3 = [v2 stringByAppendingPathExtension:@"png"];
  v4 = v3;
  v5 = &stru_285D7AA10;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [WeakRetained imageCachePath];
  v8 = [v7 stringByAppendingPathComponent:v6];

  v9 = [WeakRetained pendingMapImageMetaData];
  v10 = [v9 objectForKeyedSubscript:v2];

  if (!v10)
  {
    v11 = [WeakRetained pendingMapImageMetaData];
    [v11 setObject:v8 forKey:v2];

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)pendingMapImageForLocation:(id)a3 altitude:(double)a4 pitch:(double)a5 width:(double)a6 andHeight:(double)a7
{
  v12 = a3;
  v13 = [[FMFMapImageRequest alloc] initWithLocation:v12 altitude:1 pitch:a4 width:a5 height:a6 andCachingEnabled:a7];

  LOBYTE(self) = [(FMFMapCache *)self pendingMapImageForRequest:v13];
  return self;
}

- (void)readMetaData
{
  v2 = self;
  v3 = [(FMFMapCache *)v2 cacheMetaQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__FMFMapCache_readMetaData__block_invoke;
  v5[3] = &unk_278FDE548;
  v6 = v2;
  v7 = v2;
  v4 = v2;
  dispatch_sync(v3, v5);
}

void __27__FMFMapCache_readMetaData__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  v7 = MEMORY[0x277CCAAC8];
  v8 = MEMORY[0x277CBEA90];
  v9 = [v2 cachePath];
  v10 = [v8 dataWithContentsOfFile:v9];
  v28 = 0;
  v11 = [v7 unarchivedObjectOfClasses:v6 fromData:v10 error:&v28];
  v12 = v28;

  if (v12)
  {
    v13 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __27__FMFMapCache_readMetaData__block_invoke_cold_1(v12, v13);
    }
  }

  v14 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __27__FMFMapCache_readMetaData__block_invoke_cold_2(v11, v14);
  }

  v15 = [v11 allKeys];
  if ([v15 count] == 4)
  {
    v16 = [v11 objectForKeyedSubscript:@"version"];
    v17 = [v16 isEqualToString:@"2"];

    if (v17)
    {
      [v2 setCacheMetaData:v11];
      v18 = [v11 objectForKeyedSubscript:@"gridImage"];
      [v2 setGridImageMetaData:v18];

      v19 = [v11 objectForKeyedSubscript:@"noLocationImage"];
      [v2 setNoLocationImageMetaData:v19];

      v20 = [v11 objectForKeyedSubscript:@"mapImage"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v11 objectForKeyedSubscript:@"mapImage"];
        [v2 setMapImageMetaData:v21];
      }

      v22 = LogCategory_FMFMapXPC();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v2 mapImageMetaData];
        v24 = [v23 allValues];
        v25 = [v24 count];
        *buf = 134217984;
        v30 = v25;
        _os_log_impl(&dword_24A33F000, v22, OS_LOG_TYPE_DEFAULT, "FMFMapCache: found entries in cache %ld", buf, 0xCu);
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v26 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v26, OS_LOG_TYPE_DEFAULT, "FMFMapCache: flushing cache because of version mismatch", buf, 2u);
  }

  [*(a1 + 40) flushCache];
LABEL_18:
  [*(a1 + 40) pruneCacheIfNeeded];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)saveMetaData
{
  v2 = self;
  v3 = [(FMFMapCache *)v2 cacheMetaQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__FMFMapCache_saveMetaData__block_invoke;
  v5[3] = &unk_278FDE548;
  v6 = v2;
  v7 = v2;
  v4 = v2;
  dispatch_sync(v3, v5);
}

void __27__FMFMapCache_saveMetaData__block_invoke(uint64_t a1)
{
  *&v27[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  [v3 setObject:@"2" forKey:@"version"];
  v4 = [v2 gridImageMetaData];
  [v3 setObject:v4 forKeyedSubscript:@"gridImage"];

  v5 = [v2 noLocationImageMetaData];
  [v3 setObject:v5 forKeyedSubscript:@"noLocationImage"];

  v6 = [v2 mapImageMetaData];
  [v3 setObject:v6 forKeyedSubscript:@"mapImage"];

  v25 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v25];
  v8 = v25;
  if (v8)
  {
    v9 = v8;
    v10 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __27__FMFMapCache_saveMetaData__block_invoke_cold_1(v9, v10);
    }

    goto LABEL_19;
  }

  v11 = [v2 cachePath];
  v12 = [v7 writeToFile:v11 atomically:1];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CCA1B0]];
  v13 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v2 mapImageMetaData];
    v15 = [v14 allValues];
    v16 = [v15 count];
    *buf = 134217984;
    *v27 = v16;
    _os_log_impl(&dword_24A33F000, v13, OS_LOG_TYPE_DEFAULT, "FMFMapCache: save map images %ld", buf, 0xCu);
  }

  if ((v12 & 1) == 0)
  {
    v17 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v2 cachePath];
      *buf = 138412290;
      *v27 = v18;
      _os_log_impl(&dword_24A33F000, v17, OS_LOG_TYPE_DEFAULT, "FMFMapCache: Unable to write meta data to disk %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_15;
  }

  if (([*(a1 + 40) fileProtectionDeactivated] & 1) == 0)
  {
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [v2 cachePath];
    v24 = 0;
    [v19 setAttributes:v10 ofItemAtPath:v20 error:&v24];
    v9 = v24;

    if (!v9)
    {
      goto LABEL_16;
    }

    v17 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __27__FMFMapCache_saveMetaData__block_invoke_cold_2(v9, v2, v17);
    }

LABEL_15:

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:
  v21 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 40) fileProtectionDeactivated];
    *buf = 67109376;
    v27[0] = v12;
    LOWORD(v27[1]) = 1024;
    *(&v27[1] + 2) = v22;
    _os_log_impl(&dword_24A33F000, v21, OS_LOG_TYPE_DEFAULT, "FMFMapCache: FMFMapCache: Save meta data? %d %i", buf, 0xEu);
  }

LABEL_19:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)flushCache
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(FMFMapCache *)self imageCachePath];
  v5 = [v3 enumeratorAtPath:v4];

  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = LogCategory_FMFMapXPC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A33F000, v8, OS_LOG_TYPE_DEFAULT, "FMFMapCache: clearing file", buf, 2u);
      }

      v9 = [(FMFMapCache *)self imageCachePath];
      v10 = [v9 stringByAppendingPathComponent:v7];

      v17 = 0;
      v11 = [v3 removeItemAtPath:v10 error:&v17];
      v12 = v17;
      v13 = v12;
      if ((v11 & 1) == 0 && v12)
      {
        v14 = LogCategory_FMFMapXPC();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = v10;
          v20 = 2112;
          v21 = v13;
          _os_log_error_impl(&dword_24A33F000, v14, OS_LOG_TYPE_ERROR, "FMFMapCache: error deleting file: %@ error: %@", buf, 0x16u);
        }
      }

      v15 = [v5 nextObject];

      v7 = v15;
    }

    while (v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)pruneCacheIfNeeded
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "FMFMapCache: pruneCacheIfNeeded", buf, 2u);
  }

  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  v6 = v5;
  v7 = [(FMFMapCache *)self lastPruneDate];
  [v7 timeIntervalSince1970];
  v9 = v6 - v8;
  [(FMFMapCache *)self pruneIntervalInSeconds];
  v11 = v10;

  if (v9 > v11)
  {
    v39 = v4;
    v12 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A33F000, v12, OS_LOG_TYPE_DEFAULT, "FMFMapCache: prunning cache....", buf, 2u);
    }

    v41 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [(FMFMapCache *)self mapImageMetaData];
    v40 = [v13 mutableCopy];

    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSince1970];
    v16 = v15;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = [(FMFMapCache *)self mapImageMetaData];
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      do
      {
        v21 = 0;
        do
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v43 + 1) + 8 * v21);
          v23 = [(FMFMapCache *)self mapImageMetaData];
          v24 = [v23 objectForKeyedSubscript:v22];

          v25 = [v24 timestamp];
          [v25 timeIntervalSince1970];
          v27 = v16 - v26;
          [(FMFMapCache *)self cacheExpiryInSeconds];
          v29 = v28;

          if (v27 > v29)
          {
            v30 = LogCategory_FMFMapXPC();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v48 = v24;
              _os_log_impl(&dword_24A33F000, v30, OS_LOG_TYPE_DEFAULT, "FMFMapCache: removing file: %@", buf, 0xCu);
            }

            v31 = [v24 path];
            v42 = 0;
            v32 = [v41 removeItemAtPath:v31 error:&v42];
            v33 = v42;

            if ((v32 & 1) == 0 && v33)
            {
              v34 = LogCategory_FMFMapXPC();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = [v24 path];
                *buf = 138412546;
                v48 = v35;
                v49 = 2112;
                v50 = v33;
                _os_log_error_impl(&dword_24A33F000, v34, OS_LOG_TYPE_ERROR, "FMFMapCache: error pruning file: %@ error: %@", buf, 0x16u);
              }
            }

            [v40 setObject:0 forKeyedSubscript:v22];
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v19);
    }

    v4 = v39;
    [(FMFMapCache *)self setLastPruneDate:v39];
    [(FMFMapCache *)self setMapImageMetaData:v40];
    v36 = MEMORY[0x277D07B70];
    [v39 timeIntervalSince1970];
    [v36 setInteger:v37 forKey:@"lastPruneTimestamp" inDomain:@"com.apple.findmy"];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (id)gridKeyForWidth:(double)a3 andHeight:(double)a4
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v6 = [v5 stringValue];
  v7 = [@"gridImage" stringByAppendingString:v6];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v9 = [v8 stringValue];
  v10 = [v7 stringByAppendingString:v9];

  return v10;
}

- (id)noLocationKeyForWidth:(double)a3 andHeight:(double)a4
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v6 = [v5 stringValue];
  v7 = [@"noLocationImage" stringByAppendingString:v6];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v9 = [v8 stringValue];
  v10 = [v7 stringByAppendingString:v9];

  return v10;
}

- (double)cacheExpiryInSeconds
{
  if (cacheExpiryInSeconds_onceToken != -1)
  {
    [FMFMapCache cacheExpiryInSeconds];
  }

  return *&cacheExpiryInSeconds_cacheExpiryInSeconds;
}

void __35__FMFMapCache_cacheExpiryInSeconds__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D07B70] integerForKey:@"cacheExpiryInSecondsOverride" inDomain:@"com.apple.findmy"];
  if (v0 >= 1)
  {
    v1 = v0;
    *&cacheExpiryInSeconds_cacheExpiryInSeconds = v0;
    v2 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v1;
      _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cache expiry overriden to %f", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (double)pruneIntervalInSeconds
{
  if (pruneIntervalInSeconds_onceToken != -1)
  {
    [FMFMapCache pruneIntervalInSeconds];
  }

  return *&pruneIntervalInSeconds_pruneIntervalInSeconds;
}

void __37__FMFMapCache_pruneIntervalInSeconds__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D07B70] integerForKey:@"pruneIntervalInSecondsOverride" inDomain:@"com.apple.findmy"];
  if (v0 >= 1)
  {
    v1 = v0;
    *&pruneIntervalInSeconds_pruneIntervalInSeconds = v0;
    v2 = LogCategory_FMFMapXPC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v1;
      _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "FMFMapCache: prune interval overriden to %f", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_24A33F000, v0, v1, "FMFMapCache: Error setting file protection %@ %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __27__FMFMapCache_readMetaData__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A33F000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving map cache: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __27__FMFMapCache_readMetaData__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24A33F000, a2, OS_LOG_TYPE_DEBUG, "FMFMapCache: meta data content %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __27__FMFMapCache_saveMetaData__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A33F000, a2, OS_LOG_TYPE_ERROR, "FMFMapCache: saveMetaData error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __27__FMFMapCache_saveMetaData__block_invoke_cold_2(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 cachePath];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_24A33F000, a3, OS_LOG_TYPE_ERROR, "FMFMapCache: Error setting file protection %@ %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end
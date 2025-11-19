@interface GKNetworkImageSource
- (BOOL)imageNeedsRefresh:(id)a3;
- (void)loadAndCacheAvatarFromGamedForURLString:(id)a3 useUIImage:(BOOL)a4 cacheSubdirectory:(id)a5 reference:(id)a6 queue:(id)a7 handler:(id)a8;
- (void)loadImageForURLString:(id)a3 loader:(id)a4 reference:(id)a5 queue:(id)a6 handler:(id)a7;
- (void)loadImageForURLString:(id)a3 reference:(id)a4 queue:(id)a5 handler:(id)a6;
@end

@implementation GKNetworkImageSource

- (BOOL)imageNeedsRefresh:(id)a3
{
  v4 = a3;
  v5 = [(GKImageSource *)self renderedDefaultImage];

  return v5 == v4;
}

- (void)loadImageForURLString:(id)a3 reference:(id)a4 queue:(id)a5 handler:(id)a6
{
  v10 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__GKNetworkImageSource_loadImageForURLString_reference_queue_handler___block_invoke;
  v12[3] = &unk_27967F508;
  v13 = v10;
  v14 = self;
  v11 = v10;
  [(GKNetworkImageSource *)self loadImageForURLString:v11 loader:v12 reference:a4 queue:a5 handler:a6];
}

void __70__GKNetworkImageSource_loadImageForURLString_reference_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  v6 = [objc_opt_class() syncQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__GKNetworkImageSource_loadImageForURLString_reference_queue_handler___block_invoke_2;
  v8[3] = &unk_27967F4E0;
  v9 = v3;
  v7 = v3;
  [v4 _gkloadRemoteImageForURL:v5 queue:v6 withCompletionHandler:v8];
}

- (void)loadAndCacheAvatarFromGamedForURLString:(id)a3 useUIImage:(BOOL)a4 cacheSubdirectory:(id)a5 reference:(id)a6 queue:(id)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v17)
  {
    v17 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85CD0];
  }

  v20 = MEMORY[0x277D0C020];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKImageSource.m", 705, "-[GKNetworkImageSource loadAndCacheAvatarFromGamedForURLString:useUIImage:cacheSubdirectory:reference:queue:handler:]"];
  v22 = [v20 dispatchGroupWithName:v21];

  if (v14)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke;
    v27[3] = &unk_27967F5D0;
    v27[4] = self;
    v28 = v15;
    v31 = a4;
    v29 = v22;
    v30 = v14;
    [v29 perform:v27];
  }

  if (v18)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_2_259;
    v23[3] = &unk_27967F5F8;
    v26 = v18;
    v24 = v22;
    v25 = v16;
    [v24 notifyOnQueue:v17 block:v23];
  }
}

void __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_2;
  block[3] = &unk_27967F5A8;
  v10 = *(a1 + 32);
  v5 = *(&v10 + 1);
  v15 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = v3;
  v9 = v3;
  dispatch_async(v4, block);
}

void __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) keyForImageIdentifier:*(a1 + 40)];
  v3 = [v2 cacheKey];
  v35 = v3;
  v4 = [*(a1 + 32) cache];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    [v5 prepareForUsingUIImage:*(a1 + 72)];
    [*(a1 + 48) setResult:v5];
    v6 = MEMORY[0x277D0C2A0];
    v7 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_2_cold_1();
    }
  }

  else
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_252;
    v27[3] = &unk_27967F580;
    v28 = *(a1 + 48);
    v29 = *(a1 + 56);
    v30 = *(a1 + 40);
    v12 = v2;
    v34 = *(a1 + 72);
    v13 = *(a1 + 32);
    v31 = v12;
    v32 = v13;
    v14 = v3;
    v33 = v14;
    v15 = MEMORY[0x253041B30](v27);
    v16 = [*(a1 + 32) loadingGroups];

    if (v16)
    {
      v17 = [*(a1 + 32) loadingGroups];
      v18 = [v17 objectForKeyedSubscript:v14];

      if (v18)
      {
        if (!*MEMORY[0x277D0C2A0])
        {
          v19 = GKOSLoggers();
        }

        if (os_log_type_enabled(*MEMORY[0x277D0C268], OS_LOG_TYPE_DEBUG))
        {
          __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_2_cold_2();
        }

        v20 = *(a1 + 48);
        v21 = [objc_opt_class() syncQueue];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_258;
        v24[3] = &unk_27967F188;
        v25 = *(a1 + 48);
        v26 = v18;
        [v20 join:v26 queue:v21 block:v24];
      }

      else
      {
        v23 = [*(a1 + 32) loadingGroups];
        [v23 setObject:*(a1 + 48) forKeyedSubscript:v14];

        v15[2](v15);
      }
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjects:a1 + 48 forKeys:&v35 count:1];
      [*(a1 + 32) setLoadingGroups:v22];

      v15[2](v15);
    }
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v9, v10, v11);
}

void __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_252(uint64_t a1)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_2_253;
  v10[3] = &unk_27967F558;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v15 = *(a1 + 80);
  v6 = *(a1 + 32);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v9 = *(a1 + 72);
  v13 = *(a1 + 64);
  v14 = v9;
  [v2 perform:v10];
}

void __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_2_253(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  v5 = [MEMORY[0x277D0C010] daemonProxy];
  v6 = [v5 utilityService];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) basename];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_3;
  v13[3] = &unk_27967F530;
  v19 = *(a1 + 80);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 32);
  v18 = v3;
  v12 = v3;
  [v6 requestImageDataForURL:v4 subdirectory:v7 fileName:v8 handler:v13];
}

void __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [[GKAvatarImage alloc] initWithPNGData:v3 useUIImage:*(a1 + 72)];
    [*(a1 + 32) setResult:v4];
    v5 = [*(a1 + 40) cache];
    [v5 setObject:v4 forKey:*(a1 + 48)];

    v6 = MEMORY[0x277D0C2A0];
    v7 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_3_cold_1();
    }
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_3_cold_2();
    }
  }

  v10 = [*(a1 + 40) loadingGroups];
  [v10 removeObjectForKey:*(a1 + 48)];

  (*(*(a1 + 64) + 16))();
}

void __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_258(uint64_t a1)
{
  v2 = [*(a1 + 40) result];
  [*(a1 + 32) setResult:v2];
}

void __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_2_259(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) result];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

- (void)loadImageForURLString:(id)a3 loader:(id)a4 reference:(id)a5 queue:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v15)
  {
    v15 = MEMORY[0x277D85CD0];
    v17 = MEMORY[0x277D85CD0];
  }

  v18 = MEMORY[0x277D0C020];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKImageSource.m", 788, "-[GKNetworkImageSource loadImageForURLString:loader:reference:queue:handler:]"];
  v20 = [v18 dispatchGroupWithName:v19];

  if ([(GKImageSource *)self shouldUseTestImage])
  {
    if (v16)
    {
      v21 = [(GKImageSource *)self renderedTestImage];
      [v20 setResult:v21];

LABEL_9:
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_2_261;
      v22[3] = &unk_27967F5F8;
      v25 = v16;
      v23 = v20;
      v24 = v14;
      [v23 notifyOnQueue:v15 block:v22];
    }
  }

  else
  {
    if (v12)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke;
      v26[3] = &unk_27967F6C0;
      v26[4] = self;
      v27 = v12;
      v28 = v20;
      v29 = v13;
      [v28 perform:v26];
    }

    if (v16)
    {
      goto LABEL_9;
    }
  }
}

void __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_2;
  block[3] = &unk_27967F698;
  v10 = *(a1 + 32);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = v3;
  v9 = v3;
  dispatch_async(v4, block);
}

void __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedImageForIdentifier:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 48) setResult:v2];
  }

  else
  {
    v6 = [*(a1 + 32) keyForImageIdentifier:*(a1 + 40)];
    v29 = [v6 cacheKey];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_3;
    v23[3] = &unk_27967F670;
    v24 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v28 = v7;
    v25 = v8;
    v26 = v9;
    v10 = v29;
    v27 = v10;
    v11 = MEMORY[0x253041B30](v23);
    v12 = [*(a1 + 32) loadingGroups];

    if (v12)
    {
      v13 = [*(a1 + 32) loadingGroups];
      v14 = [v13 objectForKeyedSubscript:v10];

      if (v14)
      {
        if (!*MEMORY[0x277D0C2A0])
        {
          v15 = GKOSLoggers();
        }

        if (os_log_type_enabled(*MEMORY[0x277D0C268], OS_LOG_TYPE_DEBUG))
        {
          __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_2_cold_1();
        }

        v16 = *(a1 + 48);
        v17 = [objc_opt_class() syncQueue];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_260;
        v20[3] = &unk_27967F188;
        v21 = *(a1 + 48);
        v22 = v14;
        [v16 join:v22 queue:v17 block:v20];
      }

      else
      {
        v19 = [*(a1 + 32) loadingGroups];
        [v19 setObject:*(a1 + 48) forKeyedSubscript:v10];

        v11[2](v11);
      }
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjects:a1 + 48 forKeys:&v29 count:1];
      [*(a1 + 32) setLoadingGroups:v18];

      v11[2](v11);
    }
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v3, v4, v5);
}

void __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_4;
  v9[3] = &unk_27967F648;
  v12 = *(a1 + 64);
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v8;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  [v2 perform:v9];
}

void __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_5;
  v12[3] = &unk_27967F620;
  v11 = *(a1 + 32);
  v5 = *(&v11 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v11;
  v14 = v8;
  v15 = v3;
  v9 = *(v4 + 16);
  v10 = v3;
  v9(v4, v12);
}

void __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) processAndCacheImage:v3 forIdentifier:*(a1 + 40)];
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C268], OS_LOG_TYPE_DEBUG))
    {
      __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_5_cold_1();
    }

    v4 = [*(a1 + 32) renderedDefaultImage];
  }

  v6 = v4;
  [*(a1 + 48) setResult:v4];
  v7 = [*(a1 + 32) loadingGroups];
  [v7 removeObjectForKey:*(a1 + 56)];

  (*(*(a1 + 64) + 16))();
}

void __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_260(uint64_t a1)
{
  v2 = [*(a1 + 40) result];
  [*(a1 + 32) setResult:v2];
}

void __77__GKNetworkImageSource_loadImageForURLString_loader_reference_queue_handler___block_invoke_2_261(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) result];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void __117__GKNetworkImageSource_loadAndCacheAvatarFromGamedForURLString_useUIImage_cacheSubdirectory_reference_queue_handler___block_invoke_3_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_24E4A8000, v1, OS_LOG_TYPE_ERROR, "Failed to load avatar image from gamed: %@\ncache key: %@", v2, 0x16u);
}

@end
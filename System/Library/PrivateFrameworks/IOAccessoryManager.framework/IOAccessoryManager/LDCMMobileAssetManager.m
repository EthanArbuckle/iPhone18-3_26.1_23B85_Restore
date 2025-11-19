@interface LDCMMobileAssetManager
- (LDCMMobileAssetManager)init;
- (LDCMMobileAssetManagerDelegate)delegate;
- (void)downloadAsset:(id)a3;
- (void)downloadCatalog;
- (void)processAsset:(id)a3;
- (void)queryMetadata;
- (void)scheduleNextQueryAsRetry:(BOOL)a3;
- (void)updateMetadata;
@end

@implementation LDCMMobileAssetManager

- (LDCMMobileAssetManager)init
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = LDCMMobileAssetManager;
  v2 = [(LDCMMobileAssetManager *)&v24 init];
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[LDCMMobileAssetManager init]";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Initializing LDCM Asset Manager", buf, 0xCu);
    }

    v4 = dispatch_get_global_queue(9, 0);
    v5 = dispatch_queue_create_with_target_V2("LDCMAssetManagerQueue", 0, v4);
    assetManagerQueue = v3->_assetManagerQueue;
    v3->_assetManagerQueue = v5;

    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3->_assetManagerQueue);
    timer = v3->_timer;
    v3->_timer = v7;

    if (v3->_timer)
    {
      v3->_lastProcessedAssetVersion = 0;
      v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v10 = [(LDCMMobileAssetManager *)v9 integerForKey:@"LDCMAssetQueryFrequency"];
      v11 = [(LDCMMobileAssetManager *)v9 integerForKey:@"LDCMAssetQueryFrequencyTolerance"];
      v12 = [(LDCMMobileAssetManager *)v9 integerForKey:@"LDCMAssetRetryQueryFrequency"];
      v13 = [(LDCMMobileAssetManager *)v9 integerForKey:@"LDCMAssetRetryQueryFrequencyTolerance"];
      if (v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = 259200;
      }

      if (v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = 172800;
      }

      v3->_queryFrequencySec = v14;
      v3->_queryFrequencyToleranceSec = v15;
      if (v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = 86400;
      }

      if (v13)
      {
        v17 = v13;
      }

      else
      {
        v17 = 86400;
      }

      v3->_retryQueryFrequencySec = v16;
      v3->_retryQueryFrequencyToleranceSec = v17;
      v18 = v3->_timer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __30__LDCMMobileAssetManager_init__block_invoke;
      handler[3] = &unk_279793120;
      v19 = v3;
      v23 = v19;
      dispatch_source_set_event_handler(v18, handler);
      dispatch_source_set_timer(v3->_timer, 0, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(v3->_timer);

      v3 = v9;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __30__LDCMMobileAssetManager_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__LDCMMobileAssetManager_init__block_invoke_2;
  block[3] = &unk_279793120;
  v4 = v1;
  dispatch_async(v2, block);
}

uint64_t __30__LDCMMobileAssetManager_init__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[LDCMMobileAssetManager init]_block_invoke_2";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s LDCM Asset timer fired, querying metadata", &v4, 0xCu);
  }

  result = [*(a1 + 32) queryMetadata];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queryMetadata
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to query metadata (%ld)", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)downloadCatalog
{
  v3 = objc_opt_new();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__LDCMMobileAssetManager_downloadCatalog__block_invoke;
  v4[3] = &unk_2797933E8;
  v4[4] = self;
  [MEMORY[0x277D289C0] startCatalogDownload:@"com.apple.MobileAsset.IOAccessoryManager" options:v3 then:v4];
}

void __41__LDCMMobileAssetManager_downloadCatalog__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__LDCMMobileAssetManager_downloadCatalog__block_invoke_2;
  v4[3] = &unk_2797933C0;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

uint64_t __41__LDCMMobileAssetManager_downloadCatalog__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 40);
  if (*(a1 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __41__LDCMMobileAssetManager_downloadCatalog__block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    return [*(a1 + 32) scheduleNextQueryAsRetry:1];
  }

  else
  {
    v11 = *(a1 + 32);

    return [v11 updateMetadata];
  }
}

- (void)updateMetadata
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.IOAccessoryManager"];
  [v2 setDoNotBlockBeforeFirstUnlock:1];
  [v2 queryMetaDataSync];
  v3 = [v2 results];
  if (!v3 || (v4 = v3, [v2 results], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, !v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v44 = "[LDCMMobileAssetManager updateMetadata]";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s Query had no results", buf, 0xCu);
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = v2;
  obj = [v2 results];
  v7 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (!v7)
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    goto LABEL_30;
  }

  v8 = v7;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v35 = *v40;
  v9 = *MEMORY[0x277D288E8];
  v10 = *MEMORY[0x277D28900];
  v11 = MEMORY[0x277D86220];
  do
  {
    v12 = 0;
    do
    {
      if (*v40 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v39 + 1) + 8 * v12);
      v14 = [v13 attributes];
      v15 = [v14 objectForKeyedSubscript:v9];
      v16 = [v15 intValue];

      v17 = [v13 attributes];
      v18 = [v17 objectForKeyedSubscript:v10];
      v19 = [v18 intValue];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v20 = [v13 state];
        *buf = 136315650;
        v44 = "[LDCMMobileAssetManager updateMetadata]";
        v45 = 2048;
        *v46 = v20;
        *&v46[8] = 1024;
        v47[0] = v19;
        _os_log_impl(&dword_2548F1000, v11, OS_LOG_TYPE_INFO, "%s found asset state:%ld version:%d", buf, 0x1Cu);
      }

      if ([(LDCMMobileAssetManager *)self supportsCompatabilityVersion:v16])
      {
        if ([v13 state] != 2)
        {
          if (SHIDWORD(v33) >= v19)
          {
            goto LABEL_24;
          }

          v25 = v31;
          HIDWORD(v33) = v19;
          v31 = v13;
          goto LABEL_23;
        }

        if (v33 >= v19)
        {
          goto LABEL_24;
        }

        v21 = v13;
        if (v32)
        {
          v22 = [v32 attributes];
          v23 = [v22 objectForKeyedSubscript:v10];
          v24 = [v23 intValue];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v44 = "[LDCMMobileAssetManager updateMetadata]";
            v45 = 1024;
            *v46 = v24;
            _os_log_impl(&dword_2548F1000, v11, OS_LOG_TYPE_INFO, "%s requesting purge of asset version %d", buf, 0x12u);
          }

          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __40__LDCMMobileAssetManager_updateMetadata__block_invoke;
          v37[3] = &__block_descriptor_36_e8_v16__0q8l;
          v38 = v24;
          v25 = v32;
          [v32 purge:v37];
          LODWORD(v33) = v19;
          v32 = v21;
LABEL_23:

          goto LABEL_24;
        }

        LODWORD(v33) = v19;
        v32 = v21;
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v44 = "[LDCMMobileAssetManager updateMetadata]";
        v45 = 1024;
        *v46 = v19;
        _os_log_impl(&dword_2548F1000, v11, OS_LOG_TYPE_INFO, "%s asset version %d not compatible, skipping", buf, 0x12u);
      }

LABEL_24:
      ++v12;
    }

    while (v8 != v12);
    v26 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    v8 = v26;
  }

  while (v26);
LABEL_30:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    lastProcessedAssetVersion = self->_lastProcessedAssetVersion;
    *buf = 136315906;
    v44 = "[LDCMMobileAssetManager updateMetadata]";
    v45 = 1024;
    *v46 = v33;
    *&v46[4] = 1024;
    *&v46[6] = HIDWORD(v33);
    LOWORD(v47[0]) = 1024;
    *(v47 + 2) = lastProcessedAssetVersion;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s bestInstalledAssetVersion:%d bestNotInstalledAssetVersion:%d _lastProcessedAssetVersion:%d", buf, 0x1Eu);
  }

  v28 = self->_lastProcessedAssetVersion;
  if (v33 > v28 || SHIDWORD(v33) > v28)
  {
    if (SHIDWORD(v33) >= v33)
    {
      [(LDCMMobileAssetManager *)self downloadAsset:v31];
    }

    else
    {
      [(LDCMMobileAssetManager *)self processAsset:v32];
      self->_lastProcessedAssetVersion = v33;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __40__LDCMMobileAssetManager_updateMetadata__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __40__LDCMMobileAssetManager_updateMetadata__block_invoke_cold_1(a1, a2);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[LDCMMobileAssetManager updateMetadata]_block_invoke";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s purge of asset version %d succeeded", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)processAsset:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 getLocalFileUrl];
  v5 = [v4 URLByAppendingPathComponent:@"LDCMBehavior.plist"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[LDCMMobileAssetManager processAsset:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Attempting to process plist found in %@", buf, 0x16u);
  }

  if (v5)
  {
    v6 = objc_opt_new();
    v11 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5 error:&v11];
    v8 = v11;

    if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LDCMMobileAssetManager processAsset:v8];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained receiveBehaviorDictionary:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)downloadAsset:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__LDCMMobileAssetManager_downloadAsset___block_invoke;
  v7[3] = &unk_279793430;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v6 startDownload:v5 then:v7];
}

uint64_t __40__LDCMMobileAssetManager_downloadAsset___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __40__LDCMMobileAssetManager_downloadAsset___block_invoke_cold_1();
    }

    result = [*(a1 + 40) scheduleNextQueryAsRetry:1];
  }

  else
  {
    v4 = [*(a1 + 32) attributes];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D28900]];
    v6 = [v5 intValue];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[LDCMMobileAssetManager downloadAsset:]_block_invoke";
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s downloaded asset version %d successfully", &v8, 0x12u);
    }

    result = [*(a1 + 40) processAsset:*(a1 + 32)];
    *(*(a1 + 40) + 8) = v6;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)scheduleNextQueryAsRetry:(BOOL)a3
{
  v4 = 12;
  if (a3)
  {
    v4 = 20;
  }

  v5 = 16;
  if (a3)
  {
    v5 = 24;
  }

  v6 = *(&self->super.isa + v4);
  v7 = arc4random_uniform(*(&self->super.isa + v5) + 1);
  timer = self->_timer;
  v9 = dispatch_walltime(0, 1000000000 * (v7 + v6));

  dispatch_source_set_timer(timer, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (LDCMMobileAssetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __41__LDCMMobileAssetManager_downloadCatalog__block_invoke_2_cold_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  OUTLINED_FUNCTION_0_7(&dword_2548F1000, MEMORY[0x277D86220], a3, "%s Failed to download catalog (%ld)", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __40__LDCMMobileAssetManager_updateMetadata__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[LDCMMobileAssetManager updateMetadata]_block_invoke";
  v6 = 1024;
  v7 = v2;
  v8 = 2048;
  v9 = a2;
  _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s purge of asset version %d failed (%ld)", &v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)processAsset:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_7(&dword_2548F1000, MEMORY[0x277D86220], v1, "%s failed to create behavior dictionary from plist (%@)", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void __40__LDCMMobileAssetManager_downloadAsset___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to download asset (%ld)", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

@end
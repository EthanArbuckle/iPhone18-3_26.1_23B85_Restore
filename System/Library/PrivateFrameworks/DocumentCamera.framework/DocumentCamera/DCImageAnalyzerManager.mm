@interface DCImageAnalyzerManager
+ (id)sharedInstance;
- (DCImageAnalyzerManager)init;
- (void)analysisForImage:(id)image completionHandler:(id)handler;
- (void)cleanup;
@end

@implementation DCImageAnalyzerManager

- (DCImageAnalyzerManager)init
{
  v13.receiver = self;
  v13.super_class = DCImageAnalyzerManager;
  v2 = [(DCImageAnalyzerManager *)&v13 init];
  if (v2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v3 = getVKCImageAnalyzerClass_softClass;
    v18 = getVKCImageAnalyzerClass_softClass;
    if (!getVKCImageAnalyzerClass_softClass)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __getVKCImageAnalyzerClass_block_invoke;
      v14[3] = &unk_278F931A0;
      v14[4] = &v15;
      __getVKCImageAnalyzerClass_block_invoke(v14);
      v3 = v16[3];
    }

    v4 = v3;
    _Block_object_dispose(&v15, 8);
    v5 = objc_alloc_init(v3);
    imageAnalyzer = v2->_imageAnalyzer;
    v2->_imageAnalyzer = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cachedAnalyses = v2->_cachedAnalyses;
    v2->_cachedAnalyses = v7;

    [(NSCache *)v2->_cachedAnalyses setCountLimit:3];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.DocumentCamera.imageanalysisqueue", v9);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v10;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DCImageAnalyzerManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __40__DCImageAnalyzerManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(DCImageAnalyzerManager);
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;
}

- (void)cleanup
{
  operationQueue = self->_operationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DCImageAnalyzerManager_cleanup__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(operationQueue, block);
}

void __33__DCImageAnalyzerManager_cleanup__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249253000, v2, OS_LOG_TYPE_DEFAULT, "DCImageAnalyzerManager cleanup started.", buf, 2u);
  }

  [*(*(a1 + 32) + 8) cancelAllRequests];
  [*(*(a1 + 32) + 16) removeAllObjects];
  v3 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_249253000, v3, OS_LOG_TYPE_DEFAULT, "DCImageAnalyzerManager cleanup finished.", v4, 2u);
  }
}

- (void)analysisForImage:(id)image completionHandler:(id)handler
{
  imageCopy = image;
  handlerCopy = handler;
  operationQueue = self->_operationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DCImageAnalyzerManager_analysisForImage_completionHandler___block_invoke;
  block[3] = &unk_278F93178;
  v12 = imageCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = imageCopy;
  dispatch_async(operationQueue, block);
}

void __61__DCImageAnalyzerManager_analysisForImage_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&dword_249253000, v2, OS_LOG_TYPE_DEFAULT, "DCImageAnalyzerManager started classification for image: %@", buf, 0xCu);
  }

  if ([objc_opt_class() isImageAnalysisEnabled])
  {
    v4 = [*(*(a1 + 40) + 16) objectForKey:*(a1 + 32)];
    v5 = os_log_create("com.apple.documentcamera", "");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        *buf = 138412546;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        _os_log_impl(&dword_249253000, v5, OS_LOG_TYPE_DEFAULT, "DCImageAnalyzerManager cache hit for image: %@, analysis: %@", buf, 0x16u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__DCImageAnalyzerManager_analysisForImage_completionHandler___block_invoke_155;
      block[3] = &unk_278F93100;
      v22 = *(a1 + 48);
      v21 = v4;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v8 = v22;
    }

    else
    {
      if (v6)
      {
        v9 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_249253000, v5, OS_LOG_TYPE_DEFAULT, "DCImageAnalyzerManager cache miss for image: %@", buf, 0xCu);
      }

      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v10 = getVKCImageAnalyzerRequestClass_softClass;
      v26 = getVKCImageAnalyzerRequestClass_softClass;
      if (!getVKCImageAnalyzerRequestClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getVKCImageAnalyzerRequestClass_block_invoke;
        v28 = &unk_278F931A0;
        v29 = &v23;
        __getVKCImageAnalyzerRequestClass_block_invoke(buf);
        v10 = v24[3];
      }

      v11 = v10;
      _Block_object_dispose(&v23, 8);
      v8 = [[v10 alloc] initWithImage:*(a1 + 32) orientation:objc_msgSend(*(a1 + 32) requestType:{"imageOrientation"), -65}];
      v12 = *(*(a1 + 40) + 8);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __61__DCImageAnalyzerManager_analysisForImage_completionHandler___block_invoke_156;
      v16[3] = &unk_278F93150;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v17 = v13;
      v18 = v14;
      v19 = v15;
      [v12 processRequest:v8 progressHandler:0 completionHandler:v16];
    }
  }

  else
  {
    v4 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249253000, v4, OS_LOG_TYPE_DEFAULT, "DCImageAnalyzerManager refusing to perform analysis since feature flag isn't enabled.", buf, 2u);
    }
  }
}

void __61__DCImageAnalyzerManager_analysisForImage_completionHandler___block_invoke_156(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.documentcamera", "");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__DCImageAnalyzerManager_analysisForImage_completionHandler___block_invoke_156_cold_1(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_249253000, v8, OS_LOG_TYPE_DEFAULT, "DCImageAnalyzerManager caching image: %@, analysis: %@", buf, 0x16u);
    }

    [*(*(a1 + 40) + 16) setObject:v5 forKey:*(a1 + 32)];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DCImageAnalyzerManager_analysisForImage_completionHandler___block_invoke_157;
  block[3] = &unk_278F93128;
  v10 = *(a1 + 48);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__DCImageAnalyzerManager_analysisForImage_completionHandler___block_invoke_156_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "DCImageAnalyzerManager encountered error while analyzing image: %@", &v2, 0xCu);
}

@end
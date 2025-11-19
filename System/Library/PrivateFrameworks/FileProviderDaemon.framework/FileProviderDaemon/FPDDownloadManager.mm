@interface FPDDownloadManager
+ (id)acquireDownloadSlotForItem:(id)a3;
+ (id)sharedInstance;
+ (void)initialize;
+ (void)releaseDownloadSlot:(id)a3;
- (FPDDownloadManager)init;
- (void)_downloadItem:(id)a3 downloader:(id)a4 request:(id)a5 withCompletion:(id)a6;
- (void)_downloadItemAtLocator:(id)a3 downloader:(id)a4 request:(id)a5 completion:(id)a6;
- (void)_recursivelyDownloadItem:(id)a3 forceDiskIteration:(BOOL)a4 skipAlreadyDownloadedItems:(BOOL)a5 downloader:(id)a6 request:(id)a7 perItemCompletion:(id)a8 completion:(id)a9;
- (void)downloadItem:(id)a3 recursively:(unint64_t)a4 downloader:(id)a5 request:(id)a6 perItemCompletion:(id)a7 withCompletion:(id)a8;
- (void)downloadItems:(id)a3 recursively:(unint64_t)a4 downloader:(id)a5 request:(id)a6 perItemCompletion:(id)a7 withCompletion:(id)a8;
- (void)progressComputationPreflightForRecursiveRoot:(id)a3 downloader:(id)a4 itemProgressNeedsSetup:(id)a5 itemProgressSetup:(id)a6 completion:(id)a7;
- (void)retrieveFPItemForURL:(id)a3 domain:(id)a4 request:(id)a5 completion:(id)a6;
- (void)verifyIfSubtreeIsFullyMaterializedBelowItem:(id)a3 recursively:(unint64_t)a4 downloader:(id)a5 completion:(id)a6;
@end

@implementation FPDDownloadManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FPDDownloadManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once_0 != -1)
  {
    dispatch_once(&sharedInstance_once_0, block);
  }

  v2 = sharedInstance__instance;

  return v2;
}

void __36__FPDDownloadManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance__instance;
  sharedInstance__instance = v1;
}

+ (id)acquireDownloadSlotForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 providerID];
  v5 = _globalDownloadSlotsByProvider;
  objc_sync_enter(v5);
  v6 = [_globalDownloadSlotsByProvider objectForKeyedSubscript:v4];
  if (!v6)
  {
    v6 = dispatch_semaphore_create(256);
    [_globalDownloadSlotsByProvider setObject:v6 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  return v4;
}

+ (void)releaseDownloadSlot:(id)a3
{
  v7 = a3;
  v3 = _globalDownloadSlotsByProvider;
  objc_sync_enter(v3);
  v4 = [_globalDownloadSlotsByProvider objectForKeyedSubscript:v7];
  objc_sync_exit(v3);

  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ semaphore should still exists"];
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    __assert_rtn("+[FPDDownloadManager releaseDownloadSlot:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/download/FPDDownloadManager.m", 84, [v5 UTF8String]);
  }

  dispatch_semaphore_signal(v4);
}

+ (void)initialize
{
  if (initialize_once != -1)
  {
    +[FPDDownloadManager initialize];
  }
}

void __32__FPDDownloadManager_initialize__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _globalDownloadSlotsByProvider;
  _globalDownloadSlotsByProvider = v0;
}

- (FPDDownloadManager)init
{
  v10.receiver = self;
  v10.super_class = FPDDownloadManager;
  v2 = [(FPDDownloadManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("FileProvider.download-manager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("FileProvider.download-manager.preflight", v6);
    preflightQueue = v2->_preflightQueue;
    v2->_preflightQueue = v7;
  }

  return v2;
}

- (void)downloadItems:(id)a3 recursively:(unint64_t)a4 downloader:(id)a5 request:(id)a6 perItemCompletion:(id)a7 withCompletion:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__FPDDownloadManager_downloadItems_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke;
  block[3] = &unk_1E83C0A18;
  v26 = v14;
  v27 = self;
  v31 = v18;
  v32 = a4;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(queue, block);
}

void __100__FPDDownloadManager_downloadItems_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__12;
  v27[4] = __Block_byref_object_dispose__12;
  v28 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v3)
  {
    v15 = *v24;
    do
    {
      v4 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * v4);
        v6 = fp_current_or_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v5;
          _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] download-manager: starting recursive download of item  %@", buf, 0xCu);
        }

        dispatch_group_enter(v2);
        v7 = *(a1 + 80);
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = *(a1 + 64);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __100__FPDDownloadManager_downloadItems_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_6;
        v20[3] = &unk_1E83C09F0;
        v21 = v2;
        v22 = v27;
        [v8 downloadItem:v5 recursively:v7 downloader:v9 request:v10 perItemCompletion:v11 withCompletion:v20];

        ++v4;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v3);
  }

  v12 = *(*(a1 + 40) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__FPDDownloadManager_downloadItems_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_8;
  block[3] = &unk_1E83BFF58;
  v17 = *(a1 + 32);
  v18 = *(a1 + 72);
  v19 = v27;
  dispatch_group_notify(v2, v12, block);

  _Block_object_dispose(v27, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void __100__FPDDownloadManager_downloadItems_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = *(a1 + 32);
    objc_sync_enter(v5);
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __100__FPDDownloadManager_downloadItems_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_6_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    objc_sync_exit(v5);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __100__FPDDownloadManager_downloadItems_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_8(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __100__FPDDownloadManager_downloadItems_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_8_cold_1(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 48) + 8) + 40));
  }

  return result;
}

- (void)downloadItem:(id)a3 recursively:(unint64_t)a4 downloader:(id)a5 request:(id)a6 perItemCompletion:(id)a7 withCompletion:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [FPDDownloadManager downloadItem:recursively:downloader:request:perItemCompletion:withCompletion:];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__FPDDownloadManager_downloadItem_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke;
  block[3] = &unk_1E83C0A18;
  v32 = v18;
  v33 = a4;
  v27 = v14;
  v28 = self;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  dispatch_async(queue, block);
}

void __99__FPDDownloadManager_downloadItem_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    if (*(a1 + 80))
    {
      v6 = [*(a1 + 48) domain];
      v7 = [v6 isUsingFPFS];
      v8 = *(a1 + 80) == 1;
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __99__FPDDownloadManager_downloadItem_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_2;
      v19[3] = &unk_1E83C0A40;
      v11 = *(a1 + 64);
      v20 = *(a1 + 72);
      [v4 _recursivelyDownloadItem:v2 forceDiskIteration:v7 skipAlreadyDownloadedItems:v8 downloader:v9 request:v10 perItemCompletion:v11 completion:v19];

      v12 = v20;
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __99__FPDDownloadManager_downloadItem_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_3;
      v16[3] = &unk_1E83C0A68;
      v15 = *(a1 + 56);
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      [v4 _downloadItem:v2 downloader:v5 request:v15 withCompletion:v16];

      v12 = v17;
    }
  }

  else
  {
    if (!*(a1 + 72))
    {
      return;
    }

    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __99__FPDDownloadManager_downloadItem_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_cold_1(v3);
    }

    v14 = *(a1 + 72);
    v12 = FPItemNotFoundError();
    (*(v14 + 16))(v14, v12);
  }
}

void __99__FPDDownloadManager_downloadItem_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v12 fileURL];
    (*(v9 + 16))(v9, v12, v10, v8);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v8);
  }
}

- (void)verifyIfSubtreeIsFullyMaterializedBelowItem:(id)a3 recursively:(unint64_t)a4 downloader:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [FPDDownloadManager verifyIfSubtreeIsFullyMaterializedBelowItem:recursively:downloader:completion:];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke;
  block[3] = &unk_1E83BFDF0;
  v22 = v12;
  v23 = a4;
  v19 = v10;
  v20 = v11;
  v21 = self;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  dispatch_async(queue, block);
}

void __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__12;
  v27 = __Block_byref_object_dispose__12;
  v28 = 0;
  if (*(a1 + 64) == 2)
  {
    v4 = [FPDSubtreeChangeDetector alloc];
    v5 = [*(a1 + 32) fileURL];
    v6 = [v5 path];
    v7 = v24;
    obj = v24[5];
    v3 = [(FPDSubtreeChangeDetector *)v4 initAtPath:v6 error:&obj];
    objc_storeStrong(v7 + 5, obj);

    if (!v3)
    {
      v13 = v24[5];
      (*(*(a1 + 56) + 16))();
      goto LABEL_5;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_2;
    aBlock[3] = &unk_1E83C0AB8;
    aBlock[4] = &v23;
    v2 = _Block_copy(aBlock);
  }

  v8 = [*(a1 + 40) isDryRun];
  [*(a1 + 40) setDryRun:1];
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_21;
  v14[3] = &unk_1E83C0AE0;
  v15 = v9;
  v20 = v8;
  v12 = v3;
  v16 = v12;
  v18 = *(a1 + 56);
  v19 = &v23;
  v17 = *(a1 + 32);
  [v10 _recursivelyDownloadItem:v11 forceDiskIteration:1 skipAlreadyDownloadedItems:0 downloader:v15 request:0 perItemCompletion:v2 completion:v14];

LABEL_5:
  _Block_object_dispose(&v23, 8);
}

void __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_2_cold_1(v9, a1);
    }
  }

  else
  {
    [v8 fileSystemRepresentation];
    v12 = v9;
    v13 = v7;
    if ((fpfs_openat() & 0x80000000) != 0 && *__error() != 22)
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_2_cold_2();
      }
    }

    v10 = v12;
  }
}

uint64_t __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_18(uint64_t a1, int a2)
{
  if ((fpfs_unset_evictable() & 0x80000000) != 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_18_cold_3(a1);
    }

    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v4 = [*(a1 + 40) providerDomainID];
  v5 = [v4 UTF8String];

  if (v5)
  {
    fpfs_get_is_ignore_root();
  }

  memset(&v10, 0, sizeof(v10));
  if (fstat(a2, &v10) < 0)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_18_cold_2(a1);
    }

    goto LABEL_17;
  }

  if ((v10.st_mode & 0xF000) == 0x4000 && (fpfs_fset_syncroot() & 0x80000000) != 0)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_18_cold_1(a1);
    }

LABEL_17:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  if (v11 == 1)
  {
    v6 = [*(a1 + 40) providerDomainID];
    [v6 UTF8String];
    fpfs_set_is_ignore_root();
    v7 = 0;
LABEL_18:

    return v7;
  }

  return 0;
}

void __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_21(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) setDryRun:*(a1 + 72)];
  if (v4 || (v5 = *(a1 + 40)) == 0)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 64) + 8);
    obj = *(v6 + 40);
    v7 = [v5 verifyTreeIdentityWithError:&obj];
    objc_storeStrong((v6 + 40), obj);
    if (v7)
    {
      v8 = [*(a1 + 32) domain];
      v9 = [*(a1 + 48) fileURL];
      [v8 setProvidedItemRecursiveGenerationCount:v7 forItemAtURL:v9];
    }

    else
    {
      v10 = *(*(*(a1 + 64) + 8) + 40);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)retrieveFPItemForURL:(id)a3 domain:(id)a4 request:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (a4)
  {
    v14 = [a4 defaultBackend];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69__FPDDownloadManager_retrieveFPItemForURL_domain_request_completion___block_invoke;
    v19[3] = &unk_1E83BE530;
    v19[4] = self;
    v20 = v10;
    v21 = v13;
    [v14 itemForURL:v20 options:0 request:v11 completionHandler:v19];

    v15 = v20;
  }

  else
  {
    queue = self->_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__FPDDownloadManager_retrieveFPItemForURL_domain_request_completion___block_invoke_23;
    v17[3] = &unk_1E83BF9B0;
    v18 = v12;
    dispatch_async(queue, v17);
    v15 = v18;
  }
}

void __69__FPDDownloadManager_retrieveFPItemForURL_domain_request_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__FPDDownloadManager_retrieveFPItemForURL_domain_request_completion___block_invoke_2;
  block[3] = &unk_1E83BE828;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

void __69__FPDDownloadManager_retrieveFPItemForURL_domain_request_completion___block_invoke_2(void *a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __69__FPDDownloadManager_retrieveFPItemForURL_domain_request_completion___block_invoke_2_cold_1(a1);
  }

  v3 = a1[4];
  v4 = a1[6];
  if (v3)
  {
    (*(v4 + 16))(a1[6], v3, 0);
  }

  else
  {
    v5 = a1[5];
    v6 = FPItemNotFoundErrorAtURL();
    (*(v4 + 16))(v4, 0, v6);
  }
}

void __69__FPDDownloadManager_retrieveFPItemForURL_domain_request_completion___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = FPNotSupportedError();
  (*(v1 + 16))(v1, 0, v2);
}

- (void)progressComputationPreflightForRecursiveRoot:(id)a3 downloader:(id)a4 itemProgressNeedsSetup:(id)a5 itemProgressSetup:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 isFolder];
  if ([v12 isPackage])
  {
    v29 = 0;
    v18 = [v12 fileURL];
    if (v18)
    {
      v19 = v18;
      v20 = [v12 fileURL];
      [v20 fileSystemRepresentation];
      is_demoted_at = fpfs_pkg_is_demoted_at();

      if (!is_demoted_at)
      {
        goto LABEL_6;
      }
    }
  }

  if ((v17 & 1) == 0)
  {
LABEL_6:
    if (v16)
    {
      v16[2](v16);
    }
  }

  else
  {
    preflightQueue = self->_preflightQueue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __130__FPDDownloadManager_progressComputationPreflightForRecursiveRoot_downloader_itemProgressNeedsSetup_itemProgressSetup_completion___block_invoke;
    v23[3] = &unk_1E83C0B08;
    v24 = v13;
    v25 = v12;
    v26 = v15;
    v27 = v14;
    v28 = v16;
    dispatch_async(preflightQueue, v23);
  }
}

void __130__FPDDownloadManager_progressComputationPreflightForRecursiveRoot_downloader_itemProgressNeedsSetup_itemProgressSetup_completion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __130__FPDDownloadManager_progressComputationPreflightForRecursiveRoot_downloader_itemProgressNeedsSetup_itemProgressSetup_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) progress];
  [v3 setTotalUnitCount:0];
  [v3 setKind:*MEMORY[0x1E696A888]];
  [v3 setFileCompletedCount:&unk_1F4C62A60];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  [v3 setFileTotalCount:v4];

  v5 = [*(a1 + 40) fileURL];
  [v3 setFileURL:v5];

  [v3 publish];
  if ([*(a1 + 40) isRecursivelyDownloaded])
  {
    v6 = 0;
    v7 = 0;
    LOBYTE(v8) = 1;
    goto LABEL_21;
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) domain];
  v11 = [FPDIterator hybridIteratorForItem:v9 domain:v10 enforceFPItem:0];

  LOBYTE(v8) = 1;
  [v11 setShouldDecorateItems:1];
  if ([v11 done])
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_20;
  }

  v7 = 0;
  v6 = 0;
  while (1)
  {
    v12 = objc_autoreleasePoolPush();
    v25 = 0;
    v13 = [v11 nextWithError:&v25];
    v14 = v25;
    if (!v13)
    {
      break;
    }

    if (![v13 isProviderItem] || (objc_msgSend(v13, "isDownloaded") & 1) != 0)
    {
      goto LABEL_17;
    }

    if ([v13 isFolder])
    {
      goto LABEL_16;
    }

    ++v7;
    v6 += [v13 size];
    v15 = [v13 asFPItem];
    v16 = [v15 fileURL];

    if (v16)
    {
      v8 = *(a1 + 48);
LABEL_15:
      v17 = [v13 asFPItem];
      (*(v8 + 16))(v8, v17);

LABEL_16:
      LOBYTE(v8) = 0;
      goto LABEL_17;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_17:
    [v3 setTotalUnitCount:v6];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [v3 setFileTotalCount:v18];

    objc_autoreleasePoolPop(v12);
    if ([v11 done])
    {
      goto LABEL_20;
    }
  }

  objc_autoreleasePoolPop(v12);
LABEL_20:

LABEL_21:
  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 40);
    v24 = [MEMORY[0x1E696AD98] numberWithBool:v8 & 1];
    *buf = 138413058;
    v27 = v23;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = v6;
    v32 = 2112;
    v33 = v24;
    _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] download-manager: preflight for root: %@, numItems:%lu, undownloadedSize:%lu, fullyMaterialized:%@", buf, 0x2Au);
  }

  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __130__FPDDownloadManager_progressComputationPreflightForRecursiveRoot_downloader_itemProgressNeedsSetup_itemProgressSetup_completion___block_invoke_cold_2(v3);
  }

  v21 = *(a1 + 64);
  if (v21)
  {
    (*(v21 + 16))();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_recursivelyDownloadItem:(id)a3 forceDiskIteration:(BOOL)a4 skipAlreadyDownloadedItems:(BOOL)a5 downloader:(id)a6 request:(id)a7 perItemCompletion:(id)a8 completion:(id)a9
{
  v46 = a5;
  v43 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v44 = a7;
  v14 = a8;
  v47 = a9;
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [FPDDownloadManager _recursivelyDownloadItem:forceDiskIteration:skipAlreadyDownloadedItems:downloader:request:perItemCompletion:completion:];
  }

  v48 = [MEMORY[0x1E69672A8] locatorForItem:v12];
  if ([v12 isRecursivelyDownloaded] && ((objc_msgSend(v12, "isEvictedWithClone") | !v46) & 1) == 0)
  {
    v18 = [v12 fileURL];
    v47[2](v47, v18, 0);
    goto LABEL_41;
  }

  v16 = [v13 domain];
  v17 = [v16 provider];
  v18 = [FPDIterator iteratorForLocator:v48 wantsDisk:v43 provider:v17];

  [v18 setShouldDecorateItems:1];
  [v18 setSkipMaterializedTreeTraversal:v46];
  group = dispatch_group_create();
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__12;
  v68 = __Block_byref_object_dispose__12;
  v69 = 0;
  while (([v18 done] & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    v63 = 0;
    v20 = [v18 nextWithError:&v63];
    v21 = v63;
    v22 = [v13 cancellationProgress];
    v23 = [v22 isCancelled];

    if (v23)
    {
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v65[5] fp_prettyDescription];
        *buf = 138412290;
        v73 = v25;
        _os_log_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_INFO, "[INFO] download-manager: recursive downloader had been canceled due to error %@", buf, 0xCu);
      }

      v26 = 0;
    }

    else if (v20 || !v21)
    {
      v31 = [v18 done];
      if (v20)
      {
        v32 = v31;
      }

      else
      {
        v32 = 1;
      }

      if (v32)
      {
        v26 = 0;
        goto LABEL_17;
      }

      if ([v20 isDownloaded])
      {
        if (!v14)
        {
          v26 = 1;
          goto LABEL_17;
        }

        if ([v20 isProviderItem] && (objc_msgSend(v20, "asFPItem"), v33 = objc_claimAutoreleasedReturnValue(), (v24 = v33) != 0))
        {
          v34 = [v33 fileURL];
        }

        else
        {
          v34 = [v20 asURL];
          v24 = 0;
        }

        v39 = fp_current_or_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v73 = v20;
          _os_log_debug_impl(&dword_1CEFC7000, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] download-manager: Already materialized item %@ so skipping", buf, 0xCu);
        }

        v14[2](v14, v24, v34, 0);
        v26 = 1;
      }

      else if ([v13 isDryRun])
      {
        v35 = fp_current_or_default_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v73 = v20;
          _os_log_error_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_ERROR, "[ERROR] download-manager: found non-downloaded item %@", buf, 0xCu);
        }

        v36 = FPSubtreeChangedError();
        v26 = 0;
        v24 = v65[5];
        v65[5] = v36;
      }

      else
      {
        dispatch_group_enter(group);
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke;
        v53[3] = &unk_1E83C0B80;
        v60 = &v64;
        v37 = v13;
        v54 = v37;
        v59 = v14;
        v38 = v20;
        v55 = v38;
        v56 = group;
        v57 = self;
        v61 = v43;
        v62 = v46;
        v58 = v44;
        [(FPDDownloadManager *)self _downloadItemAtLocator:v38 downloader:v37 request:v58 completion:v53];

        v26 = 1;
        v24 = v54;
      }
    }

    else
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [v21 fp_prettyDescription];
        [FPDDownloadManager _recursivelyDownloadItem:v28 forceDiskIteration:v70 skipAlreadyDownloadedItems:&v71 downloader:v27 request:? perItemCompletion:? completion:?];
      }

      v29 = v65;
      v30 = v21;
      v26 = 0;
      v24 = v29[5];
      v29[5] = v30;
    }

LABEL_17:
    objc_autoreleasePoolPop(v19);
    if ((v26 & 1) == 0)
    {
      break;
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_32;
  block[3] = &unk_1E83BFBB0;
  v50 = v48;
  v52 = &v64;
  v51 = v47;
  dispatch_group_notify(group, queue, block);

  _Block_object_dispose(&v64, 8);
LABEL_41:

  v41 = *MEMORY[0x1E69E9840];
}

void __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_cold_1(v7, v9);
  }

  if (v9)
  {
    v11 = *(*(a1 + 80) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (!v13)
    {
      objc_storeStrong(v12, a4);
      v14 = [*(a1 + 32) cancellationProgress];
      v15 = [v14 isCancelled];

      if ((v15 & 1) == 0)
      {
        [*(a1 + 32) cancel];
      }
    }
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    (*(v16 + 16))(v16, v7, v8, v9);
  }

  if ([*(a1 + 40) isExternalURL])
  {
    v17 = [*(a1 + 32) domain];
    if ([v17 isUsingFPFS])
    {
      if ([v7 isFolder])
      {
      }

      else
      {
        v18 = [v7 isPackage];

        if (!v18)
        {
          goto LABEL_18;
        }
      }

      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_cold_2();
      }

      dispatch_group_enter(*(a1 + 48));
      v20 = *(a1 + 56);
      v21 = *(v20 + 8);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_31;
      v24[3] = &unk_1E83C0B58;
      v24[4] = v20;
      v25 = v7;
      v31 = *(a1 + 88);
      v26 = *(a1 + 32);
      v27 = *(a1 + 64);
      v22 = *(a1 + 72);
      v23 = *(a1 + 80);
      v29 = v22;
      v30 = v23;
      v28 = *(a1 + 48);
      dispatch_async(v21, v24);
    }

    else
    {
    }
  }

LABEL_18:
  dispatch_group_leave(*(a1 + 48));
}

void __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_31(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  v5 = *(a1 + 89);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_2;
  v9[3] = &unk_1E83C0B30;
  v8 = *(a1 + 72);
  v12 = *(a1 + 80);
  v10 = v6;
  v11 = *(a1 + 64);
  [v2 _recursivelyDownloadItem:v3 forceDiskIteration:v4 skipAlreadyDownloadedItems:v5 downloader:v10 request:v7 perItemCompletion:v8 completion:v9];
}

void __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a3);
      v9 = [*(a1 + 32) cancellationProgress];
      v10 = [v9 isCancelled];

      if ((v10 & 1) == 0)
      {
        [*(a1 + 32) cancel];
      }
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_32(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_32_cold_1(a1);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) asFPItem];
  v5 = [v4 fileURL];
  (*(v3 + 16))(v3, v5, *(*(*(a1 + 48) + 8) + 40));
}

- (void)_downloadItem:(id)a3 downloader:(id)a4 request:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  v14 = a5;
  dispatch_assert_queue_V2(queue);
  v15 = [v11 domain];
  LOBYTE(queue) = [v15 isUsingFPFS];

  if (queue)
  {
    v16 = 0;
  }

  else
  {
    v16 = [objc_opt_class() acquireDownloadSlotForItem:v10];
  }

  v17 = fp_current_or_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [FPDDownloadManager _downloadItem:downloader:request:withCompletion:];
  }

  v18 = [v11 domain];
  v19 = [v10 itemID];
  v20 = [v11 cancellationProgress];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __70__FPDDownloadManager__downloadItem_downloader_request_withCompletion___block_invoke;
  v25[3] = &unk_1E83C0BA8;
  v26 = v10;
  v27 = v11;
  v28 = self;
  v29 = v16;
  v30 = v12;
  v21 = v12;
  v22 = v16;
  v23 = v11;
  v24 = v10;
  [v18 downloadItemWithItemID:v19 request:v14 progress:v20 completionHandler:v25];
}

void __70__FPDDownloadManager__downloadItem_downloader_request_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __70__FPDDownloadManager__downloadItem_downloader_request_withCompletion___block_invoke_cold_1(a1);
  }

  v8 = [*(a1 + 40) domain];
  v9 = [v8 isUsingFPFS];

  if ((v9 & 1) == 0)
  {
    v10 = *(a1 + 48);
    [objc_opt_class() releaseDownloadSlot:*(a1 + 56)];
  }

  if (v6)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __70__FPDDownloadManager__downloadItem_downloader_request_withCompletion___block_invoke_cold_2(a1, v6);
    }
  }

  v12 = [*(a1 + 32) fileURL];

  if (!v12)
  {
    [*(a1 + 32) setFileURL:v5];
  }

  v13 = *(a1 + 64);
  v14 = *(a1 + 32);
  v15 = [v14 fileURL];
  (*(v13 + 16))(v13, v14, v15, v6);
}

- (void)_downloadItemAtLocator:(id)a3 downloader:(id)a4 request:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 isProviderItem])
  {
    v14 = [v10 asFPItem];
    [(FPDDownloadManager *)self _downloadItem:v14 downloader:v11 request:v12 withCompletion:v13];
  }

  else
  {
    v15 = [v11 domain];
    v16 = [v15 defaultBackend];
    v17 = [v10 asURL];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__FPDDownloadManager__downloadItemAtLocator_downloader_request_completion___block_invoke;
    v18[3] = &unk_1E83C0BD0;
    v18[4] = self;
    v22 = v13;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    [v16 itemForURL:v17 options:0 request:v21 completionHandler:v18];
  }
}

void __75__FPDDownloadManager__downloadItemAtLocator_downloader_request_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__FPDDownloadManager__downloadItemAtLocator_downloader_request_completion___block_invoke_2;
  block[3] = &unk_1E83C0138;
  v16 = v5;
  v17 = v6;
  v20 = *(a1 + 64);
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 32);
  v14 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v18 = v14;
  v19 = v11;
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, block);
}

void __75__FPDDownloadManager__downloadItemAtLocator_downloader_request_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v1)
    {
      v2 = *(a1 + 80);
LABEL_5:
      v3 = *(v2 + 16);

      v3(v2, 0, 0);
      return;
    }

    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    v7 = *(a1 + 56);

    [v7 _downloadItem:? downloader:? request:? withCompletion:?];
  }

  else
  {
    v2 = *(a1 + 80);
    if (v1)
    {
      goto LABEL_5;
    }

    v9 = [*(a1 + 48) asURL];
    v8 = FPItemNotFoundErrorAtURL();
    (*(v2 + 16))(v2, 0, 0, v8);
  }
}

void __100__FPDDownloadManager_downloadItems_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_6_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __100__FPDDownloadManager_downloadItems_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_8_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)downloadItem:recursively:downloader:request:perItemCompletion:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] download-manager: Request to download item %@, recursively %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __99__FPDDownloadManager_downloadItem_recursively_downloader_request_perItemCompletion_withCompletion___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)verifyIfSubtreeIsFullyMaterializedBelowItem:recursively:downloader:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a2 + 32) + 8) + 40);
  OUTLINED_FUNCTION_1_0();
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_ERROR, "[ERROR] download-manager: post-download traversal failed on %@: %@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_2_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_18_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_18_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = *__error();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void __100__FPDDownloadManager_verifyIfSubtreeIsFullyMaterializedBelowItem_recursively_downloader_completion___block_invoke_18_cold_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __69__FPDDownloadManager_retrieveFPItemForURL_domain_request_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __130__FPDDownloadManager_progressComputationPreflightForRecursiveRoot_downloader_itemProgressNeedsSetup_itemProgressSetup_completion___block_invoke_cold_2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a1 fileTotalCount];
  v3 = [a1 fileURL];
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_recursivelyDownloadItem:(void *)a3 forceDiskIteration:(os_log_t)log skipAlreadyDownloadedItems:downloader:request:perItemCompletion:completion:.cold.2(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] download-manager: encountered error during enumeration: %@", buf, 0xCu);
}

void __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __141__FPDDownloadManager__recursivelyDownloadItem_forceDiskIteration_skipAlreadyDownloadedItems_downloader_request_perItemCompletion_completion___block_invoke_32_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) asFPItem];
  v3 = [*(*(*(a1 + 48) + 8) + 40) fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_downloadItem:downloader:request:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __70__FPDDownloadManager__downloadItem_downloader_request_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) itemID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __70__FPDDownloadManager__downloadItem_downloader_request_withCompletion___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) itemID];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

@end
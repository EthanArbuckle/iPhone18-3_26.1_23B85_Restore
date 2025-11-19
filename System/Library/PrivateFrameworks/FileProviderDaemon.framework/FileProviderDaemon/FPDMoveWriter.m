@interface FPDMoveWriter
+ (id)acquireDownloadSlotForItem:(id)a3;
+ (void)initialize;
+ (void)releaseDownloadSlot:(id)a3;
- (FPDMoveOperation)operation;
- (FPDMoveWriter)initWithOperation:(id)a3 queue:(id)a4;
- (FPDMoveWriterExecutor)diskWriter;
- (id)defaultExecutor;
- (id)waitForResultOfSourceID:(id)a3 root:(id)a4 error:(id *)a5;
- (void)_finishWithError:(id)a3;
- (void)_handleCompletionOfAtom:(id)a3 source:(id)a4 result:(id)a5 error:(id)a6;
- (void)_handleFolder:(id)a3 completion:(id)a4;
- (void)_handleItem:(id)a3 completion:(id)a4;
- (void)_handlePostFolder:(id)a3 completion:(id)a4;
- (void)_performCopyOrMoveOfFolder:(id)a3 completion:(id)a4;
- (void)_performCopyOrMoveOfItem:(id)a3 completion:(id)a4;
- (void)_removeRoot:(id)a3;
- (void)_step;
- (void)_unblockWaiterForSourceID:(id)a3 withResult:(id)a4 error:(id)a5;
- (void)cancel;
- (void)cancelRoot:(id)a3;
- (void)dumpStateTo:(id)a3;
- (void)failWithError:(id)a3;
- (void)handleAtom:(id)a3 completion:(id)a4;
- (void)handleCreationForAtom:(id)a3 result:(id)a4;
- (void)performCopyOfItem:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 completion:(id)a8;
- (void)performCopyOfItem:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 useDiskWriter:(BOOL)a8 completion:(id)a9;
- (void)performCreateFolder:(id)a3 inside:(id)a4 as:(id)a5 useDiskWriter:(BOOL)a6 completion:(id)a7;
- (void)performMoveOfItem:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 useDiskWriter:(BOOL)a8 completion:(id)a9;
- (void)setProgress:(id)a3 forRoot:(id)a4;
- (void)start;
- (void)startDownloadOfItem:(id)a3 shouldMaterializeRecursively:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation FPDMoveWriter

+ (id)acquireDownloadSlotForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 providerID];
  v5 = _globalDownloadSlotsByProvider_0;
  objc_sync_enter(v5);
  v6 = [_globalDownloadSlotsByProvider_0 objectForKeyedSubscript:v4];
  if (!v6)
  {
    v6 = dispatch_semaphore_create(256);
    [_globalDownloadSlotsByProvider_0 setObject:v6 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  return v4;
}

+ (void)releaseDownloadSlot:(id)a3
{
  v7 = a3;
  v3 = _globalDownloadSlotsByProvider_0;
  objc_sync_enter(v3);
  v4 = [_globalDownloadSlotsByProvider_0 objectForKeyedSubscript:v7];
  objc_sync_exit(v3);

  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ semaphore should still exists"];
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("+[FPDMoveWriter releaseDownloadSlot:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveWriter.m", 104, [v5 UTF8String]);
  }

  dispatch_semaphore_signal(v4);
}

+ (void)initialize
{
  if (initialize_once_0 != -1)
  {
    +[FPDMoveWriter initialize];
  }
}

void __27__FPDMoveWriter_initialize__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _globalDownloadSlotsByProvider_0;
  _globalDownloadSlotsByProvider_0 = v0;
}

- (FPDMoveWriter)initWithOperation:(id)a3 queue:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v67.receiver = self;
  v67.super_class = FPDMoveWriter;
  v8 = [(FPDMoveWriter *)&v67 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_operation, v6);
    v10 = [v6 info];
    info = v9->_info;
    v9->_info = v10;

    objc_storeWeak(&v9->_moveQueue, v7);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, [(FPMoveInfo *)v9->_info qos], 0);
    v14 = dispatch_queue_create("FileProvider.move-writer.async", v13);
    asyncQueue = v9->_asyncQueue;
    v9->_asyncQueue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, [(FPMoveInfo *)v9->_info qos], 0);
    v18 = dispatch_queue_create("FileProvider.move-writer", v17);
    queue = v9->_queue;
    v9->_queue = v18;

    v20 = objc_opt_new();
    sourceFoldersStack = v9->_sourceFoldersStack;
    v9->_sourceFoldersStack = v20;

    v22 = objc_opt_new();
    destinationFoldersStack = v9->_destinationFoldersStack;
    v9->_destinationFoldersStack = v22;

    v24 = objc_opt_new();
    errorsByRoot = v9->_errorsByRoot;
    v9->_errorsByRoot = v24;

    v26 = objc_opt_new();
    progressByRoot = v9->_progressByRoot;
    v9->_progressByRoot = v26;

    v9->_originalBouncePolicy = [(FPMoveInfo *)v9->_info shouldBounce];
    v9->_depth = 0;
    v28 = [FPDCoordinator alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_operation);
    v30 = [WeakRetained manager];
    v31 = [(FPDCoordinator *)v28 initWithExtensionManager:v30 callbackQueue:v9->_queue];
    coordinator = v9->_coordinator;
    v9->_coordinator = v31;

    v33 = [FPDCoordinator alloc];
    v34 = objc_loadWeakRetained(&v9->_operation);
    v35 = [v34 manager];
    v36 = [(FPDCoordinator *)v33 initWithExtensionManager:v35 callbackQueue:v9->_queue];
    preemptiveDownloadCoordinator = v9->_preemptiveDownloadCoordinator;
    v9->_preemptiveDownloadCoordinator = v36;

    section = __fp_create_section();
    v39 = fp_current_or_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveWriter initWithOperation:queue:];
    }

    v9->_logSection = section;
    v40 = [v6 info];
    v41 = [v40 targetFolder];
    v42 = [v41 isProviderItem];

    if (v42)
    {
      v43 = [[FPDMoveWriterToProvider alloc] initWithWriter:v9];
      providerWriter = v9->_providerWriter;
      v9->_providerWriter = v43;
    }

    if ([(FPMoveInfo *)v9->_info _t_clearItemURLs])
    {
      v45 = [(FPMoveInfo *)v9->_info targetFolder];
      v46 = [v45 asFPItem];
      [v46 setFileURL:0];

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v47 = [(FPMoveInfo *)v9->_info roots];
      v48 = [v47 countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v64;
        do
        {
          v51 = 0;
          do
          {
            if (*v64 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = [*(*(&v63 + 1) + 8 * v51) asFPItem];
            [v52 setFileURL:0];

            ++v51;
          }

          while (v49 != v51);
          v49 = [v47 countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v49);
      }
    }

    v53 = [(FPMoveInfo *)v9->_info roots];
    v54 = [(FPMoveInfo *)v9->_info targetFolder];
    v55 = [v53 arrayByAddingObject:v54];

    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __41__FPDMoveWriter_initWithOperation_queue___block_invoke;
    v61[3] = &unk_1E83C1538;
    v56 = v9;
    v62 = v56;
    v57 = [v55 fp_map:v61];
    accessTokens = v56->_accessTokens;
    v56->_accessTokens = v57;
  }

  v59 = *MEMORY[0x1E69E9840];
  return v9;
}

id __41__FPDMoveWriter_initWithOperation_queue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 160));
  v5 = [WeakRetained manager];
  [v3 annotateWithPersonaSandboxIfNeeded:v5];

  v6 = [v3 startAccessingLocator];

  return v6;
}

- (void)_performCopyOrMoveOfItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v6 source];
  v9 = [v8 isFolder];

  if (v9)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ unexpected folder"];
    v33 = fp_current_or_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDMoveWriter _performCopyOrMoveOfItem:completion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveWriter.m", 171, [v32 UTF8String]);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__FPDMoveWriter__performCopyOrMoveOfItem_completion___block_invoke;
  aBlock[3] = &unk_1E83C1560;
  aBlock[4] = self;
  v10 = v7;
  v43 = v10;
  v11 = _Block_copy(aBlock);
  errorsByRoot = self->_errorsByRoot;
  v13 = [v6 root];
  v14 = [(NSMutableDictionary *)errorsByRoot objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [v6 source];
    [(FPDMoveWriter *)self _handleCompletionOfAtom:v6 source:v15 result:0 error:v14];

    v11[2](v11, 0, v14);
  }

  else
  {
    v16 = [(FPMoveInfo *)self->_info byCopy];
    v17 = [v6 source];
    v18 = v17;
    if (!v16)
    {
      v22 = [v17 parentIdentifier];
      v23 = [v6 targetFolder];
      v24 = [v23 identifier];
      if ([v22 isEqual:v24])
      {
        [v6 targetName];
        v25 = v34 = v18;
        v26 = [v6 source];
        [v26 filename];
        v27 = v38 = v22;
        v36 = [v25 isEqualToString:v27];

        if (v36)
        {
          v28 = [v6 source];
          (v11)[2](v11, v28, 0);

          goto LABEL_11;
        }
      }

      else
      {
      }

      v29 = [v6 source];
      v30 = [v6 targetFolder];
      v31 = [v6 targetName];
      -[FPDMoveWriter performMoveOfItem:to:as:sourceMaterializeOption:targetMaterializeOption:useDiskWriter:completion:](self, "performMoveOfItem:to:as:sourceMaterializeOption:targetMaterializeOption:useDiskWriter:completion:", v29, v30, v31, [v6 materializeOption], objc_msgSend(v6, "targetMaterializeOption"), objc_msgSend(v6, "useDiskWriter"), v11);

      goto LABEL_11;
    }

    v19 = [v6 targetFolder];
    v20 = [v6 targetName];
    v37 = [v6 materializeOption];
    v35 = [v6 targetMaterializeOption];
    v21 = [v6 useDiskWriter];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __53__FPDMoveWriter__performCopyOrMoveOfItem_completion___block_invoke_3;
    v39[3] = &unk_1E83C14C0;
    v39[4] = self;
    v40 = v6;
    v41 = v11;
    [(FPDMoveWriter *)self performCopyOfItem:v18 to:v19 as:v20 sourceMaterializeOption:v37 targetMaterializeOption:v35 useDiskWriter:v21 completion:v39];
  }

LABEL_11:
}

void __53__FPDMoveWriter__performCopyOrMoveOfItem_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FPDMoveWriter__performCopyOrMoveOfItem_completion___block_invoke_2;
  block[3] = &unk_1E83C13F8;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __53__FPDMoveWriter__performCopyOrMoveOfItem_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FPDMoveWriter__performCopyOrMoveOfItem_completion___block_invoke_4;
  block[3] = &unk_1E83C14E8;
  block[4] = v8;
  v14 = v7;
  v15 = v5;
  v10 = *(a1 + 48);
  v16 = v6;
  v17 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

uint64_t __53__FPDMoveWriter__performCopyOrMoveOfItem_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) handleCreationForAtom:*(a1 + 40) result:*(a1 + 48)];
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 64) + 16);

  return v4();
}

- (void)_handleItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__FPDMoveWriter__handleItem_completion___block_invoke;
  v10[3] = &unk_1E83C14C0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(FPDMoveWriter *)self _performCopyOrMoveOfItem:v9 completion:v10];
}

uint64_t __40__FPDMoveWriter__handleItem_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = *(a1[4] + 112);
  v6 = a3;
  v7 = a2;
  dispatch_assert_queue_V2(v5);
  v8 = a1[4];
  v9 = a1[5];
  v10 = [v9 source];
  [v8 _handleCompletionOfAtom:v9 source:v10 result:v7 error:v6];

  v11 = *(a1[6] + 16);

  return v11();
}

- (void)_performCopyOrMoveOfFolder:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__FPDMoveWriter__performCopyOrMoveOfFolder_completion___block_invoke;
  aBlock[3] = &unk_1E83C1560;
  aBlock[4] = self;
  v8 = v7;
  v23 = v8;
  v9 = _Block_copy(aBlock);
  errorsByRoot = self->_errorsByRoot;
  v11 = [v6 root];
  v12 = [(NSMutableDictionary *)errorsByRoot objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [v6 source];
    [(FPDMoveWriter *)self _handleCompletionOfAtom:v6 source:v13 result:0 error:v12];

    v9[2](v9, 0, v12);
  }

  else
  {
    v14 = [(FPMoveInfo *)self->_info byCopy];
    v15 = [v6 source];
    v16 = [v6 targetFolder];
    v17 = [v6 targetName];
    if (v14)
    {
      -[FPDMoveWriter performCreateFolder:inside:as:useDiskWriter:completion:](self, "performCreateFolder:inside:as:useDiskWriter:completion:", v15, v16, v17, [v6 useDiskWriter], v9);
    }

    else
    {
      v21 = [v6 materializeOption];
      v18 = [v6 targetMaterializeOption];
      v19 = [v6 useAtomicMove];
      LOBYTE(v20) = [v6 useDiskWriter];
      [(FPDMoveWriter *)self performMoveOfFolder:v15 to:v16 as:v17 sourceMaterializeOption:v21 targetMaterializeOption:v18 atomically:v19 useDiskWriter:v20 completion:v9];
    }
  }
}

void __55__FPDMoveWriter__performCopyOrMoveOfFolder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__FPDMoveWriter__performCopyOrMoveOfFolder_completion___block_invoke_2;
  block[3] = &unk_1E83C13F8;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)_handleFolder:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v6 source];
  v9 = [v8 isFolder];

  if ((v9 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ expected a folder"];
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDMoveWriter _handleFolder:completion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveWriter.m", 266, [v12 UTF8String]);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__FPDMoveWriter__handleFolder_completion___block_invoke;
  v14[3] = &unk_1E83C14C0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  [(FPDMoveWriter *)self _performCopyOrMoveOfFolder:v11 completion:v14];
}

void __42__FPDMoveWriter__handleFolder_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 112));
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 40);
    v18 = 138412802;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] move-writer: atom done %@: %@, error=%@", &v18, 0x20u);
  }

  v8 = *(*(a1 + 32) + 40);
  v9 = [*(a1 + 40) source];
  [v8 addObject:v9];

  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  if (v5)
  {
    [*(v10 + 48) addObject:v5];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
    [v11 addObject:v12];
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = [v14 source];
  [v13 _handleCompletionOfAtom:v14 source:v15 result:v5 error:v6];

  (*(*(a1 + 48) + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleCompletionOfAtom:(id)a3 source:(id)a4 result:(id)a5 error:(id)a6
{
  v31 = a4;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v13 = a3;
  dispatch_assert_queue_V2(queue);
  v14 = [v13 source];
  v15 = [v14 identifier];
  [(FPDMoveWriter *)self _unblockWaiterForSourceID:v15 withResult:v10 error:v11];

  v16 = [v13 root];
  v17 = [v13 kind];
  info = self->_info;
  WeakRetained = objc_loadWeakRetained(&self->_operation);
  v20 = [WeakRetained manager];
  v21 = [v13 shouldAccountForDownloadOfSourceItemForMoveInfo:info extensionManager:v20];

  v22 = [v13 useAtomicMove];
  if (v11)
  {
    v23 = [(NSMutableDictionary *)self->_errorsByRoot objectForKeyedSubscript:v16];

    if (!v23)
    {
      [(NSMutableDictionary *)self->_errorsByRoot setObject:v11 forKeyedSubscript:v16];
    }
  }

  if (v17 != 1)
  {
    v24 = [(FPDMoveWriter *)self itemCompletionBlock];
    (v24)[2](v24, v16, v31, v21);
  }

  v25 = [(FPMoveInfo *)self->_info roots];
  v26 = [v25 containsObject:v31];

  if (v26)
  {
    if (v10)
    {
      v27 = [(FPDMoveWriter *)self rootCreatedBlock];
      (v27)[2](v27, v16, v10);
    }

    v28 = [(NSMutableDictionary *)self->_errorsByRoot objectForKeyedSubscript:v16];
    if (v17)
    {
      if (-[FPMoveInfo byMoving](self->_info, "byMoving") && !(v22 & 1 | (([v31 isExternalURL] & 1) == 0)))
      {
        [(FPDMoveWriter *)self _removeRoot:v16];
      }

      if (v17 == 1)
      {
        v29 = self->_depth - 1;
        self->_depth = v29;
        if (!v29)
        {
          [(FPMoveInfo *)self->_info setShouldBounce:self->_originalBouncePolicy];
        }
      }

      v30 = [(FPDMoveWriter *)self rootCompletionBlock];
      (v30)[2](v30, v16, v28);
    }

    else
    {
      ++self->_depth;
      [(FPMoveInfo *)self->_info setShouldBounce:1];
    }
  }
}

- (void)handleCreationForAtom:(id)a3 result:(id)a4
{
  v15 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [v15 root];
  v8 = [(FPMoveInfo *)self->_info roots];
  v9 = [v15 source];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    if (v6)
    {
      v11 = [(FPDMoveWriter *)self rootCreatedBlock];
      (v11)[2](v11, v7, v6);
    }

    progressByRoot = self->_progressByRoot;
    v13 = [v15 root];
    [(NSMutableDictionary *)progressByRoot removeObjectForKey:v13];
  }

  [(NSObservation *)self->_importProgressObservation finishObserving];
  importProgressObservation = self->_importProgressObservation;
  self->_importProgressObservation = 0;
}

- (void)_handlePostFolder:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (![(NSMutableArray *)self->_sourceFoldersStack count])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ _sourceFoldersStack - no folder to pop"];
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDMoveWriter _handlePostFolder:completion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveWriter.m", 373, [v8 UTF8String]);
  }

  if (![(NSMutableArray *)self->_destinationFoldersStack count])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ _destinationFoldersStack - no folder to pop"];
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDMoveWriter _handlePostFolder:completion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveWriter.m", 374, [v10 UTF8String]);
  }

  v7 = [(NSMutableArray *)self->_sourceFoldersStack lastObject];
  [(FPDMoveWriter *)self _handleCompletionOfAtom:v12 source:v7 result:0 error:0];
  [(NSMutableArray *)self->_sourceFoldersStack removeLastObject];
  [(NSMutableArray *)self->_destinationFoldersStack removeLastObject];
  v6[2](v6);
}

- (void)handleAtom:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __39__FPDMoveWriter_handleAtom_completion___block_invoke;
  v14 = &unk_1E83BE310;
  v15 = self;
  v16 = v7;
  v8 = v7;
  v9 = _Block_copy(&v11);
  v10 = [v6 kind];
  if (v10)
  {
    if (v10 == 1)
    {
      [(FPDMoveWriter *)self _handlePostFolder:v6 completion:v9];
    }

    else if (v10 == 2)
    {
      [(FPDMoveWriter *)self _handleItem:v6 completion:v9];
    }
  }

  else
  {
    [(FPDMoveWriter *)self _handleFolder:v6 completion:v9];
  }
}

uint64_t __39__FPDMoveWriter_handleAtom_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 216) stopAccessingAllURLs];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_step
{
  dispatch_assert_queue_V2(self->_asyncQueue);
  if (!self->_cancelled)
  {
    dispatch_assert_queue_not_V2(self->_queue);
    WeakRetained = objc_loadWeakRetained(&self->_moveQueue);
    v4 = [WeakRetained dequeue];

    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __22__FPDMoveWriter__step__block_invoke;
    v7[3] = &unk_1E83BE158;
    v8 = v4;
    v9 = self;
    v6 = v4;
    dispatch_sync(queue, v7);
  }
}

uint64_t __22__FPDMoveWriter__step__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __22__FPDMoveWriter__step__block_invoke_cold_1(v2);
    }

    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __22__FPDMoveWriter__step__block_invoke_24;
    v8[3] = &unk_1E83BE068;
    v8[4] = v4;
    return [v4 handleAtom:v5 completion:v8];
  }

  else
  {
    v7 = *(a1 + 40);

    return [v7 _finishWithError:0];
  }
}

void __22__FPDMoveWriter__step__block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__FPDMoveWriter__step__block_invoke_2;
  block[3] = &unk_1E83BE068;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)start
{
  asyncQueue = self->_asyncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__FPDMoveWriter_start__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(asyncQueue, block);
}

- (void)_finishWithError:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_cancelled)
  {
    v6 = fp_current_or_default_log();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [FPDMoveWriter _finishWithError:v5];
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveWriter _finishWithError:];
    }

    [(FPDCoordinator *)self->_coordinator stopAccessingAllURLs];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_accessTokens;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v19 + 1) + 8 * v12++) stopAccessing];
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [(FPDCoordinator *)self->_preemptiveDownloadCoordinator stopAccessingAllURLs];
    waiterBlock = self->_waiterBlock;
    if (waiterBlock)
    {
      waiterBlock[2](waiterBlock, 0, v5);
      v14 = self->_waiterBlock;
    }

    else
    {
      v14 = 0;
    }

    self->_waiterBlock = 0;

    waitedOnID = self->_waitedOnID;
    self->_waitedOnID = 0;

    self->_cancelled = 1;
    objc_storeStrong(&self->_error, a3);
    v16 = [(FPDMoveWriter *)self completionBlock];
    v17 = v16;
    if (v16)
    {
      (*(v16 + 16))(v16, v5);
      [(FPDMoveWriter *)self setCompletionBlock:0];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)failWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__FPDMoveWriter_failWithError___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)cancelRoot:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__FPDMoveWriter_cancelRoot___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __28__FPDMoveWriter_cancelRoot___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];

  if (!v2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [*(*(a1 + 32) + 56) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  v4 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  [v4 cancel];
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__FPDMoveWriter_cancel__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __23__FPDMoveWriter_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  [v1 _finishWithError:v2];
}

- (void)setProgress:(id)a3 forRoot:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(FPMoveInfo *)self->_info roots];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    [(NSMutableDictionary *)self->_progressByRoot setObject:v6 forKeyedSubscript:v7];
    v10 = [(FPDMoveWriter *)self itemCopyProgressBlock];
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v11 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:v6 path:"fractionCompleted"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __37__FPDMoveWriter_setProgress_forRoot___block_invoke;
    v15[3] = &unk_1E83C1588;
    v16 = v6;
    v19 = v20;
    v12 = v10;
    v18 = v12;
    v17 = v7;
    v13 = [v11 addObserverBlock:v15];
    importProgressObservation = self->_importProgressObservation;
    self->_importProgressObservation = v13;

    _Block_object_dispose(v20, 8);
  }
}

uint64_t __37__FPDMoveWriter_setProgress_forRoot___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) completedUnitCount];
  if (result != *(*(*(a1 + 56) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) completedUnitCount];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 48) + 16);

    return v4();
  }

  return result;
}

- (void)_unblockWaiterForSourceID:(id)a3 withResult:(id)a4 error:(id)a5
{
  v13 = a4;
  v8 = a5;
  queue = self->_queue;
  v10 = a3;
  dispatch_assert_queue_V2(queue);
  LODWORD(queue) = [self->_waitedOnID isEqual:v10];

  if (queue)
  {
    (*(self->_waiterBlock + 2))();
    waiterBlock = self->_waiterBlock;
    self->_waiterBlock = 0;

    waitedOnID = self->_waitedOnID;
    self->_waitedOnID = 0;
  }
}

- (id)waitForResultOfSourceID:(id)a3 root:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__16;
  v35 = __Block_byref_object_dispose__16;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__16;
  v29 = __Block_byref_object_dispose__16;
  v30 = 0;
  v11 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__FPDMoveWriter_waitForResultOfSourceID_root_error___block_invoke;
  block[3] = &unk_1E83C15D8;
  block[4] = self;
  v24 = a2;
  v13 = v9;
  v19 = v13;
  v22 = &v31;
  v14 = v11;
  v20 = v14;
  v15 = v10;
  v21 = v15;
  v23 = &v25;
  dispatch_sync(queue, block);
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (a5)
  {
    *a5 = v26[5];
  }

  v16 = v32[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

void __52__FPDMoveWriter_waitForResultOfSourceID_root_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = *v2;
  if (*(*v2 + 80))
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ cannot have more than 1 waiter"];
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    v27 = v25;
    __assert_rtn("-[FPDMoveWriter waitForResultOfSourceID:root:error:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveWriter.m", 547, [v25 UTF8String]);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = *(v3 + 40);
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v33;
    do
    {
      v8 = 0;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 40);
        v10 = [*(*(&v32 + 1) + 8 * v8) identifier];
        if ([v9 isEqual:v10])
        {
          v11 = [*(*(a1 + 32) + 48) objectAtIndexedSubscript:v6];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v19 = [*(*(a1 + 32) + 48) objectAtIndexedSubscript:v6];
            v20 = *(*(a1 + 64) + 8);
            v21 = *(v20 + 40);
            *(v20 + 40) = v19;

            dispatch_semaphore_signal(*(a1 + 48));
            goto LABEL_16;
          }
        }

        else
        {
        }

        ++v6;
        ++v8;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }

  v13 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 56)];

  if (v13)
  {
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    v16 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 56)];
    v17 = *(*(a1 + 72) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    dispatch_semaphore_signal(*(a1 + 48));
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __52__FPDMoveWriter_waitForResultOfSourceID_root_error___block_invoke_2;
    v28[3] = &unk_1E83C15B0;
    objc_copyWeak(&v31, &location);
    v30 = *(a1 + 64);
    v29 = *(a1 + 48);
    v22 = _Block_copy(v28);
    v23 = *(*(a1 + 32) + 80);
    *(*(a1 + 32) + 80) = v22;

    objc_destroyWeak(&v31);
  }

LABEL_16:
  objc_destroyWeak(&location);
  v24 = *MEMORY[0x1E69E9840];
}

void __52__FPDMoveWriter_waitForResultOfSourceID_root_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  dispatch_assert_queue_V2(WeakRetained[14]);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)startDownloadOfItem:(id)a3 shouldMaterializeRecursively:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FPDMoveWriter startDownloadOfItem:shouldMaterializeRecursively:completionHandler:];
  }

  v11 = [objc_opt_class() acquireDownloadSlotForItem:v8];
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  preemptiveDownloadCoordinator = self->_preemptiveDownloadCoordinator;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke;
  v18[3] = &unk_1E83C1420;
  v19 = v8;
  v20 = self;
  v21 = v11;
  v22 = v12;
  v23 = v9;
  v24 = a4;
  v14 = v9;
  v15 = v12;
  v16 = v11;
  v17 = v8;
  [(FPDCoordinator *)preemptiveDownloadCoordinator resolveItem:v17 completion:v18];
  dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
}

void __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = v7[4];
    v9 = *(a1 + 72);
    v10 = [v7 operation];
    v11 = [v10 request];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke_39;
    v18[3] = &unk_1E83C1600;
    v12 = *(a1 + 48);
    v18[4] = *(a1 + 40);
    v19 = v12;
    v20 = *(a1 + 32);
    v21 = *(a1 + 64);
    [v8 coordinateAtURL:v5 recursively:v9 request:v11 handler:v18];

    dispatch_group_leave(*(a1 + 56));
  }

  else
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke_cold_1(a1, v6);
    }

    v14 = *(a1 + 40);
    [objc_opt_class() releaseDownloadSlot:*(a1 + 48)];
    dispatch_group_leave(*(a1 + 56));
    v15 = *(a1 + 64);
    if (v15)
    {
      if (v6)
      {
        (*(v15 + 16))(*(a1 + 64), v6);
      }

      else
      {
        v16 = [*(a1 + 32) itemIdentifier];
        v17 = FPItemNotFoundError();
        (*(v15 + 16))(v15, v17);
      }
    }
  }
}

void __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke_39(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = a4;
  [objc_opt_class() releaseDownloadSlot:*(a1 + 40)];
  v8[2](v8);

  v9 = fp_current_or_default_log();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke_39_cold_1(a1, v6);
    }

    [*(a1 + 32) _finishWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke_39_cold_2(a1);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v6);
  }
}

- (void)_removeRoot:(id)a3
{
  v4 = a3;
  if ([v4 isFolder])
  {
    v5 = [(FPDMoveWriter *)self coordinator];
    v6 = [v4 asURL];
    [v5 startAccessingURLForAtomDuration:v6];

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v4 asURL];
    v12 = 0;
    v9 = [v7 removeItemAtURL:v8 error:&v12];
    v10 = v12;

    if ((v9 & 1) == 0)
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [FPDMoveWriter _removeRoot:v10];
      }
    }
  }

  else
  {
    v10 = 0;
  }
}

- (void)dumpStateTo:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__FPDMoveWriter_dumpStateTo___block_invoke;
  v7[3] = &unk_1E83BE158;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __29__FPDMoveWriter_dumpStateTo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) write:@"+ writer\n"];
  v2 = *(a1 + 40);
  if (*(v2 + 88) == 1)
  {
    [*(a1 + 32) write:@"  cancelled\n"];
    v2 = *(a1 + 40);
  }

  if (*(v2 + 96))
  {
    [*(a1 + 32) startFgColor:1];
    [*(a1 + 32) write:{@"  error: %@\n", *(*(a1 + 40) + 96)}];
    [*(a1 + 32) reset];
    v2 = *(a1 + 40);
  }

  if (*(v2 + 72))
  {
    [*(a1 + 32) startAttributes:2];
    [*(a1 + 32) write:{@"  waiter on: %@\n", *(*(a1 + 40) + 72)}];
    [*(a1 + 32) reset];
    v2 = *(a1 + 40);
  }

  [*(a1 + 32) write:{@"  folder stack (origin): %@\n", *(v2 + 40)}];
  [*(a1 + 32) write:{@"  folder stack (destination): %@\n", *(*(a1 + 40) + 48)}];
  if ([*(*(a1 + 40) + 56) count])
  {
    [*(a1 + 32) startFgColor:1];
    [*(a1 + 32) write:{@"  errors by root: %@\n", *(*(a1 + 40) + 56)}];
    [*(a1 + 32) reset];
  }

  v3 = *(a1 + 32);

  return [v3 write:@"\n"];
}

- (id)defaultExecutor
{
  providerWriter = self->_providerWriter;
  if (providerWriter)
  {
    v3 = providerWriter;
  }

  else
  {
    v3 = [(FPDMoveWriter *)self diskWriter];
  }

  return v3;
}

- (FPDMoveWriterExecutor)diskWriter
{
  diskWriter = self->_diskWriter;
  if (!diskWriter)
  {
    v4 = [[FPDMoveWriterToDisk alloc] initWithWriter:self];
    v5 = self->_diskWriter;
    self->_diskWriter = v4;

    diskWriter = self->_diskWriter;
  }

  return diskWriter;
}

- (void)performCopyOfItem:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(FPDMoveWriter *)self defaultExecutor];
  [v18 performCopyOfItem:v17 to:v16 as:v15 sourceMaterializeOption:a6 targetMaterializeOption:a7 completion:v14];
}

- (void)performCopyOfItem:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 useDiskWriter:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v16 = a9;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  if (v9)
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveWriter performCopyOfItem:? to:? as:? sourceMaterializeOption:? targetMaterializeOption:? useDiskWriter:? completion:?];
    }

    v21 = [(FPDMoveWriter *)self diskWriter];
    [v21 performCopyOfItem:v19 to:v18 as:v17 sourceMaterializeOption:a6 targetMaterializeOption:a7 completion:v16];
  }

  else
  {
    v22 = [(FPDMoveWriter *)self defaultExecutor];
    [v22 performCopyOfItem:v19 to:v18 as:v17 sourceMaterializeOption:a6 targetMaterializeOption:a7 completion:v16];
  }
}

- (void)performMoveOfItem:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 useDiskWriter:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v16 = a9;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = fp_current_or_default_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v21)
    {
      [FPDMoveWriter performMoveOfItem:? to:? as:? sourceMaterializeOption:? targetMaterializeOption:? useDiskWriter:? completion:?];
    }

    v22 = [(FPDMoveWriter *)self diskWriter];
  }

  else
  {
    if (v21)
    {
      [FPDMoveWriter performMoveOfItem:to:as:sourceMaterializeOption:targetMaterializeOption:useDiskWriter:completion:];
    }

    v22 = [(FPDMoveWriter *)self defaultExecutor];
  }

  v23 = v22;
  [v22 performMoveOfItem:v19 to:v18 as:v17 sourceMaterializeOption:a6 targetMaterializeOption:a7 completion:v16];
}

- (void)performCreateFolder:(id)a3 inside:(id)a4 as:(id)a5 useDiskWriter:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = fp_current_or_default_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v17)
    {
      [FPDMoveWriter performCreateFolder:? inside:? as:? useDiskWriter:? completion:?];
    }

    v18 = [(FPDMoveWriter *)self diskWriter];
  }

  else
  {
    if (v17)
    {
      [FPDMoveWriter performCreateFolder:inside:as:useDiskWriter:completion:];
    }

    v18 = [(FPDMoveWriter *)self defaultExecutor];
  }

  v19 = v18;
  [v18 performCreateFolder:v15 inside:v14 as:v13 completion:v12];
}

- (FPDMoveOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

- (void)initWithOperation:queue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __22__FPDMoveWriter__step__block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_finishWithError:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)startDownloadOfItem:shouldMaterializeRecursively:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] move-writer starting download of item %@, shouldMaterializeRecursively %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke_39_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke_39_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_removeRoot:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)performCopyOfItem:(void *)a1 to:as:sourceMaterializeOption:targetMaterializeOption:useDiskWriter:completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 diskWriter];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)performMoveOfItem:(void *)a1 to:as:sourceMaterializeOption:targetMaterializeOption:useDiskWriter:completion:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 diskWriter];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)performMoveOfFolder:to:as:sourceMaterializeOption:targetMaterializeOption:atomically:useDiskWriter:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)performMoveOfFolder:(void *)a1 to:as:sourceMaterializeOption:targetMaterializeOption:atomically:useDiskWriter:completion:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 diskWriter];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)performCreateFolder:(void *)a1 inside:as:useDiskWriter:completion:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 diskWriter];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end
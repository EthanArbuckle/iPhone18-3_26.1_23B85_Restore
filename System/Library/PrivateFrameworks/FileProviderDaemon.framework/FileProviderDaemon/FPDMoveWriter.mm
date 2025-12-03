@interface FPDMoveWriter
+ (id)acquireDownloadSlotForItem:(id)item;
+ (void)initialize;
+ (void)releaseDownloadSlot:(id)slot;
- (FPDMoveOperation)operation;
- (FPDMoveWriter)initWithOperation:(id)operation queue:(id)queue;
- (FPDMoveWriterExecutor)diskWriter;
- (id)defaultExecutor;
- (id)waitForResultOfSourceID:(id)d root:(id)root error:(id *)error;
- (void)_finishWithError:(id)error;
- (void)_handleCompletionOfAtom:(id)atom source:(id)source result:(id)result error:(id)error;
- (void)_handleFolder:(id)folder completion:(id)completion;
- (void)_handleItem:(id)item completion:(id)completion;
- (void)_handlePostFolder:(id)folder completion:(id)completion;
- (void)_performCopyOrMoveOfFolder:(id)folder completion:(id)completion;
- (void)_performCopyOrMoveOfItem:(id)item completion:(id)completion;
- (void)_removeRoot:(id)root;
- (void)_step;
- (void)_unblockWaiterForSourceID:(id)d withResult:(id)result error:(id)error;
- (void)cancel;
- (void)cancelRoot:(id)root;
- (void)dumpStateTo:(id)to;
- (void)failWithError:(id)error;
- (void)handleAtom:(id)atom completion:(id)completion;
- (void)handleCreationForAtom:(id)atom result:(id)result;
- (void)performCopyOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption completion:(id)completion;
- (void)performCopyOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption useDiskWriter:(BOOL)writer completion:(id)completion;
- (void)performCreateFolder:(id)folder inside:(id)inside as:(id)as useDiskWriter:(BOOL)writer completion:(id)completion;
- (void)performMoveOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption useDiskWriter:(BOOL)writer completion:(id)completion;
- (void)setProgress:(id)progress forRoot:(id)root;
- (void)start;
- (void)startDownloadOfItem:(id)item shouldMaterializeRecursively:(BOOL)recursively completionHandler:(id)handler;
@end

@implementation FPDMoveWriter

+ (id)acquireDownloadSlotForItem:(id)item
{
  itemCopy = item;
  providerID = [itemCopy providerID];
  v5 = _globalDownloadSlotsByProvider_0;
  objc_sync_enter(v5);
  v6 = [_globalDownloadSlotsByProvider_0 objectForKeyedSubscript:providerID];
  if (!v6)
  {
    v6 = dispatch_semaphore_create(256);
    [_globalDownloadSlotsByProvider_0 setObject:v6 forKeyedSubscript:providerID];
  }

  objc_sync_exit(v5);

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  return providerID;
}

+ (void)releaseDownloadSlot:(id)slot
{
  slotCopy = slot;
  v3 = _globalDownloadSlotsByProvider_0;
  objc_sync_enter(v3);
  v4 = [_globalDownloadSlotsByProvider_0 objectForKeyedSubscript:slotCopy];
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

- (FPDMoveWriter)initWithOperation:(id)operation queue:(id)queue
{
  v69 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  queueCopy = queue;
  v67.receiver = self;
  v67.super_class = FPDMoveWriter;
  v8 = [(FPDMoveWriter *)&v67 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_operation, operationCopy);
    info = [operationCopy info];
    info = v9->_info;
    v9->_info = info;

    objc_storeWeak(&v9->_moveQueue, queueCopy);
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
    manager = [WeakRetained manager];
    v31 = [(FPDCoordinator *)v28 initWithExtensionManager:manager callbackQueue:v9->_queue];
    coordinator = v9->_coordinator;
    v9->_coordinator = v31;

    v33 = [FPDCoordinator alloc];
    v34 = objc_loadWeakRetained(&v9->_operation);
    manager2 = [v34 manager];
    v36 = [(FPDCoordinator *)v33 initWithExtensionManager:manager2 callbackQueue:v9->_queue];
    preemptiveDownloadCoordinator = v9->_preemptiveDownloadCoordinator;
    v9->_preemptiveDownloadCoordinator = v36;

    section = __fp_create_section();
    v39 = fp_current_or_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveWriter initWithOperation:queue:];
    }

    v9->_logSection = section;
    info2 = [operationCopy info];
    targetFolder = [info2 targetFolder];
    isProviderItem = [targetFolder isProviderItem];

    if (isProviderItem)
    {
      v43 = [[FPDMoveWriterToProvider alloc] initWithWriter:v9];
      providerWriter = v9->_providerWriter;
      v9->_providerWriter = v43;
    }

    if ([(FPMoveInfo *)v9->_info _t_clearItemURLs])
    {
      targetFolder2 = [(FPMoveInfo *)v9->_info targetFolder];
      asFPItem = [targetFolder2 asFPItem];
      [asFPItem setFileURL:0];

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      roots = [(FPMoveInfo *)v9->_info roots];
      v48 = [roots countByEnumeratingWithState:&v63 objects:v68 count:16];
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
              objc_enumerationMutation(roots);
            }

            asFPItem2 = [*(*(&v63 + 1) + 8 * v51) asFPItem];
            [asFPItem2 setFileURL:0];

            ++v51;
          }

          while (v49 != v51);
          v49 = [roots countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v49);
      }
    }

    roots2 = [(FPMoveInfo *)v9->_info roots];
    targetFolder3 = [(FPMoveInfo *)v9->_info targetFolder];
    v55 = [roots2 arrayByAddingObject:targetFolder3];

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

- (void)_performCopyOrMoveOfItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  source = [itemCopy source];
  isFolder = [source isFolder];

  if (isFolder)
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
  v10 = completionCopy;
  v43 = v10;
  v11 = _Block_copy(aBlock);
  errorsByRoot = self->_errorsByRoot;
  root = [itemCopy root];
  v14 = [(NSMutableDictionary *)errorsByRoot objectForKeyedSubscript:root];

  if (v14)
  {
    source2 = [itemCopy source];
    [(FPDMoveWriter *)self _handleCompletionOfAtom:itemCopy source:source2 result:0 error:v14];

    v11[2](v11, 0, v14);
  }

  else
  {
    byCopy = [(FPMoveInfo *)self->_info byCopy];
    source3 = [itemCopy source];
    v18 = source3;
    if (!byCopy)
    {
      parentIdentifier = [source3 parentIdentifier];
      targetFolder = [itemCopy targetFolder];
      identifier = [targetFolder identifier];
      if ([parentIdentifier isEqual:identifier])
      {
        [itemCopy targetName];
        v25 = v34 = v18;
        source4 = [itemCopy source];
        [source4 filename];
        v27 = v38 = parentIdentifier;
        v36 = [v25 isEqualToString:v27];

        if (v36)
        {
          source5 = [itemCopy source];
          (v11)[2](v11, source5, 0);

          goto LABEL_11;
        }
      }

      else
      {
      }

      source6 = [itemCopy source];
      targetFolder2 = [itemCopy targetFolder];
      targetName = [itemCopy targetName];
      -[FPDMoveWriter performMoveOfItem:to:as:sourceMaterializeOption:targetMaterializeOption:useDiskWriter:completion:](self, "performMoveOfItem:to:as:sourceMaterializeOption:targetMaterializeOption:useDiskWriter:completion:", source6, targetFolder2, targetName, [itemCopy materializeOption], objc_msgSend(itemCopy, "targetMaterializeOption"), objc_msgSend(itemCopy, "useDiskWriter"), v11);

      goto LABEL_11;
    }

    targetFolder3 = [itemCopy targetFolder];
    targetName2 = [itemCopy targetName];
    materializeOption = [itemCopy materializeOption];
    targetMaterializeOption = [itemCopy targetMaterializeOption];
    useDiskWriter = [itemCopy useDiskWriter];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __53__FPDMoveWriter__performCopyOrMoveOfItem_completion___block_invoke_3;
    v39[3] = &unk_1E83C14C0;
    v39[4] = self;
    v40 = itemCopy;
    v41 = v11;
    [(FPDMoveWriter *)self performCopyOfItem:v18 to:targetFolder3 as:targetName2 sourceMaterializeOption:materializeOption targetMaterializeOption:targetMaterializeOption useDiskWriter:useDiskWriter completion:v39];
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

- (void)_handleItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__FPDMoveWriter__handleItem_completion___block_invoke;
  v10[3] = &unk_1E83C14C0;
  v10[4] = self;
  v11 = itemCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = itemCopy;
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

- (void)_performCopyOrMoveOfFolder:(id)folder completion:(id)completion
{
  folderCopy = folder;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__FPDMoveWriter__performCopyOrMoveOfFolder_completion___block_invoke;
  aBlock[3] = &unk_1E83C1560;
  aBlock[4] = self;
  v8 = completionCopy;
  v23 = v8;
  v9 = _Block_copy(aBlock);
  errorsByRoot = self->_errorsByRoot;
  root = [folderCopy root];
  v12 = [(NSMutableDictionary *)errorsByRoot objectForKeyedSubscript:root];

  if (v12)
  {
    source = [folderCopy source];
    [(FPDMoveWriter *)self _handleCompletionOfAtom:folderCopy source:source result:0 error:v12];

    v9[2](v9, 0, v12);
  }

  else
  {
    byCopy = [(FPMoveInfo *)self->_info byCopy];
    source2 = [folderCopy source];
    targetFolder = [folderCopy targetFolder];
    targetName = [folderCopy targetName];
    if (byCopy)
    {
      -[FPDMoveWriter performCreateFolder:inside:as:useDiskWriter:completion:](self, "performCreateFolder:inside:as:useDiskWriter:completion:", source2, targetFolder, targetName, [folderCopy useDiskWriter], v9);
    }

    else
    {
      materializeOption = [folderCopy materializeOption];
      targetMaterializeOption = [folderCopy targetMaterializeOption];
      useAtomicMove = [folderCopy useAtomicMove];
      LOBYTE(v20) = [folderCopy useDiskWriter];
      [(FPDMoveWriter *)self performMoveOfFolder:source2 to:targetFolder as:targetName sourceMaterializeOption:materializeOption targetMaterializeOption:targetMaterializeOption atomically:useAtomicMove useDiskWriter:v20 completion:v9];
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

- (void)_handleFolder:(id)folder completion:(id)completion
{
  folderCopy = folder;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  source = [folderCopy source];
  isFolder = [source isFolder];

  if ((isFolder & 1) == 0)
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
  v15 = folderCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = folderCopy;
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

- (void)_handleCompletionOfAtom:(id)atom source:(id)source result:(id)result error:(id)error
{
  sourceCopy = source;
  resultCopy = result;
  errorCopy = error;
  queue = self->_queue;
  atomCopy = atom;
  dispatch_assert_queue_V2(queue);
  source = [atomCopy source];
  identifier = [source identifier];
  [(FPDMoveWriter *)self _unblockWaiterForSourceID:identifier withResult:resultCopy error:errorCopy];

  root = [atomCopy root];
  kind = [atomCopy kind];
  info = self->_info;
  WeakRetained = objc_loadWeakRetained(&self->_operation);
  manager = [WeakRetained manager];
  v21 = [atomCopy shouldAccountForDownloadOfSourceItemForMoveInfo:info extensionManager:manager];

  useAtomicMove = [atomCopy useAtomicMove];
  if (errorCopy)
  {
    v23 = [(NSMutableDictionary *)self->_errorsByRoot objectForKeyedSubscript:root];

    if (!v23)
    {
      [(NSMutableDictionary *)self->_errorsByRoot setObject:errorCopy forKeyedSubscript:root];
    }
  }

  if (kind != 1)
  {
    itemCompletionBlock = [(FPDMoveWriter *)self itemCompletionBlock];
    (itemCompletionBlock)[2](itemCompletionBlock, root, sourceCopy, v21);
  }

  roots = [(FPMoveInfo *)self->_info roots];
  v26 = [roots containsObject:sourceCopy];

  if (v26)
  {
    if (resultCopy)
    {
      rootCreatedBlock = [(FPDMoveWriter *)self rootCreatedBlock];
      (rootCreatedBlock)[2](rootCreatedBlock, root, resultCopy);
    }

    v28 = [(NSMutableDictionary *)self->_errorsByRoot objectForKeyedSubscript:root];
    if (kind)
    {
      if (-[FPMoveInfo byMoving](self->_info, "byMoving") && !(useAtomicMove & 1 | (([sourceCopy isExternalURL] & 1) == 0)))
      {
        [(FPDMoveWriter *)self _removeRoot:root];
      }

      if (kind == 1)
      {
        v29 = self->_depth - 1;
        self->_depth = v29;
        if (!v29)
        {
          [(FPMoveInfo *)self->_info setShouldBounce:self->_originalBouncePolicy];
        }
      }

      rootCompletionBlock = [(FPDMoveWriter *)self rootCompletionBlock];
      (rootCompletionBlock)[2](rootCompletionBlock, root, v28);
    }

    else
    {
      ++self->_depth;
      [(FPMoveInfo *)self->_info setShouldBounce:1];
    }
  }
}

- (void)handleCreationForAtom:(id)atom result:(id)result
{
  atomCopy = atom;
  resultCopy = result;
  dispatch_assert_queue_V2(self->_queue);
  root = [atomCopy root];
  roots = [(FPMoveInfo *)self->_info roots];
  source = [atomCopy source];
  v10 = [roots containsObject:source];

  if (v10)
  {
    if (resultCopy)
    {
      rootCreatedBlock = [(FPDMoveWriter *)self rootCreatedBlock];
      (rootCreatedBlock)[2](rootCreatedBlock, root, resultCopy);
    }

    progressByRoot = self->_progressByRoot;
    root2 = [atomCopy root];
    [(NSMutableDictionary *)progressByRoot removeObjectForKey:root2];
  }

  [(NSObservation *)self->_importProgressObservation finishObserving];
  importProgressObservation = self->_importProgressObservation;
  self->_importProgressObservation = 0;
}

- (void)_handlePostFolder:(id)folder completion:(id)completion
{
  folderCopy = folder;
  completionCopy = completion;
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

  lastObject = [(NSMutableArray *)self->_sourceFoldersStack lastObject];
  [(FPDMoveWriter *)self _handleCompletionOfAtom:folderCopy source:lastObject result:0 error:0];
  [(NSMutableArray *)self->_sourceFoldersStack removeLastObject];
  [(NSMutableArray *)self->_destinationFoldersStack removeLastObject];
  completionCopy[2](completionCopy);
}

- (void)handleAtom:(id)atom completion:(id)completion
{
  atomCopy = atom;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __39__FPDMoveWriter_handleAtom_completion___block_invoke;
  v14 = &unk_1E83BE310;
  selfCopy = self;
  v16 = completionCopy;
  v8 = completionCopy;
  v9 = _Block_copy(&v11);
  kind = [atomCopy kind];
  if (kind)
  {
    if (kind == 1)
    {
      [(FPDMoveWriter *)self _handlePostFolder:atomCopy completion:v9];
    }

    else if (kind == 2)
    {
      [(FPDMoveWriter *)self _handleItem:atomCopy completion:v9];
    }
  }

  else
  {
    [(FPDMoveWriter *)self _handleFolder:atomCopy completion:v9];
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
    dequeue = [WeakRetained dequeue];

    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __22__FPDMoveWriter__step__block_invoke;
    v7[3] = &unk_1E83BE158;
    v8 = dequeue;
    selfCopy = self;
    v6 = dequeue;
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

- (void)_finishWithError:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_cancelled)
  {
    v6 = fp_current_or_default_log();
    v7 = v6;
    if (errorCopy)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [FPDMoveWriter _finishWithError:errorCopy];
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
      waiterBlock[2](waiterBlock, 0, errorCopy);
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
    objc_storeStrong(&self->_error, error);
    completionBlock = [(FPDMoveWriter *)self completionBlock];
    v17 = completionBlock;
    if (completionBlock)
    {
      (*(completionBlock + 16))(completionBlock, errorCopy);
      [(FPDMoveWriter *)self setCompletionBlock:0];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__FPDMoveWriter_failWithError___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(queue, v7);
}

- (void)cancelRoot:(id)root
{
  rootCopy = root;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__FPDMoveWriter_cancelRoot___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = rootCopy;
  v6 = rootCopy;
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

- (void)setProgress:(id)progress forRoot:(id)root
{
  progressCopy = progress;
  rootCopy = root;
  dispatch_assert_queue_V2(self->_queue);
  roots = [(FPMoveInfo *)self->_info roots];
  v9 = [roots containsObject:rootCopy];

  if (v9)
  {
    [(NSMutableDictionary *)self->_progressByRoot setObject:progressCopy forKeyedSubscript:rootCopy];
    itemCopyProgressBlock = [(FPDMoveWriter *)self itemCopyProgressBlock];
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v11 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:progressCopy path:"fractionCompleted"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __37__FPDMoveWriter_setProgress_forRoot___block_invoke;
    v15[3] = &unk_1E83C1588;
    v16 = progressCopy;
    v19 = v20;
    v12 = itemCopyProgressBlock;
    v18 = v12;
    v17 = rootCopy;
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

- (void)_unblockWaiterForSourceID:(id)d withResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  LODWORD(queue) = [self->_waitedOnID isEqual:dCopy];

  if (queue)
  {
    (*(self->_waiterBlock + 2))();
    waiterBlock = self->_waiterBlock;
    self->_waiterBlock = 0;

    waitedOnID = self->_waitedOnID;
    self->_waitedOnID = 0;
  }
}

- (id)waitForResultOfSourceID:(id)d root:(id)root error:(id *)error
{
  dCopy = d;
  rootCopy = root;
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
  v13 = dCopy;
  v19 = v13;
  v22 = &v31;
  v14 = v11;
  v20 = v14;
  v15 = rootCopy;
  v21 = v15;
  v23 = &v25;
  dispatch_sync(queue, block);
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v26[5];
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

- (void)startDownloadOfItem:(id)item shouldMaterializeRecursively:(BOOL)recursively completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FPDMoveWriter startDownloadOfItem:shouldMaterializeRecursively:completionHandler:];
  }

  v11 = [objc_opt_class() acquireDownloadSlotForItem:itemCopy];
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  preemptiveDownloadCoordinator = self->_preemptiveDownloadCoordinator;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__FPDMoveWriter_startDownloadOfItem_shouldMaterializeRecursively_completionHandler___block_invoke;
  v18[3] = &unk_1E83C1420;
  v19 = itemCopy;
  selfCopy = self;
  v21 = v11;
  v22 = v12;
  v23 = handlerCopy;
  recursivelyCopy = recursively;
  v14 = handlerCopy;
  v15 = v12;
  v16 = v11;
  v17 = itemCopy;
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

- (void)_removeRoot:(id)root
{
  rootCopy = root;
  if ([rootCopy isFolder])
  {
    coordinator = [(FPDMoveWriter *)self coordinator];
    asURL = [rootCopy asURL];
    [coordinator startAccessingURLForAtomDuration:asURL];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    asURL2 = [rootCopy asURL];
    v12 = 0;
    v9 = [defaultManager removeItemAtURL:asURL2 error:&v12];
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

- (void)dumpStateTo:(id)to
{
  toCopy = to;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__FPDMoveWriter_dumpStateTo___block_invoke;
  v7[3] = &unk_1E83BE158;
  v8 = toCopy;
  selfCopy = self;
  v6 = toCopy;
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
    diskWriter = providerWriter;
  }

  else
  {
    diskWriter = [(FPDMoveWriter *)self diskWriter];
  }

  return diskWriter;
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

- (void)performCopyOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption completion:(id)completion
{
  completionCopy = completion;
  asCopy = as;
  toCopy = to;
  itemCopy = item;
  defaultExecutor = [(FPDMoveWriter *)self defaultExecutor];
  [defaultExecutor performCopyOfItem:itemCopy to:toCopy as:asCopy sourceMaterializeOption:option targetMaterializeOption:materializeOption completion:completionCopy];
}

- (void)performCopyOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption useDiskWriter:(BOOL)writer completion:(id)completion
{
  writerCopy = writer;
  completionCopy = completion;
  asCopy = as;
  toCopy = to;
  itemCopy = item;
  if (writerCopy)
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveWriter performCopyOfItem:? to:? as:? sourceMaterializeOption:? targetMaterializeOption:? useDiskWriter:? completion:?];
    }

    diskWriter = [(FPDMoveWriter *)self diskWriter];
    [diskWriter performCopyOfItem:itemCopy to:toCopy as:asCopy sourceMaterializeOption:option targetMaterializeOption:materializeOption completion:completionCopy];
  }

  else
  {
    defaultExecutor = [(FPDMoveWriter *)self defaultExecutor];
    [defaultExecutor performCopyOfItem:itemCopy to:toCopy as:asCopy sourceMaterializeOption:option targetMaterializeOption:materializeOption completion:completionCopy];
  }
}

- (void)performMoveOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption useDiskWriter:(BOOL)writer completion:(id)completion
{
  writerCopy = writer;
  completionCopy = completion;
  asCopy = as;
  toCopy = to;
  itemCopy = item;
  v20 = fp_current_or_default_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (writerCopy)
  {
    if (v21)
    {
      [FPDMoveWriter performMoveOfItem:? to:? as:? sourceMaterializeOption:? targetMaterializeOption:? useDiskWriter:? completion:?];
    }

    diskWriter = [(FPDMoveWriter *)self diskWriter];
  }

  else
  {
    if (v21)
    {
      [FPDMoveWriter performMoveOfItem:to:as:sourceMaterializeOption:targetMaterializeOption:useDiskWriter:completion:];
    }

    diskWriter = [(FPDMoveWriter *)self defaultExecutor];
  }

  v23 = diskWriter;
  [diskWriter performMoveOfItem:itemCopy to:toCopy as:asCopy sourceMaterializeOption:option targetMaterializeOption:materializeOption completion:completionCopy];
}

- (void)performCreateFolder:(id)folder inside:(id)inside as:(id)as useDiskWriter:(BOOL)writer completion:(id)completion
{
  writerCopy = writer;
  completionCopy = completion;
  asCopy = as;
  insideCopy = inside;
  folderCopy = folder;
  v16 = fp_current_or_default_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (writerCopy)
  {
    if (v17)
    {
      [FPDMoveWriter performCreateFolder:? inside:? as:? useDiskWriter:? completion:?];
    }

    diskWriter = [(FPDMoveWriter *)self diskWriter];
  }

  else
  {
    if (v17)
    {
      [FPDMoveWriter performCreateFolder:inside:as:useDiskWriter:completion:];
    }

    diskWriter = [(FPDMoveWriter *)self defaultExecutor];
  }

  v19 = diskWriter;
  [diskWriter performCreateFolder:folderCopy inside:insideCopy as:asCopy completion:completionCopy];
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
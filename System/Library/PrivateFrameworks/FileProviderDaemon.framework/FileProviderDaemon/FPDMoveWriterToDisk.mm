@interface FPDMoveWriterToDisk
- (FPDMoveWriterToDisk)initWithWriter:(id)writer;
- (void)_performCopyOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption bounceNumber:(id)number completion:(id)completion;
- (void)_performMoveOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption bounceNumber:(id)number completion:(id)completion;
- (void)_resolveLocator:(id)locator completion:(id)completion;
- (void)_respectLastUsageDatePolicyForDestinationURL:(id)l withSource:(id)source;
- (void)dealloc;
- (void)performCopyOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption completion:(id)completion;
- (void)performCreateFolder:(id)folder inside:(id)inside as:(id)as completion:(id)completion;
- (void)performMoveOfFolder:(id)folder to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption atomically:(BOOL)atomically completion:(id)completion;
- (void)performMoveOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption completion:(id)completion;
@end

@implementation FPDMoveWriterToDisk

- (FPDMoveWriterToDisk)initWithWriter:(id)writer
{
  writerCopy = writer;
  v14.receiver = self;
  v14.super_class = FPDMoveWriterToDisk;
  v5 = [(FPDMoveWriterToDisk *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_writer, writerCopy);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    fileManager = v6->_fileManager;
    v6->_fileManager = defaultManager;

    info = [writerCopy info];
    targetFolder = [info targetFolder];
    startAccessingLocator = [targetFolder startAccessingLocator];
    stopAccessingToken = v6->_stopAccessingToken;
    v6->_stopAccessingToken = startAccessingLocator;
  }

  return v6;
}

- (void)dealloc
{
  [(FPActionLocatorAccess *)self->_stopAccessingToken stopAccessing];
  v3.receiver = self;
  v3.super_class = FPDMoveWriterToDisk;
  [(FPDMoveWriterToDisk *)&v3 dealloc];
}

- (void)_respectLastUsageDatePolicyForDestinationURL:(id)l withSource:(id)source
{
  lCopy = l;
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  info = [WeakRetained info];
  lastUsedDatePolicy = [info lastUsedDatePolicy];

  if (lastUsedDatePolicy == 2)
  {
    date = [MEMORY[0x1E695DF00] date];
    goto LABEL_8;
  }

  if (lastUsedDatePolicy != 1)
  {
    goto LABEL_9;
  }

  date = FPFileMetadataCopyLastUsedDateAtURL();
  v12 = 0;
  if (!v12)
  {
LABEL_8:
    FPSetLastUsedDateAtURL();

    goto LABEL_9;
  }

  v13 = v12;
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [FPDMoveWriterToDisk _respectLastUsageDatePolicyForDestinationURL:withSource:];
  }

LABEL_9:
}

- (void)_performCopyOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption bounceNumber:(id)number completion:(id)completion
{
  itemCopy = item;
  toCopy = to;
  asCopy = as;
  numberCopy = number;
  completionCopy = completion;
  v29 = option == 2;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  coordinator = [WeakRetained coordinator];
  v19 = objc_loadWeakRetained(&self->_writer);
  operation = [v19 operation];
  request = [operation request];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke;
  v31[3] = &unk_1E83BF138;
  v31[4] = self;
  v32 = toCopy;
  v33 = asCopy;
  v34 = numberCopy;
  v35 = itemCopy;
  v36 = completionCopy;
  optionCopy = option;
  materializeOptionCopy = materializeOption;
  v22 = itemCopy;
  v23 = numberCopy;
  v24 = asCopy;
  v25 = toCopy;
  v26 = completionCopy;
  [coordinator resolveItemOrURL:v22 recursively:v29 request:request andCoordinateWithHandler:v31];
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v10 = [WeakRetained coordinator];
    v11 = *(a1 + 40);
    v12 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v13 = [v12 operation];
    v14 = [v13 request];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2;
    v17[3] = &unk_1E83BF110;
    v24 = v8;
    v25 = *(a1 + 72);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v15 = v7;
    v16 = *(a1 + 32);
    v20 = v15;
    v21 = v16;
    v22 = *(a1 + 64);
    v23 = *(a1 + 40);
    v26 = *(a1 + 80);
    [v10 resolveItemOrURL:v11 recursively:0 coordinateIfExport:0 request:v14 handler:v17];
  }
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    (*(*(a1 + 80) + 16))();
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_3;
    aBlock[3] = &unk_1E83BF000;
    v41 = *(a1 + 80);
    v10 = v9;
    v42 = v10;
    v43 = *(a1 + 88);
    v11 = _Block_copy(aBlock);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = [*(a1 + 32) fp_bouncedNameWithIndex:objc_msgSend(v13 isDir:{"longValue"), objc_msgSend(*(a1 + 48), "fp_isFolder")}];

      v12 = v14;
    }

    v26 = v12;
    v15 = [v7 URLByAppendingPathComponent:v12 isDirectory:{objc_msgSend(*(a1 + 48), "fp_isFolder")}];
    v25 = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 8));
    v17 = [WeakRetained queue];
    v18 = [*(a1 + 64) size];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_4;
    v27[3] = &unk_1E83BF0E8;
    v28 = *(a1 + 72);
    v24 = *(a1 + 48);
    v19 = v24.i64[0];
    v29 = vextq_s8(v24, v24, 8uLL);
    v30 = v7;
    v31 = *(a1 + 40);
    v35 = *(a1 + 80);
    v36 = v10;
    v32 = *(a1 + 64);
    v33 = *(a1 + 32);
    v39 = *(a1 + 96);
    v37 = *(a1 + 88);
    v38 = v11;
    v34 = v15;
    v20 = v11;
    v21 = v15;
    v22 = [v25 fp_copyToURL:v21 queue:v17 precomputedItemSize:v18 replacePlaceholder:0 ignoreVFSSkipMtime:1 completion:v27];

    v23 = objc_loadWeakRetained((*(a1 + 56) + 8));
    [v23 setProgress:v22 forRoot:*(a1 + 64)];
  }
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(a1[5] + 16))();
  (*(a1[6] + 16))();
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([*(a1 + 32) isProviderItem])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    v7 = [WeakRetained operation];
    v8 = [v7 manager];
    v9 = [*(a1 + 32) asFPItem];
    v10 = [v9 itemID];
    v11 = [v8 domainFromItemID:v10 reason:0];

    if (!v5)
    {
LABEL_3:
      [*(a1 + 40) _respectLastUsageDatePolicyForDestinationURL:*(a1 + 88) withSource:*(a1 + 48)];
      v12 = dispatch_group_create();
      v13 = v12;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *v65 = __Block_byref_object_copy__2;
      *&v65[8] = __Block_byref_object_dispose__2;
      *&v65[16] = 0;
      v58[0] = 0;
      v58[1] = v58;
      v58[2] = 0x3032000000;
      v58[3] = __Block_byref_object_copy__2;
      v58[4] = __Block_byref_object_dispose__2;
      v59 = 0;
      if (v11)
      {
        dispatch_group_enter(v12);
        v14 = [v11 defaultBackend];
        v15 = *(a1 + 88);
        v16 = +[FPDRequest requestForSelf];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_9;
        v53[3] = &unk_1E83BF078;
        v53[4] = *(a1 + 40);
        v54 = *(a1 + 88);
        v55 = v13;
        v56 = buf;
        v57 = v58;
        [v14 itemForURL:v15 options:0 request:v16 completionHandler:v53];
      }

      v17 = objc_loadWeakRetained((*(a1 + 40) + 8));
      v18 = [v17 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_12;
      block[3] = &unk_1E83BF0A0;
      v51 = v58;
      v52 = buf;
      v50 = *(a1 + 120);
      v49 = *(a1 + 88);
      dispatch_group_notify(v13, v18, block);

      [*(a1 + 88) fileSystemRepresentation];
      fpfs_open();

      _Block_object_dispose(v58, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_27;
    }
  }

  else
  {
    v11 = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  if ([v5 fp_isPOSIXErrorCode:17] && !a2 || objc_msgSend(v5, "fp_isPOSIXErrorCode:", 66))
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v46 = *(a1 + 48);
      v47 = *(a1 + 56);
      v45 = objc_loadWeakRetained((*(a1 + 40) + 8));
      v37 = [v45 info];
      v38 = [v37 shouldBounce];
      v39 = [*(a1 + 32) isProviderItem];
      v40 = *(a1 + 64);
      v41 = [v5 fp_prettyDescription];
      *buf = 138413570;
      *&buf[4] = v46;
      *&buf[12] = 2112;
      *&buf[14] = v47;
      *&buf[22] = 1024;
      *v65 = v38;
      *&v65[4] = 1024;
      *&v65[6] = v39;
      *&v65[10] = 2114;
      *&v65[12] = v40;
      *&v65[20] = 2112;
      *&v65[22] = v41;
      _os_log_error_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_ERROR, "[ERROR] move-writer: collision when copying item at %@ to %@ (shouldBounce: %{BOOL}d, moveToProvider: %{BOOL}d, bounceNumber: %{public}@): %@", buf, 0x36u);
    }

    v20 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v21 = [v20 info];
    v22 = [v21 shouldBounce];

    if (v22)
    {
      v23 = MEMORY[0x1E696AD98];
      v24 = [*(a1 + 64) longValue];
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      v26 = [v23 numberWithLong:v25 + 1];
      (*(*(a1 + 96) + 16))();
      (*(*(a1 + 104) + 16))();
      [*(a1 + 40) _performCopyOfItem:*(a1 + 72) to:*(a1 + 32) as:*(a1 + 80) sourceMaterializeOption:*(a1 + 128) targetMaterializeOption:*(a1 + 136) bounceNumber:v26 completion:*(a1 + 112)];
    }

    else if ([*(a1 + 32) isProviderItem])
    {
      v27 = [v11 defaultBackend];
      v28 = *(a1 + 88);
      v29 = +[FPDRequest requestForSelf];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_6;
      v61[3] = &unk_1E83BF028;
      v63 = *(a1 + 120);
      v62 = v5;
      [v27 itemForURL:v28 options:0 request:v29 completionHandler:v61];
    }

    else
    {
      (*(*(a1 + 120) + 16))();
    }
  }

  else
  {
    v30 = [MEMORY[0x1E696AC08] defaultManager];
    v31 = *(a1 + 88);
    v60 = 0;
    v32 = [v30 removeItemAtURL:v31 error:&v60];
    v33 = v60;

    if ((v32 & 1) == 0)
    {
      v34 = fp_current_or_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_4_cold_1((a1 + 88));
      }
    }

    v35 = fp_current_or_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v42 = [*(a1 + 48) path];
      v43 = [*(a1 + 88) path];
      v44 = [v5 fp_prettyDescription];
      *buf = 138412802;
      *&buf[4] = v42;
      *&buf[12] = 2112;
      *&buf[14] = v43;
      *&buf[22] = 2112;
      *v65 = v44;
      _os_log_error_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_ERROR, "[ERROR] couldn't copy item at %@ to %@: %@", buf, 0x20u);
    }

    (*(*(a1 + 120) + 16))();
  }

LABEL_27:

  v36 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v6 = [MEMORY[0x1E696ABC0] fileProviderErrorForCollisionWithItem:a2];
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    if (!a3)
    {
      a3 = *(a1 + 32);
    }

    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    v4(v5, 0, a3);
  }
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v8 = [WeakRetained queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2_10;
  v11[3] = &unk_1E83BF050;
  v12 = v6;
  v13 = *(a1 + 40);
  v14 = v5;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2_10(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2_10_cold_1();
    }
  }

  v3 = *(a1 + 48);
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2_10_cold_2();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) fp_shortDescription];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] move-writer: couldn't have item for URL %@", &v9, 0xCu);
  }

  v7 = *(a1 + 56);
  objc_sync_enter(v7);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 48));
  objc_sync_exit(v7);

  dispatch_group_leave(*(a1 + 56));
  v8 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_12(void *a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_12_cold_1(a1);
  }

  if (*(*(a1[7] + 8) + 40))
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v3 = a1[5];
    if (*(*(a1[6] + 8) + 40))
    {
      [MEMORY[0x1E69672A8] locatorForItem:?];
    }

    else
    {
      [MEMORY[0x1E69672A8] locatorForURL:a1[4]];
    }
    v4 = ;
    (*(v3 + 16))(v3, v4, 0);
  }
}

- (void)performCopyOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption completion:(id)completion
{
  itemCopy = item;
  toCopy = to;
  asCopy = as;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  info = [WeakRetained info];
  shouldBounce = [info shouldBounce];

  if (shouldBounce)
  {
    v23 = 0;
    v21 = [asCopy fp_stringByDeletingPathBounceNo:&v23 andPathExtension:0 isFolder:{objc_msgSend(itemCopy, "isFolder")}];
    v22 = v23;

    asCopy = v21;
  }

  else
  {
    v22 = 0;
  }

  [(FPDMoveWriterToDisk *)self _performCopyOfItem:itemCopy to:toCopy as:asCopy sourceMaterializeOption:option targetMaterializeOption:materializeOption bounceNumber:v22 completion:completionCopy];
}

- (void)_resolveLocator:(id)locator completion:(id)completion
{
  completionCopy = completion;
  locatorCopy = locator;
  isExternalURL = [locatorCopy isExternalURL];
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  coordinator = [WeakRetained coordinator];
  if (isExternalURL)
  {
    asURL = [locatorCopy asURL];
    [coordinator startAccessingURLForAtomDuration:asURL];

    WeakRetained = [locatorCopy asURL];

    completionCopy[2](completionCopy, WeakRetained, 0);
  }

  else
  {
    asFPItem = [locatorCopy asFPItem];

    [coordinator resolveItem:asFPItem completion:completionCopy];
    completionCopy = coordinator;
  }
}

- (void)_performMoveOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption bounceNumber:(id)number completion:(id)completion
{
  itemCopy = item;
  toCopy = to;
  asCopy = as;
  numberCopy = number;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  v21 = objc_opt_new();
  [WeakRetained setProgress:v21 forRoot:itemCopy];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke;
  v27[3] = &unk_1E83BF1D8;
  v27[4] = self;
  v28 = toCopy;
  v29 = asCopy;
  v30 = numberCopy;
  v31 = itemCopy;
  v32 = completionCopy;
  optionCopy = option;
  materializeOptionCopy = materializeOption;
  v22 = itemCopy;
  v23 = numberCopy;
  v24 = asCopy;
  v25 = toCopy;
  v26 = completionCopy;
  [(FPDMoveWriterToDisk *)self _resolveLocator:v22 completion:v27];
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_cold_1(v5);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_19;
    v13[3] = &unk_1E83BF1B0;
    v9 = *(a1 + 72);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = v5;
    v12 = *(a1 + 32);
    v10 = *(&v12 + 1);
    *&v11 = *(a1 + 64);
    *(&v11 + 1) = v9;
    v17 = v12;
    v18 = v11;
    v19 = *(a1 + 80);
    [v7 _resolveLocator:v8 completion:v13];
  }
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_19_cold_1();
  }

  if (v6)
  {
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8;
    v11 = [*(a1 + 48) fp_isFolder];
    if (v9)
    {
      v12 = [v10 fp_bouncedNameWithIndex:objc_msgSend(v9 isDir:{"longValue"), v11}];

      v13 = [v9 unsignedLongValue];
      if (v13 >= [MEMORY[0x1E696AEC0] fp_maximumBounceLevel])
      {
        v12 = v12;

        v9 = 0;
        v10 = v12;
      }
    }

    else
    {
      v12 = v10;
    }

    v54 = [v5 URLByAppendingPathComponent:v12];
    WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 8));
    v15 = [WeakRetained coordinator];
    [v15 startAccessingURLForAtomDuration:v5];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_21;
    aBlock[3] = &unk_1E83BF160;
    v16 = *(a1 + 64);
    aBlock[4] = *(a1 + 56);
    v64 = v16;
    v65 = *(a1 + 72);
    v17 = v10;
    v66 = v17;
    v68 = *(a1 + 88);
    v67 = *(a1 + 80);
    v53 = _Block_copy(aBlock);
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v35 = [*(a1 + 48) path];
      [v54 path];
      v36 = v50 = v17;
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 88)];
      v52 = v12;
      v38 = v37 = v9;
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 96)];
      *buf = 138413058;
      v70 = v35;
      v71 = 2112;
      v72 = v36;
      v73 = 2112;
      v74 = v38;
      v75 = 2112;
      v76 = v39;
      _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] move-writer: checking target existence before coordination to move on disk %@ to %@.                        sourceMaterializeOption %@ targetMaterializeOption %@", buf, 0x2Au);

      v9 = v37;
      v12 = v52;

      v17 = v50;
    }

    v62 = 0;
    v55 = v5;
    v19 = [v5 fp_existingURLOfChildWithName:v12 isFolder:v11 notMatchingFileID:0 nextAvailableBounceNumber:&v62 forceFetchingBounceNumber:1];
    v20 = v62;
    v21 = v20;
    if (v19)
    {
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = &unk_1F4C62A00;
      }

      v21 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v22, "longValue") + 1}];

      v23 = *(a1 + 48);
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:516 userInfo:0];
      v25 = v53;
      (*(v53 + 2))(v53, v23, v19, v21, v24);
      v26 = v54;
    }

    else
    {
      v49 = v17;
      v51 = v12;
      v27 = v9;
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v40 = [*(a1 + 48) path];
        v41 = [v54 path];
        v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 88)];
        v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 96)];
        *buf = 138413058;
        v70 = v40;
        v71 = 2112;
        v72 = v41;
        v73 = 2112;
        v74 = v42;
        v75 = 2112;
        v76 = v43;
        _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] move-writer: starting coordination to move on disk %@ to %@.                        sourceMaterializeOption %@ targetMaterializeOption %@", buf, 0x2Au);
      }

      v48 = objc_loadWeakRetained((*(a1 + 56) + 8));
      v29 = [v48 coordinator];
      v45 = *(a1 + 88);
      v46 = *(a1 + 96);
      v44 = *(a1 + 48);
      v47 = objc_loadWeakRetained((*(a1 + 56) + 8));
      v30 = [v47 operation];
      v31 = [v30 request];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_25;
      v56[3] = &unk_1E83BF188;
      v32 = *(a1 + 80);
      v33 = *(a1 + 56);
      v60 = v32;
      v56[4] = v33;
      v25 = v53;
      v61 = v53;
      v9 = v27;
      v57 = v27;
      v26 = v54;
      v58 = v54;
      v59 = *(a1 + 64);
      [v29 coordinateForMovingFromURL:v44 toURL:v58 toTargetFolderURL:v55 targetMaterializeOption:v46 sourceMaterializeOption:v45 request:v31 handler:v56];

      v24 = v60;
      v17 = v49;
      v12 = v51;
      v19 = 0;
    }

    v5 = v55;
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_21(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v25 = [WeakRetained info];
    v26 = [v25 shouldBounce];
    v27 = [*(a1 + 40) isProviderItem];
    v28 = [v12 fp_prettyDescription];
    *buf = 138413570;
    v35 = v9;
    v36 = 2112;
    v37 = v10;
    v38 = 1024;
    v39 = v26;
    v40 = 2112;
    v41 = v11;
    v42 = 1024;
    v43 = v27;
    v44 = 2112;
    v45 = v28;
    _os_log_error_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_ERROR, "[ERROR] move-writer: collision when moving item at %@ to %@ (shouldBounce: %{BOOL}d, nextBounceNumber: %@, moveToProvider: %{BOOL}d): %@", buf, 0x36u);
  }

  v14 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v15 = [v14 info];
  v16 = [v15 shouldBounce];

  if (v16)
  {
    [*(a1 + 32) _performMoveOfItem:*(a1 + 48) to:*(a1 + 40) as:*(a1 + 56) sourceMaterializeOption:*(a1 + 72) targetMaterializeOption:*(a1 + 80) bounceNumber:v11 completion:*(a1 + 64)];
  }

  else if ([*(a1 + 40) isProviderItem])
  {
    v29 = [*(a1 + 40) asFPItem];
    v17 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v18 = [v17 operation];
    v19 = [v18 manager];
    v20 = [v29 itemID];
    v21 = [v19 domainFromItemID:v20 reason:0];

    v22 = [v21 defaultBackend];
    v23 = +[FPDRequest requestForSelf];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_22;
    v31[3] = &unk_1E83BF028;
    v33 = *(a1 + 64);
    v32 = v12;
    [v22 itemForURL:v10 options:0 request:v23 completionHandler:v31];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_22(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v6 = [MEMORY[0x1E696ABC0] fileProviderErrorForCollisionWithItem:a2];
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    if (!a3)
    {
      a3 = *(a1 + 32);
    }

    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    v4(v5, 0, a3);
  }
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_25(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v36 = [v9 path];
    v37 = [v10 path];
    *buf = 138412802;
    *&buf[4] = v36;
    *&buf[12] = 2112;
    *&buf[14] = v37;
    *&buf[22] = 2112;
    v59 = v11;
    _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] move-writer: finished coordinateForMovingFromURL source %@ dest %@ destFolder %@", buf, 0x20u);
  }

  if (!v12)
  {
    fpfs_ignore_thread_skip_mtime_iopolicy();
    v14 = *(*(a1 + 32) + 16);
    v57 = 0;
    [v14 moveItemAtURL:v9 toURL:v10 error:&v57];
    v15 = v57;
    fpfs_restore_thread_skip_mtime_iopolicy();
    if (!v15)
    {
      [*(a1 + 32) _respectLastUsageDatePolicyForDestinationURL:*(a1 + 48) withSource:v9];
      group = dispatch_group_create();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v59 = __Block_byref_object_copy__2;
      v60 = __Block_byref_object_dispose__2;
      v61 = 0;
      v55[0] = 0;
      v55[1] = v55;
      v55[2] = 0x3032000000;
      v55[3] = __Block_byref_object_copy__2;
      v55[4] = __Block_byref_object_dispose__2;
      v56 = 0;
      if ([*(a1 + 56) isProviderItem])
      {
        v41 = [*(a1 + 56) asFPItem];
        dispatch_group_enter(group);
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
        v24 = [WeakRetained operation];
        v25 = [v24 manager];
        v26 = [v41 itemID];
        v42 = [v25 domainFromItemID:v26 reason:0];

        v27 = fp_current_or_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_25_cold_1();
        }

        v28 = [v42 defaultBackend];
        v40 = *(a1 + 48);
        v29 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v30 = [v29 operation];
        v31 = [v30 request];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_26;
        v50[3] = &unk_1E83BF078;
        v50[4] = *(a1 + 32);
        v51 = *(a1 + 48);
        v52 = group;
        v53 = buf;
        v54 = v55;
        [v28 itemForURL:v40 options:0 request:v31 completionHandler:v50];

        [v42 forceIngestionAtURL:*(a1 + 48)];
      }

      v32 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v33 = [v32 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_27;
      block[3] = &unk_1E83BF0A0;
      v48 = v55;
      v49 = buf;
      v47 = *(a1 + 64);
      v46 = *(a1 + 48);
      dispatch_group_notify(group, v33, block);

      _Block_object_dispose(v55, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_21;
    }

    v16 = [v15 domain];
    if ([v16 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v17 = [v15 code] == 516;

      if (v17)
      {
        v18 = *(a1 + 72);
        v19 = MEMORY[0x1E696AD98];
        v20 = [*(a1 + 40) longValue];
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        v22 = [v19 numberWithLong:v21 + 1];
        (*(v18 + 16))(v18, v9, v10, v22, v15);

LABEL_21:
        goto LABEL_22;
      }
    }

    else
    {
    }

    v34 = fp_current_or_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      groupa = [v9 path];
      v38 = [v10 path];
      v39 = [v15 fp_prettyDescription];
      *buf = 138412802;
      *&buf[4] = groupa;
      *&buf[12] = 2112;
      *&buf[14] = v38;
      *&buf[22] = 2112;
      v59 = v39;
      _os_log_error_impl(&dword_1CEFC7000, v34, OS_LOG_TYPE_ERROR, "[ERROR] move-writer: couldn't move item at %@ to %@: %@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_21;
  }

  (*(*(a1 + 64) + 16))();
LABEL_22:

  v35 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v8 = [WeakRetained queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2;
  v11[3] = &unk_1E83BF050;
  v12 = v6;
  v13 = *(a1 + 40);
  v14 = v5;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2_10_cold_1();
    }
  }

  v3 = *(a1 + 48);
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2_10_cold_2();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) fp_shortDescription];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] move-writer: couldn't have item for URL %@", &v9, 0xCu);
  }

  v7 = *(a1 + 56);
  objc_sync_enter(v7);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 48));
  objc_sync_exit(v7);

  dispatch_group_leave(*(a1 + 56));
  v8 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_27(void *a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_27_cold_1(a1);
  }

  if (*(*(a1[7] + 8) + 40))
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v3 = a1[5];
    if (*(*(a1[6] + 8) + 40))
    {
      [MEMORY[0x1E69672A8] locatorForItem:?];
    }

    else
    {
      [MEMORY[0x1E69672A8] locatorForURL:a1[4]];
    }
    v4 = ;
    (*(v3 + 16))(v3, v4, 0);
  }
}

- (void)performMoveOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption completion:(id)completion
{
  itemCopy = item;
  toCopy = to;
  asCopy = as;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  info = [WeakRetained info];
  shouldBounce = [info shouldBounce];

  if (shouldBounce)
  {
    v23 = 0;
    v21 = [asCopy fp_stringByDeletingPathBounceNo:&v23 andPathExtension:0 isFolder:{objc_msgSend(itemCopy, "isFolder")}];
    v22 = v23;

    asCopy = v21;
  }

  else
  {
    v22 = 0;
  }

  [(FPDMoveWriterToDisk *)self _performMoveOfItem:itemCopy to:toCopy as:asCopy sourceMaterializeOption:option targetMaterializeOption:materializeOption bounceNumber:v22 completion:completionCopy];
}

- (void)performMoveOfFolder:(id)folder to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption atomically:(BOOL)atomically completion:(id)completion
{
  if (atomically)
  {
    [(FPDMoveWriterToDisk *)self performMoveOfItem:folder to:to as:as sourceMaterializeOption:option targetMaterializeOption:materializeOption completion:completion];
  }

  else
  {
    [(FPDMoveWriterToDisk *)self performCreateFolder:folder inside:to as:as completion:completion, materializeOption];
  }
}

- (void)performCreateFolder:(id)folder inside:(id)inside as:(id)as completion:(id)completion
{
  folderCopy = folder;
  insideCopy = inside;
  asCopy = as;
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke;
  v18[3] = &unk_1E83BF250;
  v21 = insideCopy;
  v22 = completionCopy;
  v18[4] = self;
  v19 = asCopy;
  v20 = folderCopy;
  v14 = insideCopy;
  v15 = folderCopy;
  v16 = asCopy;
  v17 = completionCopy;
  [(FPDMoveWriterToDisk *)self _resolveLocator:v14 completion:v18];
}

void __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v7 = [WeakRetained coordinator];
    [v7 startAccessingURLForAtomDuration:v5];

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *MEMORY[0x1E696A250];
    while (1)
    {
      if (v8 > 0xFF)
      {
        v15 = v9;
        goto LABEL_23;
      }

      v12 = *(a1 + 40);
      if (v8)
      {
        if (v8 == 1)
        {
          v13 = 2;
        }

        else
        {
          v13 = v8;
        }

        v14 = [*(a1 + 40) fp_bouncedNameWithIndex:v13 isDir:1];

        v8 = v13 + 1;
        v12 = v14;
      }

      else
      {
        v8 = 1;
      }

      v15 = [v5 URLByAppendingPathComponent:v12 isDirectory:1];

      v16 = *(*(a1 + 32) + 16);
      v52[0] = 0;
      v17 = [v16 createDirectoryAtURL:v15 withIntermediateDirectories:0 attributes:0 error:v52];
      v18 = v52[0];
      v10 = v18;
      if (v17)
      {

        v24 = *(a1 + 48);
        if (v24)
        {
          v25 = *(a1 + 32);
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_2;
          v50[3] = &unk_1E83BF200;
          v51 = v15;
          [v25 _resolveLocator:v24 completion:v50];
        }

        if ([*(a1 + 56) isProviderItem])
        {
          v26 = objc_loadWeakRetained((*(a1 + 32) + 8));
          v27 = [v26 operation];
          v28 = [v27 manager];
          v29 = [v28 domainForURL:v15 reason:0];

          v30 = [v29 defaultBackend];
          v31 = +[FPDRequest requestForSelf];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_30;
          v47[3] = &unk_1E83BE530;
          v47[4] = *(a1 + 32);
          v48 = v15;
          v49 = *(a1 + 64);
          [v30 itemForURL:v48 options:0 request:v31 completionHandler:v47];
        }

        else
        {
          v43 = *(a1 + 64);
          v29 = [MEMORY[0x1E69672A8] locatorForURL:v15];
          (*(v43 + 16))(v43, v29, 0);
        }

        [v15 fileSystemRepresentation];
        fpfs_open();
        goto LABEL_33;
      }

      v19 = [v18 domain];
      if (([v19 isEqualToString:v11] & 1) == 0)
      {
        break;
      }

      v20 = [v10 code];

      if (v20 != 516)
      {
        goto LABEL_22;
      }

      v21 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v22 = [v21 info];
      v23 = [v22 shouldBounce];

      v9 = v15;
      if ((v23 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_22:
LABEL_23:
    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_cold_1(v15, v10);
    }

    v33 = [v10 domain];
    if ([v33 isEqualToString:v11])
    {
      v34 = [v10 code];

      if (v34 == 516 && [*(a1 + 56) isProviderItem])
      {
        v35 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v36 = [v35 operation];
        v37 = [v36 manager];
        v38 = [*(a1 + 56) asFPItem];
        v39 = [v38 itemID];
        v40 = [v37 domainFromItemID:v39 reason:0];

        v41 = [v40 defaultBackend];
        v42 = +[FPDRequest requestForSelf];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_35;
        v44[3] = &unk_1E83BF028;
        v46 = *(a1 + 64);
        v10 = v10;
        v45 = v10;
        [v41 itemForURL:v15 options:0 request:v42 completionHandler:v44];

        goto LABEL_33;
      }
    }

    else
    {
    }

    (*(*(a1 + 64) + 16))();
LABEL_33:
  }
}

void __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  [v3 fileSystemRepresentation];
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 path];
  [v6 fileSystemRepresentation];
  v7 = fpfs_copy_xattrs();

  if (v7)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_2_cold_1(v4);
    }
  }
}

void __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v8 = [WeakRetained queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_2_31;
  v12[3] = &unk_1E83BF228;
  v13 = v6;
  v14 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, v12);
}

void __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_2_31(void *a1)
{
  if (a1[4])
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2_10_cold_1();
    }

    v3 = a1[4];
    (*(a1[7] + 16))();
  }

  else
  {
    v4 = a1[6];
    v5 = fp_current_or_default_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2_10_cold_2();
      }

      v7 = a1[7];
      v8 = [MEMORY[0x1E69672A8] locatorForItem:a1[6]];
    }

    else
    {
      if (v6)
      {
        __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_2_31_cold_3(a1);
      }

      v7 = a1[7];
      v8 = [MEMORY[0x1E69672A8] locatorForURL:a1[5]];
    }

    v9 = v8;
    (*(v7 + 16))(v7, v8, 0);
  }
}

void __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_35(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v6 = [MEMORY[0x1E696ABC0] fileProviderErrorForCollisionWithItem:a2];
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    if (!a3)
    {
      a3 = *(a1 + 32);
    }

    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    v4(v5, 0, a3);
  }
}

- (void)_respectLastUsageDatePolicyForDestinationURL:withSource:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_ERROR, "[ERROR] failed to preserve last used date: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_4_cold_1(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*a1 path];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2_10_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_5_1(v2) fp_shortDescription];
  v4 = [*v0 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_2_10_cold_2()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_5_1(v2) fp_shortDescription];
  v4 = *v0;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_12_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] move-writer: Finished copy with dest item %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_19_cold_1()
{
  OUTLINED_FUNCTION_11();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_25_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] move-writer: starting ingestion of dest item %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __120__FPDMoveWriterToDisk__performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_bounceNumber_completion___block_invoke_27_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] move-writer: Finished move with dest item %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_2_cold_1(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __64__FPDMoveWriterToDisk_performCreateFolder_inside_as_completion___block_invoke_2_31_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_1(a1) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

@end
@interface FPDMoveReader
+ (BOOL)_hasDiskWriterSupportForDomain:(id)domain;
- (BOOL)_isCancelled;
- (BOOL)_isRootCancelled:(id)cancelled;
- (BOOL)_isSingleMoveForRoot:(id)root;
- (BOOL)_isSinglePkgCopyForRoot:(id)root;
- (BOOL)_shouldCheckFileSystemBitsForRoot:(id)root targetFolderURL:(id)l;
- (BOOL)_shouldCheckSpaceForRoot:(id)root targetFolderURL:(id)l;
- (BOOL)_shouldUseDiskWriterToPerformMoveForItem:(id)item;
- (FPDMoveReader)init;
- (FPDMoveReader)initWithMoveWriter:(id)writer operation:(id)operation queue:(id)queue;
- (id)_getTargetFolderFor:(id)for root:(id)root error:(id *)error;
- (id)_targetNameForSource:(id)source;
- (int64_t)_fileSizeBitsSupportAtPath:(id)path;
- (void)_bailOutOfRoot:(id)root;
- (void)_enqueueAtomsForRoot:(id)root;
- (void)_finishWithError:(id)error;
- (void)_getSpaceForWriteSize:(int64_t)size atTargetPath:(id)path completion:(id)completion;
- (void)_progressComputationPreflight:(id)preflight completion:(id)completion;
- (void)_run;
- (void)_runWithDownloadedTarget:(id)target;
- (void)_t_unblock;
- (void)_t_waitForUnblock;
- (void)cancel;
- (void)cancelRoot:(id)root;
- (void)dumpStateTo:(id)to;
- (void)start;
- (void)verifyTargetURL:(id)l;
@end

@implementation FPDMoveReader

- (FPDMoveReader)init
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"should not call this"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDMoveReader init]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveReader.m", 66, [v2 UTF8String]);
}

- (FPDMoveReader)initWithMoveWriter:(id)writer operation:(id)operation queue:(id)queue
{
  writerCopy = writer;
  operationCopy = operation;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = FPDMoveReader;
  v11 = [(FPDMoveReader *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_operation, operationCopy);
    info = [operationCopy info];
    info = v12->_info;
    v12->_info = info;

    objc_storeWeak(&v12->_moveQueue, queueCopy);
    objc_storeWeak(&v12->_writer, writerCopy);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, [(FPMoveInfo *)v12->_info qos], 0);
    v17 = dispatch_queue_create("FileProvider.move-reader", v16);
    queue = v12->_queue;
    v12->_queue = v17;

    v19 = objc_opt_new();
    cancelledRoots = v12->_cancelledRoots;
    v12->_cancelledRoots = v19;

    section = __fp_create_section();
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader initWithMoveWriter:operation:queue:];
    }

    v12->_logSection = section;
    if ([(FPMoveInfo *)v12->_info _t_clientDrivenReader])
    {
      v23 = dispatch_semaphore_create(0);
      clientUnblockSema = v12->_clientUnblockSema;
      v12->_clientUnblockSema = v23;
    }
  }

  return v12;
}

- (void)verifyTargetURL:(id)l
{
  lCopy = l;
  targetFolder = [(FPMoveInfo *)self->_info targetFolder];
  isExternalURL = [targetFolder isExternalURL];
  targetFolder2 = [(FPMoveInfo *)self->_info targetFolder];
  v8 = targetFolder2;
  if (isExternalURL)
  {
    asURL = [targetFolder2 asURL];
  }

  else
  {
    asFPItem = [targetFolder2 asFPItem];
    asURL = [asFPItem fileURL];
  }

  if (asURL)
  {
    lCopy[2](lCopy, asURL, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_operation);
    manager = [WeakRetained manager];
    targetFolder3 = [(FPMoveInfo *)self->_info targetFolder];
    asFPItem2 = [targetFolder3 asFPItem];
    itemID = [asFPItem2 itemID];
    v16 = [manager domainFromItemID:itemID reason:0];

    defaultBackend = [v16 defaultBackend];
    targetFolder4 = [(FPMoveInfo *)self->_info targetFolder];
    asFPItem3 = [targetFolder4 asFPItem];
    itemID2 = [asFPItem3 itemID];
    v21 = +[FPDRequest requestForSelf];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __33__FPDMoveReader_verifyTargetURL___block_invoke;
    v22[3] = &unk_1E83BFAE8;
    v22[4] = self;
    v23 = lCopy;
    [defaultBackend URLForItemID:itemID2 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v21 completionHandler:v22];
  }
}

void __33__FPDMoveReader_verifyTargetURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v6 = [a3 url];
    v7 = [*(*(a1 + 32) + 16) targetFolder];
    v8 = [v7 asFPItem];
    [v8 setFileURL:v6];

    v9 = [*(*(a1 + 32) + 16) targetFolder];
    v10 = [v9 asFPItem];
    v11 = [v10 fileURL];
    [v11 stopAccessingSecurityScopedResource];

    v12 = *(a1 + 40);
    v15 = [*(*(a1 + 32) + 16) targetFolder];
    v13 = [v15 asFPItem];
    v14 = [v13 fileURL];
    (*(v12 + 16))(v12, v14, 0);
  }
}

- (void)start
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __22__FPDMoveReader_start__block_invoke;
  v2[3] = &unk_1E83BF200;
  v2[4] = self;
  [(FPDMoveReader *)self verifyTargetURL:v2];
}

void __22__FPDMoveReader_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __22__FPDMoveReader_start__block_invoke_cold_1(v6);
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __22__FPDMoveReader_start__block_invoke_6;
  v11[3] = &unk_1E83BE158;
  v11[4] = v8;
  v12 = v5;
  v10 = v5;
  dispatch_async(v9, v11);
}

uint64_t __22__FPDMoveReader_start__block_invoke_6(uint64_t a1)
{
  v13 = *(*(a1 + 32) + 88);
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __22__FPDMoveReader_start__block_invoke_6_cold_1();
  }

  v3 = [*(a1 + 40) startAccessingSecurityScopedResource];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __22__FPDMoveReader_start__block_invoke_7;
  v9[3] = &unk_1E83BFB10;
  v12 = v3;
  v6 = v4;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  [v5 _progressComputationPreflight:v6 completion:v9];

  return __fp_leave_section_Debug();
}

uint64_t __22__FPDMoveReader_start__block_invoke_7(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  v2 = *(a1 + 40);

  return [v2 _run];
}

- (BOOL)_isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cancelled = selfCopy->__cancelled;
  objc_sync_exit(selfCopy);

  return cancelled;
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (![(FPDMoveReader *)self _isCancelled])
  {
    v6 = fp_current_or_default_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (errorCopy)
    {
      if (v7)
      {
        [FPDMoveReader _finishWithError:errorCopy];
      }
    }

    else if (v7)
    {
      [FPDMoveReader _finishWithError:];
    }

    self->__cancelled = 1;
    objc_storeStrong(&self->_error, error);
    errorBlock = self->_errorBlock;
    if (errorCopy && errorBlock)
    {
      errorBlock[2](errorBlock, errorCopy);
      errorBlock = self->_errorBlock;
    }

    self->_errorBlock = 0;
  }
}

- (void)_progressComputationPreflight:(id)preflight completion:(id)completion
{
  v92 = *MEMORY[0x1E69E9840];
  preflightCopy = preflight;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [FPDMoveReader _progressComputationPreflight:completion:];
  }

  self->_startedPreflight = 1;
  targetFolder = [(FPMoveInfo *)self->_info targetFolder];
  self->_isTargetFolderMaterialized = [targetFolder isDownloaded];

  path = [preflightCopy path];
  v62 = [(FPDMoveReader *)self _fileSizeBitsSupportAtPath:path];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  roots = [(FPMoveInfo *)self->_info roots];
  v11 = [roots countByEnumeratingWithState:&v75 objects:v91 count:16];
  if (v11)
  {
    v12 = v11;
    v65 = 0;
    v13 = *v76;
    selfCopy = self;
    v57 = roots;
    v58 = preflightCopy;
    v55 = *v76;
LABEL_5:
    v14 = 0;
    v56 = v12;
    while (1)
    {
      if (*v76 != v13)
      {
        objc_enumerationMutation(roots);
      }

      v15 = *(*(&v75 + 1) + 8 * v14);
      if ([(FPDMoveReader *)self _isCancelled])
      {
        break;
      }

      if (!self->_isTargetFolderMaterialized && !self->_willMaterializeTargetFolder)
      {
        targetFolder2 = [(FPMoveInfo *)self->_info targetFolder];
        WeakRetained = objc_loadWeakRetained(&self->_operation);
        [WeakRetained manager];
        v19 = v18 = v14;
        selfCopy->_willMaterializeTargetFolder = [targetFolder2 willRequireDownloadForSourceItem:v15 extensionManager:v19];

        v14 = v18;
        self = selfCopy;
      }

      if ([(FPDMoveReader *)self _isSingleMoveForRoot:v15])
      {
        v20 = fp_current_or_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          willMaterializeTargetFolder = self->_willMaterializeTargetFolder;
          *buf = 138412546;
          v80 = v15;
          v81 = 1024;
          LODWORD(v82) = willMaterializeTargetFolder;
          _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: preflight for root: %@, atomic move, willMaterializeTargetFolder=%{BOOL}d", buf, 0x12u);
        }

        rootPreflightCompletionBlock = [(FPDMoveReader *)self rootPreflightCompletionBlock];
        rootPreflightCompletionBlock[2](rootPreflightCompletionBlock, v15, 1, 0, 0);
      }

      else
      {
        v74 = 0;
        v22 = [(FPDMoveReader *)self _iteratorForRoot:v15 enforceFPItem:0 error:&v74];
        v23 = v74;
        v24 = v23;
        if (!v22)
        {
          [(FPDMoveReader *)self _finishWithError:v23];

          v48 = completionCopy;
          goto LABEL_68;
        }

        v59 = v14;
        v60 = v23;
        v25 = [(FPDMoveReader *)self _shouldCheckFileSystemBitsForRoot:v15 targetFolderURL:preflightCopy];
        v66 = [(FPDMoveReader *)self _shouldCheckSpaceForRoot:v15 targetFolderURL:preflightCopy];
        if (([v22 done] & 1) == 0)
        {
          v27 = 0;
          v67 = 0;
          v26 = 0;
          v61 = 0;
          v28 = v62 > 0 && v25;
          v64 = v28;
          v63 = v22;
          while (1)
          {
            v29 = objc_autoreleasePoolPush();
            if ([(FPDMoveReader *)self _isCancelled])
            {
              v48 = completionCopy;
              completionCopy[2](completionCopy);
              goto LABEL_67;
            }

            if ([(FPDMoveReader *)self _isRootCancelled:v15])
            {
              v67 = 0;
              v27 = 0;
LABEL_46:
              objc_autoreleasePoolPop(v29);
              goto LABEL_47;
            }

            v73 = 0;
            v30 = [v22 nextWithError:&v73];
            v31 = v73;
            if (v64 && [v30 size] > v62)
            {
              break;
            }

            if (v30)
            {
              v32 = v66;
            }

            else
            {
              v32 = 0;
            }

            if (v32)
            {
              v65 += [v30 size];
            }

            else if (!v30 && v31)
            {
              v51 = fp_current_or_default_log();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                [FPDMoveReader _progressComputationPreflight:v31 completion:?];
              }

              [(FPDMoveReader *)selfCopy _finishWithError:v31];
              v48 = completionCopy;
              completionCopy[2](completionCopy);
              goto LABEL_66;
            }

            if ([v22 done] || !v30)
            {

              self = selfCopy;
              goto LABEL_46;
            }

            v33 = v26;
            targetFolder3 = [(FPMoveInfo *)selfCopy->_info targetFolder];
            filename = [v30 filename];
            LOBYTE(v53) = 0;
            v36 = [FPDMoveAtom atomForMoving:v30 toTargetFolder:targetFolder3 as:filename root:v15 atomically:0 sourceMaterializeOption:0 targetMaterializeOption:0 useDiskWriter:v53];

            info = selfCopy->_info;
            v38 = objc_loadWeakRetained(&selfCopy->_operation);
            manager = [v38 manager];
            LODWORD(info) = [v36 shouldAccountForDownloadOfSourceItemForMoveInfo:info extensionManager:manager];

            if (info)
            {
              v67 += [v30 size];
              v61 = 1;
            }

            self = selfCopy;
            if (([v30 requiresCrossDeviceCopy] & 1) != 0 || (-[FPMoveInfo targetFolder](selfCopy->_info, "targetFolder"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "requiresCrossDeviceCopy"), v40, v41))
            {
              v26 = [v30 size] + v33;
            }

            else
            {
              v26 = v33;
            }

            objc_autoreleasePoolPop(v29);
            v22 = v63;
            ++v27;
            if ([v63 done])
            {
              goto LABEL_47;
            }
          }

          v49 = fp_current_or_default_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            [FPDMoveReader _progressComputationPreflight:completion:];
          }

          v50 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:27 userInfo:MEMORY[0x1E695E0F8]];
          [(FPDMoveReader *)selfCopy _finishWithError:v50];
          v48 = completionCopy;
          completionCopy[2](completionCopy);

LABEL_66:
LABEL_67:
          objc_autoreleasePoolPop(v29);

          roots = v57;
          preflightCopy = v58;
          goto LABEL_68;
        }

        v61 = 0;
        v26 = 0;
        v67 = 0;
        v27 = 0;
LABEL_47:
        v42 = fp_current_or_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v45 = self->_willMaterializeTargetFolder;
          *buf = 138413570;
          v80 = v15;
          v81 = 2048;
          v82 = v27;
          v83 = 2048;
          v84 = v67;
          v85 = 2048;
          v86 = v26;
          v87 = 1024;
          v88 = v61 & 1;
          v89 = 1024;
          v90 = v45;
          _os_log_debug_impl(&dword_1CEFC7000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: preflight for root: %@, numItems:%lu, undownloadedSize:%lu, crossDeviceCopySize:%lu,                   isRequiringDownload:%{BOOL}d, willMaterializeTargetFolder:%{BOOL}d", buf, 0x36u);
        }

        rootPreflightCompletionBlock2 = [(FPDMoveReader *)self rootPreflightCompletionBlock];
        rootPreflightCompletionBlock2[2](rootPreflightCompletionBlock2, v15, v27, v67, v26);

        roots = v57;
        preflightCopy = v58;
        v13 = v55;
        v12 = v56;
        v14 = v59;
        rootPreflightCompletionBlock = v60;
      }

      if (++v14 == v12)
      {
        v12 = [roots countByEnumeratingWithState:&v75 objects:v91 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_54;
      }
    }

    v48 = completionCopy;
    completionCopy[2](completionCopy);
LABEL_68:

    goto LABEL_69;
  }

  v65 = 0;
LABEL_54:

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke;
  aBlock[3] = &unk_1E83BE068;
  aBlock[4] = self;
  v46 = _Block_copy(aBlock);
  v47 = v46;
  if (v65)
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_13;
    v69[3] = &unk_1E83BFB60;
    v69[4] = self;
    v48 = completionCopy;
    v70 = completionCopy;
    v71 = v47;
    [(FPDMoveReader *)self _getSpaceForWriteSize:v65 atTargetPath:preflightCopy completion:v69];
  }

  else
  {
    (*(v46 + 2))(v46);
    v48 = completionCopy;
    completionCopy[2](completionCopy);
  }

LABEL_69:
  v52 = *MEMORY[0x1E69E9840];
}

void __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) preflightCompletionBlock];
  v3[2]();

  *(*(a1 + 32) + 41) = 1;
}

void __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_13(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_2;
    block[3] = &unk_1E83BFB38;
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    dispatch_async(v3, block);

    v4 = v11;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:28 userInfo:MEMORY[0x1E695E0F8]];
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_13_cold_1();
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 80);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_14;
    v13[3] = &unk_1E83BE828;
    v13[4] = v8;
    v14 = v5;
    v15 = v7;
    v4 = v5;
    dispatch_async(v9, v13);
  }
}

uint64_t __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_14(uint64_t a1)
{
  [*(a1 + 32) _finishWithError:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_getSpaceForWriteSize:(int64_t)size atTargetPath:(id)path completion:(id)completion
{
  v46[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  completionCopy = completion;
  if (pathCopy)
  {
    v9 = *MEMORY[0x1E695DD50];
    v10 = *MEMORY[0x1E695DD60];
    v46[0] = *MEMORY[0x1E695DD50];
    v46[1] = v10;
    v11 = *MEMORY[0x1E695DDA8];
    v46[2] = *MEMORY[0x1E695DDA8];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
    v41 = 0;
    v13 = [pathCopy resourceValuesForKeys:v12 error:&v41];
    v14 = v41;
    v15 = v14;
    if (v13)
    {
LABEL_3:
      v16 = [v13 objectForKeyedSubscript:v9];
      longLongValue = [v16 longLongValue];

      v18 = [v13 objectForKeyedSubscript:v11];
      LODWORD(v16) = [v18 BOOLValue];

      if (v16)
      {
        v19 = longLongValue <= 0;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = [v13 objectForKeyedSubscript:v10];
        longLongValue2 = [v20 longLongValue];

        if (longLongValue2)
        {
          v22 = longLongValue2 < size;
        }

        else
        {
          v22 = 0;
        }

        v23 = !v22;
        completionCopy[2](completionCopy, v23);
      }

      else if (longLongValue >= size)
      {
        completionCopy[2](completionCopy, 1);
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __63__FPDMoveReader__getSpaceForWriteSize_atTargetPath_completion___block_invoke;
        aBlock[3] = &unk_1E83BFB88;
        v38 = completionCopy;
        sizeCopy = size;
        v29 = _Block_copy(aBlock);
        v30 = fp_current_or_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          sizeCopy2 = size;
          _os_log_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_INFO, "[INFO] Low disk space: purging to make room for %ld bytes", buf, 0xCu);
        }

        v42[0] = @"CACHE_DELETE_VOLUME";
        path = [pathCopy path];
        v42[1] = @"CACHE_DELETE_AMOUNT";
        v43[0] = path;
        10485760 = [MEMORY[0x1E696AD98] numberWithInteger:size + 10485760];
        v43[1] = 10485760;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
        v33 = CacheDeletePurgeSpaceWithInfo();
      }

LABEL_32:
      goto LABEL_33;
    }

    domain = [v14 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v15 code];

      if (code == 260)
      {
        uRLByDeletingLastPathComponent = [pathCopy URLByDeletingLastPathComponent];
        v40 = v15;
        v13 = [uRLByDeletingLastPathComponent resourceValuesForKeys:v12 error:&v40];
        v36 = v40;

        uRLByDeletingLastPathComponent2 = [pathCopy URLByDeletingLastPathComponent];

        if (v13)
        {
          v15 = v36;
          pathCopy = uRLByDeletingLastPathComponent2;
          goto LABEL_3;
        }

        pathCopy = uRLByDeletingLastPathComponent2;
        v15 = v36;
      }
    }

    else
    {
    }

    v34 = fp_current_or_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [FPDMoveReader _getSpaceForWriteSize:pathCopy atTargetPath:v15 completion:?];
    }

    completionCopy[2](completionCopy, 1);
    goto LABEL_32;
  }

  v24 = fp_current_or_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [FPDMoveReader _getSpaceForWriteSize:atTargetPath:completion:];
  }

  completionCopy[2](completionCopy, 1);
LABEL_33:

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __63__FPDMoveReader__getSpaceForWriteSize_atTargetPath_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    v4 = [v3 longLongValue];

    v5 = v4 >= *(a1 + 40);
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __63__FPDMoveReader__getSpaceForWriteSize_atTargetPath_completion___block_invoke_cold_1();
    }

    return (*(*(a1 + 32) + 16))();
  }
}

- (int64_t)_fileSizeBitsSupportAtPath:(id)path
{
  pathCopy = path;
  v4 = open([pathCopy fileSystemRepresentation], 2097156);
  if (v4 < 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FPDMoveReader _fileSizeBitsSupportAtPath:];
    }

    goto LABEL_9;
  }

  v5 = v4;
  v6 = fpathconf(v4, 18);
  close(v5);
  if (v6 < 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FPDMoveReader _fileSizeBitsSupportAtPath:];
    }

LABEL_9:

    v7 = -1;
    goto LABEL_10;
  }

  if (v6)
  {
    v7 = exp2((v6 - 1));
  }

  else
  {
    v7 = 0;
  }

LABEL_10:

  return v7;
}

- (BOOL)_shouldCheckSpaceForRoot:(id)root targetFolderURL:(id)l
{
  rootCopy = root;
  lCopy = l;
  if ([(FPMoveInfo *)self->_info byCopy])
  {
    v33 = 0;
    v32 = xmmword_1CF9F4BF8;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    path = [lCopy path];
    if (getattrlist([path fileSystemRepresentation], &v32, v30, 0x28uLL, 0x21u) < 0)
    {
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [FPDMoveReader _shouldCheckSpaceForRoot:path targetFolderURL:?];
      }

      v9 = 1;
    }

    else
    {
      v9 = (BYTE14(v30[0]) & 1) == 0;
    }

    goto LABEL_22;
  }

  if (![rootCopy isProviderItem])
  {
    goto LABEL_8;
  }

  targetFolder = [(FPMoveInfo *)self->_info targetFolder];
  isProviderItem = [targetFolder isProviderItem];

  if (!isProviderItem)
  {
    goto LABEL_8;
  }

  asFPItem = [rootCopy asFPItem];
  providerDomainID = [asFPItem providerDomainID];
  targetFolder2 = [(FPMoveInfo *)self->_info targetFolder];
  asFPItem2 = [targetFolder2 asFPItem];
  providerDomainID2 = [asFPItem2 providerDomainID];
  v17 = [providerDomainID isEqualToString:providerDomainID2];

  if ((v17 & 1) == 0)
  {
LABEL_8:
    if ([rootCopy isExternalURL])
    {
      path = [rootCopy asURL];
    }

    else
    {
      asFPItem3 = [rootCopy asFPItem];
      path = [asFPItem3 fileURL];
    }

    v29 = 0;
    v19 = *MEMORY[0x1E695DD70];
    v28 = 0;
    [path getResourceValue:&v29 forKey:v19 error:&v28];
    v20 = v29;
    v26 = 0;
    v27 = 0;
    v21 = v28;
    [lCopy getResourceValue:&v27 forKey:v19 error:&v26];
    v22 = v27;
    v23 = v26;

    v9 = lCopy && !v23 && v20 && v22 && ![v20 isEqual:v22];
LABEL_22:

    goto LABEL_23;
  }

  v9 = 0;
LABEL_23:

  return v9;
}

- (BOOL)_shouldCheckFileSystemBitsForRoot:(id)root targetFolderURL:(id)l
{
  rootCopy = root;
  lCopy = l;
  if (![rootCopy isProviderItem])
  {
    goto LABEL_5;
  }

  targetFolder = [(FPMoveInfo *)self->_info targetFolder];
  isProviderItem = [targetFolder isProviderItem];

  if (!isProviderItem)
  {
    goto LABEL_5;
  }

  asFPItem = [rootCopy asFPItem];
  providerDomainID = [asFPItem providerDomainID];
  targetFolder2 = [(FPMoveInfo *)self->_info targetFolder];
  asFPItem2 = [targetFolder2 asFPItem];
  providerDomainID2 = [asFPItem2 providerDomainID];
  v15 = [providerDomainID isEqualToString:providerDomainID2];

  if (v15)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
LABEL_5:
    if ([rootCopy isExternalURL])
    {
      asURL = [rootCopy asURL];
    }

    else
    {
      asFPItem3 = [rootCopy asFPItem];
      asURL = [asFPItem3 fileURL];
    }

    v27 = 0;
    v16 = *MEMORY[0x1E695DD70];
    v26 = 0;
    [asURL getResourceValue:&v27 forKey:v16 error:&v26];
    v19 = v27;
    v24 = 0;
    v25 = 0;
    v20 = v26;
    [lCopy getResourceValue:&v25 forKey:v16 error:&v24];
    v21 = v25;
    v22 = v24;

    LOBYTE(v16) = 0;
    if (lCopy && !v22 && v19 && v21)
    {
      LODWORD(v16) = [v19 isEqual:v21] ^ 1;
    }
  }

  return v16;
}

- (id)_getTargetFolderFor:(id)for root:(id)root error:(id *)error
{
  forCopy = for;
  rootCopy = root;
  dispatch_assert_queue_V2(self->_queue);
  roots = [(FPMoveInfo *)self->_info roots];
  v11 = [roots containsObject:forCopy];

  if (v11)
  {
    targetFolder = [(FPMoveInfo *)self->_info targetFolder];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_writer);
    parentIdentifier = [forCopy parentIdentifier];
    targetFolder = [WeakRetained waitForResultOfSourceID:parentIdentifier root:rootCopy error:error];
  }

  return targetFolder;
}

- (id)_targetNameForSource:(id)source
{
  sourceCopy = source;
  roots = [(FPMoveInfo *)self->_info roots];
  v6 = [roots indexOfObject:sourceCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    filename = [sourceCopy filename];
  }

  else
  {
    rootFilenames = [(FPMoveInfo *)self->_info rootFilenames];
    filename = [rootFilenames objectAtIndexedSubscript:v6];
  }

  return filename;
}

- (void)_bailOutOfRoot:(id)root
{
  v14 = *MEMORY[0x1E69E9840];
  rootCopy = root;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDMoveReader _bailOutOfRoot:];
  }

  if (self->_depth)
  {
    do
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        depth = self->_depth;
        *buf = 67109120;
        v13 = depth;
        _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader:_bailOutOfRoot: adding atomForPostFolder %d", buf, 8u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_moveQueue);
      v8 = [FPDMoveAtom atomForPostFolderUnderRoot:rootCopy atomically:0 useDiskWriter:0];
      [WeakRetained enqueue:v8];

      v9 = self->_depth - 1;
      self->_depth = v9;
    }

    while (v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isSingleMoveForRoot:(id)root
{
  rootCopy = root;
  if ([(FPMoveInfo *)self->_info byCopy])
  {
    asURL = fp_current_or_default_log();
    if (os_log_type_enabled(asURL, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader _isSingleMoveForRoot:];
    }

LABEL_16:
    v14 = 0;
    goto LABEL_32;
  }

  if (![(FPMoveInfo *)self->_info byMoving])
  {
    goto LABEL_11;
  }

  if (![rootCopy isProviderItem])
  {
    goto LABEL_11;
  }

  targetFolder = [(FPMoveInfo *)self->_info targetFolder];
  isProviderItem = [targetFolder isProviderItem];

  if (!isProviderItem)
  {
    goto LABEL_11;
  }

  asFPItem = [rootCopy asFPItem];
  providerDomainID = [asFPItem providerDomainID];
  targetFolder2 = [(FPMoveInfo *)self->_info targetFolder];
  asFPItem2 = [targetFolder2 asFPItem];
  providerDomainID2 = [asFPItem2 providerDomainID];
  v13 = [providerDomainID isEqualToString:providerDomainID2];

  if (v13)
  {
    asURL = fp_current_or_default_log();
    if (os_log_type_enabled(asURL, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader _isSingleMoveForRoot:];
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    if (![(FPDMoveReader *)self _shouldUseDiskWriterToPerformMoveForItem:rootCopy])
    {
      asURL = fp_current_or_default_log();
      if (os_log_type_enabled(asURL, OS_LOG_TYPE_DEBUG))
      {
        [FPDMoveReader _isSingleMoveForRoot:];
      }

      goto LABEL_16;
    }

    if ([rootCopy isExternalURL])
    {
      asURL = [rootCopy asURL];
    }

    else
    {
      asFPItem3 = [rootCopy asFPItem];
      asURL = [asFPItem3 fileURL];
    }

    targetFolder3 = [(FPMoveInfo *)self->_info targetFolder];
    isExternalURL = [targetFolder3 isExternalURL];
    targetFolder4 = [(FPMoveInfo *)self->_info targetFolder];
    v19 = targetFolder4;
    if (isExternalURL)
    {
      asURL2 = [targetFolder4 asURL];
    }

    else
    {
      asFPItem4 = [targetFolder4 asFPItem];
      asURL2 = [asFPItem4 fileURL];
    }

    v32 = 0;
    v22 = *MEMORY[0x1E695DD70];
    v31 = 0;
    [asURL getResourceValue:&v32 forKey:v22 error:&v31];
    v23 = v32;
    v29 = 0;
    v30 = 0;
    v24 = v31;
    [asURL2 getResourceValue:&v30 forKey:v22 error:&v29];
    v25 = v30;
    v26 = v29;

    if (!v26 && v23 && asURL2 && [v23 isEqual:v25])
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [FPDMoveReader _isSingleMoveForRoot:];
      }

      v14 = 1;
    }

    else
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [FPDMoveReader _isSingleMoveForRoot:];
      }

      v14 = 0;
    }
  }

LABEL_32:

  return v14;
}

- (BOOL)_isSinglePkgCopyForRoot:(id)root
{
  rootCopy = root;
  if ([rootCopy isExternalURL])
  {
    asURL = [rootCopy asURL];
  }

  else
  {
    asFPItem = [rootCopy asFPItem];

    asURL = [asFPItem fileURL];
    rootCopy = asFPItem;
  }

  fp_isPackage = [asURL fp_isPackage];
  return fp_isPackage;
}

+ (BOOL)_hasDiskWriterSupportForDomain:(id)domain
{
  domainCopy = domain;
  v4 = domainCopy;
  if (domainCopy && ([domainCopy isUsingFPFS] & 1) == 0)
  {
    providerDomainID = [v4 providerDomainID];
    fp_toProviderID = [providerDomainID fp_toProviderID];

    if ([fp_toProviderID isEqualToString:@"com.apple.FileProvider.LocalStorage"] & 1) != 0 || (objc_msgSend(fp_toProviderID, "isEqualToString:", @"com.apple.filesystems.UserFS.FileProvider"))
    {
      v5 = 1;
    }

    else
    {
      v5 = [fp_toProviderID isEqualToString:@"com.apple.SMBClientProvider.FileProvider"];
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_shouldUseDiskWriterToPerformMoveForItem:(id)item
{
  v68 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([itemCopy isProviderItem])
  {
    asFPItem = [itemCopy asFPItem];
  }

  else
  {
    asFPItem = 0;
  }

  targetFolder = [(FPMoveInfo *)self->_info targetFolder];
  if ([targetFolder isProviderItem])
  {
    targetFolder2 = [(FPMoveInfo *)self->_info targetFolder];
    asFPItem2 = [targetFolder2 asFPItem];
  }

  else
  {
    asFPItem2 = 0;
  }

  if (asFPItem)
  {
    WeakRetained = objc_loadWeakRetained(&self->_operation);
    manager = [WeakRetained manager];
    itemID = [asFPItem itemID];
    v12 = [manager domainFromItemID:itemID reason:0];

    if (asFPItem2)
    {
LABEL_9:
      v13 = objc_loadWeakRetained(&self->_operation);
      manager2 = [v13 manager];
      itemID2 = [asFPItem2 itemID];
      v16 = [manager2 domainFromItemID:itemID2 reason:0];

      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (asFPItem2)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_12:
  v17 = [FPDMoveReader _hasDiskWriterSupportForDomain:v12];
  if ([FPDMoveReader _hasDiskWriterSupportForDomain:v16])
  {
    LOBYTE(v18) = [v16 isUsingFPFS];
    if ((v18 & 1) == 0 && v17)
    {
      if ([v12 isUsingFPFS] && objc_msgSend(v16, "isUsingFPFS") && (!objc_msgSend(itemCopy, "isProviderItem") || (-[FPMoveInfo targetFolder](self->_info, "targetFolder"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isProviderItem"), v19, v20)))
      {
        if (-[FPMoveInfo byMoving](self->_info, "byMoving") && [itemCopy isProviderItem] && (-[FPMoveInfo targetFolder](self->_info, "targetFolder"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isProviderItem"), v21, v22))
        {
          asFPItem3 = [itemCopy asFPItem];
          providerDomainID = [asFPItem3 providerDomainID];
          targetFolder3 = [(FPMoveInfo *)self->_info targetFolder];
          asFPItem4 = [targetFolder3 asFPItem];
          providerDomainID2 = [asFPItem4 providerDomainID];
          v18 = [providerDomainID isEqualToString:providerDomainID2];
        }

        else
        {
          v18 = 0;
        }

        v28 = !self->_isTargetFolderMaterialized && !self->_willMaterializeTargetFolder;
        if (((v18 | v28) & 1) == 0)
        {
          targetFolder4 = [(FPMoveInfo *)self->_info targetFolder];
          isExternalURL = [targetFolder4 isExternalURL];
          targetFolder5 = [(FPMoveInfo *)self->_info targetFolder];
          v32 = targetFolder5;
          if (isExternalURL)
          {
            asURL = [targetFolder5 asURL];
          }

          else
          {
            asFPItem5 = [targetFolder5 asFPItem];
            asURL = [asFPItem5 fileURL];
          }

          if ([itemCopy isExternalURL])
          {
            asURL2 = [itemCopy asURL];
          }

          else
          {
            asFPItem6 = [itemCopy asFPItem];
            asURL2 = [asFPItem6 fileURL];
          }

          if (!asURL2)
          {
            v37 = objc_loadWeakRetained(&self->_operation);
            manager3 = [v37 manager];
            v39 = [itemCopy materializedURLWithExtensionManager:manager3];

            asURL2 = v39;
          }

          if (!asURL)
          {
            targetFolder6 = [(FPMoveInfo *)self->_info targetFolder];
            v41 = objc_loadWeakRetained(&self->_operation);
            [v41 manager];
            v43 = v42 = asURL2;
            asURL = [targetFolder6 materializedURLWithExtensionManager:v43];

            asURL2 = v42;
          }

          v61 = 0;
          v44 = *MEMORY[0x1E695DD70];
          v60 = 0;
          [asURL2 getResourceValue:&v61 forKey:v44 error:{&v60, asURL2}];
          v45 = v61;
          v46 = v60;
          v47 = fp_current_or_default_log();
          v57 = asURL;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            fp_prettyDescription = [v46 fp_prettyDescription];
            *buf = 138412802;
            v63 = v55;
            v64 = 2112;
            v65 = v45;
            v66 = 2112;
            v67 = fp_prettyDescription;
            _os_log_debug_impl(&dword_1CEFC7000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: sourceURL %@ sourceVolume %@ error %@", buf, 0x20u);

            asURL = v57;
          }

          v58 = 0;
          v59 = 0;
          [asURL getResourceValue:&v59 forKey:v44 error:&v58];
          v48 = v59;
          v49 = v58;

          v50 = fp_current_or_default_log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            fp_prettyDescription2 = [v49 fp_prettyDescription];
            *buf = 138412802;
            v63 = v57;
            v64 = 2112;
            v65 = v48;
            v66 = 2112;
            v67 = fp_prettyDescription2;
            _os_log_debug_impl(&dword_1CEFC7000, v50, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: targetFolderURL %@ destVolume %@ error %@", buf, 0x20u);
          }

          LOBYTE(v18) = 0;
          if (v49)
          {
            v51 = v55;
          }

          else
          {
            v51 = v55;
            if (v45 && v48)
            {
              LOBYTE(v18) = [v45 isEqual:v48];
            }
          }
        }
      }

      else
      {
        LOBYTE(v18) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_enqueueAtomsForRoot:(id)root
{
  v41 = *MEMORY[0x1E69E9840];
  rootCopy = root;
  if ([(FPDMoveReader *)self _isRootCancelled:rootCopy])
  {
    goto LABEL_52;
  }

  v5 = [(FPDMoveReader *)self _shouldUseDiskWriterToPerformMoveForItem:rootCopy];
  if ([(FPDMoveReader *)self _isSinglePkgCopyForRoot:rootCopy])
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader _enqueueAtomsForRoot:rootCopy];
    }

    if (![(FPDMoveReader *)self _enqueueItem:rootCopy forRoot:rootCopy atomically:1 useDiskWriter:v5])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ enqueuing a root should never fail"];
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      __assert_rtn("-[FPDMoveReader _enqueueAtomsForRoot:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveReader.m", 714, [v7 UTF8String]);
    }

    goto LABEL_52;
  }

  v9 = [(FPDMoveReader *)self _isSingleMoveForRoot:rootCopy];
  v10 = fp_current_or_default_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (!v9)
  {
    if (v11)
    {
      [FPDMoveReader _enqueueAtomsForRoot:];
    }

    self->_depth = 0;
    v36 = 0;
    v14 = [(FPDMoveReader *)self _iteratorForRoot:rootCopy enforceFPItem:1 error:&v36];
    v13 = v36;
    if (v14)
    {
      if (([v14 done] & 1) == 0)
      {
        v33 = v13;
        *&v15 = 138412546;
        v32 = v15;
        while (1)
        {
          v16 = objc_autoreleasePoolPush();
          [(FPDMoveReader *)self _t_waitForUnblock];
          if ([(FPDMoveReader *)self _isCancelled])
          {
            goto LABEL_41;
          }

          if ([(FPDMoveReader *)self _isRootCancelled:rootCopy])
          {
            [(FPDMoveReader *)self _bailOutOfRoot:rootCopy];
LABEL_41:
            objc_autoreleasePoolPop(v16);
LABEL_42:
            v13 = v33;
            goto LABEL_51;
          }

          v35 = 0;
          v17 = [v14 nextWithError:&v35];
          v18 = v35;
          v19 = v18;
          if (!v17)
          {
            if (v18)
            {
              break;
            }
          }

          v34 = v16;
          v20 = v18;
          for (i = [v14 numFoldersPopped]; i; --i)
          {
            v23 = fp_current_or_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              depth = self->_depth;
              *buf = 67109120;
              LODWORD(v38) = depth;
              _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: adding atomForPostFolder %d", buf, 8u);
            }

            WeakRetained = objc_loadWeakRetained(&self->_moveQueue);
            v25 = [FPDMoveAtom atomForPostFolderUnderRoot:rootCopy atomically:0 useDiskWriter:0];
            [WeakRetained enqueue:v25];

            --self->_depth;
          }

          if (!v17)
          {
            v19 = v20;
LABEL_47:
            v16 = v34;
            goto LABEL_49;
          }

          v19 = v20;
          if ([v14 done])
          {
            goto LABEL_47;
          }

          v26 = fp_current_or_default_log();
          v16 = v34;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            identifier = [v17 identifier];
            *buf = v32;
            v38 = identifier;
            v39 = 1024;
            v40 = v5;
            _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: itemID %@ shouldUseDiskWriterToPerformMoveForItem %{BOOL}d", buf, 0x12u);
          }

          if (![(FPDMoveReader *)self _enqueueItem:v17 forRoot:rootCopy atomically:0 useDiskWriter:v5])
          {
            [(FPDMoveReader *)self _bailOutOfRoot:rootCopy];
LABEL_49:

            goto LABEL_50;
          }

          if ([v17 isFolder])
          {
            ++self->_depth;
          }

          objc_autoreleasePoolPop(v34);
          if ([v14 done])
          {
            goto LABEL_42;
          }
        }

        v28 = fp_current_or_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [FPDMoveReader _enqueueAtomsForRoot:v19];
        }

        [(FPDMoveReader *)self _finishWithError:v19];
LABEL_50:
        v13 = v33;

        objc_autoreleasePoolPop(v16);
      }
    }

    else
    {
      [(FPDMoveReader *)self _finishWithError:v13];
    }

    goto LABEL_51;
  }

  if (v11)
  {
    [FPDMoveReader _enqueueAtomsForRoot:rootCopy];
  }

  if (![(FPDMoveReader *)self _enqueueItem:rootCopy forRoot:rootCopy atomically:1 useDiskWriter:v5])
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ enqueuing a root should never fail"];
    v31 = fp_current_or_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDMoveReader _enqueueAtomsForRoot:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveReader.m", 727, [v30 UTF8String]);
  }

  if ([rootCopy isFolder])
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader _enqueueAtomsForRoot:];
    }

    v13 = objc_loadWeakRetained(&self->_moveQueue);
    v14 = [FPDMoveAtom atomForPostFolderUnderRoot:rootCopy atomically:1 useDiskWriter:v5];
    [v13 enqueue:v14];
LABEL_51:
  }

LABEL_52:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_runWithDownloadedTarget:(id)target
{
  targetCopy = target;
  v5 = targetCopy;
  if (self->_willMaterializeTargetFolder)
  {
    targetFolder = [(FPMoveInfo *)self->_info targetFolder];
    asFPItem = [targetFolder asFPItem];

    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader _runWithDownloadedTarget:];
    }

    startDownloadBlock = [(FPDMoveReader *)self startDownloadBlock];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__FPDMoveReader__runWithDownloadedTarget___block_invoke;
    v10[3] = &unk_1E83BE1A8;
    v10[4] = self;
    v11 = v5;
    (startDownloadBlock)[2](startDownloadBlock, asFPItem, 0, v10);
  }

  else
  {
    (*(targetCopy + 2))(targetCopy);
  }
}

void __42__FPDMoveReader__runWithDownloadedTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v6 = *(a1 + 40);
  v5 = v3;
  fp_dispatch_async_with_logs();
}

uint64_t __42__FPDMoveReader__runWithDownloadedTarget___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {

    return [v2 _finishWithError:?];
  }

  else
  {
    result = [v2 _isCancelled];
    if ((result & 1) == 0)
    {
      v5 = *(a1[6] + 16);

      return v5();
    }
  }

  return result;
}

- (void)_run
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __21__FPDMoveReader__run__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(*(a1 + 32) + 16) roots];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v7;
          _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: looking at root %@", buf, 0xCu);
        }

        if ([*(a1 + 32) _isCancelled])
        {
          v12 = fp_current_or_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __21__FPDMoveReader__run__block_invoke_cold_2();
          }

          objc_autoreleasePoolPop(v8);
          goto LABEL_20;
        }

        if ([*(a1 + 32) _isRootCancelled:v7])
        {
          v10 = fp_current_or_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            __21__FPDMoveReader__run__block_invoke_cold_1(&v14, v15, v10);
          }
        }

        else
        {
          [*(a1 + 32) _enqueueAtomsForRoot:v7];
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained finishedEnqueuing];

  [*(a1 + 32) _finishWithError:0];
LABEL_20:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_t_waitForUnblock
{
  if ([(FPMoveInfo *)self->_info _t_clientDrivenReader])
  {
    clientUnblockSema = self->_clientUnblockSema;

    dispatch_semaphore_wait(clientUnblockSema, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_t_unblock
{
  if (([(FPMoveInfo *)self->_info _t_clientDrivenReader]& 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ unexpected call"];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDMoveReader _t_unblock]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveReader.m", 864, [v4 UTF8String]);
  }

  clientUnblockSema = self->_clientUnblockSema;

  dispatch_semaphore_signal(clientUnblockSema);
}

- (BOOL)_isRootCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableSet *)selfCopy->_cancelledRoots containsObject:cancelledCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)cancelRoot:(id)root
{
  rootCopy = root;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_cancelledRoots addObject:rootCopy];
  objc_sync_exit(selfCopy);
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->__cancelled = 1;
  if ([(FPMoveInfo *)selfCopy->_info _t_clientDrivenReader])
  {
    v3 = 500;
    do
    {
      dispatch_semaphore_signal(selfCopy->_clientUnblockSema);
      --v3;
    }

    while (v3);
  }

  objc_sync_exit(selfCopy);

  queue = selfCopy->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__FPDMoveReader_cancel__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = selfCopy;
  dispatch_sync(queue, block);
}

void __23__FPDMoveReader_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  [v1 _finishWithError:v2];
}

- (void)dumpStateTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [toCopy write:@"+ reader\n"];
  if (selfCopy->__cancelled)
  {
    [toCopy startAttributes:2];
    [toCopy write:@"  reader cancelled\n"];
    [toCopy reset];
  }

  if ([(NSMutableSet *)selfCopy->_cancelledRoots count])
  {
    [toCopy startFgColor:1];
    [toCopy write:{@"  roots cancelled: %@\n", selfCopy->_cancelledRoots}];
    [toCopy reset];
  }

  if (selfCopy->_error)
  {
    [toCopy startFgColor:1];
    [toCopy write:{@"  error: %@\n", selfCopy->_error}];
    [toCopy reset];
  }

  [toCopy write:@"\n"];
  objc_sync_exit(selfCopy);
}

- (void)initWithMoveWriter:operation:queue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __22__FPDMoveReader_start__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __22__FPDMoveReader_start__block_invoke_6_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_finishWithError:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_iteratorForRoot:(void *)a1 enforceFPItem:error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 providerDomainID];
  v2 = [v1 fp_obfuscatedProviderDomainID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_progressComputationPreflight:(void *)a1 completion:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_progressComputationPreflight:completion:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 2048;
  v5 = v0;
  _os_log_error_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_ERROR, "[ERROR] Filesystem only supports %ld file size bits but we need %ld", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v8 = *(v1 + 43);
  v9 = *(v1 + 42);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_getSpaceForWriteSize:(uint64_t)a1 atTargetPath:(void *)a2 completion:.cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a2 localizedDescription];
  v10 = [a2 userInfo];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __63__FPDMoveReader__getSpaceForWriteSize_atTargetPath_completion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [0 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_fileSizeBitsSupportAtPath:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_fileSizeBitsSupportAtPath:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_shouldCheckSpaceForRoot:(void *)a1 targetFolderURL:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 fileSystemRepresentation];
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueItem:(uint64_t)a1 forRoot:(void *)a2 atomically:useDiskWriter:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueAtomsForRoot:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueAtomsForRoot:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueAtomsForRoot:(void *)a1 .cold.6(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_runWithDownloadedTarget:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __21__FPDMoveReader__run__block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: root was cancelled, don't enumerate", buf, 2u);
}

@end